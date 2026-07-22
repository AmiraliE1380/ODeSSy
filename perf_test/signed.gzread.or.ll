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
  br i1 %4, label %1047, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1047

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
  br i1 %15, label %1047, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1047

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %1035, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %447, label %26

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

44:                                               ; preds = %444, %26
  %45 = phi i64 [ %445, %444 ], [ %24, %26 ]
  %46 = load i32, ptr %0, align 8, !tbaa !19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %48

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
  %63 = extractvalue { i64, i1 } %62, 0, !nosanitize !22
  store i64 %63, ptr %23, align 8, !tbaa !18
  br label %444

64:                                               ; preds = %44
  %65 = load i32, ptr %29, align 8, !tbaa !24
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %30, align 8, !tbaa !25
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %447, label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %441, %70
  %72 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %72, label %429 [
    i32 0, label %73
    i32 1, label %296
    i32 2, label %332
  ]

73:                                               ; preds = %71
  %74 = load i32, ptr %32, align 8, !tbaa !27
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = load i32, ptr %41, align 4, !tbaa !28
  %78 = zext i32 %77 to i64
  %79 = tail call noalias ptr @malloc(i64 noundef %78) #15
  store ptr %79, ptr %37, align 8, !tbaa !29
  %80 = load i32, ptr %41, align 4, !tbaa !28
  %81 = shl i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = tail call noalias ptr @malloc(i64 noundef %82) #15
  store ptr %83, ptr %34, align 8, !tbaa !30
  %84 = icmp eq ptr %79, null
  %85 = icmp eq ptr %83, null
  %86 = or i1 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  tail call void @free(ptr noundef %83) #13
  tail call void @free(ptr noundef %79) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1035

88:                                               ; preds = %76
  %89 = load i32, ptr %41, align 4, !tbaa !28
  store i32 %89, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %90 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %93) #13
  %94 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %94) #13
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1035

95:                                               ; preds = %88, %73
  %96 = load i32, ptr %43, align 8, !tbaa !32
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr %40, align 4, !tbaa !33
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98, %95
  %102 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  %103 = load i32, ptr %40, align 4, !tbaa !33
  %104 = icmp ne i32 %103, -1
  %105 = zext i1 %104 to i32
  store i32 %105, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %293

106:                                              ; preds = %98
  %107 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %107, label %1037 [
    i32 0, label %108
    i32 -5, label %108
  ]

108:                                              ; preds = %106, %106
  %109 = load i32, ptr %29, align 8, !tbaa !24
  %110 = icmp eq i32 %109, 0
  %111 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %110, label %112, label %261

112:                                              ; preds = %108
  %113 = icmp eq i32 %111, 0
  %114 = load ptr, ptr %37, align 8, !tbaa !29
  %115 = ptrtoaddr ptr %114 to i64
  br i1 %113, label %221, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %36, align 8, !tbaa !35
  %118 = icmp eq ptr %117, %114
  br i1 %118, label %221, label %119

119:                                              ; preds = %116
  %120 = ptrtoaddr ptr %117 to i64
  %121 = zext i32 %111 to i64
  %122 = icmp ult i32 %111, 4
  %123 = sub i64 %115, %120
  %124 = icmp ult i64 %123, 32
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %165, label %126

126:                                              ; preds = %119
  %127 = icmp ult i32 %111, 32
  br i1 %127, label %149, label %128

128:                                              ; preds = %126
  %129 = and i64 %121, 28
  %130 = and i64 %121, 4294967264
  %131 = getelementptr i8, ptr %114, i64 %130
  %132 = getelementptr i8, ptr %117, i64 %130
  %133 = trunc nuw i64 %130 to i32
  %134 = sub i32 %111, %133
  br label %135

135:                                              ; preds = %135, %128
  %136 = phi i64 [ 0, %128 ], [ %143, %135 ]
  %137 = getelementptr i8, ptr %114, i64 %136
  %138 = getelementptr i8, ptr %117, i64 %136
  %139 = getelementptr i8, ptr %138, i64 16
  %140 = load <16 x i8>, ptr %138, align 1, !tbaa !36
  %141 = load <16 x i8>, ptr %139, align 1, !tbaa !36
  %142 = getelementptr i8, ptr %137, i64 16
  store <16 x i8> %140, ptr %137, align 1, !tbaa !36
  store <16 x i8> %141, ptr %142, align 1, !tbaa !36
  %143 = add nuw i64 %136, 32
  %144 = icmp eq i64 %143, %130
  br i1 %144, label %145, label %135, !llvm.loop !37

145:                                              ; preds = %135
  %146 = icmp eq i64 %130, %121
  br i1 %146, label %218, label %147

147:                                              ; preds = %145
  %148 = icmp eq i64 %129, 0
  br i1 %148, label %165, label %149, !prof !41

149:                                              ; preds = %147, %126
  %150 = phi i64 [ %130, %147 ], [ 0, %126 ]
  %151 = and i64 %121, 4294967292
  %152 = getelementptr i8, ptr %114, i64 %151
  %153 = getelementptr i8, ptr %117, i64 %151
  %154 = trunc nuw i64 %151 to i32
  %155 = sub i32 %111, %154
  br label %156

156:                                              ; preds = %156, %149
  %157 = phi i64 [ %150, %149 ], [ %161, %156 ]
  %158 = getelementptr i8, ptr %114, i64 %157
  %159 = getelementptr i8, ptr %117, i64 %157
  %160 = load <4 x i8>, ptr %159, align 1, !tbaa !36
  store <4 x i8> %160, ptr %158, align 1, !tbaa !36
  %161 = add nuw i64 %157, 4
  %162 = icmp eq i64 %161, %151
  br i1 %162, label %163, label %156, !llvm.loop !42

163:                                              ; preds = %156
  %164 = icmp eq i64 %151, %121
  br i1 %164, label %218, label %165

165:                                              ; preds = %163, %147, %119
  %166 = phi ptr [ %114, %119 ], [ %131, %147 ], [ %152, %163 ]
  %167 = phi ptr [ %117, %119 ], [ %132, %147 ], [ %153, %163 ]
  %168 = phi i32 [ %111, %119 ], [ %134, %147 ], [ %155, %163 ]
  %169 = add i32 %168, -1
  %170 = and i32 %168, 7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %183, label %172

172:                                              ; preds = %172, %165
  %173 = phi ptr [ %179, %172 ], [ %166, %165 ]
  %174 = phi ptr [ %177, %172 ], [ %167, %165 ]
  %175 = phi i32 [ %180, %172 ], [ %168, %165 ]
  %176 = phi i32 [ %181, %172 ], [ 0, %165 ]
  %177 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %178 = load i8, ptr %174, align 1, !tbaa !36
  %179 = getelementptr inbounds nuw i8, ptr %173, i64 1
  store i8 %178, ptr %173, align 1, !tbaa !36
  %180 = add i32 %175, -1
  %181 = add i32 %176, 1
  %182 = icmp eq i32 %181, %170
  br i1 %182, label %183, label %172, !llvm.loop !43

183:                                              ; preds = %172, %165
  %184 = phi ptr [ %166, %165 ], [ %179, %172 ]
  %185 = phi ptr [ %167, %165 ], [ %177, %172 ]
  %186 = phi i32 [ %168, %165 ], [ %180, %172 ]
  %187 = icmp ult i32 %169, 7
  br i1 %187, label %218, label %188

188:                                              ; preds = %188, %183
  %189 = phi ptr [ %215, %188 ], [ %184, %183 ]
  %190 = phi ptr [ %213, %188 ], [ %185, %183 ]
  %191 = phi i32 [ %216, %188 ], [ %186, %183 ]
  %192 = getelementptr inbounds nuw i8, ptr %190, i64 1
  %193 = load i8, ptr %190, align 1, !tbaa !36
  %194 = getelementptr inbounds nuw i8, ptr %189, i64 1
  store i8 %193, ptr %189, align 1, !tbaa !36
  %195 = getelementptr inbounds nuw i8, ptr %190, i64 2
  %196 = load i8, ptr %192, align 1, !tbaa !36
  %197 = getelementptr inbounds nuw i8, ptr %189, i64 2
  store i8 %196, ptr %194, align 1, !tbaa !36
  %198 = getelementptr inbounds nuw i8, ptr %190, i64 3
  %199 = load i8, ptr %195, align 1, !tbaa !36
  %200 = getelementptr inbounds nuw i8, ptr %189, i64 3
  store i8 %199, ptr %197, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %190, i64 4
  %202 = load i8, ptr %198, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %189, i64 4
  store i8 %202, ptr %200, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %190, i64 5
  %205 = load i8, ptr %201, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %189, i64 5
  store i8 %205, ptr %203, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %190, i64 6
  %208 = load i8, ptr %204, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %189, i64 6
  store i8 %208, ptr %206, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %190, i64 7
  %211 = load i8, ptr %207, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %189, i64 7
  store i8 %211, ptr %209, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %190, i64 8
  %214 = load i8, ptr %210, align 1, !tbaa !36
  %215 = getelementptr inbounds nuw i8, ptr %189, i64 8
  store i8 %214, ptr %212, align 1, !tbaa !36
  %216 = add i32 %191, -8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %188, !llvm.loop !45

218:                                              ; preds = %188, %183, %163, %145
  %219 = load i32, ptr %30, align 8, !tbaa !34
  %220 = load ptr, ptr %37, align 8, !tbaa !29
  br label %221

221:                                              ; preds = %218, %116, %112
  %222 = phi ptr [ %220, %218 ], [ %114, %116 ], [ %114, %112 ]
  %223 = phi i32 [ %219, %218 ], [ %111, %116 ], [ 0, %112 ]
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds nuw i8, ptr %222, i64 %224
  %226 = load i32, ptr %32, align 8, !tbaa !27
  %227 = sub i32 %226, %223
  store i32 0, ptr %38, align 4, !tbaa !17
  %228 = tail call ptr @__errno_location() #16
  store i32 0, ptr %228, align 4, !tbaa !4
  br label %229

229:                                              ; preds = %240, %221
  %230 = phi i32 [ 0, %221 ], [ %241, %240 ]
  %231 = sub i32 %227, %230
  %232 = tail call i32 @llvm.umin.i32(i32 %231, i32 1073741824)
  %233 = load i32, ptr %39, align 4, !tbaa !46
  %234 = zext i32 %230 to i64
  %235 = getelementptr inbounds nuw i8, ptr %225, i64 %234
  %236 = zext nneg i32 %232 to i64
  %237 = tail call i64 @read(i32 noundef %233, ptr noundef %235, i64 noundef %236) #13
  %238 = trunc i64 %237 to i32
  %239 = icmp slt i32 %238, 1
  br i1 %239, label %243, label %240

240:                                              ; preds = %229
  %241 = add i32 %230, %238
  %242 = icmp ult i32 %241, %227
  br i1 %242, label %229, label %256, !llvm.loop !47

243:                                              ; preds = %229
  %244 = icmp slt i32 %238, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %243
  %246 = load i32, ptr %228, align 4, !tbaa !4
  %247 = icmp eq i32 %246, 11
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  store i32 1, ptr %38, align 4, !tbaa !17
  %249 = icmp eq i32 %230, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %248
  %251 = load i32, ptr %228, align 4, !tbaa !4
  br label %253

252:                                              ; preds = %243
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %256

253:                                              ; preds = %250, %245
  %254 = phi i32 [ %251, %250 ], [ %246, %245 ]
  %255 = tail call ptr @strerror(i32 noundef %254) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %255) #13
  br label %1035

256:                                              ; preds = %252, %248, %240
  %257 = phi i32 [ %230, %248 ], [ %230, %252 ], [ %241, %240 ]
  %258 = load i32, ptr %30, align 8, !tbaa !34
  %259 = add i32 %258, %257
  store i32 %259, ptr %30, align 8, !tbaa !34
  %260 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %260, ptr %36, align 8, !tbaa !35
  br label %261

261:                                              ; preds = %256, %108
  %262 = phi i32 [ %259, %256 ], [ %111, %108 ]
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %293, label %264

264:                                              ; preds = %261
  %265 = load i32, ptr %38, align 4, !tbaa !17
  %266 = icmp ne i32 %265, 0
  %267 = icmp ult i32 %262, 4
  %268 = and i1 %267, %266
  br i1 %268, label %293, label %269

269:                                              ; preds = %264
  %270 = icmp ugt i32 %262, 3
  %271 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %270, label %272, label %289

272:                                              ; preds = %269
  %273 = load i8, ptr %271, align 1, !tbaa !36
  %274 = icmp eq i8 %273, 31
  br i1 %274, label %275, label %289

275:                                              ; preds = %272
  %276 = getelementptr inbounds nuw i8, ptr %271, i64 1
  %277 = load i8, ptr %276, align 1, !tbaa !36
  %278 = icmp eq i8 %277, -117
  br i1 %278, label %279, label %289

279:                                              ; preds = %275
  %280 = getelementptr inbounds nuw i8, ptr %271, i64 2
  %281 = load i8, ptr %280, align 1, !tbaa !36
  %282 = icmp eq i8 %281, 8
  br i1 %282, label %283, label %289

283:                                              ; preds = %279
  %284 = getelementptr inbounds nuw i8, ptr %271, i64 3
  %285 = load i8, ptr %284, align 1, !tbaa !36
  %286 = icmp ult i8 %285, 32
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %430

289:                                              ; preds = %283, %279, %275, %272, %269
  %290 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %290, ptr %27, align 8, !tbaa !20
  %291 = zext i32 %262 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %290, ptr align 1 %271, i64 %291, i1 false)
  %292 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %292, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %432

293:                                              ; preds = %264, %261, %101
  %294 = load i32, ptr %31, align 8, !tbaa !26
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %442, label %430

296:                                              ; preds = %71
  %297 = load ptr, ptr %34, align 8, !tbaa !30
  %298 = load i32, ptr %32, align 8, !tbaa !27
  %299 = shl i32 %298, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %300 = tail call ptr @__errno_location() #16
  store i32 0, ptr %300, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %301

301:                                              ; preds = %312, %296
  %302 = phi i32 [ %314, %312 ], [ 0, %296 ]
  %303 = sub i32 %299, %302
  %304 = tail call i32 @llvm.umin.i32(i32 %303, i32 1073741824)
  %305 = load i32, ptr %39, align 4, !tbaa !46
  %306 = zext i32 %302 to i64
  %307 = getelementptr inbounds nuw i8, ptr %297, i64 %306
  %308 = zext nneg i32 %304 to i64
  %309 = tail call i64 @read(i32 noundef %305, ptr noundef %307, i64 noundef %308) #13
  %310 = trunc i64 %309 to i32
  %311 = icmp slt i32 %310, 1
  br i1 %311, label %316, label %312

312:                                              ; preds = %301
  %313 = load i32, ptr %0, align 4, !tbaa !4
  %314 = add i32 %313, %310
  store i32 %314, ptr %0, align 4, !tbaa !4
  %315 = icmp ult i32 %314, %299
  br i1 %315, label %301, label %330, !llvm.loop !47

316:                                              ; preds = %301
  %317 = icmp slt i32 %310, 0
  br i1 %317, label %318, label %326

318:                                              ; preds = %316
  %319 = load i32, ptr %300, align 4, !tbaa !4
  %320 = icmp eq i32 %319, 11
  br i1 %320, label %321, label %327

321:                                              ; preds = %318
  store i32 1, ptr %38, align 4, !tbaa !17
  %322 = load i32, ptr %0, align 4, !tbaa !4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %321
  %325 = load i32, ptr %300, align 4, !tbaa !4
  br label %327

326:                                              ; preds = %316
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %330

327:                                              ; preds = %324, %318
  %328 = phi i32 [ %325, %324 ], [ %319, %318 ]
  %329 = tail call ptr @strerror(i32 noundef %328) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %329) #13
  br label %1035

330:                                              ; preds = %326, %321, %312
  %331 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %331, ptr %27, align 8, !tbaa !20
  br label %442

332:                                              ; preds = %71
  %333 = load i32, ptr %32, align 8, !tbaa !27
  %334 = shl i32 %333, 1
  store i32 %334, ptr %33, align 8, !tbaa !48
  %335 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %335, ptr %35, align 8, !tbaa !49
  br label %336

336:                                              ; preds = %409, %332
  %337 = phi i32 [ 0, %332 ], [ %388, %409 ]
  %338 = load i32, ptr %30, align 8, !tbaa !34
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %387

340:                                              ; preds = %336
  %341 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %341, label %420 [
    i32 0, label %342
    i32 -5, label %342
  ]

342:                                              ; preds = %340, %340
  %343 = load i32, ptr %29, align 8, !tbaa !24
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %383

345:                                              ; preds = %342
  %346 = load ptr, ptr %37, align 8, !tbaa !29
  %347 = load i32, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %38, align 4, !tbaa !17
  %348 = tail call ptr @__errno_location() #16
  store i32 0, ptr %348, align 4, !tbaa !4
  br label %349

349:                                              ; preds = %360, %345
  %350 = phi i32 [ 0, %345 ], [ %361, %360 ]
  %351 = sub i32 %347, %350
  %352 = tail call i32 @llvm.umin.i32(i32 %351, i32 1073741824)
  %353 = load i32, ptr %39, align 4, !tbaa !46
  %354 = zext i32 %350 to i64
  %355 = getelementptr inbounds nuw i8, ptr %346, i64 %354
  %356 = zext nneg i32 %352 to i64
  %357 = tail call i64 @read(i32 noundef %353, ptr noundef %355, i64 noundef %356) #13
  %358 = trunc i64 %357 to i32
  %359 = icmp slt i32 %358, 1
  br i1 %359, label %363, label %360

360:                                              ; preds = %349
  %361 = add i32 %350, %358
  %362 = icmp ult i32 %361, %347
  br i1 %362, label %349, label %377, !llvm.loop !47

363:                                              ; preds = %349
  %364 = icmp slt i32 %358, 0
  br i1 %364, label %365, label %372

365:                                              ; preds = %363
  %366 = load i32, ptr %348, align 4, !tbaa !4
  %367 = icmp eq i32 %366, 11
  br i1 %367, label %368, label %373

368:                                              ; preds = %365
  store i32 1, ptr %38, align 4, !tbaa !17
  %369 = icmp eq i32 %350, 0
  br i1 %369, label %370, label %377

370:                                              ; preds = %368
  %371 = load i32, ptr %348, align 4, !tbaa !4
  br label %373

372:                                              ; preds = %363
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %377

373:                                              ; preds = %370, %365
  %374 = phi i32 [ %371, %370 ], [ %366, %365 ]
  %375 = tail call ptr @strerror(i32 noundef %374) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %375) #13
  %376 = load i32, ptr %10, align 8, !tbaa !16
  br label %420

377:                                              ; preds = %372, %368, %360
  %378 = phi i32 [ %350, %368 ], [ %350, %372 ], [ %361, %360 ]
  %379 = load i32, ptr %30, align 8, !tbaa !34
  %380 = add i32 %379, %378
  store i32 %380, ptr %30, align 8, !tbaa !34
  %381 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %381, ptr %36, align 8, !tbaa !35
  %382 = icmp eq i32 %380, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %377, %342
  %384 = load i32, ptr %38, align 4, !tbaa !17
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %420

386:                                              ; preds = %383
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %420

387:                                              ; preds = %377, %336
  %388 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %389 = load i32, ptr %33, align 8, !tbaa !48
  %390 = icmp ult i32 %389, %334
  br i1 %390, label %391, label %392

391:                                              ; preds = %387
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %392

392:                                              ; preds = %391, %387
  switch i32 %388, label %409 [
    i32 -2, label %393
    i32 2, label %393
    i32 -4, label %394
    i32 -3, label %395
  ]

393:                                              ; preds = %392, %392
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %420

394:                                              ; preds = %392
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %413

395:                                              ; preds = %392
  %396 = load i32, ptr %40, align 4, !tbaa !33
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %398, label %404

398:                                              ; preds = %395
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  %399 = sub i32 %334, %389
  store i32 %399, ptr %0, align 8, !tbaa !19
  %400 = load ptr, ptr %35, align 8, !tbaa !49
  %401 = zext i32 %399 to i64
  %402 = sub nsw i64 0, %401
  %403 = getelementptr inbounds i8, ptr %400, i64 %402
  store ptr %403, ptr %27, align 8, !tbaa !20
  br label %430

404:                                              ; preds = %395
  %405 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %406 = load ptr, ptr %405, align 8, !tbaa !50
  %407 = icmp eq ptr %406, null
  %408 = select i1 %407, ptr @.str.6, ptr %406
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %408) #13
  br label %413

409:                                              ; preds = %392
  %410 = icmp ne i32 %389, 0
  %411 = icmp ne i32 %388, 1
  %412 = select i1 %410, i1 %411, i1 false
  br i1 %412, label %336, label %420, !llvm.loop !51

413:                                              ; preds = %404, %394
  %414 = load i32, ptr %33, align 8, !tbaa !48
  %415 = sub i32 %334, %414
  store i32 %415, ptr %0, align 8, !tbaa !19
  %416 = load ptr, ptr %35, align 8, !tbaa !49
  %417 = zext i32 %415 to i64
  %418 = sub nsw i64 0, %417
  %419 = getelementptr inbounds i8, ptr %416, i64 %418
  store ptr %419, ptr %27, align 8, !tbaa !20
  br label %1035

420:                                              ; preds = %409, %393, %386, %383, %373, %340
  %421 = phi i32 [ %376, %373 ], [ %337, %383 ], [ %337, %386 ], [ %388, %393 ], [ %388, %409 ], [ %341, %340 ]
  %422 = load i32, ptr %33, align 8, !tbaa !48
  %423 = sub i32 %334, %422
  store i32 %423, ptr %0, align 8, !tbaa !19
  %424 = load ptr, ptr %35, align 8, !tbaa !49
  %425 = zext i32 %423 to i64
  %426 = sub nsw i64 0, %425
  %427 = getelementptr inbounds i8, ptr %424, i64 %426
  store ptr %427, ptr %27, align 8, !tbaa !20
  switch i32 %421, label %1035 [
    i32 1, label %428
    i32 0, label %430
  ]

428:                                              ; preds = %420
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %430

429:                                              ; preds = %71
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1035

430:                                              ; preds = %428, %420, %398, %293, %287
  %431 = load i32, ptr %0, align 8, !tbaa !19
  br label %432

432:                                              ; preds = %430, %289
  %433 = phi i32 [ %431, %430 ], [ %292, %289 ]
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %442

435:                                              ; preds = %432
  %436 = load i32, ptr %29, align 8, !tbaa !24
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %435
  %439 = load i32, ptr %30, align 8, !tbaa !34
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %442, label %441

441:                                              ; preds = %438, %435
  br label %71, !llvm.loop !52

442:                                              ; preds = %438, %432, %330, %293
  %443 = load i64, ptr %23, align 8, !tbaa !18
  br label %444

444:                                              ; preds = %442, %60
  %445 = phi i64 [ %443, %442 ], [ %63, %60 ]
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %44, !llvm.loop !53

447:                                              ; preds = %444, %67, %22
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %466

466:                                              ; preds = %1023, %447
  %467 = phi ptr [ %1, %447 ], [ %1018, %1023 ]
  %468 = phi i64 [ %20, %447 ], [ %1019, %1023 ]
  %469 = phi i64 [ 0, %447 ], [ %1020, %1023 ]
  %470 = tail call i64 @llvm.umin.i64(i64 %468, i64 4294967295)
  %471 = trunc nuw i64 %470 to i32
  %472 = load i32, ptr %0, align 8, !tbaa !19
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %485, label %474

474:                                              ; preds = %466
  %475 = tail call i32 @llvm.umin.i32(i32 %472, i32 %471)
  %476 = load ptr, ptr %448, align 8, !tbaa !20
  %477 = zext i32 %475 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %467, ptr align 1 %476, i64 %477, i1 false)
  %478 = load ptr, ptr %448, align 8, !tbaa !20
  %479 = getelementptr inbounds nuw i8, ptr %478, i64 %477
  store ptr %479, ptr %448, align 8, !tbaa !20
  %480 = load i32, ptr %0, align 8, !tbaa !19
  %481 = sub i32 %480, %475
  store i32 %481, ptr %0, align 8, !tbaa !19
  %482 = load i32, ptr %10, align 8, !tbaa !16
  %483 = icmp ne i32 %482, 0
  %484 = sext i1 %483 to i32
  br label %1005

485:                                              ; preds = %466
  %486 = load i32, ptr %449, align 8, !tbaa !24
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %491, label %488

488:                                              ; preds = %485
  %489 = load i32, ptr %450, align 8, !tbaa !25
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %1028, label %491

491:                                              ; preds = %488, %485
  %492 = load i32, ptr %451, align 8, !tbaa !26
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %498, label %494

494:                                              ; preds = %491
  %495 = load i32, ptr %452, align 8, !tbaa !27
  %496 = shl i32 %495, 1
  %497 = icmp ugt i32 %496, %471
  br i1 %497, label %498, label %874

498:                                              ; preds = %494, %491
  br label %499

499:                                              ; preds = %868, %498
  %500 = phi i32 [ %869, %868 ], [ %492, %498 ]
  switch i32 %500, label %856 [
    i32 0, label %501
    i32 1, label %724
    i32 2, label %760
  ]

501:                                              ; preds = %499
  %502 = load i32, ptr %452, align 8, !tbaa !27
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %523

504:                                              ; preds = %501
  %505 = load i32, ptr %463, align 4, !tbaa !28
  %506 = zext i32 %505 to i64
  %507 = tail call noalias ptr @malloc(i64 noundef %506) #15
  store ptr %507, ptr %456, align 8, !tbaa !29
  %508 = load i32, ptr %463, align 4, !tbaa !28
  %509 = shl i32 %508, 1
  %510 = zext i32 %509 to i64
  %511 = tail call noalias ptr @malloc(i64 noundef %510) #15
  store ptr %511, ptr %462, align 8, !tbaa !30
  %512 = icmp eq ptr %507, null
  %513 = icmp eq ptr %511, null
  %514 = or i1 %512, %513
  br i1 %514, label %515, label %516

515:                                              ; preds = %504
  tail call void @free(ptr noundef %511) #13
  tail call void @free(ptr noundef %507) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %870

516:                                              ; preds = %504
  %517 = load i32, ptr %463, align 4, !tbaa !28
  store i32 %517, ptr %452, align 8, !tbaa !27
  store i32 0, ptr %450, align 8, !tbaa !25
  store ptr null, ptr %455, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %464, i8 0, i64 24, i1 false)
  %518 = tail call i32 @inflateInit2_(ptr noundef nonnull %455, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %523, label %520

520:                                              ; preds = %516
  %521 = load ptr, ptr %462, align 8, !tbaa !30
  tail call void @free(ptr noundef %521) #13
  %522 = load ptr, ptr %456, align 8, !tbaa !29
  tail call void @free(ptr noundef %522) #13
  store i32 0, ptr %452, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %870

523:                                              ; preds = %516, %501
  %524 = load i32, ptr %465, align 8, !tbaa !32
  %525 = icmp eq i32 %524, -1
  br i1 %525, label %529, label %526

526:                                              ; preds = %523
  %527 = load i32, ptr %459, align 4, !tbaa !33
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %534

529:                                              ; preds = %526, %523
  %530 = tail call i32 @inflateReset(ptr noundef nonnull %455) #13
  store i32 2, ptr %451, align 8, !tbaa !26
  %531 = load i32, ptr %459, align 4, !tbaa !33
  %532 = icmp ne i32 %531, -1
  %533 = zext i1 %532 to i32
  store i32 %533, ptr %459, align 4, !tbaa !33
  store i32 0, ptr %465, align 8, !tbaa !32
  br label %721

534:                                              ; preds = %526
  %535 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %535, label %870 [
    i32 0, label %536
    i32 -5, label %536
  ]

536:                                              ; preds = %534, %534
  %537 = load i32, ptr %449, align 8, !tbaa !24
  %538 = icmp eq i32 %537, 0
  %539 = load i32, ptr %450, align 8, !tbaa !34
  br i1 %538, label %540, label %689

540:                                              ; preds = %536
  %541 = icmp eq i32 %539, 0
  %542 = load ptr, ptr %456, align 8, !tbaa !29
  %543 = ptrtoaddr ptr %542 to i64
  br i1 %541, label %649, label %544

544:                                              ; preds = %540
  %545 = load ptr, ptr %455, align 8, !tbaa !35
  %546 = icmp eq ptr %545, %542
  br i1 %546, label %649, label %547

547:                                              ; preds = %544
  %548 = ptrtoaddr ptr %545 to i64
  %549 = zext i32 %539 to i64
  %550 = icmp ult i32 %539, 4
  %551 = sub i64 %543, %548
  %552 = icmp ult i64 %551, 32
  %553 = select i1 %550, i1 true, i1 %552
  br i1 %553, label %593, label %554

554:                                              ; preds = %547
  %555 = icmp ult i32 %539, 32
  br i1 %555, label %577, label %556

556:                                              ; preds = %554
  %557 = and i64 %549, 28
  %558 = and i64 %549, 4294967264
  %559 = getelementptr i8, ptr %542, i64 %558
  %560 = getelementptr i8, ptr %545, i64 %558
  %561 = trunc nuw i64 %558 to i32
  %562 = sub i32 %539, %561
  br label %563

563:                                              ; preds = %563, %556
  %564 = phi i64 [ 0, %556 ], [ %571, %563 ]
  %565 = getelementptr i8, ptr %542, i64 %564
  %566 = getelementptr i8, ptr %545, i64 %564
  %567 = getelementptr i8, ptr %566, i64 16
  %568 = load <16 x i8>, ptr %566, align 1, !tbaa !36
  %569 = load <16 x i8>, ptr %567, align 1, !tbaa !36
  %570 = getelementptr i8, ptr %565, i64 16
  store <16 x i8> %568, ptr %565, align 1, !tbaa !36
  store <16 x i8> %569, ptr %570, align 1, !tbaa !36
  %571 = add nuw i64 %564, 32
  %572 = icmp eq i64 %571, %558
  br i1 %572, label %573, label %563, !llvm.loop !54

573:                                              ; preds = %563
  %574 = icmp eq i64 %558, %549
  br i1 %574, label %646, label %575

575:                                              ; preds = %573
  %576 = icmp eq i64 %557, 0
  br i1 %576, label %593, label %577, !prof !41

577:                                              ; preds = %575, %554
  %578 = phi i64 [ %558, %575 ], [ 0, %554 ]
  %579 = and i64 %549, 4294967292
  %580 = getelementptr i8, ptr %542, i64 %579
  %581 = getelementptr i8, ptr %545, i64 %579
  %582 = trunc nuw i64 %579 to i32
  %583 = sub i32 %539, %582
  br label %584

584:                                              ; preds = %584, %577
  %585 = phi i64 [ %578, %577 ], [ %589, %584 ]
  %586 = getelementptr i8, ptr %542, i64 %585
  %587 = getelementptr i8, ptr %545, i64 %585
  %588 = load <4 x i8>, ptr %587, align 1, !tbaa !36
  store <4 x i8> %588, ptr %586, align 1, !tbaa !36
  %589 = add nuw i64 %585, 4
  %590 = icmp eq i64 %589, %579
  br i1 %590, label %591, label %584, !llvm.loop !55

591:                                              ; preds = %584
  %592 = icmp eq i64 %579, %549
  br i1 %592, label %646, label %593

593:                                              ; preds = %591, %575, %547
  %594 = phi ptr [ %542, %547 ], [ %559, %575 ], [ %580, %591 ]
  %595 = phi ptr [ %545, %547 ], [ %560, %575 ], [ %581, %591 ]
  %596 = phi i32 [ %539, %547 ], [ %562, %575 ], [ %583, %591 ]
  %597 = add i32 %596, -1
  %598 = and i32 %596, 7
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %611, label %600

600:                                              ; preds = %600, %593
  %601 = phi ptr [ %607, %600 ], [ %594, %593 ]
  %602 = phi ptr [ %605, %600 ], [ %595, %593 ]
  %603 = phi i32 [ %608, %600 ], [ %596, %593 ]
  %604 = phi i32 [ %609, %600 ], [ 0, %593 ]
  %605 = getelementptr inbounds nuw i8, ptr %602, i64 1
  %606 = load i8, ptr %602, align 1, !tbaa !36
  %607 = getelementptr inbounds nuw i8, ptr %601, i64 1
  store i8 %606, ptr %601, align 1, !tbaa !36
  %608 = add i32 %603, -1
  %609 = add i32 %604, 1
  %610 = icmp eq i32 %609, %598
  br i1 %610, label %611, label %600, !llvm.loop !56

611:                                              ; preds = %600, %593
  %612 = phi ptr [ %594, %593 ], [ %607, %600 ]
  %613 = phi ptr [ %595, %593 ], [ %605, %600 ]
  %614 = phi i32 [ %596, %593 ], [ %608, %600 ]
  %615 = icmp ult i32 %597, 7
  br i1 %615, label %646, label %616

616:                                              ; preds = %616, %611
  %617 = phi ptr [ %643, %616 ], [ %612, %611 ]
  %618 = phi ptr [ %641, %616 ], [ %613, %611 ]
  %619 = phi i32 [ %644, %616 ], [ %614, %611 ]
  %620 = getelementptr inbounds nuw i8, ptr %618, i64 1
  %621 = load i8, ptr %618, align 1, !tbaa !36
  %622 = getelementptr inbounds nuw i8, ptr %617, i64 1
  store i8 %621, ptr %617, align 1, !tbaa !36
  %623 = getelementptr inbounds nuw i8, ptr %618, i64 2
  %624 = load i8, ptr %620, align 1, !tbaa !36
  %625 = getelementptr inbounds nuw i8, ptr %617, i64 2
  store i8 %624, ptr %622, align 1, !tbaa !36
  %626 = getelementptr inbounds nuw i8, ptr %618, i64 3
  %627 = load i8, ptr %623, align 1, !tbaa !36
  %628 = getelementptr inbounds nuw i8, ptr %617, i64 3
  store i8 %627, ptr %625, align 1, !tbaa !36
  %629 = getelementptr inbounds nuw i8, ptr %618, i64 4
  %630 = load i8, ptr %626, align 1, !tbaa !36
  %631 = getelementptr inbounds nuw i8, ptr %617, i64 4
  store i8 %630, ptr %628, align 1, !tbaa !36
  %632 = getelementptr inbounds nuw i8, ptr %618, i64 5
  %633 = load i8, ptr %629, align 1, !tbaa !36
  %634 = getelementptr inbounds nuw i8, ptr %617, i64 5
  store i8 %633, ptr %631, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %618, i64 6
  %636 = load i8, ptr %632, align 1, !tbaa !36
  %637 = getelementptr inbounds nuw i8, ptr %617, i64 6
  store i8 %636, ptr %634, align 1, !tbaa !36
  %638 = getelementptr inbounds nuw i8, ptr %618, i64 7
  %639 = load i8, ptr %635, align 1, !tbaa !36
  %640 = getelementptr inbounds nuw i8, ptr %617, i64 7
  store i8 %639, ptr %637, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %618, i64 8
  %642 = load i8, ptr %638, align 1, !tbaa !36
  %643 = getelementptr inbounds nuw i8, ptr %617, i64 8
  store i8 %642, ptr %640, align 1, !tbaa !36
  %644 = add i32 %619, -8
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %616, !llvm.loop !57

646:                                              ; preds = %616, %611, %591, %573
  %647 = load i32, ptr %450, align 8, !tbaa !34
  %648 = load ptr, ptr %456, align 8, !tbaa !29
  br label %649

649:                                              ; preds = %646, %544, %540
  %650 = phi ptr [ %648, %646 ], [ %542, %544 ], [ %542, %540 ]
  %651 = phi i32 [ %647, %646 ], [ %539, %544 ], [ 0, %540 ]
  %652 = zext i32 %651 to i64
  %653 = getelementptr inbounds nuw i8, ptr %650, i64 %652
  %654 = load i32, ptr %452, align 8, !tbaa !27
  %655 = sub i32 %654, %651
  store i32 0, ptr %457, align 4, !tbaa !17
  %656 = tail call ptr @__errno_location() #16
  store i32 0, ptr %656, align 4, !tbaa !4
  br label %657

657:                                              ; preds = %668, %649
  %658 = phi i32 [ 0, %649 ], [ %669, %668 ]
  %659 = sub i32 %655, %658
  %660 = tail call i32 @llvm.umin.i32(i32 %659, i32 1073741824)
  %661 = load i32, ptr %458, align 4, !tbaa !46
  %662 = zext i32 %658 to i64
  %663 = getelementptr inbounds nuw i8, ptr %653, i64 %662
  %664 = zext nneg i32 %660 to i64
  %665 = tail call i64 @read(i32 noundef %661, ptr noundef %663, i64 noundef %664) #13
  %666 = trunc i64 %665 to i32
  %667 = icmp slt i32 %666, 1
  br i1 %667, label %671, label %668

668:                                              ; preds = %657
  %669 = add i32 %658, %666
  %670 = icmp ult i32 %669, %655
  br i1 %670, label %657, label %684, !llvm.loop !47

671:                                              ; preds = %657
  %672 = icmp slt i32 %666, 0
  br i1 %672, label %673, label %680

673:                                              ; preds = %671
  %674 = load i32, ptr %656, align 4, !tbaa !4
  %675 = icmp eq i32 %674, 11
  br i1 %675, label %676, label %681

676:                                              ; preds = %673
  store i32 1, ptr %457, align 4, !tbaa !17
  %677 = icmp eq i32 %658, 0
  br i1 %677, label %678, label %684

678:                                              ; preds = %676
  %679 = load i32, ptr %656, align 4, !tbaa !4
  br label %681

680:                                              ; preds = %671
  store i32 1, ptr %449, align 8, !tbaa !24
  br label %684

681:                                              ; preds = %678, %673
  %682 = phi i32 [ %679, %678 ], [ %674, %673 ]
  %683 = tail call ptr @strerror(i32 noundef %682) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %683) #13
  br label %870

684:                                              ; preds = %680, %676, %668
  %685 = phi i32 [ %658, %676 ], [ %658, %680 ], [ %669, %668 ]
  %686 = load i32, ptr %450, align 8, !tbaa !34
  %687 = add i32 %686, %685
  store i32 %687, ptr %450, align 8, !tbaa !34
  %688 = load ptr, ptr %456, align 8, !tbaa !29
  store ptr %688, ptr %455, align 8, !tbaa !35
  br label %689

689:                                              ; preds = %684, %536
  %690 = phi i32 [ %687, %684 ], [ %539, %536 ]
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %721, label %692

692:                                              ; preds = %689
  %693 = load i32, ptr %457, align 4, !tbaa !17
  %694 = icmp ne i32 %693, 0
  %695 = icmp ult i32 %690, 4
  %696 = and i1 %695, %694
  br i1 %696, label %721, label %697

697:                                              ; preds = %692
  %698 = icmp ugt i32 %690, 3
  %699 = load ptr, ptr %455, align 8, !tbaa !35
  br i1 %698, label %700, label %717

700:                                              ; preds = %697
  %701 = load i8, ptr %699, align 1, !tbaa !36
  %702 = icmp eq i8 %701, 31
  br i1 %702, label %703, label %717

703:                                              ; preds = %700
  %704 = getelementptr inbounds nuw i8, ptr %699, i64 1
  %705 = load i8, ptr %704, align 1, !tbaa !36
  %706 = icmp eq i8 %705, -117
  br i1 %706, label %707, label %717

707:                                              ; preds = %703
  %708 = getelementptr inbounds nuw i8, ptr %699, i64 2
  %709 = load i8, ptr %708, align 1, !tbaa !36
  %710 = icmp eq i8 %709, 8
  br i1 %710, label %711, label %717

711:                                              ; preds = %707
  %712 = getelementptr inbounds nuw i8, ptr %699, i64 3
  %713 = load i8, ptr %712, align 1, !tbaa !36
  %714 = icmp ult i8 %713, 32
  br i1 %714, label %715, label %717

715:                                              ; preds = %711
  %716 = tail call i32 @inflateReset(ptr noundef nonnull %455) #13
  store i32 2, ptr %451, align 8, !tbaa !26
  store i32 1, ptr %459, align 4, !tbaa !33
  store i32 0, ptr %465, align 8, !tbaa !32
  br label %857

717:                                              ; preds = %711, %707, %703, %700, %697
  %718 = load ptr, ptr %462, align 8, !tbaa !30
  store ptr %718, ptr %448, align 8, !tbaa !20
  %719 = zext i32 %690 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %718, ptr align 1 %699, i64 %719, i1 false)
  %720 = load i32, ptr %450, align 8, !tbaa !34
  store i32 %720, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %450, align 8, !tbaa !34
  store i32 1, ptr %451, align 8, !tbaa !26
  br label %859

721:                                              ; preds = %692, %689, %529
  %722 = load i32, ptr %451, align 8, !tbaa !26
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %1017, label %857

724:                                              ; preds = %499
  %725 = load ptr, ptr %462, align 8, !tbaa !30
  %726 = load i32, ptr %452, align 8, !tbaa !27
  %727 = shl i32 %726, 1
  store i32 0, ptr %457, align 4, !tbaa !17
  %728 = tail call ptr @__errno_location() #16
  store i32 0, ptr %728, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %729

729:                                              ; preds = %740, %724
  %730 = phi i32 [ %742, %740 ], [ 0, %724 ]
  %731 = sub i32 %727, %730
  %732 = tail call i32 @llvm.umin.i32(i32 %731, i32 1073741824)
  %733 = load i32, ptr %458, align 4, !tbaa !46
  %734 = zext i32 %730 to i64
  %735 = getelementptr inbounds nuw i8, ptr %725, i64 %734
  %736 = zext nneg i32 %732 to i64
  %737 = tail call i64 @read(i32 noundef %733, ptr noundef %735, i64 noundef %736) #13
  %738 = trunc i64 %737 to i32
  %739 = icmp slt i32 %738, 1
  br i1 %739, label %744, label %740

740:                                              ; preds = %729
  %741 = load i32, ptr %0, align 4, !tbaa !4
  %742 = add i32 %741, %738
  store i32 %742, ptr %0, align 4, !tbaa !4
  %743 = icmp ult i32 %742, %727
  br i1 %743, label %729, label %758, !llvm.loop !47

744:                                              ; preds = %729
  %745 = icmp slt i32 %738, 0
  br i1 %745, label %746, label %754

746:                                              ; preds = %744
  %747 = load i32, ptr %728, align 4, !tbaa !4
  %748 = icmp eq i32 %747, 11
  br i1 %748, label %749, label %755

749:                                              ; preds = %746
  store i32 1, ptr %457, align 4, !tbaa !17
  %750 = load i32, ptr %0, align 4, !tbaa !4
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %758

752:                                              ; preds = %749
  %753 = load i32, ptr %728, align 4, !tbaa !4
  br label %755

754:                                              ; preds = %744
  store i32 1, ptr %449, align 8, !tbaa !24
  br label %758

755:                                              ; preds = %752, %746
  %756 = phi i32 [ %753, %752 ], [ %747, %746 ]
  %757 = tail call ptr @strerror(i32 noundef %756) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %757) #13
  br label %870

758:                                              ; preds = %754, %749, %740
  %759 = load ptr, ptr %462, align 8, !tbaa !30
  store ptr %759, ptr %448, align 8, !tbaa !20
  br label %1017

760:                                              ; preds = %499
  %761 = load i32, ptr %452, align 8, !tbaa !27
  %762 = shl i32 %761, 1
  store i32 %762, ptr %453, align 8, !tbaa !48
  %763 = load ptr, ptr %462, align 8, !tbaa !30
  store ptr %763, ptr %454, align 8, !tbaa !49
  br label %764

764:                                              ; preds = %836, %760
  %765 = phi i32 [ 0, %760 ], [ %816, %836 ]
  %766 = load i32, ptr %450, align 8, !tbaa !34
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %815

768:                                              ; preds = %764
  %769 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %769, label %847 [
    i32 0, label %770
    i32 -5, label %770
  ]

770:                                              ; preds = %768, %768
  %771 = load i32, ptr %449, align 8, !tbaa !24
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %773, label %811

773:                                              ; preds = %770
  %774 = load ptr, ptr %456, align 8, !tbaa !29
  %775 = load i32, ptr %452, align 8, !tbaa !27
  store i32 0, ptr %457, align 4, !tbaa !17
  %776 = tail call ptr @__errno_location() #16
  store i32 0, ptr %776, align 4, !tbaa !4
  br label %777

777:                                              ; preds = %788, %773
  %778 = phi i32 [ 0, %773 ], [ %789, %788 ]
  %779 = sub i32 %775, %778
  %780 = tail call i32 @llvm.umin.i32(i32 %779, i32 1073741824)
  %781 = load i32, ptr %458, align 4, !tbaa !46
  %782 = zext i32 %778 to i64
  %783 = getelementptr inbounds nuw i8, ptr %774, i64 %782
  %784 = zext nneg i32 %780 to i64
  %785 = tail call i64 @read(i32 noundef %781, ptr noundef %783, i64 noundef %784) #13
  %786 = trunc i64 %785 to i32
  %787 = icmp slt i32 %786, 1
  br i1 %787, label %791, label %788

788:                                              ; preds = %777
  %789 = add i32 %778, %786
  %790 = icmp ult i32 %789, %775
  br i1 %790, label %777, label %805, !llvm.loop !47

791:                                              ; preds = %777
  %792 = icmp slt i32 %786, 0
  br i1 %792, label %793, label %800

793:                                              ; preds = %791
  %794 = load i32, ptr %776, align 4, !tbaa !4
  %795 = icmp eq i32 %794, 11
  br i1 %795, label %796, label %801

796:                                              ; preds = %793
  store i32 1, ptr %457, align 4, !tbaa !17
  %797 = icmp eq i32 %778, 0
  br i1 %797, label %798, label %805

798:                                              ; preds = %796
  %799 = load i32, ptr %776, align 4, !tbaa !4
  br label %801

800:                                              ; preds = %791
  store i32 1, ptr %449, align 8, !tbaa !24
  br label %805

801:                                              ; preds = %798, %793
  %802 = phi i32 [ %799, %798 ], [ %794, %793 ]
  %803 = tail call ptr @strerror(i32 noundef %802) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %803) #13
  %804 = load i32, ptr %10, align 8, !tbaa !16
  br label %847

805:                                              ; preds = %800, %796, %788
  %806 = phi i32 [ %778, %796 ], [ %778, %800 ], [ %789, %788 ]
  %807 = load i32, ptr %450, align 8, !tbaa !34
  %808 = add i32 %807, %806
  store i32 %808, ptr %450, align 8, !tbaa !34
  %809 = load ptr, ptr %456, align 8, !tbaa !29
  store ptr %809, ptr %455, align 8, !tbaa !35
  %810 = icmp eq i32 %808, 0
  br i1 %810, label %811, label %815

811:                                              ; preds = %805, %770
  %812 = load i32, ptr %457, align 4, !tbaa !17
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %847

814:                                              ; preds = %811
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %847

815:                                              ; preds = %805, %764
  %816 = tail call i32 @inflate(ptr noundef nonnull %455, i32 noundef 0) #13
  %817 = load i32, ptr %453, align 8, !tbaa !48
  %818 = icmp ult i32 %817, %762
  br i1 %818, label %819, label %820

819:                                              ; preds = %815
  store i32 0, ptr %459, align 4, !tbaa !33
  br label %820

820:                                              ; preds = %819, %815
  switch i32 %816, label %836 [
    i32 -2, label %821
    i32 2, label %821
    i32 -4, label %822
    i32 -3, label %823
  ]

821:                                              ; preds = %820, %820
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %847

822:                                              ; preds = %820
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %840

823:                                              ; preds = %820
  %824 = load i32, ptr %459, align 4, !tbaa !33
  %825 = icmp eq i32 %824, 1
  br i1 %825, label %826, label %832

826:                                              ; preds = %823
  store i32 0, ptr %450, align 8, !tbaa !34
  store i32 1, ptr %449, align 8, !tbaa !24
  store i32 0, ptr %451, align 8, !tbaa !26
  %827 = sub i32 %762, %817
  store i32 %827, ptr %0, align 8, !tbaa !19
  %828 = load ptr, ptr %454, align 8, !tbaa !49
  %829 = zext i32 %827 to i64
  %830 = sub nsw i64 0, %829
  %831 = getelementptr inbounds i8, ptr %828, i64 %830
  store ptr %831, ptr %448, align 8, !tbaa !20
  br label %857

832:                                              ; preds = %823
  %833 = load ptr, ptr %460, align 8, !tbaa !50
  %834 = icmp eq ptr %833, null
  %835 = select i1 %834, ptr @.str.6, ptr %833
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %835) #13
  br label %840

836:                                              ; preds = %820
  %837 = icmp ne i32 %817, 0
  %838 = icmp ne i32 %816, 1
  %839 = select i1 %837, i1 %838, i1 false
  br i1 %839, label %764, label %847, !llvm.loop !51

840:                                              ; preds = %832, %822
  %841 = load i32, ptr %453, align 8, !tbaa !48
  %842 = sub i32 %762, %841
  store i32 %842, ptr %0, align 8, !tbaa !19
  %843 = load ptr, ptr %454, align 8, !tbaa !49
  %844 = zext i32 %842 to i64
  %845 = sub nsw i64 0, %844
  %846 = getelementptr inbounds i8, ptr %843, i64 %845
  store ptr %846, ptr %448, align 8, !tbaa !20
  br label %870

847:                                              ; preds = %836, %821, %814, %811, %801, %768
  %848 = phi i32 [ %804, %801 ], [ %765, %811 ], [ %765, %814 ], [ %816, %821 ], [ %769, %768 ], [ %816, %836 ]
  %849 = load i32, ptr %453, align 8, !tbaa !48
  %850 = sub i32 %762, %849
  store i32 %850, ptr %0, align 8, !tbaa !19
  %851 = load ptr, ptr %454, align 8, !tbaa !49
  %852 = zext i32 %850 to i64
  %853 = sub nsw i64 0, %852
  %854 = getelementptr inbounds i8, ptr %851, i64 %853
  store ptr %854, ptr %448, align 8, !tbaa !20
  switch i32 %848, label %870 [
    i32 1, label %855
    i32 0, label %857
  ]

855:                                              ; preds = %847
  store i32 0, ptr %459, align 4, !tbaa !33
  store i32 0, ptr %451, align 8, !tbaa !26
  br label %857

856:                                              ; preds = %499
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %870

857:                                              ; preds = %855, %847, %826, %721, %715
  %858 = load i32, ptr %0, align 8, !tbaa !19
  br label %859

859:                                              ; preds = %857, %717
  %860 = phi i32 [ %858, %857 ], [ %720, %717 ]
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %862, label %1017

862:                                              ; preds = %859
  %863 = load i32, ptr %449, align 8, !tbaa !24
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %868, label %865

865:                                              ; preds = %862
  %866 = load i32, ptr %450, align 8, !tbaa !34
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %1017, label %868

868:                                              ; preds = %865, %862
  %869 = load i32, ptr %451, align 8, !tbaa !26
  br label %499, !llvm.loop !52

870:                                              ; preds = %856, %847, %840, %755, %681, %534, %520, %515
  %871 = load i32, ptr %0, align 8, !tbaa !19
  %872 = icmp eq i32 %871, 0
  %873 = sext i1 %872 to i32
  br label %1017

874:                                              ; preds = %494
  %875 = icmp eq i32 %492, 1
  br i1 %875, label %876, label %905

876:                                              ; preds = %874
  store i32 0, ptr %457, align 4, !tbaa !17
  %877 = tail call ptr @__errno_location() #16
  store i32 0, ptr %877, align 4, !tbaa !4
  br label %878

878:                                              ; preds = %889, %876
  %879 = phi i32 [ 0, %876 ], [ %890, %889 ]
  %880 = sub i32 %471, %879
  %881 = tail call i32 @llvm.umin.i32(i32 %880, i32 1073741824)
  %882 = load i32, ptr %458, align 4, !tbaa !46
  %883 = zext i32 %879 to i64
  %884 = getelementptr inbounds nuw i8, ptr %467, i64 %883
  %885 = zext nneg i32 %881 to i64
  %886 = tail call i64 @read(i32 noundef %882, ptr noundef %884, i64 noundef %885) #13
  %887 = trunc i64 %886 to i32
  %888 = icmp slt i32 %887, 1
  br i1 %888, label %892, label %889

889:                                              ; preds = %878
  %890 = add i32 %879, %887
  %891 = icmp ult i32 %890, %471
  br i1 %891, label %878, label %1003, !llvm.loop !47

892:                                              ; preds = %878
  %893 = icmp slt i32 %887, 0
  br i1 %893, label %894, label %904

894:                                              ; preds = %892
  %895 = load i32, ptr %877, align 4, !tbaa !4
  %896 = icmp eq i32 %895, 11
  br i1 %896, label %897, label %901

897:                                              ; preds = %894
  store i32 1, ptr %457, align 4, !tbaa !17
  %898 = icmp eq i32 %879, 0
  br i1 %898, label %899, label %1005

899:                                              ; preds = %897
  %900 = load i32, ptr %877, align 4, !tbaa !4
  br label %901

901:                                              ; preds = %899, %894
  %902 = phi i32 [ %900, %899 ], [ %895, %894 ]
  %903 = tail call ptr @strerror(i32 noundef %902) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %903) #13
  br label %1005

904:                                              ; preds = %892
  store i32 1, ptr %449, align 8, !tbaa !24
  br label %1005

905:                                              ; preds = %874
  store i32 %471, ptr %453, align 8, !tbaa !58
  store ptr %467, ptr %454, align 8, !tbaa !59
  br label %906

906:                                              ; preds = %973, %905
  %907 = phi i32 [ 0, %905 ], [ %958, %973 ]
  %908 = load i32, ptr %450, align 8, !tbaa !34
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %910, label %957

910:                                              ; preds = %906
  %911 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %911, label %985 [
    i32 0, label %912
    i32 -5, label %912
  ]

912:                                              ; preds = %910, %910
  %913 = load i32, ptr %449, align 8, !tbaa !24
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %953

915:                                              ; preds = %912
  %916 = load ptr, ptr %456, align 8, !tbaa !29
  %917 = load i32, ptr %452, align 8, !tbaa !27
  store i32 0, ptr %457, align 4, !tbaa !17
  %918 = tail call ptr @__errno_location() #16
  store i32 0, ptr %918, align 4, !tbaa !4
  br label %919

919:                                              ; preds = %930, %915
  %920 = phi i32 [ 0, %915 ], [ %931, %930 ]
  %921 = sub i32 %917, %920
  %922 = tail call i32 @llvm.umin.i32(i32 %921, i32 1073741824)
  %923 = load i32, ptr %458, align 4, !tbaa !46
  %924 = zext i32 %920 to i64
  %925 = getelementptr inbounds nuw i8, ptr %916, i64 %924
  %926 = zext nneg i32 %922 to i64
  %927 = tail call i64 @read(i32 noundef %923, ptr noundef %925, i64 noundef %926) #13
  %928 = trunc i64 %927 to i32
  %929 = icmp slt i32 %928, 1
  br i1 %929, label %933, label %930

930:                                              ; preds = %919
  %931 = add i32 %920, %928
  %932 = icmp ult i32 %931, %917
  br i1 %932, label %919, label %947, !llvm.loop !47

933:                                              ; preds = %919
  %934 = icmp slt i32 %928, 0
  br i1 %934, label %935, label %942

935:                                              ; preds = %933
  %936 = load i32, ptr %918, align 4, !tbaa !4
  %937 = icmp eq i32 %936, 11
  br i1 %937, label %938, label %943

938:                                              ; preds = %935
  store i32 1, ptr %457, align 4, !tbaa !17
  %939 = icmp eq i32 %920, 0
  br i1 %939, label %940, label %947

940:                                              ; preds = %938
  %941 = load i32, ptr %918, align 4, !tbaa !4
  br label %943

942:                                              ; preds = %933
  store i32 1, ptr %449, align 8, !tbaa !24
  br label %947

943:                                              ; preds = %940, %935
  %944 = phi i32 [ %941, %940 ], [ %936, %935 ]
  %945 = tail call ptr @strerror(i32 noundef %944) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %945) #13
  %946 = load i32, ptr %10, align 8, !tbaa !16
  br label %985

947:                                              ; preds = %942, %938, %930
  %948 = phi i32 [ %920, %938 ], [ %920, %942 ], [ %931, %930 ]
  %949 = load i32, ptr %450, align 8, !tbaa !34
  %950 = add i32 %949, %948
  store i32 %950, ptr %450, align 8, !tbaa !34
  %951 = load ptr, ptr %456, align 8, !tbaa !29
  store ptr %951, ptr %455, align 8, !tbaa !35
  %952 = icmp eq i32 %950, 0
  br i1 %952, label %953, label %957

953:                                              ; preds = %947, %912
  %954 = load i32, ptr %457, align 4, !tbaa !17
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %985

956:                                              ; preds = %953
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %985

957:                                              ; preds = %947, %906
  %958 = tail call i32 @inflate(ptr noundef nonnull %455, i32 noundef 0) #13
  %959 = load i32, ptr %453, align 8, !tbaa !48
  %960 = icmp ult i32 %959, %471
  br i1 %960, label %961, label %962

961:                                              ; preds = %957
  store i32 0, ptr %459, align 4, !tbaa !33
  br label %962

962:                                              ; preds = %961, %957
  switch i32 %958, label %973 [
    i32 -2, label %963
    i32 2, label %963
    i32 -4, label %964
    i32 -3, label %965
  ]

963:                                              ; preds = %962, %962
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %985

964:                                              ; preds = %962
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %977

965:                                              ; preds = %962
  %966 = load i32, ptr %459, align 4, !tbaa !33
  %967 = icmp eq i32 %966, 1
  br i1 %967, label %968, label %969

968:                                              ; preds = %965
  store i32 0, ptr %450, align 8, !tbaa !34
  store i32 1, ptr %449, align 8, !tbaa !24
  store i32 0, ptr %451, align 8, !tbaa !26
  br label %977

969:                                              ; preds = %965
  %970 = load ptr, ptr %460, align 8, !tbaa !50
  %971 = icmp eq ptr %970, null
  %972 = select i1 %971, ptr @.str.6, ptr %970
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %972) #13
  br label %977

973:                                              ; preds = %962
  %974 = icmp ne i32 %959, 0
  %975 = icmp ne i32 %958, 1
  %976 = select i1 %974, i1 %975, i1 false
  br i1 %976, label %906, label %985, !llvm.loop !51

977:                                              ; preds = %969, %968, %964
  %978 = phi i32 [ -3, %969 ], [ 0, %968 ], [ -4, %964 ]
  %979 = load i32, ptr %453, align 8, !tbaa !48
  %980 = sub i32 %471, %979
  %981 = load ptr, ptr %454, align 8, !tbaa !49
  %982 = zext i32 %980 to i64
  %983 = sub nsw i64 0, %982
  %984 = getelementptr inbounds i8, ptr %981, i64 %983
  store ptr %984, ptr %448, align 8, !tbaa !20
  br label %995

985:                                              ; preds = %973, %963, %956, %953, %943, %910
  %986 = phi i32 [ %946, %943 ], [ %907, %953 ], [ %907, %956 ], [ %958, %963 ], [ %911, %910 ], [ %958, %973 ]
  %987 = load i32, ptr %453, align 8, !tbaa !48
  %988 = sub i32 %471, %987
  %989 = load ptr, ptr %454, align 8, !tbaa !49
  %990 = zext i32 %988 to i64
  %991 = sub nsw i64 0, %990
  %992 = getelementptr inbounds i8, ptr %989, i64 %991
  store ptr %992, ptr %448, align 8, !tbaa !20
  %993 = icmp eq i32 %986, 1
  br i1 %993, label %994, label %995

994:                                              ; preds = %985
  store i32 0, ptr %459, align 4, !tbaa !33
  store i32 0, ptr %451, align 8, !tbaa !26
  br label %1000

995:                                              ; preds = %985, %977
  %996 = phi i64 [ %982, %977 ], [ %990, %985 ]
  %997 = phi i32 [ %978, %977 ], [ %986, %985 ]
  %998 = icmp ne i32 %997, 0
  %999 = sext i1 %998 to i32
  br label %1000

1000:                                             ; preds = %995, %994
  %1001 = phi i64 [ %990, %994 ], [ %996, %995 ]
  %1002 = phi i32 [ 0, %994 ], [ %999, %995 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1005

1003:                                             ; preds = %889
  %1004 = zext i32 %890 to i64
  br label %1005

1005:                                             ; preds = %1003, %1000, %904, %901, %897, %474
  %1006 = phi i64 [ %1004, %1003 ], [ %883, %904 ], [ %883, %901 ], [ %883, %897 ], [ %477, %474 ], [ %1001, %1000 ]
  %1007 = phi i32 [ 0, %1003 ], [ 0, %904 ], [ -1, %901 ], [ 0, %897 ], [ %484, %474 ], [ %1002, %1000 ]
  %1008 = load i64, ptr %461, align 8, !tbaa !21
  %1009 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1008, i64 %1006), !nosanitize !22
  %1010 = extractvalue { i64, i1 } %1009, 1, !nosanitize !22
  br i1 %1010, label %1011, label %1012, !prof !23, !nosanitize !22

1011:                                             ; preds = %1005
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

1012:                                             ; preds = %1005
  %1013 = extractvalue { i64, i1 } %1009, 0, !nosanitize !22
  %1014 = add i64 %1006, %469
  %1015 = getelementptr inbounds nuw i8, ptr %467, i64 %1006
  %1016 = sub i64 %468, %1006
  store i64 %1013, ptr %461, align 8, !tbaa !21
  br label %1017

1017:                                             ; preds = %1012, %870, %865, %859, %758, %721
  %1018 = phi ptr [ %1015, %1012 ], [ %467, %870 ], [ %467, %758 ], [ %467, %721 ], [ %467, %859 ], [ %467, %865 ]
  %1019 = phi i64 [ %1016, %1012 ], [ %468, %870 ], [ %468, %758 ], [ %468, %721 ], [ %468, %859 ], [ %468, %865 ]
  %1020 = phi i64 [ %1014, %1012 ], [ %469, %870 ], [ %469, %758 ], [ %469, %721 ], [ %469, %859 ], [ %469, %865 ]
  %1021 = phi i32 [ %1007, %1012 ], [ %873, %870 ], [ 0, %758 ], [ 0, %721 ], [ 0, %859 ], [ 0, %865 ]
  %1022 = icmp eq i64 %1019, 0
  br i1 %1022, label %1031, label %1023

1023:                                             ; preds = %1017
  %1024 = icmp eq i32 %1021, 0
  br i1 %1024, label %466, label %1025, !llvm.loop !60

1025:                                             ; preds = %1023
  %1026 = load i32, ptr %449, align 8, !tbaa !24
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1031, label %1028

1028:                                             ; preds = %1025, %488
  %1029 = phi i64 [ %1020, %1025 ], [ %469, %488 ]
  %1030 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1030, align 4, !tbaa !61
  br label %1031

1031:                                             ; preds = %1028, %1025, %1017
  %1032 = phi i64 [ %1020, %1025 ], [ %1029, %1028 ], [ %1020, %1017 ]
  %1033 = trunc i64 %1032 to i32
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1047

1035:                                             ; preds = %1031, %429, %420, %413, %327, %253, %92, %87, %19
  %1036 = load i32, ptr %10, align 8, !tbaa !16
  br label %1037

1037:                                             ; preds = %1035, %106
  %1038 = phi i32 [ %1036, %1035 ], [ %107, %106 ]
  switch i32 %1038, label %1047 [
    i32 0, label %1039
    i32 -5, label %1039
  ]

1039:                                             ; preds = %1037, %1037
  %1040 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1041 = load i32, ptr %1040, align 4, !tbaa !17
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1047, label %1043

1043:                                             ; preds = %1039
  %1044 = tail call ptr @__errno_location() #16
  %1045 = load i32, ptr %1044, align 4, !tbaa !4
  %1046 = tail call ptr @strerror(i32 noundef %1045) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1046) #13
  br label %1047

1047:                                             ; preds = %1043, %1039, %1037, %1031, %18, %12, %5, %3
  %1048 = phi i32 [ -1, %5 ], [ -1, %3 ], [ -1, %18 ], [ -1, %12 ], [ -1, %1043 ], [ -1, %1037 ], [ 0, %1039 ], [ %1033, %1031 ]
  ret i32 %1048
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
  br i1 %5, label %1038, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1038

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
  br i1 %16, label %1038, label %17

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
  br label %1038

24:                                               ; preds = %21, %17
  %25 = icmp eq i64 %19, 0
  br i1 %25, label %1038, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %28 = load i64, ptr %27, align 8, !tbaa !18
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %451, label %30

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

48:                                               ; preds = %448, %30
  %49 = phi i64 [ %449, %448 ], [ %28, %30 ]
  %50 = load i32, ptr %3, align 8, !tbaa !19
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %68, label %52

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
  %67 = extractvalue { i64, i1 } %66, 0, !nosanitize !22
  store i64 %67, ptr %27, align 8, !tbaa !18
  br label %448

68:                                               ; preds = %48
  %69 = load i32, ptr %33, align 8, !tbaa !24
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %34, align 8, !tbaa !25
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %451, label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %445, %74
  %76 = load i32, ptr %35, align 8, !tbaa !26
  switch i32 %76, label %433 [
    i32 0, label %77
    i32 1, label %300
    i32 2, label %336
  ]

77:                                               ; preds = %75
  %78 = load i32, ptr %36, align 8, !tbaa !27
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load i32, ptr %45, align 4, !tbaa !28
  %82 = zext i32 %81 to i64
  %83 = tail call noalias ptr @malloc(i64 noundef %82) #15
  store ptr %83, ptr %41, align 8, !tbaa !29
  %84 = load i32, ptr %45, align 4, !tbaa !28
  %85 = shl i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = tail call noalias ptr @malloc(i64 noundef %86) #15
  store ptr %87, ptr %38, align 8, !tbaa !30
  %88 = icmp eq ptr %83, null
  %89 = icmp eq ptr %87, null
  %90 = or i1 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  tail call void @free(ptr noundef %87) #13
  tail call void @free(ptr noundef %83) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1035

92:                                               ; preds = %80
  %93 = load i32, ptr %45, align 4, !tbaa !28
  store i32 %93, ptr %36, align 8, !tbaa !27
  store i32 0, ptr %34, align 8, !tbaa !25
  store ptr null, ptr %40, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  %94 = tail call i32 @inflateInit2_(ptr noundef nonnull %40, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %38, align 8, !tbaa !30
  tail call void @free(ptr noundef %97) #13
  %98 = load ptr, ptr %41, align 8, !tbaa !29
  tail call void @free(ptr noundef %98) #13
  store i32 0, ptr %36, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1035

99:                                               ; preds = %92, %77
  %100 = load i32, ptr %47, align 8, !tbaa !32
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %44, align 4, !tbaa !33
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102, %99
  %106 = tail call i32 @inflateReset(ptr noundef nonnull %40) #13
  store i32 2, ptr %35, align 8, !tbaa !26
  %107 = load i32, ptr %44, align 4, !tbaa !33
  %108 = icmp ne i32 %107, -1
  %109 = zext i1 %108 to i32
  store i32 %109, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %47, align 8, !tbaa !32
  br label %297

110:                                              ; preds = %102
  %111 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %111, label %1035 [
    i32 0, label %112
    i32 -5, label %112
  ]

112:                                              ; preds = %110, %110
  %113 = load i32, ptr %33, align 8, !tbaa !24
  %114 = icmp eq i32 %113, 0
  %115 = load i32, ptr %34, align 8, !tbaa !34
  br i1 %114, label %116, label %265

116:                                              ; preds = %112
  %117 = icmp eq i32 %115, 0
  %118 = load ptr, ptr %41, align 8, !tbaa !29
  %119 = ptrtoaddr ptr %118 to i64
  br i1 %117, label %225, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %40, align 8, !tbaa !35
  %122 = icmp eq ptr %121, %118
  br i1 %122, label %225, label %123

123:                                              ; preds = %120
  %124 = ptrtoaddr ptr %121 to i64
  %125 = zext i32 %115 to i64
  %126 = icmp ult i32 %115, 4
  %127 = sub i64 %119, %124
  %128 = icmp ult i64 %127, 32
  %129 = select i1 %126, i1 true, i1 %128
  br i1 %129, label %169, label %130

130:                                              ; preds = %123
  %131 = icmp ult i32 %115, 32
  br i1 %131, label %153, label %132

132:                                              ; preds = %130
  %133 = and i64 %125, 28
  %134 = and i64 %125, 4294967264
  %135 = getelementptr i8, ptr %118, i64 %134
  %136 = getelementptr i8, ptr %121, i64 %134
  %137 = trunc nuw i64 %134 to i32
  %138 = sub i32 %115, %137
  br label %139

139:                                              ; preds = %139, %132
  %140 = phi i64 [ 0, %132 ], [ %147, %139 ]
  %141 = getelementptr i8, ptr %118, i64 %140
  %142 = getelementptr i8, ptr %121, i64 %140
  %143 = getelementptr i8, ptr %142, i64 16
  %144 = load <16 x i8>, ptr %142, align 1, !tbaa !36
  %145 = load <16 x i8>, ptr %143, align 1, !tbaa !36
  %146 = getelementptr i8, ptr %141, i64 16
  store <16 x i8> %144, ptr %141, align 1, !tbaa !36
  store <16 x i8> %145, ptr %146, align 1, !tbaa !36
  %147 = add nuw i64 %140, 32
  %148 = icmp eq i64 %147, %134
  br i1 %148, label %149, label %139, !llvm.loop !62

149:                                              ; preds = %139
  %150 = icmp eq i64 %134, %125
  br i1 %150, label %222, label %151

151:                                              ; preds = %149
  %152 = icmp eq i64 %133, 0
  br i1 %152, label %169, label %153, !prof !41

153:                                              ; preds = %151, %130
  %154 = phi i64 [ %134, %151 ], [ 0, %130 ]
  %155 = and i64 %125, 4294967292
  %156 = getelementptr i8, ptr %118, i64 %155
  %157 = getelementptr i8, ptr %121, i64 %155
  %158 = trunc nuw i64 %155 to i32
  %159 = sub i32 %115, %158
  br label %160

160:                                              ; preds = %160, %153
  %161 = phi i64 [ %154, %153 ], [ %165, %160 ]
  %162 = getelementptr i8, ptr %118, i64 %161
  %163 = getelementptr i8, ptr %121, i64 %161
  %164 = load <4 x i8>, ptr %163, align 1, !tbaa !36
  store <4 x i8> %164, ptr %162, align 1, !tbaa !36
  %165 = add nuw i64 %161, 4
  %166 = icmp eq i64 %165, %155
  br i1 %166, label %167, label %160, !llvm.loop !63

167:                                              ; preds = %160
  %168 = icmp eq i64 %155, %125
  br i1 %168, label %222, label %169

169:                                              ; preds = %167, %151, %123
  %170 = phi ptr [ %118, %123 ], [ %135, %151 ], [ %156, %167 ]
  %171 = phi ptr [ %121, %123 ], [ %136, %151 ], [ %157, %167 ]
  %172 = phi i32 [ %115, %123 ], [ %138, %151 ], [ %159, %167 ]
  %173 = add i32 %172, -1
  %174 = and i32 %172, 7
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %176, %169
  %177 = phi ptr [ %183, %176 ], [ %170, %169 ]
  %178 = phi ptr [ %181, %176 ], [ %171, %169 ]
  %179 = phi i32 [ %184, %176 ], [ %172, %169 ]
  %180 = phi i32 [ %185, %176 ], [ 0, %169 ]
  %181 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %182 = load i8, ptr %178, align 1, !tbaa !36
  %183 = getelementptr inbounds nuw i8, ptr %177, i64 1
  store i8 %182, ptr %177, align 1, !tbaa !36
  %184 = add i32 %179, -1
  %185 = add i32 %180, 1
  %186 = icmp eq i32 %185, %174
  br i1 %186, label %187, label %176, !llvm.loop !64

187:                                              ; preds = %176, %169
  %188 = phi ptr [ %170, %169 ], [ %183, %176 ]
  %189 = phi ptr [ %171, %169 ], [ %181, %176 ]
  %190 = phi i32 [ %172, %169 ], [ %184, %176 ]
  %191 = icmp ult i32 %173, 7
  br i1 %191, label %222, label %192

192:                                              ; preds = %192, %187
  %193 = phi ptr [ %219, %192 ], [ %188, %187 ]
  %194 = phi ptr [ %217, %192 ], [ %189, %187 ]
  %195 = phi i32 [ %220, %192 ], [ %190, %187 ]
  %196 = getelementptr inbounds nuw i8, ptr %194, i64 1
  %197 = load i8, ptr %194, align 1, !tbaa !36
  %198 = getelementptr inbounds nuw i8, ptr %193, i64 1
  store i8 %197, ptr %193, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %194, i64 2
  %200 = load i8, ptr %196, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %193, i64 2
  store i8 %200, ptr %198, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %194, i64 3
  %203 = load i8, ptr %199, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %193, i64 3
  store i8 %203, ptr %201, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %194, i64 4
  %206 = load i8, ptr %202, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %193, i64 4
  store i8 %206, ptr %204, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %194, i64 5
  %209 = load i8, ptr %205, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %193, i64 5
  store i8 %209, ptr %207, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %194, i64 6
  %212 = load i8, ptr %208, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %193, i64 6
  store i8 %212, ptr %210, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %194, i64 7
  %215 = load i8, ptr %211, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %193, i64 7
  store i8 %215, ptr %213, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %194, i64 8
  %218 = load i8, ptr %214, align 1, !tbaa !36
  %219 = getelementptr inbounds nuw i8, ptr %193, i64 8
  store i8 %218, ptr %216, align 1, !tbaa !36
  %220 = add i32 %195, -8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %192, !llvm.loop !65

222:                                              ; preds = %192, %187, %167, %149
  %223 = load i32, ptr %34, align 8, !tbaa !34
  %224 = load ptr, ptr %41, align 8, !tbaa !29
  br label %225

225:                                              ; preds = %222, %120, %116
  %226 = phi ptr [ %224, %222 ], [ %118, %120 ], [ %118, %116 ]
  %227 = phi i32 [ %223, %222 ], [ %115, %120 ], [ 0, %116 ]
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds nuw i8, ptr %226, i64 %228
  %230 = load i32, ptr %36, align 8, !tbaa !27
  %231 = sub i32 %230, %227
  store i32 0, ptr %42, align 4, !tbaa !17
  %232 = tail call ptr @__errno_location() #16
  store i32 0, ptr %232, align 4, !tbaa !4
  br label %233

233:                                              ; preds = %244, %225
  %234 = phi i32 [ 0, %225 ], [ %245, %244 ]
  %235 = sub i32 %231, %234
  %236 = tail call i32 @llvm.umin.i32(i32 %235, i32 1073741824)
  %237 = load i32, ptr %43, align 4, !tbaa !46
  %238 = zext i32 %234 to i64
  %239 = getelementptr inbounds nuw i8, ptr %229, i64 %238
  %240 = zext nneg i32 %236 to i64
  %241 = tail call i64 @read(i32 noundef %237, ptr noundef %239, i64 noundef %240) #13
  %242 = trunc i64 %241 to i32
  %243 = icmp slt i32 %242, 1
  br i1 %243, label %247, label %244

244:                                              ; preds = %233
  %245 = add i32 %234, %242
  %246 = icmp ult i32 %245, %231
  br i1 %246, label %233, label %260, !llvm.loop !47

247:                                              ; preds = %233
  %248 = icmp slt i32 %242, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %247
  %250 = load i32, ptr %232, align 4, !tbaa !4
  %251 = icmp eq i32 %250, 11
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  store i32 1, ptr %42, align 4, !tbaa !17
  %253 = icmp eq i32 %234, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %252
  %255 = load i32, ptr %232, align 4, !tbaa !4
  br label %257

256:                                              ; preds = %247
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %260

257:                                              ; preds = %254, %249
  %258 = phi i32 [ %255, %254 ], [ %250, %249 ]
  %259 = tail call ptr @strerror(i32 noundef %258) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %259) #13
  br label %1035

260:                                              ; preds = %256, %252, %244
  %261 = phi i32 [ %234, %252 ], [ %234, %256 ], [ %245, %244 ]
  %262 = load i32, ptr %34, align 8, !tbaa !34
  %263 = add i32 %262, %261
  store i32 %263, ptr %34, align 8, !tbaa !34
  %264 = load ptr, ptr %41, align 8, !tbaa !29
  store ptr %264, ptr %40, align 8, !tbaa !35
  br label %265

265:                                              ; preds = %260, %112
  %266 = phi i32 [ %263, %260 ], [ %115, %112 ]
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %297, label %268

268:                                              ; preds = %265
  %269 = load i32, ptr %42, align 4, !tbaa !17
  %270 = icmp ne i32 %269, 0
  %271 = icmp ult i32 %266, 4
  %272 = and i1 %271, %270
  br i1 %272, label %297, label %273

273:                                              ; preds = %268
  %274 = icmp ugt i32 %266, 3
  %275 = load ptr, ptr %40, align 8, !tbaa !35
  br i1 %274, label %276, label %293

276:                                              ; preds = %273
  %277 = load i8, ptr %275, align 1, !tbaa !36
  %278 = icmp eq i8 %277, 31
  br i1 %278, label %279, label %293

279:                                              ; preds = %276
  %280 = getelementptr inbounds nuw i8, ptr %275, i64 1
  %281 = load i8, ptr %280, align 1, !tbaa !36
  %282 = icmp eq i8 %281, -117
  br i1 %282, label %283, label %293

283:                                              ; preds = %279
  %284 = getelementptr inbounds nuw i8, ptr %275, i64 2
  %285 = load i8, ptr %284, align 1, !tbaa !36
  %286 = icmp eq i8 %285, 8
  br i1 %286, label %287, label %293

287:                                              ; preds = %283
  %288 = getelementptr inbounds nuw i8, ptr %275, i64 3
  %289 = load i8, ptr %288, align 1, !tbaa !36
  %290 = icmp ult i8 %289, 32
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = tail call i32 @inflateReset(ptr noundef nonnull %40) #13
  store i32 2, ptr %35, align 8, !tbaa !26
  store i32 1, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %47, align 8, !tbaa !32
  br label %434

293:                                              ; preds = %287, %283, %279, %276, %273
  %294 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %294, ptr %31, align 8, !tbaa !20
  %295 = zext i32 %266 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %294, ptr align 1 %275, i64 %295, i1 false)
  %296 = load i32, ptr %34, align 8, !tbaa !34
  store i32 %296, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %34, align 8, !tbaa !34
  store i32 1, ptr %35, align 8, !tbaa !26
  br label %436

297:                                              ; preds = %268, %265, %105
  %298 = load i32, ptr %35, align 8, !tbaa !26
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %446, label %434

300:                                              ; preds = %75
  %301 = load ptr, ptr %38, align 8, !tbaa !30
  %302 = load i32, ptr %36, align 8, !tbaa !27
  %303 = shl i32 %302, 1
  store i32 0, ptr %42, align 4, !tbaa !17
  %304 = tail call ptr @__errno_location() #16
  store i32 0, ptr %304, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %305

305:                                              ; preds = %316, %300
  %306 = phi i32 [ %318, %316 ], [ 0, %300 ]
  %307 = sub i32 %303, %306
  %308 = tail call i32 @llvm.umin.i32(i32 %307, i32 1073741824)
  %309 = load i32, ptr %43, align 4, !tbaa !46
  %310 = zext i32 %306 to i64
  %311 = getelementptr inbounds nuw i8, ptr %301, i64 %310
  %312 = zext nneg i32 %308 to i64
  %313 = tail call i64 @read(i32 noundef %309, ptr noundef %311, i64 noundef %312) #13
  %314 = trunc i64 %313 to i32
  %315 = icmp slt i32 %314, 1
  br i1 %315, label %320, label %316

316:                                              ; preds = %305
  %317 = load i32, ptr %3, align 4, !tbaa !4
  %318 = add i32 %317, %314
  store i32 %318, ptr %3, align 4, !tbaa !4
  %319 = icmp ult i32 %318, %303
  br i1 %319, label %305, label %334, !llvm.loop !47

320:                                              ; preds = %305
  %321 = icmp slt i32 %314, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %320
  %323 = load i32, ptr %304, align 4, !tbaa !4
  %324 = icmp eq i32 %323, 11
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  store i32 1, ptr %42, align 4, !tbaa !17
  %326 = load i32, ptr %3, align 4, !tbaa !4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load i32, ptr %304, align 4, !tbaa !4
  br label %331

330:                                              ; preds = %320
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %334

331:                                              ; preds = %328, %322
  %332 = phi i32 [ %329, %328 ], [ %323, %322 ]
  %333 = tail call ptr @strerror(i32 noundef %332) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %333) #13
  br label %1035

334:                                              ; preds = %330, %325, %316
  %335 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %335, ptr %31, align 8, !tbaa !20
  br label %446

336:                                              ; preds = %75
  %337 = load i32, ptr %36, align 8, !tbaa !27
  %338 = shl i32 %337, 1
  store i32 %338, ptr %37, align 8, !tbaa !48
  %339 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %339, ptr %39, align 8, !tbaa !49
  br label %340

340:                                              ; preds = %413, %336
  %341 = phi i32 [ 0, %336 ], [ %392, %413 ]
  %342 = load i32, ptr %34, align 8, !tbaa !34
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %391

344:                                              ; preds = %340
  %345 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %345, label %424 [
    i32 0, label %346
    i32 -5, label %346
  ]

346:                                              ; preds = %344, %344
  %347 = load i32, ptr %33, align 8, !tbaa !24
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %387

349:                                              ; preds = %346
  %350 = load ptr, ptr %41, align 8, !tbaa !29
  %351 = load i32, ptr %36, align 8, !tbaa !27
  store i32 0, ptr %42, align 4, !tbaa !17
  %352 = tail call ptr @__errno_location() #16
  store i32 0, ptr %352, align 4, !tbaa !4
  br label %353

353:                                              ; preds = %364, %349
  %354 = phi i32 [ 0, %349 ], [ %365, %364 ]
  %355 = sub i32 %351, %354
  %356 = tail call i32 @llvm.umin.i32(i32 %355, i32 1073741824)
  %357 = load i32, ptr %43, align 4, !tbaa !46
  %358 = zext i32 %354 to i64
  %359 = getelementptr inbounds nuw i8, ptr %350, i64 %358
  %360 = zext nneg i32 %356 to i64
  %361 = tail call i64 @read(i32 noundef %357, ptr noundef %359, i64 noundef %360) #13
  %362 = trunc i64 %361 to i32
  %363 = icmp slt i32 %362, 1
  br i1 %363, label %367, label %364

364:                                              ; preds = %353
  %365 = add i32 %354, %362
  %366 = icmp ult i32 %365, %351
  br i1 %366, label %353, label %381, !llvm.loop !47

367:                                              ; preds = %353
  %368 = icmp slt i32 %362, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %367
  %370 = load i32, ptr %352, align 4, !tbaa !4
  %371 = icmp eq i32 %370, 11
  br i1 %371, label %372, label %377

372:                                              ; preds = %369
  store i32 1, ptr %42, align 4, !tbaa !17
  %373 = icmp eq i32 %354, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %372
  %375 = load i32, ptr %352, align 4, !tbaa !4
  br label %377

376:                                              ; preds = %367
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %381

377:                                              ; preds = %374, %369
  %378 = phi i32 [ %375, %374 ], [ %370, %369 ]
  %379 = tail call ptr @strerror(i32 noundef %378) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %379) #13
  %380 = load i32, ptr %11, align 8, !tbaa !16
  br label %424

381:                                              ; preds = %376, %372, %364
  %382 = phi i32 [ %354, %372 ], [ %354, %376 ], [ %365, %364 ]
  %383 = load i32, ptr %34, align 8, !tbaa !34
  %384 = add i32 %383, %382
  store i32 %384, ptr %34, align 8, !tbaa !34
  %385 = load ptr, ptr %41, align 8, !tbaa !29
  store ptr %385, ptr %40, align 8, !tbaa !35
  %386 = icmp eq i32 %384, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %381, %346
  %388 = load i32, ptr %42, align 4, !tbaa !17
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %424

390:                                              ; preds = %387
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %424

391:                                              ; preds = %381, %340
  %392 = tail call i32 @inflate(ptr noundef nonnull %40, i32 noundef 0) #13
  %393 = load i32, ptr %37, align 8, !tbaa !48
  %394 = icmp ult i32 %393, %338
  br i1 %394, label %395, label %396

395:                                              ; preds = %391
  store i32 0, ptr %44, align 4, !tbaa !33
  br label %396

396:                                              ; preds = %395, %391
  switch i32 %392, label %413 [
    i32 -2, label %397
    i32 2, label %397
    i32 -4, label %398
    i32 -3, label %399
  ]

397:                                              ; preds = %396, %396
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %424

398:                                              ; preds = %396
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %417

399:                                              ; preds = %396
  %400 = load i32, ptr %44, align 4, !tbaa !33
  %401 = icmp eq i32 %400, 1
  br i1 %401, label %402, label %408

402:                                              ; preds = %399
  store i32 0, ptr %34, align 8, !tbaa !34
  store i32 1, ptr %33, align 8, !tbaa !24
  store i32 0, ptr %35, align 8, !tbaa !26
  %403 = sub i32 %338, %393
  store i32 %403, ptr %3, align 8, !tbaa !19
  %404 = load ptr, ptr %39, align 8, !tbaa !49
  %405 = zext i32 %403 to i64
  %406 = sub nsw i64 0, %405
  %407 = getelementptr inbounds i8, ptr %404, i64 %406
  store ptr %407, ptr %31, align 8, !tbaa !20
  br label %434

408:                                              ; preds = %399
  %409 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %410 = load ptr, ptr %409, align 8, !tbaa !50
  %411 = icmp eq ptr %410, null
  %412 = select i1 %411, ptr @.str.6, ptr %410
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %412) #13
  br label %417

413:                                              ; preds = %396
  %414 = icmp ne i32 %393, 0
  %415 = icmp ne i32 %392, 1
  %416 = select i1 %414, i1 %415, i1 false
  br i1 %416, label %340, label %424, !llvm.loop !51

417:                                              ; preds = %408, %398
  %418 = load i32, ptr %37, align 8, !tbaa !48
  %419 = sub i32 %338, %418
  store i32 %419, ptr %3, align 8, !tbaa !19
  %420 = load ptr, ptr %39, align 8, !tbaa !49
  %421 = zext i32 %419 to i64
  %422 = sub nsw i64 0, %421
  %423 = getelementptr inbounds i8, ptr %420, i64 %422
  store ptr %423, ptr %31, align 8, !tbaa !20
  br label %1035

424:                                              ; preds = %413, %397, %390, %387, %377, %344
  %425 = phi i32 [ %380, %377 ], [ %341, %387 ], [ %341, %390 ], [ %392, %397 ], [ %392, %413 ], [ %345, %344 ]
  %426 = load i32, ptr %37, align 8, !tbaa !48
  %427 = sub i32 %338, %426
  store i32 %427, ptr %3, align 8, !tbaa !19
  %428 = load ptr, ptr %39, align 8, !tbaa !49
  %429 = zext i32 %427 to i64
  %430 = sub nsw i64 0, %429
  %431 = getelementptr inbounds i8, ptr %428, i64 %430
  store ptr %431, ptr %31, align 8, !tbaa !20
  switch i32 %425, label %1035 [
    i32 1, label %432
    i32 0, label %434
  ]

432:                                              ; preds = %424
  store i32 0, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %35, align 8, !tbaa !26
  br label %434

433:                                              ; preds = %75
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1035

434:                                              ; preds = %432, %424, %402, %297, %291
  %435 = load i32, ptr %3, align 8, !tbaa !19
  br label %436

436:                                              ; preds = %434, %293
  %437 = phi i32 [ %435, %434 ], [ %296, %293 ]
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %446

439:                                              ; preds = %436
  %440 = load i32, ptr %33, align 8, !tbaa !24
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %439
  %443 = load i32, ptr %34, align 8, !tbaa !34
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %446, label %445

445:                                              ; preds = %442, %439
  br label %75, !llvm.loop !52

446:                                              ; preds = %442, %436, %334, %297
  %447 = load i64, ptr %27, align 8, !tbaa !18
  br label %448

448:                                              ; preds = %446, %64
  %449 = phi i64 [ %447, %446 ], [ %67, %64 ]
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %451, label %48, !llvm.loop !53

451:                                              ; preds = %448, %71, %26
  %452 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %453 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %454 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %455 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %456 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %457 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %458 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %459 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %460 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %461 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %462 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %463 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %464 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %465 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %466 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %467 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %468 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %469 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %470

470:                                              ; preds = %1027, %451
  %471 = phi ptr [ %0, %451 ], [ %1022, %1027 ]
  %472 = phi i64 [ %19, %451 ], [ %1023, %1027 ]
  %473 = phi i64 [ 0, %451 ], [ %1024, %1027 ]
  %474 = tail call i64 @llvm.umin.i64(i64 %472, i64 4294967295)
  %475 = trunc nuw i64 %474 to i32
  %476 = load i32, ptr %3, align 8, !tbaa !19
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %489, label %478

478:                                              ; preds = %470
  %479 = tail call i32 @llvm.umin.i32(i32 %476, i32 %475)
  %480 = load ptr, ptr %452, align 8, !tbaa !20
  %481 = zext i32 %479 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %471, ptr align 1 %480, i64 %481, i1 false)
  %482 = load ptr, ptr %452, align 8, !tbaa !20
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 %481
  store ptr %483, ptr %452, align 8, !tbaa !20
  %484 = load i32, ptr %3, align 8, !tbaa !19
  %485 = sub i32 %484, %479
  store i32 %485, ptr %3, align 8, !tbaa !19
  %486 = load i32, ptr %11, align 8, !tbaa !16
  %487 = icmp ne i32 %486, 0
  %488 = sext i1 %487 to i32
  br label %1009

489:                                              ; preds = %470
  %490 = load i32, ptr %453, align 8, !tbaa !24
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %495, label %492

492:                                              ; preds = %489
  %493 = load i32, ptr %454, align 8, !tbaa !25
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %1032, label %495

495:                                              ; preds = %492, %489
  %496 = load i32, ptr %455, align 8, !tbaa !26
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %502, label %498

498:                                              ; preds = %495
  %499 = load i32, ptr %456, align 8, !tbaa !27
  %500 = shl i32 %499, 1
  %501 = icmp ugt i32 %500, %475
  br i1 %501, label %502, label %878

502:                                              ; preds = %498, %495
  br label %503

503:                                              ; preds = %872, %502
  %504 = phi i32 [ %873, %872 ], [ %496, %502 ]
  switch i32 %504, label %860 [
    i32 0, label %505
    i32 1, label %728
    i32 2, label %764
  ]

505:                                              ; preds = %503
  %506 = load i32, ptr %456, align 8, !tbaa !27
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %527

508:                                              ; preds = %505
  %509 = load i32, ptr %467, align 4, !tbaa !28
  %510 = zext i32 %509 to i64
  %511 = tail call noalias ptr @malloc(i64 noundef %510) #15
  store ptr %511, ptr %460, align 8, !tbaa !29
  %512 = load i32, ptr %467, align 4, !tbaa !28
  %513 = shl i32 %512, 1
  %514 = zext i32 %513 to i64
  %515 = tail call noalias ptr @malloc(i64 noundef %514) #15
  store ptr %515, ptr %466, align 8, !tbaa !30
  %516 = icmp eq ptr %511, null
  %517 = icmp eq ptr %515, null
  %518 = or i1 %516, %517
  br i1 %518, label %519, label %520

519:                                              ; preds = %508
  tail call void @free(ptr noundef %515) #13
  tail call void @free(ptr noundef %511) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %874

520:                                              ; preds = %508
  %521 = load i32, ptr %467, align 4, !tbaa !28
  store i32 %521, ptr %456, align 8, !tbaa !27
  store i32 0, ptr %454, align 8, !tbaa !25
  store ptr null, ptr %459, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %468, i8 0, i64 24, i1 false)
  %522 = tail call i32 @inflateInit2_(ptr noundef nonnull %459, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %520
  %525 = load ptr, ptr %466, align 8, !tbaa !30
  tail call void @free(ptr noundef %525) #13
  %526 = load ptr, ptr %460, align 8, !tbaa !29
  tail call void @free(ptr noundef %526) #13
  store i32 0, ptr %456, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %874

527:                                              ; preds = %520, %505
  %528 = load i32, ptr %469, align 8, !tbaa !32
  %529 = icmp eq i32 %528, -1
  br i1 %529, label %533, label %530

530:                                              ; preds = %527
  %531 = load i32, ptr %463, align 4, !tbaa !33
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %538

533:                                              ; preds = %530, %527
  %534 = tail call i32 @inflateReset(ptr noundef nonnull %459) #13
  store i32 2, ptr %455, align 8, !tbaa !26
  %535 = load i32, ptr %463, align 4, !tbaa !33
  %536 = icmp ne i32 %535, -1
  %537 = zext i1 %536 to i32
  store i32 %537, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %469, align 8, !tbaa !32
  br label %725

538:                                              ; preds = %530
  %539 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %539, label %874 [
    i32 0, label %540
    i32 -5, label %540
  ]

540:                                              ; preds = %538, %538
  %541 = load i32, ptr %453, align 8, !tbaa !24
  %542 = icmp eq i32 %541, 0
  %543 = load i32, ptr %454, align 8, !tbaa !34
  br i1 %542, label %544, label %693

544:                                              ; preds = %540
  %545 = icmp eq i32 %543, 0
  %546 = load ptr, ptr %460, align 8, !tbaa !29
  %547 = ptrtoaddr ptr %546 to i64
  br i1 %545, label %653, label %548

548:                                              ; preds = %544
  %549 = load ptr, ptr %459, align 8, !tbaa !35
  %550 = icmp eq ptr %549, %546
  br i1 %550, label %653, label %551

551:                                              ; preds = %548
  %552 = ptrtoaddr ptr %549 to i64
  %553 = zext i32 %543 to i64
  %554 = icmp ult i32 %543, 4
  %555 = sub i64 %547, %552
  %556 = icmp ult i64 %555, 32
  %557 = select i1 %554, i1 true, i1 %556
  br i1 %557, label %597, label %558

558:                                              ; preds = %551
  %559 = icmp ult i32 %543, 32
  br i1 %559, label %581, label %560

560:                                              ; preds = %558
  %561 = and i64 %553, 28
  %562 = and i64 %553, 4294967264
  %563 = getelementptr i8, ptr %546, i64 %562
  %564 = getelementptr i8, ptr %549, i64 %562
  %565 = trunc nuw i64 %562 to i32
  %566 = sub i32 %543, %565
  br label %567

567:                                              ; preds = %567, %560
  %568 = phi i64 [ 0, %560 ], [ %575, %567 ]
  %569 = getelementptr i8, ptr %546, i64 %568
  %570 = getelementptr i8, ptr %549, i64 %568
  %571 = getelementptr i8, ptr %570, i64 16
  %572 = load <16 x i8>, ptr %570, align 1, !tbaa !36
  %573 = load <16 x i8>, ptr %571, align 1, !tbaa !36
  %574 = getelementptr i8, ptr %569, i64 16
  store <16 x i8> %572, ptr %569, align 1, !tbaa !36
  store <16 x i8> %573, ptr %574, align 1, !tbaa !36
  %575 = add nuw i64 %568, 32
  %576 = icmp eq i64 %575, %562
  br i1 %576, label %577, label %567, !llvm.loop !66

577:                                              ; preds = %567
  %578 = icmp eq i64 %562, %553
  br i1 %578, label %650, label %579

579:                                              ; preds = %577
  %580 = icmp eq i64 %561, 0
  br i1 %580, label %597, label %581, !prof !41

581:                                              ; preds = %579, %558
  %582 = phi i64 [ %562, %579 ], [ 0, %558 ]
  %583 = and i64 %553, 4294967292
  %584 = getelementptr i8, ptr %546, i64 %583
  %585 = getelementptr i8, ptr %549, i64 %583
  %586 = trunc nuw i64 %583 to i32
  %587 = sub i32 %543, %586
  br label %588

588:                                              ; preds = %588, %581
  %589 = phi i64 [ %582, %581 ], [ %593, %588 ]
  %590 = getelementptr i8, ptr %546, i64 %589
  %591 = getelementptr i8, ptr %549, i64 %589
  %592 = load <4 x i8>, ptr %591, align 1, !tbaa !36
  store <4 x i8> %592, ptr %590, align 1, !tbaa !36
  %593 = add nuw i64 %589, 4
  %594 = icmp eq i64 %593, %583
  br i1 %594, label %595, label %588, !llvm.loop !67

595:                                              ; preds = %588
  %596 = icmp eq i64 %583, %553
  br i1 %596, label %650, label %597

597:                                              ; preds = %595, %579, %551
  %598 = phi ptr [ %546, %551 ], [ %563, %579 ], [ %584, %595 ]
  %599 = phi ptr [ %549, %551 ], [ %564, %579 ], [ %585, %595 ]
  %600 = phi i32 [ %543, %551 ], [ %566, %579 ], [ %587, %595 ]
  %601 = add i32 %600, -1
  %602 = and i32 %600, 7
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %615, label %604

604:                                              ; preds = %604, %597
  %605 = phi ptr [ %611, %604 ], [ %598, %597 ]
  %606 = phi ptr [ %609, %604 ], [ %599, %597 ]
  %607 = phi i32 [ %612, %604 ], [ %600, %597 ]
  %608 = phi i32 [ %613, %604 ], [ 0, %597 ]
  %609 = getelementptr inbounds nuw i8, ptr %606, i64 1
  %610 = load i8, ptr %606, align 1, !tbaa !36
  %611 = getelementptr inbounds nuw i8, ptr %605, i64 1
  store i8 %610, ptr %605, align 1, !tbaa !36
  %612 = add i32 %607, -1
  %613 = add i32 %608, 1
  %614 = icmp eq i32 %613, %602
  br i1 %614, label %615, label %604, !llvm.loop !68

615:                                              ; preds = %604, %597
  %616 = phi ptr [ %598, %597 ], [ %611, %604 ]
  %617 = phi ptr [ %599, %597 ], [ %609, %604 ]
  %618 = phi i32 [ %600, %597 ], [ %612, %604 ]
  %619 = icmp ult i32 %601, 7
  br i1 %619, label %650, label %620

620:                                              ; preds = %620, %615
  %621 = phi ptr [ %647, %620 ], [ %616, %615 ]
  %622 = phi ptr [ %645, %620 ], [ %617, %615 ]
  %623 = phi i32 [ %648, %620 ], [ %618, %615 ]
  %624 = getelementptr inbounds nuw i8, ptr %622, i64 1
  %625 = load i8, ptr %622, align 1, !tbaa !36
  %626 = getelementptr inbounds nuw i8, ptr %621, i64 1
  store i8 %625, ptr %621, align 1, !tbaa !36
  %627 = getelementptr inbounds nuw i8, ptr %622, i64 2
  %628 = load i8, ptr %624, align 1, !tbaa !36
  %629 = getelementptr inbounds nuw i8, ptr %621, i64 2
  store i8 %628, ptr %626, align 1, !tbaa !36
  %630 = getelementptr inbounds nuw i8, ptr %622, i64 3
  %631 = load i8, ptr %627, align 1, !tbaa !36
  %632 = getelementptr inbounds nuw i8, ptr %621, i64 3
  store i8 %631, ptr %629, align 1, !tbaa !36
  %633 = getelementptr inbounds nuw i8, ptr %622, i64 4
  %634 = load i8, ptr %630, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %621, i64 4
  store i8 %634, ptr %632, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %622, i64 5
  %637 = load i8, ptr %633, align 1, !tbaa !36
  %638 = getelementptr inbounds nuw i8, ptr %621, i64 5
  store i8 %637, ptr %635, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %622, i64 6
  %640 = load i8, ptr %636, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %621, i64 6
  store i8 %640, ptr %638, align 1, !tbaa !36
  %642 = getelementptr inbounds nuw i8, ptr %622, i64 7
  %643 = load i8, ptr %639, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %621, i64 7
  store i8 %643, ptr %641, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %622, i64 8
  %646 = load i8, ptr %642, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %621, i64 8
  store i8 %646, ptr %644, align 1, !tbaa !36
  %648 = add i32 %623, -8
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %620, !llvm.loop !69

650:                                              ; preds = %620, %615, %595, %577
  %651 = load i32, ptr %454, align 8, !tbaa !34
  %652 = load ptr, ptr %460, align 8, !tbaa !29
  br label %653

653:                                              ; preds = %650, %548, %544
  %654 = phi ptr [ %652, %650 ], [ %546, %548 ], [ %546, %544 ]
  %655 = phi i32 [ %651, %650 ], [ %543, %548 ], [ 0, %544 ]
  %656 = zext i32 %655 to i64
  %657 = getelementptr inbounds nuw i8, ptr %654, i64 %656
  %658 = load i32, ptr %456, align 8, !tbaa !27
  %659 = sub i32 %658, %655
  store i32 0, ptr %461, align 4, !tbaa !17
  %660 = tail call ptr @__errno_location() #16
  store i32 0, ptr %660, align 4, !tbaa !4
  br label %661

661:                                              ; preds = %672, %653
  %662 = phi i32 [ 0, %653 ], [ %673, %672 ]
  %663 = sub i32 %659, %662
  %664 = tail call i32 @llvm.umin.i32(i32 %663, i32 1073741824)
  %665 = load i32, ptr %462, align 4, !tbaa !46
  %666 = zext i32 %662 to i64
  %667 = getelementptr inbounds nuw i8, ptr %657, i64 %666
  %668 = zext nneg i32 %664 to i64
  %669 = tail call i64 @read(i32 noundef %665, ptr noundef %667, i64 noundef %668) #13
  %670 = trunc i64 %669 to i32
  %671 = icmp slt i32 %670, 1
  br i1 %671, label %675, label %672

672:                                              ; preds = %661
  %673 = add i32 %662, %670
  %674 = icmp ult i32 %673, %659
  br i1 %674, label %661, label %688, !llvm.loop !47

675:                                              ; preds = %661
  %676 = icmp slt i32 %670, 0
  br i1 %676, label %677, label %684

677:                                              ; preds = %675
  %678 = load i32, ptr %660, align 4, !tbaa !4
  %679 = icmp eq i32 %678, 11
  br i1 %679, label %680, label %685

680:                                              ; preds = %677
  store i32 1, ptr %461, align 4, !tbaa !17
  %681 = icmp eq i32 %662, 0
  br i1 %681, label %682, label %688

682:                                              ; preds = %680
  %683 = load i32, ptr %660, align 4, !tbaa !4
  br label %685

684:                                              ; preds = %675
  store i32 1, ptr %453, align 8, !tbaa !24
  br label %688

685:                                              ; preds = %682, %677
  %686 = phi i32 [ %683, %682 ], [ %678, %677 ]
  %687 = tail call ptr @strerror(i32 noundef %686) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %687) #13
  br label %874

688:                                              ; preds = %684, %680, %672
  %689 = phi i32 [ %662, %680 ], [ %662, %684 ], [ %673, %672 ]
  %690 = load i32, ptr %454, align 8, !tbaa !34
  %691 = add i32 %690, %689
  store i32 %691, ptr %454, align 8, !tbaa !34
  %692 = load ptr, ptr %460, align 8, !tbaa !29
  store ptr %692, ptr %459, align 8, !tbaa !35
  br label %693

693:                                              ; preds = %688, %540
  %694 = phi i32 [ %691, %688 ], [ %543, %540 ]
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %725, label %696

696:                                              ; preds = %693
  %697 = load i32, ptr %461, align 4, !tbaa !17
  %698 = icmp ne i32 %697, 0
  %699 = icmp ult i32 %694, 4
  %700 = and i1 %699, %698
  br i1 %700, label %725, label %701

701:                                              ; preds = %696
  %702 = icmp ugt i32 %694, 3
  %703 = load ptr, ptr %459, align 8, !tbaa !35
  br i1 %702, label %704, label %721

704:                                              ; preds = %701
  %705 = load i8, ptr %703, align 1, !tbaa !36
  %706 = icmp eq i8 %705, 31
  br i1 %706, label %707, label %721

707:                                              ; preds = %704
  %708 = getelementptr inbounds nuw i8, ptr %703, i64 1
  %709 = load i8, ptr %708, align 1, !tbaa !36
  %710 = icmp eq i8 %709, -117
  br i1 %710, label %711, label %721

711:                                              ; preds = %707
  %712 = getelementptr inbounds nuw i8, ptr %703, i64 2
  %713 = load i8, ptr %712, align 1, !tbaa !36
  %714 = icmp eq i8 %713, 8
  br i1 %714, label %715, label %721

715:                                              ; preds = %711
  %716 = getelementptr inbounds nuw i8, ptr %703, i64 3
  %717 = load i8, ptr %716, align 1, !tbaa !36
  %718 = icmp ult i8 %717, 32
  br i1 %718, label %719, label %721

719:                                              ; preds = %715
  %720 = tail call i32 @inflateReset(ptr noundef nonnull %459) #13
  store i32 2, ptr %455, align 8, !tbaa !26
  store i32 1, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %469, align 8, !tbaa !32
  br label %861

721:                                              ; preds = %715, %711, %707, %704, %701
  %722 = load ptr, ptr %466, align 8, !tbaa !30
  store ptr %722, ptr %452, align 8, !tbaa !20
  %723 = zext i32 %694 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %722, ptr align 1 %703, i64 %723, i1 false)
  %724 = load i32, ptr %454, align 8, !tbaa !34
  store i32 %724, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %454, align 8, !tbaa !34
  store i32 1, ptr %455, align 8, !tbaa !26
  br label %863

725:                                              ; preds = %696, %693, %533
  %726 = load i32, ptr %455, align 8, !tbaa !26
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %1021, label %861

728:                                              ; preds = %503
  %729 = load ptr, ptr %466, align 8, !tbaa !30
  %730 = load i32, ptr %456, align 8, !tbaa !27
  %731 = shl i32 %730, 1
  store i32 0, ptr %461, align 4, !tbaa !17
  %732 = tail call ptr @__errno_location() #16
  store i32 0, ptr %732, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %733

733:                                              ; preds = %744, %728
  %734 = phi i32 [ %746, %744 ], [ 0, %728 ]
  %735 = sub i32 %731, %734
  %736 = tail call i32 @llvm.umin.i32(i32 %735, i32 1073741824)
  %737 = load i32, ptr %462, align 4, !tbaa !46
  %738 = zext i32 %734 to i64
  %739 = getelementptr inbounds nuw i8, ptr %729, i64 %738
  %740 = zext nneg i32 %736 to i64
  %741 = tail call i64 @read(i32 noundef %737, ptr noundef %739, i64 noundef %740) #13
  %742 = trunc i64 %741 to i32
  %743 = icmp slt i32 %742, 1
  br i1 %743, label %748, label %744

744:                                              ; preds = %733
  %745 = load i32, ptr %3, align 4, !tbaa !4
  %746 = add i32 %745, %742
  store i32 %746, ptr %3, align 4, !tbaa !4
  %747 = icmp ult i32 %746, %731
  br i1 %747, label %733, label %762, !llvm.loop !47

748:                                              ; preds = %733
  %749 = icmp slt i32 %742, 0
  br i1 %749, label %750, label %758

750:                                              ; preds = %748
  %751 = load i32, ptr %732, align 4, !tbaa !4
  %752 = icmp eq i32 %751, 11
  br i1 %752, label %753, label %759

753:                                              ; preds = %750
  store i32 1, ptr %461, align 4, !tbaa !17
  %754 = load i32, ptr %3, align 4, !tbaa !4
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %762

756:                                              ; preds = %753
  %757 = load i32, ptr %732, align 4, !tbaa !4
  br label %759

758:                                              ; preds = %748
  store i32 1, ptr %453, align 8, !tbaa !24
  br label %762

759:                                              ; preds = %756, %750
  %760 = phi i32 [ %757, %756 ], [ %751, %750 ]
  %761 = tail call ptr @strerror(i32 noundef %760) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %761) #13
  br label %874

762:                                              ; preds = %758, %753, %744
  %763 = load ptr, ptr %466, align 8, !tbaa !30
  store ptr %763, ptr %452, align 8, !tbaa !20
  br label %1021

764:                                              ; preds = %503
  %765 = load i32, ptr %456, align 8, !tbaa !27
  %766 = shl i32 %765, 1
  store i32 %766, ptr %457, align 8, !tbaa !48
  %767 = load ptr, ptr %466, align 8, !tbaa !30
  store ptr %767, ptr %458, align 8, !tbaa !49
  br label %768

768:                                              ; preds = %840, %764
  %769 = phi i32 [ 0, %764 ], [ %820, %840 ]
  %770 = load i32, ptr %454, align 8, !tbaa !34
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %819

772:                                              ; preds = %768
  %773 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %773, label %851 [
    i32 0, label %774
    i32 -5, label %774
  ]

774:                                              ; preds = %772, %772
  %775 = load i32, ptr %453, align 8, !tbaa !24
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %815

777:                                              ; preds = %774
  %778 = load ptr, ptr %460, align 8, !tbaa !29
  %779 = load i32, ptr %456, align 8, !tbaa !27
  store i32 0, ptr %461, align 4, !tbaa !17
  %780 = tail call ptr @__errno_location() #16
  store i32 0, ptr %780, align 4, !tbaa !4
  br label %781

781:                                              ; preds = %792, %777
  %782 = phi i32 [ 0, %777 ], [ %793, %792 ]
  %783 = sub i32 %779, %782
  %784 = tail call i32 @llvm.umin.i32(i32 %783, i32 1073741824)
  %785 = load i32, ptr %462, align 4, !tbaa !46
  %786 = zext i32 %782 to i64
  %787 = getelementptr inbounds nuw i8, ptr %778, i64 %786
  %788 = zext nneg i32 %784 to i64
  %789 = tail call i64 @read(i32 noundef %785, ptr noundef %787, i64 noundef %788) #13
  %790 = trunc i64 %789 to i32
  %791 = icmp slt i32 %790, 1
  br i1 %791, label %795, label %792

792:                                              ; preds = %781
  %793 = add i32 %782, %790
  %794 = icmp ult i32 %793, %779
  br i1 %794, label %781, label %809, !llvm.loop !47

795:                                              ; preds = %781
  %796 = icmp slt i32 %790, 0
  br i1 %796, label %797, label %804

797:                                              ; preds = %795
  %798 = load i32, ptr %780, align 4, !tbaa !4
  %799 = icmp eq i32 %798, 11
  br i1 %799, label %800, label %805

800:                                              ; preds = %797
  store i32 1, ptr %461, align 4, !tbaa !17
  %801 = icmp eq i32 %782, 0
  br i1 %801, label %802, label %809

802:                                              ; preds = %800
  %803 = load i32, ptr %780, align 4, !tbaa !4
  br label %805

804:                                              ; preds = %795
  store i32 1, ptr %453, align 8, !tbaa !24
  br label %809

805:                                              ; preds = %802, %797
  %806 = phi i32 [ %803, %802 ], [ %798, %797 ]
  %807 = tail call ptr @strerror(i32 noundef %806) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %807) #13
  %808 = load i32, ptr %11, align 8, !tbaa !16
  br label %851

809:                                              ; preds = %804, %800, %792
  %810 = phi i32 [ %782, %800 ], [ %782, %804 ], [ %793, %792 ]
  %811 = load i32, ptr %454, align 8, !tbaa !34
  %812 = add i32 %811, %810
  store i32 %812, ptr %454, align 8, !tbaa !34
  %813 = load ptr, ptr %460, align 8, !tbaa !29
  store ptr %813, ptr %459, align 8, !tbaa !35
  %814 = icmp eq i32 %812, 0
  br i1 %814, label %815, label %819

815:                                              ; preds = %809, %774
  %816 = load i32, ptr %461, align 4, !tbaa !17
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %851

818:                                              ; preds = %815
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %851

819:                                              ; preds = %809, %768
  %820 = tail call i32 @inflate(ptr noundef nonnull %459, i32 noundef 0) #13
  %821 = load i32, ptr %457, align 8, !tbaa !48
  %822 = icmp ult i32 %821, %766
  br i1 %822, label %823, label %824

823:                                              ; preds = %819
  store i32 0, ptr %463, align 4, !tbaa !33
  br label %824

824:                                              ; preds = %823, %819
  switch i32 %820, label %840 [
    i32 -2, label %825
    i32 2, label %825
    i32 -4, label %826
    i32 -3, label %827
  ]

825:                                              ; preds = %824, %824
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %851

826:                                              ; preds = %824
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %844

827:                                              ; preds = %824
  %828 = load i32, ptr %463, align 4, !tbaa !33
  %829 = icmp eq i32 %828, 1
  br i1 %829, label %830, label %836

830:                                              ; preds = %827
  store i32 0, ptr %454, align 8, !tbaa !34
  store i32 1, ptr %453, align 8, !tbaa !24
  store i32 0, ptr %455, align 8, !tbaa !26
  %831 = sub i32 %766, %821
  store i32 %831, ptr %3, align 8, !tbaa !19
  %832 = load ptr, ptr %458, align 8, !tbaa !49
  %833 = zext i32 %831 to i64
  %834 = sub nsw i64 0, %833
  %835 = getelementptr inbounds i8, ptr %832, i64 %834
  store ptr %835, ptr %452, align 8, !tbaa !20
  br label %861

836:                                              ; preds = %827
  %837 = load ptr, ptr %464, align 8, !tbaa !50
  %838 = icmp eq ptr %837, null
  %839 = select i1 %838, ptr @.str.6, ptr %837
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %839) #13
  br label %844

840:                                              ; preds = %824
  %841 = icmp ne i32 %821, 0
  %842 = icmp ne i32 %820, 1
  %843 = select i1 %841, i1 %842, i1 false
  br i1 %843, label %768, label %851, !llvm.loop !51

844:                                              ; preds = %836, %826
  %845 = load i32, ptr %457, align 8, !tbaa !48
  %846 = sub i32 %766, %845
  store i32 %846, ptr %3, align 8, !tbaa !19
  %847 = load ptr, ptr %458, align 8, !tbaa !49
  %848 = zext i32 %846 to i64
  %849 = sub nsw i64 0, %848
  %850 = getelementptr inbounds i8, ptr %847, i64 %849
  store ptr %850, ptr %452, align 8, !tbaa !20
  br label %874

851:                                              ; preds = %840, %825, %818, %815, %805, %772
  %852 = phi i32 [ %808, %805 ], [ %769, %815 ], [ %769, %818 ], [ %820, %825 ], [ %773, %772 ], [ %820, %840 ]
  %853 = load i32, ptr %457, align 8, !tbaa !48
  %854 = sub i32 %766, %853
  store i32 %854, ptr %3, align 8, !tbaa !19
  %855 = load ptr, ptr %458, align 8, !tbaa !49
  %856 = zext i32 %854 to i64
  %857 = sub nsw i64 0, %856
  %858 = getelementptr inbounds i8, ptr %855, i64 %857
  store ptr %858, ptr %452, align 8, !tbaa !20
  switch i32 %852, label %874 [
    i32 1, label %859
    i32 0, label %861
  ]

859:                                              ; preds = %851
  store i32 0, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %455, align 8, !tbaa !26
  br label %861

860:                                              ; preds = %503
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %874

861:                                              ; preds = %859, %851, %830, %725, %719
  %862 = load i32, ptr %3, align 8, !tbaa !19
  br label %863

863:                                              ; preds = %861, %721
  %864 = phi i32 [ %862, %861 ], [ %724, %721 ]
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %866, label %1021

866:                                              ; preds = %863
  %867 = load i32, ptr %453, align 8, !tbaa !24
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %872, label %869

869:                                              ; preds = %866
  %870 = load i32, ptr %454, align 8, !tbaa !34
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %1021, label %872

872:                                              ; preds = %869, %866
  %873 = load i32, ptr %455, align 8, !tbaa !26
  br label %503, !llvm.loop !52

874:                                              ; preds = %860, %851, %844, %759, %685, %538, %524, %519
  %875 = load i32, ptr %3, align 8, !tbaa !19
  %876 = icmp eq i32 %875, 0
  %877 = sext i1 %876 to i32
  br label %1021

878:                                              ; preds = %498
  %879 = icmp eq i32 %496, 1
  br i1 %879, label %880, label %909

880:                                              ; preds = %878
  store i32 0, ptr %461, align 4, !tbaa !17
  %881 = tail call ptr @__errno_location() #16
  store i32 0, ptr %881, align 4, !tbaa !4
  br label %882

882:                                              ; preds = %893, %880
  %883 = phi i32 [ 0, %880 ], [ %894, %893 ]
  %884 = sub i32 %475, %883
  %885 = tail call i32 @llvm.umin.i32(i32 %884, i32 1073741824)
  %886 = load i32, ptr %462, align 4, !tbaa !46
  %887 = zext i32 %883 to i64
  %888 = getelementptr inbounds nuw i8, ptr %471, i64 %887
  %889 = zext nneg i32 %885 to i64
  %890 = tail call i64 @read(i32 noundef %886, ptr noundef %888, i64 noundef %889) #13
  %891 = trunc i64 %890 to i32
  %892 = icmp slt i32 %891, 1
  br i1 %892, label %896, label %893

893:                                              ; preds = %882
  %894 = add i32 %883, %891
  %895 = icmp ult i32 %894, %475
  br i1 %895, label %882, label %1007, !llvm.loop !47

896:                                              ; preds = %882
  %897 = icmp slt i32 %891, 0
  br i1 %897, label %898, label %908

898:                                              ; preds = %896
  %899 = load i32, ptr %881, align 4, !tbaa !4
  %900 = icmp eq i32 %899, 11
  br i1 %900, label %901, label %905

901:                                              ; preds = %898
  store i32 1, ptr %461, align 4, !tbaa !17
  %902 = icmp eq i32 %883, 0
  br i1 %902, label %903, label %1009

903:                                              ; preds = %901
  %904 = load i32, ptr %881, align 4, !tbaa !4
  br label %905

905:                                              ; preds = %903, %898
  %906 = phi i32 [ %904, %903 ], [ %899, %898 ]
  %907 = tail call ptr @strerror(i32 noundef %906) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %907) #13
  br label %1009

908:                                              ; preds = %896
  store i32 1, ptr %453, align 8, !tbaa !24
  br label %1009

909:                                              ; preds = %878
  store i32 %475, ptr %457, align 8, !tbaa !58
  store ptr %471, ptr %458, align 8, !tbaa !59
  br label %910

910:                                              ; preds = %977, %909
  %911 = phi i32 [ 0, %909 ], [ %962, %977 ]
  %912 = load i32, ptr %454, align 8, !tbaa !34
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %914, label %961

914:                                              ; preds = %910
  %915 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %915, label %989 [
    i32 0, label %916
    i32 -5, label %916
  ]

916:                                              ; preds = %914, %914
  %917 = load i32, ptr %453, align 8, !tbaa !24
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %919, label %957

919:                                              ; preds = %916
  %920 = load ptr, ptr %460, align 8, !tbaa !29
  %921 = load i32, ptr %456, align 8, !tbaa !27
  store i32 0, ptr %461, align 4, !tbaa !17
  %922 = tail call ptr @__errno_location() #16
  store i32 0, ptr %922, align 4, !tbaa !4
  br label %923

923:                                              ; preds = %934, %919
  %924 = phi i32 [ 0, %919 ], [ %935, %934 ]
  %925 = sub i32 %921, %924
  %926 = tail call i32 @llvm.umin.i32(i32 %925, i32 1073741824)
  %927 = load i32, ptr %462, align 4, !tbaa !46
  %928 = zext i32 %924 to i64
  %929 = getelementptr inbounds nuw i8, ptr %920, i64 %928
  %930 = zext nneg i32 %926 to i64
  %931 = tail call i64 @read(i32 noundef %927, ptr noundef %929, i64 noundef %930) #13
  %932 = trunc i64 %931 to i32
  %933 = icmp slt i32 %932, 1
  br i1 %933, label %937, label %934

934:                                              ; preds = %923
  %935 = add i32 %924, %932
  %936 = icmp ult i32 %935, %921
  br i1 %936, label %923, label %951, !llvm.loop !47

937:                                              ; preds = %923
  %938 = icmp slt i32 %932, 0
  br i1 %938, label %939, label %946

939:                                              ; preds = %937
  %940 = load i32, ptr %922, align 4, !tbaa !4
  %941 = icmp eq i32 %940, 11
  br i1 %941, label %942, label %947

942:                                              ; preds = %939
  store i32 1, ptr %461, align 4, !tbaa !17
  %943 = icmp eq i32 %924, 0
  br i1 %943, label %944, label %951

944:                                              ; preds = %942
  %945 = load i32, ptr %922, align 4, !tbaa !4
  br label %947

946:                                              ; preds = %937
  store i32 1, ptr %453, align 8, !tbaa !24
  br label %951

947:                                              ; preds = %944, %939
  %948 = phi i32 [ %945, %944 ], [ %940, %939 ]
  %949 = tail call ptr @strerror(i32 noundef %948) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %949) #13
  %950 = load i32, ptr %11, align 8, !tbaa !16
  br label %989

951:                                              ; preds = %946, %942, %934
  %952 = phi i32 [ %924, %942 ], [ %924, %946 ], [ %935, %934 ]
  %953 = load i32, ptr %454, align 8, !tbaa !34
  %954 = add i32 %953, %952
  store i32 %954, ptr %454, align 8, !tbaa !34
  %955 = load ptr, ptr %460, align 8, !tbaa !29
  store ptr %955, ptr %459, align 8, !tbaa !35
  %956 = icmp eq i32 %954, 0
  br i1 %956, label %957, label %961

957:                                              ; preds = %951, %916
  %958 = load i32, ptr %461, align 4, !tbaa !17
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %989

960:                                              ; preds = %957
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %989

961:                                              ; preds = %951, %910
  %962 = tail call i32 @inflate(ptr noundef nonnull %459, i32 noundef 0) #13
  %963 = load i32, ptr %457, align 8, !tbaa !48
  %964 = icmp ult i32 %963, %475
  br i1 %964, label %965, label %966

965:                                              ; preds = %961
  store i32 0, ptr %463, align 4, !tbaa !33
  br label %966

966:                                              ; preds = %965, %961
  switch i32 %962, label %977 [
    i32 -2, label %967
    i32 2, label %967
    i32 -4, label %968
    i32 -3, label %969
  ]

967:                                              ; preds = %966, %966
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %989

968:                                              ; preds = %966
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %981

969:                                              ; preds = %966
  %970 = load i32, ptr %463, align 4, !tbaa !33
  %971 = icmp eq i32 %970, 1
  br i1 %971, label %972, label %973

972:                                              ; preds = %969
  store i32 0, ptr %454, align 8, !tbaa !34
  store i32 1, ptr %453, align 8, !tbaa !24
  store i32 0, ptr %455, align 8, !tbaa !26
  br label %981

973:                                              ; preds = %969
  %974 = load ptr, ptr %464, align 8, !tbaa !50
  %975 = icmp eq ptr %974, null
  %976 = select i1 %975, ptr @.str.6, ptr %974
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %976) #13
  br label %981

977:                                              ; preds = %966
  %978 = icmp ne i32 %963, 0
  %979 = icmp ne i32 %962, 1
  %980 = select i1 %978, i1 %979, i1 false
  br i1 %980, label %910, label %989, !llvm.loop !51

981:                                              ; preds = %973, %972, %968
  %982 = phi i32 [ -3, %973 ], [ 0, %972 ], [ -4, %968 ]
  %983 = load i32, ptr %457, align 8, !tbaa !48
  %984 = sub i32 %475, %983
  %985 = load ptr, ptr %458, align 8, !tbaa !49
  %986 = zext i32 %984 to i64
  %987 = sub nsw i64 0, %986
  %988 = getelementptr inbounds i8, ptr %985, i64 %987
  store ptr %988, ptr %452, align 8, !tbaa !20
  br label %999

989:                                              ; preds = %977, %967, %960, %957, %947, %914
  %990 = phi i32 [ %950, %947 ], [ %911, %957 ], [ %911, %960 ], [ %962, %967 ], [ %915, %914 ], [ %962, %977 ]
  %991 = load i32, ptr %457, align 8, !tbaa !48
  %992 = sub i32 %475, %991
  %993 = load ptr, ptr %458, align 8, !tbaa !49
  %994 = zext i32 %992 to i64
  %995 = sub nsw i64 0, %994
  %996 = getelementptr inbounds i8, ptr %993, i64 %995
  store ptr %996, ptr %452, align 8, !tbaa !20
  %997 = icmp eq i32 %990, 1
  br i1 %997, label %998, label %999

998:                                              ; preds = %989
  store i32 0, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %455, align 8, !tbaa !26
  br label %1004

999:                                              ; preds = %989, %981
  %1000 = phi i64 [ %986, %981 ], [ %994, %989 ]
  %1001 = phi i32 [ %982, %981 ], [ %990, %989 ]
  %1002 = icmp ne i32 %1001, 0
  %1003 = sext i1 %1002 to i32
  br label %1004

1004:                                             ; preds = %999, %998
  %1005 = phi i64 [ %994, %998 ], [ %1000, %999 ]
  %1006 = phi i32 [ 0, %998 ], [ %1003, %999 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1009

1007:                                             ; preds = %893
  %1008 = zext i32 %894 to i64
  br label %1009

1009:                                             ; preds = %1007, %1004, %908, %905, %901, %478
  %1010 = phi i64 [ %1008, %1007 ], [ %887, %908 ], [ %887, %905 ], [ %887, %901 ], [ %481, %478 ], [ %1005, %1004 ]
  %1011 = phi i32 [ 0, %1007 ], [ 0, %908 ], [ -1, %905 ], [ 0, %901 ], [ %488, %478 ], [ %1006, %1004 ]
  %1012 = load i64, ptr %465, align 8, !tbaa !21
  %1013 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1012, i64 %1010), !nosanitize !22
  %1014 = extractvalue { i64, i1 } %1013, 1, !nosanitize !22
  br i1 %1014, label %1015, label %1016, !prof !23, !nosanitize !22

1015:                                             ; preds = %1009
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

1016:                                             ; preds = %1009
  %1017 = extractvalue { i64, i1 } %1013, 0, !nosanitize !22
  %1018 = add i64 %1010, %473
  %1019 = getelementptr inbounds nuw i8, ptr %471, i64 %1010
  %1020 = sub i64 %472, %1010
  store i64 %1017, ptr %465, align 8, !tbaa !21
  br label %1021

1021:                                             ; preds = %1016, %874, %869, %863, %762, %725
  %1022 = phi ptr [ %1019, %1016 ], [ %471, %874 ], [ %471, %762 ], [ %471, %725 ], [ %471, %863 ], [ %471, %869 ]
  %1023 = phi i64 [ %1020, %1016 ], [ %472, %874 ], [ %472, %762 ], [ %472, %725 ], [ %472, %863 ], [ %472, %869 ]
  %1024 = phi i64 [ %1018, %1016 ], [ %473, %874 ], [ %473, %762 ], [ %473, %725 ], [ %473, %863 ], [ %473, %869 ]
  %1025 = phi i32 [ %1011, %1016 ], [ %877, %874 ], [ 0, %762 ], [ 0, %725 ], [ 0, %863 ], [ 0, %869 ]
  %1026 = icmp eq i64 %1023, 0
  br i1 %1026, label %1035, label %1027

1027:                                             ; preds = %1021
  %1028 = icmp eq i32 %1025, 0
  br i1 %1028, label %470, label %1029, !llvm.loop !60

1029:                                             ; preds = %1027
  %1030 = load i32, ptr %453, align 8, !tbaa !24
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1035, label %1032

1032:                                             ; preds = %1029, %492
  %1033 = phi i64 [ %1024, %1029 ], [ %473, %492 ]
  %1034 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1034, align 4, !tbaa !61
  br label %1035

1035:                                             ; preds = %1032, %1029, %1021, %433, %424, %417, %331, %257, %110, %96, %91
  %1036 = phi i64 [ 0, %96 ], [ 0, %91 ], [ %1033, %1032 ], [ %1024, %1029 ], [ 0, %417 ], [ %1024, %1021 ], [ 0, %433 ], [ 0, %331 ], [ 0, %257 ], [ 0, %424 ], [ 0, %110 ]
  %1037 = udiv i64 %1036, %1
  br label %1038

1038:                                             ; preds = %1035, %24, %23, %13, %6, %4
  %1039 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %23 ], [ 0, %13 ], [ %1037, %1035 ], [ 0, %24 ]
  ret i64 %1039
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1047, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1047

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
  br i1 %14, label %1047, label %15

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
  br label %1047

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %457, label %36

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

54:                                               ; preds = %454, %36
  %55 = phi i64 [ %455, %454 ], [ %34, %36 ]
  %56 = load i32, ptr %0, align 8, !tbaa !19
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58

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
  %73 = extractvalue { i64, i1 } %72, 0, !nosanitize !22
  store i64 %73, ptr %33, align 8, !tbaa !18
  br label %454

74:                                               ; preds = %54
  %75 = load i32, ptr %39, align 8, !tbaa !24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %40, align 8, !tbaa !25
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %457, label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %451, %80
  %82 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %82, label %439 [
    i32 0, label %83
    i32 1, label %306
    i32 2, label %342
  ]

83:                                               ; preds = %81
  %84 = load i32, ptr %42, align 8, !tbaa !27
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load i32, ptr %51, align 4, !tbaa !28
  %88 = zext i32 %87 to i64
  %89 = tail call noalias ptr @malloc(i64 noundef %88) #15
  store ptr %89, ptr %47, align 8, !tbaa !29
  %90 = load i32, ptr %51, align 4, !tbaa !28
  %91 = shl i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #15
  store ptr %93, ptr %44, align 8, !tbaa !30
  %94 = icmp eq ptr %89, null
  %95 = icmp eq ptr %93, null
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  tail call void @free(ptr noundef %93) #13
  tail call void @free(ptr noundef %89) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1046

98:                                               ; preds = %86
  %99 = load i32, ptr %51, align 4, !tbaa !28
  store i32 %99, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %100 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %103) #13
  %104 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %104) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1046

105:                                              ; preds = %98, %83
  %106 = load i32, ptr %53, align 8, !tbaa !32
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %50, align 4, !tbaa !33
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108, %105
  %112 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %113 = load i32, ptr %50, align 4, !tbaa !33
  %114 = icmp ne i32 %113, -1
  %115 = zext i1 %114 to i32
  store i32 %115, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %303

116:                                              ; preds = %108
  %117 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %117, label %1046 [
    i32 0, label %118
    i32 -5, label %118
  ]

118:                                              ; preds = %116, %116
  %119 = load i32, ptr %39, align 8, !tbaa !24
  %120 = icmp eq i32 %119, 0
  %121 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %120, label %122, label %271

122:                                              ; preds = %118
  %123 = icmp eq i32 %121, 0
  %124 = load ptr, ptr %47, align 8, !tbaa !29
  %125 = ptrtoaddr ptr %124 to i64
  br i1 %123, label %231, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %46, align 8, !tbaa !35
  %128 = icmp eq ptr %127, %124
  br i1 %128, label %231, label %129

129:                                              ; preds = %126
  %130 = ptrtoaddr ptr %127 to i64
  %131 = zext i32 %121 to i64
  %132 = icmp ult i32 %121, 4
  %133 = sub i64 %125, %130
  %134 = icmp ult i64 %133, 32
  %135 = select i1 %132, i1 true, i1 %134
  br i1 %135, label %175, label %136

136:                                              ; preds = %129
  %137 = icmp ult i32 %121, 32
  br i1 %137, label %159, label %138

138:                                              ; preds = %136
  %139 = and i64 %131, 28
  %140 = and i64 %131, 4294967264
  %141 = getelementptr i8, ptr %124, i64 %140
  %142 = getelementptr i8, ptr %127, i64 %140
  %143 = trunc nuw i64 %140 to i32
  %144 = sub i32 %121, %143
  br label %145

145:                                              ; preds = %145, %138
  %146 = phi i64 [ 0, %138 ], [ %153, %145 ]
  %147 = getelementptr i8, ptr %124, i64 %146
  %148 = getelementptr i8, ptr %127, i64 %146
  %149 = getelementptr i8, ptr %148, i64 16
  %150 = load <16 x i8>, ptr %148, align 1, !tbaa !36
  %151 = load <16 x i8>, ptr %149, align 1, !tbaa !36
  %152 = getelementptr i8, ptr %147, i64 16
  store <16 x i8> %150, ptr %147, align 1, !tbaa !36
  store <16 x i8> %151, ptr %152, align 1, !tbaa !36
  %153 = add nuw i64 %146, 32
  %154 = icmp eq i64 %153, %140
  br i1 %154, label %155, label %145, !llvm.loop !70

155:                                              ; preds = %145
  %156 = icmp eq i64 %140, %131
  br i1 %156, label %228, label %157

157:                                              ; preds = %155
  %158 = icmp eq i64 %139, 0
  br i1 %158, label %175, label %159, !prof !41

159:                                              ; preds = %157, %136
  %160 = phi i64 [ %140, %157 ], [ 0, %136 ]
  %161 = and i64 %131, 4294967292
  %162 = getelementptr i8, ptr %124, i64 %161
  %163 = getelementptr i8, ptr %127, i64 %161
  %164 = trunc nuw i64 %161 to i32
  %165 = sub i32 %121, %164
  br label %166

166:                                              ; preds = %166, %159
  %167 = phi i64 [ %160, %159 ], [ %171, %166 ]
  %168 = getelementptr i8, ptr %124, i64 %167
  %169 = getelementptr i8, ptr %127, i64 %167
  %170 = load <4 x i8>, ptr %169, align 1, !tbaa !36
  store <4 x i8> %170, ptr %168, align 1, !tbaa !36
  %171 = add nuw i64 %167, 4
  %172 = icmp eq i64 %171, %161
  br i1 %172, label %173, label %166, !llvm.loop !71

173:                                              ; preds = %166
  %174 = icmp eq i64 %161, %131
  br i1 %174, label %228, label %175

175:                                              ; preds = %173, %157, %129
  %176 = phi ptr [ %124, %129 ], [ %141, %157 ], [ %162, %173 ]
  %177 = phi ptr [ %127, %129 ], [ %142, %157 ], [ %163, %173 ]
  %178 = phi i32 [ %121, %129 ], [ %144, %157 ], [ %165, %173 ]
  %179 = add i32 %178, -1
  %180 = and i32 %178, 7
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %182, %175
  %183 = phi ptr [ %189, %182 ], [ %176, %175 ]
  %184 = phi ptr [ %187, %182 ], [ %177, %175 ]
  %185 = phi i32 [ %190, %182 ], [ %178, %175 ]
  %186 = phi i32 [ %191, %182 ], [ 0, %175 ]
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 1
  %188 = load i8, ptr %184, align 1, !tbaa !36
  %189 = getelementptr inbounds nuw i8, ptr %183, i64 1
  store i8 %188, ptr %183, align 1, !tbaa !36
  %190 = add i32 %185, -1
  %191 = add i32 %186, 1
  %192 = icmp eq i32 %191, %180
  br i1 %192, label %193, label %182, !llvm.loop !72

193:                                              ; preds = %182, %175
  %194 = phi ptr [ %176, %175 ], [ %189, %182 ]
  %195 = phi ptr [ %177, %175 ], [ %187, %182 ]
  %196 = phi i32 [ %178, %175 ], [ %190, %182 ]
  %197 = icmp ult i32 %179, 7
  br i1 %197, label %228, label %198

198:                                              ; preds = %198, %193
  %199 = phi ptr [ %225, %198 ], [ %194, %193 ]
  %200 = phi ptr [ %223, %198 ], [ %195, %193 ]
  %201 = phi i32 [ %226, %198 ], [ %196, %193 ]
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 1
  %203 = load i8, ptr %200, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %199, i64 1
  store i8 %203, ptr %199, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %200, i64 2
  %206 = load i8, ptr %202, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %199, i64 2
  store i8 %206, ptr %204, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %200, i64 3
  %209 = load i8, ptr %205, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %199, i64 3
  store i8 %209, ptr %207, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %212 = load i8, ptr %208, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %199, i64 4
  store i8 %212, ptr %210, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %200, i64 5
  %215 = load i8, ptr %211, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %199, i64 5
  store i8 %215, ptr %213, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %200, i64 6
  %218 = load i8, ptr %214, align 1, !tbaa !36
  %219 = getelementptr inbounds nuw i8, ptr %199, i64 6
  store i8 %218, ptr %216, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %200, i64 7
  %221 = load i8, ptr %217, align 1, !tbaa !36
  %222 = getelementptr inbounds nuw i8, ptr %199, i64 7
  store i8 %221, ptr %219, align 1, !tbaa !36
  %223 = getelementptr inbounds nuw i8, ptr %200, i64 8
  %224 = load i8, ptr %220, align 1, !tbaa !36
  %225 = getelementptr inbounds nuw i8, ptr %199, i64 8
  store i8 %224, ptr %222, align 1, !tbaa !36
  %226 = add i32 %201, -8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %198, !llvm.loop !73

228:                                              ; preds = %198, %193, %173, %155
  %229 = load i32, ptr %40, align 8, !tbaa !34
  %230 = load ptr, ptr %47, align 8, !tbaa !29
  br label %231

231:                                              ; preds = %228, %126, %122
  %232 = phi ptr [ %230, %228 ], [ %124, %126 ], [ %124, %122 ]
  %233 = phi i32 [ %229, %228 ], [ %121, %126 ], [ 0, %122 ]
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds nuw i8, ptr %232, i64 %234
  %236 = load i32, ptr %42, align 8, !tbaa !27
  %237 = sub i32 %236, %233
  store i32 0, ptr %48, align 4, !tbaa !17
  %238 = tail call ptr @__errno_location() #16
  store i32 0, ptr %238, align 4, !tbaa !4
  br label %239

239:                                              ; preds = %250, %231
  %240 = phi i32 [ 0, %231 ], [ %251, %250 ]
  %241 = sub i32 %237, %240
  %242 = tail call i32 @llvm.umin.i32(i32 %241, i32 1073741824)
  %243 = load i32, ptr %49, align 4, !tbaa !46
  %244 = zext i32 %240 to i64
  %245 = getelementptr inbounds nuw i8, ptr %235, i64 %244
  %246 = zext nneg i32 %242 to i64
  %247 = tail call i64 @read(i32 noundef %243, ptr noundef %245, i64 noundef %246) #13
  %248 = trunc i64 %247 to i32
  %249 = icmp slt i32 %248, 1
  br i1 %249, label %253, label %250

250:                                              ; preds = %239
  %251 = add i32 %240, %248
  %252 = icmp ult i32 %251, %237
  br i1 %252, label %239, label %266, !llvm.loop !47

253:                                              ; preds = %239
  %254 = icmp slt i32 %248, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %253
  %256 = load i32, ptr %238, align 4, !tbaa !4
  %257 = icmp eq i32 %256, 11
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  store i32 1, ptr %48, align 4, !tbaa !17
  %259 = icmp eq i32 %240, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %258
  %261 = load i32, ptr %238, align 4, !tbaa !4
  br label %263

262:                                              ; preds = %253
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %266

263:                                              ; preds = %260, %255
  %264 = phi i32 [ %261, %260 ], [ %256, %255 ]
  %265 = tail call ptr @strerror(i32 noundef %264) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %265) #13
  br label %1046

266:                                              ; preds = %262, %258, %250
  %267 = phi i32 [ %240, %258 ], [ %240, %262 ], [ %251, %250 ]
  %268 = load i32, ptr %40, align 8, !tbaa !34
  %269 = add i32 %268, %267
  store i32 %269, ptr %40, align 8, !tbaa !34
  %270 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %270, ptr %46, align 8, !tbaa !35
  br label %271

271:                                              ; preds = %266, %118
  %272 = phi i32 [ %269, %266 ], [ %121, %118 ]
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %303, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %48, align 4, !tbaa !17
  %276 = icmp ne i32 %275, 0
  %277 = icmp ult i32 %272, 4
  %278 = and i1 %277, %276
  br i1 %278, label %303, label %279

279:                                              ; preds = %274
  %280 = icmp ugt i32 %272, 3
  %281 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %280, label %282, label %299

282:                                              ; preds = %279
  %283 = load i8, ptr %281, align 1, !tbaa !36
  %284 = icmp eq i8 %283, 31
  br i1 %284, label %285, label %299

285:                                              ; preds = %282
  %286 = getelementptr inbounds nuw i8, ptr %281, i64 1
  %287 = load i8, ptr %286, align 1, !tbaa !36
  %288 = icmp eq i8 %287, -117
  br i1 %288, label %289, label %299

289:                                              ; preds = %285
  %290 = getelementptr inbounds nuw i8, ptr %281, i64 2
  %291 = load i8, ptr %290, align 1, !tbaa !36
  %292 = icmp eq i8 %291, 8
  br i1 %292, label %293, label %299

293:                                              ; preds = %289
  %294 = getelementptr inbounds nuw i8, ptr %281, i64 3
  %295 = load i8, ptr %294, align 1, !tbaa !36
  %296 = icmp ult i8 %295, 32
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %440

299:                                              ; preds = %293, %289, %285, %282, %279
  %300 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %300, ptr %37, align 8, !tbaa !20
  %301 = zext i32 %272 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %300, ptr align 1 %281, i64 %301, i1 false)
  %302 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %302, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %442

303:                                              ; preds = %274, %271, %111
  %304 = load i32, ptr %41, align 8, !tbaa !26
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %452, label %440

306:                                              ; preds = %81
  %307 = load ptr, ptr %44, align 8, !tbaa !30
  %308 = load i32, ptr %42, align 8, !tbaa !27
  %309 = shl i32 %308, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %310 = tail call ptr @__errno_location() #16
  store i32 0, ptr %310, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %311

311:                                              ; preds = %322, %306
  %312 = phi i32 [ %324, %322 ], [ 0, %306 ]
  %313 = sub i32 %309, %312
  %314 = tail call i32 @llvm.umin.i32(i32 %313, i32 1073741824)
  %315 = load i32, ptr %49, align 4, !tbaa !46
  %316 = zext i32 %312 to i64
  %317 = getelementptr inbounds nuw i8, ptr %307, i64 %316
  %318 = zext nneg i32 %314 to i64
  %319 = tail call i64 @read(i32 noundef %315, ptr noundef %317, i64 noundef %318) #13
  %320 = trunc i64 %319 to i32
  %321 = icmp slt i32 %320, 1
  br i1 %321, label %326, label %322

322:                                              ; preds = %311
  %323 = load i32, ptr %0, align 4, !tbaa !4
  %324 = add i32 %323, %320
  store i32 %324, ptr %0, align 4, !tbaa !4
  %325 = icmp ult i32 %324, %309
  br i1 %325, label %311, label %340, !llvm.loop !47

326:                                              ; preds = %311
  %327 = icmp slt i32 %320, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %326
  %329 = load i32, ptr %310, align 4, !tbaa !4
  %330 = icmp eq i32 %329, 11
  br i1 %330, label %331, label %337

331:                                              ; preds = %328
  store i32 1, ptr %48, align 4, !tbaa !17
  %332 = load i32, ptr %0, align 4, !tbaa !4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %331
  %335 = load i32, ptr %310, align 4, !tbaa !4
  br label %337

336:                                              ; preds = %326
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %340

337:                                              ; preds = %334, %328
  %338 = phi i32 [ %335, %334 ], [ %329, %328 ]
  %339 = tail call ptr @strerror(i32 noundef %338) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %339) #13
  br label %1046

340:                                              ; preds = %336, %331, %322
  %341 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %341, ptr %37, align 8, !tbaa !20
  br label %452

342:                                              ; preds = %81
  %343 = load i32, ptr %42, align 8, !tbaa !27
  %344 = shl i32 %343, 1
  store i32 %344, ptr %43, align 8, !tbaa !48
  %345 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %345, ptr %45, align 8, !tbaa !49
  br label %346

346:                                              ; preds = %419, %342
  %347 = phi i32 [ 0, %342 ], [ %398, %419 ]
  %348 = load i32, ptr %40, align 8, !tbaa !34
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %397

350:                                              ; preds = %346
  %351 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %351, label %430 [
    i32 0, label %352
    i32 -5, label %352
  ]

352:                                              ; preds = %350, %350
  %353 = load i32, ptr %39, align 8, !tbaa !24
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %393

355:                                              ; preds = %352
  %356 = load ptr, ptr %47, align 8, !tbaa !29
  %357 = load i32, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %48, align 4, !tbaa !17
  %358 = tail call ptr @__errno_location() #16
  store i32 0, ptr %358, align 4, !tbaa !4
  br label %359

359:                                              ; preds = %370, %355
  %360 = phi i32 [ 0, %355 ], [ %371, %370 ]
  %361 = sub i32 %357, %360
  %362 = tail call i32 @llvm.umin.i32(i32 %361, i32 1073741824)
  %363 = load i32, ptr %49, align 4, !tbaa !46
  %364 = zext i32 %360 to i64
  %365 = getelementptr inbounds nuw i8, ptr %356, i64 %364
  %366 = zext nneg i32 %362 to i64
  %367 = tail call i64 @read(i32 noundef %363, ptr noundef %365, i64 noundef %366) #13
  %368 = trunc i64 %367 to i32
  %369 = icmp slt i32 %368, 1
  br i1 %369, label %373, label %370

370:                                              ; preds = %359
  %371 = add i32 %360, %368
  %372 = icmp ult i32 %371, %357
  br i1 %372, label %359, label %387, !llvm.loop !47

373:                                              ; preds = %359
  %374 = icmp slt i32 %368, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %373
  %376 = load i32, ptr %358, align 4, !tbaa !4
  %377 = icmp eq i32 %376, 11
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  store i32 1, ptr %48, align 4, !tbaa !17
  %379 = icmp eq i32 %360, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %378
  %381 = load i32, ptr %358, align 4, !tbaa !4
  br label %383

382:                                              ; preds = %373
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %387

383:                                              ; preds = %380, %375
  %384 = phi i32 [ %381, %380 ], [ %376, %375 ]
  %385 = tail call ptr @strerror(i32 noundef %384) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %385) #13
  %386 = load i32, ptr %9, align 8, !tbaa !16
  br label %430

387:                                              ; preds = %382, %378, %370
  %388 = phi i32 [ %360, %378 ], [ %360, %382 ], [ %371, %370 ]
  %389 = load i32, ptr %40, align 8, !tbaa !34
  %390 = add i32 %389, %388
  store i32 %390, ptr %40, align 8, !tbaa !34
  %391 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %391, ptr %46, align 8, !tbaa !35
  %392 = icmp eq i32 %390, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %387, %352
  %394 = load i32, ptr %48, align 4, !tbaa !17
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %430

396:                                              ; preds = %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %430

397:                                              ; preds = %387, %346
  %398 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %399 = load i32, ptr %43, align 8, !tbaa !48
  %400 = icmp ult i32 %399, %344
  br i1 %400, label %401, label %402

401:                                              ; preds = %397
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %402

402:                                              ; preds = %401, %397
  switch i32 %398, label %419 [
    i32 -2, label %403
    i32 2, label %403
    i32 -4, label %404
    i32 -3, label %405
  ]

403:                                              ; preds = %402, %402
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %430

404:                                              ; preds = %402
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %423

405:                                              ; preds = %402
  %406 = load i32, ptr %50, align 4, !tbaa !33
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %408, label %414

408:                                              ; preds = %405
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  %409 = sub i32 %344, %399
  store i32 %409, ptr %0, align 8, !tbaa !19
  %410 = load ptr, ptr %45, align 8, !tbaa !49
  %411 = zext i32 %409 to i64
  %412 = sub nsw i64 0, %411
  %413 = getelementptr inbounds i8, ptr %410, i64 %412
  store ptr %413, ptr %37, align 8, !tbaa !20
  br label %440

414:                                              ; preds = %405
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %416 = load ptr, ptr %415, align 8, !tbaa !50
  %417 = icmp eq ptr %416, null
  %418 = select i1 %417, ptr @.str.6, ptr %416
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %418) #13
  br label %423

419:                                              ; preds = %402
  %420 = icmp ne i32 %399, 0
  %421 = icmp ne i32 %398, 1
  %422 = select i1 %420, i1 %421, i1 false
  br i1 %422, label %346, label %430, !llvm.loop !51

423:                                              ; preds = %414, %404
  %424 = load i32, ptr %43, align 8, !tbaa !48
  %425 = sub i32 %344, %424
  store i32 %425, ptr %0, align 8, !tbaa !19
  %426 = load ptr, ptr %45, align 8, !tbaa !49
  %427 = zext i32 %425 to i64
  %428 = sub nsw i64 0, %427
  %429 = getelementptr inbounds i8, ptr %426, i64 %428
  store ptr %429, ptr %37, align 8, !tbaa !20
  br label %1046

430:                                              ; preds = %419, %403, %396, %393, %383, %350
  %431 = phi i32 [ %386, %383 ], [ %347, %393 ], [ %347, %396 ], [ %398, %403 ], [ %398, %419 ], [ %351, %350 ]
  %432 = load i32, ptr %43, align 8, !tbaa !48
  %433 = sub i32 %344, %432
  store i32 %433, ptr %0, align 8, !tbaa !19
  %434 = load ptr, ptr %45, align 8, !tbaa !49
  %435 = zext i32 %433 to i64
  %436 = sub nsw i64 0, %435
  %437 = getelementptr inbounds i8, ptr %434, i64 %436
  store ptr %437, ptr %37, align 8, !tbaa !20
  switch i32 %431, label %1046 [
    i32 1, label %438
    i32 0, label %440
  ]

438:                                              ; preds = %430
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %440

439:                                              ; preds = %81
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1046

440:                                              ; preds = %438, %430, %408, %303, %297
  %441 = load i32, ptr %0, align 8, !tbaa !19
  br label %442

442:                                              ; preds = %440, %299
  %443 = phi i32 [ %441, %440 ], [ %302, %299 ]
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %452

445:                                              ; preds = %442
  %446 = load i32, ptr %39, align 8, !tbaa !24
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %451, label %448

448:                                              ; preds = %445
  %449 = load i32, ptr %40, align 8, !tbaa !34
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %452, label %451

451:                                              ; preds = %448, %445
  br label %81, !llvm.loop !52

452:                                              ; preds = %448, %442, %340, %303
  %453 = load i64, ptr %33, align 8, !tbaa !18
  br label %454

454:                                              ; preds = %452, %70
  %455 = phi i64 [ %453, %452 ], [ %73, %70 ]
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %457, label %54, !llvm.loop !53

457:                                              ; preds = %454, %77, %32
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %476

476:                                              ; preds = %1028, %457
  %477 = phi ptr [ %2, %457 ], [ %1032, %1028 ]
  %478 = phi i64 [ 1, %457 ], [ %1031, %1028 ]
  %479 = phi i64 [ 0, %457 ], [ %1030, %1028 ]
  %480 = call i64 @llvm.umin.i64(i64 %478, i64 4294967295)
  %481 = trunc nuw i64 %480 to i32
  %482 = load i32, ptr %0, align 8, !tbaa !19
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %495, label %484

484:                                              ; preds = %476
  %485 = call i32 @llvm.umin.i32(i32 %482, i32 %481)
  %486 = load ptr, ptr %458, align 8, !tbaa !20
  %487 = zext i32 %485 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %477, ptr align 1 %486, i64 %487, i1 false)
  %488 = load ptr, ptr %458, align 8, !tbaa !20
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 %487
  store ptr %489, ptr %458, align 8, !tbaa !20
  %490 = load i32, ptr %0, align 8, !tbaa !19
  %491 = sub i32 %490, %485
  store i32 %491, ptr %0, align 8, !tbaa !19
  %492 = load i32, ptr %9, align 8, !tbaa !16
  %493 = icmp ne i32 %492, 0
  %494 = sext i1 %493 to i32
  br label %1015

495:                                              ; preds = %476
  %496 = load i32, ptr %459, align 8, !tbaa !24
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %501, label %498

498:                                              ; preds = %495
  %499 = load i32, ptr %460, align 8, !tbaa !25
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %1037, label %501

501:                                              ; preds = %498, %495
  %502 = load i32, ptr %461, align 8, !tbaa !26
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %508, label %504

504:                                              ; preds = %501
  %505 = load i32, ptr %462, align 8, !tbaa !27
  %506 = shl i32 %505, 1
  %507 = icmp ugt i32 %506, %481
  br i1 %507, label %508, label %884

508:                                              ; preds = %504, %501
  br label %509

509:                                              ; preds = %878, %508
  %510 = phi i32 [ %879, %878 ], [ %502, %508 ]
  switch i32 %510, label %866 [
    i32 0, label %511
    i32 1, label %734
    i32 2, label %770
  ]

511:                                              ; preds = %509
  %512 = load i32, ptr %462, align 8, !tbaa !27
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %533

514:                                              ; preds = %511
  %515 = load i32, ptr %473, align 4, !tbaa !28
  %516 = zext i32 %515 to i64
  %517 = call noalias ptr @malloc(i64 noundef %516) #15
  store ptr %517, ptr %466, align 8, !tbaa !29
  %518 = load i32, ptr %473, align 4, !tbaa !28
  %519 = shl i32 %518, 1
  %520 = zext i32 %519 to i64
  %521 = call noalias ptr @malloc(i64 noundef %520) #15
  store ptr %521, ptr %472, align 8, !tbaa !30
  %522 = icmp eq ptr %517, null
  %523 = icmp eq ptr %521, null
  %524 = or i1 %522, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %514
  call void @free(ptr noundef %521) #13
  call void @free(ptr noundef %517) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %880

526:                                              ; preds = %514
  %527 = load i32, ptr %473, align 4, !tbaa !28
  store i32 %527, ptr %462, align 8, !tbaa !27
  store i32 0, ptr %460, align 8, !tbaa !25
  store ptr null, ptr %465, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %474, i8 0, i64 24, i1 false)
  %528 = call i32 @inflateInit2_(ptr noundef nonnull %465, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %533, label %530

530:                                              ; preds = %526
  %531 = load ptr, ptr %472, align 8, !tbaa !30
  call void @free(ptr noundef %531) #13
  %532 = load ptr, ptr %466, align 8, !tbaa !29
  call void @free(ptr noundef %532) #13
  store i32 0, ptr %462, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %880

533:                                              ; preds = %526, %511
  %534 = load i32, ptr %475, align 8, !tbaa !32
  %535 = icmp eq i32 %534, -1
  br i1 %535, label %539, label %536

536:                                              ; preds = %533
  %537 = load i32, ptr %469, align 4, !tbaa !33
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %544

539:                                              ; preds = %536, %533
  %540 = call i32 @inflateReset(ptr noundef nonnull %465) #13
  store i32 2, ptr %461, align 8, !tbaa !26
  %541 = load i32, ptr %469, align 4, !tbaa !33
  %542 = icmp ne i32 %541, -1
  %543 = zext i1 %542 to i32
  store i32 %543, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %475, align 8, !tbaa !32
  br label %731

544:                                              ; preds = %536
  %545 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %545, label %880 [
    i32 0, label %546
    i32 -5, label %546
  ]

546:                                              ; preds = %544, %544
  %547 = load i32, ptr %459, align 8, !tbaa !24
  %548 = icmp eq i32 %547, 0
  %549 = load i32, ptr %460, align 8, !tbaa !34
  br i1 %548, label %550, label %699

550:                                              ; preds = %546
  %551 = icmp eq i32 %549, 0
  %552 = load ptr, ptr %466, align 8, !tbaa !29
  %553 = ptrtoaddr ptr %552 to i64
  br i1 %551, label %659, label %554

554:                                              ; preds = %550
  %555 = load ptr, ptr %465, align 8, !tbaa !35
  %556 = icmp eq ptr %555, %552
  br i1 %556, label %659, label %557

557:                                              ; preds = %554
  %558 = ptrtoaddr ptr %555 to i64
  %559 = zext i32 %549 to i64
  %560 = icmp ult i32 %549, 4
  %561 = sub i64 %553, %558
  %562 = icmp ult i64 %561, 32
  %563 = select i1 %560, i1 true, i1 %562
  br i1 %563, label %603, label %564

564:                                              ; preds = %557
  %565 = icmp ult i32 %549, 32
  br i1 %565, label %587, label %566

566:                                              ; preds = %564
  %567 = and i64 %559, 28
  %568 = and i64 %559, 4294967264
  %569 = getelementptr i8, ptr %552, i64 %568
  %570 = getelementptr i8, ptr %555, i64 %568
  %571 = trunc nuw i64 %568 to i32
  %572 = sub i32 %549, %571
  br label %573

573:                                              ; preds = %573, %566
  %574 = phi i64 [ 0, %566 ], [ %581, %573 ]
  %575 = getelementptr i8, ptr %552, i64 %574
  %576 = getelementptr i8, ptr %555, i64 %574
  %577 = getelementptr i8, ptr %576, i64 16
  %578 = load <16 x i8>, ptr %576, align 1, !tbaa !36
  %579 = load <16 x i8>, ptr %577, align 1, !tbaa !36
  %580 = getelementptr i8, ptr %575, i64 16
  store <16 x i8> %578, ptr %575, align 1, !tbaa !36
  store <16 x i8> %579, ptr %580, align 1, !tbaa !36
  %581 = add nuw i64 %574, 32
  %582 = icmp eq i64 %581, %568
  br i1 %582, label %583, label %573, !llvm.loop !74

583:                                              ; preds = %573
  %584 = icmp eq i64 %568, %559
  br i1 %584, label %656, label %585

585:                                              ; preds = %583
  %586 = icmp eq i64 %567, 0
  br i1 %586, label %603, label %587, !prof !41

587:                                              ; preds = %585, %564
  %588 = phi i64 [ %568, %585 ], [ 0, %564 ]
  %589 = and i64 %559, 4294967292
  %590 = getelementptr i8, ptr %552, i64 %589
  %591 = getelementptr i8, ptr %555, i64 %589
  %592 = trunc nuw i64 %589 to i32
  %593 = sub i32 %549, %592
  br label %594

594:                                              ; preds = %594, %587
  %595 = phi i64 [ %588, %587 ], [ %599, %594 ]
  %596 = getelementptr i8, ptr %552, i64 %595
  %597 = getelementptr i8, ptr %555, i64 %595
  %598 = load <4 x i8>, ptr %597, align 1, !tbaa !36
  store <4 x i8> %598, ptr %596, align 1, !tbaa !36
  %599 = add nuw i64 %595, 4
  %600 = icmp eq i64 %599, %589
  br i1 %600, label %601, label %594, !llvm.loop !75

601:                                              ; preds = %594
  %602 = icmp eq i64 %589, %559
  br i1 %602, label %656, label %603

603:                                              ; preds = %601, %585, %557
  %604 = phi ptr [ %552, %557 ], [ %569, %585 ], [ %590, %601 ]
  %605 = phi ptr [ %555, %557 ], [ %570, %585 ], [ %591, %601 ]
  %606 = phi i32 [ %549, %557 ], [ %572, %585 ], [ %593, %601 ]
  %607 = add i32 %606, -1
  %608 = and i32 %606, 7
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %621, label %610

610:                                              ; preds = %610, %603
  %611 = phi ptr [ %617, %610 ], [ %604, %603 ]
  %612 = phi ptr [ %615, %610 ], [ %605, %603 ]
  %613 = phi i32 [ %618, %610 ], [ %606, %603 ]
  %614 = phi i32 [ %619, %610 ], [ 0, %603 ]
  %615 = getelementptr inbounds nuw i8, ptr %612, i64 1
  %616 = load i8, ptr %612, align 1, !tbaa !36
  %617 = getelementptr inbounds nuw i8, ptr %611, i64 1
  store i8 %616, ptr %611, align 1, !tbaa !36
  %618 = add i32 %613, -1
  %619 = add i32 %614, 1
  %620 = icmp eq i32 %619, %608
  br i1 %620, label %621, label %610, !llvm.loop !76

621:                                              ; preds = %610, %603
  %622 = phi ptr [ %604, %603 ], [ %617, %610 ]
  %623 = phi ptr [ %605, %603 ], [ %615, %610 ]
  %624 = phi i32 [ %606, %603 ], [ %618, %610 ]
  %625 = icmp ult i32 %607, 7
  br i1 %625, label %656, label %626

626:                                              ; preds = %626, %621
  %627 = phi ptr [ %653, %626 ], [ %622, %621 ]
  %628 = phi ptr [ %651, %626 ], [ %623, %621 ]
  %629 = phi i32 [ %654, %626 ], [ %624, %621 ]
  %630 = getelementptr inbounds nuw i8, ptr %628, i64 1
  %631 = load i8, ptr %628, align 1, !tbaa !36
  %632 = getelementptr inbounds nuw i8, ptr %627, i64 1
  store i8 %631, ptr %627, align 1, !tbaa !36
  %633 = getelementptr inbounds nuw i8, ptr %628, i64 2
  %634 = load i8, ptr %630, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %627, i64 2
  store i8 %634, ptr %632, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %628, i64 3
  %637 = load i8, ptr %633, align 1, !tbaa !36
  %638 = getelementptr inbounds nuw i8, ptr %627, i64 3
  store i8 %637, ptr %635, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %628, i64 4
  %640 = load i8, ptr %636, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %627, i64 4
  store i8 %640, ptr %638, align 1, !tbaa !36
  %642 = getelementptr inbounds nuw i8, ptr %628, i64 5
  %643 = load i8, ptr %639, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %627, i64 5
  store i8 %643, ptr %641, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %628, i64 6
  %646 = load i8, ptr %642, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %627, i64 6
  store i8 %646, ptr %644, align 1, !tbaa !36
  %648 = getelementptr inbounds nuw i8, ptr %628, i64 7
  %649 = load i8, ptr %645, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %627, i64 7
  store i8 %649, ptr %647, align 1, !tbaa !36
  %651 = getelementptr inbounds nuw i8, ptr %628, i64 8
  %652 = load i8, ptr %648, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %627, i64 8
  store i8 %652, ptr %650, align 1, !tbaa !36
  %654 = add i32 %629, -8
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %656, label %626, !llvm.loop !77

656:                                              ; preds = %626, %621, %601, %583
  %657 = load i32, ptr %460, align 8, !tbaa !34
  %658 = load ptr, ptr %466, align 8, !tbaa !29
  br label %659

659:                                              ; preds = %656, %554, %550
  %660 = phi ptr [ %658, %656 ], [ %552, %554 ], [ %552, %550 ]
  %661 = phi i32 [ %657, %656 ], [ %549, %554 ], [ 0, %550 ]
  %662 = zext i32 %661 to i64
  %663 = getelementptr inbounds nuw i8, ptr %660, i64 %662
  %664 = load i32, ptr %462, align 8, !tbaa !27
  %665 = sub i32 %664, %661
  store i32 0, ptr %467, align 4, !tbaa !17
  %666 = tail call ptr @__errno_location() #16
  store i32 0, ptr %666, align 4, !tbaa !4
  br label %667

667:                                              ; preds = %678, %659
  %668 = phi i32 [ 0, %659 ], [ %679, %678 ]
  %669 = sub i32 %665, %668
  %670 = call i32 @llvm.umin.i32(i32 %669, i32 1073741824)
  %671 = load i32, ptr %468, align 4, !tbaa !46
  %672 = zext i32 %668 to i64
  %673 = getelementptr inbounds nuw i8, ptr %663, i64 %672
  %674 = zext nneg i32 %670 to i64
  %675 = call i64 @read(i32 noundef %671, ptr noundef %673, i64 noundef %674) #13
  %676 = trunc i64 %675 to i32
  %677 = icmp slt i32 %676, 1
  br i1 %677, label %681, label %678

678:                                              ; preds = %667
  %679 = add i32 %668, %676
  %680 = icmp ult i32 %679, %665
  br i1 %680, label %667, label %694, !llvm.loop !47

681:                                              ; preds = %667
  %682 = icmp slt i32 %676, 0
  br i1 %682, label %683, label %690

683:                                              ; preds = %681
  %684 = load i32, ptr %666, align 4, !tbaa !4
  %685 = icmp eq i32 %684, 11
  br i1 %685, label %686, label %691

686:                                              ; preds = %683
  store i32 1, ptr %467, align 4, !tbaa !17
  %687 = icmp eq i32 %668, 0
  br i1 %687, label %688, label %694

688:                                              ; preds = %686
  %689 = load i32, ptr %666, align 4, !tbaa !4
  br label %691

690:                                              ; preds = %681
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %694

691:                                              ; preds = %688, %683
  %692 = phi i32 [ %689, %688 ], [ %684, %683 ]
  %693 = call ptr @strerror(i32 noundef %692) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %693) #13
  br label %880

694:                                              ; preds = %690, %686, %678
  %695 = phi i32 [ %668, %686 ], [ %668, %690 ], [ %679, %678 ]
  %696 = load i32, ptr %460, align 8, !tbaa !34
  %697 = add i32 %696, %695
  store i32 %697, ptr %460, align 8, !tbaa !34
  %698 = load ptr, ptr %466, align 8, !tbaa !29
  store ptr %698, ptr %465, align 8, !tbaa !35
  br label %699

699:                                              ; preds = %694, %546
  %700 = phi i32 [ %697, %694 ], [ %549, %546 ]
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %731, label %702

702:                                              ; preds = %699
  %703 = load i32, ptr %467, align 4, !tbaa !17
  %704 = icmp ne i32 %703, 0
  %705 = icmp ult i32 %700, 4
  %706 = and i1 %705, %704
  br i1 %706, label %731, label %707

707:                                              ; preds = %702
  %708 = icmp ugt i32 %700, 3
  %709 = load ptr, ptr %465, align 8, !tbaa !35
  br i1 %708, label %710, label %727

710:                                              ; preds = %707
  %711 = load i8, ptr %709, align 1, !tbaa !36
  %712 = icmp eq i8 %711, 31
  br i1 %712, label %713, label %727

713:                                              ; preds = %710
  %714 = getelementptr inbounds nuw i8, ptr %709, i64 1
  %715 = load i8, ptr %714, align 1, !tbaa !36
  %716 = icmp eq i8 %715, -117
  br i1 %716, label %717, label %727

717:                                              ; preds = %713
  %718 = getelementptr inbounds nuw i8, ptr %709, i64 2
  %719 = load i8, ptr %718, align 1, !tbaa !36
  %720 = icmp eq i8 %719, 8
  br i1 %720, label %721, label %727

721:                                              ; preds = %717
  %722 = getelementptr inbounds nuw i8, ptr %709, i64 3
  %723 = load i8, ptr %722, align 1, !tbaa !36
  %724 = icmp ult i8 %723, 32
  br i1 %724, label %725, label %727

725:                                              ; preds = %721
  %726 = call i32 @inflateReset(ptr noundef nonnull %465) #13
  store i32 2, ptr %461, align 8, !tbaa !26
  store i32 1, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %475, align 8, !tbaa !32
  br label %867

727:                                              ; preds = %721, %717, %713, %710, %707
  %728 = load ptr, ptr %472, align 8, !tbaa !30
  store ptr %728, ptr %458, align 8, !tbaa !20
  %729 = zext i32 %700 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %728, ptr align 1 %709, i64 %729, i1 false)
  %730 = load i32, ptr %460, align 8, !tbaa !34
  store i32 %730, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %460, align 8, !tbaa !34
  store i32 1, ptr %461, align 8, !tbaa !26
  br label %869

731:                                              ; preds = %702, %699, %539
  %732 = load i32, ptr %461, align 8, !tbaa !26
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %1028, label %867

734:                                              ; preds = %509
  %735 = load ptr, ptr %472, align 8, !tbaa !30
  %736 = load i32, ptr %462, align 8, !tbaa !27
  %737 = shl i32 %736, 1
  store i32 0, ptr %467, align 4, !tbaa !17
  %738 = tail call ptr @__errno_location() #16
  store i32 0, ptr %738, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %739

739:                                              ; preds = %750, %734
  %740 = phi i32 [ %752, %750 ], [ 0, %734 ]
  %741 = sub i32 %737, %740
  %742 = call i32 @llvm.umin.i32(i32 %741, i32 1073741824)
  %743 = load i32, ptr %468, align 4, !tbaa !46
  %744 = zext i32 %740 to i64
  %745 = getelementptr inbounds nuw i8, ptr %735, i64 %744
  %746 = zext nneg i32 %742 to i64
  %747 = call i64 @read(i32 noundef %743, ptr noundef %745, i64 noundef %746) #13
  %748 = trunc i64 %747 to i32
  %749 = icmp slt i32 %748, 1
  br i1 %749, label %754, label %750

750:                                              ; preds = %739
  %751 = load i32, ptr %0, align 4, !tbaa !4
  %752 = add i32 %751, %748
  store i32 %752, ptr %0, align 4, !tbaa !4
  %753 = icmp ult i32 %752, %737
  br i1 %753, label %739, label %768, !llvm.loop !47

754:                                              ; preds = %739
  %755 = icmp slt i32 %748, 0
  br i1 %755, label %756, label %764

756:                                              ; preds = %754
  %757 = load i32, ptr %738, align 4, !tbaa !4
  %758 = icmp eq i32 %757, 11
  br i1 %758, label %759, label %765

759:                                              ; preds = %756
  store i32 1, ptr %467, align 4, !tbaa !17
  %760 = load i32, ptr %0, align 4, !tbaa !4
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %768

762:                                              ; preds = %759
  %763 = load i32, ptr %738, align 4, !tbaa !4
  br label %765

764:                                              ; preds = %754
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %768

765:                                              ; preds = %762, %756
  %766 = phi i32 [ %763, %762 ], [ %757, %756 ]
  %767 = call ptr @strerror(i32 noundef %766) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %767) #13
  br label %880

768:                                              ; preds = %764, %759, %750
  %769 = load ptr, ptr %472, align 8, !tbaa !30
  store ptr %769, ptr %458, align 8, !tbaa !20
  br label %1028

770:                                              ; preds = %509
  %771 = load i32, ptr %462, align 8, !tbaa !27
  %772 = shl i32 %771, 1
  store i32 %772, ptr %463, align 8, !tbaa !48
  %773 = load ptr, ptr %472, align 8, !tbaa !30
  store ptr %773, ptr %464, align 8, !tbaa !49
  br label %774

774:                                              ; preds = %846, %770
  %775 = phi i32 [ 0, %770 ], [ %826, %846 ]
  %776 = load i32, ptr %460, align 8, !tbaa !34
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %825

778:                                              ; preds = %774
  %779 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %779, label %857 [
    i32 0, label %780
    i32 -5, label %780
  ]

780:                                              ; preds = %778, %778
  %781 = load i32, ptr %459, align 8, !tbaa !24
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %821

783:                                              ; preds = %780
  %784 = load ptr, ptr %466, align 8, !tbaa !29
  %785 = load i32, ptr %462, align 8, !tbaa !27
  store i32 0, ptr %467, align 4, !tbaa !17
  %786 = tail call ptr @__errno_location() #16
  store i32 0, ptr %786, align 4, !tbaa !4
  br label %787

787:                                              ; preds = %798, %783
  %788 = phi i32 [ 0, %783 ], [ %799, %798 ]
  %789 = sub i32 %785, %788
  %790 = call i32 @llvm.umin.i32(i32 %789, i32 1073741824)
  %791 = load i32, ptr %468, align 4, !tbaa !46
  %792 = zext i32 %788 to i64
  %793 = getelementptr inbounds nuw i8, ptr %784, i64 %792
  %794 = zext nneg i32 %790 to i64
  %795 = call i64 @read(i32 noundef %791, ptr noundef %793, i64 noundef %794) #13
  %796 = trunc i64 %795 to i32
  %797 = icmp slt i32 %796, 1
  br i1 %797, label %801, label %798

798:                                              ; preds = %787
  %799 = add i32 %788, %796
  %800 = icmp ult i32 %799, %785
  br i1 %800, label %787, label %815, !llvm.loop !47

801:                                              ; preds = %787
  %802 = icmp slt i32 %796, 0
  br i1 %802, label %803, label %810

803:                                              ; preds = %801
  %804 = load i32, ptr %786, align 4, !tbaa !4
  %805 = icmp eq i32 %804, 11
  br i1 %805, label %806, label %811

806:                                              ; preds = %803
  store i32 1, ptr %467, align 4, !tbaa !17
  %807 = icmp eq i32 %788, 0
  br i1 %807, label %808, label %815

808:                                              ; preds = %806
  %809 = load i32, ptr %786, align 4, !tbaa !4
  br label %811

810:                                              ; preds = %801
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %815

811:                                              ; preds = %808, %803
  %812 = phi i32 [ %809, %808 ], [ %804, %803 ]
  %813 = call ptr @strerror(i32 noundef %812) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %813) #13
  %814 = load i32, ptr %9, align 8, !tbaa !16
  br label %857

815:                                              ; preds = %810, %806, %798
  %816 = phi i32 [ %788, %806 ], [ %788, %810 ], [ %799, %798 ]
  %817 = load i32, ptr %460, align 8, !tbaa !34
  %818 = add i32 %817, %816
  store i32 %818, ptr %460, align 8, !tbaa !34
  %819 = load ptr, ptr %466, align 8, !tbaa !29
  store ptr %819, ptr %465, align 8, !tbaa !35
  %820 = icmp eq i32 %818, 0
  br i1 %820, label %821, label %825

821:                                              ; preds = %815, %780
  %822 = load i32, ptr %467, align 4, !tbaa !17
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %857

824:                                              ; preds = %821
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %857

825:                                              ; preds = %815, %774
  %826 = call i32 @inflate(ptr noundef nonnull %465, i32 noundef 0) #13
  %827 = load i32, ptr %463, align 8, !tbaa !48
  %828 = icmp ult i32 %827, %772
  br i1 %828, label %829, label %830

829:                                              ; preds = %825
  store i32 0, ptr %469, align 4, !tbaa !33
  br label %830

830:                                              ; preds = %829, %825
  switch i32 %826, label %846 [
    i32 -2, label %831
    i32 2, label %831
    i32 -4, label %832
    i32 -3, label %833
  ]

831:                                              ; preds = %830, %830
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %857

832:                                              ; preds = %830
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %850

833:                                              ; preds = %830
  %834 = load i32, ptr %469, align 4, !tbaa !33
  %835 = icmp eq i32 %834, 1
  br i1 %835, label %836, label %842

836:                                              ; preds = %833
  store i32 0, ptr %460, align 8, !tbaa !34
  store i32 1, ptr %459, align 8, !tbaa !24
  store i32 0, ptr %461, align 8, !tbaa !26
  %837 = sub i32 %772, %827
  store i32 %837, ptr %0, align 8, !tbaa !19
  %838 = load ptr, ptr %464, align 8, !tbaa !49
  %839 = zext i32 %837 to i64
  %840 = sub nsw i64 0, %839
  %841 = getelementptr inbounds i8, ptr %838, i64 %840
  store ptr %841, ptr %458, align 8, !tbaa !20
  br label %867

842:                                              ; preds = %833
  %843 = load ptr, ptr %470, align 8, !tbaa !50
  %844 = icmp eq ptr %843, null
  %845 = select i1 %844, ptr @.str.6, ptr %843
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %845) #13
  br label %850

846:                                              ; preds = %830
  %847 = icmp ne i32 %827, 0
  %848 = icmp ne i32 %826, 1
  %849 = select i1 %847, i1 %848, i1 false
  br i1 %849, label %774, label %857, !llvm.loop !51

850:                                              ; preds = %842, %832
  %851 = load i32, ptr %463, align 8, !tbaa !48
  %852 = sub i32 %772, %851
  store i32 %852, ptr %0, align 8, !tbaa !19
  %853 = load ptr, ptr %464, align 8, !tbaa !49
  %854 = zext i32 %852 to i64
  %855 = sub nsw i64 0, %854
  %856 = getelementptr inbounds i8, ptr %853, i64 %855
  store ptr %856, ptr %458, align 8, !tbaa !20
  br label %880

857:                                              ; preds = %846, %831, %824, %821, %811, %778
  %858 = phi i32 [ %814, %811 ], [ %775, %821 ], [ %775, %824 ], [ %826, %831 ], [ %779, %778 ], [ %826, %846 ]
  %859 = load i32, ptr %463, align 8, !tbaa !48
  %860 = sub i32 %772, %859
  store i32 %860, ptr %0, align 8, !tbaa !19
  %861 = load ptr, ptr %464, align 8, !tbaa !49
  %862 = zext i32 %860 to i64
  %863 = sub nsw i64 0, %862
  %864 = getelementptr inbounds i8, ptr %861, i64 %863
  store ptr %864, ptr %458, align 8, !tbaa !20
  switch i32 %858, label %880 [
    i32 1, label %865
    i32 0, label %867
  ]

865:                                              ; preds = %857
  store i32 0, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %461, align 8, !tbaa !26
  br label %867

866:                                              ; preds = %509
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %880

867:                                              ; preds = %865, %857, %836, %731, %725
  %868 = load i32, ptr %0, align 8, !tbaa !19
  br label %869

869:                                              ; preds = %867, %727
  %870 = phi i32 [ %868, %867 ], [ %730, %727 ]
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %1028

872:                                              ; preds = %869
  %873 = load i32, ptr %459, align 8, !tbaa !24
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %878, label %875

875:                                              ; preds = %872
  %876 = load i32, ptr %460, align 8, !tbaa !34
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %1028, label %878

878:                                              ; preds = %875, %872
  %879 = load i32, ptr %461, align 8, !tbaa !26
  br label %509, !llvm.loop !52

880:                                              ; preds = %866, %857, %850, %765, %691, %544, %530, %525
  %881 = load i32, ptr %0, align 8, !tbaa !19
  %882 = icmp eq i32 %881, 0
  %883 = sext i1 %882 to i32
  br label %1028

884:                                              ; preds = %504
  %885 = icmp eq i32 %502, 1
  br i1 %885, label %886, label %915

886:                                              ; preds = %884
  store i32 0, ptr %467, align 4, !tbaa !17
  %887 = tail call ptr @__errno_location() #16
  store i32 0, ptr %887, align 4, !tbaa !4
  br label %888

888:                                              ; preds = %899, %886
  %889 = phi i32 [ 0, %886 ], [ %900, %899 ]
  %890 = sub i32 %481, %889
  %891 = call i32 @llvm.umin.i32(i32 %890, i32 1073741824)
  %892 = load i32, ptr %468, align 4, !tbaa !46
  %893 = zext i32 %889 to i64
  %894 = getelementptr inbounds nuw i8, ptr %477, i64 %893
  %895 = zext nneg i32 %891 to i64
  %896 = call i64 @read(i32 noundef %892, ptr noundef %894, i64 noundef %895) #13
  %897 = trunc i64 %896 to i32
  %898 = icmp slt i32 %897, 1
  br i1 %898, label %902, label %899

899:                                              ; preds = %888
  %900 = add i32 %889, %897
  %901 = icmp ult i32 %900, %481
  br i1 %901, label %888, label %1013, !llvm.loop !47

902:                                              ; preds = %888
  %903 = icmp slt i32 %897, 0
  br i1 %903, label %904, label %914

904:                                              ; preds = %902
  %905 = load i32, ptr %887, align 4, !tbaa !4
  %906 = icmp eq i32 %905, 11
  br i1 %906, label %907, label %911

907:                                              ; preds = %904
  store i32 1, ptr %467, align 4, !tbaa !17
  %908 = icmp eq i32 %889, 0
  br i1 %908, label %909, label %1015

909:                                              ; preds = %907
  %910 = load i32, ptr %887, align 4, !tbaa !4
  br label %911

911:                                              ; preds = %909, %904
  %912 = phi i32 [ %910, %909 ], [ %905, %904 ]
  %913 = call ptr @strerror(i32 noundef %912) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %913) #13
  br label %1015

914:                                              ; preds = %902
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %1015

915:                                              ; preds = %884
  store i32 %481, ptr %463, align 8, !tbaa !58
  store ptr %477, ptr %464, align 8, !tbaa !59
  br label %916

916:                                              ; preds = %983, %915
  %917 = phi i32 [ 0, %915 ], [ %968, %983 ]
  %918 = load i32, ptr %460, align 8, !tbaa !34
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %967

920:                                              ; preds = %916
  %921 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %921, label %995 [
    i32 0, label %922
    i32 -5, label %922
  ]

922:                                              ; preds = %920, %920
  %923 = load i32, ptr %459, align 8, !tbaa !24
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %963

925:                                              ; preds = %922
  %926 = load ptr, ptr %466, align 8, !tbaa !29
  %927 = load i32, ptr %462, align 8, !tbaa !27
  store i32 0, ptr %467, align 4, !tbaa !17
  %928 = tail call ptr @__errno_location() #16
  store i32 0, ptr %928, align 4, !tbaa !4
  br label %929

929:                                              ; preds = %940, %925
  %930 = phi i32 [ 0, %925 ], [ %941, %940 ]
  %931 = sub i32 %927, %930
  %932 = call i32 @llvm.umin.i32(i32 %931, i32 1073741824)
  %933 = load i32, ptr %468, align 4, !tbaa !46
  %934 = zext i32 %930 to i64
  %935 = getelementptr inbounds nuw i8, ptr %926, i64 %934
  %936 = zext nneg i32 %932 to i64
  %937 = call i64 @read(i32 noundef %933, ptr noundef %935, i64 noundef %936) #13
  %938 = trunc i64 %937 to i32
  %939 = icmp slt i32 %938, 1
  br i1 %939, label %943, label %940

940:                                              ; preds = %929
  %941 = add i32 %930, %938
  %942 = icmp ult i32 %941, %927
  br i1 %942, label %929, label %957, !llvm.loop !47

943:                                              ; preds = %929
  %944 = icmp slt i32 %938, 0
  br i1 %944, label %945, label %952

945:                                              ; preds = %943
  %946 = load i32, ptr %928, align 4, !tbaa !4
  %947 = icmp eq i32 %946, 11
  br i1 %947, label %948, label %953

948:                                              ; preds = %945
  store i32 1, ptr %467, align 4, !tbaa !17
  %949 = icmp eq i32 %930, 0
  br i1 %949, label %950, label %957

950:                                              ; preds = %948
  %951 = load i32, ptr %928, align 4, !tbaa !4
  br label %953

952:                                              ; preds = %943
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %957

953:                                              ; preds = %950, %945
  %954 = phi i32 [ %951, %950 ], [ %946, %945 ]
  %955 = call ptr @strerror(i32 noundef %954) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %955) #13
  %956 = load i32, ptr %9, align 8, !tbaa !16
  br label %995

957:                                              ; preds = %952, %948, %940
  %958 = phi i32 [ %930, %948 ], [ %930, %952 ], [ %941, %940 ]
  %959 = load i32, ptr %460, align 8, !tbaa !34
  %960 = add i32 %959, %958
  store i32 %960, ptr %460, align 8, !tbaa !34
  %961 = load ptr, ptr %466, align 8, !tbaa !29
  store ptr %961, ptr %465, align 8, !tbaa !35
  %962 = icmp eq i32 %960, 0
  br i1 %962, label %963, label %967

963:                                              ; preds = %957, %922
  %964 = load i32, ptr %467, align 4, !tbaa !17
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %995

966:                                              ; preds = %963
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %995

967:                                              ; preds = %957, %916
  %968 = call i32 @inflate(ptr noundef nonnull %465, i32 noundef 0) #13
  %969 = load i32, ptr %463, align 8, !tbaa !48
  %970 = icmp ult i32 %969, %481
  br i1 %970, label %971, label %972

971:                                              ; preds = %967
  store i32 0, ptr %469, align 4, !tbaa !33
  br label %972

972:                                              ; preds = %971, %967
  switch i32 %968, label %983 [
    i32 -2, label %973
    i32 2, label %973
    i32 -4, label %974
    i32 -3, label %975
  ]

973:                                              ; preds = %972, %972
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %995

974:                                              ; preds = %972
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %987

975:                                              ; preds = %972
  %976 = load i32, ptr %469, align 4, !tbaa !33
  %977 = icmp eq i32 %976, 1
  br i1 %977, label %978, label %979

978:                                              ; preds = %975
  store i32 0, ptr %460, align 8, !tbaa !34
  store i32 1, ptr %459, align 8, !tbaa !24
  store i32 0, ptr %461, align 8, !tbaa !26
  br label %987

979:                                              ; preds = %975
  %980 = load ptr, ptr %470, align 8, !tbaa !50
  %981 = icmp eq ptr %980, null
  %982 = select i1 %981, ptr @.str.6, ptr %980
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %982) #13
  br label %987

983:                                              ; preds = %972
  %984 = icmp ne i32 %969, 0
  %985 = icmp ne i32 %968, 1
  %986 = select i1 %984, i1 %985, i1 false
  br i1 %986, label %916, label %995, !llvm.loop !51

987:                                              ; preds = %979, %978, %974
  %988 = phi i32 [ -3, %979 ], [ 0, %978 ], [ -4, %974 ]
  %989 = load i32, ptr %463, align 8, !tbaa !48
  %990 = sub i32 %481, %989
  %991 = load ptr, ptr %464, align 8, !tbaa !49
  %992 = zext i32 %990 to i64
  %993 = sub nsw i64 0, %992
  %994 = getelementptr inbounds i8, ptr %991, i64 %993
  store ptr %994, ptr %458, align 8, !tbaa !20
  br label %1005

995:                                              ; preds = %983, %973, %966, %963, %953, %920
  %996 = phi i32 [ %956, %953 ], [ %917, %963 ], [ %917, %966 ], [ %968, %973 ], [ %921, %920 ], [ %968, %983 ]
  %997 = load i32, ptr %463, align 8, !tbaa !48
  %998 = sub i32 %481, %997
  %999 = load ptr, ptr %464, align 8, !tbaa !49
  %1000 = zext i32 %998 to i64
  %1001 = sub nsw i64 0, %1000
  %1002 = getelementptr inbounds i8, ptr %999, i64 %1001
  store ptr %1002, ptr %458, align 8, !tbaa !20
  %1003 = icmp eq i32 %996, 1
  br i1 %1003, label %1004, label %1005

1004:                                             ; preds = %995
  store i32 0, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %461, align 8, !tbaa !26
  br label %1010

1005:                                             ; preds = %995, %987
  %1006 = phi i64 [ %992, %987 ], [ %1000, %995 ]
  %1007 = phi i32 [ %988, %987 ], [ %996, %995 ]
  %1008 = icmp ne i32 %1007, 0
  %1009 = sext i1 %1008 to i32
  br label %1010

1010:                                             ; preds = %1005, %1004
  %1011 = phi i64 [ %1000, %1004 ], [ %1006, %1005 ]
  %1012 = phi i32 [ 0, %1004 ], [ %1009, %1005 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1015

1013:                                             ; preds = %899
  %1014 = zext i32 %900 to i64
  br label %1015

1015:                                             ; preds = %1013, %1010, %914, %911, %907, %484
  %1016 = phi i64 [ %1014, %1013 ], [ %893, %914 ], [ %893, %911 ], [ %893, %907 ], [ %487, %484 ], [ %1011, %1010 ]
  %1017 = phi i32 [ 0, %1013 ], [ 0, %914 ], [ -1, %911 ], [ 0, %907 ], [ %494, %484 ], [ %1012, %1010 ]
  %1018 = load i64, ptr %471, align 8, !tbaa !21
  %1019 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1018, i64 %1016), !nosanitize !22
  %1020 = extractvalue { i64, i1 } %1019, 1, !nosanitize !22
  br i1 %1020, label %1021, label %1022, !prof !23, !nosanitize !22

1021:                                             ; preds = %1015
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

1022:                                             ; preds = %1015
  %1023 = extractvalue { i64, i1 } %1019, 0, !nosanitize !22
  %1024 = add i64 %1016, %479
  %1025 = getelementptr inbounds nuw i8, ptr %477, i64 %1016
  %1026 = sub i64 %478, %1016
  store i64 %1023, ptr %471, align 8, !tbaa !21
  %1027 = icmp eq i64 %1026, 0
  br i1 %1027, label %1040, label %1028

1028:                                             ; preds = %1022, %880, %875, %869, %768, %731
  %1029 = phi i32 [ %1017, %1022 ], [ %883, %880 ], [ 0, %768 ], [ 0, %731 ], [ 0, %869 ], [ 0, %875 ]
  %1030 = phi i64 [ %1024, %1022 ], [ %479, %880 ], [ %479, %768 ], [ %479, %731 ], [ %479, %869 ], [ %479, %875 ]
  %1031 = phi i64 [ %1026, %1022 ], [ %478, %880 ], [ %478, %768 ], [ %478, %731 ], [ %478, %869 ], [ %478, %875 ]
  %1032 = phi ptr [ %1025, %1022 ], [ %477, %880 ], [ %477, %768 ], [ %477, %731 ], [ %477, %869 ], [ %477, %875 ]
  %1033 = icmp eq i32 %1029, 0
  br i1 %1033, label %476, label %1034, !llvm.loop !60

1034:                                             ; preds = %1028
  %1035 = load i32, ptr %459, align 8, !tbaa !24
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1040, label %1037

1037:                                             ; preds = %1034, %498
  %1038 = phi i64 [ %1030, %1034 ], [ %479, %498 ]
  %1039 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1039, align 4, !tbaa !61
  br label %1040

1040:                                             ; preds = %1037, %1034, %1022
  %1041 = phi i64 [ %1030, %1034 ], [ %1038, %1037 ], [ %1024, %1022 ]
  %1042 = freeze i64 %1041
  %1043 = icmp eq i64 %1042, 0
  %1044 = load i8, ptr %2, align 1
  %1045 = zext i8 %1044 to i32
  br i1 %1043, label %1046, label %1047

1046:                                             ; preds = %1040, %439, %430, %423, %337, %263, %116, %102, %97
  br label %1047

1047:                                             ; preds = %1046, %1040, %25, %11, %4, %1
  %1048 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %1046 ], [ %1045, %1040 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1048
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
  br i1 %3, label %1047, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1047

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
  br i1 %14, label %1047, label %15

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
  br label %1047

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %457, label %36

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

54:                                               ; preds = %454, %36
  %55 = phi i64 [ %455, %454 ], [ %34, %36 ]
  %56 = load i32, ptr %0, align 8, !tbaa !19
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58

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
  %73 = extractvalue { i64, i1 } %72, 0, !nosanitize !22
  store i64 %73, ptr %33, align 8, !tbaa !18
  br label %454

74:                                               ; preds = %54
  %75 = load i32, ptr %39, align 8, !tbaa !24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %40, align 8, !tbaa !25
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %457, label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %451, %80
  %82 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %82, label %439 [
    i32 0, label %83
    i32 1, label %306
    i32 2, label %342
  ]

83:                                               ; preds = %81
  %84 = load i32, ptr %42, align 8, !tbaa !27
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load i32, ptr %51, align 4, !tbaa !28
  %88 = zext i32 %87 to i64
  %89 = tail call noalias ptr @malloc(i64 noundef %88) #15
  store ptr %89, ptr %47, align 8, !tbaa !29
  %90 = load i32, ptr %51, align 4, !tbaa !28
  %91 = shl i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #15
  store ptr %93, ptr %44, align 8, !tbaa !30
  %94 = icmp eq ptr %89, null
  %95 = icmp eq ptr %93, null
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  tail call void @free(ptr noundef %93) #13
  tail call void @free(ptr noundef %89) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1046

98:                                               ; preds = %86
  %99 = load i32, ptr %51, align 4, !tbaa !28
  store i32 %99, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %100 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %103) #13
  %104 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %104) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %1046

105:                                              ; preds = %98, %83
  %106 = load i32, ptr %53, align 8, !tbaa !32
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %50, align 4, !tbaa !33
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108, %105
  %112 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %113 = load i32, ptr %50, align 4, !tbaa !33
  %114 = icmp ne i32 %113, -1
  %115 = zext i1 %114 to i32
  store i32 %115, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %303

116:                                              ; preds = %108
  %117 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %117, label %1046 [
    i32 0, label %118
    i32 -5, label %118
  ]

118:                                              ; preds = %116, %116
  %119 = load i32, ptr %39, align 8, !tbaa !24
  %120 = icmp eq i32 %119, 0
  %121 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %120, label %122, label %271

122:                                              ; preds = %118
  %123 = icmp eq i32 %121, 0
  %124 = load ptr, ptr %47, align 8, !tbaa !29
  %125 = ptrtoaddr ptr %124 to i64
  br i1 %123, label %231, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %46, align 8, !tbaa !35
  %128 = icmp eq ptr %127, %124
  br i1 %128, label %231, label %129

129:                                              ; preds = %126
  %130 = ptrtoaddr ptr %127 to i64
  %131 = zext i32 %121 to i64
  %132 = icmp ult i32 %121, 4
  %133 = sub i64 %125, %130
  %134 = icmp ult i64 %133, 32
  %135 = select i1 %132, i1 true, i1 %134
  br i1 %135, label %175, label %136

136:                                              ; preds = %129
  %137 = icmp ult i32 %121, 32
  br i1 %137, label %159, label %138

138:                                              ; preds = %136
  %139 = and i64 %131, 28
  %140 = and i64 %131, 4294967264
  %141 = getelementptr i8, ptr %124, i64 %140
  %142 = getelementptr i8, ptr %127, i64 %140
  %143 = trunc nuw i64 %140 to i32
  %144 = sub i32 %121, %143
  br label %145

145:                                              ; preds = %145, %138
  %146 = phi i64 [ 0, %138 ], [ %153, %145 ]
  %147 = getelementptr i8, ptr %124, i64 %146
  %148 = getelementptr i8, ptr %127, i64 %146
  %149 = getelementptr i8, ptr %148, i64 16
  %150 = load <16 x i8>, ptr %148, align 1, !tbaa !36
  %151 = load <16 x i8>, ptr %149, align 1, !tbaa !36
  %152 = getelementptr i8, ptr %147, i64 16
  store <16 x i8> %150, ptr %147, align 1, !tbaa !36
  store <16 x i8> %151, ptr %152, align 1, !tbaa !36
  %153 = add nuw i64 %146, 32
  %154 = icmp eq i64 %153, %140
  br i1 %154, label %155, label %145, !llvm.loop !78

155:                                              ; preds = %145
  %156 = icmp eq i64 %140, %131
  br i1 %156, label %228, label %157

157:                                              ; preds = %155
  %158 = icmp eq i64 %139, 0
  br i1 %158, label %175, label %159, !prof !41

159:                                              ; preds = %157, %136
  %160 = phi i64 [ %140, %157 ], [ 0, %136 ]
  %161 = and i64 %131, 4294967292
  %162 = getelementptr i8, ptr %124, i64 %161
  %163 = getelementptr i8, ptr %127, i64 %161
  %164 = trunc nuw i64 %161 to i32
  %165 = sub i32 %121, %164
  br label %166

166:                                              ; preds = %166, %159
  %167 = phi i64 [ %160, %159 ], [ %171, %166 ]
  %168 = getelementptr i8, ptr %124, i64 %167
  %169 = getelementptr i8, ptr %127, i64 %167
  %170 = load <4 x i8>, ptr %169, align 1, !tbaa !36
  store <4 x i8> %170, ptr %168, align 1, !tbaa !36
  %171 = add nuw i64 %167, 4
  %172 = icmp eq i64 %171, %161
  br i1 %172, label %173, label %166, !llvm.loop !79

173:                                              ; preds = %166
  %174 = icmp eq i64 %161, %131
  br i1 %174, label %228, label %175

175:                                              ; preds = %173, %157, %129
  %176 = phi ptr [ %124, %129 ], [ %141, %157 ], [ %162, %173 ]
  %177 = phi ptr [ %127, %129 ], [ %142, %157 ], [ %163, %173 ]
  %178 = phi i32 [ %121, %129 ], [ %144, %157 ], [ %165, %173 ]
  %179 = add i32 %178, -1
  %180 = and i32 %178, 7
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %182, %175
  %183 = phi ptr [ %189, %182 ], [ %176, %175 ]
  %184 = phi ptr [ %187, %182 ], [ %177, %175 ]
  %185 = phi i32 [ %190, %182 ], [ %178, %175 ]
  %186 = phi i32 [ %191, %182 ], [ 0, %175 ]
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 1
  %188 = load i8, ptr %184, align 1, !tbaa !36
  %189 = getelementptr inbounds nuw i8, ptr %183, i64 1
  store i8 %188, ptr %183, align 1, !tbaa !36
  %190 = add i32 %185, -1
  %191 = add i32 %186, 1
  %192 = icmp eq i32 %191, %180
  br i1 %192, label %193, label %182, !llvm.loop !80

193:                                              ; preds = %182, %175
  %194 = phi ptr [ %176, %175 ], [ %189, %182 ]
  %195 = phi ptr [ %177, %175 ], [ %187, %182 ]
  %196 = phi i32 [ %178, %175 ], [ %190, %182 ]
  %197 = icmp ult i32 %179, 7
  br i1 %197, label %228, label %198

198:                                              ; preds = %198, %193
  %199 = phi ptr [ %225, %198 ], [ %194, %193 ]
  %200 = phi ptr [ %223, %198 ], [ %195, %193 ]
  %201 = phi i32 [ %226, %198 ], [ %196, %193 ]
  %202 = getelementptr inbounds nuw i8, ptr %200, i64 1
  %203 = load i8, ptr %200, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %199, i64 1
  store i8 %203, ptr %199, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %200, i64 2
  %206 = load i8, ptr %202, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %199, i64 2
  store i8 %206, ptr %204, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %200, i64 3
  %209 = load i8, ptr %205, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %199, i64 3
  store i8 %209, ptr %207, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %212 = load i8, ptr %208, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %199, i64 4
  store i8 %212, ptr %210, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %200, i64 5
  %215 = load i8, ptr %211, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %199, i64 5
  store i8 %215, ptr %213, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %200, i64 6
  %218 = load i8, ptr %214, align 1, !tbaa !36
  %219 = getelementptr inbounds nuw i8, ptr %199, i64 6
  store i8 %218, ptr %216, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %200, i64 7
  %221 = load i8, ptr %217, align 1, !tbaa !36
  %222 = getelementptr inbounds nuw i8, ptr %199, i64 7
  store i8 %221, ptr %219, align 1, !tbaa !36
  %223 = getelementptr inbounds nuw i8, ptr %200, i64 8
  %224 = load i8, ptr %220, align 1, !tbaa !36
  %225 = getelementptr inbounds nuw i8, ptr %199, i64 8
  store i8 %224, ptr %222, align 1, !tbaa !36
  %226 = add i32 %201, -8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %198, !llvm.loop !81

228:                                              ; preds = %198, %193, %173, %155
  %229 = load i32, ptr %40, align 8, !tbaa !34
  %230 = load ptr, ptr %47, align 8, !tbaa !29
  br label %231

231:                                              ; preds = %228, %126, %122
  %232 = phi ptr [ %230, %228 ], [ %124, %126 ], [ %124, %122 ]
  %233 = phi i32 [ %229, %228 ], [ %121, %126 ], [ 0, %122 ]
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds nuw i8, ptr %232, i64 %234
  %236 = load i32, ptr %42, align 8, !tbaa !27
  %237 = sub i32 %236, %233
  store i32 0, ptr %48, align 4, !tbaa !17
  %238 = tail call ptr @__errno_location() #16
  store i32 0, ptr %238, align 4, !tbaa !4
  br label %239

239:                                              ; preds = %250, %231
  %240 = phi i32 [ 0, %231 ], [ %251, %250 ]
  %241 = sub i32 %237, %240
  %242 = tail call i32 @llvm.umin.i32(i32 %241, i32 1073741824)
  %243 = load i32, ptr %49, align 4, !tbaa !46
  %244 = zext i32 %240 to i64
  %245 = getelementptr inbounds nuw i8, ptr %235, i64 %244
  %246 = zext nneg i32 %242 to i64
  %247 = tail call i64 @read(i32 noundef %243, ptr noundef %245, i64 noundef %246) #13
  %248 = trunc i64 %247 to i32
  %249 = icmp slt i32 %248, 1
  br i1 %249, label %253, label %250

250:                                              ; preds = %239
  %251 = add i32 %240, %248
  %252 = icmp ult i32 %251, %237
  br i1 %252, label %239, label %266, !llvm.loop !47

253:                                              ; preds = %239
  %254 = icmp slt i32 %248, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %253
  %256 = load i32, ptr %238, align 4, !tbaa !4
  %257 = icmp eq i32 %256, 11
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  store i32 1, ptr %48, align 4, !tbaa !17
  %259 = icmp eq i32 %240, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %258
  %261 = load i32, ptr %238, align 4, !tbaa !4
  br label %263

262:                                              ; preds = %253
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %266

263:                                              ; preds = %260, %255
  %264 = phi i32 [ %261, %260 ], [ %256, %255 ]
  %265 = tail call ptr @strerror(i32 noundef %264) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %265) #13
  br label %1046

266:                                              ; preds = %262, %258, %250
  %267 = phi i32 [ %240, %258 ], [ %240, %262 ], [ %251, %250 ]
  %268 = load i32, ptr %40, align 8, !tbaa !34
  %269 = add i32 %268, %267
  store i32 %269, ptr %40, align 8, !tbaa !34
  %270 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %270, ptr %46, align 8, !tbaa !35
  br label %271

271:                                              ; preds = %266, %118
  %272 = phi i32 [ %269, %266 ], [ %121, %118 ]
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %303, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %48, align 4, !tbaa !17
  %276 = icmp ne i32 %275, 0
  %277 = icmp ult i32 %272, 4
  %278 = and i1 %277, %276
  br i1 %278, label %303, label %279

279:                                              ; preds = %274
  %280 = icmp ugt i32 %272, 3
  %281 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %280, label %282, label %299

282:                                              ; preds = %279
  %283 = load i8, ptr %281, align 1, !tbaa !36
  %284 = icmp eq i8 %283, 31
  br i1 %284, label %285, label %299

285:                                              ; preds = %282
  %286 = getelementptr inbounds nuw i8, ptr %281, i64 1
  %287 = load i8, ptr %286, align 1, !tbaa !36
  %288 = icmp eq i8 %287, -117
  br i1 %288, label %289, label %299

289:                                              ; preds = %285
  %290 = getelementptr inbounds nuw i8, ptr %281, i64 2
  %291 = load i8, ptr %290, align 1, !tbaa !36
  %292 = icmp eq i8 %291, 8
  br i1 %292, label %293, label %299

293:                                              ; preds = %289
  %294 = getelementptr inbounds nuw i8, ptr %281, i64 3
  %295 = load i8, ptr %294, align 1, !tbaa !36
  %296 = icmp ult i8 %295, 32
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %440

299:                                              ; preds = %293, %289, %285, %282, %279
  %300 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %300, ptr %37, align 8, !tbaa !20
  %301 = zext i32 %272 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %300, ptr align 1 %281, i64 %301, i1 false)
  %302 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %302, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %442

303:                                              ; preds = %274, %271, %111
  %304 = load i32, ptr %41, align 8, !tbaa !26
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %452, label %440

306:                                              ; preds = %81
  %307 = load ptr, ptr %44, align 8, !tbaa !30
  %308 = load i32, ptr %42, align 8, !tbaa !27
  %309 = shl i32 %308, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %310 = tail call ptr @__errno_location() #16
  store i32 0, ptr %310, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %311

311:                                              ; preds = %322, %306
  %312 = phi i32 [ %324, %322 ], [ 0, %306 ]
  %313 = sub i32 %309, %312
  %314 = tail call i32 @llvm.umin.i32(i32 %313, i32 1073741824)
  %315 = load i32, ptr %49, align 4, !tbaa !46
  %316 = zext i32 %312 to i64
  %317 = getelementptr inbounds nuw i8, ptr %307, i64 %316
  %318 = zext nneg i32 %314 to i64
  %319 = tail call i64 @read(i32 noundef %315, ptr noundef %317, i64 noundef %318) #13
  %320 = trunc i64 %319 to i32
  %321 = icmp slt i32 %320, 1
  br i1 %321, label %326, label %322

322:                                              ; preds = %311
  %323 = load i32, ptr %0, align 4, !tbaa !4
  %324 = add i32 %323, %320
  store i32 %324, ptr %0, align 4, !tbaa !4
  %325 = icmp ult i32 %324, %309
  br i1 %325, label %311, label %340, !llvm.loop !47

326:                                              ; preds = %311
  %327 = icmp slt i32 %320, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %326
  %329 = load i32, ptr %310, align 4, !tbaa !4
  %330 = icmp eq i32 %329, 11
  br i1 %330, label %331, label %337

331:                                              ; preds = %328
  store i32 1, ptr %48, align 4, !tbaa !17
  %332 = load i32, ptr %0, align 4, !tbaa !4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %331
  %335 = load i32, ptr %310, align 4, !tbaa !4
  br label %337

336:                                              ; preds = %326
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %340

337:                                              ; preds = %334, %328
  %338 = phi i32 [ %335, %334 ], [ %329, %328 ]
  %339 = tail call ptr @strerror(i32 noundef %338) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %339) #13
  br label %1046

340:                                              ; preds = %336, %331, %322
  %341 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %341, ptr %37, align 8, !tbaa !20
  br label %452

342:                                              ; preds = %81
  %343 = load i32, ptr %42, align 8, !tbaa !27
  %344 = shl i32 %343, 1
  store i32 %344, ptr %43, align 8, !tbaa !48
  %345 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %345, ptr %45, align 8, !tbaa !49
  br label %346

346:                                              ; preds = %419, %342
  %347 = phi i32 [ 0, %342 ], [ %398, %419 ]
  %348 = load i32, ptr %40, align 8, !tbaa !34
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %397

350:                                              ; preds = %346
  %351 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %351, label %430 [
    i32 0, label %352
    i32 -5, label %352
  ]

352:                                              ; preds = %350, %350
  %353 = load i32, ptr %39, align 8, !tbaa !24
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %393

355:                                              ; preds = %352
  %356 = load ptr, ptr %47, align 8, !tbaa !29
  %357 = load i32, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %48, align 4, !tbaa !17
  %358 = tail call ptr @__errno_location() #16
  store i32 0, ptr %358, align 4, !tbaa !4
  br label %359

359:                                              ; preds = %370, %355
  %360 = phi i32 [ 0, %355 ], [ %371, %370 ]
  %361 = sub i32 %357, %360
  %362 = tail call i32 @llvm.umin.i32(i32 %361, i32 1073741824)
  %363 = load i32, ptr %49, align 4, !tbaa !46
  %364 = zext i32 %360 to i64
  %365 = getelementptr inbounds nuw i8, ptr %356, i64 %364
  %366 = zext nneg i32 %362 to i64
  %367 = tail call i64 @read(i32 noundef %363, ptr noundef %365, i64 noundef %366) #13
  %368 = trunc i64 %367 to i32
  %369 = icmp slt i32 %368, 1
  br i1 %369, label %373, label %370

370:                                              ; preds = %359
  %371 = add i32 %360, %368
  %372 = icmp ult i32 %371, %357
  br i1 %372, label %359, label %387, !llvm.loop !47

373:                                              ; preds = %359
  %374 = icmp slt i32 %368, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %373
  %376 = load i32, ptr %358, align 4, !tbaa !4
  %377 = icmp eq i32 %376, 11
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  store i32 1, ptr %48, align 4, !tbaa !17
  %379 = icmp eq i32 %360, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %378
  %381 = load i32, ptr %358, align 4, !tbaa !4
  br label %383

382:                                              ; preds = %373
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %387

383:                                              ; preds = %380, %375
  %384 = phi i32 [ %381, %380 ], [ %376, %375 ]
  %385 = tail call ptr @strerror(i32 noundef %384) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %385) #13
  %386 = load i32, ptr %9, align 8, !tbaa !16
  br label %430

387:                                              ; preds = %382, %378, %370
  %388 = phi i32 [ %360, %378 ], [ %360, %382 ], [ %371, %370 ]
  %389 = load i32, ptr %40, align 8, !tbaa !34
  %390 = add i32 %389, %388
  store i32 %390, ptr %40, align 8, !tbaa !34
  %391 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %391, ptr %46, align 8, !tbaa !35
  %392 = icmp eq i32 %390, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %387, %352
  %394 = load i32, ptr %48, align 4, !tbaa !17
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %430

396:                                              ; preds = %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %430

397:                                              ; preds = %387, %346
  %398 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %399 = load i32, ptr %43, align 8, !tbaa !48
  %400 = icmp ult i32 %399, %344
  br i1 %400, label %401, label %402

401:                                              ; preds = %397
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %402

402:                                              ; preds = %401, %397
  switch i32 %398, label %419 [
    i32 -2, label %403
    i32 2, label %403
    i32 -4, label %404
    i32 -3, label %405
  ]

403:                                              ; preds = %402, %402
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %430

404:                                              ; preds = %402
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %423

405:                                              ; preds = %402
  %406 = load i32, ptr %50, align 4, !tbaa !33
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %408, label %414

408:                                              ; preds = %405
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  %409 = sub i32 %344, %399
  store i32 %409, ptr %0, align 8, !tbaa !19
  %410 = load ptr, ptr %45, align 8, !tbaa !49
  %411 = zext i32 %409 to i64
  %412 = sub nsw i64 0, %411
  %413 = getelementptr inbounds i8, ptr %410, i64 %412
  store ptr %413, ptr %37, align 8, !tbaa !20
  br label %440

414:                                              ; preds = %405
  %415 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %416 = load ptr, ptr %415, align 8, !tbaa !50
  %417 = icmp eq ptr %416, null
  %418 = select i1 %417, ptr @.str.6, ptr %416
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %418) #13
  br label %423

419:                                              ; preds = %402
  %420 = icmp ne i32 %399, 0
  %421 = icmp ne i32 %398, 1
  %422 = select i1 %420, i1 %421, i1 false
  br i1 %422, label %346, label %430, !llvm.loop !51

423:                                              ; preds = %414, %404
  %424 = load i32, ptr %43, align 8, !tbaa !48
  %425 = sub i32 %344, %424
  store i32 %425, ptr %0, align 8, !tbaa !19
  %426 = load ptr, ptr %45, align 8, !tbaa !49
  %427 = zext i32 %425 to i64
  %428 = sub nsw i64 0, %427
  %429 = getelementptr inbounds i8, ptr %426, i64 %428
  store ptr %429, ptr %37, align 8, !tbaa !20
  br label %1046

430:                                              ; preds = %419, %403, %396, %393, %383, %350
  %431 = phi i32 [ %386, %383 ], [ %347, %393 ], [ %347, %396 ], [ %398, %403 ], [ %351, %350 ], [ %398, %419 ]
  %432 = load i32, ptr %43, align 8, !tbaa !48
  %433 = sub i32 %344, %432
  store i32 %433, ptr %0, align 8, !tbaa !19
  %434 = load ptr, ptr %45, align 8, !tbaa !49
  %435 = zext i32 %433 to i64
  %436 = sub nsw i64 0, %435
  %437 = getelementptr inbounds i8, ptr %434, i64 %436
  store ptr %437, ptr %37, align 8, !tbaa !20
  switch i32 %431, label %1046 [
    i32 1, label %438
    i32 0, label %440
  ]

438:                                              ; preds = %430
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %440

439:                                              ; preds = %81
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %1046

440:                                              ; preds = %438, %430, %408, %303, %297
  %441 = load i32, ptr %0, align 8, !tbaa !19
  br label %442

442:                                              ; preds = %440, %299
  %443 = phi i32 [ %441, %440 ], [ %302, %299 ]
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %452

445:                                              ; preds = %442
  %446 = load i32, ptr %39, align 8, !tbaa !24
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %451, label %448

448:                                              ; preds = %445
  %449 = load i32, ptr %40, align 8, !tbaa !34
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %452, label %451

451:                                              ; preds = %448, %445
  br label %81, !llvm.loop !52

452:                                              ; preds = %448, %442, %340, %303
  %453 = load i64, ptr %33, align 8, !tbaa !18
  br label %454

454:                                              ; preds = %452, %70
  %455 = phi i64 [ %453, %452 ], [ %73, %70 ]
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %457, label %54, !llvm.loop !53

457:                                              ; preds = %454, %77, %32
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %476

476:                                              ; preds = %1028, %457
  %477 = phi ptr [ %2, %457 ], [ %1032, %1028 ]
  %478 = phi i64 [ 1, %457 ], [ %1031, %1028 ]
  %479 = phi i64 [ 0, %457 ], [ %1030, %1028 ]
  %480 = call i64 @llvm.umin.i64(i64 %478, i64 4294967295)
  %481 = trunc nuw i64 %480 to i32
  %482 = load i32, ptr %0, align 8, !tbaa !19
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %495, label %484

484:                                              ; preds = %476
  %485 = call i32 @llvm.umin.i32(i32 %482, i32 %481)
  %486 = load ptr, ptr %458, align 8, !tbaa !20
  %487 = zext i32 %485 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %477, ptr align 1 %486, i64 %487, i1 false)
  %488 = load ptr, ptr %458, align 8, !tbaa !20
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 %487
  store ptr %489, ptr %458, align 8, !tbaa !20
  %490 = load i32, ptr %0, align 8, !tbaa !19
  %491 = sub i32 %490, %485
  store i32 %491, ptr %0, align 8, !tbaa !19
  %492 = load i32, ptr %9, align 8, !tbaa !16
  %493 = icmp ne i32 %492, 0
  %494 = sext i1 %493 to i32
  br label %1015

495:                                              ; preds = %476
  %496 = load i32, ptr %459, align 8, !tbaa !24
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %501, label %498

498:                                              ; preds = %495
  %499 = load i32, ptr %460, align 8, !tbaa !25
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %1037, label %501

501:                                              ; preds = %498, %495
  %502 = load i32, ptr %461, align 8, !tbaa !26
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %508, label %504

504:                                              ; preds = %501
  %505 = load i32, ptr %462, align 8, !tbaa !27
  %506 = shl i32 %505, 1
  %507 = icmp ugt i32 %506, %481
  br i1 %507, label %508, label %884

508:                                              ; preds = %504, %501
  br label %509

509:                                              ; preds = %878, %508
  %510 = phi i32 [ %879, %878 ], [ %502, %508 ]
  switch i32 %510, label %866 [
    i32 0, label %511
    i32 1, label %734
    i32 2, label %770
  ]

511:                                              ; preds = %509
  %512 = load i32, ptr %462, align 8, !tbaa !27
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %533

514:                                              ; preds = %511
  %515 = load i32, ptr %473, align 4, !tbaa !28
  %516 = zext i32 %515 to i64
  %517 = call noalias ptr @malloc(i64 noundef %516) #15
  store ptr %517, ptr %466, align 8, !tbaa !29
  %518 = load i32, ptr %473, align 4, !tbaa !28
  %519 = shl i32 %518, 1
  %520 = zext i32 %519 to i64
  %521 = call noalias ptr @malloc(i64 noundef %520) #15
  store ptr %521, ptr %472, align 8, !tbaa !30
  %522 = icmp eq ptr %517, null
  %523 = icmp eq ptr %521, null
  %524 = or i1 %522, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %514
  call void @free(ptr noundef %521) #13
  call void @free(ptr noundef %517) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %880

526:                                              ; preds = %514
  %527 = load i32, ptr %473, align 4, !tbaa !28
  store i32 %527, ptr %462, align 8, !tbaa !27
  store i32 0, ptr %460, align 8, !tbaa !25
  store ptr null, ptr %465, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %474, i8 0, i64 24, i1 false)
  %528 = call i32 @inflateInit2_(ptr noundef nonnull %465, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %533, label %530

530:                                              ; preds = %526
  %531 = load ptr, ptr %472, align 8, !tbaa !30
  call void @free(ptr noundef %531) #13
  %532 = load ptr, ptr %466, align 8, !tbaa !29
  call void @free(ptr noundef %532) #13
  store i32 0, ptr %462, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %880

533:                                              ; preds = %526, %511
  %534 = load i32, ptr %475, align 8, !tbaa !32
  %535 = icmp eq i32 %534, -1
  br i1 %535, label %539, label %536

536:                                              ; preds = %533
  %537 = load i32, ptr %469, align 4, !tbaa !33
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %544

539:                                              ; preds = %536, %533
  %540 = call i32 @inflateReset(ptr noundef nonnull %465) #13
  store i32 2, ptr %461, align 8, !tbaa !26
  %541 = load i32, ptr %469, align 4, !tbaa !33
  %542 = icmp ne i32 %541, -1
  %543 = zext i1 %542 to i32
  store i32 %543, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %475, align 8, !tbaa !32
  br label %731

544:                                              ; preds = %536
  %545 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %545, label %880 [
    i32 0, label %546
    i32 -5, label %546
  ]

546:                                              ; preds = %544, %544
  %547 = load i32, ptr %459, align 8, !tbaa !24
  %548 = icmp eq i32 %547, 0
  %549 = load i32, ptr %460, align 8, !tbaa !34
  br i1 %548, label %550, label %699

550:                                              ; preds = %546
  %551 = icmp eq i32 %549, 0
  %552 = load ptr, ptr %466, align 8, !tbaa !29
  %553 = ptrtoaddr ptr %552 to i64
  br i1 %551, label %659, label %554

554:                                              ; preds = %550
  %555 = load ptr, ptr %465, align 8, !tbaa !35
  %556 = icmp eq ptr %555, %552
  br i1 %556, label %659, label %557

557:                                              ; preds = %554
  %558 = ptrtoaddr ptr %555 to i64
  %559 = zext i32 %549 to i64
  %560 = icmp ult i32 %549, 4
  %561 = sub i64 %553, %558
  %562 = icmp ult i64 %561, 32
  %563 = select i1 %560, i1 true, i1 %562
  br i1 %563, label %603, label %564

564:                                              ; preds = %557
  %565 = icmp ult i32 %549, 32
  br i1 %565, label %587, label %566

566:                                              ; preds = %564
  %567 = and i64 %559, 28
  %568 = and i64 %559, 4294967264
  %569 = getelementptr i8, ptr %552, i64 %568
  %570 = getelementptr i8, ptr %555, i64 %568
  %571 = trunc nuw i64 %568 to i32
  %572 = sub i32 %549, %571
  br label %573

573:                                              ; preds = %573, %566
  %574 = phi i64 [ 0, %566 ], [ %581, %573 ]
  %575 = getelementptr i8, ptr %552, i64 %574
  %576 = getelementptr i8, ptr %555, i64 %574
  %577 = getelementptr i8, ptr %576, i64 16
  %578 = load <16 x i8>, ptr %576, align 1, !tbaa !36
  %579 = load <16 x i8>, ptr %577, align 1, !tbaa !36
  %580 = getelementptr i8, ptr %575, i64 16
  store <16 x i8> %578, ptr %575, align 1, !tbaa !36
  store <16 x i8> %579, ptr %580, align 1, !tbaa !36
  %581 = add nuw i64 %574, 32
  %582 = icmp eq i64 %581, %568
  br i1 %582, label %583, label %573, !llvm.loop !82

583:                                              ; preds = %573
  %584 = icmp eq i64 %568, %559
  br i1 %584, label %656, label %585

585:                                              ; preds = %583
  %586 = icmp eq i64 %567, 0
  br i1 %586, label %603, label %587, !prof !41

587:                                              ; preds = %585, %564
  %588 = phi i64 [ %568, %585 ], [ 0, %564 ]
  %589 = and i64 %559, 4294967292
  %590 = getelementptr i8, ptr %552, i64 %589
  %591 = getelementptr i8, ptr %555, i64 %589
  %592 = trunc nuw i64 %589 to i32
  %593 = sub i32 %549, %592
  br label %594

594:                                              ; preds = %594, %587
  %595 = phi i64 [ %588, %587 ], [ %599, %594 ]
  %596 = getelementptr i8, ptr %552, i64 %595
  %597 = getelementptr i8, ptr %555, i64 %595
  %598 = load <4 x i8>, ptr %597, align 1, !tbaa !36
  store <4 x i8> %598, ptr %596, align 1, !tbaa !36
  %599 = add nuw i64 %595, 4
  %600 = icmp eq i64 %599, %589
  br i1 %600, label %601, label %594, !llvm.loop !83

601:                                              ; preds = %594
  %602 = icmp eq i64 %589, %559
  br i1 %602, label %656, label %603

603:                                              ; preds = %601, %585, %557
  %604 = phi ptr [ %552, %557 ], [ %569, %585 ], [ %590, %601 ]
  %605 = phi ptr [ %555, %557 ], [ %570, %585 ], [ %591, %601 ]
  %606 = phi i32 [ %549, %557 ], [ %572, %585 ], [ %593, %601 ]
  %607 = add i32 %606, -1
  %608 = and i32 %606, 7
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %621, label %610

610:                                              ; preds = %610, %603
  %611 = phi ptr [ %617, %610 ], [ %604, %603 ]
  %612 = phi ptr [ %615, %610 ], [ %605, %603 ]
  %613 = phi i32 [ %618, %610 ], [ %606, %603 ]
  %614 = phi i32 [ %619, %610 ], [ 0, %603 ]
  %615 = getelementptr inbounds nuw i8, ptr %612, i64 1
  %616 = load i8, ptr %612, align 1, !tbaa !36
  %617 = getelementptr inbounds nuw i8, ptr %611, i64 1
  store i8 %616, ptr %611, align 1, !tbaa !36
  %618 = add i32 %613, -1
  %619 = add i32 %614, 1
  %620 = icmp eq i32 %619, %608
  br i1 %620, label %621, label %610, !llvm.loop !84

621:                                              ; preds = %610, %603
  %622 = phi ptr [ %604, %603 ], [ %617, %610 ]
  %623 = phi ptr [ %605, %603 ], [ %615, %610 ]
  %624 = phi i32 [ %606, %603 ], [ %618, %610 ]
  %625 = icmp ult i32 %607, 7
  br i1 %625, label %656, label %626

626:                                              ; preds = %626, %621
  %627 = phi ptr [ %653, %626 ], [ %622, %621 ]
  %628 = phi ptr [ %651, %626 ], [ %623, %621 ]
  %629 = phi i32 [ %654, %626 ], [ %624, %621 ]
  %630 = getelementptr inbounds nuw i8, ptr %628, i64 1
  %631 = load i8, ptr %628, align 1, !tbaa !36
  %632 = getelementptr inbounds nuw i8, ptr %627, i64 1
  store i8 %631, ptr %627, align 1, !tbaa !36
  %633 = getelementptr inbounds nuw i8, ptr %628, i64 2
  %634 = load i8, ptr %630, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %627, i64 2
  store i8 %634, ptr %632, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %628, i64 3
  %637 = load i8, ptr %633, align 1, !tbaa !36
  %638 = getelementptr inbounds nuw i8, ptr %627, i64 3
  store i8 %637, ptr %635, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %628, i64 4
  %640 = load i8, ptr %636, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %627, i64 4
  store i8 %640, ptr %638, align 1, !tbaa !36
  %642 = getelementptr inbounds nuw i8, ptr %628, i64 5
  %643 = load i8, ptr %639, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %627, i64 5
  store i8 %643, ptr %641, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %628, i64 6
  %646 = load i8, ptr %642, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %627, i64 6
  store i8 %646, ptr %644, align 1, !tbaa !36
  %648 = getelementptr inbounds nuw i8, ptr %628, i64 7
  %649 = load i8, ptr %645, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %627, i64 7
  store i8 %649, ptr %647, align 1, !tbaa !36
  %651 = getelementptr inbounds nuw i8, ptr %628, i64 8
  %652 = load i8, ptr %648, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %627, i64 8
  store i8 %652, ptr %650, align 1, !tbaa !36
  %654 = add i32 %629, -8
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %656, label %626, !llvm.loop !85

656:                                              ; preds = %626, %621, %601, %583
  %657 = load i32, ptr %460, align 8, !tbaa !34
  %658 = load ptr, ptr %466, align 8, !tbaa !29
  br label %659

659:                                              ; preds = %656, %554, %550
  %660 = phi ptr [ %658, %656 ], [ %552, %554 ], [ %552, %550 ]
  %661 = phi i32 [ %657, %656 ], [ %549, %554 ], [ 0, %550 ]
  %662 = zext i32 %661 to i64
  %663 = getelementptr inbounds nuw i8, ptr %660, i64 %662
  %664 = load i32, ptr %462, align 8, !tbaa !27
  %665 = sub i32 %664, %661
  store i32 0, ptr %467, align 4, !tbaa !17
  %666 = tail call ptr @__errno_location() #16
  store i32 0, ptr %666, align 4, !tbaa !4
  br label %667

667:                                              ; preds = %678, %659
  %668 = phi i32 [ 0, %659 ], [ %679, %678 ]
  %669 = sub i32 %665, %668
  %670 = call i32 @llvm.umin.i32(i32 %669, i32 1073741824)
  %671 = load i32, ptr %468, align 4, !tbaa !46
  %672 = zext i32 %668 to i64
  %673 = getelementptr inbounds nuw i8, ptr %663, i64 %672
  %674 = zext nneg i32 %670 to i64
  %675 = call i64 @read(i32 noundef %671, ptr noundef %673, i64 noundef %674) #13
  %676 = trunc i64 %675 to i32
  %677 = icmp slt i32 %676, 1
  br i1 %677, label %681, label %678

678:                                              ; preds = %667
  %679 = add i32 %668, %676
  %680 = icmp ult i32 %679, %665
  br i1 %680, label %667, label %694, !llvm.loop !47

681:                                              ; preds = %667
  %682 = icmp slt i32 %676, 0
  br i1 %682, label %683, label %690

683:                                              ; preds = %681
  %684 = load i32, ptr %666, align 4, !tbaa !4
  %685 = icmp eq i32 %684, 11
  br i1 %685, label %686, label %691

686:                                              ; preds = %683
  store i32 1, ptr %467, align 4, !tbaa !17
  %687 = icmp eq i32 %668, 0
  br i1 %687, label %688, label %694

688:                                              ; preds = %686
  %689 = load i32, ptr %666, align 4, !tbaa !4
  br label %691

690:                                              ; preds = %681
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %694

691:                                              ; preds = %688, %683
  %692 = phi i32 [ %689, %688 ], [ %684, %683 ]
  %693 = call ptr @strerror(i32 noundef %692) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %693) #13
  br label %880

694:                                              ; preds = %690, %686, %678
  %695 = phi i32 [ %668, %686 ], [ %668, %690 ], [ %679, %678 ]
  %696 = load i32, ptr %460, align 8, !tbaa !34
  %697 = add i32 %696, %695
  store i32 %697, ptr %460, align 8, !tbaa !34
  %698 = load ptr, ptr %466, align 8, !tbaa !29
  store ptr %698, ptr %465, align 8, !tbaa !35
  br label %699

699:                                              ; preds = %694, %546
  %700 = phi i32 [ %697, %694 ], [ %549, %546 ]
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %731, label %702

702:                                              ; preds = %699
  %703 = load i32, ptr %467, align 4, !tbaa !17
  %704 = icmp ne i32 %703, 0
  %705 = icmp ult i32 %700, 4
  %706 = and i1 %705, %704
  br i1 %706, label %731, label %707

707:                                              ; preds = %702
  %708 = icmp ugt i32 %700, 3
  %709 = load ptr, ptr %465, align 8, !tbaa !35
  br i1 %708, label %710, label %727

710:                                              ; preds = %707
  %711 = load i8, ptr %709, align 1, !tbaa !36
  %712 = icmp eq i8 %711, 31
  br i1 %712, label %713, label %727

713:                                              ; preds = %710
  %714 = getelementptr inbounds nuw i8, ptr %709, i64 1
  %715 = load i8, ptr %714, align 1, !tbaa !36
  %716 = icmp eq i8 %715, -117
  br i1 %716, label %717, label %727

717:                                              ; preds = %713
  %718 = getelementptr inbounds nuw i8, ptr %709, i64 2
  %719 = load i8, ptr %718, align 1, !tbaa !36
  %720 = icmp eq i8 %719, 8
  br i1 %720, label %721, label %727

721:                                              ; preds = %717
  %722 = getelementptr inbounds nuw i8, ptr %709, i64 3
  %723 = load i8, ptr %722, align 1, !tbaa !36
  %724 = icmp ult i8 %723, 32
  br i1 %724, label %725, label %727

725:                                              ; preds = %721
  %726 = call i32 @inflateReset(ptr noundef nonnull %465) #13
  store i32 2, ptr %461, align 8, !tbaa !26
  store i32 1, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %475, align 8, !tbaa !32
  br label %867

727:                                              ; preds = %721, %717, %713, %710, %707
  %728 = load ptr, ptr %472, align 8, !tbaa !30
  store ptr %728, ptr %458, align 8, !tbaa !20
  %729 = zext i32 %700 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %728, ptr align 1 %709, i64 %729, i1 false)
  %730 = load i32, ptr %460, align 8, !tbaa !34
  store i32 %730, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %460, align 8, !tbaa !34
  store i32 1, ptr %461, align 8, !tbaa !26
  br label %869

731:                                              ; preds = %702, %699, %539
  %732 = load i32, ptr %461, align 8, !tbaa !26
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %1028, label %867

734:                                              ; preds = %509
  %735 = load ptr, ptr %472, align 8, !tbaa !30
  %736 = load i32, ptr %462, align 8, !tbaa !27
  %737 = shl i32 %736, 1
  store i32 0, ptr %467, align 4, !tbaa !17
  %738 = tail call ptr @__errno_location() #16
  store i32 0, ptr %738, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %739

739:                                              ; preds = %750, %734
  %740 = phi i32 [ %752, %750 ], [ 0, %734 ]
  %741 = sub i32 %737, %740
  %742 = call i32 @llvm.umin.i32(i32 %741, i32 1073741824)
  %743 = load i32, ptr %468, align 4, !tbaa !46
  %744 = zext i32 %740 to i64
  %745 = getelementptr inbounds nuw i8, ptr %735, i64 %744
  %746 = zext nneg i32 %742 to i64
  %747 = call i64 @read(i32 noundef %743, ptr noundef %745, i64 noundef %746) #13
  %748 = trunc i64 %747 to i32
  %749 = icmp slt i32 %748, 1
  br i1 %749, label %754, label %750

750:                                              ; preds = %739
  %751 = load i32, ptr %0, align 4, !tbaa !4
  %752 = add i32 %751, %748
  store i32 %752, ptr %0, align 4, !tbaa !4
  %753 = icmp ult i32 %752, %737
  br i1 %753, label %739, label %768, !llvm.loop !47

754:                                              ; preds = %739
  %755 = icmp slt i32 %748, 0
  br i1 %755, label %756, label %764

756:                                              ; preds = %754
  %757 = load i32, ptr %738, align 4, !tbaa !4
  %758 = icmp eq i32 %757, 11
  br i1 %758, label %759, label %765

759:                                              ; preds = %756
  store i32 1, ptr %467, align 4, !tbaa !17
  %760 = load i32, ptr %0, align 4, !tbaa !4
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %768

762:                                              ; preds = %759
  %763 = load i32, ptr %738, align 4, !tbaa !4
  br label %765

764:                                              ; preds = %754
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %768

765:                                              ; preds = %762, %756
  %766 = phi i32 [ %763, %762 ], [ %757, %756 ]
  %767 = call ptr @strerror(i32 noundef %766) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %767) #13
  br label %880

768:                                              ; preds = %764, %759, %750
  %769 = load ptr, ptr %472, align 8, !tbaa !30
  store ptr %769, ptr %458, align 8, !tbaa !20
  br label %1028

770:                                              ; preds = %509
  %771 = load i32, ptr %462, align 8, !tbaa !27
  %772 = shl i32 %771, 1
  store i32 %772, ptr %463, align 8, !tbaa !48
  %773 = load ptr, ptr %472, align 8, !tbaa !30
  store ptr %773, ptr %464, align 8, !tbaa !49
  br label %774

774:                                              ; preds = %846, %770
  %775 = phi i32 [ 0, %770 ], [ %826, %846 ]
  %776 = load i32, ptr %460, align 8, !tbaa !34
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %825

778:                                              ; preds = %774
  %779 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %779, label %857 [
    i32 0, label %780
    i32 -5, label %780
  ]

780:                                              ; preds = %778, %778
  %781 = load i32, ptr %459, align 8, !tbaa !24
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %821

783:                                              ; preds = %780
  %784 = load ptr, ptr %466, align 8, !tbaa !29
  %785 = load i32, ptr %462, align 8, !tbaa !27
  store i32 0, ptr %467, align 4, !tbaa !17
  %786 = tail call ptr @__errno_location() #16
  store i32 0, ptr %786, align 4, !tbaa !4
  br label %787

787:                                              ; preds = %798, %783
  %788 = phi i32 [ 0, %783 ], [ %799, %798 ]
  %789 = sub i32 %785, %788
  %790 = call i32 @llvm.umin.i32(i32 %789, i32 1073741824)
  %791 = load i32, ptr %468, align 4, !tbaa !46
  %792 = zext i32 %788 to i64
  %793 = getelementptr inbounds nuw i8, ptr %784, i64 %792
  %794 = zext nneg i32 %790 to i64
  %795 = call i64 @read(i32 noundef %791, ptr noundef %793, i64 noundef %794) #13
  %796 = trunc i64 %795 to i32
  %797 = icmp slt i32 %796, 1
  br i1 %797, label %801, label %798

798:                                              ; preds = %787
  %799 = add i32 %788, %796
  %800 = icmp ult i32 %799, %785
  br i1 %800, label %787, label %815, !llvm.loop !47

801:                                              ; preds = %787
  %802 = icmp slt i32 %796, 0
  br i1 %802, label %803, label %810

803:                                              ; preds = %801
  %804 = load i32, ptr %786, align 4, !tbaa !4
  %805 = icmp eq i32 %804, 11
  br i1 %805, label %806, label %811

806:                                              ; preds = %803
  store i32 1, ptr %467, align 4, !tbaa !17
  %807 = icmp eq i32 %788, 0
  br i1 %807, label %808, label %815

808:                                              ; preds = %806
  %809 = load i32, ptr %786, align 4, !tbaa !4
  br label %811

810:                                              ; preds = %801
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %815

811:                                              ; preds = %808, %803
  %812 = phi i32 [ %809, %808 ], [ %804, %803 ]
  %813 = call ptr @strerror(i32 noundef %812) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %813) #13
  %814 = load i32, ptr %9, align 8, !tbaa !16
  br label %857

815:                                              ; preds = %810, %806, %798
  %816 = phi i32 [ %788, %806 ], [ %788, %810 ], [ %799, %798 ]
  %817 = load i32, ptr %460, align 8, !tbaa !34
  %818 = add i32 %817, %816
  store i32 %818, ptr %460, align 8, !tbaa !34
  %819 = load ptr, ptr %466, align 8, !tbaa !29
  store ptr %819, ptr %465, align 8, !tbaa !35
  %820 = icmp eq i32 %818, 0
  br i1 %820, label %821, label %825

821:                                              ; preds = %815, %780
  %822 = load i32, ptr %467, align 4, !tbaa !17
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %857

824:                                              ; preds = %821
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %857

825:                                              ; preds = %815, %774
  %826 = call i32 @inflate(ptr noundef nonnull %465, i32 noundef 0) #13
  %827 = load i32, ptr %463, align 8, !tbaa !48
  %828 = icmp ult i32 %827, %772
  br i1 %828, label %829, label %830

829:                                              ; preds = %825
  store i32 0, ptr %469, align 4, !tbaa !33
  br label %830

830:                                              ; preds = %829, %825
  switch i32 %826, label %846 [
    i32 -2, label %831
    i32 2, label %831
    i32 -4, label %832
    i32 -3, label %833
  ]

831:                                              ; preds = %830, %830
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %857

832:                                              ; preds = %830
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %850

833:                                              ; preds = %830
  %834 = load i32, ptr %469, align 4, !tbaa !33
  %835 = icmp eq i32 %834, 1
  br i1 %835, label %836, label %842

836:                                              ; preds = %833
  store i32 0, ptr %460, align 8, !tbaa !34
  store i32 1, ptr %459, align 8, !tbaa !24
  store i32 0, ptr %461, align 8, !tbaa !26
  %837 = sub i32 %772, %827
  store i32 %837, ptr %0, align 8, !tbaa !19
  %838 = load ptr, ptr %464, align 8, !tbaa !49
  %839 = zext i32 %837 to i64
  %840 = sub nsw i64 0, %839
  %841 = getelementptr inbounds i8, ptr %838, i64 %840
  store ptr %841, ptr %458, align 8, !tbaa !20
  br label %867

842:                                              ; preds = %833
  %843 = load ptr, ptr %470, align 8, !tbaa !50
  %844 = icmp eq ptr %843, null
  %845 = select i1 %844, ptr @.str.6, ptr %843
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %845) #13
  br label %850

846:                                              ; preds = %830
  %847 = icmp ne i32 %827, 0
  %848 = icmp ne i32 %826, 1
  %849 = select i1 %847, i1 %848, i1 false
  br i1 %849, label %774, label %857, !llvm.loop !51

850:                                              ; preds = %842, %832
  %851 = load i32, ptr %463, align 8, !tbaa !48
  %852 = sub i32 %772, %851
  store i32 %852, ptr %0, align 8, !tbaa !19
  %853 = load ptr, ptr %464, align 8, !tbaa !49
  %854 = zext i32 %852 to i64
  %855 = sub nsw i64 0, %854
  %856 = getelementptr inbounds i8, ptr %853, i64 %855
  store ptr %856, ptr %458, align 8, !tbaa !20
  br label %880

857:                                              ; preds = %846, %831, %824, %821, %811, %778
  %858 = phi i32 [ %814, %811 ], [ %775, %821 ], [ %775, %824 ], [ %826, %831 ], [ %826, %846 ], [ %779, %778 ]
  %859 = load i32, ptr %463, align 8, !tbaa !48
  %860 = sub i32 %772, %859
  store i32 %860, ptr %0, align 8, !tbaa !19
  %861 = load ptr, ptr %464, align 8, !tbaa !49
  %862 = zext i32 %860 to i64
  %863 = sub nsw i64 0, %862
  %864 = getelementptr inbounds i8, ptr %861, i64 %863
  store ptr %864, ptr %458, align 8, !tbaa !20
  switch i32 %858, label %880 [
    i32 1, label %865
    i32 0, label %867
  ]

865:                                              ; preds = %857
  store i32 0, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %461, align 8, !tbaa !26
  br label %867

866:                                              ; preds = %509
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %880

867:                                              ; preds = %865, %857, %836, %731, %725
  %868 = load i32, ptr %0, align 8, !tbaa !19
  br label %869

869:                                              ; preds = %867, %727
  %870 = phi i32 [ %868, %867 ], [ %730, %727 ]
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %1028

872:                                              ; preds = %869
  %873 = load i32, ptr %459, align 8, !tbaa !24
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %878, label %875

875:                                              ; preds = %872
  %876 = load i32, ptr %460, align 8, !tbaa !34
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %1028, label %878

878:                                              ; preds = %875, %872
  %879 = load i32, ptr %461, align 8, !tbaa !26
  br label %509, !llvm.loop !52

880:                                              ; preds = %866, %857, %850, %765, %691, %544, %530, %525
  %881 = load i32, ptr %0, align 8, !tbaa !19
  %882 = icmp eq i32 %881, 0
  %883 = sext i1 %882 to i32
  br label %1028

884:                                              ; preds = %504
  %885 = icmp eq i32 %502, 1
  br i1 %885, label %886, label %915

886:                                              ; preds = %884
  store i32 0, ptr %467, align 4, !tbaa !17
  %887 = tail call ptr @__errno_location() #16
  store i32 0, ptr %887, align 4, !tbaa !4
  br label %888

888:                                              ; preds = %899, %886
  %889 = phi i32 [ 0, %886 ], [ %900, %899 ]
  %890 = sub i32 %481, %889
  %891 = call i32 @llvm.umin.i32(i32 %890, i32 1073741824)
  %892 = load i32, ptr %468, align 4, !tbaa !46
  %893 = zext i32 %889 to i64
  %894 = getelementptr inbounds nuw i8, ptr %477, i64 %893
  %895 = zext nneg i32 %891 to i64
  %896 = call i64 @read(i32 noundef %892, ptr noundef %894, i64 noundef %895) #13
  %897 = trunc i64 %896 to i32
  %898 = icmp slt i32 %897, 1
  br i1 %898, label %902, label %899

899:                                              ; preds = %888
  %900 = add i32 %889, %897
  %901 = icmp ult i32 %900, %481
  br i1 %901, label %888, label %1013, !llvm.loop !47

902:                                              ; preds = %888
  %903 = icmp slt i32 %897, 0
  br i1 %903, label %904, label %914

904:                                              ; preds = %902
  %905 = load i32, ptr %887, align 4, !tbaa !4
  %906 = icmp eq i32 %905, 11
  br i1 %906, label %907, label %911

907:                                              ; preds = %904
  store i32 1, ptr %467, align 4, !tbaa !17
  %908 = icmp eq i32 %889, 0
  br i1 %908, label %909, label %1015

909:                                              ; preds = %907
  %910 = load i32, ptr %887, align 4, !tbaa !4
  br label %911

911:                                              ; preds = %909, %904
  %912 = phi i32 [ %910, %909 ], [ %905, %904 ]
  %913 = call ptr @strerror(i32 noundef %912) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %913) #13
  br label %1015

914:                                              ; preds = %902
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %1015

915:                                              ; preds = %884
  store i32 %481, ptr %463, align 8, !tbaa !58
  store ptr %477, ptr %464, align 8, !tbaa !59
  br label %916

916:                                              ; preds = %983, %915
  %917 = phi i32 [ 0, %915 ], [ %968, %983 ]
  %918 = load i32, ptr %460, align 8, !tbaa !34
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %967

920:                                              ; preds = %916
  %921 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %921, label %995 [
    i32 0, label %922
    i32 -5, label %922
  ]

922:                                              ; preds = %920, %920
  %923 = load i32, ptr %459, align 8, !tbaa !24
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %963

925:                                              ; preds = %922
  %926 = load ptr, ptr %466, align 8, !tbaa !29
  %927 = load i32, ptr %462, align 8, !tbaa !27
  store i32 0, ptr %467, align 4, !tbaa !17
  %928 = tail call ptr @__errno_location() #16
  store i32 0, ptr %928, align 4, !tbaa !4
  br label %929

929:                                              ; preds = %940, %925
  %930 = phi i32 [ 0, %925 ], [ %941, %940 ]
  %931 = sub i32 %927, %930
  %932 = call i32 @llvm.umin.i32(i32 %931, i32 1073741824)
  %933 = load i32, ptr %468, align 4, !tbaa !46
  %934 = zext i32 %930 to i64
  %935 = getelementptr inbounds nuw i8, ptr %926, i64 %934
  %936 = zext nneg i32 %932 to i64
  %937 = call i64 @read(i32 noundef %933, ptr noundef %935, i64 noundef %936) #13
  %938 = trunc i64 %937 to i32
  %939 = icmp slt i32 %938, 1
  br i1 %939, label %943, label %940

940:                                              ; preds = %929
  %941 = add i32 %930, %938
  %942 = icmp ult i32 %941, %927
  br i1 %942, label %929, label %957, !llvm.loop !47

943:                                              ; preds = %929
  %944 = icmp slt i32 %938, 0
  br i1 %944, label %945, label %952

945:                                              ; preds = %943
  %946 = load i32, ptr %928, align 4, !tbaa !4
  %947 = icmp eq i32 %946, 11
  br i1 %947, label %948, label %953

948:                                              ; preds = %945
  store i32 1, ptr %467, align 4, !tbaa !17
  %949 = icmp eq i32 %930, 0
  br i1 %949, label %950, label %957

950:                                              ; preds = %948
  %951 = load i32, ptr %928, align 4, !tbaa !4
  br label %953

952:                                              ; preds = %943
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %957

953:                                              ; preds = %950, %945
  %954 = phi i32 [ %951, %950 ], [ %946, %945 ]
  %955 = call ptr @strerror(i32 noundef %954) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %955) #13
  %956 = load i32, ptr %9, align 8, !tbaa !16
  br label %995

957:                                              ; preds = %952, %948, %940
  %958 = phi i32 [ %930, %948 ], [ %930, %952 ], [ %941, %940 ]
  %959 = load i32, ptr %460, align 8, !tbaa !34
  %960 = add i32 %959, %958
  store i32 %960, ptr %460, align 8, !tbaa !34
  %961 = load ptr, ptr %466, align 8, !tbaa !29
  store ptr %961, ptr %465, align 8, !tbaa !35
  %962 = icmp eq i32 %960, 0
  br i1 %962, label %963, label %967

963:                                              ; preds = %957, %922
  %964 = load i32, ptr %467, align 4, !tbaa !17
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %995

966:                                              ; preds = %963
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %995

967:                                              ; preds = %957, %916
  %968 = call i32 @inflate(ptr noundef nonnull %465, i32 noundef 0) #13
  %969 = load i32, ptr %463, align 8, !tbaa !48
  %970 = icmp ult i32 %969, %481
  br i1 %970, label %971, label %972

971:                                              ; preds = %967
  store i32 0, ptr %469, align 4, !tbaa !33
  br label %972

972:                                              ; preds = %971, %967
  switch i32 %968, label %983 [
    i32 -2, label %973
    i32 2, label %973
    i32 -4, label %974
    i32 -3, label %975
  ]

973:                                              ; preds = %972, %972
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %995

974:                                              ; preds = %972
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %987

975:                                              ; preds = %972
  %976 = load i32, ptr %469, align 4, !tbaa !33
  %977 = icmp eq i32 %976, 1
  br i1 %977, label %978, label %979

978:                                              ; preds = %975
  store i32 0, ptr %460, align 8, !tbaa !34
  store i32 1, ptr %459, align 8, !tbaa !24
  store i32 0, ptr %461, align 8, !tbaa !26
  br label %987

979:                                              ; preds = %975
  %980 = load ptr, ptr %470, align 8, !tbaa !50
  %981 = icmp eq ptr %980, null
  %982 = select i1 %981, ptr @.str.6, ptr %980
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %982) #13
  br label %987

983:                                              ; preds = %972
  %984 = icmp ne i32 %969, 0
  %985 = icmp ne i32 %968, 1
  %986 = select i1 %984, i1 %985, i1 false
  br i1 %986, label %916, label %995, !llvm.loop !51

987:                                              ; preds = %979, %978, %974
  %988 = phi i32 [ -3, %979 ], [ 0, %978 ], [ -4, %974 ]
  %989 = load i32, ptr %463, align 8, !tbaa !48
  %990 = sub i32 %481, %989
  %991 = load ptr, ptr %464, align 8, !tbaa !49
  %992 = zext i32 %990 to i64
  %993 = sub nsw i64 0, %992
  %994 = getelementptr inbounds i8, ptr %991, i64 %993
  store ptr %994, ptr %458, align 8, !tbaa !20
  br label %1005

995:                                              ; preds = %983, %973, %966, %963, %953, %920
  %996 = phi i32 [ %956, %953 ], [ %917, %963 ], [ %917, %966 ], [ %968, %973 ], [ %968, %983 ], [ %921, %920 ]
  %997 = load i32, ptr %463, align 8, !tbaa !48
  %998 = sub i32 %481, %997
  %999 = load ptr, ptr %464, align 8, !tbaa !49
  %1000 = zext i32 %998 to i64
  %1001 = sub nsw i64 0, %1000
  %1002 = getelementptr inbounds i8, ptr %999, i64 %1001
  store ptr %1002, ptr %458, align 8, !tbaa !20
  %1003 = icmp eq i32 %996, 1
  br i1 %1003, label %1004, label %1005

1004:                                             ; preds = %995
  store i32 0, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %461, align 8, !tbaa !26
  br label %1010

1005:                                             ; preds = %995, %987
  %1006 = phi i64 [ %992, %987 ], [ %1000, %995 ]
  %1007 = phi i32 [ %988, %987 ], [ %996, %995 ]
  %1008 = icmp ne i32 %1007, 0
  %1009 = sext i1 %1008 to i32
  br label %1010

1010:                                             ; preds = %1005, %1004
  %1011 = phi i64 [ %1000, %1004 ], [ %1006, %1005 ]
  %1012 = phi i32 [ 0, %1004 ], [ %1009, %1005 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1015

1013:                                             ; preds = %899
  %1014 = zext i32 %900 to i64
  br label %1015

1015:                                             ; preds = %1013, %1010, %914, %911, %907, %484
  %1016 = phi i64 [ %1014, %1013 ], [ %893, %914 ], [ %893, %911 ], [ %893, %907 ], [ %487, %484 ], [ %1011, %1010 ]
  %1017 = phi i32 [ 0, %1013 ], [ 0, %914 ], [ -1, %911 ], [ 0, %907 ], [ %494, %484 ], [ %1012, %1010 ]
  %1018 = load i64, ptr %471, align 8, !tbaa !21
  %1019 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1018, i64 %1016), !nosanitize !22
  %1020 = extractvalue { i64, i1 } %1019, 1, !nosanitize !22
  br i1 %1020, label %1021, label %1022, !prof !23, !nosanitize !22

1021:                                             ; preds = %1015
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

1022:                                             ; preds = %1015
  %1023 = extractvalue { i64, i1 } %1019, 0, !nosanitize !22
  %1024 = add i64 %1016, %479
  %1025 = getelementptr inbounds nuw i8, ptr %477, i64 %1016
  %1026 = sub i64 %478, %1016
  store i64 %1023, ptr %471, align 8, !tbaa !21
  %1027 = icmp eq i64 %1026, 0
  br i1 %1027, label %1040, label %1028

1028:                                             ; preds = %1022, %880, %875, %869, %768, %731
  %1029 = phi i32 [ %1017, %1022 ], [ %883, %880 ], [ 0, %768 ], [ 0, %731 ], [ 0, %869 ], [ 0, %875 ]
  %1030 = phi i64 [ %1024, %1022 ], [ %479, %880 ], [ %479, %768 ], [ %479, %731 ], [ %479, %869 ], [ %479, %875 ]
  %1031 = phi i64 [ %1026, %1022 ], [ %478, %880 ], [ %478, %768 ], [ %478, %731 ], [ %478, %869 ], [ %478, %875 ]
  %1032 = phi ptr [ %1025, %1022 ], [ %477, %880 ], [ %477, %768 ], [ %477, %731 ], [ %477, %869 ], [ %477, %875 ]
  %1033 = icmp eq i32 %1029, 0
  br i1 %1033, label %476, label %1034, !llvm.loop !60

1034:                                             ; preds = %1028
  %1035 = load i32, ptr %459, align 8, !tbaa !24
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1040, label %1037

1037:                                             ; preds = %1034, %498
  %1038 = phi i64 [ %1030, %1034 ], [ %479, %498 ]
  %1039 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1039, align 4, !tbaa !61
  br label %1040

1040:                                             ; preds = %1037, %1034, %1022
  %1041 = phi i64 [ %1030, %1034 ], [ %1038, %1037 ], [ %1024, %1022 ]
  %1042 = freeze i64 %1041
  %1043 = icmp eq i64 %1042, 0
  %1044 = load i8, ptr %2, align 1
  %1045 = zext i8 %1044 to i32
  br i1 %1043, label %1046, label %1047

1046:                                             ; preds = %1040, %439, %430, %423, %337, %263, %116, %102, %97
  br label %1047

1047:                                             ; preds = %1046, %1040, %25, %11, %4, %1
  %1048 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %1046 ], [ %1045, %1040 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1048
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %752, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %752

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
  br i1 %260, label %752, label %261

261:                                              ; preds = %257, %254, %254
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %262 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %263 = load i64, ptr %262, align 8, !tbaa !18
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %687, label %265

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

282:                                              ; preds = %682, %265
  %283 = phi i64 [ %683, %682 ], [ %263, %265 ]
  %284 = load i32, ptr %1, align 8, !tbaa !19
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %302, label %286

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
  %301 = extractvalue { i64, i1 } %300, 0, !nosanitize !22
  store i64 %301, ptr %262, align 8, !tbaa !18
  br label %682

302:                                              ; preds = %282
  %303 = load i32, ptr %268, align 8, !tbaa !24
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %302
  %306 = load i32, ptr %269, align 8, !tbaa !25
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %685, label %308

308:                                              ; preds = %305, %302
  br label %309

309:                                              ; preds = %679, %308
  %310 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %310, label %667 [
    i32 0, label %311
    i32 1, label %534
    i32 2, label %570
  ]

311:                                              ; preds = %309
  %312 = load i32, ptr %270, align 8, !tbaa !27
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %333

314:                                              ; preds = %311
  %315 = load i32, ptr %279, align 4, !tbaa !28
  %316 = zext i32 %315 to i64
  %317 = tail call noalias ptr @malloc(i64 noundef %316) #15
  store ptr %317, ptr %275, align 8, !tbaa !29
  %318 = load i32, ptr %279, align 4, !tbaa !28
  %319 = shl i32 %318, 1
  %320 = zext i32 %319 to i64
  %321 = tail call noalias ptr @malloc(i64 noundef %320) #15
  store ptr %321, ptr %272, align 8, !tbaa !30
  %322 = icmp eq ptr %317, null
  %323 = icmp eq ptr %321, null
  %324 = or i1 %322, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %314
  tail call void @free(ptr noundef %321) #13
  tail call void @free(ptr noundef %317) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %752

326:                                              ; preds = %314
  %327 = load i32, ptr %279, align 4, !tbaa !28
  store i32 %327, ptr %270, align 8, !tbaa !27
  store i32 0, ptr %269, align 8, !tbaa !25
  store ptr null, ptr %274, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %280, i8 0, i64 24, i1 false)
  %328 = tail call i32 @inflateInit2_(ptr noundef nonnull %274, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %326
  %331 = load ptr, ptr %272, align 8, !tbaa !30
  tail call void @free(ptr noundef %331) #13
  %332 = load ptr, ptr %275, align 8, !tbaa !29
  tail call void @free(ptr noundef %332) #13
  store i32 0, ptr %270, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %752

333:                                              ; preds = %326, %311
  %334 = load i32, ptr %281, align 8, !tbaa !32
  %335 = icmp eq i32 %334, -1
  br i1 %335, label %339, label %336

336:                                              ; preds = %333
  %337 = load i32, ptr %278, align 4, !tbaa !33
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %336, %333
  %340 = tail call i32 @inflateReset(ptr noundef nonnull %274) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %341 = load i32, ptr %278, align 4, !tbaa !33
  %342 = icmp ne i32 %341, -1
  %343 = zext i1 %342 to i32
  store i32 %343, ptr %278, align 4, !tbaa !33
  store i32 0, ptr %281, align 8, !tbaa !32
  br label %531

344:                                              ; preds = %336
  %345 = load i32, ptr %255, align 8, !tbaa !16
  switch i32 %345, label %752 [
    i32 0, label %346
    i32 -5, label %346
  ]

346:                                              ; preds = %344, %344
  %347 = load i32, ptr %268, align 8, !tbaa !24
  %348 = icmp eq i32 %347, 0
  %349 = load i32, ptr %269, align 8, !tbaa !34
  br i1 %348, label %350, label %499

350:                                              ; preds = %346
  %351 = icmp eq i32 %349, 0
  %352 = load ptr, ptr %275, align 8, !tbaa !29
  %353 = ptrtoaddr ptr %352 to i64
  br i1 %351, label %459, label %354

354:                                              ; preds = %350
  %355 = load ptr, ptr %274, align 8, !tbaa !35
  %356 = icmp eq ptr %355, %352
  br i1 %356, label %459, label %357

357:                                              ; preds = %354
  %358 = ptrtoaddr ptr %355 to i64
  %359 = zext i32 %349 to i64
  %360 = icmp ult i32 %349, 4
  %361 = sub i64 %353, %358
  %362 = icmp ult i64 %361, 32
  %363 = select i1 %360, i1 true, i1 %362
  br i1 %363, label %403, label %364

364:                                              ; preds = %357
  %365 = icmp ult i32 %349, 32
  br i1 %365, label %387, label %366

366:                                              ; preds = %364
  %367 = and i64 %359, 28
  %368 = and i64 %359, 4294967264
  %369 = getelementptr i8, ptr %352, i64 %368
  %370 = getelementptr i8, ptr %355, i64 %368
  %371 = trunc nuw i64 %368 to i32
  %372 = sub i32 %349, %371
  br label %373

373:                                              ; preds = %373, %366
  %374 = phi i64 [ 0, %366 ], [ %381, %373 ]
  %375 = getelementptr i8, ptr %352, i64 %374
  %376 = getelementptr i8, ptr %355, i64 %374
  %377 = getelementptr i8, ptr %376, i64 16
  %378 = load <16 x i8>, ptr %376, align 1, !tbaa !36
  %379 = load <16 x i8>, ptr %377, align 1, !tbaa !36
  %380 = getelementptr i8, ptr %375, i64 16
  store <16 x i8> %378, ptr %375, align 1, !tbaa !36
  store <16 x i8> %379, ptr %380, align 1, !tbaa !36
  %381 = add nuw i64 %374, 32
  %382 = icmp eq i64 %381, %368
  br i1 %382, label %383, label %373, !llvm.loop !90

383:                                              ; preds = %373
  %384 = icmp eq i64 %368, %359
  br i1 %384, label %456, label %385

385:                                              ; preds = %383
  %386 = icmp eq i64 %367, 0
  br i1 %386, label %403, label %387, !prof !41

387:                                              ; preds = %385, %364
  %388 = phi i64 [ %368, %385 ], [ 0, %364 ]
  %389 = and i64 %359, 4294967292
  %390 = getelementptr i8, ptr %352, i64 %389
  %391 = getelementptr i8, ptr %355, i64 %389
  %392 = trunc nuw i64 %389 to i32
  %393 = sub i32 %349, %392
  br label %394

394:                                              ; preds = %394, %387
  %395 = phi i64 [ %388, %387 ], [ %399, %394 ]
  %396 = getelementptr i8, ptr %352, i64 %395
  %397 = getelementptr i8, ptr %355, i64 %395
  %398 = load <4 x i8>, ptr %397, align 1, !tbaa !36
  store <4 x i8> %398, ptr %396, align 1, !tbaa !36
  %399 = add nuw i64 %395, 4
  %400 = icmp eq i64 %399, %389
  br i1 %400, label %401, label %394, !llvm.loop !91

401:                                              ; preds = %394
  %402 = icmp eq i64 %389, %359
  br i1 %402, label %456, label %403

403:                                              ; preds = %401, %385, %357
  %404 = phi ptr [ %352, %357 ], [ %369, %385 ], [ %390, %401 ]
  %405 = phi ptr [ %355, %357 ], [ %370, %385 ], [ %391, %401 ]
  %406 = phi i32 [ %349, %357 ], [ %372, %385 ], [ %393, %401 ]
  %407 = add i32 %406, -1
  %408 = and i32 %406, 7
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %421, label %410

410:                                              ; preds = %410, %403
  %411 = phi ptr [ %417, %410 ], [ %404, %403 ]
  %412 = phi ptr [ %415, %410 ], [ %405, %403 ]
  %413 = phi i32 [ %418, %410 ], [ %406, %403 ]
  %414 = phi i32 [ %419, %410 ], [ 0, %403 ]
  %415 = getelementptr inbounds nuw i8, ptr %412, i64 1
  %416 = load i8, ptr %412, align 1, !tbaa !36
  %417 = getelementptr inbounds nuw i8, ptr %411, i64 1
  store i8 %416, ptr %411, align 1, !tbaa !36
  %418 = add i32 %413, -1
  %419 = add i32 %414, 1
  %420 = icmp eq i32 %419, %408
  br i1 %420, label %421, label %410, !llvm.loop !92

421:                                              ; preds = %410, %403
  %422 = phi ptr [ %404, %403 ], [ %417, %410 ]
  %423 = phi ptr [ %405, %403 ], [ %415, %410 ]
  %424 = phi i32 [ %406, %403 ], [ %418, %410 ]
  %425 = icmp ult i32 %407, 7
  br i1 %425, label %456, label %426

426:                                              ; preds = %426, %421
  %427 = phi ptr [ %453, %426 ], [ %422, %421 ]
  %428 = phi ptr [ %451, %426 ], [ %423, %421 ]
  %429 = phi i32 [ %454, %426 ], [ %424, %421 ]
  %430 = getelementptr inbounds nuw i8, ptr %428, i64 1
  %431 = load i8, ptr %428, align 1, !tbaa !36
  %432 = getelementptr inbounds nuw i8, ptr %427, i64 1
  store i8 %431, ptr %427, align 1, !tbaa !36
  %433 = getelementptr inbounds nuw i8, ptr %428, i64 2
  %434 = load i8, ptr %430, align 1, !tbaa !36
  %435 = getelementptr inbounds nuw i8, ptr %427, i64 2
  store i8 %434, ptr %432, align 1, !tbaa !36
  %436 = getelementptr inbounds nuw i8, ptr %428, i64 3
  %437 = load i8, ptr %433, align 1, !tbaa !36
  %438 = getelementptr inbounds nuw i8, ptr %427, i64 3
  store i8 %437, ptr %435, align 1, !tbaa !36
  %439 = getelementptr inbounds nuw i8, ptr %428, i64 4
  %440 = load i8, ptr %436, align 1, !tbaa !36
  %441 = getelementptr inbounds nuw i8, ptr %427, i64 4
  store i8 %440, ptr %438, align 1, !tbaa !36
  %442 = getelementptr inbounds nuw i8, ptr %428, i64 5
  %443 = load i8, ptr %439, align 1, !tbaa !36
  %444 = getelementptr inbounds nuw i8, ptr %427, i64 5
  store i8 %443, ptr %441, align 1, !tbaa !36
  %445 = getelementptr inbounds nuw i8, ptr %428, i64 6
  %446 = load i8, ptr %442, align 1, !tbaa !36
  %447 = getelementptr inbounds nuw i8, ptr %427, i64 6
  store i8 %446, ptr %444, align 1, !tbaa !36
  %448 = getelementptr inbounds nuw i8, ptr %428, i64 7
  %449 = load i8, ptr %445, align 1, !tbaa !36
  %450 = getelementptr inbounds nuw i8, ptr %427, i64 7
  store i8 %449, ptr %447, align 1, !tbaa !36
  %451 = getelementptr inbounds nuw i8, ptr %428, i64 8
  %452 = load i8, ptr %448, align 1, !tbaa !36
  %453 = getelementptr inbounds nuw i8, ptr %427, i64 8
  store i8 %452, ptr %450, align 1, !tbaa !36
  %454 = add i32 %429, -8
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %426, !llvm.loop !93

456:                                              ; preds = %426, %421, %401, %383
  %457 = load i32, ptr %269, align 8, !tbaa !34
  %458 = load ptr, ptr %275, align 8, !tbaa !29
  br label %459

459:                                              ; preds = %456, %354, %350
  %460 = phi ptr [ %458, %456 ], [ %352, %354 ], [ %352, %350 ]
  %461 = phi i32 [ %457, %456 ], [ %349, %354 ], [ 0, %350 ]
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds nuw i8, ptr %460, i64 %462
  %464 = load i32, ptr %270, align 8, !tbaa !27
  %465 = sub i32 %464, %461
  store i32 0, ptr %276, align 4, !tbaa !17
  %466 = tail call ptr @__errno_location() #16
  store i32 0, ptr %466, align 4, !tbaa !4
  br label %467

467:                                              ; preds = %478, %459
  %468 = phi i32 [ 0, %459 ], [ %479, %478 ]
  %469 = sub i32 %465, %468
  %470 = tail call i32 @llvm.umin.i32(i32 %469, i32 1073741824)
  %471 = load i32, ptr %277, align 4, !tbaa !46
  %472 = zext i32 %468 to i64
  %473 = getelementptr inbounds nuw i8, ptr %463, i64 %472
  %474 = zext nneg i32 %470 to i64
  %475 = tail call i64 @read(i32 noundef %471, ptr noundef %473, i64 noundef %474) #13
  %476 = trunc i64 %475 to i32
  %477 = icmp slt i32 %476, 1
  br i1 %477, label %481, label %478

478:                                              ; preds = %467
  %479 = add i32 %468, %476
  %480 = icmp ult i32 %479, %465
  br i1 %480, label %467, label %494, !llvm.loop !47

481:                                              ; preds = %467
  %482 = icmp slt i32 %476, 0
  br i1 %482, label %483, label %490

483:                                              ; preds = %481
  %484 = load i32, ptr %466, align 4, !tbaa !4
  %485 = icmp eq i32 %484, 11
  br i1 %485, label %486, label %491

486:                                              ; preds = %483
  store i32 1, ptr %276, align 4, !tbaa !17
  %487 = icmp eq i32 %468, 0
  br i1 %487, label %488, label %494

488:                                              ; preds = %486
  %489 = load i32, ptr %466, align 4, !tbaa !4
  br label %491

490:                                              ; preds = %481
  store i32 1, ptr %268, align 8, !tbaa !24
  br label %494

491:                                              ; preds = %488, %483
  %492 = phi i32 [ %489, %488 ], [ %484, %483 ]
  %493 = tail call ptr @strerror(i32 noundef %492) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %493) #13
  br label %752

494:                                              ; preds = %490, %486, %478
  %495 = phi i32 [ %468, %486 ], [ %468, %490 ], [ %479, %478 ]
  %496 = load i32, ptr %269, align 8, !tbaa !34
  %497 = add i32 %496, %495
  store i32 %497, ptr %269, align 8, !tbaa !34
  %498 = load ptr, ptr %275, align 8, !tbaa !29
  store ptr %498, ptr %274, align 8, !tbaa !35
  br label %499

499:                                              ; preds = %494, %346
  %500 = phi i32 [ %497, %494 ], [ %349, %346 ]
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %531, label %502

502:                                              ; preds = %499
  %503 = load i32, ptr %276, align 4, !tbaa !17
  %504 = icmp ne i32 %503, 0
  %505 = icmp ult i32 %500, 4
  %506 = and i1 %505, %504
  br i1 %506, label %531, label %507

507:                                              ; preds = %502
  %508 = icmp ugt i32 %500, 3
  %509 = load ptr, ptr %274, align 8, !tbaa !35
  br i1 %508, label %510, label %527

510:                                              ; preds = %507
  %511 = load i8, ptr %509, align 1, !tbaa !36
  %512 = icmp eq i8 %511, 31
  br i1 %512, label %513, label %527

513:                                              ; preds = %510
  %514 = getelementptr inbounds nuw i8, ptr %509, i64 1
  %515 = load i8, ptr %514, align 1, !tbaa !36
  %516 = icmp eq i8 %515, -117
  br i1 %516, label %517, label %527

517:                                              ; preds = %513
  %518 = getelementptr inbounds nuw i8, ptr %509, i64 2
  %519 = load i8, ptr %518, align 1, !tbaa !36
  %520 = icmp eq i8 %519, 8
  br i1 %520, label %521, label %527

521:                                              ; preds = %517
  %522 = getelementptr inbounds nuw i8, ptr %509, i64 3
  %523 = load i8, ptr %522, align 1, !tbaa !36
  %524 = icmp ult i8 %523, 32
  br i1 %524, label %525, label %527

525:                                              ; preds = %521
  %526 = tail call i32 @inflateReset(ptr noundef nonnull %274) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %278, align 4, !tbaa !33
  store i32 0, ptr %281, align 8, !tbaa !32
  br label %668

527:                                              ; preds = %521, %517, %513, %510, %507
  %528 = load ptr, ptr %272, align 8, !tbaa !30
  store ptr %528, ptr %266, align 8, !tbaa !20
  %529 = zext i32 %500 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %528, ptr align 1 %509, i64 %529, i1 false)
  %530 = load i32, ptr %269, align 8, !tbaa !34
  store i32 %530, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %269, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %670

531:                                              ; preds = %502, %499, %339
  %532 = load i32, ptr %9, align 8, !tbaa !26
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %680, label %668

534:                                              ; preds = %309
  %535 = load ptr, ptr %272, align 8, !tbaa !30
  %536 = load i32, ptr %270, align 8, !tbaa !27
  %537 = shl i32 %536, 1
  store i32 0, ptr %276, align 4, !tbaa !17
  %538 = tail call ptr @__errno_location() #16
  store i32 0, ptr %538, align 4, !tbaa !4
  store i32 0, ptr %1, align 8, !tbaa !4
  br label %539

539:                                              ; preds = %550, %534
  %540 = phi i32 [ %552, %550 ], [ 0, %534 ]
  %541 = sub i32 %537, %540
  %542 = tail call i32 @llvm.umin.i32(i32 %541, i32 1073741824)
  %543 = load i32, ptr %277, align 4, !tbaa !46
  %544 = zext i32 %540 to i64
  %545 = getelementptr inbounds nuw i8, ptr %535, i64 %544
  %546 = zext nneg i32 %542 to i64
  %547 = tail call i64 @read(i32 noundef %543, ptr noundef %545, i64 noundef %546) #13
  %548 = trunc i64 %547 to i32
  %549 = icmp slt i32 %548, 1
  br i1 %549, label %554, label %550

550:                                              ; preds = %539
  %551 = load i32, ptr %1, align 4, !tbaa !4
  %552 = add i32 %551, %548
  store i32 %552, ptr %1, align 4, !tbaa !4
  %553 = icmp ult i32 %552, %537
  br i1 %553, label %539, label %568, !llvm.loop !47

554:                                              ; preds = %539
  %555 = icmp slt i32 %548, 0
  br i1 %555, label %556, label %564

556:                                              ; preds = %554
  %557 = load i32, ptr %538, align 4, !tbaa !4
  %558 = icmp eq i32 %557, 11
  br i1 %558, label %559, label %565

559:                                              ; preds = %556
  store i32 1, ptr %276, align 4, !tbaa !17
  %560 = load i32, ptr %1, align 4, !tbaa !4
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %568

562:                                              ; preds = %559
  %563 = load i32, ptr %538, align 4, !tbaa !4
  br label %565

564:                                              ; preds = %554
  store i32 1, ptr %268, align 8, !tbaa !24
  br label %568

565:                                              ; preds = %562, %556
  %566 = phi i32 [ %563, %562 ], [ %557, %556 ]
  %567 = tail call ptr @strerror(i32 noundef %566) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %567) #13
  br label %752

568:                                              ; preds = %564, %559, %550
  %569 = load ptr, ptr %272, align 8, !tbaa !30
  store ptr %569, ptr %266, align 8, !tbaa !20
  br label %680

570:                                              ; preds = %309
  %571 = load i32, ptr %270, align 8, !tbaa !27
  %572 = shl i32 %571, 1
  store i32 %572, ptr %271, align 8, !tbaa !48
  %573 = load ptr, ptr %272, align 8, !tbaa !30
  store ptr %573, ptr %273, align 8, !tbaa !49
  br label %574

574:                                              ; preds = %647, %570
  %575 = phi i32 [ 0, %570 ], [ %626, %647 ]
  %576 = load i32, ptr %269, align 8, !tbaa !34
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %625

578:                                              ; preds = %574
  %579 = load i32, ptr %255, align 8, !tbaa !16
  switch i32 %579, label %658 [
    i32 0, label %580
    i32 -5, label %580
  ]

580:                                              ; preds = %578, %578
  %581 = load i32, ptr %268, align 8, !tbaa !24
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %621

583:                                              ; preds = %580
  %584 = load ptr, ptr %275, align 8, !tbaa !29
  %585 = load i32, ptr %270, align 8, !tbaa !27
  store i32 0, ptr %276, align 4, !tbaa !17
  %586 = tail call ptr @__errno_location() #16
  store i32 0, ptr %586, align 4, !tbaa !4
  br label %587

587:                                              ; preds = %598, %583
  %588 = phi i32 [ 0, %583 ], [ %599, %598 ]
  %589 = sub i32 %585, %588
  %590 = tail call i32 @llvm.umin.i32(i32 %589, i32 1073741824)
  %591 = load i32, ptr %277, align 4, !tbaa !46
  %592 = zext i32 %588 to i64
  %593 = getelementptr inbounds nuw i8, ptr %584, i64 %592
  %594 = zext nneg i32 %590 to i64
  %595 = tail call i64 @read(i32 noundef %591, ptr noundef %593, i64 noundef %594) #13
  %596 = trunc i64 %595 to i32
  %597 = icmp slt i32 %596, 1
  br i1 %597, label %601, label %598

598:                                              ; preds = %587
  %599 = add i32 %588, %596
  %600 = icmp ult i32 %599, %585
  br i1 %600, label %587, label %615, !llvm.loop !47

601:                                              ; preds = %587
  %602 = icmp slt i32 %596, 0
  br i1 %602, label %603, label %610

603:                                              ; preds = %601
  %604 = load i32, ptr %586, align 4, !tbaa !4
  %605 = icmp eq i32 %604, 11
  br i1 %605, label %606, label %611

606:                                              ; preds = %603
  store i32 1, ptr %276, align 4, !tbaa !17
  %607 = icmp eq i32 %588, 0
  br i1 %607, label %608, label %615

608:                                              ; preds = %606
  %609 = load i32, ptr %586, align 4, !tbaa !4
  br label %611

610:                                              ; preds = %601
  store i32 1, ptr %268, align 8, !tbaa !24
  br label %615

611:                                              ; preds = %608, %603
  %612 = phi i32 [ %609, %608 ], [ %604, %603 ]
  %613 = tail call ptr @strerror(i32 noundef %612) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %613) #13
  %614 = load i32, ptr %255, align 8, !tbaa !16
  br label %658

615:                                              ; preds = %610, %606, %598
  %616 = phi i32 [ %588, %606 ], [ %588, %610 ], [ %599, %598 ]
  %617 = load i32, ptr %269, align 8, !tbaa !34
  %618 = add i32 %617, %616
  store i32 %618, ptr %269, align 8, !tbaa !34
  %619 = load ptr, ptr %275, align 8, !tbaa !29
  store ptr %619, ptr %274, align 8, !tbaa !35
  %620 = icmp eq i32 %618, 0
  br i1 %620, label %621, label %625

621:                                              ; preds = %615, %580
  %622 = load i32, ptr %276, align 4, !tbaa !17
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %658

624:                                              ; preds = %621
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %658

625:                                              ; preds = %615, %574
  %626 = tail call i32 @inflate(ptr noundef nonnull %274, i32 noundef 0) #13
  %627 = load i32, ptr %271, align 8, !tbaa !48
  %628 = icmp ult i32 %627, %572
  br i1 %628, label %629, label %630

629:                                              ; preds = %625
  store i32 0, ptr %278, align 4, !tbaa !33
  br label %630

630:                                              ; preds = %629, %625
  switch i32 %626, label %647 [
    i32 -2, label %631
    i32 2, label %631
    i32 -4, label %632
    i32 -3, label %633
  ]

631:                                              ; preds = %630, %630
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %658

632:                                              ; preds = %630
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %651

633:                                              ; preds = %630
  %634 = load i32, ptr %278, align 4, !tbaa !33
  %635 = icmp eq i32 %634, 1
  br i1 %635, label %636, label %642

636:                                              ; preds = %633
  store i32 0, ptr %269, align 8, !tbaa !34
  store i32 1, ptr %268, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  %637 = sub i32 %572, %627
  store i32 %637, ptr %1, align 8, !tbaa !19
  %638 = load ptr, ptr %273, align 8, !tbaa !49
  %639 = zext i32 %637 to i64
  %640 = sub nsw i64 0, %639
  %641 = getelementptr inbounds i8, ptr %638, i64 %640
  store ptr %641, ptr %266, align 8, !tbaa !20
  br label %668

642:                                              ; preds = %633
  %643 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %644 = load ptr, ptr %643, align 8, !tbaa !50
  %645 = icmp eq ptr %644, null
  %646 = select i1 %645, ptr @.str.6, ptr %644
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %646) #13
  br label %651

647:                                              ; preds = %630
  %648 = icmp ne i32 %627, 0
  %649 = icmp ne i32 %626, 1
  %650 = select i1 %648, i1 %649, i1 false
  br i1 %650, label %574, label %658, !llvm.loop !51

651:                                              ; preds = %642, %632
  %652 = load i32, ptr %271, align 8, !tbaa !48
  %653 = sub i32 %572, %652
  store i32 %653, ptr %1, align 8, !tbaa !19
  %654 = load ptr, ptr %273, align 8, !tbaa !49
  %655 = zext i32 %653 to i64
  %656 = sub nsw i64 0, %655
  %657 = getelementptr inbounds i8, ptr %654, i64 %656
  store ptr %657, ptr %266, align 8, !tbaa !20
  br label %752

658:                                              ; preds = %647, %631, %624, %621, %611, %578
  %659 = phi i32 [ %614, %611 ], [ %575, %621 ], [ %575, %624 ], [ %626, %631 ], [ %579, %578 ], [ %626, %647 ]
  %660 = load i32, ptr %271, align 8, !tbaa !48
  %661 = sub i32 %572, %660
  store i32 %661, ptr %1, align 8, !tbaa !19
  %662 = load ptr, ptr %273, align 8, !tbaa !49
  %663 = zext i32 %661 to i64
  %664 = sub nsw i64 0, %663
  %665 = getelementptr inbounds i8, ptr %662, i64 %664
  store ptr %665, ptr %266, align 8, !tbaa !20
  switch i32 %659, label %752 [
    i32 1, label %666
    i32 0, label %668
  ]

666:                                              ; preds = %658
  store i32 0, ptr %278, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %668

667:                                              ; preds = %309
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %752

668:                                              ; preds = %666, %658, %636, %531, %525
  %669 = load i32, ptr %1, align 8, !tbaa !19
  br label %670

670:                                              ; preds = %668, %527
  %671 = phi i32 [ %669, %668 ], [ %530, %527 ]
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %680

673:                                              ; preds = %670
  %674 = load i32, ptr %268, align 8, !tbaa !24
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %679, label %676

676:                                              ; preds = %673
  %677 = load i32, ptr %269, align 8, !tbaa !34
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %680, label %679

679:                                              ; preds = %676, %673
  br label %309, !llvm.loop !52

680:                                              ; preds = %676, %670, %568, %531
  %681 = load i64, ptr %262, align 8, !tbaa !18
  br label %682

682:                                              ; preds = %680, %298
  %683 = phi i64 [ %681, %680 ], [ %301, %298 ]
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %685, label %282, !llvm.loop !53

685:                                              ; preds = %682, %305
  %686 = icmp slt i32 %0, 0
  br i1 %686, label %752, label %689

687:                                              ; preds = %261
  %688 = icmp slt i32 %0, 0
  br i1 %688, label %752, label %689

689:                                              ; preds = %687, %685
  %690 = load i32, ptr %1, align 8, !tbaa !19
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %692, label %711

692:                                              ; preds = %689
  store i32 1, ptr %1, align 8, !tbaa !19
  %693 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %694 = load ptr, ptr %693, align 8, !tbaa !30
  %695 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %696 = load i32, ptr %695, align 8, !tbaa !27
  %697 = shl i32 %696, 1
  %698 = zext i32 %697 to i64
  %699 = getelementptr inbounds nuw i8, ptr %694, i64 %698
  %700 = getelementptr inbounds i8, ptr %699, i64 -1
  %701 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %700, ptr %701, align 8, !tbaa !20
  %702 = trunc i32 %0 to i8
  store i8 %702, ptr %700, align 1, !tbaa !36
  %703 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %704 = load i64, ptr %703, align 8, !tbaa !21
  %705 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %704, i64 -1)
  %706 = extractvalue { i64, i1 } %705, 1, !nosanitize !22
  br i1 %706, label %707, label %708, !prof !23, !nosanitize !22

707:                                              ; preds = %739, %692
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

708:                                              ; preds = %692
  %709 = extractvalue { i64, i1 } %705, 0, !nosanitize !22
  store i64 %709, ptr %703, align 8, !tbaa !21
  %710 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %710, align 4, !tbaa !61
  br label %752

711:                                              ; preds = %689
  %712 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %713 = load i32, ptr %712, align 8, !tbaa !27
  %714 = shl i32 %713, 1
  %715 = icmp eq i32 %690, %714
  br i1 %715, label %716, label %717

716:                                              ; preds = %711
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %752

717:                                              ; preds = %711
  %718 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %719 = load ptr, ptr %718, align 8, !tbaa !20
  %720 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %721 = load ptr, ptr %720, align 8, !tbaa !30
  %722 = icmp eq ptr %719, %721
  br i1 %722, label %723, label %739

723:                                              ; preds = %717
  %724 = zext i32 %690 to i64
  %725 = getelementptr inbounds nuw i8, ptr %721, i64 %724
  %726 = zext i32 %714 to i64
  %727 = getelementptr inbounds nuw i8, ptr %721, i64 %726
  %728 = icmp ugt ptr %725, %719
  br i1 %728, label %729, label %739

729:                                              ; preds = %729, %723
  %730 = phi ptr [ %734, %729 ], [ %727, %723 ]
  %731 = phi ptr [ %732, %729 ], [ %725, %723 ]
  %732 = getelementptr inbounds i8, ptr %731, i64 -1
  %733 = load i8, ptr %732, align 1, !tbaa !36
  %734 = getelementptr inbounds i8, ptr %730, i64 -1
  store i8 %733, ptr %734, align 1, !tbaa !36
  %735 = load ptr, ptr %720, align 8, !tbaa !30
  %736 = icmp ugt ptr %732, %735
  br i1 %736, label %729, label %737, !llvm.loop !94

737:                                              ; preds = %729
  %738 = load i32, ptr %1, align 8, !tbaa !19
  br label %739

739:                                              ; preds = %737, %723, %717
  %740 = phi ptr [ %719, %717 ], [ %727, %723 ], [ %734, %737 ]
  %741 = phi i32 [ %690, %717 ], [ %690, %723 ], [ %738, %737 ]
  %742 = add i32 %741, 1
  store i32 %742, ptr %1, align 8, !tbaa !19
  %743 = getelementptr inbounds i8, ptr %740, i64 -1
  store ptr %743, ptr %718, align 8, !tbaa !20
  %744 = trunc i32 %0 to i8
  store i8 %744, ptr %743, align 1, !tbaa !36
  %745 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %746 = load i64, ptr %745, align 8, !tbaa !21
  %747 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %746, i64 -1)
  %748 = extractvalue { i64, i1 } %747, 1, !nosanitize !22
  br i1 %748, label %707, label %749, !prof !23, !nosanitize !22

749:                                              ; preds = %739
  %750 = extractvalue { i64, i1 } %747, 0, !nosanitize !22
  store i64 %750, ptr %745, align 8, !tbaa !21
  %751 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %751, align 4, !tbaa !61
  br label %752

752:                                              ; preds = %749, %716, %708, %687, %685, %667, %658, %651, %565, %491, %344, %330, %325, %257, %4, %2
  %753 = phi i32 [ -1, %4 ], [ -1, %2 ], [ -1, %257 ], [ -1, %685 ], [ %0, %708 ], [ -1, %716 ], [ %0, %749 ], [ -1, %687 ], [ -1, %651 ], [ -1, %330 ], [ -1, %667 ], [ -1, %565 ], [ -1, %491 ], [ -1, %325 ], [ -1, %658 ], [ -1, %344 ]
  ret i32 %753
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
  br i1 %8, label %880, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !8
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %880

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
  br i1 %19, label %880, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %445, label %24

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

42:                                               ; preds = %442, %24
  %43 = phi i64 [ %443, %442 ], [ %22, %24 ]
  %44 = load i32, ptr %0, align 8, !tbaa !19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

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
  %61 = extractvalue { i64, i1 } %60, 0, !nosanitize !22
  store i64 %61, ptr %21, align 8, !tbaa !18
  br label %442

62:                                               ; preds = %42
  %63 = load i32, ptr %27, align 8, !tbaa !24
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %28, align 8, !tbaa !25
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %445, label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %439, %68
  %70 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %70, label %427 [
    i32 0, label %71
    i32 1, label %294
    i32 2, label %330
  ]

71:                                               ; preds = %69
  %72 = load i32, ptr %30, align 8, !tbaa !27
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i32, ptr %39, align 4, !tbaa !28
  %76 = zext i32 %75 to i64
  %77 = tail call noalias ptr @malloc(i64 noundef %76) #15
  store ptr %77, ptr %35, align 8, !tbaa !29
  %78 = load i32, ptr %39, align 4, !tbaa !28
  %79 = shl i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = tail call noalias ptr @malloc(i64 noundef %80) #15
  store ptr %81, ptr %32, align 8, !tbaa !30
  %82 = icmp eq ptr %77, null
  %83 = icmp eq ptr %81, null
  %84 = or i1 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  tail call void @free(ptr noundef %81) #13
  tail call void @free(ptr noundef %77) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %880

86:                                               ; preds = %74
  %87 = load i32, ptr %39, align 4, !tbaa !28
  store i32 %87, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %88 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %91) #13
  %92 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %92) #13
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %880

93:                                               ; preds = %86, %71
  %94 = load i32, ptr %41, align 8, !tbaa !32
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %38, align 4, !tbaa !33
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96, %93
  %100 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  %101 = load i32, ptr %38, align 4, !tbaa !33
  %102 = icmp ne i32 %101, -1
  %103 = zext i1 %102 to i32
  store i32 %103, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !32
  br label %291

104:                                              ; preds = %96
  %105 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %105, label %880 [
    i32 0, label %106
    i32 -5, label %106
  ]

106:                                              ; preds = %104, %104
  %107 = load i32, ptr %27, align 8, !tbaa !24
  %108 = icmp eq i32 %107, 0
  %109 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %108, label %110, label %259

110:                                              ; preds = %106
  %111 = icmp eq i32 %109, 0
  %112 = load ptr, ptr %35, align 8, !tbaa !29
  %113 = ptrtoaddr ptr %112 to i64
  br i1 %111, label %219, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %34, align 8, !tbaa !35
  %116 = icmp eq ptr %115, %112
  br i1 %116, label %219, label %117

117:                                              ; preds = %114
  %118 = ptrtoaddr ptr %115 to i64
  %119 = zext i32 %109 to i64
  %120 = icmp ult i32 %109, 4
  %121 = sub i64 %113, %118
  %122 = icmp ult i64 %121, 32
  %123 = select i1 %120, i1 true, i1 %122
  br i1 %123, label %163, label %124

124:                                              ; preds = %117
  %125 = icmp ult i32 %109, 32
  br i1 %125, label %147, label %126

126:                                              ; preds = %124
  %127 = and i64 %119, 28
  %128 = and i64 %119, 4294967264
  %129 = getelementptr i8, ptr %112, i64 %128
  %130 = getelementptr i8, ptr %115, i64 %128
  %131 = trunc nuw i64 %128 to i32
  %132 = sub i32 %109, %131
  br label %133

133:                                              ; preds = %133, %126
  %134 = phi i64 [ 0, %126 ], [ %141, %133 ]
  %135 = getelementptr i8, ptr %112, i64 %134
  %136 = getelementptr i8, ptr %115, i64 %134
  %137 = getelementptr i8, ptr %136, i64 16
  %138 = load <16 x i8>, ptr %136, align 1, !tbaa !36
  %139 = load <16 x i8>, ptr %137, align 1, !tbaa !36
  %140 = getelementptr i8, ptr %135, i64 16
  store <16 x i8> %138, ptr %135, align 1, !tbaa !36
  store <16 x i8> %139, ptr %140, align 1, !tbaa !36
  %141 = add nuw i64 %134, 32
  %142 = icmp eq i64 %141, %128
  br i1 %142, label %143, label %133, !llvm.loop !95

143:                                              ; preds = %133
  %144 = icmp eq i64 %128, %119
  br i1 %144, label %216, label %145

145:                                              ; preds = %143
  %146 = icmp eq i64 %127, 0
  br i1 %146, label %163, label %147, !prof !41

147:                                              ; preds = %145, %124
  %148 = phi i64 [ %128, %145 ], [ 0, %124 ]
  %149 = and i64 %119, 4294967292
  %150 = getelementptr i8, ptr %112, i64 %149
  %151 = getelementptr i8, ptr %115, i64 %149
  %152 = trunc nuw i64 %149 to i32
  %153 = sub i32 %109, %152
  br label %154

154:                                              ; preds = %154, %147
  %155 = phi i64 [ %148, %147 ], [ %159, %154 ]
  %156 = getelementptr i8, ptr %112, i64 %155
  %157 = getelementptr i8, ptr %115, i64 %155
  %158 = load <4 x i8>, ptr %157, align 1, !tbaa !36
  store <4 x i8> %158, ptr %156, align 1, !tbaa !36
  %159 = add nuw i64 %155, 4
  %160 = icmp eq i64 %159, %149
  br i1 %160, label %161, label %154, !llvm.loop !96

161:                                              ; preds = %154
  %162 = icmp eq i64 %149, %119
  br i1 %162, label %216, label %163

163:                                              ; preds = %161, %145, %117
  %164 = phi ptr [ %112, %117 ], [ %129, %145 ], [ %150, %161 ]
  %165 = phi ptr [ %115, %117 ], [ %130, %145 ], [ %151, %161 ]
  %166 = phi i32 [ %109, %117 ], [ %132, %145 ], [ %153, %161 ]
  %167 = add i32 %166, -1
  %168 = and i32 %166, 7
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %170, %163
  %171 = phi ptr [ %177, %170 ], [ %164, %163 ]
  %172 = phi ptr [ %175, %170 ], [ %165, %163 ]
  %173 = phi i32 [ %178, %170 ], [ %166, %163 ]
  %174 = phi i32 [ %179, %170 ], [ 0, %163 ]
  %175 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %176 = load i8, ptr %172, align 1, !tbaa !36
  %177 = getelementptr inbounds nuw i8, ptr %171, i64 1
  store i8 %176, ptr %171, align 1, !tbaa !36
  %178 = add i32 %173, -1
  %179 = add i32 %174, 1
  %180 = icmp eq i32 %179, %168
  br i1 %180, label %181, label %170, !llvm.loop !97

181:                                              ; preds = %170, %163
  %182 = phi ptr [ %164, %163 ], [ %177, %170 ]
  %183 = phi ptr [ %165, %163 ], [ %175, %170 ]
  %184 = phi i32 [ %166, %163 ], [ %178, %170 ]
  %185 = icmp ult i32 %167, 7
  br i1 %185, label %216, label %186

186:                                              ; preds = %186, %181
  %187 = phi ptr [ %213, %186 ], [ %182, %181 ]
  %188 = phi ptr [ %211, %186 ], [ %183, %181 ]
  %189 = phi i32 [ %214, %186 ], [ %184, %181 ]
  %190 = getelementptr inbounds nuw i8, ptr %188, i64 1
  %191 = load i8, ptr %188, align 1, !tbaa !36
  %192 = getelementptr inbounds nuw i8, ptr %187, i64 1
  store i8 %191, ptr %187, align 1, !tbaa !36
  %193 = getelementptr inbounds nuw i8, ptr %188, i64 2
  %194 = load i8, ptr %190, align 1, !tbaa !36
  %195 = getelementptr inbounds nuw i8, ptr %187, i64 2
  store i8 %194, ptr %192, align 1, !tbaa !36
  %196 = getelementptr inbounds nuw i8, ptr %188, i64 3
  %197 = load i8, ptr %193, align 1, !tbaa !36
  %198 = getelementptr inbounds nuw i8, ptr %187, i64 3
  store i8 %197, ptr %195, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %188, i64 4
  %200 = load i8, ptr %196, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %187, i64 4
  store i8 %200, ptr %198, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %188, i64 5
  %203 = load i8, ptr %199, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %187, i64 5
  store i8 %203, ptr %201, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %188, i64 6
  %206 = load i8, ptr %202, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %187, i64 6
  store i8 %206, ptr %204, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %188, i64 7
  %209 = load i8, ptr %205, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %187, i64 7
  store i8 %209, ptr %207, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %188, i64 8
  %212 = load i8, ptr %208, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %187, i64 8
  store i8 %212, ptr %210, align 1, !tbaa !36
  %214 = add i32 %189, -8
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %186, !llvm.loop !98

216:                                              ; preds = %186, %181, %161, %143
  %217 = load i32, ptr %28, align 8, !tbaa !34
  %218 = load ptr, ptr %35, align 8, !tbaa !29
  br label %219

219:                                              ; preds = %216, %114, %110
  %220 = phi ptr [ %218, %216 ], [ %112, %114 ], [ %112, %110 ]
  %221 = phi i32 [ %217, %216 ], [ %109, %114 ], [ 0, %110 ]
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds nuw i8, ptr %220, i64 %222
  %224 = load i32, ptr %30, align 8, !tbaa !27
  %225 = sub i32 %224, %221
  store i32 0, ptr %36, align 4, !tbaa !17
  %226 = tail call ptr @__errno_location() #16
  store i32 0, ptr %226, align 4, !tbaa !4
  br label %227

227:                                              ; preds = %238, %219
  %228 = phi i32 [ 0, %219 ], [ %239, %238 ]
  %229 = sub i32 %225, %228
  %230 = tail call i32 @llvm.umin.i32(i32 %229, i32 1073741824)
  %231 = load i32, ptr %37, align 4, !tbaa !46
  %232 = zext i32 %228 to i64
  %233 = getelementptr inbounds nuw i8, ptr %223, i64 %232
  %234 = zext nneg i32 %230 to i64
  %235 = tail call i64 @read(i32 noundef %231, ptr noundef %233, i64 noundef %234) #13
  %236 = trunc i64 %235 to i32
  %237 = icmp slt i32 %236, 1
  br i1 %237, label %241, label %238

238:                                              ; preds = %227
  %239 = add i32 %228, %236
  %240 = icmp ult i32 %239, %225
  br i1 %240, label %227, label %254, !llvm.loop !47

241:                                              ; preds = %227
  %242 = icmp slt i32 %236, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %241
  %244 = load i32, ptr %226, align 4, !tbaa !4
  %245 = icmp eq i32 %244, 11
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  store i32 1, ptr %36, align 4, !tbaa !17
  %247 = icmp eq i32 %228, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %246
  %249 = load i32, ptr %226, align 4, !tbaa !4
  br label %251

250:                                              ; preds = %241
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %254

251:                                              ; preds = %248, %243
  %252 = phi i32 [ %249, %248 ], [ %244, %243 ]
  %253 = tail call ptr @strerror(i32 noundef %252) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %253) #13
  br label %880

254:                                              ; preds = %250, %246, %238
  %255 = phi i32 [ %228, %246 ], [ %228, %250 ], [ %239, %238 ]
  %256 = load i32, ptr %28, align 8, !tbaa !34
  %257 = add i32 %256, %255
  store i32 %257, ptr %28, align 8, !tbaa !34
  %258 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %258, ptr %34, align 8, !tbaa !35
  br label %259

259:                                              ; preds = %254, %106
  %260 = phi i32 [ %257, %254 ], [ %109, %106 ]
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %291, label %262

262:                                              ; preds = %259
  %263 = load i32, ptr %36, align 4, !tbaa !17
  %264 = icmp ne i32 %263, 0
  %265 = icmp ult i32 %260, 4
  %266 = and i1 %265, %264
  br i1 %266, label %291, label %267

267:                                              ; preds = %262
  %268 = icmp ugt i32 %260, 3
  %269 = load ptr, ptr %34, align 8, !tbaa !35
  br i1 %268, label %270, label %287

270:                                              ; preds = %267
  %271 = load i8, ptr %269, align 1, !tbaa !36
  %272 = icmp eq i8 %271, 31
  br i1 %272, label %273, label %287

273:                                              ; preds = %270
  %274 = getelementptr inbounds nuw i8, ptr %269, i64 1
  %275 = load i8, ptr %274, align 1, !tbaa !36
  %276 = icmp eq i8 %275, -117
  br i1 %276, label %277, label %287

277:                                              ; preds = %273
  %278 = getelementptr inbounds nuw i8, ptr %269, i64 2
  %279 = load i8, ptr %278, align 1, !tbaa !36
  %280 = icmp eq i8 %279, 8
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %269, i64 3
  %283 = load i8, ptr %282, align 1, !tbaa !36
  %284 = icmp ult i8 %283, 32
  br i1 %284, label %285, label %287

285:                                              ; preds = %281
  %286 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !32
  br label %428

287:                                              ; preds = %281, %277, %273, %270, %267
  %288 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %288, ptr %25, align 8, !tbaa !20
  %289 = zext i32 %260 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %288, ptr align 1 %269, i64 %289, i1 false)
  %290 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %290, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %430

291:                                              ; preds = %262, %259, %99
  %292 = load i32, ptr %29, align 8, !tbaa !26
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %440, label %428

294:                                              ; preds = %69
  %295 = load ptr, ptr %32, align 8, !tbaa !30
  %296 = load i32, ptr %30, align 8, !tbaa !27
  %297 = shl i32 %296, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %298 = tail call ptr @__errno_location() #16
  store i32 0, ptr %298, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %299

299:                                              ; preds = %310, %294
  %300 = phi i32 [ %312, %310 ], [ 0, %294 ]
  %301 = sub i32 %297, %300
  %302 = tail call i32 @llvm.umin.i32(i32 %301, i32 1073741824)
  %303 = load i32, ptr %37, align 4, !tbaa !46
  %304 = zext i32 %300 to i64
  %305 = getelementptr inbounds nuw i8, ptr %295, i64 %304
  %306 = zext nneg i32 %302 to i64
  %307 = tail call i64 @read(i32 noundef %303, ptr noundef %305, i64 noundef %306) #13
  %308 = trunc i64 %307 to i32
  %309 = icmp slt i32 %308, 1
  br i1 %309, label %314, label %310

310:                                              ; preds = %299
  %311 = load i32, ptr %0, align 4, !tbaa !4
  %312 = add i32 %311, %308
  store i32 %312, ptr %0, align 4, !tbaa !4
  %313 = icmp ult i32 %312, %297
  br i1 %313, label %299, label %328, !llvm.loop !47

314:                                              ; preds = %299
  %315 = icmp slt i32 %308, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %314
  %317 = load i32, ptr %298, align 4, !tbaa !4
  %318 = icmp eq i32 %317, 11
  br i1 %318, label %319, label %325

319:                                              ; preds = %316
  store i32 1, ptr %36, align 4, !tbaa !17
  %320 = load i32, ptr %0, align 4, !tbaa !4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %319
  %323 = load i32, ptr %298, align 4, !tbaa !4
  br label %325

324:                                              ; preds = %314
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %328

325:                                              ; preds = %322, %316
  %326 = phi i32 [ %323, %322 ], [ %317, %316 ]
  %327 = tail call ptr @strerror(i32 noundef %326) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %327) #13
  br label %880

328:                                              ; preds = %324, %319, %310
  %329 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %329, ptr %25, align 8, !tbaa !20
  br label %440

330:                                              ; preds = %69
  %331 = load i32, ptr %30, align 8, !tbaa !27
  %332 = shl i32 %331, 1
  store i32 %332, ptr %31, align 8, !tbaa !48
  %333 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %333, ptr %33, align 8, !tbaa !49
  br label %334

334:                                              ; preds = %407, %330
  %335 = phi i32 [ 0, %330 ], [ %386, %407 ]
  %336 = load i32, ptr %28, align 8, !tbaa !34
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %385

338:                                              ; preds = %334
  %339 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %339, label %418 [
    i32 0, label %340
    i32 -5, label %340
  ]

340:                                              ; preds = %338, %338
  %341 = load i32, ptr %27, align 8, !tbaa !24
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %381

343:                                              ; preds = %340
  %344 = load ptr, ptr %35, align 8, !tbaa !29
  %345 = load i32, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %36, align 4, !tbaa !17
  %346 = tail call ptr @__errno_location() #16
  store i32 0, ptr %346, align 4, !tbaa !4
  br label %347

347:                                              ; preds = %358, %343
  %348 = phi i32 [ 0, %343 ], [ %359, %358 ]
  %349 = sub i32 %345, %348
  %350 = tail call i32 @llvm.umin.i32(i32 %349, i32 1073741824)
  %351 = load i32, ptr %37, align 4, !tbaa !46
  %352 = zext i32 %348 to i64
  %353 = getelementptr inbounds nuw i8, ptr %344, i64 %352
  %354 = zext nneg i32 %350 to i64
  %355 = tail call i64 @read(i32 noundef %351, ptr noundef %353, i64 noundef %354) #13
  %356 = trunc i64 %355 to i32
  %357 = icmp slt i32 %356, 1
  br i1 %357, label %361, label %358

358:                                              ; preds = %347
  %359 = add i32 %348, %356
  %360 = icmp ult i32 %359, %345
  br i1 %360, label %347, label %375, !llvm.loop !47

361:                                              ; preds = %347
  %362 = icmp slt i32 %356, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %361
  %364 = load i32, ptr %346, align 4, !tbaa !4
  %365 = icmp eq i32 %364, 11
  br i1 %365, label %366, label %371

366:                                              ; preds = %363
  store i32 1, ptr %36, align 4, !tbaa !17
  %367 = icmp eq i32 %348, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %366
  %369 = load i32, ptr %346, align 4, !tbaa !4
  br label %371

370:                                              ; preds = %361
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %375

371:                                              ; preds = %368, %363
  %372 = phi i32 [ %369, %368 ], [ %364, %363 ]
  %373 = tail call ptr @strerror(i32 noundef %372) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %373) #13
  %374 = load i32, ptr %14, align 8, !tbaa !16
  br label %418

375:                                              ; preds = %370, %366, %358
  %376 = phi i32 [ %348, %366 ], [ %348, %370 ], [ %359, %358 ]
  %377 = load i32, ptr %28, align 8, !tbaa !34
  %378 = add i32 %377, %376
  store i32 %378, ptr %28, align 8, !tbaa !34
  %379 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %379, ptr %34, align 8, !tbaa !35
  %380 = icmp eq i32 %378, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %375, %340
  %382 = load i32, ptr %36, align 4, !tbaa !17
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %418

384:                                              ; preds = %381
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %418

385:                                              ; preds = %375, %334
  %386 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %387 = load i32, ptr %31, align 8, !tbaa !48
  %388 = icmp ult i32 %387, %332
  br i1 %388, label %389, label %390

389:                                              ; preds = %385
  store i32 0, ptr %38, align 4, !tbaa !33
  br label %390

390:                                              ; preds = %389, %385
  switch i32 %386, label %407 [
    i32 -2, label %391
    i32 2, label %391
    i32 -4, label %392
    i32 -3, label %393
  ]

391:                                              ; preds = %390, %390
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %418

392:                                              ; preds = %390
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %411

393:                                              ; preds = %390
  %394 = load i32, ptr %38, align 4, !tbaa !33
  %395 = icmp eq i32 %394, 1
  br i1 %395, label %396, label %402

396:                                              ; preds = %393
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  %397 = sub i32 %332, %387
  store i32 %397, ptr %0, align 8, !tbaa !19
  %398 = load ptr, ptr %33, align 8, !tbaa !49
  %399 = zext i32 %397 to i64
  %400 = sub nsw i64 0, %399
  %401 = getelementptr inbounds i8, ptr %398, i64 %400
  store ptr %401, ptr %25, align 8, !tbaa !20
  br label %428

402:                                              ; preds = %393
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %404 = load ptr, ptr %403, align 8, !tbaa !50
  %405 = icmp eq ptr %404, null
  %406 = select i1 %405, ptr @.str.6, ptr %404
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %406) #13
  br label %411

407:                                              ; preds = %390
  %408 = icmp ne i32 %387, 0
  %409 = icmp ne i32 %386, 1
  %410 = select i1 %408, i1 %409, i1 false
  br i1 %410, label %334, label %418, !llvm.loop !51

411:                                              ; preds = %402, %392
  %412 = load i32, ptr %31, align 8, !tbaa !48
  %413 = sub i32 %332, %412
  store i32 %413, ptr %0, align 8, !tbaa !19
  %414 = load ptr, ptr %33, align 8, !tbaa !49
  %415 = zext i32 %413 to i64
  %416 = sub nsw i64 0, %415
  %417 = getelementptr inbounds i8, ptr %414, i64 %416
  store ptr %417, ptr %25, align 8, !tbaa !20
  br label %880

418:                                              ; preds = %407, %391, %384, %381, %371, %338
  %419 = phi i32 [ %374, %371 ], [ %335, %381 ], [ %335, %384 ], [ %386, %391 ], [ %339, %338 ], [ %386, %407 ]
  %420 = load i32, ptr %31, align 8, !tbaa !48
  %421 = sub i32 %332, %420
  store i32 %421, ptr %0, align 8, !tbaa !19
  %422 = load ptr, ptr %33, align 8, !tbaa !49
  %423 = zext i32 %421 to i64
  %424 = sub nsw i64 0, %423
  %425 = getelementptr inbounds i8, ptr %422, i64 %424
  store ptr %425, ptr %25, align 8, !tbaa !20
  switch i32 %419, label %880 [
    i32 1, label %426
    i32 0, label %428
  ]

426:                                              ; preds = %418
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %428

427:                                              ; preds = %69
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %880

428:                                              ; preds = %426, %418, %396, %291, %285
  %429 = load i32, ptr %0, align 8, !tbaa !19
  br label %430

430:                                              ; preds = %428, %287
  %431 = phi i32 [ %429, %428 ], [ %290, %287 ]
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %440

433:                                              ; preds = %430
  %434 = load i32, ptr %27, align 8, !tbaa !24
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %433
  %437 = load i32, ptr %28, align 8, !tbaa !34
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %440, label %439

439:                                              ; preds = %436, %433
  br label %69, !llvm.loop !52

440:                                              ; preds = %436, %430, %328, %291
  %441 = load i64, ptr %21, align 8, !tbaa !18
  br label %442

442:                                              ; preds = %440, %58
  %443 = phi i64 [ %441, %440 ], [ %61, %58 ]
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %445, label %42, !llvm.loop !53

445:                                              ; preds = %442, %65, %20
  %446 = add nsw i32 %2, -1
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %880, label %448

448:                                              ; preds = %445
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %466 = load i32, ptr %0, align 8, !tbaa !19
  br label %467

467:                                              ; preds = %870, %448
  %468 = phi i32 [ %863, %870 ], [ %466, %448 ]
  %469 = phi i32 [ %872, %870 ], [ %446, %448 ]
  %470 = phi ptr [ %873, %870 ], [ %1, %448 ]
  %471 = icmp eq i32 %468, 0
  br i1 %471, label %472, label %848

472:                                              ; preds = %842, %467
  %473 = load i32, ptr %449, align 8, !tbaa !26
  switch i32 %473, label %830 [
    i32 0, label %474
    i32 1, label %697
    i32 2, label %733
  ]

474:                                              ; preds = %472
  %475 = load i32, ptr %450, align 8, !tbaa !27
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %496

477:                                              ; preds = %474
  %478 = load i32, ptr %462, align 4, !tbaa !28
  %479 = zext i32 %478 to i64
  %480 = tail call noalias ptr @malloc(i64 noundef %479) #15
  store ptr %480, ptr %457, align 8, !tbaa !29
  %481 = load i32, ptr %462, align 4, !tbaa !28
  %482 = shl i32 %481, 1
  %483 = zext i32 %482 to i64
  %484 = tail call noalias ptr @malloc(i64 noundef %483) #15
  store ptr %484, ptr %452, align 8, !tbaa !30
  %485 = icmp eq ptr %480, null
  %486 = icmp eq ptr %484, null
  %487 = or i1 %485, %486
  br i1 %487, label %488, label %489

488:                                              ; preds = %477
  tail call void @free(ptr noundef %484) #13
  tail call void @free(ptr noundef %480) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %876

489:                                              ; preds = %477
  %490 = load i32, ptr %462, align 4, !tbaa !28
  store i32 %490, ptr %450, align 8, !tbaa !27
  store i32 0, ptr %455, align 8, !tbaa !25
  store ptr null, ptr %454, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %463, i8 0, i64 24, i1 false)
  %491 = tail call i32 @inflateInit2_(ptr noundef nonnull %454, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %496, label %493

493:                                              ; preds = %489
  %494 = load ptr, ptr %452, align 8, !tbaa !30
  tail call void @free(ptr noundef %494) #13
  %495 = load ptr, ptr %457, align 8, !tbaa !29
  tail call void @free(ptr noundef %495) #13
  store i32 0, ptr %450, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %876

496:                                              ; preds = %489, %474
  %497 = load i32, ptr %464, align 8, !tbaa !32
  %498 = icmp eq i32 %497, -1
  br i1 %498, label %502, label %499

499:                                              ; preds = %496
  %500 = load i32, ptr %460, align 4, !tbaa !33
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %507

502:                                              ; preds = %499, %496
  %503 = tail call i32 @inflateReset(ptr noundef nonnull %454) #13
  store i32 2, ptr %449, align 8, !tbaa !26
  %504 = load i32, ptr %460, align 4, !tbaa !33
  %505 = icmp ne i32 %504, -1
  %506 = zext i1 %505 to i32
  store i32 %506, ptr %460, align 4, !tbaa !33
  store i32 0, ptr %464, align 8, !tbaa !32
  br label %694

507:                                              ; preds = %499
  %508 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %508, label %876 [
    i32 0, label %509
    i32 -5, label %509
  ]

509:                                              ; preds = %507, %507
  %510 = load i32, ptr %456, align 8, !tbaa !24
  %511 = icmp eq i32 %510, 0
  %512 = load i32, ptr %455, align 8, !tbaa !34
  br i1 %511, label %513, label %662

513:                                              ; preds = %509
  %514 = icmp eq i32 %512, 0
  %515 = load ptr, ptr %457, align 8, !tbaa !29
  %516 = ptrtoaddr ptr %515 to i64
  br i1 %514, label %622, label %517

517:                                              ; preds = %513
  %518 = load ptr, ptr %454, align 8, !tbaa !35
  %519 = icmp eq ptr %518, %515
  br i1 %519, label %622, label %520

520:                                              ; preds = %517
  %521 = ptrtoaddr ptr %518 to i64
  %522 = zext i32 %512 to i64
  %523 = icmp ult i32 %512, 4
  %524 = sub i64 %516, %521
  %525 = icmp ult i64 %524, 32
  %526 = select i1 %523, i1 true, i1 %525
  br i1 %526, label %566, label %527

527:                                              ; preds = %520
  %528 = icmp ult i32 %512, 32
  br i1 %528, label %550, label %529

529:                                              ; preds = %527
  %530 = and i64 %522, 28
  %531 = and i64 %522, 4294967264
  %532 = getelementptr i8, ptr %515, i64 %531
  %533 = getelementptr i8, ptr %518, i64 %531
  %534 = trunc nuw i64 %531 to i32
  %535 = sub i32 %512, %534
  br label %536

536:                                              ; preds = %536, %529
  %537 = phi i64 [ 0, %529 ], [ %544, %536 ]
  %538 = getelementptr i8, ptr %515, i64 %537
  %539 = getelementptr i8, ptr %518, i64 %537
  %540 = getelementptr i8, ptr %539, i64 16
  %541 = load <16 x i8>, ptr %539, align 1, !tbaa !36
  %542 = load <16 x i8>, ptr %540, align 1, !tbaa !36
  %543 = getelementptr i8, ptr %538, i64 16
  store <16 x i8> %541, ptr %538, align 1, !tbaa !36
  store <16 x i8> %542, ptr %543, align 1, !tbaa !36
  %544 = add nuw i64 %537, 32
  %545 = icmp eq i64 %544, %531
  br i1 %545, label %546, label %536, !llvm.loop !99

546:                                              ; preds = %536
  %547 = icmp eq i64 %531, %522
  br i1 %547, label %619, label %548

548:                                              ; preds = %546
  %549 = icmp eq i64 %530, 0
  br i1 %549, label %566, label %550, !prof !41

550:                                              ; preds = %548, %527
  %551 = phi i64 [ %531, %548 ], [ 0, %527 ]
  %552 = and i64 %522, 4294967292
  %553 = getelementptr i8, ptr %515, i64 %552
  %554 = getelementptr i8, ptr %518, i64 %552
  %555 = trunc nuw i64 %552 to i32
  %556 = sub i32 %512, %555
  br label %557

557:                                              ; preds = %557, %550
  %558 = phi i64 [ %551, %550 ], [ %562, %557 ]
  %559 = getelementptr i8, ptr %515, i64 %558
  %560 = getelementptr i8, ptr %518, i64 %558
  %561 = load <4 x i8>, ptr %560, align 1, !tbaa !36
  store <4 x i8> %561, ptr %559, align 1, !tbaa !36
  %562 = add nuw i64 %558, 4
  %563 = icmp eq i64 %562, %552
  br i1 %563, label %564, label %557, !llvm.loop !100

564:                                              ; preds = %557
  %565 = icmp eq i64 %552, %522
  br i1 %565, label %619, label %566

566:                                              ; preds = %564, %548, %520
  %567 = phi ptr [ %515, %520 ], [ %532, %548 ], [ %553, %564 ]
  %568 = phi ptr [ %518, %520 ], [ %533, %548 ], [ %554, %564 ]
  %569 = phi i32 [ %512, %520 ], [ %535, %548 ], [ %556, %564 ]
  %570 = add i32 %569, -1
  %571 = and i32 %569, 7
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %584, label %573

573:                                              ; preds = %573, %566
  %574 = phi ptr [ %580, %573 ], [ %567, %566 ]
  %575 = phi ptr [ %578, %573 ], [ %568, %566 ]
  %576 = phi i32 [ %581, %573 ], [ %569, %566 ]
  %577 = phi i32 [ %582, %573 ], [ 0, %566 ]
  %578 = getelementptr inbounds nuw i8, ptr %575, i64 1
  %579 = load i8, ptr %575, align 1, !tbaa !36
  %580 = getelementptr inbounds nuw i8, ptr %574, i64 1
  store i8 %579, ptr %574, align 1, !tbaa !36
  %581 = add i32 %576, -1
  %582 = add i32 %577, 1
  %583 = icmp eq i32 %582, %571
  br i1 %583, label %584, label %573, !llvm.loop !101

584:                                              ; preds = %573, %566
  %585 = phi ptr [ %567, %566 ], [ %580, %573 ]
  %586 = phi ptr [ %568, %566 ], [ %578, %573 ]
  %587 = phi i32 [ %569, %566 ], [ %581, %573 ]
  %588 = icmp ult i32 %570, 7
  br i1 %588, label %619, label %589

589:                                              ; preds = %589, %584
  %590 = phi ptr [ %616, %589 ], [ %585, %584 ]
  %591 = phi ptr [ %614, %589 ], [ %586, %584 ]
  %592 = phi i32 [ %617, %589 ], [ %587, %584 ]
  %593 = getelementptr inbounds nuw i8, ptr %591, i64 1
  %594 = load i8, ptr %591, align 1, !tbaa !36
  %595 = getelementptr inbounds nuw i8, ptr %590, i64 1
  store i8 %594, ptr %590, align 1, !tbaa !36
  %596 = getelementptr inbounds nuw i8, ptr %591, i64 2
  %597 = load i8, ptr %593, align 1, !tbaa !36
  %598 = getelementptr inbounds nuw i8, ptr %590, i64 2
  store i8 %597, ptr %595, align 1, !tbaa !36
  %599 = getelementptr inbounds nuw i8, ptr %591, i64 3
  %600 = load i8, ptr %596, align 1, !tbaa !36
  %601 = getelementptr inbounds nuw i8, ptr %590, i64 3
  store i8 %600, ptr %598, align 1, !tbaa !36
  %602 = getelementptr inbounds nuw i8, ptr %591, i64 4
  %603 = load i8, ptr %599, align 1, !tbaa !36
  %604 = getelementptr inbounds nuw i8, ptr %590, i64 4
  store i8 %603, ptr %601, align 1, !tbaa !36
  %605 = getelementptr inbounds nuw i8, ptr %591, i64 5
  %606 = load i8, ptr %602, align 1, !tbaa !36
  %607 = getelementptr inbounds nuw i8, ptr %590, i64 5
  store i8 %606, ptr %604, align 1, !tbaa !36
  %608 = getelementptr inbounds nuw i8, ptr %591, i64 6
  %609 = load i8, ptr %605, align 1, !tbaa !36
  %610 = getelementptr inbounds nuw i8, ptr %590, i64 6
  store i8 %609, ptr %607, align 1, !tbaa !36
  %611 = getelementptr inbounds nuw i8, ptr %591, i64 7
  %612 = load i8, ptr %608, align 1, !tbaa !36
  %613 = getelementptr inbounds nuw i8, ptr %590, i64 7
  store i8 %612, ptr %610, align 1, !tbaa !36
  %614 = getelementptr inbounds nuw i8, ptr %591, i64 8
  %615 = load i8, ptr %611, align 1, !tbaa !36
  %616 = getelementptr inbounds nuw i8, ptr %590, i64 8
  store i8 %615, ptr %613, align 1, !tbaa !36
  %617 = add i32 %592, -8
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %589, !llvm.loop !102

619:                                              ; preds = %589, %584, %564, %546
  %620 = load i32, ptr %455, align 8, !tbaa !34
  %621 = load ptr, ptr %457, align 8, !tbaa !29
  br label %622

622:                                              ; preds = %619, %517, %513
  %623 = phi ptr [ %621, %619 ], [ %515, %517 ], [ %515, %513 ]
  %624 = phi i32 [ %620, %619 ], [ %512, %517 ], [ 0, %513 ]
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds nuw i8, ptr %623, i64 %625
  %627 = load i32, ptr %450, align 8, !tbaa !27
  %628 = sub i32 %627, %624
  store i32 0, ptr %458, align 4, !tbaa !17
  %629 = tail call ptr @__errno_location() #16
  store i32 0, ptr %629, align 4, !tbaa !4
  br label %630

630:                                              ; preds = %641, %622
  %631 = phi i32 [ 0, %622 ], [ %642, %641 ]
  %632 = sub i32 %628, %631
  %633 = tail call i32 @llvm.umin.i32(i32 %632, i32 1073741824)
  %634 = load i32, ptr %459, align 4, !tbaa !46
  %635 = zext i32 %631 to i64
  %636 = getelementptr inbounds nuw i8, ptr %626, i64 %635
  %637 = zext nneg i32 %633 to i64
  %638 = tail call i64 @read(i32 noundef %634, ptr noundef %636, i64 noundef %637) #13
  %639 = trunc i64 %638 to i32
  %640 = icmp slt i32 %639, 1
  br i1 %640, label %644, label %641

641:                                              ; preds = %630
  %642 = add i32 %631, %639
  %643 = icmp ult i32 %642, %628
  br i1 %643, label %630, label %657, !llvm.loop !47

644:                                              ; preds = %630
  %645 = icmp slt i32 %639, 0
  br i1 %645, label %646, label %653

646:                                              ; preds = %644
  %647 = load i32, ptr %629, align 4, !tbaa !4
  %648 = icmp eq i32 %647, 11
  br i1 %648, label %649, label %654

649:                                              ; preds = %646
  store i32 1, ptr %458, align 4, !tbaa !17
  %650 = icmp eq i32 %631, 0
  br i1 %650, label %651, label %657

651:                                              ; preds = %649
  %652 = load i32, ptr %629, align 4, !tbaa !4
  br label %654

653:                                              ; preds = %644
  store i32 1, ptr %456, align 8, !tbaa !24
  br label %657

654:                                              ; preds = %651, %646
  %655 = phi i32 [ %652, %651 ], [ %647, %646 ]
  %656 = tail call ptr @strerror(i32 noundef %655) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %656) #13
  br label %876

657:                                              ; preds = %653, %649, %641
  %658 = phi i32 [ %631, %649 ], [ %631, %653 ], [ %642, %641 ]
  %659 = load i32, ptr %455, align 8, !tbaa !34
  %660 = add i32 %659, %658
  store i32 %660, ptr %455, align 8, !tbaa !34
  %661 = load ptr, ptr %457, align 8, !tbaa !29
  store ptr %661, ptr %454, align 8, !tbaa !35
  br label %662

662:                                              ; preds = %657, %509
  %663 = phi i32 [ %660, %657 ], [ %512, %509 ]
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %694, label %665

665:                                              ; preds = %662
  %666 = load i32, ptr %458, align 4, !tbaa !17
  %667 = icmp ne i32 %666, 0
  %668 = icmp ult i32 %663, 4
  %669 = and i1 %668, %667
  br i1 %669, label %694, label %670

670:                                              ; preds = %665
  %671 = icmp ugt i32 %663, 3
  %672 = load ptr, ptr %454, align 8, !tbaa !35
  br i1 %671, label %673, label %690

673:                                              ; preds = %670
  %674 = load i8, ptr %672, align 1, !tbaa !36
  %675 = icmp eq i8 %674, 31
  br i1 %675, label %676, label %690

676:                                              ; preds = %673
  %677 = getelementptr inbounds nuw i8, ptr %672, i64 1
  %678 = load i8, ptr %677, align 1, !tbaa !36
  %679 = icmp eq i8 %678, -117
  br i1 %679, label %680, label %690

680:                                              ; preds = %676
  %681 = getelementptr inbounds nuw i8, ptr %672, i64 2
  %682 = load i8, ptr %681, align 1, !tbaa !36
  %683 = icmp eq i8 %682, 8
  br i1 %683, label %684, label %690

684:                                              ; preds = %680
  %685 = getelementptr inbounds nuw i8, ptr %672, i64 3
  %686 = load i8, ptr %685, align 1, !tbaa !36
  %687 = icmp ult i8 %686, 32
  br i1 %687, label %688, label %690

688:                                              ; preds = %684
  %689 = tail call i32 @inflateReset(ptr noundef nonnull %454) #13
  store i32 2, ptr %449, align 8, !tbaa !26
  store i32 1, ptr %460, align 4, !tbaa !33
  store i32 0, ptr %464, align 8, !tbaa !32
  br label %831

690:                                              ; preds = %684, %680, %676, %673, %670
  %691 = load ptr, ptr %452, align 8, !tbaa !30
  store ptr %691, ptr %461, align 8, !tbaa !20
  %692 = zext i32 %663 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %691, ptr align 1 %672, i64 %692, i1 false)
  %693 = load i32, ptr %455, align 8, !tbaa !34
  store i32 %693, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %455, align 8, !tbaa !34
  store i32 1, ptr %449, align 8, !tbaa !26
  br label %833

694:                                              ; preds = %665, %662, %502
  %695 = load i32, ptr %449, align 8, !tbaa !26
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %843, label %831

697:                                              ; preds = %472
  %698 = load ptr, ptr %452, align 8, !tbaa !30
  %699 = load i32, ptr %450, align 8, !tbaa !27
  %700 = shl i32 %699, 1
  store i32 0, ptr %458, align 4, !tbaa !17
  %701 = tail call ptr @__errno_location() #16
  store i32 0, ptr %701, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %702

702:                                              ; preds = %713, %697
  %703 = phi i32 [ %715, %713 ], [ 0, %697 ]
  %704 = sub i32 %700, %703
  %705 = tail call i32 @llvm.umin.i32(i32 %704, i32 1073741824)
  %706 = load i32, ptr %459, align 4, !tbaa !46
  %707 = zext i32 %703 to i64
  %708 = getelementptr inbounds nuw i8, ptr %698, i64 %707
  %709 = zext nneg i32 %705 to i64
  %710 = tail call i64 @read(i32 noundef %706, ptr noundef %708, i64 noundef %709) #13
  %711 = trunc i64 %710 to i32
  %712 = icmp slt i32 %711, 1
  br i1 %712, label %717, label %713

713:                                              ; preds = %702
  %714 = load i32, ptr %0, align 4, !tbaa !4
  %715 = add i32 %714, %711
  store i32 %715, ptr %0, align 4, !tbaa !4
  %716 = icmp ult i32 %715, %700
  br i1 %716, label %702, label %731, !llvm.loop !47

717:                                              ; preds = %702
  %718 = icmp slt i32 %711, 0
  br i1 %718, label %719, label %727

719:                                              ; preds = %717
  %720 = load i32, ptr %701, align 4, !tbaa !4
  %721 = icmp eq i32 %720, 11
  br i1 %721, label %722, label %728

722:                                              ; preds = %719
  store i32 1, ptr %458, align 4, !tbaa !17
  %723 = load i32, ptr %0, align 4, !tbaa !4
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %731

725:                                              ; preds = %722
  %726 = load i32, ptr %701, align 4, !tbaa !4
  br label %728

727:                                              ; preds = %717
  store i32 1, ptr %456, align 8, !tbaa !24
  br label %731

728:                                              ; preds = %725, %719
  %729 = phi i32 [ %726, %725 ], [ %720, %719 ]
  %730 = tail call ptr @strerror(i32 noundef %729) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %730) #13
  br label %876

731:                                              ; preds = %727, %722, %713
  %732 = load ptr, ptr %452, align 8, !tbaa !30
  store ptr %732, ptr %461, align 8, !tbaa !20
  br label %843

733:                                              ; preds = %472
  %734 = load i32, ptr %450, align 8, !tbaa !27
  %735 = shl i32 %734, 1
  store i32 %735, ptr %451, align 8, !tbaa !48
  %736 = load ptr, ptr %452, align 8, !tbaa !30
  store ptr %736, ptr %453, align 8, !tbaa !49
  br label %737

737:                                              ; preds = %810, %733
  %738 = phi i32 [ 0, %733 ], [ %789, %810 ]
  %739 = load i32, ptr %455, align 8, !tbaa !34
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %788

741:                                              ; preds = %737
  %742 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %742, label %821 [
    i32 0, label %743
    i32 -5, label %743
  ]

743:                                              ; preds = %741, %741
  %744 = load i32, ptr %456, align 8, !tbaa !24
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %784

746:                                              ; preds = %743
  %747 = load ptr, ptr %457, align 8, !tbaa !29
  %748 = load i32, ptr %450, align 8, !tbaa !27
  store i32 0, ptr %458, align 4, !tbaa !17
  %749 = tail call ptr @__errno_location() #16
  store i32 0, ptr %749, align 4, !tbaa !4
  br label %750

750:                                              ; preds = %761, %746
  %751 = phi i32 [ 0, %746 ], [ %762, %761 ]
  %752 = sub i32 %748, %751
  %753 = tail call i32 @llvm.umin.i32(i32 %752, i32 1073741824)
  %754 = load i32, ptr %459, align 4, !tbaa !46
  %755 = zext i32 %751 to i64
  %756 = getelementptr inbounds nuw i8, ptr %747, i64 %755
  %757 = zext nneg i32 %753 to i64
  %758 = tail call i64 @read(i32 noundef %754, ptr noundef %756, i64 noundef %757) #13
  %759 = trunc i64 %758 to i32
  %760 = icmp slt i32 %759, 1
  br i1 %760, label %764, label %761

761:                                              ; preds = %750
  %762 = add i32 %751, %759
  %763 = icmp ult i32 %762, %748
  br i1 %763, label %750, label %778, !llvm.loop !47

764:                                              ; preds = %750
  %765 = icmp slt i32 %759, 0
  br i1 %765, label %766, label %773

766:                                              ; preds = %764
  %767 = load i32, ptr %749, align 4, !tbaa !4
  %768 = icmp eq i32 %767, 11
  br i1 %768, label %769, label %774

769:                                              ; preds = %766
  store i32 1, ptr %458, align 4, !tbaa !17
  %770 = icmp eq i32 %751, 0
  br i1 %770, label %771, label %778

771:                                              ; preds = %769
  %772 = load i32, ptr %749, align 4, !tbaa !4
  br label %774

773:                                              ; preds = %764
  store i32 1, ptr %456, align 8, !tbaa !24
  br label %778

774:                                              ; preds = %771, %766
  %775 = phi i32 [ %772, %771 ], [ %767, %766 ]
  %776 = tail call ptr @strerror(i32 noundef %775) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %776) #13
  %777 = load i32, ptr %14, align 8, !tbaa !16
  br label %821

778:                                              ; preds = %773, %769, %761
  %779 = phi i32 [ %751, %769 ], [ %751, %773 ], [ %762, %761 ]
  %780 = load i32, ptr %455, align 8, !tbaa !34
  %781 = add i32 %780, %779
  store i32 %781, ptr %455, align 8, !tbaa !34
  %782 = load ptr, ptr %457, align 8, !tbaa !29
  store ptr %782, ptr %454, align 8, !tbaa !35
  %783 = icmp eq i32 %781, 0
  br i1 %783, label %784, label %788

784:                                              ; preds = %778, %743
  %785 = load i32, ptr %458, align 4, !tbaa !17
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %787, label %821

787:                                              ; preds = %784
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %821

788:                                              ; preds = %778, %737
  %789 = tail call i32 @inflate(ptr noundef nonnull %454, i32 noundef 0) #13
  %790 = load i32, ptr %451, align 8, !tbaa !48
  %791 = icmp ult i32 %790, %735
  br i1 %791, label %792, label %793

792:                                              ; preds = %788
  store i32 0, ptr %460, align 4, !tbaa !33
  br label %793

793:                                              ; preds = %792, %788
  switch i32 %789, label %810 [
    i32 -2, label %794
    i32 2, label %794
    i32 -4, label %795
    i32 -3, label %796
  ]

794:                                              ; preds = %793, %793
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %821

795:                                              ; preds = %793
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %814

796:                                              ; preds = %793
  %797 = load i32, ptr %460, align 4, !tbaa !33
  %798 = icmp eq i32 %797, 1
  br i1 %798, label %799, label %805

799:                                              ; preds = %796
  store i32 0, ptr %455, align 8, !tbaa !34
  store i32 1, ptr %456, align 8, !tbaa !24
  store i32 0, ptr %449, align 8, !tbaa !26
  %800 = sub i32 %735, %790
  store i32 %800, ptr %0, align 8, !tbaa !19
  %801 = load ptr, ptr %453, align 8, !tbaa !49
  %802 = zext i32 %800 to i64
  %803 = sub nsw i64 0, %802
  %804 = getelementptr inbounds i8, ptr %801, i64 %803
  store ptr %804, ptr %461, align 8, !tbaa !20
  br label %831

805:                                              ; preds = %796
  %806 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %807 = load ptr, ptr %806, align 8, !tbaa !50
  %808 = icmp eq ptr %807, null
  %809 = select i1 %808, ptr @.str.6, ptr %807
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %809) #13
  br label %814

810:                                              ; preds = %793
  %811 = icmp ne i32 %790, 0
  %812 = icmp ne i32 %789, 1
  %813 = select i1 %811, i1 %812, i1 false
  br i1 %813, label %737, label %821, !llvm.loop !51

814:                                              ; preds = %805, %795
  %815 = load i32, ptr %451, align 8, !tbaa !48
  %816 = sub i32 %735, %815
  store i32 %816, ptr %0, align 8, !tbaa !19
  %817 = load ptr, ptr %453, align 8, !tbaa !49
  %818 = zext i32 %816 to i64
  %819 = sub nsw i64 0, %818
  %820 = getelementptr inbounds i8, ptr %817, i64 %819
  store ptr %820, ptr %461, align 8, !tbaa !20
  br label %876

821:                                              ; preds = %810, %794, %787, %784, %774, %741
  %822 = phi i32 [ %777, %774 ], [ %738, %784 ], [ %738, %787 ], [ %789, %794 ], [ %789, %810 ], [ %742, %741 ]
  %823 = load i32, ptr %451, align 8, !tbaa !48
  %824 = sub i32 %735, %823
  store i32 %824, ptr %0, align 8, !tbaa !19
  %825 = load ptr, ptr %453, align 8, !tbaa !49
  %826 = zext i32 %824 to i64
  %827 = sub nsw i64 0, %826
  %828 = getelementptr inbounds i8, ptr %825, i64 %827
  store ptr %828, ptr %461, align 8, !tbaa !20
  switch i32 %822, label %876 [
    i32 1, label %829
    i32 0, label %831
  ]

829:                                              ; preds = %821
  store i32 0, ptr %460, align 4, !tbaa !33
  store i32 0, ptr %449, align 8, !tbaa !26
  br label %831

830:                                              ; preds = %472
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %876

831:                                              ; preds = %829, %821, %799, %694, %688
  %832 = load i32, ptr %0, align 8, !tbaa !19
  br label %833

833:                                              ; preds = %831, %690
  %834 = phi i32 [ %832, %831 ], [ %693, %690 ]
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %843

836:                                              ; preds = %833
  %837 = load i32, ptr %456, align 8, !tbaa !24
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %842, label %839

839:                                              ; preds = %836
  %840 = load i32, ptr %455, align 8, !tbaa !34
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %843, label %842

842:                                              ; preds = %839, %836
  br label %472, !llvm.loop !52

843:                                              ; preds = %839, %833, %731, %694
  %844 = load i32, ptr %0, align 8, !tbaa !19
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %848

846:                                              ; preds = %843
  %847 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %847, align 4, !tbaa !61
  br label %876

848:                                              ; preds = %843, %467
  %849 = phi i32 [ %844, %843 ], [ %468, %467 ]
  %850 = tail call i32 @llvm.umin.i32(i32 %849, i32 %469)
  %851 = load ptr, ptr %461, align 8, !tbaa !20
  %852 = zext i32 %850 to i64
  %853 = tail call ptr @memchr(ptr noundef %851, i32 noundef 10, i64 noundef %852) #17
  %854 = icmp eq ptr %853, null
  %855 = ptrtoint ptr %853 to i64
  %856 = ptrtoint ptr %851 to i64
  %857 = sub i64 %855, %856
  %858 = trunc i64 %857 to i32
  %859 = add i32 %858, 1
  %860 = select i1 %854, i32 %850, i32 %859
  %861 = zext i32 %860 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %470, ptr align 1 %851, i64 %861, i1 false)
  %862 = load i32, ptr %0, align 8, !tbaa !19
  %863 = sub i32 %862, %860
  store i32 %863, ptr %0, align 8, !tbaa !19
  %864 = load ptr, ptr %461, align 8, !tbaa !20
  %865 = getelementptr inbounds nuw i8, ptr %864, i64 %861
  store ptr %865, ptr %461, align 8, !tbaa !20
  %866 = load i64, ptr %465, align 8, !tbaa !21
  %867 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %866, i64 %861), !nosanitize !22
  %868 = extractvalue { i64, i1 } %867, 1, !nosanitize !22
  br i1 %868, label %869, label %870, !prof !23, !nosanitize !22

869:                                              ; preds = %848
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

870:                                              ; preds = %848
  %871 = extractvalue { i64, i1 } %867, 0, !nosanitize !22
  store i64 %871, ptr %465, align 8, !tbaa !21
  %872 = sub i32 %469, %860
  %873 = getelementptr inbounds nuw i8, ptr %470, i64 %861
  %874 = icmp ne i32 %872, 0
  %875 = and i1 %854, %874
  br i1 %875, label %467, label %876, !llvm.loop !103

876:                                              ; preds = %870, %846, %830, %821, %814, %728, %654, %507, %493, %488
  %877 = phi ptr [ %470, %821 ], [ %470, %846 ], [ %470, %830 ], [ %470, %728 ], [ %470, %654 ], [ %470, %488 ], [ %470, %493 ], [ %470, %814 ], [ %470, %507 ], [ %873, %870 ]
  %878 = icmp eq ptr %877, %1
  br i1 %878, label %880, label %879

879:                                              ; preds = %876
  store i8 0, ptr %877, align 1, !tbaa !36
  br label %880

880:                                              ; preds = %879, %876, %445, %427, %418, %411, %325, %251, %104, %90, %85, %16, %9, %3
  %881 = phi ptr [ null, %9 ], [ null, %3 ], [ null, %16 ], [ null, %90 ], [ %1, %879 ], [ null, %876 ], [ null, %411 ], [ null, %445 ], [ null, %427 ], [ null, %325 ], [ null, %251 ], [ null, %85 ], [ null, %418 ], [ null, %104 ]
  ret ptr %881
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
