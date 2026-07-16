; ModuleID = '/home/amiralie1380/michigan/pl/zlib/gzread.c'
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
  br i1 %4, label %1121, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1121

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
  br i1 %15, label %1121, label %16

16:                                               ; preds = %9, %9, %12
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #14
  br label %1121

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %1109, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %473, label %26

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

45:                                               ; preds = %470, %26
  %46 = phi i64 [ %471, %470 ], [ %24, %26 ]
  %47 = load i32, ptr %0, align 8, !tbaa !19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = zext i32 %47 to i64
  %51 = tail call i64 @llvm.smin.i64(i64 %46, i64 %50)
  %52 = trunc i64 %51 to i32
  %53 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %47, i32 %52), !nosanitize !20
  %54 = extractvalue { i32, i1 } %53, 1, !nosanitize !20
  br i1 %54, label %55, label %56, !prof !21, !nosanitize !20

55:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

56:                                               ; preds = %49
  %57 = extractvalue { i32, i1 } %53, 0, !nosanitize !20
  store i32 %57, ptr %0, align 8, !tbaa !19
  %58 = load ptr, ptr %27, align 8, !tbaa !22
  %59 = and i64 %51, 4294967295
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 %59
  store ptr %60, ptr %27, align 8, !tbaa !22
  %61 = load i64, ptr %28, align 8, !tbaa !23
  %62 = add nsw i64 %61, %59
  store i64 %62, ptr %28, align 8, !tbaa !23
  %63 = sub nsw i64 %46, %59
  store i64 %63, ptr %23, align 8, !tbaa !18
  br label %470

64:                                               ; preds = %45
  %65 = load i32, ptr %29, align 8, !tbaa !24
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %30, align 8, !tbaa !25
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %473, label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %467, %70
  %72 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %72, label %455 [
    i32 0, label %73
    i32 1, label %311
    i32 2, label %355
  ]

73:                                               ; preds = %71
  %74 = load i32, ptr %32, align 8, !tbaa !27
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = load i32, ptr %42, align 4, !tbaa !28
  %78 = zext i32 %77 to i64
  %79 = tail call noalias ptr @malloc(i64 noundef %78) #16
  store ptr %79, ptr %37, align 8, !tbaa !29
  %80 = load i32, ptr %42, align 4, !tbaa !28
  %81 = shl i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = tail call noalias ptr @malloc(i64 noundef %82) #16
  store ptr %83, ptr %34, align 8, !tbaa !30
  %84 = icmp eq ptr %79, null
  %85 = icmp eq ptr %83, null
  %86 = or i1 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  tail call void @free(ptr noundef %83) #14
  tail call void @free(ptr noundef %79) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1109

88:                                               ; preds = %76
  %89 = load i32, ptr %42, align 4, !tbaa !28
  store i32 %89, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %90 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %93) #14
  %94 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %94) #14
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1109

95:                                               ; preds = %88, %73
  %96 = load i32, ptr %44, align 8, !tbaa !32
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr %40, align 4, !tbaa !33
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98, %95
  %102 = tail call i32 @inflateReset(ptr noundef nonnull %36) #14
  store i32 2, ptr %31, align 8, !tbaa !26
  %103 = load i32, ptr %40, align 4, !tbaa !33
  %104 = icmp ne i32 %103, -1
  %105 = zext i1 %104 to i32
  store i32 %105, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %308

106:                                              ; preds = %98
  %107 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %107, label %1111 [
    i32 0, label %108
    i32 -5, label %108
  ]

108:                                              ; preds = %106, %106
  %109 = load i32, ptr %29, align 8, !tbaa !24
  %110 = icmp eq i32 %109, 0
  %111 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %110, label %112, label %276

112:                                              ; preds = %108
  %113 = icmp eq i32 %111, 0
  br i1 %113, label %220, label %114

114:                                              ; preds = %112
  %115 = load ptr, ptr %37, align 8, !tbaa !29
  %116 = load ptr, ptr %36, align 8, !tbaa !35
  %117 = icmp eq ptr %116, %115
  br i1 %117, label %220, label %118

118:                                              ; preds = %114
  %119 = ptrtoaddr ptr %116 to i64
  %120 = ptrtoaddr ptr %115 to i64
  %121 = zext i32 %111 to i64
  %122 = icmp ult i32 %111, 4
  %123 = sub i64 %120, %119
  %124 = icmp ult i64 %123, 32
  %125 = or i1 %122, %124
  br i1 %125, label %165, label %126

126:                                              ; preds = %118
  %127 = icmp ult i32 %111, 32
  br i1 %127, label %149, label %128

128:                                              ; preds = %126
  %129 = and i64 %121, 28
  %130 = and i64 %121, 4294967264
  %131 = getelementptr i8, ptr %115, i64 %130
  %132 = getelementptr i8, ptr %116, i64 %130
  %133 = trunc nuw i64 %130 to i32
  %134 = sub i32 %111, %133
  br label %135

135:                                              ; preds = %135, %128
  %136 = phi i64 [ 0, %128 ], [ %143, %135 ]
  %137 = getelementptr i8, ptr %115, i64 %136
  %138 = getelementptr i8, ptr %116, i64 %136
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

149:                                              ; preds = %126, %147
  %150 = phi i64 [ %130, %147 ], [ 0, %126 ]
  %151 = and i64 %121, 4294967292
  %152 = getelementptr i8, ptr %115, i64 %151
  %153 = getelementptr i8, ptr %116, i64 %151
  %154 = trunc nuw i64 %151 to i32
  %155 = sub i32 %111, %154
  br label %156

156:                                              ; preds = %156, %149
  %157 = phi i64 [ %150, %149 ], [ %161, %156 ]
  %158 = getelementptr i8, ptr %115, i64 %157
  %159 = getelementptr i8, ptr %116, i64 %157
  %160 = load <4 x i8>, ptr %159, align 1, !tbaa !36
  store <4 x i8> %160, ptr %158, align 1, !tbaa !36
  %161 = add nuw i64 %157, 4
  %162 = icmp eq i64 %161, %151
  br i1 %162, label %163, label %156, !llvm.loop !42

163:                                              ; preds = %156
  %164 = icmp eq i64 %151, %121
  br i1 %164, label %218, label %165

165:                                              ; preds = %118, %147, %163
  %166 = phi ptr [ %115, %118 ], [ %131, %147 ], [ %152, %163 ]
  %167 = phi ptr [ %116, %118 ], [ %132, %147 ], [ %153, %163 ]
  %168 = phi i32 [ %111, %118 ], [ %134, %147 ], [ %155, %163 ]
  %169 = add i32 %168, -1
  %170 = and i32 %168, 7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %183, label %172

172:                                              ; preds = %165, %172
  %173 = phi ptr [ %179, %172 ], [ %166, %165 ]
  %174 = phi ptr [ %180, %172 ], [ %167, %165 ]
  %175 = phi i32 [ %178, %172 ], [ %168, %165 ]
  %176 = phi i32 [ %181, %172 ], [ 0, %165 ]
  %177 = load i8, ptr %174, align 1, !tbaa !36
  store i8 %177, ptr %173, align 1, !tbaa !36
  %178 = add i32 %175, -1
  %179 = getelementptr inbounds nuw i8, ptr %173, i64 1
  %180 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %181 = add i32 %176, 1
  %182 = icmp eq i32 %181, %170
  br i1 %182, label %183, label %172, !llvm.loop !43

183:                                              ; preds = %172, %165
  %184 = phi ptr [ %166, %165 ], [ %179, %172 ]
  %185 = phi ptr [ %167, %165 ], [ %180, %172 ]
  %186 = phi i32 [ %168, %165 ], [ %178, %172 ]
  %187 = icmp ult i32 %169, 7
  br i1 %187, label %218, label %188

188:                                              ; preds = %183, %188
  %189 = phi ptr [ %215, %188 ], [ %184, %183 ]
  %190 = phi ptr [ %216, %188 ], [ %185, %183 ]
  %191 = phi i32 [ %214, %188 ], [ %186, %183 ]
  %192 = load i8, ptr %190, align 1, !tbaa !36
  store i8 %192, ptr %189, align 1, !tbaa !36
  %193 = getelementptr inbounds nuw i8, ptr %189, i64 1
  %194 = getelementptr inbounds nuw i8, ptr %190, i64 1
  %195 = load i8, ptr %194, align 1, !tbaa !36
  store i8 %195, ptr %193, align 1, !tbaa !36
  %196 = getelementptr inbounds nuw i8, ptr %189, i64 2
  %197 = getelementptr inbounds nuw i8, ptr %190, i64 2
  %198 = load i8, ptr %197, align 1, !tbaa !36
  store i8 %198, ptr %196, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %189, i64 3
  %200 = getelementptr inbounds nuw i8, ptr %190, i64 3
  %201 = load i8, ptr %200, align 1, !tbaa !36
  store i8 %201, ptr %199, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %189, i64 4
  %203 = getelementptr inbounds nuw i8, ptr %190, i64 4
  %204 = load i8, ptr %203, align 1, !tbaa !36
  store i8 %204, ptr %202, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %189, i64 5
  %206 = getelementptr inbounds nuw i8, ptr %190, i64 5
  %207 = load i8, ptr %206, align 1, !tbaa !36
  store i8 %207, ptr %205, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %189, i64 6
  %209 = getelementptr inbounds nuw i8, ptr %190, i64 6
  %210 = load i8, ptr %209, align 1, !tbaa !36
  store i8 %210, ptr %208, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %189, i64 7
  %212 = getelementptr inbounds nuw i8, ptr %190, i64 7
  %213 = load i8, ptr %212, align 1, !tbaa !36
  store i8 %213, ptr %211, align 1, !tbaa !36
  %214 = add i32 %191, -8
  %215 = getelementptr inbounds nuw i8, ptr %189, i64 8
  %216 = getelementptr inbounds nuw i8, ptr %190, i64 8
  %217 = icmp eq i32 %214, 0
  br i1 %217, label %218, label %188, !llvm.loop !45

218:                                              ; preds = %183, %188, %163, %145
  %219 = load i32, ptr %30, align 8, !tbaa !34
  br label %220

220:                                              ; preds = %218, %114, %112
  %221 = phi i32 [ %219, %218 ], [ %111, %114 ], [ 0, %112 ]
  %222 = load i32, ptr %32, align 8, !tbaa !27
  %223 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %222, i32 %221), !nosanitize !20
  %224 = extractvalue { i32, i1 } %223, 1, !nosanitize !20
  br i1 %224, label %225, label %226, !prof !21, !nosanitize !20

225:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

226:                                              ; preds = %220
  %227 = extractvalue { i32, i1 } %223, 0, !nosanitize !20
  %228 = load ptr, ptr %37, align 8, !tbaa !29
  %229 = zext i32 %221 to i64
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 %229
  store i32 0, ptr %38, align 4, !tbaa !17
  %231 = tail call ptr @__errno_location() #17
  store i32 0, ptr %231, align 4, !tbaa !4
  br label %232

232:                                              ; preds = %251, %226
  %233 = phi i32 [ 0, %226 ], [ %252, %251 ]
  %234 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %227, i32 %233), !nosanitize !20
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !20
  br i1 %235, label %236, label %237, !prof !21, !nosanitize !20

236:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

237:                                              ; preds = %232
  %238 = extractvalue { i32, i1 } %234, 0, !nosanitize !20
  %239 = tail call i32 @llvm.umin.i32(i32 %238, i32 1073741824)
  %240 = load i32, ptr %39, align 4, !tbaa !46
  %241 = zext i32 %233 to i64
  %242 = getelementptr inbounds nuw i8, ptr %230, i64 %241
  %243 = zext nneg i32 %239 to i64
  %244 = tail call i64 @read(i32 noundef %240, ptr noundef %242, i64 noundef %243) #14
  %245 = trunc i64 %244 to i32
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %254, label %247

247:                                              ; preds = %237
  %248 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 %245), !nosanitize !20
  %249 = extractvalue { i32, i1 } %248, 1, !nosanitize !20
  br i1 %249, label %250, label %251, !prof !21, !nosanitize !20

250:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

251:                                              ; preds = %247
  %252 = extractvalue { i32, i1 } %248, 0, !nosanitize !20
  %253 = icmp ult i32 %252, %227
  br i1 %253, label %232, label %267, !llvm.loop !47

254:                                              ; preds = %237
  %255 = icmp slt i32 %245, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %254
  %257 = load i32, ptr %231, align 4, !tbaa !4
  %258 = icmp eq i32 %257, 11
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  store i32 1, ptr %38, align 4, !tbaa !17
  %260 = icmp eq i32 %233, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %259
  %262 = load i32, ptr %231, align 4, !tbaa !4
  br label %264

263:                                              ; preds = %254
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %267

264:                                              ; preds = %256, %261
  %265 = phi i32 [ %262, %261 ], [ %257, %256 ]
  %266 = tail call ptr @strerror(i32 noundef %265) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %266) #14
  br label %1109

267:                                              ; preds = %251, %263, %259
  %268 = phi i32 [ %233, %259 ], [ %233, %263 ], [ %252, %251 ]
  %269 = load i32, ptr %30, align 8, !tbaa !34
  %270 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %269, i32 %268), !nosanitize !20
  %271 = extractvalue { i32, i1 } %270, 1, !nosanitize !20
  br i1 %271, label %272, label %273, !prof !21, !nosanitize !20

272:                                              ; preds = %267
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

273:                                              ; preds = %267
  %274 = extractvalue { i32, i1 } %270, 0, !nosanitize !20
  store i32 %274, ptr %30, align 8, !tbaa !34
  %275 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %275, ptr %36, align 8, !tbaa !35
  br label %276

276:                                              ; preds = %273, %108
  %277 = phi i32 [ %274, %273 ], [ %111, %108 ]
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %308, label %279

279:                                              ; preds = %276
  %280 = load i32, ptr %38, align 4, !tbaa !17
  %281 = icmp ne i32 %280, 0
  %282 = icmp ult i32 %277, 4
  %283 = and i1 %282, %281
  br i1 %283, label %308, label %284

284:                                              ; preds = %279
  %285 = icmp ugt i32 %277, 3
  %286 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %285, label %287, label %304

287:                                              ; preds = %284
  %288 = load i8, ptr %286, align 1, !tbaa !36
  %289 = icmp eq i8 %288, 31
  br i1 %289, label %290, label %304

290:                                              ; preds = %287
  %291 = getelementptr inbounds nuw i8, ptr %286, i64 1
  %292 = load i8, ptr %291, align 1, !tbaa !36
  %293 = icmp eq i8 %292, -117
  br i1 %293, label %294, label %304

294:                                              ; preds = %290
  %295 = getelementptr inbounds nuw i8, ptr %286, i64 2
  %296 = load i8, ptr %295, align 1, !tbaa !36
  %297 = icmp eq i8 %296, 8
  br i1 %297, label %298, label %304

298:                                              ; preds = %294
  %299 = getelementptr inbounds nuw i8, ptr %286, i64 3
  %300 = load i8, ptr %299, align 1, !tbaa !36
  %301 = icmp ult i8 %300, 32
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = tail call i32 @inflateReset(ptr noundef nonnull %36) #14
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %456

304:                                              ; preds = %298, %294, %290, %287, %284
  %305 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %305, ptr %27, align 8, !tbaa !22
  %306 = zext i32 %277 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %305, ptr align 1 %286, i64 %306, i1 false)
  %307 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %307, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %458

308:                                              ; preds = %279, %276, %101
  %309 = load i32, ptr %31, align 8, !tbaa !26
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %468, label %456

311:                                              ; preds = %71
  %312 = load ptr, ptr %34, align 8, !tbaa !30
  %313 = load i32, ptr %32, align 8, !tbaa !27
  %314 = shl i32 %313, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %315 = tail call ptr @__errno_location() #17
  store i32 0, ptr %315, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %316

316:                                              ; preds = %336, %311
  %317 = phi i32 [ %337, %336 ], [ 0, %311 ]
  %318 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %314, i32 %317), !nosanitize !20
  %319 = extractvalue { i32, i1 } %318, 1, !nosanitize !20
  br i1 %319, label %320, label %321, !prof !21, !nosanitize !20

320:                                              ; preds = %316
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

321:                                              ; preds = %316
  %322 = extractvalue { i32, i1 } %318, 0, !nosanitize !20
  %323 = tail call i32 @llvm.umin.i32(i32 %322, i32 1073741824)
  %324 = load i32, ptr %39, align 4, !tbaa !46
  %325 = zext i32 %317 to i64
  %326 = getelementptr inbounds nuw i8, ptr %312, i64 %325
  %327 = zext nneg i32 %323 to i64
  %328 = tail call i64 @read(i32 noundef %324, ptr noundef %326, i64 noundef %327) #14
  %329 = trunc i64 %328 to i32
  %330 = icmp slt i32 %329, 1
  br i1 %330, label %339, label %331

331:                                              ; preds = %321
  %332 = load i32, ptr %0, align 4, !tbaa !4
  %333 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %332, i32 %329), !nosanitize !20
  %334 = extractvalue { i32, i1 } %333, 1, !nosanitize !20
  br i1 %334, label %335, label %336, !prof !21, !nosanitize !20

335:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

336:                                              ; preds = %331
  %337 = extractvalue { i32, i1 } %333, 0, !nosanitize !20
  store i32 %337, ptr %0, align 4, !tbaa !4
  %338 = icmp ult i32 %337, %314
  br i1 %338, label %316, label %353, !llvm.loop !47

339:                                              ; preds = %321
  %340 = icmp slt i32 %329, 0
  br i1 %340, label %341, label %349

341:                                              ; preds = %339
  %342 = load i32, ptr %315, align 4, !tbaa !4
  %343 = icmp eq i32 %342, 11
  br i1 %343, label %344, label %350

344:                                              ; preds = %341
  store i32 1, ptr %38, align 4, !tbaa !17
  %345 = load i32, ptr %0, align 4, !tbaa !4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %344
  %348 = load i32, ptr %315, align 4, !tbaa !4
  br label %350

349:                                              ; preds = %339
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %353

350:                                              ; preds = %341, %347
  %351 = phi i32 [ %348, %347 ], [ %342, %341 ]
  %352 = tail call ptr @strerror(i32 noundef %351) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %352) #14
  br label %1109

353:                                              ; preds = %336, %349, %344
  %354 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %354, ptr %27, align 8, !tbaa !22
  br label %468

355:                                              ; preds = %71
  %356 = load i32, ptr %32, align 8, !tbaa !27
  %357 = shl i32 %356, 1
  store i32 %357, ptr %33, align 8, !tbaa !48
  %358 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %358, ptr %35, align 8, !tbaa !49
  br label %359

359:                                              ; preds = %438, %355
  %360 = phi i32 [ 0, %355 ], [ %423, %438 ]
  %361 = load i32, ptr %30, align 8, !tbaa !34
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %422

363:                                              ; preds = %359
  %364 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %364, label %442 [
    i32 0, label %365
    i32 -5, label %365
  ]

365:                                              ; preds = %363, %363
  %366 = load i32, ptr %29, align 8, !tbaa !24
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %418

368:                                              ; preds = %365
  %369 = load i32, ptr %32, align 8, !tbaa !27
  %370 = load ptr, ptr %37, align 8, !tbaa !29
  store i32 0, ptr %38, align 4, !tbaa !17
  %371 = tail call ptr @__errno_location() #17
  store i32 0, ptr %371, align 4, !tbaa !4
  br label %372

372:                                              ; preds = %391, %368
  %373 = phi i32 [ 0, %368 ], [ %392, %391 ]
  %374 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %369, i32 %373), !nosanitize !20
  %375 = extractvalue { i32, i1 } %374, 1, !nosanitize !20
  br i1 %375, label %376, label %377, !prof !21, !nosanitize !20

376:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

377:                                              ; preds = %372
  %378 = extractvalue { i32, i1 } %374, 0, !nosanitize !20
  %379 = tail call i32 @llvm.umin.i32(i32 %378, i32 1073741824)
  %380 = load i32, ptr %39, align 4, !tbaa !46
  %381 = zext i32 %373 to i64
  %382 = getelementptr inbounds nuw i8, ptr %370, i64 %381
  %383 = zext nneg i32 %379 to i64
  %384 = tail call i64 @read(i32 noundef %380, ptr noundef %382, i64 noundef %383) #14
  %385 = trunc i64 %384 to i32
  %386 = icmp slt i32 %385, 1
  br i1 %386, label %394, label %387

387:                                              ; preds = %377
  %388 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %373, i32 %385), !nosanitize !20
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !20
  br i1 %389, label %390, label %391, !prof !21, !nosanitize !20

390:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

391:                                              ; preds = %387
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !20
  %393 = icmp ult i32 %392, %369
  br i1 %393, label %372, label %408, !llvm.loop !47

394:                                              ; preds = %377
  %395 = icmp slt i32 %385, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %394
  %397 = load i32, ptr %371, align 4, !tbaa !4
  %398 = icmp eq i32 %397, 11
  br i1 %398, label %399, label %404

399:                                              ; preds = %396
  store i32 1, ptr %38, align 4, !tbaa !17
  %400 = icmp eq i32 %373, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %399
  %402 = load i32, ptr %371, align 4, !tbaa !4
  br label %404

403:                                              ; preds = %394
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %408

404:                                              ; preds = %396, %401
  %405 = phi i32 [ %402, %401 ], [ %397, %396 ]
  %406 = tail call ptr @strerror(i32 noundef %405) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %406) #14
  %407 = load i32, ptr %10, align 8, !tbaa !16
  br label %442

408:                                              ; preds = %391, %403, %399
  %409 = phi i32 [ %373, %399 ], [ %373, %403 ], [ %392, %391 ]
  %410 = load i32, ptr %30, align 8, !tbaa !34
  %411 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %410, i32 %409), !nosanitize !20
  %412 = extractvalue { i32, i1 } %411, 1, !nosanitize !20
  br i1 %412, label %413, label %414, !prof !21, !nosanitize !20

413:                                              ; preds = %408
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

414:                                              ; preds = %408
  %415 = extractvalue { i32, i1 } %411, 0, !nosanitize !20
  store i32 %415, ptr %30, align 8, !tbaa !34
  %416 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %416, ptr %36, align 8, !tbaa !35
  %417 = icmp eq i32 %415, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %414, %365
  %419 = load i32, ptr %38, align 4, !tbaa !17
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %442

421:                                              ; preds = %418
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %442

422:                                              ; preds = %414, %359
  %423 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #14
  %424 = load i32, ptr %33, align 8, !tbaa !48
  %425 = icmp ult i32 %424, %357
  br i1 %425, label %426, label %427

426:                                              ; preds = %422
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %427

427:                                              ; preds = %426, %422
  switch i32 %423, label %438 [
    i32 -2, label %428
    i32 2, label %428
    i32 -4, label %429
    i32 -3, label %430
  ]

428:                                              ; preds = %427, %427
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %442

429:                                              ; preds = %427
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %442

430:                                              ; preds = %427
  %431 = load i32, ptr %40, align 4, !tbaa !33
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %442

434:                                              ; preds = %430
  %435 = load ptr, ptr %41, align 8, !tbaa !50
  %436 = icmp eq ptr %435, null
  %437 = select i1 %436, ptr @.str.6, ptr %435
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %437) #14
  br label %442

438:                                              ; preds = %427
  %439 = icmp ne i32 %424, 0
  %440 = icmp ne i32 %423, 1
  %441 = select i1 %439, i1 %440, i1 false
  br i1 %441, label %359, label %442, !llvm.loop !51

442:                                              ; preds = %438, %363, %434, %433, %429, %428, %421, %418, %404
  %443 = phi i32 [ %407, %404 ], [ %360, %418 ], [ %360, %421 ], [ %423, %428 ], [ -4, %429 ], [ 0, %433 ], [ -3, %434 ], [ %423, %438 ], [ %364, %363 ]
  %444 = load i32, ptr %33, align 8, !tbaa !48
  %445 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %357, i32 %444), !nosanitize !20
  %446 = extractvalue { i32, i1 } %445, 1, !nosanitize !20
  br i1 %446, label %447, label %448, !prof !21, !nosanitize !20

447:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

448:                                              ; preds = %442
  %449 = extractvalue { i32, i1 } %445, 0, !nosanitize !20
  store i32 %449, ptr %0, align 8, !tbaa !19
  %450 = load ptr, ptr %35, align 8, !tbaa !49
  %451 = zext i32 %449 to i64
  %452 = sub nsw i64 0, %451
  %453 = getelementptr inbounds i8, ptr %450, i64 %452
  store ptr %453, ptr %27, align 8, !tbaa !22
  switch i32 %443, label %1109 [
    i32 1, label %454
    i32 0, label %456
  ]

454:                                              ; preds = %448
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %456

455:                                              ; preds = %71
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %1109

456:                                              ; preds = %454, %448, %308, %302
  %457 = load i32, ptr %0, align 8, !tbaa !19
  br label %458

458:                                              ; preds = %456, %304
  %459 = phi i32 [ %457, %456 ], [ %307, %304 ]
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %468

461:                                              ; preds = %458
  %462 = load i32, ptr %29, align 8, !tbaa !24
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %467, label %464

464:                                              ; preds = %461
  %465 = load i32, ptr %30, align 8, !tbaa !34
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %468, label %467

467:                                              ; preds = %464, %461
  br label %71, !llvm.loop !52

468:                                              ; preds = %464, %458, %308, %353
  %469 = load i64, ptr %23, align 8, !tbaa !18
  br label %470

470:                                              ; preds = %468, %56
  %471 = phi i64 [ %469, %468 ], [ %63, %56 ]
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %473, label %45, !llvm.loop !53

473:                                              ; preds = %470, %67, %22
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %492

492:                                              ; preds = %1097, %473
  %493 = phi ptr [ %1, %473 ], [ %1092, %1097 ]
  %494 = phi i64 [ %20, %473 ], [ %1093, %1097 ]
  %495 = phi i64 [ 0, %473 ], [ %1094, %1097 ]
  %496 = tail call i64 @llvm.umin.i64(i64 %494, i64 4294967295)
  %497 = trunc nuw i64 %496 to i32
  %498 = load i32, ptr %0, align 8, !tbaa !19
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %515, label %500

500:                                              ; preds = %492
  %501 = tail call i32 @llvm.umin.i32(i32 %498, i32 %497)
  %502 = load ptr, ptr %474, align 8, !tbaa !22
  %503 = zext i32 %501 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %493, ptr align 1 %502, i64 %503, i1 false)
  %504 = load ptr, ptr %474, align 8, !tbaa !22
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 %503
  store ptr %505, ptr %474, align 8, !tbaa !22
  %506 = load i32, ptr %0, align 8, !tbaa !19
  %507 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %506, i32 %501), !nosanitize !20
  %508 = extractvalue { i32, i1 } %507, 1, !nosanitize !20
  br i1 %508, label %509, label %510, !prof !21, !nosanitize !20

509:                                              ; preds = %500
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

510:                                              ; preds = %500
  %511 = extractvalue { i32, i1 } %507, 0, !nosanitize !20
  store i32 %511, ptr %0, align 8, !tbaa !19
  %512 = load i32, ptr %10, align 8, !tbaa !16
  %513 = icmp ne i32 %512, 0
  %514 = sext i1 %513 to i32
  br label %1075

515:                                              ; preds = %492
  %516 = load i32, ptr %475, align 8, !tbaa !24
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %521, label %518

518:                                              ; preds = %515
  %519 = load i32, ptr %476, align 8, !tbaa !25
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %1102, label %521

521:                                              ; preds = %518, %515
  %522 = load i32, ptr %477, align 8, !tbaa !26
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %528, label %524

524:                                              ; preds = %521
  %525 = load i32, ptr %478, align 8, !tbaa !27
  %526 = shl i32 %525, 1
  %527 = icmp ugt i32 %526, %497
  br i1 %527, label %528, label %931

528:                                              ; preds = %524, %521
  br label %529

529:                                              ; preds = %528, %925
  %530 = phi i32 [ %926, %925 ], [ %522, %528 ]
  switch i32 %530, label %913 [
    i32 0, label %531
    i32 1, label %769
    i32 2, label %813
  ]

531:                                              ; preds = %529
  %532 = load i32, ptr %478, align 8, !tbaa !27
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %553

534:                                              ; preds = %531
  %535 = load i32, ptr %489, align 4, !tbaa !28
  %536 = zext i32 %535 to i64
  %537 = tail call noalias ptr @malloc(i64 noundef %536) #16
  store ptr %537, ptr %482, align 8, !tbaa !29
  %538 = load i32, ptr %489, align 4, !tbaa !28
  %539 = shl i32 %538, 1
  %540 = zext i32 %539 to i64
  %541 = tail call noalias ptr @malloc(i64 noundef %540) #16
  store ptr %541, ptr %488, align 8, !tbaa !30
  %542 = icmp eq ptr %537, null
  %543 = icmp eq ptr %541, null
  %544 = or i1 %542, %543
  br i1 %544, label %545, label %546

545:                                              ; preds = %534
  tail call void @free(ptr noundef %541) #14
  tail call void @free(ptr noundef %537) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %927

546:                                              ; preds = %534
  %547 = load i32, ptr %489, align 4, !tbaa !28
  store i32 %547, ptr %478, align 8, !tbaa !27
  store i32 0, ptr %476, align 8, !tbaa !25
  store ptr null, ptr %481, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %490, i8 0, i64 24, i1 false)
  %548 = tail call i32 @inflateInit2_(ptr noundef nonnull %481, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %553, label %550

550:                                              ; preds = %546
  %551 = load ptr, ptr %488, align 8, !tbaa !30
  tail call void @free(ptr noundef %551) #14
  %552 = load ptr, ptr %482, align 8, !tbaa !29
  tail call void @free(ptr noundef %552) #14
  store i32 0, ptr %478, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %927

553:                                              ; preds = %546, %531
  %554 = load i32, ptr %491, align 8, !tbaa !32
  %555 = icmp eq i32 %554, -1
  br i1 %555, label %559, label %556

556:                                              ; preds = %553
  %557 = load i32, ptr %485, align 4, !tbaa !33
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %564

559:                                              ; preds = %556, %553
  %560 = tail call i32 @inflateReset(ptr noundef nonnull %481) #14
  store i32 2, ptr %477, align 8, !tbaa !26
  %561 = load i32, ptr %485, align 4, !tbaa !33
  %562 = icmp ne i32 %561, -1
  %563 = zext i1 %562 to i32
  store i32 %563, ptr %485, align 4, !tbaa !33
  store i32 0, ptr %491, align 8, !tbaa !32
  br label %766

564:                                              ; preds = %556
  %565 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %565, label %927 [
    i32 0, label %566
    i32 -5, label %566
  ]

566:                                              ; preds = %564, %564
  %567 = load i32, ptr %475, align 8, !tbaa !24
  %568 = icmp eq i32 %567, 0
  %569 = load i32, ptr %476, align 8, !tbaa !34
  br i1 %568, label %570, label %734

570:                                              ; preds = %566
  %571 = icmp eq i32 %569, 0
  br i1 %571, label %678, label %572

572:                                              ; preds = %570
  %573 = load ptr, ptr %482, align 8, !tbaa !29
  %574 = load ptr, ptr %481, align 8, !tbaa !35
  %575 = icmp eq ptr %574, %573
  br i1 %575, label %678, label %576

576:                                              ; preds = %572
  %577 = ptrtoaddr ptr %574 to i64
  %578 = ptrtoaddr ptr %573 to i64
  %579 = zext i32 %569 to i64
  %580 = icmp ult i32 %569, 4
  %581 = sub i64 %578, %577
  %582 = icmp ult i64 %581, 32
  %583 = or i1 %580, %582
  br i1 %583, label %623, label %584

584:                                              ; preds = %576
  %585 = icmp ult i32 %569, 32
  br i1 %585, label %607, label %586

586:                                              ; preds = %584
  %587 = and i64 %579, 28
  %588 = and i64 %579, 4294967264
  %589 = getelementptr i8, ptr %573, i64 %588
  %590 = getelementptr i8, ptr %574, i64 %588
  %591 = trunc nuw i64 %588 to i32
  %592 = sub i32 %569, %591
  br label %593

593:                                              ; preds = %593, %586
  %594 = phi i64 [ 0, %586 ], [ %601, %593 ]
  %595 = getelementptr i8, ptr %573, i64 %594
  %596 = getelementptr i8, ptr %574, i64 %594
  %597 = getelementptr i8, ptr %596, i64 16
  %598 = load <16 x i8>, ptr %596, align 1, !tbaa !36
  %599 = load <16 x i8>, ptr %597, align 1, !tbaa !36
  %600 = getelementptr i8, ptr %595, i64 16
  store <16 x i8> %598, ptr %595, align 1, !tbaa !36
  store <16 x i8> %599, ptr %600, align 1, !tbaa !36
  %601 = add nuw i64 %594, 32
  %602 = icmp eq i64 %601, %588
  br i1 %602, label %603, label %593, !llvm.loop !54

603:                                              ; preds = %593
  %604 = icmp eq i64 %588, %579
  br i1 %604, label %676, label %605

605:                                              ; preds = %603
  %606 = icmp eq i64 %587, 0
  br i1 %606, label %623, label %607, !prof !41

607:                                              ; preds = %584, %605
  %608 = phi i64 [ %588, %605 ], [ 0, %584 ]
  %609 = and i64 %579, 4294967292
  %610 = getelementptr i8, ptr %573, i64 %609
  %611 = getelementptr i8, ptr %574, i64 %609
  %612 = trunc nuw i64 %609 to i32
  %613 = sub i32 %569, %612
  br label %614

614:                                              ; preds = %614, %607
  %615 = phi i64 [ %608, %607 ], [ %619, %614 ]
  %616 = getelementptr i8, ptr %573, i64 %615
  %617 = getelementptr i8, ptr %574, i64 %615
  %618 = load <4 x i8>, ptr %617, align 1, !tbaa !36
  store <4 x i8> %618, ptr %616, align 1, !tbaa !36
  %619 = add nuw i64 %615, 4
  %620 = icmp eq i64 %619, %609
  br i1 %620, label %621, label %614, !llvm.loop !55

621:                                              ; preds = %614
  %622 = icmp eq i64 %609, %579
  br i1 %622, label %676, label %623

623:                                              ; preds = %576, %605, %621
  %624 = phi ptr [ %573, %576 ], [ %589, %605 ], [ %610, %621 ]
  %625 = phi ptr [ %574, %576 ], [ %590, %605 ], [ %611, %621 ]
  %626 = phi i32 [ %569, %576 ], [ %592, %605 ], [ %613, %621 ]
  %627 = add i32 %626, -1
  %628 = and i32 %626, 7
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %641, label %630

630:                                              ; preds = %623, %630
  %631 = phi ptr [ %637, %630 ], [ %624, %623 ]
  %632 = phi ptr [ %638, %630 ], [ %625, %623 ]
  %633 = phi i32 [ %636, %630 ], [ %626, %623 ]
  %634 = phi i32 [ %639, %630 ], [ 0, %623 ]
  %635 = load i8, ptr %632, align 1, !tbaa !36
  store i8 %635, ptr %631, align 1, !tbaa !36
  %636 = add i32 %633, -1
  %637 = getelementptr inbounds nuw i8, ptr %631, i64 1
  %638 = getelementptr inbounds nuw i8, ptr %632, i64 1
  %639 = add i32 %634, 1
  %640 = icmp eq i32 %639, %628
  br i1 %640, label %641, label %630, !llvm.loop !56

641:                                              ; preds = %630, %623
  %642 = phi ptr [ %624, %623 ], [ %637, %630 ]
  %643 = phi ptr [ %625, %623 ], [ %638, %630 ]
  %644 = phi i32 [ %626, %623 ], [ %636, %630 ]
  %645 = icmp ult i32 %627, 7
  br i1 %645, label %676, label %646

646:                                              ; preds = %641, %646
  %647 = phi ptr [ %673, %646 ], [ %642, %641 ]
  %648 = phi ptr [ %674, %646 ], [ %643, %641 ]
  %649 = phi i32 [ %672, %646 ], [ %644, %641 ]
  %650 = load i8, ptr %648, align 1, !tbaa !36
  store i8 %650, ptr %647, align 1, !tbaa !36
  %651 = getelementptr inbounds nuw i8, ptr %647, i64 1
  %652 = getelementptr inbounds nuw i8, ptr %648, i64 1
  %653 = load i8, ptr %652, align 1, !tbaa !36
  store i8 %653, ptr %651, align 1, !tbaa !36
  %654 = getelementptr inbounds nuw i8, ptr %647, i64 2
  %655 = getelementptr inbounds nuw i8, ptr %648, i64 2
  %656 = load i8, ptr %655, align 1, !tbaa !36
  store i8 %656, ptr %654, align 1, !tbaa !36
  %657 = getelementptr inbounds nuw i8, ptr %647, i64 3
  %658 = getelementptr inbounds nuw i8, ptr %648, i64 3
  %659 = load i8, ptr %658, align 1, !tbaa !36
  store i8 %659, ptr %657, align 1, !tbaa !36
  %660 = getelementptr inbounds nuw i8, ptr %647, i64 4
  %661 = getelementptr inbounds nuw i8, ptr %648, i64 4
  %662 = load i8, ptr %661, align 1, !tbaa !36
  store i8 %662, ptr %660, align 1, !tbaa !36
  %663 = getelementptr inbounds nuw i8, ptr %647, i64 5
  %664 = getelementptr inbounds nuw i8, ptr %648, i64 5
  %665 = load i8, ptr %664, align 1, !tbaa !36
  store i8 %665, ptr %663, align 1, !tbaa !36
  %666 = getelementptr inbounds nuw i8, ptr %647, i64 6
  %667 = getelementptr inbounds nuw i8, ptr %648, i64 6
  %668 = load i8, ptr %667, align 1, !tbaa !36
  store i8 %668, ptr %666, align 1, !tbaa !36
  %669 = getelementptr inbounds nuw i8, ptr %647, i64 7
  %670 = getelementptr inbounds nuw i8, ptr %648, i64 7
  %671 = load i8, ptr %670, align 1, !tbaa !36
  store i8 %671, ptr %669, align 1, !tbaa !36
  %672 = add i32 %649, -8
  %673 = getelementptr inbounds nuw i8, ptr %647, i64 8
  %674 = getelementptr inbounds nuw i8, ptr %648, i64 8
  %675 = icmp eq i32 %672, 0
  br i1 %675, label %676, label %646, !llvm.loop !57

676:                                              ; preds = %641, %646, %621, %603
  %677 = load i32, ptr %476, align 8, !tbaa !34
  br label %678

678:                                              ; preds = %676, %572, %570
  %679 = phi i32 [ %677, %676 ], [ %569, %572 ], [ 0, %570 ]
  %680 = load i32, ptr %478, align 8, !tbaa !27
  %681 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %680, i32 %679), !nosanitize !20
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !20
  br i1 %682, label %683, label %684, !prof !21, !nosanitize !20

683:                                              ; preds = %678
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

684:                                              ; preds = %678
  %685 = extractvalue { i32, i1 } %681, 0, !nosanitize !20
  %686 = load ptr, ptr %482, align 8, !tbaa !29
  %687 = zext i32 %679 to i64
  %688 = getelementptr inbounds nuw i8, ptr %686, i64 %687
  store i32 0, ptr %483, align 4, !tbaa !17
  %689 = tail call ptr @__errno_location() #17
  store i32 0, ptr %689, align 4, !tbaa !4
  br label %690

690:                                              ; preds = %709, %684
  %691 = phi i32 [ 0, %684 ], [ %710, %709 ]
  %692 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %685, i32 %691), !nosanitize !20
  %693 = extractvalue { i32, i1 } %692, 1, !nosanitize !20
  br i1 %693, label %694, label %695, !prof !21, !nosanitize !20

694:                                              ; preds = %690
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

695:                                              ; preds = %690
  %696 = extractvalue { i32, i1 } %692, 0, !nosanitize !20
  %697 = tail call i32 @llvm.umin.i32(i32 %696, i32 1073741824)
  %698 = load i32, ptr %484, align 4, !tbaa !46
  %699 = zext i32 %691 to i64
  %700 = getelementptr inbounds nuw i8, ptr %688, i64 %699
  %701 = zext nneg i32 %697 to i64
  %702 = tail call i64 @read(i32 noundef %698, ptr noundef %700, i64 noundef %701) #14
  %703 = trunc i64 %702 to i32
  %704 = icmp slt i32 %703, 1
  br i1 %704, label %712, label %705

705:                                              ; preds = %695
  %706 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %691, i32 %703), !nosanitize !20
  %707 = extractvalue { i32, i1 } %706, 1, !nosanitize !20
  br i1 %707, label %708, label %709, !prof !21, !nosanitize !20

708:                                              ; preds = %705
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

709:                                              ; preds = %705
  %710 = extractvalue { i32, i1 } %706, 0, !nosanitize !20
  %711 = icmp ult i32 %710, %685
  br i1 %711, label %690, label %725, !llvm.loop !47

712:                                              ; preds = %695
  %713 = icmp slt i32 %703, 0
  br i1 %713, label %714, label %721

714:                                              ; preds = %712
  %715 = load i32, ptr %689, align 4, !tbaa !4
  %716 = icmp eq i32 %715, 11
  br i1 %716, label %717, label %722

717:                                              ; preds = %714
  store i32 1, ptr %483, align 4, !tbaa !17
  %718 = icmp eq i32 %691, 0
  br i1 %718, label %719, label %725

719:                                              ; preds = %717
  %720 = load i32, ptr %689, align 4, !tbaa !4
  br label %722

721:                                              ; preds = %712
  store i32 1, ptr %475, align 8, !tbaa !24
  br label %725

722:                                              ; preds = %714, %719
  %723 = phi i32 [ %720, %719 ], [ %715, %714 ]
  %724 = tail call ptr @strerror(i32 noundef %723) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %724) #14
  br label %927

725:                                              ; preds = %709, %721, %717
  %726 = phi i32 [ %691, %717 ], [ %691, %721 ], [ %710, %709 ]
  %727 = load i32, ptr %476, align 8, !tbaa !34
  %728 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %727, i32 %726), !nosanitize !20
  %729 = extractvalue { i32, i1 } %728, 1, !nosanitize !20
  br i1 %729, label %730, label %731, !prof !21, !nosanitize !20

730:                                              ; preds = %725
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

731:                                              ; preds = %725
  %732 = extractvalue { i32, i1 } %728, 0, !nosanitize !20
  store i32 %732, ptr %476, align 8, !tbaa !34
  %733 = load ptr, ptr %482, align 8, !tbaa !29
  store ptr %733, ptr %481, align 8, !tbaa !35
  br label %734

734:                                              ; preds = %731, %566
  %735 = phi i32 [ %732, %731 ], [ %569, %566 ]
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %766, label %737

737:                                              ; preds = %734
  %738 = load i32, ptr %483, align 4, !tbaa !17
  %739 = icmp ne i32 %738, 0
  %740 = icmp ult i32 %735, 4
  %741 = and i1 %740, %739
  br i1 %741, label %766, label %742

742:                                              ; preds = %737
  %743 = icmp ugt i32 %735, 3
  %744 = load ptr, ptr %481, align 8, !tbaa !35
  br i1 %743, label %745, label %762

745:                                              ; preds = %742
  %746 = load i8, ptr %744, align 1, !tbaa !36
  %747 = icmp eq i8 %746, 31
  br i1 %747, label %748, label %762

748:                                              ; preds = %745
  %749 = getelementptr inbounds nuw i8, ptr %744, i64 1
  %750 = load i8, ptr %749, align 1, !tbaa !36
  %751 = icmp eq i8 %750, -117
  br i1 %751, label %752, label %762

752:                                              ; preds = %748
  %753 = getelementptr inbounds nuw i8, ptr %744, i64 2
  %754 = load i8, ptr %753, align 1, !tbaa !36
  %755 = icmp eq i8 %754, 8
  br i1 %755, label %756, label %762

756:                                              ; preds = %752
  %757 = getelementptr inbounds nuw i8, ptr %744, i64 3
  %758 = load i8, ptr %757, align 1, !tbaa !36
  %759 = icmp ult i8 %758, 32
  br i1 %759, label %760, label %762

760:                                              ; preds = %756
  %761 = tail call i32 @inflateReset(ptr noundef nonnull %481) #14
  store i32 2, ptr %477, align 8, !tbaa !26
  store i32 1, ptr %485, align 4, !tbaa !33
  store i32 0, ptr %491, align 8, !tbaa !32
  br label %914

762:                                              ; preds = %756, %752, %748, %745, %742
  %763 = load ptr, ptr %488, align 8, !tbaa !30
  store ptr %763, ptr %474, align 8, !tbaa !22
  %764 = zext i32 %735 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %763, ptr align 1 %744, i64 %764, i1 false)
  %765 = load i32, ptr %476, align 8, !tbaa !34
  store i32 %765, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %476, align 8, !tbaa !34
  store i32 1, ptr %477, align 8, !tbaa !26
  br label %916

766:                                              ; preds = %737, %734, %559
  %767 = load i32, ptr %477, align 8, !tbaa !26
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %1091, label %914

769:                                              ; preds = %529
  %770 = load ptr, ptr %488, align 8, !tbaa !30
  %771 = load i32, ptr %478, align 8, !tbaa !27
  %772 = shl i32 %771, 1
  store i32 0, ptr %483, align 4, !tbaa !17
  %773 = tail call ptr @__errno_location() #17
  store i32 0, ptr %773, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %774

774:                                              ; preds = %794, %769
  %775 = phi i32 [ %795, %794 ], [ 0, %769 ]
  %776 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %772, i32 %775), !nosanitize !20
  %777 = extractvalue { i32, i1 } %776, 1, !nosanitize !20
  br i1 %777, label %778, label %779, !prof !21, !nosanitize !20

778:                                              ; preds = %774
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

779:                                              ; preds = %774
  %780 = extractvalue { i32, i1 } %776, 0, !nosanitize !20
  %781 = tail call i32 @llvm.umin.i32(i32 %780, i32 1073741824)
  %782 = load i32, ptr %484, align 4, !tbaa !46
  %783 = zext i32 %775 to i64
  %784 = getelementptr inbounds nuw i8, ptr %770, i64 %783
  %785 = zext nneg i32 %781 to i64
  %786 = tail call i64 @read(i32 noundef %782, ptr noundef %784, i64 noundef %785) #14
  %787 = trunc i64 %786 to i32
  %788 = icmp slt i32 %787, 1
  br i1 %788, label %797, label %789

789:                                              ; preds = %779
  %790 = load i32, ptr %0, align 4, !tbaa !4
  %791 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %790, i32 %787), !nosanitize !20
  %792 = extractvalue { i32, i1 } %791, 1, !nosanitize !20
  br i1 %792, label %793, label %794, !prof !21, !nosanitize !20

793:                                              ; preds = %789
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

794:                                              ; preds = %789
  %795 = extractvalue { i32, i1 } %791, 0, !nosanitize !20
  store i32 %795, ptr %0, align 4, !tbaa !4
  %796 = icmp ult i32 %795, %772
  br i1 %796, label %774, label %811, !llvm.loop !47

797:                                              ; preds = %779
  %798 = icmp slt i32 %787, 0
  br i1 %798, label %799, label %807

799:                                              ; preds = %797
  %800 = load i32, ptr %773, align 4, !tbaa !4
  %801 = icmp eq i32 %800, 11
  br i1 %801, label %802, label %808

802:                                              ; preds = %799
  store i32 1, ptr %483, align 4, !tbaa !17
  %803 = load i32, ptr %0, align 4, !tbaa !4
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %811

805:                                              ; preds = %802
  %806 = load i32, ptr %773, align 4, !tbaa !4
  br label %808

807:                                              ; preds = %797
  store i32 1, ptr %475, align 8, !tbaa !24
  br label %811

808:                                              ; preds = %805, %799
  %809 = phi i32 [ %806, %805 ], [ %800, %799 ]
  %810 = tail call ptr @strerror(i32 noundef %809) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %810) #14
  br label %927

811:                                              ; preds = %794, %807, %802
  %812 = load ptr, ptr %488, align 8, !tbaa !30
  store ptr %812, ptr %474, align 8, !tbaa !22
  br label %1091

813:                                              ; preds = %529
  %814 = load i32, ptr %478, align 8, !tbaa !27
  %815 = shl i32 %814, 1
  store i32 %815, ptr %479, align 8, !tbaa !48
  %816 = load ptr, ptr %488, align 8, !tbaa !30
  store ptr %816, ptr %480, align 8, !tbaa !49
  br label %817

817:                                              ; preds = %896, %813
  %818 = phi i32 [ 0, %813 ], [ %881, %896 ]
  %819 = load i32, ptr %476, align 8, !tbaa !34
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %880

821:                                              ; preds = %817
  %822 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %822, label %900 [
    i32 0, label %823
    i32 -5, label %823
  ]

823:                                              ; preds = %821, %821
  %824 = load i32, ptr %475, align 8, !tbaa !24
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %876

826:                                              ; preds = %823
  %827 = load i32, ptr %478, align 8, !tbaa !27
  %828 = load ptr, ptr %482, align 8, !tbaa !29
  store i32 0, ptr %483, align 4, !tbaa !17
  %829 = tail call ptr @__errno_location() #17
  store i32 0, ptr %829, align 4, !tbaa !4
  br label %830

830:                                              ; preds = %849, %826
  %831 = phi i32 [ 0, %826 ], [ %850, %849 ]
  %832 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %827, i32 %831), !nosanitize !20
  %833 = extractvalue { i32, i1 } %832, 1, !nosanitize !20
  br i1 %833, label %834, label %835, !prof !21, !nosanitize !20

834:                                              ; preds = %830
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

835:                                              ; preds = %830
  %836 = extractvalue { i32, i1 } %832, 0, !nosanitize !20
  %837 = tail call i32 @llvm.umin.i32(i32 %836, i32 1073741824)
  %838 = load i32, ptr %484, align 4, !tbaa !46
  %839 = zext i32 %831 to i64
  %840 = getelementptr inbounds nuw i8, ptr %828, i64 %839
  %841 = zext nneg i32 %837 to i64
  %842 = tail call i64 @read(i32 noundef %838, ptr noundef %840, i64 noundef %841) #14
  %843 = trunc i64 %842 to i32
  %844 = icmp slt i32 %843, 1
  br i1 %844, label %852, label %845

845:                                              ; preds = %835
  %846 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %831, i32 %843), !nosanitize !20
  %847 = extractvalue { i32, i1 } %846, 1, !nosanitize !20
  br i1 %847, label %848, label %849, !prof !21, !nosanitize !20

848:                                              ; preds = %845
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

849:                                              ; preds = %845
  %850 = extractvalue { i32, i1 } %846, 0, !nosanitize !20
  %851 = icmp ult i32 %850, %827
  br i1 %851, label %830, label %866, !llvm.loop !47

852:                                              ; preds = %835
  %853 = icmp slt i32 %843, 0
  br i1 %853, label %854, label %861

854:                                              ; preds = %852
  %855 = load i32, ptr %829, align 4, !tbaa !4
  %856 = icmp eq i32 %855, 11
  br i1 %856, label %857, label %862

857:                                              ; preds = %854
  store i32 1, ptr %483, align 4, !tbaa !17
  %858 = icmp eq i32 %831, 0
  br i1 %858, label %859, label %866

859:                                              ; preds = %857
  %860 = load i32, ptr %829, align 4, !tbaa !4
  br label %862

861:                                              ; preds = %852
  store i32 1, ptr %475, align 8, !tbaa !24
  br label %866

862:                                              ; preds = %854, %859
  %863 = phi i32 [ %860, %859 ], [ %855, %854 ]
  %864 = tail call ptr @strerror(i32 noundef %863) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %864) #14
  %865 = load i32, ptr %10, align 8, !tbaa !16
  br label %900

866:                                              ; preds = %849, %861, %857
  %867 = phi i32 [ %831, %857 ], [ %831, %861 ], [ %850, %849 ]
  %868 = load i32, ptr %476, align 8, !tbaa !34
  %869 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %868, i32 %867), !nosanitize !20
  %870 = extractvalue { i32, i1 } %869, 1, !nosanitize !20
  br i1 %870, label %871, label %872, !prof !21, !nosanitize !20

871:                                              ; preds = %866
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

872:                                              ; preds = %866
  %873 = extractvalue { i32, i1 } %869, 0, !nosanitize !20
  store i32 %873, ptr %476, align 8, !tbaa !34
  %874 = load ptr, ptr %482, align 8, !tbaa !29
  store ptr %874, ptr %481, align 8, !tbaa !35
  %875 = icmp eq i32 %873, 0
  br i1 %875, label %876, label %880

876:                                              ; preds = %872, %823
  %877 = load i32, ptr %483, align 4, !tbaa !17
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %879, label %900

879:                                              ; preds = %876
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %900

880:                                              ; preds = %872, %817
  %881 = tail call i32 @inflate(ptr noundef nonnull %481, i32 noundef 0) #14
  %882 = load i32, ptr %479, align 8, !tbaa !48
  %883 = icmp ult i32 %882, %815
  br i1 %883, label %884, label %885

884:                                              ; preds = %880
  store i32 0, ptr %485, align 4, !tbaa !33
  br label %885

885:                                              ; preds = %884, %880
  switch i32 %881, label %896 [
    i32 -2, label %886
    i32 2, label %886
    i32 -4, label %887
    i32 -3, label %888
  ]

886:                                              ; preds = %885, %885
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %900

887:                                              ; preds = %885
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %900

888:                                              ; preds = %885
  %889 = load i32, ptr %485, align 4, !tbaa !33
  %890 = icmp eq i32 %889, 1
  br i1 %890, label %891, label %892

891:                                              ; preds = %888
  store i32 0, ptr %476, align 8, !tbaa !34
  store i32 1, ptr %475, align 8, !tbaa !24
  store i32 0, ptr %477, align 8, !tbaa !26
  br label %900

892:                                              ; preds = %888
  %893 = load ptr, ptr %486, align 8, !tbaa !50
  %894 = icmp eq ptr %893, null
  %895 = select i1 %894, ptr @.str.6, ptr %893
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %895) #14
  br label %900

896:                                              ; preds = %885
  %897 = icmp ne i32 %882, 0
  %898 = icmp ne i32 %881, 1
  %899 = select i1 %897, i1 %898, i1 false
  br i1 %899, label %817, label %900, !llvm.loop !51

900:                                              ; preds = %896, %821, %892, %891, %887, %886, %879, %876, %862
  %901 = phi i32 [ %865, %862 ], [ %818, %876 ], [ %818, %879 ], [ %881, %886 ], [ -4, %887 ], [ 0, %891 ], [ -3, %892 ], [ %822, %821 ], [ %881, %896 ]
  %902 = load i32, ptr %479, align 8, !tbaa !48
  %903 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %815, i32 %902), !nosanitize !20
  %904 = extractvalue { i32, i1 } %903, 1, !nosanitize !20
  br i1 %904, label %905, label %906, !prof !21, !nosanitize !20

905:                                              ; preds = %900
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

906:                                              ; preds = %900
  %907 = extractvalue { i32, i1 } %903, 0, !nosanitize !20
  store i32 %907, ptr %0, align 8, !tbaa !19
  %908 = load ptr, ptr %480, align 8, !tbaa !49
  %909 = zext i32 %907 to i64
  %910 = sub nsw i64 0, %909
  %911 = getelementptr inbounds i8, ptr %908, i64 %910
  store ptr %911, ptr %474, align 8, !tbaa !22
  switch i32 %901, label %927 [
    i32 1, label %912
    i32 0, label %914
  ]

912:                                              ; preds = %906
  store i32 0, ptr %485, align 4, !tbaa !33
  store i32 0, ptr %477, align 8, !tbaa !26
  br label %914

913:                                              ; preds = %529
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %927

914:                                              ; preds = %912, %906, %766, %760
  %915 = load i32, ptr %0, align 8, !tbaa !19
  br label %916

916:                                              ; preds = %914, %762
  %917 = phi i32 [ %915, %914 ], [ %765, %762 ]
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %919, label %1091

919:                                              ; preds = %916
  %920 = load i32, ptr %475, align 8, !tbaa !24
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %925, label %922

922:                                              ; preds = %919
  %923 = load i32, ptr %476, align 8, !tbaa !34
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %1091, label %925

925:                                              ; preds = %922, %919
  %926 = load i32, ptr %477, align 8, !tbaa !26
  br label %529, !llvm.loop !52

927:                                              ; preds = %906, %564, %913, %808, %722, %550, %545
  %928 = load i32, ptr %0, align 8, !tbaa !19
  %929 = icmp eq i32 %928, 0
  %930 = sext i1 %929 to i32
  br label %1091

931:                                              ; preds = %524
  %932 = icmp eq i32 %522, 1
  br i1 %932, label %933, label %970

933:                                              ; preds = %931
  store i32 0, ptr %483, align 4, !tbaa !17
  %934 = tail call ptr @__errno_location() #17
  store i32 0, ptr %934, align 4, !tbaa !4
  br label %935

935:                                              ; preds = %954, %933
  %936 = phi i32 [ 0, %933 ], [ %955, %954 ]
  %937 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %497, i32 %936), !nosanitize !20
  %938 = extractvalue { i32, i1 } %937, 1, !nosanitize !20
  br i1 %938, label %939, label %940, !prof !21, !nosanitize !20

939:                                              ; preds = %935
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

940:                                              ; preds = %935
  %941 = extractvalue { i32, i1 } %937, 0, !nosanitize !20
  %942 = tail call i32 @llvm.umin.i32(i32 %941, i32 1073741824)
  %943 = load i32, ptr %484, align 4, !tbaa !46
  %944 = zext i32 %936 to i64
  %945 = getelementptr inbounds nuw i8, ptr %493, i64 %944
  %946 = zext nneg i32 %942 to i64
  %947 = tail call i64 @read(i32 noundef %943, ptr noundef %945, i64 noundef %946) #14
  %948 = trunc i64 %947 to i32
  %949 = icmp slt i32 %948, 1
  br i1 %949, label %957, label %950

950:                                              ; preds = %940
  %951 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %936, i32 %948), !nosanitize !20
  %952 = extractvalue { i32, i1 } %951, 1, !nosanitize !20
  br i1 %952, label %953, label %954, !prof !21, !nosanitize !20

953:                                              ; preds = %950
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

954:                                              ; preds = %950
  %955 = extractvalue { i32, i1 } %951, 0, !nosanitize !20
  %956 = icmp ult i32 %955, %497
  br i1 %956, label %935, label %1073, !llvm.loop !47

957:                                              ; preds = %940
  %958 = icmp slt i32 %948, 0
  br i1 %958, label %959, label %969

959:                                              ; preds = %957
  %960 = load i32, ptr %934, align 4, !tbaa !4
  %961 = icmp eq i32 %960, 11
  br i1 %961, label %962, label %966

962:                                              ; preds = %959
  store i32 1, ptr %483, align 4, !tbaa !17
  %963 = icmp eq i32 %936, 0
  br i1 %963, label %964, label %1075

964:                                              ; preds = %962
  %965 = load i32, ptr %934, align 4, !tbaa !4
  br label %966

966:                                              ; preds = %964, %959
  %967 = phi i32 [ %965, %964 ], [ %960, %959 ]
  %968 = tail call ptr @strerror(i32 noundef %967) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %968) #14
  br label %1075

969:                                              ; preds = %957
  store i32 1, ptr %475, align 8, !tbaa !24
  br label %1075

970:                                              ; preds = %931
  store i32 %497, ptr %479, align 8, !tbaa !58
  store ptr %493, ptr %480, align 8, !tbaa !59
  br label %971

971:                                              ; preds = %1050, %970
  %972 = phi i32 [ 0, %970 ], [ %1035, %1050 ]
  %973 = load i32, ptr %476, align 8, !tbaa !34
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %975, label %1034

975:                                              ; preds = %971
  %976 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %976, label %1054 [
    i32 0, label %977
    i32 -5, label %977
  ]

977:                                              ; preds = %975, %975
  %978 = load i32, ptr %475, align 8, !tbaa !24
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %1030

980:                                              ; preds = %977
  %981 = load i32, ptr %478, align 8, !tbaa !27
  %982 = load ptr, ptr %482, align 8, !tbaa !29
  store i32 0, ptr %483, align 4, !tbaa !17
  %983 = tail call ptr @__errno_location() #17
  store i32 0, ptr %983, align 4, !tbaa !4
  br label %984

984:                                              ; preds = %1003, %980
  %985 = phi i32 [ 0, %980 ], [ %1004, %1003 ]
  %986 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %981, i32 %985), !nosanitize !20
  %987 = extractvalue { i32, i1 } %986, 1, !nosanitize !20
  br i1 %987, label %988, label %989, !prof !21, !nosanitize !20

988:                                              ; preds = %984
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

989:                                              ; preds = %984
  %990 = extractvalue { i32, i1 } %986, 0, !nosanitize !20
  %991 = tail call i32 @llvm.umin.i32(i32 %990, i32 1073741824)
  %992 = load i32, ptr %484, align 4, !tbaa !46
  %993 = zext i32 %985 to i64
  %994 = getelementptr inbounds nuw i8, ptr %982, i64 %993
  %995 = zext nneg i32 %991 to i64
  %996 = tail call i64 @read(i32 noundef %992, ptr noundef %994, i64 noundef %995) #14
  %997 = trunc i64 %996 to i32
  %998 = icmp slt i32 %997, 1
  br i1 %998, label %1006, label %999

999:                                              ; preds = %989
  %1000 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %985, i32 %997), !nosanitize !20
  %1001 = extractvalue { i32, i1 } %1000, 1, !nosanitize !20
  br i1 %1001, label %1002, label %1003, !prof !21, !nosanitize !20

1002:                                             ; preds = %999
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1003:                                             ; preds = %999
  %1004 = extractvalue { i32, i1 } %1000, 0, !nosanitize !20
  %1005 = icmp ult i32 %1004, %981
  br i1 %1005, label %984, label %1020, !llvm.loop !47

1006:                                             ; preds = %989
  %1007 = icmp slt i32 %997, 0
  br i1 %1007, label %1008, label %1015

1008:                                             ; preds = %1006
  %1009 = load i32, ptr %983, align 4, !tbaa !4
  %1010 = icmp eq i32 %1009, 11
  br i1 %1010, label %1011, label %1016

1011:                                             ; preds = %1008
  store i32 1, ptr %483, align 4, !tbaa !17
  %1012 = icmp eq i32 %985, 0
  br i1 %1012, label %1013, label %1020

1013:                                             ; preds = %1011
  %1014 = load i32, ptr %983, align 4, !tbaa !4
  br label %1016

1015:                                             ; preds = %1006
  store i32 1, ptr %475, align 8, !tbaa !24
  br label %1020

1016:                                             ; preds = %1008, %1013
  %1017 = phi i32 [ %1014, %1013 ], [ %1009, %1008 ]
  %1018 = tail call ptr @strerror(i32 noundef %1017) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1018) #14
  %1019 = load i32, ptr %10, align 8, !tbaa !16
  br label %1054

1020:                                             ; preds = %1003, %1015, %1011
  %1021 = phi i32 [ %985, %1011 ], [ %985, %1015 ], [ %1004, %1003 ]
  %1022 = load i32, ptr %476, align 8, !tbaa !34
  %1023 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1022, i32 %1021), !nosanitize !20
  %1024 = extractvalue { i32, i1 } %1023, 1, !nosanitize !20
  br i1 %1024, label %1025, label %1026, !prof !21, !nosanitize !20

1025:                                             ; preds = %1020
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1026:                                             ; preds = %1020
  %1027 = extractvalue { i32, i1 } %1023, 0, !nosanitize !20
  store i32 %1027, ptr %476, align 8, !tbaa !34
  %1028 = load ptr, ptr %482, align 8, !tbaa !29
  store ptr %1028, ptr %481, align 8, !tbaa !35
  %1029 = icmp eq i32 %1027, 0
  br i1 %1029, label %1030, label %1034

1030:                                             ; preds = %1026, %977
  %1031 = load i32, ptr %483, align 4, !tbaa !17
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1054

1033:                                             ; preds = %1030
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %1054

1034:                                             ; preds = %1026, %971
  %1035 = tail call i32 @inflate(ptr noundef nonnull %481, i32 noundef 0) #14
  %1036 = load i32, ptr %479, align 8, !tbaa !48
  %1037 = icmp ult i32 %1036, %497
  br i1 %1037, label %1038, label %1039

1038:                                             ; preds = %1034
  store i32 0, ptr %485, align 4, !tbaa !33
  br label %1039

1039:                                             ; preds = %1038, %1034
  switch i32 %1035, label %1050 [
    i32 -2, label %1040
    i32 2, label %1040
    i32 -4, label %1041
    i32 -3, label %1042
  ]

1040:                                             ; preds = %1039, %1039
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %1054

1041:                                             ; preds = %1039
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1054

1042:                                             ; preds = %1039
  %1043 = load i32, ptr %485, align 4, !tbaa !33
  %1044 = icmp eq i32 %1043, 1
  br i1 %1044, label %1045, label %1046

1045:                                             ; preds = %1042
  store i32 0, ptr %476, align 8, !tbaa !34
  store i32 1, ptr %475, align 8, !tbaa !24
  store i32 0, ptr %477, align 8, !tbaa !26
  br label %1054

1046:                                             ; preds = %1042
  %1047 = load ptr, ptr %486, align 8, !tbaa !50
  %1048 = icmp eq ptr %1047, null
  %1049 = select i1 %1048, ptr @.str.6, ptr %1047
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1049) #14
  br label %1054

1050:                                             ; preds = %1039
  %1051 = icmp ne i32 %1036, 0
  %1052 = icmp ne i32 %1035, 1
  %1053 = select i1 %1051, i1 %1052, i1 false
  br i1 %1053, label %971, label %1054, !llvm.loop !51

1054:                                             ; preds = %1050, %975, %1046, %1045, %1041, %1040, %1033, %1030, %1016
  %1055 = phi i32 [ %1019, %1016 ], [ %972, %1030 ], [ %972, %1033 ], [ %1035, %1040 ], [ -4, %1041 ], [ 0, %1045 ], [ -3, %1046 ], [ %1035, %1050 ], [ %976, %975 ]
  %1056 = load i32, ptr %479, align 8, !tbaa !48
  %1057 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %497, i32 %1056), !nosanitize !20
  %1058 = extractvalue { i32, i1 } %1057, 1, !nosanitize !20
  br i1 %1058, label %1059, label %1060, !prof !21, !nosanitize !20

1059:                                             ; preds = %1054
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

1060:                                             ; preds = %1054
  %1061 = extractvalue { i32, i1 } %1057, 0, !nosanitize !20
  %1062 = load ptr, ptr %480, align 8, !tbaa !49
  %1063 = zext i32 %1061 to i64
  %1064 = sub nsw i64 0, %1063
  %1065 = getelementptr inbounds i8, ptr %1062, i64 %1064
  store ptr %1065, ptr %474, align 8, !tbaa !22
  %1066 = icmp eq i32 %1055, 1
  br i1 %1066, label %1067, label %1068

1067:                                             ; preds = %1060
  store i32 0, ptr %485, align 4, !tbaa !33
  store i32 0, ptr %477, align 8, !tbaa !26
  br label %1071

1068:                                             ; preds = %1060
  %1069 = icmp ne i32 %1055, 0
  %1070 = sext i1 %1069 to i32
  br label %1071

1071:                                             ; preds = %1068, %1067
  %1072 = phi i32 [ 0, %1067 ], [ %1070, %1068 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1075

1073:                                             ; preds = %954
  %1074 = zext i32 %955 to i64
  br label %1075

1075:                                             ; preds = %1073, %1071, %969, %966, %962, %510
  %1076 = phi i64 [ %1074, %1073 ], [ %944, %969 ], [ %944, %966 ], [ %944, %962 ], [ %503, %510 ], [ %1063, %1071 ]
  %1077 = phi i32 [ 0, %1073 ], [ 0, %969 ], [ -1, %966 ], [ 0, %962 ], [ %514, %510 ], [ %1072, %1071 ]
  %1078 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %494, i64 %1076), !nosanitize !20
  %1079 = extractvalue { i64, i1 } %1078, 0, !nosanitize !20
  %1080 = extractvalue { i64, i1 } %1078, 1, !nosanitize !20
  br i1 %1080, label %1081, label %1082, !prof !21, !nosanitize !20

1081:                                             ; preds = %1075
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

1082:                                             ; preds = %1075
  %1083 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %495, i64 %1076), !nosanitize !20
  %1084 = extractvalue { i64, i1 } %1083, 1, !nosanitize !20
  br i1 %1084, label %1085, label %1086, !prof !21, !nosanitize !20

1085:                                             ; preds = %1082
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1086:                                             ; preds = %1082
  %1087 = extractvalue { i64, i1 } %1083, 0, !nosanitize !20
  %1088 = getelementptr inbounds nuw i8, ptr %493, i64 %1076
  %1089 = load i64, ptr %487, align 8, !tbaa !23
  %1090 = add nsw i64 %1089, %1076
  store i64 %1090, ptr %487, align 8, !tbaa !23
  br label %1091

1091:                                             ; preds = %922, %916, %766, %1086, %927, %811
  %1092 = phi ptr [ %1088, %1086 ], [ %493, %927 ], [ %493, %811 ], [ %493, %766 ], [ %493, %916 ], [ %493, %922 ]
  %1093 = phi i64 [ %1079, %1086 ], [ %494, %927 ], [ %494, %811 ], [ %494, %766 ], [ %494, %916 ], [ %494, %922 ]
  %1094 = phi i64 [ %1087, %1086 ], [ %495, %927 ], [ %495, %811 ], [ %495, %766 ], [ %495, %916 ], [ %495, %922 ]
  %1095 = phi i32 [ %1077, %1086 ], [ %930, %927 ], [ 0, %811 ], [ 0, %766 ], [ 0, %916 ], [ 0, %922 ]
  %1096 = icmp eq i64 %1093, 0
  br i1 %1096, label %1105, label %1097

1097:                                             ; preds = %1091
  %1098 = icmp eq i32 %1095, 0
  br i1 %1098, label %492, label %1099, !llvm.loop !60

1099:                                             ; preds = %1097
  %1100 = load i32, ptr %475, align 8, !tbaa !24
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1105, label %1102

1102:                                             ; preds = %518, %1099
  %1103 = phi i64 [ %1094, %1099 ], [ %495, %518 ]
  %1104 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1104, align 4, !tbaa !61
  br label %1105

1105:                                             ; preds = %1091, %1099, %1102
  %1106 = phi i64 [ %1094, %1099 ], [ %1103, %1102 ], [ %1094, %1091 ]
  %1107 = trunc i64 %1106 to i32
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1109, label %1121

1109:                                             ; preds = %448, %1105, %87, %19, %92, %455, %350, %264
  %1110 = load i32, ptr %10, align 8, !tbaa !16
  br label %1111

1111:                                             ; preds = %106, %1109
  %1112 = phi i32 [ %1110, %1109 ], [ %107, %106 ]
  switch i32 %1112, label %1121 [
    i32 0, label %1113
    i32 -5, label %1113
  ]

1113:                                             ; preds = %1111, %1111
  %1114 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1115 = load i32, ptr %1114, align 4, !tbaa !17
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1121, label %1117

1117:                                             ; preds = %1113
  %1118 = tail call ptr @__errno_location() #17
  %1119 = load i32, ptr %1118, align 4, !tbaa !4
  %1120 = tail call ptr @strerror(i32 noundef %1119) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1120) #14
  br label %1121

1121:                                             ; preds = %1105, %1113, %1111, %12, %5, %3, %1117, %18
  %1122 = phi i32 [ -1, %5 ], [ -1, %3 ], [ -1, %18 ], [ -1, %12 ], [ -1, %1117 ], [ -1, %1111 ], [ 0, %1113 ], [ %1107, %1105 ]
  ret i32 %1122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %1116, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1116

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
  br i1 %16, label %1116, label %17

17:                                               ; preds = %10, %10, %13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef 0, ptr noundef null) #14
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !nosanitize !20
  %19 = extractvalue { i64, i1 } %18, 0, !nosanitize !20
  %20 = extractvalue { i64, i1 } %18, 1, !nosanitize !20
  br i1 %20, label %21, label %22, !prof !21, !nosanitize !20

21:                                               ; preds = %17
  tail call void @llvm.ubsantrap(i8 12) #15, !nosanitize !20
  unreachable, !nosanitize !20

22:                                               ; preds = %17
  %23 = icmp eq i64 %1, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = udiv i64 %19, %1
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.1) #14
  br label %1116

28:                                               ; preds = %24, %22
  %29 = icmp eq i64 %19, 0
  br i1 %29, label %1116, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !18
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %481, label %34

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

53:                                               ; preds = %478, %34
  %54 = phi i64 [ %479, %478 ], [ %32, %34 ]
  %55 = load i32, ptr %3, align 8, !tbaa !19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  %58 = zext i32 %55 to i64
  %59 = tail call i64 @llvm.smin.i64(i64 %54, i64 %58)
  %60 = trunc i64 %59 to i32
  %61 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %60), !nosanitize !20
  %62 = extractvalue { i32, i1 } %61, 1, !nosanitize !20
  br i1 %62, label %63, label %64, !prof !21, !nosanitize !20

63:                                               ; preds = %57
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

64:                                               ; preds = %57
  %65 = extractvalue { i32, i1 } %61, 0, !nosanitize !20
  store i32 %65, ptr %3, align 8, !tbaa !19
  %66 = load ptr, ptr %35, align 8, !tbaa !22
  %67 = and i64 %59, 4294967295
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 %67
  store ptr %68, ptr %35, align 8, !tbaa !22
  %69 = load i64, ptr %36, align 8, !tbaa !23
  %70 = add nsw i64 %69, %67
  store i64 %70, ptr %36, align 8, !tbaa !23
  %71 = sub nsw i64 %54, %67
  store i64 %71, ptr %31, align 8, !tbaa !18
  br label %478

72:                                               ; preds = %53
  %73 = load i32, ptr %37, align 8, !tbaa !24
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %38, align 8, !tbaa !25
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %481, label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %475, %78
  %80 = load i32, ptr %39, align 8, !tbaa !26
  switch i32 %80, label %463 [
    i32 0, label %81
    i32 1, label %319
    i32 2, label %363
  ]

81:                                               ; preds = %79
  %82 = load i32, ptr %40, align 8, !tbaa !27
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load i32, ptr %50, align 4, !tbaa !28
  %86 = zext i32 %85 to i64
  %87 = tail call noalias ptr @malloc(i64 noundef %86) #16
  store ptr %87, ptr %45, align 8, !tbaa !29
  %88 = load i32, ptr %50, align 4, !tbaa !28
  %89 = shl i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = tail call noalias ptr @malloc(i64 noundef %90) #16
  store ptr %91, ptr %42, align 8, !tbaa !30
  %92 = icmp eq ptr %87, null
  %93 = icmp eq ptr %91, null
  %94 = or i1 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  tail call void @free(ptr noundef %91) #14
  tail call void @free(ptr noundef %87) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1113

96:                                               ; preds = %84
  %97 = load i32, ptr %50, align 4, !tbaa !28
  store i32 %97, ptr %40, align 8, !tbaa !27
  store i32 0, ptr %38, align 8, !tbaa !25
  store ptr null, ptr %44, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %98 = tail call i32 @inflateInit2_(ptr noundef nonnull %44, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %42, align 8, !tbaa !30
  tail call void @free(ptr noundef %101) #14
  %102 = load ptr, ptr %45, align 8, !tbaa !29
  tail call void @free(ptr noundef %102) #14
  store i32 0, ptr %40, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1113

103:                                              ; preds = %96, %81
  %104 = load i32, ptr %52, align 8, !tbaa !32
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr %48, align 4, !tbaa !33
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106, %103
  %110 = tail call i32 @inflateReset(ptr noundef nonnull %44) #14
  store i32 2, ptr %39, align 8, !tbaa !26
  %111 = load i32, ptr %48, align 4, !tbaa !33
  %112 = icmp ne i32 %111, -1
  %113 = zext i1 %112 to i32
  store i32 %113, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %316

114:                                              ; preds = %106
  %115 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %115, label %1113 [
    i32 0, label %116
    i32 -5, label %116
  ]

116:                                              ; preds = %114, %114
  %117 = load i32, ptr %37, align 8, !tbaa !24
  %118 = icmp eq i32 %117, 0
  %119 = load i32, ptr %38, align 8, !tbaa !34
  br i1 %118, label %120, label %284

120:                                              ; preds = %116
  %121 = icmp eq i32 %119, 0
  br i1 %121, label %228, label %122

122:                                              ; preds = %120
  %123 = load ptr, ptr %45, align 8, !tbaa !29
  %124 = load ptr, ptr %44, align 8, !tbaa !35
  %125 = icmp eq ptr %124, %123
  br i1 %125, label %228, label %126

126:                                              ; preds = %122
  %127 = ptrtoaddr ptr %124 to i64
  %128 = ptrtoaddr ptr %123 to i64
  %129 = zext i32 %119 to i64
  %130 = icmp ult i32 %119, 4
  %131 = sub i64 %128, %127
  %132 = icmp ult i64 %131, 32
  %133 = or i1 %130, %132
  br i1 %133, label %173, label %134

134:                                              ; preds = %126
  %135 = icmp ult i32 %119, 32
  br i1 %135, label %157, label %136

136:                                              ; preds = %134
  %137 = and i64 %129, 28
  %138 = and i64 %129, 4294967264
  %139 = getelementptr i8, ptr %123, i64 %138
  %140 = getelementptr i8, ptr %124, i64 %138
  %141 = trunc nuw i64 %138 to i32
  %142 = sub i32 %119, %141
  br label %143

143:                                              ; preds = %143, %136
  %144 = phi i64 [ 0, %136 ], [ %151, %143 ]
  %145 = getelementptr i8, ptr %123, i64 %144
  %146 = getelementptr i8, ptr %124, i64 %144
  %147 = getelementptr i8, ptr %146, i64 16
  %148 = load <16 x i8>, ptr %146, align 1, !tbaa !36
  %149 = load <16 x i8>, ptr %147, align 1, !tbaa !36
  %150 = getelementptr i8, ptr %145, i64 16
  store <16 x i8> %148, ptr %145, align 1, !tbaa !36
  store <16 x i8> %149, ptr %150, align 1, !tbaa !36
  %151 = add nuw i64 %144, 32
  %152 = icmp eq i64 %151, %138
  br i1 %152, label %153, label %143, !llvm.loop !62

153:                                              ; preds = %143
  %154 = icmp eq i64 %138, %129
  br i1 %154, label %226, label %155

155:                                              ; preds = %153
  %156 = icmp eq i64 %137, 0
  br i1 %156, label %173, label %157, !prof !41

157:                                              ; preds = %134, %155
  %158 = phi i64 [ %138, %155 ], [ 0, %134 ]
  %159 = and i64 %129, 4294967292
  %160 = getelementptr i8, ptr %123, i64 %159
  %161 = getelementptr i8, ptr %124, i64 %159
  %162 = trunc nuw i64 %159 to i32
  %163 = sub i32 %119, %162
  br label %164

164:                                              ; preds = %164, %157
  %165 = phi i64 [ %158, %157 ], [ %169, %164 ]
  %166 = getelementptr i8, ptr %123, i64 %165
  %167 = getelementptr i8, ptr %124, i64 %165
  %168 = load <4 x i8>, ptr %167, align 1, !tbaa !36
  store <4 x i8> %168, ptr %166, align 1, !tbaa !36
  %169 = add nuw i64 %165, 4
  %170 = icmp eq i64 %169, %159
  br i1 %170, label %171, label %164, !llvm.loop !63

171:                                              ; preds = %164
  %172 = icmp eq i64 %159, %129
  br i1 %172, label %226, label %173

173:                                              ; preds = %126, %155, %171
  %174 = phi ptr [ %123, %126 ], [ %139, %155 ], [ %160, %171 ]
  %175 = phi ptr [ %124, %126 ], [ %140, %155 ], [ %161, %171 ]
  %176 = phi i32 [ %119, %126 ], [ %142, %155 ], [ %163, %171 ]
  %177 = add i32 %176, -1
  %178 = and i32 %176, 7
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %173, %180
  %181 = phi ptr [ %187, %180 ], [ %174, %173 ]
  %182 = phi ptr [ %188, %180 ], [ %175, %173 ]
  %183 = phi i32 [ %186, %180 ], [ %176, %173 ]
  %184 = phi i32 [ %189, %180 ], [ 0, %173 ]
  %185 = load i8, ptr %182, align 1, !tbaa !36
  store i8 %185, ptr %181, align 1, !tbaa !36
  %186 = add i32 %183, -1
  %187 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %188 = getelementptr inbounds nuw i8, ptr %182, i64 1
  %189 = add i32 %184, 1
  %190 = icmp eq i32 %189, %178
  br i1 %190, label %191, label %180, !llvm.loop !64

191:                                              ; preds = %180, %173
  %192 = phi ptr [ %174, %173 ], [ %187, %180 ]
  %193 = phi ptr [ %175, %173 ], [ %188, %180 ]
  %194 = phi i32 [ %176, %173 ], [ %186, %180 ]
  %195 = icmp ult i32 %177, 7
  br i1 %195, label %226, label %196

196:                                              ; preds = %191, %196
  %197 = phi ptr [ %223, %196 ], [ %192, %191 ]
  %198 = phi ptr [ %224, %196 ], [ %193, %191 ]
  %199 = phi i32 [ %222, %196 ], [ %194, %191 ]
  %200 = load i8, ptr %198, align 1, !tbaa !36
  store i8 %200, ptr %197, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %197, i64 1
  %202 = getelementptr inbounds nuw i8, ptr %198, i64 1
  %203 = load i8, ptr %202, align 1, !tbaa !36
  store i8 %203, ptr %201, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %197, i64 2
  %205 = getelementptr inbounds nuw i8, ptr %198, i64 2
  %206 = load i8, ptr %205, align 1, !tbaa !36
  store i8 %206, ptr %204, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %197, i64 3
  %208 = getelementptr inbounds nuw i8, ptr %198, i64 3
  %209 = load i8, ptr %208, align 1, !tbaa !36
  store i8 %209, ptr %207, align 1, !tbaa !36
  %210 = getelementptr inbounds nuw i8, ptr %197, i64 4
  %211 = getelementptr inbounds nuw i8, ptr %198, i64 4
  %212 = load i8, ptr %211, align 1, !tbaa !36
  store i8 %212, ptr %210, align 1, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %197, i64 5
  %214 = getelementptr inbounds nuw i8, ptr %198, i64 5
  %215 = load i8, ptr %214, align 1, !tbaa !36
  store i8 %215, ptr %213, align 1, !tbaa !36
  %216 = getelementptr inbounds nuw i8, ptr %197, i64 6
  %217 = getelementptr inbounds nuw i8, ptr %198, i64 6
  %218 = load i8, ptr %217, align 1, !tbaa !36
  store i8 %218, ptr %216, align 1, !tbaa !36
  %219 = getelementptr inbounds nuw i8, ptr %197, i64 7
  %220 = getelementptr inbounds nuw i8, ptr %198, i64 7
  %221 = load i8, ptr %220, align 1, !tbaa !36
  store i8 %221, ptr %219, align 1, !tbaa !36
  %222 = add i32 %199, -8
  %223 = getelementptr inbounds nuw i8, ptr %197, i64 8
  %224 = getelementptr inbounds nuw i8, ptr %198, i64 8
  %225 = icmp eq i32 %222, 0
  br i1 %225, label %226, label %196, !llvm.loop !65

226:                                              ; preds = %191, %196, %171, %153
  %227 = load i32, ptr %38, align 8, !tbaa !34
  br label %228

228:                                              ; preds = %226, %122, %120
  %229 = phi i32 [ %227, %226 ], [ %119, %122 ], [ 0, %120 ]
  %230 = load i32, ptr %40, align 8, !tbaa !27
  %231 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %230, i32 %229), !nosanitize !20
  %232 = extractvalue { i32, i1 } %231, 1, !nosanitize !20
  br i1 %232, label %233, label %234, !prof !21, !nosanitize !20

233:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

234:                                              ; preds = %228
  %235 = extractvalue { i32, i1 } %231, 0, !nosanitize !20
  %236 = load ptr, ptr %45, align 8, !tbaa !29
  %237 = zext i32 %229 to i64
  %238 = getelementptr inbounds nuw i8, ptr %236, i64 %237
  store i32 0, ptr %46, align 4, !tbaa !17
  %239 = tail call ptr @__errno_location() #17
  store i32 0, ptr %239, align 4, !tbaa !4
  br label %240

240:                                              ; preds = %259, %234
  %241 = phi i32 [ 0, %234 ], [ %260, %259 ]
  %242 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %235, i32 %241), !nosanitize !20
  %243 = extractvalue { i32, i1 } %242, 1, !nosanitize !20
  br i1 %243, label %244, label %245, !prof !21, !nosanitize !20

244:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

245:                                              ; preds = %240
  %246 = extractvalue { i32, i1 } %242, 0, !nosanitize !20
  %247 = tail call i32 @llvm.umin.i32(i32 %246, i32 1073741824)
  %248 = load i32, ptr %47, align 4, !tbaa !46
  %249 = zext i32 %241 to i64
  %250 = getelementptr inbounds nuw i8, ptr %238, i64 %249
  %251 = zext nneg i32 %247 to i64
  %252 = tail call i64 @read(i32 noundef %248, ptr noundef %250, i64 noundef %251) #14
  %253 = trunc i64 %252 to i32
  %254 = icmp slt i32 %253, 1
  br i1 %254, label %262, label %255

255:                                              ; preds = %245
  %256 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %241, i32 %253), !nosanitize !20
  %257 = extractvalue { i32, i1 } %256, 1, !nosanitize !20
  br i1 %257, label %258, label %259, !prof !21, !nosanitize !20

258:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

259:                                              ; preds = %255
  %260 = extractvalue { i32, i1 } %256, 0, !nosanitize !20
  %261 = icmp ult i32 %260, %235
  br i1 %261, label %240, label %275, !llvm.loop !47

262:                                              ; preds = %245
  %263 = icmp slt i32 %253, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %262
  %265 = load i32, ptr %239, align 4, !tbaa !4
  %266 = icmp eq i32 %265, 11
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  store i32 1, ptr %46, align 4, !tbaa !17
  %268 = icmp eq i32 %241, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %267
  %270 = load i32, ptr %239, align 4, !tbaa !4
  br label %272

271:                                              ; preds = %262
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %275

272:                                              ; preds = %264, %269
  %273 = phi i32 [ %270, %269 ], [ %265, %264 ]
  %274 = tail call ptr @strerror(i32 noundef %273) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %274) #14
  br label %1113

275:                                              ; preds = %259, %271, %267
  %276 = phi i32 [ %241, %267 ], [ %241, %271 ], [ %260, %259 ]
  %277 = load i32, ptr %38, align 8, !tbaa !34
  %278 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %277, i32 %276), !nosanitize !20
  %279 = extractvalue { i32, i1 } %278, 1, !nosanitize !20
  br i1 %279, label %280, label %281, !prof !21, !nosanitize !20

280:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

281:                                              ; preds = %275
  %282 = extractvalue { i32, i1 } %278, 0, !nosanitize !20
  store i32 %282, ptr %38, align 8, !tbaa !34
  %283 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %283, ptr %44, align 8, !tbaa !35
  br label %284

284:                                              ; preds = %281, %116
  %285 = phi i32 [ %282, %281 ], [ %119, %116 ]
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %316, label %287

287:                                              ; preds = %284
  %288 = load i32, ptr %46, align 4, !tbaa !17
  %289 = icmp ne i32 %288, 0
  %290 = icmp ult i32 %285, 4
  %291 = and i1 %290, %289
  br i1 %291, label %316, label %292

292:                                              ; preds = %287
  %293 = icmp ugt i32 %285, 3
  %294 = load ptr, ptr %44, align 8, !tbaa !35
  br i1 %293, label %295, label %312

295:                                              ; preds = %292
  %296 = load i8, ptr %294, align 1, !tbaa !36
  %297 = icmp eq i8 %296, 31
  br i1 %297, label %298, label %312

298:                                              ; preds = %295
  %299 = getelementptr inbounds nuw i8, ptr %294, i64 1
  %300 = load i8, ptr %299, align 1, !tbaa !36
  %301 = icmp eq i8 %300, -117
  br i1 %301, label %302, label %312

302:                                              ; preds = %298
  %303 = getelementptr inbounds nuw i8, ptr %294, i64 2
  %304 = load i8, ptr %303, align 1, !tbaa !36
  %305 = icmp eq i8 %304, 8
  br i1 %305, label %306, label %312

306:                                              ; preds = %302
  %307 = getelementptr inbounds nuw i8, ptr %294, i64 3
  %308 = load i8, ptr %307, align 1, !tbaa !36
  %309 = icmp ult i8 %308, 32
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = tail call i32 @inflateReset(ptr noundef nonnull %44) #14
  store i32 2, ptr %39, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %464

312:                                              ; preds = %306, %302, %298, %295, %292
  %313 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %313, ptr %35, align 8, !tbaa !22
  %314 = zext i32 %285 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %313, ptr align 1 %294, i64 %314, i1 false)
  %315 = load i32, ptr %38, align 8, !tbaa !34
  store i32 %315, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !26
  br label %466

316:                                              ; preds = %287, %284, %109
  %317 = load i32, ptr %39, align 8, !tbaa !26
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %476, label %464

319:                                              ; preds = %79
  %320 = load ptr, ptr %42, align 8, !tbaa !30
  %321 = load i32, ptr %40, align 8, !tbaa !27
  %322 = shl i32 %321, 1
  store i32 0, ptr %46, align 4, !tbaa !17
  %323 = tail call ptr @__errno_location() #17
  store i32 0, ptr %323, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %324

324:                                              ; preds = %344, %319
  %325 = phi i32 [ %345, %344 ], [ 0, %319 ]
  %326 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %322, i32 %325), !nosanitize !20
  %327 = extractvalue { i32, i1 } %326, 1, !nosanitize !20
  br i1 %327, label %328, label %329, !prof !21, !nosanitize !20

328:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

329:                                              ; preds = %324
  %330 = extractvalue { i32, i1 } %326, 0, !nosanitize !20
  %331 = tail call i32 @llvm.umin.i32(i32 %330, i32 1073741824)
  %332 = load i32, ptr %47, align 4, !tbaa !46
  %333 = zext i32 %325 to i64
  %334 = getelementptr inbounds nuw i8, ptr %320, i64 %333
  %335 = zext nneg i32 %331 to i64
  %336 = tail call i64 @read(i32 noundef %332, ptr noundef %334, i64 noundef %335) #14
  %337 = trunc i64 %336 to i32
  %338 = icmp slt i32 %337, 1
  br i1 %338, label %347, label %339

339:                                              ; preds = %329
  %340 = load i32, ptr %3, align 4, !tbaa !4
  %341 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %340, i32 %337), !nosanitize !20
  %342 = extractvalue { i32, i1 } %341, 1, !nosanitize !20
  br i1 %342, label %343, label %344, !prof !21, !nosanitize !20

343:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

344:                                              ; preds = %339
  %345 = extractvalue { i32, i1 } %341, 0, !nosanitize !20
  store i32 %345, ptr %3, align 4, !tbaa !4
  %346 = icmp ult i32 %345, %322
  br i1 %346, label %324, label %361, !llvm.loop !47

347:                                              ; preds = %329
  %348 = icmp slt i32 %337, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %347
  %350 = load i32, ptr %323, align 4, !tbaa !4
  %351 = icmp eq i32 %350, 11
  br i1 %351, label %352, label %358

352:                                              ; preds = %349
  store i32 1, ptr %46, align 4, !tbaa !17
  %353 = load i32, ptr %3, align 4, !tbaa !4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %352
  %356 = load i32, ptr %323, align 4, !tbaa !4
  br label %358

357:                                              ; preds = %347
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %361

358:                                              ; preds = %349, %355
  %359 = phi i32 [ %356, %355 ], [ %350, %349 ]
  %360 = tail call ptr @strerror(i32 noundef %359) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %360) #14
  br label %1113

361:                                              ; preds = %344, %357, %352
  %362 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %362, ptr %35, align 8, !tbaa !22
  br label %476

363:                                              ; preds = %79
  %364 = load i32, ptr %40, align 8, !tbaa !27
  %365 = shl i32 %364, 1
  store i32 %365, ptr %41, align 8, !tbaa !48
  %366 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %366, ptr %43, align 8, !tbaa !49
  br label %367

367:                                              ; preds = %446, %363
  %368 = phi i32 [ 0, %363 ], [ %431, %446 ]
  %369 = load i32, ptr %38, align 8, !tbaa !34
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %430

371:                                              ; preds = %367
  %372 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %372, label %450 [
    i32 0, label %373
    i32 -5, label %373
  ]

373:                                              ; preds = %371, %371
  %374 = load i32, ptr %37, align 8, !tbaa !24
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %426

376:                                              ; preds = %373
  %377 = load i32, ptr %40, align 8, !tbaa !27
  %378 = load ptr, ptr %45, align 8, !tbaa !29
  store i32 0, ptr %46, align 4, !tbaa !17
  %379 = tail call ptr @__errno_location() #17
  store i32 0, ptr %379, align 4, !tbaa !4
  br label %380

380:                                              ; preds = %399, %376
  %381 = phi i32 [ 0, %376 ], [ %400, %399 ]
  %382 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %377, i32 %381), !nosanitize !20
  %383 = extractvalue { i32, i1 } %382, 1, !nosanitize !20
  br i1 %383, label %384, label %385, !prof !21, !nosanitize !20

384:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

385:                                              ; preds = %380
  %386 = extractvalue { i32, i1 } %382, 0, !nosanitize !20
  %387 = tail call i32 @llvm.umin.i32(i32 %386, i32 1073741824)
  %388 = load i32, ptr %47, align 4, !tbaa !46
  %389 = zext i32 %381 to i64
  %390 = getelementptr inbounds nuw i8, ptr %378, i64 %389
  %391 = zext nneg i32 %387 to i64
  %392 = tail call i64 @read(i32 noundef %388, ptr noundef %390, i64 noundef %391) #14
  %393 = trunc i64 %392 to i32
  %394 = icmp slt i32 %393, 1
  br i1 %394, label %402, label %395

395:                                              ; preds = %385
  %396 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %381, i32 %393), !nosanitize !20
  %397 = extractvalue { i32, i1 } %396, 1, !nosanitize !20
  br i1 %397, label %398, label %399, !prof !21, !nosanitize !20

398:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

399:                                              ; preds = %395
  %400 = extractvalue { i32, i1 } %396, 0, !nosanitize !20
  %401 = icmp ult i32 %400, %377
  br i1 %401, label %380, label %416, !llvm.loop !47

402:                                              ; preds = %385
  %403 = icmp slt i32 %393, 0
  br i1 %403, label %404, label %411

404:                                              ; preds = %402
  %405 = load i32, ptr %379, align 4, !tbaa !4
  %406 = icmp eq i32 %405, 11
  br i1 %406, label %407, label %412

407:                                              ; preds = %404
  store i32 1, ptr %46, align 4, !tbaa !17
  %408 = icmp eq i32 %381, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %407
  %410 = load i32, ptr %379, align 4, !tbaa !4
  br label %412

411:                                              ; preds = %402
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %416

412:                                              ; preds = %404, %409
  %413 = phi i32 [ %410, %409 ], [ %405, %404 ]
  %414 = tail call ptr @strerror(i32 noundef %413) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %414) #14
  %415 = load i32, ptr %11, align 8, !tbaa !16
  br label %450

416:                                              ; preds = %399, %411, %407
  %417 = phi i32 [ %381, %407 ], [ %381, %411 ], [ %400, %399 ]
  %418 = load i32, ptr %38, align 8, !tbaa !34
  %419 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %418, i32 %417), !nosanitize !20
  %420 = extractvalue { i32, i1 } %419, 1, !nosanitize !20
  br i1 %420, label %421, label %422, !prof !21, !nosanitize !20

421:                                              ; preds = %416
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

422:                                              ; preds = %416
  %423 = extractvalue { i32, i1 } %419, 0, !nosanitize !20
  store i32 %423, ptr %38, align 8, !tbaa !34
  %424 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %424, ptr %44, align 8, !tbaa !35
  %425 = icmp eq i32 %423, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %422, %373
  %427 = load i32, ptr %46, align 4, !tbaa !17
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %450

429:                                              ; preds = %426
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %450

430:                                              ; preds = %422, %367
  %431 = tail call i32 @inflate(ptr noundef nonnull %44, i32 noundef 0) #14
  %432 = load i32, ptr %41, align 8, !tbaa !48
  %433 = icmp ult i32 %432, %365
  br i1 %433, label %434, label %435

434:                                              ; preds = %430
  store i32 0, ptr %48, align 4, !tbaa !33
  br label %435

435:                                              ; preds = %434, %430
  switch i32 %431, label %446 [
    i32 -2, label %436
    i32 2, label %436
    i32 -4, label %437
    i32 -3, label %438
  ]

436:                                              ; preds = %435, %435
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %450

437:                                              ; preds = %435
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %450

438:                                              ; preds = %435
  %439 = load i32, ptr %48, align 4, !tbaa !33
  %440 = icmp eq i32 %439, 1
  br i1 %440, label %441, label %442

441:                                              ; preds = %438
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !24
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %450

442:                                              ; preds = %438
  %443 = load ptr, ptr %49, align 8, !tbaa !50
  %444 = icmp eq ptr %443, null
  %445 = select i1 %444, ptr @.str.6, ptr %443
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %445) #14
  br label %450

446:                                              ; preds = %435
  %447 = icmp ne i32 %432, 0
  %448 = icmp ne i32 %431, 1
  %449 = select i1 %447, i1 %448, i1 false
  br i1 %449, label %367, label %450, !llvm.loop !51

450:                                              ; preds = %446, %371, %442, %441, %437, %436, %429, %426, %412
  %451 = phi i32 [ %415, %412 ], [ %368, %426 ], [ %368, %429 ], [ %431, %436 ], [ -4, %437 ], [ 0, %441 ], [ -3, %442 ], [ %431, %446 ], [ %372, %371 ]
  %452 = load i32, ptr %41, align 8, !tbaa !48
  %453 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %365, i32 %452), !nosanitize !20
  %454 = extractvalue { i32, i1 } %453, 1, !nosanitize !20
  br i1 %454, label %455, label %456, !prof !21, !nosanitize !20

455:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

456:                                              ; preds = %450
  %457 = extractvalue { i32, i1 } %453, 0, !nosanitize !20
  store i32 %457, ptr %3, align 8, !tbaa !19
  %458 = load ptr, ptr %43, align 8, !tbaa !49
  %459 = zext i32 %457 to i64
  %460 = sub nsw i64 0, %459
  %461 = getelementptr inbounds i8, ptr %458, i64 %460
  store ptr %461, ptr %35, align 8, !tbaa !22
  switch i32 %451, label %1113 [
    i32 1, label %462
    i32 0, label %464
  ]

462:                                              ; preds = %456
  store i32 0, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %464

463:                                              ; preds = %79
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %1113

464:                                              ; preds = %462, %456, %316, %310
  %465 = load i32, ptr %3, align 8, !tbaa !19
  br label %466

466:                                              ; preds = %464, %312
  %467 = phi i32 [ %465, %464 ], [ %315, %312 ]
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %476

469:                                              ; preds = %466
  %470 = load i32, ptr %37, align 8, !tbaa !24
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %475, label %472

472:                                              ; preds = %469
  %473 = load i32, ptr %38, align 8, !tbaa !34
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %476, label %475

475:                                              ; preds = %472, %469
  br label %79, !llvm.loop !52

476:                                              ; preds = %472, %466, %316, %361
  %477 = load i64, ptr %31, align 8, !tbaa !18
  br label %478

478:                                              ; preds = %476, %64
  %479 = phi i64 [ %477, %476 ], [ %71, %64 ]
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %481, label %53, !llvm.loop !53

481:                                              ; preds = %478, %75, %30
  %482 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %483 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %484 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %485 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %486 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %487 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %488 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %489 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %490 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %491 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %492 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %493 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %494 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %495 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %496 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %497 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %498 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %499 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %500

500:                                              ; preds = %1105, %481
  %501 = phi ptr [ %0, %481 ], [ %1100, %1105 ]
  %502 = phi i64 [ %19, %481 ], [ %1101, %1105 ]
  %503 = phi i64 [ 0, %481 ], [ %1102, %1105 ]
  %504 = tail call i64 @llvm.umin.i64(i64 %502, i64 4294967295)
  %505 = trunc nuw i64 %504 to i32
  %506 = load i32, ptr %3, align 8, !tbaa !19
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %523, label %508

508:                                              ; preds = %500
  %509 = tail call i32 @llvm.umin.i32(i32 %506, i32 %505)
  %510 = load ptr, ptr %482, align 8, !tbaa !22
  %511 = zext i32 %509 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %501, ptr align 1 %510, i64 %511, i1 false)
  %512 = load ptr, ptr %482, align 8, !tbaa !22
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 %511
  store ptr %513, ptr %482, align 8, !tbaa !22
  %514 = load i32, ptr %3, align 8, !tbaa !19
  %515 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %514, i32 %509), !nosanitize !20
  %516 = extractvalue { i32, i1 } %515, 1, !nosanitize !20
  br i1 %516, label %517, label %518, !prof !21, !nosanitize !20

517:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

518:                                              ; preds = %508
  %519 = extractvalue { i32, i1 } %515, 0, !nosanitize !20
  store i32 %519, ptr %3, align 8, !tbaa !19
  %520 = load i32, ptr %11, align 8, !tbaa !16
  %521 = icmp ne i32 %520, 0
  %522 = sext i1 %521 to i32
  br label %1083

523:                                              ; preds = %500
  %524 = load i32, ptr %483, align 8, !tbaa !24
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %529, label %526

526:                                              ; preds = %523
  %527 = load i32, ptr %484, align 8, !tbaa !25
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %1110, label %529

529:                                              ; preds = %526, %523
  %530 = load i32, ptr %485, align 8, !tbaa !26
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %536, label %532

532:                                              ; preds = %529
  %533 = load i32, ptr %486, align 8, !tbaa !27
  %534 = shl i32 %533, 1
  %535 = icmp ugt i32 %534, %505
  br i1 %535, label %536, label %939

536:                                              ; preds = %532, %529
  br label %537

537:                                              ; preds = %536, %933
  %538 = phi i32 [ %934, %933 ], [ %530, %536 ]
  switch i32 %538, label %921 [
    i32 0, label %539
    i32 1, label %777
    i32 2, label %821
  ]

539:                                              ; preds = %537
  %540 = load i32, ptr %486, align 8, !tbaa !27
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %561

542:                                              ; preds = %539
  %543 = load i32, ptr %497, align 4, !tbaa !28
  %544 = zext i32 %543 to i64
  %545 = tail call noalias ptr @malloc(i64 noundef %544) #16
  store ptr %545, ptr %490, align 8, !tbaa !29
  %546 = load i32, ptr %497, align 4, !tbaa !28
  %547 = shl i32 %546, 1
  %548 = zext i32 %547 to i64
  %549 = tail call noalias ptr @malloc(i64 noundef %548) #16
  store ptr %549, ptr %496, align 8, !tbaa !30
  %550 = icmp eq ptr %545, null
  %551 = icmp eq ptr %549, null
  %552 = or i1 %550, %551
  br i1 %552, label %553, label %554

553:                                              ; preds = %542
  tail call void @free(ptr noundef %549) #14
  tail call void @free(ptr noundef %545) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %935

554:                                              ; preds = %542
  %555 = load i32, ptr %497, align 4, !tbaa !28
  store i32 %555, ptr %486, align 8, !tbaa !27
  store i32 0, ptr %484, align 8, !tbaa !25
  store ptr null, ptr %489, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %498, i8 0, i64 24, i1 false)
  %556 = tail call i32 @inflateInit2_(ptr noundef nonnull %489, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %561, label %558

558:                                              ; preds = %554
  %559 = load ptr, ptr %496, align 8, !tbaa !30
  tail call void @free(ptr noundef %559) #14
  %560 = load ptr, ptr %490, align 8, !tbaa !29
  tail call void @free(ptr noundef %560) #14
  store i32 0, ptr %486, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %935

561:                                              ; preds = %554, %539
  %562 = load i32, ptr %499, align 8, !tbaa !32
  %563 = icmp eq i32 %562, -1
  br i1 %563, label %567, label %564

564:                                              ; preds = %561
  %565 = load i32, ptr %493, align 4, !tbaa !33
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %572

567:                                              ; preds = %564, %561
  %568 = tail call i32 @inflateReset(ptr noundef nonnull %489) #14
  store i32 2, ptr %485, align 8, !tbaa !26
  %569 = load i32, ptr %493, align 4, !tbaa !33
  %570 = icmp ne i32 %569, -1
  %571 = zext i1 %570 to i32
  store i32 %571, ptr %493, align 4, !tbaa !33
  store i32 0, ptr %499, align 8, !tbaa !32
  br label %774

572:                                              ; preds = %564
  %573 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %573, label %935 [
    i32 0, label %574
    i32 -5, label %574
  ]

574:                                              ; preds = %572, %572
  %575 = load i32, ptr %483, align 8, !tbaa !24
  %576 = icmp eq i32 %575, 0
  %577 = load i32, ptr %484, align 8, !tbaa !34
  br i1 %576, label %578, label %742

578:                                              ; preds = %574
  %579 = icmp eq i32 %577, 0
  br i1 %579, label %686, label %580

580:                                              ; preds = %578
  %581 = load ptr, ptr %490, align 8, !tbaa !29
  %582 = load ptr, ptr %489, align 8, !tbaa !35
  %583 = icmp eq ptr %582, %581
  br i1 %583, label %686, label %584

584:                                              ; preds = %580
  %585 = ptrtoaddr ptr %582 to i64
  %586 = ptrtoaddr ptr %581 to i64
  %587 = zext i32 %577 to i64
  %588 = icmp ult i32 %577, 4
  %589 = sub i64 %586, %585
  %590 = icmp ult i64 %589, 32
  %591 = or i1 %588, %590
  br i1 %591, label %631, label %592

592:                                              ; preds = %584
  %593 = icmp ult i32 %577, 32
  br i1 %593, label %615, label %594

594:                                              ; preds = %592
  %595 = and i64 %587, 28
  %596 = and i64 %587, 4294967264
  %597 = getelementptr i8, ptr %581, i64 %596
  %598 = getelementptr i8, ptr %582, i64 %596
  %599 = trunc nuw i64 %596 to i32
  %600 = sub i32 %577, %599
  br label %601

601:                                              ; preds = %601, %594
  %602 = phi i64 [ 0, %594 ], [ %609, %601 ]
  %603 = getelementptr i8, ptr %581, i64 %602
  %604 = getelementptr i8, ptr %582, i64 %602
  %605 = getelementptr i8, ptr %604, i64 16
  %606 = load <16 x i8>, ptr %604, align 1, !tbaa !36
  %607 = load <16 x i8>, ptr %605, align 1, !tbaa !36
  %608 = getelementptr i8, ptr %603, i64 16
  store <16 x i8> %606, ptr %603, align 1, !tbaa !36
  store <16 x i8> %607, ptr %608, align 1, !tbaa !36
  %609 = add nuw i64 %602, 32
  %610 = icmp eq i64 %609, %596
  br i1 %610, label %611, label %601, !llvm.loop !66

611:                                              ; preds = %601
  %612 = icmp eq i64 %596, %587
  br i1 %612, label %684, label %613

613:                                              ; preds = %611
  %614 = icmp eq i64 %595, 0
  br i1 %614, label %631, label %615, !prof !41

615:                                              ; preds = %592, %613
  %616 = phi i64 [ %596, %613 ], [ 0, %592 ]
  %617 = and i64 %587, 4294967292
  %618 = getelementptr i8, ptr %581, i64 %617
  %619 = getelementptr i8, ptr %582, i64 %617
  %620 = trunc nuw i64 %617 to i32
  %621 = sub i32 %577, %620
  br label %622

622:                                              ; preds = %622, %615
  %623 = phi i64 [ %616, %615 ], [ %627, %622 ]
  %624 = getelementptr i8, ptr %581, i64 %623
  %625 = getelementptr i8, ptr %582, i64 %623
  %626 = load <4 x i8>, ptr %625, align 1, !tbaa !36
  store <4 x i8> %626, ptr %624, align 1, !tbaa !36
  %627 = add nuw i64 %623, 4
  %628 = icmp eq i64 %627, %617
  br i1 %628, label %629, label %622, !llvm.loop !67

629:                                              ; preds = %622
  %630 = icmp eq i64 %617, %587
  br i1 %630, label %684, label %631

631:                                              ; preds = %584, %613, %629
  %632 = phi ptr [ %581, %584 ], [ %597, %613 ], [ %618, %629 ]
  %633 = phi ptr [ %582, %584 ], [ %598, %613 ], [ %619, %629 ]
  %634 = phi i32 [ %577, %584 ], [ %600, %613 ], [ %621, %629 ]
  %635 = add i32 %634, -1
  %636 = and i32 %634, 7
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %649, label %638

638:                                              ; preds = %631, %638
  %639 = phi ptr [ %645, %638 ], [ %632, %631 ]
  %640 = phi ptr [ %646, %638 ], [ %633, %631 ]
  %641 = phi i32 [ %644, %638 ], [ %634, %631 ]
  %642 = phi i32 [ %647, %638 ], [ 0, %631 ]
  %643 = load i8, ptr %640, align 1, !tbaa !36
  store i8 %643, ptr %639, align 1, !tbaa !36
  %644 = add i32 %641, -1
  %645 = getelementptr inbounds nuw i8, ptr %639, i64 1
  %646 = getelementptr inbounds nuw i8, ptr %640, i64 1
  %647 = add i32 %642, 1
  %648 = icmp eq i32 %647, %636
  br i1 %648, label %649, label %638, !llvm.loop !68

649:                                              ; preds = %638, %631
  %650 = phi ptr [ %632, %631 ], [ %645, %638 ]
  %651 = phi ptr [ %633, %631 ], [ %646, %638 ]
  %652 = phi i32 [ %634, %631 ], [ %644, %638 ]
  %653 = icmp ult i32 %635, 7
  br i1 %653, label %684, label %654

654:                                              ; preds = %649, %654
  %655 = phi ptr [ %681, %654 ], [ %650, %649 ]
  %656 = phi ptr [ %682, %654 ], [ %651, %649 ]
  %657 = phi i32 [ %680, %654 ], [ %652, %649 ]
  %658 = load i8, ptr %656, align 1, !tbaa !36
  store i8 %658, ptr %655, align 1, !tbaa !36
  %659 = getelementptr inbounds nuw i8, ptr %655, i64 1
  %660 = getelementptr inbounds nuw i8, ptr %656, i64 1
  %661 = load i8, ptr %660, align 1, !tbaa !36
  store i8 %661, ptr %659, align 1, !tbaa !36
  %662 = getelementptr inbounds nuw i8, ptr %655, i64 2
  %663 = getelementptr inbounds nuw i8, ptr %656, i64 2
  %664 = load i8, ptr %663, align 1, !tbaa !36
  store i8 %664, ptr %662, align 1, !tbaa !36
  %665 = getelementptr inbounds nuw i8, ptr %655, i64 3
  %666 = getelementptr inbounds nuw i8, ptr %656, i64 3
  %667 = load i8, ptr %666, align 1, !tbaa !36
  store i8 %667, ptr %665, align 1, !tbaa !36
  %668 = getelementptr inbounds nuw i8, ptr %655, i64 4
  %669 = getelementptr inbounds nuw i8, ptr %656, i64 4
  %670 = load i8, ptr %669, align 1, !tbaa !36
  store i8 %670, ptr %668, align 1, !tbaa !36
  %671 = getelementptr inbounds nuw i8, ptr %655, i64 5
  %672 = getelementptr inbounds nuw i8, ptr %656, i64 5
  %673 = load i8, ptr %672, align 1, !tbaa !36
  store i8 %673, ptr %671, align 1, !tbaa !36
  %674 = getelementptr inbounds nuw i8, ptr %655, i64 6
  %675 = getelementptr inbounds nuw i8, ptr %656, i64 6
  %676 = load i8, ptr %675, align 1, !tbaa !36
  store i8 %676, ptr %674, align 1, !tbaa !36
  %677 = getelementptr inbounds nuw i8, ptr %655, i64 7
  %678 = getelementptr inbounds nuw i8, ptr %656, i64 7
  %679 = load i8, ptr %678, align 1, !tbaa !36
  store i8 %679, ptr %677, align 1, !tbaa !36
  %680 = add i32 %657, -8
  %681 = getelementptr inbounds nuw i8, ptr %655, i64 8
  %682 = getelementptr inbounds nuw i8, ptr %656, i64 8
  %683 = icmp eq i32 %680, 0
  br i1 %683, label %684, label %654, !llvm.loop !69

684:                                              ; preds = %649, %654, %629, %611
  %685 = load i32, ptr %484, align 8, !tbaa !34
  br label %686

686:                                              ; preds = %684, %580, %578
  %687 = phi i32 [ %685, %684 ], [ %577, %580 ], [ 0, %578 ]
  %688 = load i32, ptr %486, align 8, !tbaa !27
  %689 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %688, i32 %687), !nosanitize !20
  %690 = extractvalue { i32, i1 } %689, 1, !nosanitize !20
  br i1 %690, label %691, label %692, !prof !21, !nosanitize !20

691:                                              ; preds = %686
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

692:                                              ; preds = %686
  %693 = extractvalue { i32, i1 } %689, 0, !nosanitize !20
  %694 = load ptr, ptr %490, align 8, !tbaa !29
  %695 = zext i32 %687 to i64
  %696 = getelementptr inbounds nuw i8, ptr %694, i64 %695
  store i32 0, ptr %491, align 4, !tbaa !17
  %697 = tail call ptr @__errno_location() #17
  store i32 0, ptr %697, align 4, !tbaa !4
  br label %698

698:                                              ; preds = %717, %692
  %699 = phi i32 [ 0, %692 ], [ %718, %717 ]
  %700 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %693, i32 %699), !nosanitize !20
  %701 = extractvalue { i32, i1 } %700, 1, !nosanitize !20
  br i1 %701, label %702, label %703, !prof !21, !nosanitize !20

702:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

703:                                              ; preds = %698
  %704 = extractvalue { i32, i1 } %700, 0, !nosanitize !20
  %705 = tail call i32 @llvm.umin.i32(i32 %704, i32 1073741824)
  %706 = load i32, ptr %492, align 4, !tbaa !46
  %707 = zext i32 %699 to i64
  %708 = getelementptr inbounds nuw i8, ptr %696, i64 %707
  %709 = zext nneg i32 %705 to i64
  %710 = tail call i64 @read(i32 noundef %706, ptr noundef %708, i64 noundef %709) #14
  %711 = trunc i64 %710 to i32
  %712 = icmp slt i32 %711, 1
  br i1 %712, label %720, label %713

713:                                              ; preds = %703
  %714 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %699, i32 %711), !nosanitize !20
  %715 = extractvalue { i32, i1 } %714, 1, !nosanitize !20
  br i1 %715, label %716, label %717, !prof !21, !nosanitize !20

716:                                              ; preds = %713
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

717:                                              ; preds = %713
  %718 = extractvalue { i32, i1 } %714, 0, !nosanitize !20
  %719 = icmp ult i32 %718, %693
  br i1 %719, label %698, label %733, !llvm.loop !47

720:                                              ; preds = %703
  %721 = icmp slt i32 %711, 0
  br i1 %721, label %722, label %729

722:                                              ; preds = %720
  %723 = load i32, ptr %697, align 4, !tbaa !4
  %724 = icmp eq i32 %723, 11
  br i1 %724, label %725, label %730

725:                                              ; preds = %722
  store i32 1, ptr %491, align 4, !tbaa !17
  %726 = icmp eq i32 %699, 0
  br i1 %726, label %727, label %733

727:                                              ; preds = %725
  %728 = load i32, ptr %697, align 4, !tbaa !4
  br label %730

729:                                              ; preds = %720
  store i32 1, ptr %483, align 8, !tbaa !24
  br label %733

730:                                              ; preds = %722, %727
  %731 = phi i32 [ %728, %727 ], [ %723, %722 ]
  %732 = tail call ptr @strerror(i32 noundef %731) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %732) #14
  br label %935

733:                                              ; preds = %717, %729, %725
  %734 = phi i32 [ %699, %725 ], [ %699, %729 ], [ %718, %717 ]
  %735 = load i32, ptr %484, align 8, !tbaa !34
  %736 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %735, i32 %734), !nosanitize !20
  %737 = extractvalue { i32, i1 } %736, 1, !nosanitize !20
  br i1 %737, label %738, label %739, !prof !21, !nosanitize !20

738:                                              ; preds = %733
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

739:                                              ; preds = %733
  %740 = extractvalue { i32, i1 } %736, 0, !nosanitize !20
  store i32 %740, ptr %484, align 8, !tbaa !34
  %741 = load ptr, ptr %490, align 8, !tbaa !29
  store ptr %741, ptr %489, align 8, !tbaa !35
  br label %742

742:                                              ; preds = %739, %574
  %743 = phi i32 [ %740, %739 ], [ %577, %574 ]
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %774, label %745

745:                                              ; preds = %742
  %746 = load i32, ptr %491, align 4, !tbaa !17
  %747 = icmp ne i32 %746, 0
  %748 = icmp ult i32 %743, 4
  %749 = and i1 %748, %747
  br i1 %749, label %774, label %750

750:                                              ; preds = %745
  %751 = icmp ugt i32 %743, 3
  %752 = load ptr, ptr %489, align 8, !tbaa !35
  br i1 %751, label %753, label %770

753:                                              ; preds = %750
  %754 = load i8, ptr %752, align 1, !tbaa !36
  %755 = icmp eq i8 %754, 31
  br i1 %755, label %756, label %770

756:                                              ; preds = %753
  %757 = getelementptr inbounds nuw i8, ptr %752, i64 1
  %758 = load i8, ptr %757, align 1, !tbaa !36
  %759 = icmp eq i8 %758, -117
  br i1 %759, label %760, label %770

760:                                              ; preds = %756
  %761 = getelementptr inbounds nuw i8, ptr %752, i64 2
  %762 = load i8, ptr %761, align 1, !tbaa !36
  %763 = icmp eq i8 %762, 8
  br i1 %763, label %764, label %770

764:                                              ; preds = %760
  %765 = getelementptr inbounds nuw i8, ptr %752, i64 3
  %766 = load i8, ptr %765, align 1, !tbaa !36
  %767 = icmp ult i8 %766, 32
  br i1 %767, label %768, label %770

768:                                              ; preds = %764
  %769 = tail call i32 @inflateReset(ptr noundef nonnull %489) #14
  store i32 2, ptr %485, align 8, !tbaa !26
  store i32 1, ptr %493, align 4, !tbaa !33
  store i32 0, ptr %499, align 8, !tbaa !32
  br label %922

770:                                              ; preds = %764, %760, %756, %753, %750
  %771 = load ptr, ptr %496, align 8, !tbaa !30
  store ptr %771, ptr %482, align 8, !tbaa !22
  %772 = zext i32 %743 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %771, ptr align 1 %752, i64 %772, i1 false)
  %773 = load i32, ptr %484, align 8, !tbaa !34
  store i32 %773, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %484, align 8, !tbaa !34
  store i32 1, ptr %485, align 8, !tbaa !26
  br label %924

774:                                              ; preds = %745, %742, %567
  %775 = load i32, ptr %485, align 8, !tbaa !26
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %1099, label %922

777:                                              ; preds = %537
  %778 = load ptr, ptr %496, align 8, !tbaa !30
  %779 = load i32, ptr %486, align 8, !tbaa !27
  %780 = shl i32 %779, 1
  store i32 0, ptr %491, align 4, !tbaa !17
  %781 = tail call ptr @__errno_location() #17
  store i32 0, ptr %781, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %782

782:                                              ; preds = %802, %777
  %783 = phi i32 [ %803, %802 ], [ 0, %777 ]
  %784 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %780, i32 %783), !nosanitize !20
  %785 = extractvalue { i32, i1 } %784, 1, !nosanitize !20
  br i1 %785, label %786, label %787, !prof !21, !nosanitize !20

786:                                              ; preds = %782
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

787:                                              ; preds = %782
  %788 = extractvalue { i32, i1 } %784, 0, !nosanitize !20
  %789 = tail call i32 @llvm.umin.i32(i32 %788, i32 1073741824)
  %790 = load i32, ptr %492, align 4, !tbaa !46
  %791 = zext i32 %783 to i64
  %792 = getelementptr inbounds nuw i8, ptr %778, i64 %791
  %793 = zext nneg i32 %789 to i64
  %794 = tail call i64 @read(i32 noundef %790, ptr noundef %792, i64 noundef %793) #14
  %795 = trunc i64 %794 to i32
  %796 = icmp slt i32 %795, 1
  br i1 %796, label %805, label %797

797:                                              ; preds = %787
  %798 = load i32, ptr %3, align 4, !tbaa !4
  %799 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %798, i32 %795), !nosanitize !20
  %800 = extractvalue { i32, i1 } %799, 1, !nosanitize !20
  br i1 %800, label %801, label %802, !prof !21, !nosanitize !20

801:                                              ; preds = %797
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

802:                                              ; preds = %797
  %803 = extractvalue { i32, i1 } %799, 0, !nosanitize !20
  store i32 %803, ptr %3, align 4, !tbaa !4
  %804 = icmp ult i32 %803, %780
  br i1 %804, label %782, label %819, !llvm.loop !47

805:                                              ; preds = %787
  %806 = icmp slt i32 %795, 0
  br i1 %806, label %807, label %815

807:                                              ; preds = %805
  %808 = load i32, ptr %781, align 4, !tbaa !4
  %809 = icmp eq i32 %808, 11
  br i1 %809, label %810, label %816

810:                                              ; preds = %807
  store i32 1, ptr %491, align 4, !tbaa !17
  %811 = load i32, ptr %3, align 4, !tbaa !4
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %819

813:                                              ; preds = %810
  %814 = load i32, ptr %781, align 4, !tbaa !4
  br label %816

815:                                              ; preds = %805
  store i32 1, ptr %483, align 8, !tbaa !24
  br label %819

816:                                              ; preds = %813, %807
  %817 = phi i32 [ %814, %813 ], [ %808, %807 ]
  %818 = tail call ptr @strerror(i32 noundef %817) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %818) #14
  br label %935

819:                                              ; preds = %802, %815, %810
  %820 = load ptr, ptr %496, align 8, !tbaa !30
  store ptr %820, ptr %482, align 8, !tbaa !22
  br label %1099

821:                                              ; preds = %537
  %822 = load i32, ptr %486, align 8, !tbaa !27
  %823 = shl i32 %822, 1
  store i32 %823, ptr %487, align 8, !tbaa !48
  %824 = load ptr, ptr %496, align 8, !tbaa !30
  store ptr %824, ptr %488, align 8, !tbaa !49
  br label %825

825:                                              ; preds = %904, %821
  %826 = phi i32 [ 0, %821 ], [ %889, %904 ]
  %827 = load i32, ptr %484, align 8, !tbaa !34
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %888

829:                                              ; preds = %825
  %830 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %830, label %908 [
    i32 0, label %831
    i32 -5, label %831
  ]

831:                                              ; preds = %829, %829
  %832 = load i32, ptr %483, align 8, !tbaa !24
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %884

834:                                              ; preds = %831
  %835 = load i32, ptr %486, align 8, !tbaa !27
  %836 = load ptr, ptr %490, align 8, !tbaa !29
  store i32 0, ptr %491, align 4, !tbaa !17
  %837 = tail call ptr @__errno_location() #17
  store i32 0, ptr %837, align 4, !tbaa !4
  br label %838

838:                                              ; preds = %857, %834
  %839 = phi i32 [ 0, %834 ], [ %858, %857 ]
  %840 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %835, i32 %839), !nosanitize !20
  %841 = extractvalue { i32, i1 } %840, 1, !nosanitize !20
  br i1 %841, label %842, label %843, !prof !21, !nosanitize !20

842:                                              ; preds = %838
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

843:                                              ; preds = %838
  %844 = extractvalue { i32, i1 } %840, 0, !nosanitize !20
  %845 = tail call i32 @llvm.umin.i32(i32 %844, i32 1073741824)
  %846 = load i32, ptr %492, align 4, !tbaa !46
  %847 = zext i32 %839 to i64
  %848 = getelementptr inbounds nuw i8, ptr %836, i64 %847
  %849 = zext nneg i32 %845 to i64
  %850 = tail call i64 @read(i32 noundef %846, ptr noundef %848, i64 noundef %849) #14
  %851 = trunc i64 %850 to i32
  %852 = icmp slt i32 %851, 1
  br i1 %852, label %860, label %853

853:                                              ; preds = %843
  %854 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %839, i32 %851), !nosanitize !20
  %855 = extractvalue { i32, i1 } %854, 1, !nosanitize !20
  br i1 %855, label %856, label %857, !prof !21, !nosanitize !20

856:                                              ; preds = %853
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

857:                                              ; preds = %853
  %858 = extractvalue { i32, i1 } %854, 0, !nosanitize !20
  %859 = icmp ult i32 %858, %835
  br i1 %859, label %838, label %874, !llvm.loop !47

860:                                              ; preds = %843
  %861 = icmp slt i32 %851, 0
  br i1 %861, label %862, label %869

862:                                              ; preds = %860
  %863 = load i32, ptr %837, align 4, !tbaa !4
  %864 = icmp eq i32 %863, 11
  br i1 %864, label %865, label %870

865:                                              ; preds = %862
  store i32 1, ptr %491, align 4, !tbaa !17
  %866 = icmp eq i32 %839, 0
  br i1 %866, label %867, label %874

867:                                              ; preds = %865
  %868 = load i32, ptr %837, align 4, !tbaa !4
  br label %870

869:                                              ; preds = %860
  store i32 1, ptr %483, align 8, !tbaa !24
  br label %874

870:                                              ; preds = %862, %867
  %871 = phi i32 [ %868, %867 ], [ %863, %862 ]
  %872 = tail call ptr @strerror(i32 noundef %871) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %872) #14
  %873 = load i32, ptr %11, align 8, !tbaa !16
  br label %908

874:                                              ; preds = %857, %869, %865
  %875 = phi i32 [ %839, %865 ], [ %839, %869 ], [ %858, %857 ]
  %876 = load i32, ptr %484, align 8, !tbaa !34
  %877 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %876, i32 %875), !nosanitize !20
  %878 = extractvalue { i32, i1 } %877, 1, !nosanitize !20
  br i1 %878, label %879, label %880, !prof !21, !nosanitize !20

879:                                              ; preds = %874
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

880:                                              ; preds = %874
  %881 = extractvalue { i32, i1 } %877, 0, !nosanitize !20
  store i32 %881, ptr %484, align 8, !tbaa !34
  %882 = load ptr, ptr %490, align 8, !tbaa !29
  store ptr %882, ptr %489, align 8, !tbaa !35
  %883 = icmp eq i32 %881, 0
  br i1 %883, label %884, label %888

884:                                              ; preds = %880, %831
  %885 = load i32, ptr %491, align 4, !tbaa !17
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %887, label %908

887:                                              ; preds = %884
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %908

888:                                              ; preds = %880, %825
  %889 = tail call i32 @inflate(ptr noundef nonnull %489, i32 noundef 0) #14
  %890 = load i32, ptr %487, align 8, !tbaa !48
  %891 = icmp ult i32 %890, %823
  br i1 %891, label %892, label %893

892:                                              ; preds = %888
  store i32 0, ptr %493, align 4, !tbaa !33
  br label %893

893:                                              ; preds = %892, %888
  switch i32 %889, label %904 [
    i32 -2, label %894
    i32 2, label %894
    i32 -4, label %895
    i32 -3, label %896
  ]

894:                                              ; preds = %893, %893
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %908

895:                                              ; preds = %893
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %908

896:                                              ; preds = %893
  %897 = load i32, ptr %493, align 4, !tbaa !33
  %898 = icmp eq i32 %897, 1
  br i1 %898, label %899, label %900

899:                                              ; preds = %896
  store i32 0, ptr %484, align 8, !tbaa !34
  store i32 1, ptr %483, align 8, !tbaa !24
  store i32 0, ptr %485, align 8, !tbaa !26
  br label %908

900:                                              ; preds = %896
  %901 = load ptr, ptr %494, align 8, !tbaa !50
  %902 = icmp eq ptr %901, null
  %903 = select i1 %902, ptr @.str.6, ptr %901
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %903) #14
  br label %908

904:                                              ; preds = %893
  %905 = icmp ne i32 %890, 0
  %906 = icmp ne i32 %889, 1
  %907 = select i1 %905, i1 %906, i1 false
  br i1 %907, label %825, label %908, !llvm.loop !51

908:                                              ; preds = %904, %829, %900, %899, %895, %894, %887, %884, %870
  %909 = phi i32 [ %873, %870 ], [ %826, %884 ], [ %826, %887 ], [ %889, %894 ], [ -4, %895 ], [ 0, %899 ], [ -3, %900 ], [ %830, %829 ], [ %889, %904 ]
  %910 = load i32, ptr %487, align 8, !tbaa !48
  %911 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %823, i32 %910), !nosanitize !20
  %912 = extractvalue { i32, i1 } %911, 1, !nosanitize !20
  br i1 %912, label %913, label %914, !prof !21, !nosanitize !20

913:                                              ; preds = %908
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

914:                                              ; preds = %908
  %915 = extractvalue { i32, i1 } %911, 0, !nosanitize !20
  store i32 %915, ptr %3, align 8, !tbaa !19
  %916 = load ptr, ptr %488, align 8, !tbaa !49
  %917 = zext i32 %915 to i64
  %918 = sub nsw i64 0, %917
  %919 = getelementptr inbounds i8, ptr %916, i64 %918
  store ptr %919, ptr %482, align 8, !tbaa !22
  switch i32 %909, label %935 [
    i32 1, label %920
    i32 0, label %922
  ]

920:                                              ; preds = %914
  store i32 0, ptr %493, align 4, !tbaa !33
  store i32 0, ptr %485, align 8, !tbaa !26
  br label %922

921:                                              ; preds = %537
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %935

922:                                              ; preds = %920, %914, %774, %768
  %923 = load i32, ptr %3, align 8, !tbaa !19
  br label %924

924:                                              ; preds = %922, %770
  %925 = phi i32 [ %923, %922 ], [ %773, %770 ]
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %927, label %1099

927:                                              ; preds = %924
  %928 = load i32, ptr %483, align 8, !tbaa !24
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %933, label %930

930:                                              ; preds = %927
  %931 = load i32, ptr %484, align 8, !tbaa !34
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %1099, label %933

933:                                              ; preds = %930, %927
  %934 = load i32, ptr %485, align 8, !tbaa !26
  br label %537, !llvm.loop !52

935:                                              ; preds = %914, %572, %921, %816, %730, %558, %553
  %936 = load i32, ptr %3, align 8, !tbaa !19
  %937 = icmp eq i32 %936, 0
  %938 = sext i1 %937 to i32
  br label %1099

939:                                              ; preds = %532
  %940 = icmp eq i32 %530, 1
  br i1 %940, label %941, label %978

941:                                              ; preds = %939
  store i32 0, ptr %491, align 4, !tbaa !17
  %942 = tail call ptr @__errno_location() #17
  store i32 0, ptr %942, align 4, !tbaa !4
  br label %943

943:                                              ; preds = %962, %941
  %944 = phi i32 [ 0, %941 ], [ %963, %962 ]
  %945 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %505, i32 %944), !nosanitize !20
  %946 = extractvalue { i32, i1 } %945, 1, !nosanitize !20
  br i1 %946, label %947, label %948, !prof !21, !nosanitize !20

947:                                              ; preds = %943
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

948:                                              ; preds = %943
  %949 = extractvalue { i32, i1 } %945, 0, !nosanitize !20
  %950 = tail call i32 @llvm.umin.i32(i32 %949, i32 1073741824)
  %951 = load i32, ptr %492, align 4, !tbaa !46
  %952 = zext i32 %944 to i64
  %953 = getelementptr inbounds nuw i8, ptr %501, i64 %952
  %954 = zext nneg i32 %950 to i64
  %955 = tail call i64 @read(i32 noundef %951, ptr noundef %953, i64 noundef %954) #14
  %956 = trunc i64 %955 to i32
  %957 = icmp slt i32 %956, 1
  br i1 %957, label %965, label %958

958:                                              ; preds = %948
  %959 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %944, i32 %956), !nosanitize !20
  %960 = extractvalue { i32, i1 } %959, 1, !nosanitize !20
  br i1 %960, label %961, label %962, !prof !21, !nosanitize !20

961:                                              ; preds = %958
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

962:                                              ; preds = %958
  %963 = extractvalue { i32, i1 } %959, 0, !nosanitize !20
  %964 = icmp ult i32 %963, %505
  br i1 %964, label %943, label %1081, !llvm.loop !47

965:                                              ; preds = %948
  %966 = icmp slt i32 %956, 0
  br i1 %966, label %967, label %977

967:                                              ; preds = %965
  %968 = load i32, ptr %942, align 4, !tbaa !4
  %969 = icmp eq i32 %968, 11
  br i1 %969, label %970, label %974

970:                                              ; preds = %967
  store i32 1, ptr %491, align 4, !tbaa !17
  %971 = icmp eq i32 %944, 0
  br i1 %971, label %972, label %1083

972:                                              ; preds = %970
  %973 = load i32, ptr %942, align 4, !tbaa !4
  br label %974

974:                                              ; preds = %972, %967
  %975 = phi i32 [ %973, %972 ], [ %968, %967 ]
  %976 = tail call ptr @strerror(i32 noundef %975) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %976) #14
  br label %1083

977:                                              ; preds = %965
  store i32 1, ptr %483, align 8, !tbaa !24
  br label %1083

978:                                              ; preds = %939
  store i32 %505, ptr %487, align 8, !tbaa !58
  store ptr %501, ptr %488, align 8, !tbaa !59
  br label %979

979:                                              ; preds = %1058, %978
  %980 = phi i32 [ 0, %978 ], [ %1043, %1058 ]
  %981 = load i32, ptr %484, align 8, !tbaa !34
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %1042

983:                                              ; preds = %979
  %984 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %984, label %1062 [
    i32 0, label %985
    i32 -5, label %985
  ]

985:                                              ; preds = %983, %983
  %986 = load i32, ptr %483, align 8, !tbaa !24
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %1038

988:                                              ; preds = %985
  %989 = load i32, ptr %486, align 8, !tbaa !27
  %990 = load ptr, ptr %490, align 8, !tbaa !29
  store i32 0, ptr %491, align 4, !tbaa !17
  %991 = tail call ptr @__errno_location() #17
  store i32 0, ptr %991, align 4, !tbaa !4
  br label %992

992:                                              ; preds = %1011, %988
  %993 = phi i32 [ 0, %988 ], [ %1012, %1011 ]
  %994 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %989, i32 %993), !nosanitize !20
  %995 = extractvalue { i32, i1 } %994, 1, !nosanitize !20
  br i1 %995, label %996, label %997, !prof !21, !nosanitize !20

996:                                              ; preds = %992
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

997:                                              ; preds = %992
  %998 = extractvalue { i32, i1 } %994, 0, !nosanitize !20
  %999 = tail call i32 @llvm.umin.i32(i32 %998, i32 1073741824)
  %1000 = load i32, ptr %492, align 4, !tbaa !46
  %1001 = zext i32 %993 to i64
  %1002 = getelementptr inbounds nuw i8, ptr %990, i64 %1001
  %1003 = zext nneg i32 %999 to i64
  %1004 = tail call i64 @read(i32 noundef %1000, ptr noundef %1002, i64 noundef %1003) #14
  %1005 = trunc i64 %1004 to i32
  %1006 = icmp slt i32 %1005, 1
  br i1 %1006, label %1014, label %1007

1007:                                             ; preds = %997
  %1008 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %993, i32 %1005), !nosanitize !20
  %1009 = extractvalue { i32, i1 } %1008, 1, !nosanitize !20
  br i1 %1009, label %1010, label %1011, !prof !21, !nosanitize !20

1010:                                             ; preds = %1007
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1011:                                             ; preds = %1007
  %1012 = extractvalue { i32, i1 } %1008, 0, !nosanitize !20
  %1013 = icmp ult i32 %1012, %989
  br i1 %1013, label %992, label %1028, !llvm.loop !47

1014:                                             ; preds = %997
  %1015 = icmp slt i32 %1005, 0
  br i1 %1015, label %1016, label %1023

1016:                                             ; preds = %1014
  %1017 = load i32, ptr %991, align 4, !tbaa !4
  %1018 = icmp eq i32 %1017, 11
  br i1 %1018, label %1019, label %1024

1019:                                             ; preds = %1016
  store i32 1, ptr %491, align 4, !tbaa !17
  %1020 = icmp eq i32 %993, 0
  br i1 %1020, label %1021, label %1028

1021:                                             ; preds = %1019
  %1022 = load i32, ptr %991, align 4, !tbaa !4
  br label %1024

1023:                                             ; preds = %1014
  store i32 1, ptr %483, align 8, !tbaa !24
  br label %1028

1024:                                             ; preds = %1016, %1021
  %1025 = phi i32 [ %1022, %1021 ], [ %1017, %1016 ]
  %1026 = tail call ptr @strerror(i32 noundef %1025) #14
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %1026) #14
  %1027 = load i32, ptr %11, align 8, !tbaa !16
  br label %1062

1028:                                             ; preds = %1011, %1023, %1019
  %1029 = phi i32 [ %993, %1019 ], [ %993, %1023 ], [ %1012, %1011 ]
  %1030 = load i32, ptr %484, align 8, !tbaa !34
  %1031 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1030, i32 %1029), !nosanitize !20
  %1032 = extractvalue { i32, i1 } %1031, 1, !nosanitize !20
  br i1 %1032, label %1033, label %1034, !prof !21, !nosanitize !20

1033:                                             ; preds = %1028
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1034:                                             ; preds = %1028
  %1035 = extractvalue { i32, i1 } %1031, 0, !nosanitize !20
  store i32 %1035, ptr %484, align 8, !tbaa !34
  %1036 = load ptr, ptr %490, align 8, !tbaa !29
  store ptr %1036, ptr %489, align 8, !tbaa !35
  %1037 = icmp eq i32 %1035, 0
  br i1 %1037, label %1038, label %1042

1038:                                             ; preds = %1034, %985
  %1039 = load i32, ptr %491, align 4, !tbaa !17
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1041, label %1062

1041:                                             ; preds = %1038
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %1062

1042:                                             ; preds = %1034, %979
  %1043 = tail call i32 @inflate(ptr noundef nonnull %489, i32 noundef 0) #14
  %1044 = load i32, ptr %487, align 8, !tbaa !48
  %1045 = icmp ult i32 %1044, %505
  br i1 %1045, label %1046, label %1047

1046:                                             ; preds = %1042
  store i32 0, ptr %493, align 4, !tbaa !33
  br label %1047

1047:                                             ; preds = %1046, %1042
  switch i32 %1043, label %1058 [
    i32 -2, label %1048
    i32 2, label %1048
    i32 -4, label %1049
    i32 -3, label %1050
  ]

1048:                                             ; preds = %1047, %1047
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %1062

1049:                                             ; preds = %1047
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1062

1050:                                             ; preds = %1047
  %1051 = load i32, ptr %493, align 4, !tbaa !33
  %1052 = icmp eq i32 %1051, 1
  br i1 %1052, label %1053, label %1054

1053:                                             ; preds = %1050
  store i32 0, ptr %484, align 8, !tbaa !34
  store i32 1, ptr %483, align 8, !tbaa !24
  store i32 0, ptr %485, align 8, !tbaa !26
  br label %1062

1054:                                             ; preds = %1050
  %1055 = load ptr, ptr %494, align 8, !tbaa !50
  %1056 = icmp eq ptr %1055, null
  %1057 = select i1 %1056, ptr @.str.6, ptr %1055
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %1057) #14
  br label %1062

1058:                                             ; preds = %1047
  %1059 = icmp ne i32 %1044, 0
  %1060 = icmp ne i32 %1043, 1
  %1061 = select i1 %1059, i1 %1060, i1 false
  br i1 %1061, label %979, label %1062, !llvm.loop !51

1062:                                             ; preds = %1058, %983, %1054, %1053, %1049, %1048, %1041, %1038, %1024
  %1063 = phi i32 [ %1027, %1024 ], [ %980, %1038 ], [ %980, %1041 ], [ %1043, %1048 ], [ -4, %1049 ], [ 0, %1053 ], [ -3, %1054 ], [ %1043, %1058 ], [ %984, %983 ]
  %1064 = load i32, ptr %487, align 8, !tbaa !48
  %1065 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %505, i32 %1064), !nosanitize !20
  %1066 = extractvalue { i32, i1 } %1065, 1, !nosanitize !20
  br i1 %1066, label %1067, label %1068, !prof !21, !nosanitize !20

1067:                                             ; preds = %1062
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

1068:                                             ; preds = %1062
  %1069 = extractvalue { i32, i1 } %1065, 0, !nosanitize !20
  %1070 = load ptr, ptr %488, align 8, !tbaa !49
  %1071 = zext i32 %1069 to i64
  %1072 = sub nsw i64 0, %1071
  %1073 = getelementptr inbounds i8, ptr %1070, i64 %1072
  store ptr %1073, ptr %482, align 8, !tbaa !22
  %1074 = icmp eq i32 %1063, 1
  br i1 %1074, label %1075, label %1076

1075:                                             ; preds = %1068
  store i32 0, ptr %493, align 4, !tbaa !33
  store i32 0, ptr %485, align 8, !tbaa !26
  br label %1079

1076:                                             ; preds = %1068
  %1077 = icmp ne i32 %1063, 0
  %1078 = sext i1 %1077 to i32
  br label %1079

1079:                                             ; preds = %1076, %1075
  %1080 = phi i32 [ 0, %1075 ], [ %1078, %1076 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1083

1081:                                             ; preds = %962
  %1082 = zext i32 %963 to i64
  br label %1083

1083:                                             ; preds = %1081, %1079, %977, %974, %970, %518
  %1084 = phi i64 [ %1082, %1081 ], [ %952, %977 ], [ %952, %974 ], [ %952, %970 ], [ %511, %518 ], [ %1071, %1079 ]
  %1085 = phi i32 [ 0, %1081 ], [ 0, %977 ], [ -1, %974 ], [ 0, %970 ], [ %522, %518 ], [ %1080, %1079 ]
  %1086 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %502, i64 %1084), !nosanitize !20
  %1087 = extractvalue { i64, i1 } %1086, 0, !nosanitize !20
  %1088 = extractvalue { i64, i1 } %1086, 1, !nosanitize !20
  br i1 %1088, label %1089, label %1090, !prof !21, !nosanitize !20

1089:                                             ; preds = %1083
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

1090:                                             ; preds = %1083
  %1091 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %503, i64 %1084), !nosanitize !20
  %1092 = extractvalue { i64, i1 } %1091, 1, !nosanitize !20
  br i1 %1092, label %1093, label %1094, !prof !21, !nosanitize !20

1093:                                             ; preds = %1090
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1094:                                             ; preds = %1090
  %1095 = extractvalue { i64, i1 } %1091, 0, !nosanitize !20
  %1096 = getelementptr inbounds nuw i8, ptr %501, i64 %1084
  %1097 = load i64, ptr %495, align 8, !tbaa !23
  %1098 = add nsw i64 %1097, %1084
  store i64 %1098, ptr %495, align 8, !tbaa !23
  br label %1099

1099:                                             ; preds = %930, %924, %774, %1094, %935, %819
  %1100 = phi ptr [ %1096, %1094 ], [ %501, %935 ], [ %501, %819 ], [ %501, %774 ], [ %501, %924 ], [ %501, %930 ]
  %1101 = phi i64 [ %1087, %1094 ], [ %502, %935 ], [ %502, %819 ], [ %502, %774 ], [ %502, %924 ], [ %502, %930 ]
  %1102 = phi i64 [ %1095, %1094 ], [ %503, %935 ], [ %503, %819 ], [ %503, %774 ], [ %503, %924 ], [ %503, %930 ]
  %1103 = phi i32 [ %1085, %1094 ], [ %938, %935 ], [ 0, %819 ], [ 0, %774 ], [ 0, %924 ], [ 0, %930 ]
  %1104 = icmp eq i64 %1101, 0
  br i1 %1104, label %1113, label %1105

1105:                                             ; preds = %1099
  %1106 = icmp eq i32 %1103, 0
  br i1 %1106, label %500, label %1107, !llvm.loop !60

1107:                                             ; preds = %1105
  %1108 = load i32, ptr %483, align 8, !tbaa !24
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1113, label %1110

1110:                                             ; preds = %526, %1107
  %1111 = phi i64 [ %1102, %1107 ], [ %503, %526 ]
  %1112 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1112, align 4, !tbaa !61
  br label %1113

1113:                                             ; preds = %114, %456, %1099, %95, %100, %272, %358, %463, %1107, %1110
  %1114 = phi i64 [ 0, %95 ], [ 0, %272 ], [ %1111, %1110 ], [ %1102, %1107 ], [ 0, %100 ], [ %1102, %1099 ], [ 0, %463 ], [ 0, %358 ], [ 0, %456 ], [ 0, %114 ]
  %1115 = udiv i64 %1114, %1
  br label %1116

1116:                                             ; preds = %1113, %28, %13, %6, %4, %27
  %1117 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %27 ], [ 0, %13 ], [ %1115, %1113 ], [ 0, %28 ]
  ret i64 %1117
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1117, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1117

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
  br i1 %14, label %1117, label %15

15:                                               ; preds = %8, %8, %11
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %16 = load i32, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !23
  %22 = add nsw i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !23
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 1
  store ptr %25, ptr %23, align 8, !tbaa !22
  %26 = load i8, ptr %24, align 1, !tbaa !36
  %27 = zext i8 %26 to i32
  br label %1117

28:                                               ; preds = %15
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %30 = load i64, ptr %29, align 8, !tbaa !18
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %479, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %51

51:                                               ; preds = %476, %32
  %52 = phi i64 [ %477, %476 ], [ %30, %32 ]
  %53 = load i32, ptr %0, align 8, !tbaa !19
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %51
  %56 = zext i32 %53 to i64
  %57 = tail call i64 @llvm.smin.i64(i64 %52, i64 %56)
  %58 = trunc i64 %57 to i32
  %59 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 %58), !nosanitize !20
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !20
  br i1 %60, label %61, label %62, !prof !21, !nosanitize !20

61:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

62:                                               ; preds = %55
  %63 = extractvalue { i32, i1 } %59, 0, !nosanitize !20
  store i32 %63, ptr %0, align 8, !tbaa !19
  %64 = load ptr, ptr %33, align 8, !tbaa !22
  %65 = and i64 %57, 4294967295
  %66 = getelementptr inbounds nuw i8, ptr %64, i64 %65
  store ptr %66, ptr %33, align 8, !tbaa !22
  %67 = load i64, ptr %34, align 8, !tbaa !23
  %68 = add nsw i64 %67, %65
  store i64 %68, ptr %34, align 8, !tbaa !23
  %69 = sub nsw i64 %52, %65
  store i64 %69, ptr %29, align 8, !tbaa !18
  br label %476

70:                                               ; preds = %51
  %71 = load i32, ptr %35, align 8, !tbaa !24
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %36, align 8, !tbaa !25
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %479, label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %473, %76
  %78 = load i32, ptr %37, align 8, !tbaa !26
  switch i32 %78, label %461 [
    i32 0, label %79
    i32 1, label %317
    i32 2, label %361
  ]

79:                                               ; preds = %77
  %80 = load i32, ptr %38, align 8, !tbaa !27
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load i32, ptr %48, align 4, !tbaa !28
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #16
  store ptr %85, ptr %43, align 8, !tbaa !29
  %86 = load i32, ptr %48, align 4, !tbaa !28
  %87 = shl i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = tail call noalias ptr @malloc(i64 noundef %88) #16
  store ptr %89, ptr %40, align 8, !tbaa !30
  %90 = icmp eq ptr %85, null
  %91 = icmp eq ptr %89, null
  %92 = or i1 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  tail call void @free(ptr noundef %89) #14
  tail call void @free(ptr noundef %85) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1116

94:                                               ; preds = %82
  %95 = load i32, ptr %48, align 4, !tbaa !28
  store i32 %95, ptr %38, align 8, !tbaa !27
  store i32 0, ptr %36, align 8, !tbaa !25
  store ptr null, ptr %42, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %96 = tail call i32 @inflateInit2_(ptr noundef nonnull %42, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %40, align 8, !tbaa !30
  tail call void @free(ptr noundef %99) #14
  %100 = load ptr, ptr %43, align 8, !tbaa !29
  tail call void @free(ptr noundef %100) #14
  store i32 0, ptr %38, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1116

101:                                              ; preds = %94, %79
  %102 = load i32, ptr %50, align 8, !tbaa !32
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %46, align 4, !tbaa !33
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104, %101
  %108 = tail call i32 @inflateReset(ptr noundef nonnull %42) #14
  store i32 2, ptr %37, align 8, !tbaa !26
  %109 = load i32, ptr %46, align 4, !tbaa !33
  %110 = icmp ne i32 %109, -1
  %111 = zext i1 %110 to i32
  store i32 %111, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %50, align 8, !tbaa !32
  br label %314

112:                                              ; preds = %104
  %113 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %113, label %1116 [
    i32 0, label %114
    i32 -5, label %114
  ]

114:                                              ; preds = %112, %112
  %115 = load i32, ptr %35, align 8, !tbaa !24
  %116 = icmp eq i32 %115, 0
  %117 = load i32, ptr %36, align 8, !tbaa !34
  br i1 %116, label %118, label %282

118:                                              ; preds = %114
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %226, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr %43, align 8, !tbaa !29
  %122 = load ptr, ptr %42, align 8, !tbaa !35
  %123 = icmp eq ptr %122, %121
  br i1 %123, label %226, label %124

124:                                              ; preds = %120
  %125 = ptrtoaddr ptr %122 to i64
  %126 = ptrtoaddr ptr %121 to i64
  %127 = zext i32 %117 to i64
  %128 = icmp ult i32 %117, 4
  %129 = sub i64 %126, %125
  %130 = icmp ult i64 %129, 32
  %131 = or i1 %128, %130
  br i1 %131, label %171, label %132

132:                                              ; preds = %124
  %133 = icmp ult i32 %117, 32
  br i1 %133, label %155, label %134

134:                                              ; preds = %132
  %135 = and i64 %127, 28
  %136 = and i64 %127, 4294967264
  %137 = getelementptr i8, ptr %121, i64 %136
  %138 = getelementptr i8, ptr %122, i64 %136
  %139 = trunc nuw i64 %136 to i32
  %140 = sub i32 %117, %139
  br label %141

141:                                              ; preds = %141, %134
  %142 = phi i64 [ 0, %134 ], [ %149, %141 ]
  %143 = getelementptr i8, ptr %121, i64 %142
  %144 = getelementptr i8, ptr %122, i64 %142
  %145 = getelementptr i8, ptr %144, i64 16
  %146 = load <16 x i8>, ptr %144, align 1, !tbaa !36
  %147 = load <16 x i8>, ptr %145, align 1, !tbaa !36
  %148 = getelementptr i8, ptr %143, i64 16
  store <16 x i8> %146, ptr %143, align 1, !tbaa !36
  store <16 x i8> %147, ptr %148, align 1, !tbaa !36
  %149 = add nuw i64 %142, 32
  %150 = icmp eq i64 %149, %136
  br i1 %150, label %151, label %141, !llvm.loop !70

151:                                              ; preds = %141
  %152 = icmp eq i64 %136, %127
  br i1 %152, label %224, label %153

153:                                              ; preds = %151
  %154 = icmp eq i64 %135, 0
  br i1 %154, label %171, label %155, !prof !41

155:                                              ; preds = %132, %153
  %156 = phi i64 [ %136, %153 ], [ 0, %132 ]
  %157 = and i64 %127, 4294967292
  %158 = getelementptr i8, ptr %121, i64 %157
  %159 = getelementptr i8, ptr %122, i64 %157
  %160 = trunc nuw i64 %157 to i32
  %161 = sub i32 %117, %160
  br label %162

162:                                              ; preds = %162, %155
  %163 = phi i64 [ %156, %155 ], [ %167, %162 ]
  %164 = getelementptr i8, ptr %121, i64 %163
  %165 = getelementptr i8, ptr %122, i64 %163
  %166 = load <4 x i8>, ptr %165, align 1, !tbaa !36
  store <4 x i8> %166, ptr %164, align 1, !tbaa !36
  %167 = add nuw i64 %163, 4
  %168 = icmp eq i64 %167, %157
  br i1 %168, label %169, label %162, !llvm.loop !71

169:                                              ; preds = %162
  %170 = icmp eq i64 %157, %127
  br i1 %170, label %224, label %171

171:                                              ; preds = %124, %153, %169
  %172 = phi ptr [ %121, %124 ], [ %137, %153 ], [ %158, %169 ]
  %173 = phi ptr [ %122, %124 ], [ %138, %153 ], [ %159, %169 ]
  %174 = phi i32 [ %117, %124 ], [ %140, %153 ], [ %161, %169 ]
  %175 = add i32 %174, -1
  %176 = and i32 %174, 7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %171, %178
  %179 = phi ptr [ %185, %178 ], [ %172, %171 ]
  %180 = phi ptr [ %186, %178 ], [ %173, %171 ]
  %181 = phi i32 [ %184, %178 ], [ %174, %171 ]
  %182 = phi i32 [ %187, %178 ], [ 0, %171 ]
  %183 = load i8, ptr %180, align 1, !tbaa !36
  store i8 %183, ptr %179, align 1, !tbaa !36
  %184 = add i32 %181, -1
  %185 = getelementptr inbounds nuw i8, ptr %179, i64 1
  %186 = getelementptr inbounds nuw i8, ptr %180, i64 1
  %187 = add i32 %182, 1
  %188 = icmp eq i32 %187, %176
  br i1 %188, label %189, label %178, !llvm.loop !72

189:                                              ; preds = %178, %171
  %190 = phi ptr [ %172, %171 ], [ %185, %178 ]
  %191 = phi ptr [ %173, %171 ], [ %186, %178 ]
  %192 = phi i32 [ %174, %171 ], [ %184, %178 ]
  %193 = icmp ult i32 %175, 7
  br i1 %193, label %224, label %194

194:                                              ; preds = %189, %194
  %195 = phi ptr [ %221, %194 ], [ %190, %189 ]
  %196 = phi ptr [ %222, %194 ], [ %191, %189 ]
  %197 = phi i32 [ %220, %194 ], [ %192, %189 ]
  %198 = load i8, ptr %196, align 1, !tbaa !36
  store i8 %198, ptr %195, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %195, i64 1
  %200 = getelementptr inbounds nuw i8, ptr %196, i64 1
  %201 = load i8, ptr %200, align 1, !tbaa !36
  store i8 %201, ptr %199, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %195, i64 2
  %203 = getelementptr inbounds nuw i8, ptr %196, i64 2
  %204 = load i8, ptr %203, align 1, !tbaa !36
  store i8 %204, ptr %202, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %195, i64 3
  %206 = getelementptr inbounds nuw i8, ptr %196, i64 3
  %207 = load i8, ptr %206, align 1, !tbaa !36
  store i8 %207, ptr %205, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %195, i64 4
  %209 = getelementptr inbounds nuw i8, ptr %196, i64 4
  %210 = load i8, ptr %209, align 1, !tbaa !36
  store i8 %210, ptr %208, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %195, i64 5
  %212 = getelementptr inbounds nuw i8, ptr %196, i64 5
  %213 = load i8, ptr %212, align 1, !tbaa !36
  store i8 %213, ptr %211, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %195, i64 6
  %215 = getelementptr inbounds nuw i8, ptr %196, i64 6
  %216 = load i8, ptr %215, align 1, !tbaa !36
  store i8 %216, ptr %214, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %195, i64 7
  %218 = getelementptr inbounds nuw i8, ptr %196, i64 7
  %219 = load i8, ptr %218, align 1, !tbaa !36
  store i8 %219, ptr %217, align 1, !tbaa !36
  %220 = add i32 %197, -8
  %221 = getelementptr inbounds nuw i8, ptr %195, i64 8
  %222 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %223 = icmp eq i32 %220, 0
  br i1 %223, label %224, label %194, !llvm.loop !73

224:                                              ; preds = %189, %194, %169, %151
  %225 = load i32, ptr %36, align 8, !tbaa !34
  br label %226

226:                                              ; preds = %224, %120, %118
  %227 = phi i32 [ %225, %224 ], [ %117, %120 ], [ 0, %118 ]
  %228 = load i32, ptr %38, align 8, !tbaa !27
  %229 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %228, i32 %227), !nosanitize !20
  %230 = extractvalue { i32, i1 } %229, 1, !nosanitize !20
  br i1 %230, label %231, label %232, !prof !21, !nosanitize !20

231:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

232:                                              ; preds = %226
  %233 = extractvalue { i32, i1 } %229, 0, !nosanitize !20
  %234 = load ptr, ptr %43, align 8, !tbaa !29
  %235 = zext i32 %227 to i64
  %236 = getelementptr inbounds nuw i8, ptr %234, i64 %235
  store i32 0, ptr %44, align 4, !tbaa !17
  %237 = tail call ptr @__errno_location() #17
  store i32 0, ptr %237, align 4, !tbaa !4
  br label %238

238:                                              ; preds = %257, %232
  %239 = phi i32 [ 0, %232 ], [ %258, %257 ]
  %240 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %233, i32 %239), !nosanitize !20
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !20
  br i1 %241, label %242, label %243, !prof !21, !nosanitize !20

242:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

243:                                              ; preds = %238
  %244 = extractvalue { i32, i1 } %240, 0, !nosanitize !20
  %245 = tail call i32 @llvm.umin.i32(i32 %244, i32 1073741824)
  %246 = load i32, ptr %45, align 4, !tbaa !46
  %247 = zext i32 %239 to i64
  %248 = getelementptr inbounds nuw i8, ptr %236, i64 %247
  %249 = zext nneg i32 %245 to i64
  %250 = tail call i64 @read(i32 noundef %246, ptr noundef %248, i64 noundef %249) #14
  %251 = trunc i64 %250 to i32
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %260, label %253

253:                                              ; preds = %243
  %254 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %251), !nosanitize !20
  %255 = extractvalue { i32, i1 } %254, 1, !nosanitize !20
  br i1 %255, label %256, label %257, !prof !21, !nosanitize !20

256:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

257:                                              ; preds = %253
  %258 = extractvalue { i32, i1 } %254, 0, !nosanitize !20
  %259 = icmp ult i32 %258, %233
  br i1 %259, label %238, label %273, !llvm.loop !47

260:                                              ; preds = %243
  %261 = icmp slt i32 %251, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %260
  %263 = load i32, ptr %237, align 4, !tbaa !4
  %264 = icmp eq i32 %263, 11
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  store i32 1, ptr %44, align 4, !tbaa !17
  %266 = icmp eq i32 %239, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %265
  %268 = load i32, ptr %237, align 4, !tbaa !4
  br label %270

269:                                              ; preds = %260
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %273

270:                                              ; preds = %262, %267
  %271 = phi i32 [ %268, %267 ], [ %263, %262 ]
  %272 = tail call ptr @strerror(i32 noundef %271) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %272) #14
  br label %1116

273:                                              ; preds = %257, %269, %265
  %274 = phi i32 [ %239, %265 ], [ %239, %269 ], [ %258, %257 ]
  %275 = load i32, ptr %36, align 8, !tbaa !34
  %276 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %275, i32 %274), !nosanitize !20
  %277 = extractvalue { i32, i1 } %276, 1, !nosanitize !20
  br i1 %277, label %278, label %279, !prof !21, !nosanitize !20

278:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

279:                                              ; preds = %273
  %280 = extractvalue { i32, i1 } %276, 0, !nosanitize !20
  store i32 %280, ptr %36, align 8, !tbaa !34
  %281 = load ptr, ptr %43, align 8, !tbaa !29
  store ptr %281, ptr %42, align 8, !tbaa !35
  br label %282

282:                                              ; preds = %279, %114
  %283 = phi i32 [ %280, %279 ], [ %117, %114 ]
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %314, label %285

285:                                              ; preds = %282
  %286 = load i32, ptr %44, align 4, !tbaa !17
  %287 = icmp ne i32 %286, 0
  %288 = icmp ult i32 %283, 4
  %289 = and i1 %288, %287
  br i1 %289, label %314, label %290

290:                                              ; preds = %285
  %291 = icmp ugt i32 %283, 3
  %292 = load ptr, ptr %42, align 8, !tbaa !35
  br i1 %291, label %293, label %310

293:                                              ; preds = %290
  %294 = load i8, ptr %292, align 1, !tbaa !36
  %295 = icmp eq i8 %294, 31
  br i1 %295, label %296, label %310

296:                                              ; preds = %293
  %297 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %298 = load i8, ptr %297, align 1, !tbaa !36
  %299 = icmp eq i8 %298, -117
  br i1 %299, label %300, label %310

300:                                              ; preds = %296
  %301 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %302 = load i8, ptr %301, align 1, !tbaa !36
  %303 = icmp eq i8 %302, 8
  br i1 %303, label %304, label %310

304:                                              ; preds = %300
  %305 = getelementptr inbounds nuw i8, ptr %292, i64 3
  %306 = load i8, ptr %305, align 1, !tbaa !36
  %307 = icmp ult i8 %306, 32
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = tail call i32 @inflateReset(ptr noundef nonnull %42) #14
  store i32 2, ptr %37, align 8, !tbaa !26
  store i32 1, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %50, align 8, !tbaa !32
  br label %462

310:                                              ; preds = %304, %300, %296, %293, %290
  %311 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %311, ptr %33, align 8, !tbaa !22
  %312 = zext i32 %283 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %311, ptr align 1 %292, i64 %312, i1 false)
  %313 = load i32, ptr %36, align 8, !tbaa !34
  store i32 %313, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %36, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !26
  br label %464

314:                                              ; preds = %285, %282, %107
  %315 = load i32, ptr %37, align 8, !tbaa !26
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %474, label %462

317:                                              ; preds = %77
  %318 = load ptr, ptr %40, align 8, !tbaa !30
  %319 = load i32, ptr %38, align 8, !tbaa !27
  %320 = shl i32 %319, 1
  store i32 0, ptr %44, align 4, !tbaa !17
  %321 = tail call ptr @__errno_location() #17
  store i32 0, ptr %321, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %322

322:                                              ; preds = %342, %317
  %323 = phi i32 [ %343, %342 ], [ 0, %317 ]
  %324 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %320, i32 %323), !nosanitize !20
  %325 = extractvalue { i32, i1 } %324, 1, !nosanitize !20
  br i1 %325, label %326, label %327, !prof !21, !nosanitize !20

326:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

327:                                              ; preds = %322
  %328 = extractvalue { i32, i1 } %324, 0, !nosanitize !20
  %329 = tail call i32 @llvm.umin.i32(i32 %328, i32 1073741824)
  %330 = load i32, ptr %45, align 4, !tbaa !46
  %331 = zext i32 %323 to i64
  %332 = getelementptr inbounds nuw i8, ptr %318, i64 %331
  %333 = zext nneg i32 %329 to i64
  %334 = tail call i64 @read(i32 noundef %330, ptr noundef %332, i64 noundef %333) #14
  %335 = trunc i64 %334 to i32
  %336 = icmp slt i32 %335, 1
  br i1 %336, label %345, label %337

337:                                              ; preds = %327
  %338 = load i32, ptr %0, align 4, !tbaa !4
  %339 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %338, i32 %335), !nosanitize !20
  %340 = extractvalue { i32, i1 } %339, 1, !nosanitize !20
  br i1 %340, label %341, label %342, !prof !21, !nosanitize !20

341:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

342:                                              ; preds = %337
  %343 = extractvalue { i32, i1 } %339, 0, !nosanitize !20
  store i32 %343, ptr %0, align 4, !tbaa !4
  %344 = icmp ult i32 %343, %320
  br i1 %344, label %322, label %359, !llvm.loop !47

345:                                              ; preds = %327
  %346 = icmp slt i32 %335, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %345
  %348 = load i32, ptr %321, align 4, !tbaa !4
  %349 = icmp eq i32 %348, 11
  br i1 %349, label %350, label %356

350:                                              ; preds = %347
  store i32 1, ptr %44, align 4, !tbaa !17
  %351 = load i32, ptr %0, align 4, !tbaa !4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %350
  %354 = load i32, ptr %321, align 4, !tbaa !4
  br label %356

355:                                              ; preds = %345
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %359

356:                                              ; preds = %347, %353
  %357 = phi i32 [ %354, %353 ], [ %348, %347 ]
  %358 = tail call ptr @strerror(i32 noundef %357) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %358) #14
  br label %1116

359:                                              ; preds = %342, %355, %350
  %360 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %360, ptr %33, align 8, !tbaa !22
  br label %474

361:                                              ; preds = %77
  %362 = load i32, ptr %38, align 8, !tbaa !27
  %363 = shl i32 %362, 1
  store i32 %363, ptr %39, align 8, !tbaa !48
  %364 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %364, ptr %41, align 8, !tbaa !49
  br label %365

365:                                              ; preds = %444, %361
  %366 = phi i32 [ 0, %361 ], [ %429, %444 ]
  %367 = load i32, ptr %36, align 8, !tbaa !34
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %428

369:                                              ; preds = %365
  %370 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %370, label %448 [
    i32 0, label %371
    i32 -5, label %371
  ]

371:                                              ; preds = %369, %369
  %372 = load i32, ptr %35, align 8, !tbaa !24
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %424

374:                                              ; preds = %371
  %375 = load i32, ptr %38, align 8, !tbaa !27
  %376 = load ptr, ptr %43, align 8, !tbaa !29
  store i32 0, ptr %44, align 4, !tbaa !17
  %377 = tail call ptr @__errno_location() #17
  store i32 0, ptr %377, align 4, !tbaa !4
  br label %378

378:                                              ; preds = %397, %374
  %379 = phi i32 [ 0, %374 ], [ %398, %397 ]
  %380 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %375, i32 %379), !nosanitize !20
  %381 = extractvalue { i32, i1 } %380, 1, !nosanitize !20
  br i1 %381, label %382, label %383, !prof !21, !nosanitize !20

382:                                              ; preds = %378
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

383:                                              ; preds = %378
  %384 = extractvalue { i32, i1 } %380, 0, !nosanitize !20
  %385 = tail call i32 @llvm.umin.i32(i32 %384, i32 1073741824)
  %386 = load i32, ptr %45, align 4, !tbaa !46
  %387 = zext i32 %379 to i64
  %388 = getelementptr inbounds nuw i8, ptr %376, i64 %387
  %389 = zext nneg i32 %385 to i64
  %390 = tail call i64 @read(i32 noundef %386, ptr noundef %388, i64 noundef %389) #14
  %391 = trunc i64 %390 to i32
  %392 = icmp slt i32 %391, 1
  br i1 %392, label %400, label %393

393:                                              ; preds = %383
  %394 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %379, i32 %391), !nosanitize !20
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !20
  br i1 %395, label %396, label %397, !prof !21, !nosanitize !20

396:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

397:                                              ; preds = %393
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !20
  %399 = icmp ult i32 %398, %375
  br i1 %399, label %378, label %414, !llvm.loop !47

400:                                              ; preds = %383
  %401 = icmp slt i32 %391, 0
  br i1 %401, label %402, label %409

402:                                              ; preds = %400
  %403 = load i32, ptr %377, align 4, !tbaa !4
  %404 = icmp eq i32 %403, 11
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  store i32 1, ptr %44, align 4, !tbaa !17
  %406 = icmp eq i32 %379, 0
  br i1 %406, label %407, label %414

407:                                              ; preds = %405
  %408 = load i32, ptr %377, align 4, !tbaa !4
  br label %410

409:                                              ; preds = %400
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %414

410:                                              ; preds = %402, %407
  %411 = phi i32 [ %408, %407 ], [ %403, %402 ]
  %412 = tail call ptr @strerror(i32 noundef %411) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %412) #14
  %413 = load i32, ptr %9, align 8, !tbaa !16
  br label %448

414:                                              ; preds = %397, %409, %405
  %415 = phi i32 [ %379, %405 ], [ %379, %409 ], [ %398, %397 ]
  %416 = load i32, ptr %36, align 8, !tbaa !34
  %417 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %416, i32 %415), !nosanitize !20
  %418 = extractvalue { i32, i1 } %417, 1, !nosanitize !20
  br i1 %418, label %419, label %420, !prof !21, !nosanitize !20

419:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

420:                                              ; preds = %414
  %421 = extractvalue { i32, i1 } %417, 0, !nosanitize !20
  store i32 %421, ptr %36, align 8, !tbaa !34
  %422 = load ptr, ptr %43, align 8, !tbaa !29
  store ptr %422, ptr %42, align 8, !tbaa !35
  %423 = icmp eq i32 %421, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %420, %371
  %425 = load i32, ptr %44, align 4, !tbaa !17
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %448

427:                                              ; preds = %424
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %448

428:                                              ; preds = %420, %365
  %429 = tail call i32 @inflate(ptr noundef nonnull %42, i32 noundef 0) #14
  %430 = load i32, ptr %39, align 8, !tbaa !48
  %431 = icmp ult i32 %430, %363
  br i1 %431, label %432, label %433

432:                                              ; preds = %428
  store i32 0, ptr %46, align 4, !tbaa !33
  br label %433

433:                                              ; preds = %432, %428
  switch i32 %429, label %444 [
    i32 -2, label %434
    i32 2, label %434
    i32 -4, label %435
    i32 -3, label %436
  ]

434:                                              ; preds = %433, %433
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %448

435:                                              ; preds = %433
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %448

436:                                              ; preds = %433
  %437 = load i32, ptr %46, align 4, !tbaa !33
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %440

439:                                              ; preds = %436
  store i32 0, ptr %36, align 8, !tbaa !34
  store i32 1, ptr %35, align 8, !tbaa !24
  store i32 0, ptr %37, align 8, !tbaa !26
  br label %448

440:                                              ; preds = %436
  %441 = load ptr, ptr %47, align 8, !tbaa !50
  %442 = icmp eq ptr %441, null
  %443 = select i1 %442, ptr @.str.6, ptr %441
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %443) #14
  br label %448

444:                                              ; preds = %433
  %445 = icmp ne i32 %430, 0
  %446 = icmp ne i32 %429, 1
  %447 = select i1 %445, i1 %446, i1 false
  br i1 %447, label %365, label %448, !llvm.loop !51

448:                                              ; preds = %444, %369, %440, %439, %435, %434, %427, %424, %410
  %449 = phi i32 [ %413, %410 ], [ %366, %424 ], [ %366, %427 ], [ %429, %434 ], [ -4, %435 ], [ 0, %439 ], [ -3, %440 ], [ %429, %444 ], [ %370, %369 ]
  %450 = load i32, ptr %39, align 8, !tbaa !48
  %451 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %363, i32 %450), !nosanitize !20
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !20
  br i1 %452, label %453, label %454, !prof !21, !nosanitize !20

453:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

454:                                              ; preds = %448
  %455 = extractvalue { i32, i1 } %451, 0, !nosanitize !20
  store i32 %455, ptr %0, align 8, !tbaa !19
  %456 = load ptr, ptr %41, align 8, !tbaa !49
  %457 = zext i32 %455 to i64
  %458 = sub nsw i64 0, %457
  %459 = getelementptr inbounds i8, ptr %456, i64 %458
  store ptr %459, ptr %33, align 8, !tbaa !22
  switch i32 %449, label %1116 [
    i32 1, label %460
    i32 0, label %462
  ]

460:                                              ; preds = %454
  store i32 0, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %37, align 8, !tbaa !26
  br label %462

461:                                              ; preds = %77
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %1116

462:                                              ; preds = %460, %454, %314, %308
  %463 = load i32, ptr %0, align 8, !tbaa !19
  br label %464

464:                                              ; preds = %462, %310
  %465 = phi i32 [ %463, %462 ], [ %313, %310 ]
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %474

467:                                              ; preds = %464
  %468 = load i32, ptr %35, align 8, !tbaa !24
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %467
  %471 = load i32, ptr %36, align 8, !tbaa !34
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %474, label %473

473:                                              ; preds = %470, %467
  br label %77, !llvm.loop !52

474:                                              ; preds = %470, %464, %314, %359
  %475 = load i64, ptr %29, align 8, !tbaa !18
  br label %476

476:                                              ; preds = %474, %62
  %477 = phi i64 [ %475, %474 ], [ %69, %62 ]
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %51, !llvm.loop !53

479:                                              ; preds = %476, %73, %28
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %498

498:                                              ; preds = %1098, %479
  %499 = phi ptr [ %2, %479 ], [ %1102, %1098 ]
  %500 = phi i64 [ 1, %479 ], [ %1101, %1098 ]
  %501 = phi i64 [ 0, %479 ], [ %1100, %1098 ]
  %502 = call i64 @llvm.umin.i64(i64 %500, i64 4294967295)
  %503 = trunc nuw i64 %502 to i32
  %504 = load i32, ptr %0, align 8, !tbaa !19
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %521, label %506

506:                                              ; preds = %498
  %507 = call i32 @llvm.umin.i32(i32 %504, i32 %503)
  %508 = load ptr, ptr %480, align 8, !tbaa !22
  %509 = zext i32 %507 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %499, ptr align 1 %508, i64 %509, i1 false)
  %510 = load ptr, ptr %480, align 8, !tbaa !22
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 %509
  store ptr %511, ptr %480, align 8, !tbaa !22
  %512 = load i32, ptr %0, align 8, !tbaa !19
  %513 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %512, i32 %507), !nosanitize !20
  %514 = extractvalue { i32, i1 } %513, 1, !nosanitize !20
  br i1 %514, label %515, label %516, !prof !21, !nosanitize !20

515:                                              ; preds = %506
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

516:                                              ; preds = %506
  %517 = extractvalue { i32, i1 } %513, 0, !nosanitize !20
  store i32 %517, ptr %0, align 8, !tbaa !19
  %518 = load i32, ptr %9, align 8, !tbaa !16
  %519 = icmp ne i32 %518, 0
  %520 = sext i1 %519 to i32
  br label %1081

521:                                              ; preds = %498
  %522 = load i32, ptr %481, align 8, !tbaa !24
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %521
  %525 = load i32, ptr %482, align 8, !tbaa !25
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %1107, label %527

527:                                              ; preds = %524, %521
  %528 = load i32, ptr %483, align 8, !tbaa !26
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %534, label %530

530:                                              ; preds = %527
  %531 = load i32, ptr %484, align 8, !tbaa !27
  %532 = shl i32 %531, 1
  %533 = icmp ugt i32 %532, %503
  br i1 %533, label %534, label %937

534:                                              ; preds = %530, %527
  br label %535

535:                                              ; preds = %534, %931
  %536 = phi i32 [ %932, %931 ], [ %528, %534 ]
  switch i32 %536, label %919 [
    i32 0, label %537
    i32 1, label %775
    i32 2, label %819
  ]

537:                                              ; preds = %535
  %538 = load i32, ptr %484, align 8, !tbaa !27
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %559

540:                                              ; preds = %537
  %541 = load i32, ptr %495, align 4, !tbaa !28
  %542 = zext i32 %541 to i64
  %543 = call noalias ptr @malloc(i64 noundef %542) #16
  store ptr %543, ptr %488, align 8, !tbaa !29
  %544 = load i32, ptr %495, align 4, !tbaa !28
  %545 = shl i32 %544, 1
  %546 = zext i32 %545 to i64
  %547 = call noalias ptr @malloc(i64 noundef %546) #16
  store ptr %547, ptr %494, align 8, !tbaa !30
  %548 = icmp eq ptr %543, null
  %549 = icmp eq ptr %547, null
  %550 = or i1 %548, %549
  br i1 %550, label %551, label %552

551:                                              ; preds = %540
  call void @free(ptr noundef %547) #14
  call void @free(ptr noundef %543) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %933

552:                                              ; preds = %540
  %553 = load i32, ptr %495, align 4, !tbaa !28
  store i32 %553, ptr %484, align 8, !tbaa !27
  store i32 0, ptr %482, align 8, !tbaa !25
  store ptr null, ptr %487, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %496, i8 0, i64 24, i1 false)
  %554 = call i32 @inflateInit2_(ptr noundef nonnull %487, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %559, label %556

556:                                              ; preds = %552
  %557 = load ptr, ptr %494, align 8, !tbaa !30
  call void @free(ptr noundef %557) #14
  %558 = load ptr, ptr %488, align 8, !tbaa !29
  call void @free(ptr noundef %558) #14
  store i32 0, ptr %484, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %933

559:                                              ; preds = %552, %537
  %560 = load i32, ptr %497, align 8, !tbaa !32
  %561 = icmp eq i32 %560, -1
  br i1 %561, label %565, label %562

562:                                              ; preds = %559
  %563 = load i32, ptr %491, align 4, !tbaa !33
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %570

565:                                              ; preds = %562, %559
  %566 = call i32 @inflateReset(ptr noundef nonnull %487) #14
  store i32 2, ptr %483, align 8, !tbaa !26
  %567 = load i32, ptr %491, align 4, !tbaa !33
  %568 = icmp ne i32 %567, -1
  %569 = zext i1 %568 to i32
  store i32 %569, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %497, align 8, !tbaa !32
  br label %772

570:                                              ; preds = %562
  %571 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %571, label %933 [
    i32 0, label %572
    i32 -5, label %572
  ]

572:                                              ; preds = %570, %570
  %573 = load i32, ptr %481, align 8, !tbaa !24
  %574 = icmp eq i32 %573, 0
  %575 = load i32, ptr %482, align 8, !tbaa !34
  br i1 %574, label %576, label %740

576:                                              ; preds = %572
  %577 = icmp eq i32 %575, 0
  br i1 %577, label %684, label %578

578:                                              ; preds = %576
  %579 = load ptr, ptr %488, align 8, !tbaa !29
  %580 = load ptr, ptr %487, align 8, !tbaa !35
  %581 = icmp eq ptr %580, %579
  br i1 %581, label %684, label %582

582:                                              ; preds = %578
  %583 = ptrtoaddr ptr %580 to i64
  %584 = ptrtoaddr ptr %579 to i64
  %585 = zext i32 %575 to i64
  %586 = icmp ult i32 %575, 4
  %587 = sub i64 %584, %583
  %588 = icmp ult i64 %587, 32
  %589 = or i1 %586, %588
  br i1 %589, label %629, label %590

590:                                              ; preds = %582
  %591 = icmp ult i32 %575, 32
  br i1 %591, label %613, label %592

592:                                              ; preds = %590
  %593 = and i64 %585, 28
  %594 = and i64 %585, 4294967264
  %595 = getelementptr i8, ptr %579, i64 %594
  %596 = getelementptr i8, ptr %580, i64 %594
  %597 = trunc nuw i64 %594 to i32
  %598 = sub i32 %575, %597
  br label %599

599:                                              ; preds = %599, %592
  %600 = phi i64 [ 0, %592 ], [ %607, %599 ]
  %601 = getelementptr i8, ptr %579, i64 %600
  %602 = getelementptr i8, ptr %580, i64 %600
  %603 = getelementptr i8, ptr %602, i64 16
  %604 = load <16 x i8>, ptr %602, align 1, !tbaa !36
  %605 = load <16 x i8>, ptr %603, align 1, !tbaa !36
  %606 = getelementptr i8, ptr %601, i64 16
  store <16 x i8> %604, ptr %601, align 1, !tbaa !36
  store <16 x i8> %605, ptr %606, align 1, !tbaa !36
  %607 = add nuw i64 %600, 32
  %608 = icmp eq i64 %607, %594
  br i1 %608, label %609, label %599, !llvm.loop !74

609:                                              ; preds = %599
  %610 = icmp eq i64 %594, %585
  br i1 %610, label %682, label %611

611:                                              ; preds = %609
  %612 = icmp eq i64 %593, 0
  br i1 %612, label %629, label %613, !prof !41

613:                                              ; preds = %590, %611
  %614 = phi i64 [ %594, %611 ], [ 0, %590 ]
  %615 = and i64 %585, 4294967292
  %616 = getelementptr i8, ptr %579, i64 %615
  %617 = getelementptr i8, ptr %580, i64 %615
  %618 = trunc nuw i64 %615 to i32
  %619 = sub i32 %575, %618
  br label %620

620:                                              ; preds = %620, %613
  %621 = phi i64 [ %614, %613 ], [ %625, %620 ]
  %622 = getelementptr i8, ptr %579, i64 %621
  %623 = getelementptr i8, ptr %580, i64 %621
  %624 = load <4 x i8>, ptr %623, align 1, !tbaa !36
  store <4 x i8> %624, ptr %622, align 1, !tbaa !36
  %625 = add nuw i64 %621, 4
  %626 = icmp eq i64 %625, %615
  br i1 %626, label %627, label %620, !llvm.loop !75

627:                                              ; preds = %620
  %628 = icmp eq i64 %615, %585
  br i1 %628, label %682, label %629

629:                                              ; preds = %582, %611, %627
  %630 = phi ptr [ %579, %582 ], [ %595, %611 ], [ %616, %627 ]
  %631 = phi ptr [ %580, %582 ], [ %596, %611 ], [ %617, %627 ]
  %632 = phi i32 [ %575, %582 ], [ %598, %611 ], [ %619, %627 ]
  %633 = add i32 %632, -1
  %634 = and i32 %632, 7
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %647, label %636

636:                                              ; preds = %629, %636
  %637 = phi ptr [ %643, %636 ], [ %630, %629 ]
  %638 = phi ptr [ %644, %636 ], [ %631, %629 ]
  %639 = phi i32 [ %642, %636 ], [ %632, %629 ]
  %640 = phi i32 [ %645, %636 ], [ 0, %629 ]
  %641 = load i8, ptr %638, align 1, !tbaa !36
  store i8 %641, ptr %637, align 1, !tbaa !36
  %642 = add i32 %639, -1
  %643 = getelementptr inbounds nuw i8, ptr %637, i64 1
  %644 = getelementptr inbounds nuw i8, ptr %638, i64 1
  %645 = add i32 %640, 1
  %646 = icmp eq i32 %645, %634
  br i1 %646, label %647, label %636, !llvm.loop !76

647:                                              ; preds = %636, %629
  %648 = phi ptr [ %630, %629 ], [ %643, %636 ]
  %649 = phi ptr [ %631, %629 ], [ %644, %636 ]
  %650 = phi i32 [ %632, %629 ], [ %642, %636 ]
  %651 = icmp ult i32 %633, 7
  br i1 %651, label %682, label %652

652:                                              ; preds = %647, %652
  %653 = phi ptr [ %679, %652 ], [ %648, %647 ]
  %654 = phi ptr [ %680, %652 ], [ %649, %647 ]
  %655 = phi i32 [ %678, %652 ], [ %650, %647 ]
  %656 = load i8, ptr %654, align 1, !tbaa !36
  store i8 %656, ptr %653, align 1, !tbaa !36
  %657 = getelementptr inbounds nuw i8, ptr %653, i64 1
  %658 = getelementptr inbounds nuw i8, ptr %654, i64 1
  %659 = load i8, ptr %658, align 1, !tbaa !36
  store i8 %659, ptr %657, align 1, !tbaa !36
  %660 = getelementptr inbounds nuw i8, ptr %653, i64 2
  %661 = getelementptr inbounds nuw i8, ptr %654, i64 2
  %662 = load i8, ptr %661, align 1, !tbaa !36
  store i8 %662, ptr %660, align 1, !tbaa !36
  %663 = getelementptr inbounds nuw i8, ptr %653, i64 3
  %664 = getelementptr inbounds nuw i8, ptr %654, i64 3
  %665 = load i8, ptr %664, align 1, !tbaa !36
  store i8 %665, ptr %663, align 1, !tbaa !36
  %666 = getelementptr inbounds nuw i8, ptr %653, i64 4
  %667 = getelementptr inbounds nuw i8, ptr %654, i64 4
  %668 = load i8, ptr %667, align 1, !tbaa !36
  store i8 %668, ptr %666, align 1, !tbaa !36
  %669 = getelementptr inbounds nuw i8, ptr %653, i64 5
  %670 = getelementptr inbounds nuw i8, ptr %654, i64 5
  %671 = load i8, ptr %670, align 1, !tbaa !36
  store i8 %671, ptr %669, align 1, !tbaa !36
  %672 = getelementptr inbounds nuw i8, ptr %653, i64 6
  %673 = getelementptr inbounds nuw i8, ptr %654, i64 6
  %674 = load i8, ptr %673, align 1, !tbaa !36
  store i8 %674, ptr %672, align 1, !tbaa !36
  %675 = getelementptr inbounds nuw i8, ptr %653, i64 7
  %676 = getelementptr inbounds nuw i8, ptr %654, i64 7
  %677 = load i8, ptr %676, align 1, !tbaa !36
  store i8 %677, ptr %675, align 1, !tbaa !36
  %678 = add i32 %655, -8
  %679 = getelementptr inbounds nuw i8, ptr %653, i64 8
  %680 = getelementptr inbounds nuw i8, ptr %654, i64 8
  %681 = icmp eq i32 %678, 0
  br i1 %681, label %682, label %652, !llvm.loop !77

682:                                              ; preds = %647, %652, %627, %609
  %683 = load i32, ptr %482, align 8, !tbaa !34
  br label %684

684:                                              ; preds = %682, %578, %576
  %685 = phi i32 [ %683, %682 ], [ %575, %578 ], [ 0, %576 ]
  %686 = load i32, ptr %484, align 8, !tbaa !27
  %687 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %686, i32 %685), !nosanitize !20
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !20
  br i1 %688, label %689, label %690, !prof !21, !nosanitize !20

689:                                              ; preds = %684
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

690:                                              ; preds = %684
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !20
  %692 = load ptr, ptr %488, align 8, !tbaa !29
  %693 = zext i32 %685 to i64
  %694 = getelementptr inbounds nuw i8, ptr %692, i64 %693
  store i32 0, ptr %489, align 4, !tbaa !17
  %695 = tail call ptr @__errno_location() #17
  store i32 0, ptr %695, align 4, !tbaa !4
  br label %696

696:                                              ; preds = %715, %690
  %697 = phi i32 [ 0, %690 ], [ %716, %715 ]
  %698 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %691, i32 %697), !nosanitize !20
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !20
  br i1 %699, label %700, label %701, !prof !21, !nosanitize !20

700:                                              ; preds = %696
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

701:                                              ; preds = %696
  %702 = extractvalue { i32, i1 } %698, 0, !nosanitize !20
  %703 = call i32 @llvm.umin.i32(i32 %702, i32 1073741824)
  %704 = load i32, ptr %490, align 4, !tbaa !46
  %705 = zext i32 %697 to i64
  %706 = getelementptr inbounds nuw i8, ptr %694, i64 %705
  %707 = zext nneg i32 %703 to i64
  %708 = call i64 @read(i32 noundef %704, ptr noundef %706, i64 noundef %707) #14
  %709 = trunc i64 %708 to i32
  %710 = icmp slt i32 %709, 1
  br i1 %710, label %718, label %711

711:                                              ; preds = %701
  %712 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %697, i32 %709), !nosanitize !20
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !20
  br i1 %713, label %714, label %715, !prof !21, !nosanitize !20

714:                                              ; preds = %711
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

715:                                              ; preds = %711
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !20
  %717 = icmp ult i32 %716, %691
  br i1 %717, label %696, label %731, !llvm.loop !47

718:                                              ; preds = %701
  %719 = icmp slt i32 %709, 0
  br i1 %719, label %720, label %727

720:                                              ; preds = %718
  %721 = load i32, ptr %695, align 4, !tbaa !4
  %722 = icmp eq i32 %721, 11
  br i1 %722, label %723, label %728

723:                                              ; preds = %720
  store i32 1, ptr %489, align 4, !tbaa !17
  %724 = icmp eq i32 %697, 0
  br i1 %724, label %725, label %731

725:                                              ; preds = %723
  %726 = load i32, ptr %695, align 4, !tbaa !4
  br label %728

727:                                              ; preds = %718
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %731

728:                                              ; preds = %720, %725
  %729 = phi i32 [ %726, %725 ], [ %721, %720 ]
  %730 = call ptr @strerror(i32 noundef %729) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %730) #14
  br label %933

731:                                              ; preds = %715, %727, %723
  %732 = phi i32 [ %697, %723 ], [ %697, %727 ], [ %716, %715 ]
  %733 = load i32, ptr %482, align 8, !tbaa !34
  %734 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %733, i32 %732), !nosanitize !20
  %735 = extractvalue { i32, i1 } %734, 1, !nosanitize !20
  br i1 %735, label %736, label %737, !prof !21, !nosanitize !20

736:                                              ; preds = %731
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

737:                                              ; preds = %731
  %738 = extractvalue { i32, i1 } %734, 0, !nosanitize !20
  store i32 %738, ptr %482, align 8, !tbaa !34
  %739 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %739, ptr %487, align 8, !tbaa !35
  br label %740

740:                                              ; preds = %737, %572
  %741 = phi i32 [ %738, %737 ], [ %575, %572 ]
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %772, label %743

743:                                              ; preds = %740
  %744 = load i32, ptr %489, align 4, !tbaa !17
  %745 = icmp ne i32 %744, 0
  %746 = icmp ult i32 %741, 4
  %747 = and i1 %746, %745
  br i1 %747, label %772, label %748

748:                                              ; preds = %743
  %749 = icmp ugt i32 %741, 3
  %750 = load ptr, ptr %487, align 8, !tbaa !35
  br i1 %749, label %751, label %768

751:                                              ; preds = %748
  %752 = load i8, ptr %750, align 1, !tbaa !36
  %753 = icmp eq i8 %752, 31
  br i1 %753, label %754, label %768

754:                                              ; preds = %751
  %755 = getelementptr inbounds nuw i8, ptr %750, i64 1
  %756 = load i8, ptr %755, align 1, !tbaa !36
  %757 = icmp eq i8 %756, -117
  br i1 %757, label %758, label %768

758:                                              ; preds = %754
  %759 = getelementptr inbounds nuw i8, ptr %750, i64 2
  %760 = load i8, ptr %759, align 1, !tbaa !36
  %761 = icmp eq i8 %760, 8
  br i1 %761, label %762, label %768

762:                                              ; preds = %758
  %763 = getelementptr inbounds nuw i8, ptr %750, i64 3
  %764 = load i8, ptr %763, align 1, !tbaa !36
  %765 = icmp ult i8 %764, 32
  br i1 %765, label %766, label %768

766:                                              ; preds = %762
  %767 = call i32 @inflateReset(ptr noundef nonnull %487) #14
  store i32 2, ptr %483, align 8, !tbaa !26
  store i32 1, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %497, align 8, !tbaa !32
  br label %920

768:                                              ; preds = %762, %758, %754, %751, %748
  %769 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %769, ptr %480, align 8, !tbaa !22
  %770 = zext i32 %741 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %769, ptr align 1 %750, i64 %770, i1 false)
  %771 = load i32, ptr %482, align 8, !tbaa !34
  store i32 %771, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %483, align 8, !tbaa !26
  br label %922

772:                                              ; preds = %743, %740, %565
  %773 = load i32, ptr %483, align 8, !tbaa !26
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %1098, label %920

775:                                              ; preds = %535
  %776 = load ptr, ptr %494, align 8, !tbaa !30
  %777 = load i32, ptr %484, align 8, !tbaa !27
  %778 = shl i32 %777, 1
  store i32 0, ptr %489, align 4, !tbaa !17
  %779 = tail call ptr @__errno_location() #17
  store i32 0, ptr %779, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %780

780:                                              ; preds = %800, %775
  %781 = phi i32 [ %801, %800 ], [ 0, %775 ]
  %782 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %778, i32 %781), !nosanitize !20
  %783 = extractvalue { i32, i1 } %782, 1, !nosanitize !20
  br i1 %783, label %784, label %785, !prof !21, !nosanitize !20

784:                                              ; preds = %780
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

785:                                              ; preds = %780
  %786 = extractvalue { i32, i1 } %782, 0, !nosanitize !20
  %787 = call i32 @llvm.umin.i32(i32 %786, i32 1073741824)
  %788 = load i32, ptr %490, align 4, !tbaa !46
  %789 = zext i32 %781 to i64
  %790 = getelementptr inbounds nuw i8, ptr %776, i64 %789
  %791 = zext nneg i32 %787 to i64
  %792 = call i64 @read(i32 noundef %788, ptr noundef %790, i64 noundef %791) #14
  %793 = trunc i64 %792 to i32
  %794 = icmp slt i32 %793, 1
  br i1 %794, label %803, label %795

795:                                              ; preds = %785
  %796 = load i32, ptr %0, align 4, !tbaa !4
  %797 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %796, i32 %793), !nosanitize !20
  %798 = extractvalue { i32, i1 } %797, 1, !nosanitize !20
  br i1 %798, label %799, label %800, !prof !21, !nosanitize !20

799:                                              ; preds = %795
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

800:                                              ; preds = %795
  %801 = extractvalue { i32, i1 } %797, 0, !nosanitize !20
  store i32 %801, ptr %0, align 4, !tbaa !4
  %802 = icmp ult i32 %801, %778
  br i1 %802, label %780, label %817, !llvm.loop !47

803:                                              ; preds = %785
  %804 = icmp slt i32 %793, 0
  br i1 %804, label %805, label %813

805:                                              ; preds = %803
  %806 = load i32, ptr %779, align 4, !tbaa !4
  %807 = icmp eq i32 %806, 11
  br i1 %807, label %808, label %814

808:                                              ; preds = %805
  store i32 1, ptr %489, align 4, !tbaa !17
  %809 = load i32, ptr %0, align 4, !tbaa !4
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %817

811:                                              ; preds = %808
  %812 = load i32, ptr %779, align 4, !tbaa !4
  br label %814

813:                                              ; preds = %803
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %817

814:                                              ; preds = %811, %805
  %815 = phi i32 [ %812, %811 ], [ %806, %805 ]
  %816 = call ptr @strerror(i32 noundef %815) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %816) #14
  br label %933

817:                                              ; preds = %800, %813, %808
  %818 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %818, ptr %480, align 8, !tbaa !22
  br label %1098

819:                                              ; preds = %535
  %820 = load i32, ptr %484, align 8, !tbaa !27
  %821 = shl i32 %820, 1
  store i32 %821, ptr %485, align 8, !tbaa !48
  %822 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %822, ptr %486, align 8, !tbaa !49
  br label %823

823:                                              ; preds = %902, %819
  %824 = phi i32 [ 0, %819 ], [ %887, %902 ]
  %825 = load i32, ptr %482, align 8, !tbaa !34
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %886

827:                                              ; preds = %823
  %828 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %828, label %906 [
    i32 0, label %829
    i32 -5, label %829
  ]

829:                                              ; preds = %827, %827
  %830 = load i32, ptr %481, align 8, !tbaa !24
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %832, label %882

832:                                              ; preds = %829
  %833 = load i32, ptr %484, align 8, !tbaa !27
  %834 = load ptr, ptr %488, align 8, !tbaa !29
  store i32 0, ptr %489, align 4, !tbaa !17
  %835 = tail call ptr @__errno_location() #17
  store i32 0, ptr %835, align 4, !tbaa !4
  br label %836

836:                                              ; preds = %855, %832
  %837 = phi i32 [ 0, %832 ], [ %856, %855 ]
  %838 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %833, i32 %837), !nosanitize !20
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !20
  br i1 %839, label %840, label %841, !prof !21, !nosanitize !20

840:                                              ; preds = %836
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

841:                                              ; preds = %836
  %842 = extractvalue { i32, i1 } %838, 0, !nosanitize !20
  %843 = call i32 @llvm.umin.i32(i32 %842, i32 1073741824)
  %844 = load i32, ptr %490, align 4, !tbaa !46
  %845 = zext i32 %837 to i64
  %846 = getelementptr inbounds nuw i8, ptr %834, i64 %845
  %847 = zext nneg i32 %843 to i64
  %848 = call i64 @read(i32 noundef %844, ptr noundef %846, i64 noundef %847) #14
  %849 = trunc i64 %848 to i32
  %850 = icmp slt i32 %849, 1
  br i1 %850, label %858, label %851

851:                                              ; preds = %841
  %852 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %837, i32 %849), !nosanitize !20
  %853 = extractvalue { i32, i1 } %852, 1, !nosanitize !20
  br i1 %853, label %854, label %855, !prof !21, !nosanitize !20

854:                                              ; preds = %851
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

855:                                              ; preds = %851
  %856 = extractvalue { i32, i1 } %852, 0, !nosanitize !20
  %857 = icmp ult i32 %856, %833
  br i1 %857, label %836, label %872, !llvm.loop !47

858:                                              ; preds = %841
  %859 = icmp slt i32 %849, 0
  br i1 %859, label %860, label %867

860:                                              ; preds = %858
  %861 = load i32, ptr %835, align 4, !tbaa !4
  %862 = icmp eq i32 %861, 11
  br i1 %862, label %863, label %868

863:                                              ; preds = %860
  store i32 1, ptr %489, align 4, !tbaa !17
  %864 = icmp eq i32 %837, 0
  br i1 %864, label %865, label %872

865:                                              ; preds = %863
  %866 = load i32, ptr %835, align 4, !tbaa !4
  br label %868

867:                                              ; preds = %858
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %872

868:                                              ; preds = %860, %865
  %869 = phi i32 [ %866, %865 ], [ %861, %860 ]
  %870 = call ptr @strerror(i32 noundef %869) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %870) #14
  %871 = load i32, ptr %9, align 8, !tbaa !16
  br label %906

872:                                              ; preds = %855, %867, %863
  %873 = phi i32 [ %837, %863 ], [ %837, %867 ], [ %856, %855 ]
  %874 = load i32, ptr %482, align 8, !tbaa !34
  %875 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %874, i32 %873), !nosanitize !20
  %876 = extractvalue { i32, i1 } %875, 1, !nosanitize !20
  br i1 %876, label %877, label %878, !prof !21, !nosanitize !20

877:                                              ; preds = %872
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

878:                                              ; preds = %872
  %879 = extractvalue { i32, i1 } %875, 0, !nosanitize !20
  store i32 %879, ptr %482, align 8, !tbaa !34
  %880 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %880, ptr %487, align 8, !tbaa !35
  %881 = icmp eq i32 %879, 0
  br i1 %881, label %882, label %886

882:                                              ; preds = %878, %829
  %883 = load i32, ptr %489, align 4, !tbaa !17
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %906

885:                                              ; preds = %882
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %906

886:                                              ; preds = %878, %823
  %887 = call i32 @inflate(ptr noundef nonnull %487, i32 noundef 0) #14
  %888 = load i32, ptr %485, align 8, !tbaa !48
  %889 = icmp ult i32 %888, %821
  br i1 %889, label %890, label %891

890:                                              ; preds = %886
  store i32 0, ptr %491, align 4, !tbaa !33
  br label %891

891:                                              ; preds = %890, %886
  switch i32 %887, label %902 [
    i32 -2, label %892
    i32 2, label %892
    i32 -4, label %893
    i32 -3, label %894
  ]

892:                                              ; preds = %891, %891
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %906

893:                                              ; preds = %891
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %906

894:                                              ; preds = %891
  %895 = load i32, ptr %491, align 4, !tbaa !33
  %896 = icmp eq i32 %895, 1
  br i1 %896, label %897, label %898

897:                                              ; preds = %894
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %481, align 8, !tbaa !24
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %906

898:                                              ; preds = %894
  %899 = load ptr, ptr %492, align 8, !tbaa !50
  %900 = icmp eq ptr %899, null
  %901 = select i1 %900, ptr @.str.6, ptr %899
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %901) #14
  br label %906

902:                                              ; preds = %891
  %903 = icmp ne i32 %888, 0
  %904 = icmp ne i32 %887, 1
  %905 = select i1 %903, i1 %904, i1 false
  br i1 %905, label %823, label %906, !llvm.loop !51

906:                                              ; preds = %902, %827, %898, %897, %893, %892, %885, %882, %868
  %907 = phi i32 [ %871, %868 ], [ %824, %882 ], [ %824, %885 ], [ %887, %892 ], [ -4, %893 ], [ 0, %897 ], [ -3, %898 ], [ %828, %827 ], [ %887, %902 ]
  %908 = load i32, ptr %485, align 8, !tbaa !48
  %909 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %821, i32 %908), !nosanitize !20
  %910 = extractvalue { i32, i1 } %909, 1, !nosanitize !20
  br i1 %910, label %911, label %912, !prof !21, !nosanitize !20

911:                                              ; preds = %906
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

912:                                              ; preds = %906
  %913 = extractvalue { i32, i1 } %909, 0, !nosanitize !20
  store i32 %913, ptr %0, align 8, !tbaa !19
  %914 = load ptr, ptr %486, align 8, !tbaa !49
  %915 = zext i32 %913 to i64
  %916 = sub nsw i64 0, %915
  %917 = getelementptr inbounds i8, ptr %914, i64 %916
  store ptr %917, ptr %480, align 8, !tbaa !22
  switch i32 %907, label %933 [
    i32 1, label %918
    i32 0, label %920
  ]

918:                                              ; preds = %912
  store i32 0, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %920

919:                                              ; preds = %535
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %933

920:                                              ; preds = %918, %912, %772, %766
  %921 = load i32, ptr %0, align 8, !tbaa !19
  br label %922

922:                                              ; preds = %920, %768
  %923 = phi i32 [ %921, %920 ], [ %771, %768 ]
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %1098

925:                                              ; preds = %922
  %926 = load i32, ptr %481, align 8, !tbaa !24
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %931, label %928

928:                                              ; preds = %925
  %929 = load i32, ptr %482, align 8, !tbaa !34
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %1098, label %931

931:                                              ; preds = %928, %925
  %932 = load i32, ptr %483, align 8, !tbaa !26
  br label %535, !llvm.loop !52

933:                                              ; preds = %912, %570, %919, %814, %728, %556, %551
  %934 = load i32, ptr %0, align 8, !tbaa !19
  %935 = icmp eq i32 %934, 0
  %936 = sext i1 %935 to i32
  br label %1098

937:                                              ; preds = %530
  %938 = icmp eq i32 %528, 1
  br i1 %938, label %939, label %976

939:                                              ; preds = %937
  store i32 0, ptr %489, align 4, !tbaa !17
  %940 = tail call ptr @__errno_location() #17
  store i32 0, ptr %940, align 4, !tbaa !4
  br label %941

941:                                              ; preds = %960, %939
  %942 = phi i32 [ 0, %939 ], [ %961, %960 ]
  %943 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %942), !nosanitize !20
  %944 = extractvalue { i32, i1 } %943, 1, !nosanitize !20
  br i1 %944, label %945, label %946, !prof !21, !nosanitize !20

945:                                              ; preds = %941
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

946:                                              ; preds = %941
  %947 = extractvalue { i32, i1 } %943, 0, !nosanitize !20
  %948 = call i32 @llvm.umin.i32(i32 %947, i32 1073741824)
  %949 = load i32, ptr %490, align 4, !tbaa !46
  %950 = zext i32 %942 to i64
  %951 = getelementptr inbounds nuw i8, ptr %499, i64 %950
  %952 = zext nneg i32 %948 to i64
  %953 = call i64 @read(i32 noundef %949, ptr noundef %951, i64 noundef %952) #14
  %954 = trunc i64 %953 to i32
  %955 = icmp slt i32 %954, 1
  br i1 %955, label %963, label %956

956:                                              ; preds = %946
  %957 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %942, i32 %954), !nosanitize !20
  %958 = extractvalue { i32, i1 } %957, 1, !nosanitize !20
  br i1 %958, label %959, label %960, !prof !21, !nosanitize !20

959:                                              ; preds = %956
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

960:                                              ; preds = %956
  %961 = extractvalue { i32, i1 } %957, 0, !nosanitize !20
  %962 = icmp ult i32 %961, %503
  br i1 %962, label %941, label %1079, !llvm.loop !47

963:                                              ; preds = %946
  %964 = icmp slt i32 %954, 0
  br i1 %964, label %965, label %975

965:                                              ; preds = %963
  %966 = load i32, ptr %940, align 4, !tbaa !4
  %967 = icmp eq i32 %966, 11
  br i1 %967, label %968, label %972

968:                                              ; preds = %965
  store i32 1, ptr %489, align 4, !tbaa !17
  %969 = icmp eq i32 %942, 0
  br i1 %969, label %970, label %1081

970:                                              ; preds = %968
  %971 = load i32, ptr %940, align 4, !tbaa !4
  br label %972

972:                                              ; preds = %970, %965
  %973 = phi i32 [ %971, %970 ], [ %966, %965 ]
  %974 = call ptr @strerror(i32 noundef %973) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %974) #14
  br label %1081

975:                                              ; preds = %963
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %1081

976:                                              ; preds = %937
  store i32 %503, ptr %485, align 8, !tbaa !58
  store ptr %499, ptr %486, align 8, !tbaa !59
  br label %977

977:                                              ; preds = %1056, %976
  %978 = phi i32 [ 0, %976 ], [ %1041, %1056 ]
  %979 = load i32, ptr %482, align 8, !tbaa !34
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %1040

981:                                              ; preds = %977
  %982 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %982, label %1060 [
    i32 0, label %983
    i32 -5, label %983
  ]

983:                                              ; preds = %981, %981
  %984 = load i32, ptr %481, align 8, !tbaa !24
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %1036

986:                                              ; preds = %983
  %987 = load i32, ptr %484, align 8, !tbaa !27
  %988 = load ptr, ptr %488, align 8, !tbaa !29
  store i32 0, ptr %489, align 4, !tbaa !17
  %989 = tail call ptr @__errno_location() #17
  store i32 0, ptr %989, align 4, !tbaa !4
  br label %990

990:                                              ; preds = %1009, %986
  %991 = phi i32 [ 0, %986 ], [ %1010, %1009 ]
  %992 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %987, i32 %991), !nosanitize !20
  %993 = extractvalue { i32, i1 } %992, 1, !nosanitize !20
  br i1 %993, label %994, label %995, !prof !21, !nosanitize !20

994:                                              ; preds = %990
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

995:                                              ; preds = %990
  %996 = extractvalue { i32, i1 } %992, 0, !nosanitize !20
  %997 = call i32 @llvm.umin.i32(i32 %996, i32 1073741824)
  %998 = load i32, ptr %490, align 4, !tbaa !46
  %999 = zext i32 %991 to i64
  %1000 = getelementptr inbounds nuw i8, ptr %988, i64 %999
  %1001 = zext nneg i32 %997 to i64
  %1002 = call i64 @read(i32 noundef %998, ptr noundef %1000, i64 noundef %1001) #14
  %1003 = trunc i64 %1002 to i32
  %1004 = icmp slt i32 %1003, 1
  br i1 %1004, label %1012, label %1005

1005:                                             ; preds = %995
  %1006 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %991, i32 %1003), !nosanitize !20
  %1007 = extractvalue { i32, i1 } %1006, 1, !nosanitize !20
  br i1 %1007, label %1008, label %1009, !prof !21, !nosanitize !20

1008:                                             ; preds = %1005
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1009:                                             ; preds = %1005
  %1010 = extractvalue { i32, i1 } %1006, 0, !nosanitize !20
  %1011 = icmp ult i32 %1010, %987
  br i1 %1011, label %990, label %1026, !llvm.loop !47

1012:                                             ; preds = %995
  %1013 = icmp slt i32 %1003, 0
  br i1 %1013, label %1014, label %1021

1014:                                             ; preds = %1012
  %1015 = load i32, ptr %989, align 4, !tbaa !4
  %1016 = icmp eq i32 %1015, 11
  br i1 %1016, label %1017, label %1022

1017:                                             ; preds = %1014
  store i32 1, ptr %489, align 4, !tbaa !17
  %1018 = icmp eq i32 %991, 0
  br i1 %1018, label %1019, label %1026

1019:                                             ; preds = %1017
  %1020 = load i32, ptr %989, align 4, !tbaa !4
  br label %1022

1021:                                             ; preds = %1012
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %1026

1022:                                             ; preds = %1014, %1019
  %1023 = phi i32 [ %1020, %1019 ], [ %1015, %1014 ]
  %1024 = call ptr @strerror(i32 noundef %1023) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1024) #14
  %1025 = load i32, ptr %9, align 8, !tbaa !16
  br label %1060

1026:                                             ; preds = %1009, %1021, %1017
  %1027 = phi i32 [ %991, %1017 ], [ %991, %1021 ], [ %1010, %1009 ]
  %1028 = load i32, ptr %482, align 8, !tbaa !34
  %1029 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1028, i32 %1027), !nosanitize !20
  %1030 = extractvalue { i32, i1 } %1029, 1, !nosanitize !20
  br i1 %1030, label %1031, label %1032, !prof !21, !nosanitize !20

1031:                                             ; preds = %1026
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1032:                                             ; preds = %1026
  %1033 = extractvalue { i32, i1 } %1029, 0, !nosanitize !20
  store i32 %1033, ptr %482, align 8, !tbaa !34
  %1034 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %1034, ptr %487, align 8, !tbaa !35
  %1035 = icmp eq i32 %1033, 0
  br i1 %1035, label %1036, label %1040

1036:                                             ; preds = %1032, %983
  %1037 = load i32, ptr %489, align 4, !tbaa !17
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1060

1039:                                             ; preds = %1036
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %1060

1040:                                             ; preds = %1032, %977
  %1041 = call i32 @inflate(ptr noundef nonnull %487, i32 noundef 0) #14
  %1042 = load i32, ptr %485, align 8, !tbaa !48
  %1043 = icmp ult i32 %1042, %503
  br i1 %1043, label %1044, label %1045

1044:                                             ; preds = %1040
  store i32 0, ptr %491, align 4, !tbaa !33
  br label %1045

1045:                                             ; preds = %1044, %1040
  switch i32 %1041, label %1056 [
    i32 -2, label %1046
    i32 2, label %1046
    i32 -4, label %1047
    i32 -3, label %1048
  ]

1046:                                             ; preds = %1045, %1045
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %1060

1047:                                             ; preds = %1045
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1060

1048:                                             ; preds = %1045
  %1049 = load i32, ptr %491, align 4, !tbaa !33
  %1050 = icmp eq i32 %1049, 1
  br i1 %1050, label %1051, label %1052

1051:                                             ; preds = %1048
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %481, align 8, !tbaa !24
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %1060

1052:                                             ; preds = %1048
  %1053 = load ptr, ptr %492, align 8, !tbaa !50
  %1054 = icmp eq ptr %1053, null
  %1055 = select i1 %1054, ptr @.str.6, ptr %1053
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1055) #14
  br label %1060

1056:                                             ; preds = %1045
  %1057 = icmp ne i32 %1042, 0
  %1058 = icmp ne i32 %1041, 1
  %1059 = select i1 %1057, i1 %1058, i1 false
  br i1 %1059, label %977, label %1060, !llvm.loop !51

1060:                                             ; preds = %1056, %981, %1052, %1051, %1047, %1046, %1039, %1036, %1022
  %1061 = phi i32 [ %1025, %1022 ], [ %978, %1036 ], [ %978, %1039 ], [ %1041, %1046 ], [ -4, %1047 ], [ 0, %1051 ], [ -3, %1052 ], [ %1041, %1056 ], [ %982, %981 ]
  %1062 = load i32, ptr %485, align 8, !tbaa !48
  %1063 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %1062), !nosanitize !20
  %1064 = extractvalue { i32, i1 } %1063, 1, !nosanitize !20
  br i1 %1064, label %1065, label %1066, !prof !21, !nosanitize !20

1065:                                             ; preds = %1060
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

1066:                                             ; preds = %1060
  %1067 = extractvalue { i32, i1 } %1063, 0, !nosanitize !20
  %1068 = load ptr, ptr %486, align 8, !tbaa !49
  %1069 = zext i32 %1067 to i64
  %1070 = sub nsw i64 0, %1069
  %1071 = getelementptr inbounds i8, ptr %1068, i64 %1070
  store ptr %1071, ptr %480, align 8, !tbaa !22
  %1072 = icmp eq i32 %1061, 1
  br i1 %1072, label %1073, label %1074

1073:                                             ; preds = %1066
  store i32 0, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %1077

1074:                                             ; preds = %1066
  %1075 = icmp ne i32 %1061, 0
  %1076 = sext i1 %1075 to i32
  br label %1077

1077:                                             ; preds = %1074, %1073
  %1078 = phi i32 [ 0, %1073 ], [ %1076, %1074 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1081

1079:                                             ; preds = %960
  %1080 = zext i32 %961 to i64
  br label %1081

1081:                                             ; preds = %1079, %1077, %975, %972, %968, %516
  %1082 = phi i64 [ %1080, %1079 ], [ %950, %975 ], [ %950, %972 ], [ %950, %968 ], [ %509, %516 ], [ %1069, %1077 ]
  %1083 = phi i32 [ 0, %1079 ], [ 0, %975 ], [ -1, %972 ], [ 0, %968 ], [ %520, %516 ], [ %1078, %1077 ]
  %1084 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %500, i64 %1082), !nosanitize !20
  %1085 = extractvalue { i64, i1 } %1084, 0, !nosanitize !20
  %1086 = extractvalue { i64, i1 } %1084, 1, !nosanitize !20
  br i1 %1086, label %1087, label %1088, !prof !21, !nosanitize !20

1087:                                             ; preds = %1081
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

1088:                                             ; preds = %1081
  %1089 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %501, i64 %1082), !nosanitize !20
  %1090 = extractvalue { i64, i1 } %1089, 1, !nosanitize !20
  br i1 %1090, label %1091, label %1092, !prof !21, !nosanitize !20

1091:                                             ; preds = %1088
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1092:                                             ; preds = %1088
  %1093 = extractvalue { i64, i1 } %1089, 0, !nosanitize !20
  %1094 = getelementptr inbounds nuw i8, ptr %499, i64 %1082
  %1095 = load i64, ptr %493, align 8, !tbaa !23
  %1096 = add nsw i64 %1095, %1082
  store i64 %1096, ptr %493, align 8, !tbaa !23
  %1097 = icmp eq i64 %1085, 0
  br i1 %1097, label %1110, label %1098

1098:                                             ; preds = %928, %922, %772, %817, %933, %1092
  %1099 = phi i32 [ %1083, %1092 ], [ %936, %933 ], [ 0, %817 ], [ 0, %772 ], [ 0, %922 ], [ 0, %928 ]
  %1100 = phi i64 [ %1093, %1092 ], [ %501, %933 ], [ %501, %817 ], [ %501, %772 ], [ %501, %922 ], [ %501, %928 ]
  %1101 = phi i64 [ %1085, %1092 ], [ %500, %933 ], [ %500, %817 ], [ %500, %772 ], [ %500, %922 ], [ %500, %928 ]
  %1102 = phi ptr [ %1094, %1092 ], [ %499, %933 ], [ %499, %817 ], [ %499, %772 ], [ %499, %922 ], [ %499, %928 ]
  %1103 = icmp eq i32 %1099, 0
  br i1 %1103, label %498, label %1104, !llvm.loop !60

1104:                                             ; preds = %1098
  %1105 = load i32, ptr %481, align 8, !tbaa !24
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1110, label %1107

1107:                                             ; preds = %524, %1104
  %1108 = phi i64 [ %1100, %1104 ], [ %501, %524 ]
  %1109 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1109, align 4, !tbaa !61
  br label %1110

1110:                                             ; preds = %1092, %1104, %1107
  %1111 = phi i64 [ %1100, %1104 ], [ %1108, %1107 ], [ %1093, %1092 ]
  %1112 = freeze i64 %1111
  %1113 = icmp eq i64 %1112, 0
  %1114 = load i8, ptr %2, align 1
  %1115 = zext i8 %1114 to i32
  br i1 %1113, label %1116, label %1117

1116:                                             ; preds = %454, %112, %270, %356, %461, %98, %93, %1110
  br label %1117

1117:                                             ; preds = %1116, %1110, %11, %4, %1, %18
  %1118 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %27, %18 ], [ -1, %11 ], [ -1, %1116 ], [ %1115, %1110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %1118
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1117, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1117

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
  br i1 %14, label %1117, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %16 = load i32, ptr %0, align 8, !tbaa !19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = add i32 %16, -1
  store i32 %19, ptr %0, align 8, !tbaa !19
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !23
  %22 = add nsw i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !23
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 1
  store ptr %25, ptr %23, align 8, !tbaa !22
  %26 = load i8, ptr %24, align 1, !tbaa !36
  %27 = zext i8 %26 to i32
  br label %1117

28:                                               ; preds = %15
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %30 = load i64, ptr %29, align 8, !tbaa !18
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %479, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %51

51:                                               ; preds = %476, %32
  %52 = phi i64 [ %477, %476 ], [ %30, %32 ]
  %53 = load i32, ptr %0, align 8, !tbaa !19
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %51
  %56 = zext i32 %53 to i64
  %57 = tail call i64 @llvm.smin.i64(i64 %52, i64 %56)
  %58 = trunc i64 %57 to i32
  %59 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %53, i32 %58), !nosanitize !20
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !20
  br i1 %60, label %61, label %62, !prof !21, !nosanitize !20

61:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

62:                                               ; preds = %55
  %63 = extractvalue { i32, i1 } %59, 0, !nosanitize !20
  store i32 %63, ptr %0, align 8, !tbaa !19
  %64 = load ptr, ptr %33, align 8, !tbaa !22
  %65 = and i64 %57, 4294967295
  %66 = getelementptr inbounds nuw i8, ptr %64, i64 %65
  store ptr %66, ptr %33, align 8, !tbaa !22
  %67 = load i64, ptr %34, align 8, !tbaa !23
  %68 = add nsw i64 %67, %65
  store i64 %68, ptr %34, align 8, !tbaa !23
  %69 = sub nsw i64 %52, %65
  store i64 %69, ptr %29, align 8, !tbaa !18
  br label %476

70:                                               ; preds = %51
  %71 = load i32, ptr %35, align 8, !tbaa !24
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %36, align 8, !tbaa !25
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %479, label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %473, %76
  %78 = load i32, ptr %37, align 8, !tbaa !26
  switch i32 %78, label %461 [
    i32 0, label %79
    i32 1, label %317
    i32 2, label %361
  ]

79:                                               ; preds = %77
  %80 = load i32, ptr %38, align 8, !tbaa !27
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load i32, ptr %48, align 4, !tbaa !28
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #16
  store ptr %85, ptr %43, align 8, !tbaa !29
  %86 = load i32, ptr %48, align 4, !tbaa !28
  %87 = shl i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = tail call noalias ptr @malloc(i64 noundef %88) #16
  store ptr %89, ptr %40, align 8, !tbaa !30
  %90 = icmp eq ptr %85, null
  %91 = icmp eq ptr %89, null
  %92 = or i1 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  tail call void @free(ptr noundef %89) #14
  tail call void @free(ptr noundef %85) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1116

94:                                               ; preds = %82
  %95 = load i32, ptr %48, align 4, !tbaa !28
  store i32 %95, ptr %38, align 8, !tbaa !27
  store i32 0, ptr %36, align 8, !tbaa !25
  store ptr null, ptr %42, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %96 = tail call i32 @inflateInit2_(ptr noundef nonnull %42, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %40, align 8, !tbaa !30
  tail call void @free(ptr noundef %99) #14
  %100 = load ptr, ptr %43, align 8, !tbaa !29
  tail call void @free(ptr noundef %100) #14
  store i32 0, ptr %38, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1116

101:                                              ; preds = %94, %79
  %102 = load i32, ptr %50, align 8, !tbaa !32
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %46, align 4, !tbaa !33
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104, %101
  %108 = tail call i32 @inflateReset(ptr noundef nonnull %42) #14
  store i32 2, ptr %37, align 8, !tbaa !26
  %109 = load i32, ptr %46, align 4, !tbaa !33
  %110 = icmp ne i32 %109, -1
  %111 = zext i1 %110 to i32
  store i32 %111, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %50, align 8, !tbaa !32
  br label %314

112:                                              ; preds = %104
  %113 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %113, label %1116 [
    i32 0, label %114
    i32 -5, label %114
  ]

114:                                              ; preds = %112, %112
  %115 = load i32, ptr %35, align 8, !tbaa !24
  %116 = icmp eq i32 %115, 0
  %117 = load i32, ptr %36, align 8, !tbaa !34
  br i1 %116, label %118, label %282

118:                                              ; preds = %114
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %226, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr %43, align 8, !tbaa !29
  %122 = load ptr, ptr %42, align 8, !tbaa !35
  %123 = icmp eq ptr %122, %121
  br i1 %123, label %226, label %124

124:                                              ; preds = %120
  %125 = ptrtoaddr ptr %122 to i64
  %126 = ptrtoaddr ptr %121 to i64
  %127 = zext i32 %117 to i64
  %128 = icmp ult i32 %117, 4
  %129 = sub i64 %126, %125
  %130 = icmp ult i64 %129, 32
  %131 = or i1 %128, %130
  br i1 %131, label %171, label %132

132:                                              ; preds = %124
  %133 = icmp ult i32 %117, 32
  br i1 %133, label %155, label %134

134:                                              ; preds = %132
  %135 = and i64 %127, 28
  %136 = and i64 %127, 4294967264
  %137 = getelementptr i8, ptr %121, i64 %136
  %138 = getelementptr i8, ptr %122, i64 %136
  %139 = trunc nuw i64 %136 to i32
  %140 = sub i32 %117, %139
  br label %141

141:                                              ; preds = %141, %134
  %142 = phi i64 [ 0, %134 ], [ %149, %141 ]
  %143 = getelementptr i8, ptr %121, i64 %142
  %144 = getelementptr i8, ptr %122, i64 %142
  %145 = getelementptr i8, ptr %144, i64 16
  %146 = load <16 x i8>, ptr %144, align 1, !tbaa !36
  %147 = load <16 x i8>, ptr %145, align 1, !tbaa !36
  %148 = getelementptr i8, ptr %143, i64 16
  store <16 x i8> %146, ptr %143, align 1, !tbaa !36
  store <16 x i8> %147, ptr %148, align 1, !tbaa !36
  %149 = add nuw i64 %142, 32
  %150 = icmp eq i64 %149, %136
  br i1 %150, label %151, label %141, !llvm.loop !78

151:                                              ; preds = %141
  %152 = icmp eq i64 %136, %127
  br i1 %152, label %224, label %153

153:                                              ; preds = %151
  %154 = icmp eq i64 %135, 0
  br i1 %154, label %171, label %155, !prof !41

155:                                              ; preds = %132, %153
  %156 = phi i64 [ %136, %153 ], [ 0, %132 ]
  %157 = and i64 %127, 4294967292
  %158 = getelementptr i8, ptr %121, i64 %157
  %159 = getelementptr i8, ptr %122, i64 %157
  %160 = trunc nuw i64 %157 to i32
  %161 = sub i32 %117, %160
  br label %162

162:                                              ; preds = %162, %155
  %163 = phi i64 [ %156, %155 ], [ %167, %162 ]
  %164 = getelementptr i8, ptr %121, i64 %163
  %165 = getelementptr i8, ptr %122, i64 %163
  %166 = load <4 x i8>, ptr %165, align 1, !tbaa !36
  store <4 x i8> %166, ptr %164, align 1, !tbaa !36
  %167 = add nuw i64 %163, 4
  %168 = icmp eq i64 %167, %157
  br i1 %168, label %169, label %162, !llvm.loop !79

169:                                              ; preds = %162
  %170 = icmp eq i64 %157, %127
  br i1 %170, label %224, label %171

171:                                              ; preds = %124, %153, %169
  %172 = phi ptr [ %121, %124 ], [ %137, %153 ], [ %158, %169 ]
  %173 = phi ptr [ %122, %124 ], [ %138, %153 ], [ %159, %169 ]
  %174 = phi i32 [ %117, %124 ], [ %140, %153 ], [ %161, %169 ]
  %175 = add i32 %174, -1
  %176 = and i32 %174, 7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %171, %178
  %179 = phi ptr [ %185, %178 ], [ %172, %171 ]
  %180 = phi ptr [ %186, %178 ], [ %173, %171 ]
  %181 = phi i32 [ %184, %178 ], [ %174, %171 ]
  %182 = phi i32 [ %187, %178 ], [ 0, %171 ]
  %183 = load i8, ptr %180, align 1, !tbaa !36
  store i8 %183, ptr %179, align 1, !tbaa !36
  %184 = add i32 %181, -1
  %185 = getelementptr inbounds nuw i8, ptr %179, i64 1
  %186 = getelementptr inbounds nuw i8, ptr %180, i64 1
  %187 = add i32 %182, 1
  %188 = icmp eq i32 %187, %176
  br i1 %188, label %189, label %178, !llvm.loop !80

189:                                              ; preds = %178, %171
  %190 = phi ptr [ %172, %171 ], [ %185, %178 ]
  %191 = phi ptr [ %173, %171 ], [ %186, %178 ]
  %192 = phi i32 [ %174, %171 ], [ %184, %178 ]
  %193 = icmp ult i32 %175, 7
  br i1 %193, label %224, label %194

194:                                              ; preds = %189, %194
  %195 = phi ptr [ %221, %194 ], [ %190, %189 ]
  %196 = phi ptr [ %222, %194 ], [ %191, %189 ]
  %197 = phi i32 [ %220, %194 ], [ %192, %189 ]
  %198 = load i8, ptr %196, align 1, !tbaa !36
  store i8 %198, ptr %195, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %195, i64 1
  %200 = getelementptr inbounds nuw i8, ptr %196, i64 1
  %201 = load i8, ptr %200, align 1, !tbaa !36
  store i8 %201, ptr %199, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %195, i64 2
  %203 = getelementptr inbounds nuw i8, ptr %196, i64 2
  %204 = load i8, ptr %203, align 1, !tbaa !36
  store i8 %204, ptr %202, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %195, i64 3
  %206 = getelementptr inbounds nuw i8, ptr %196, i64 3
  %207 = load i8, ptr %206, align 1, !tbaa !36
  store i8 %207, ptr %205, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %195, i64 4
  %209 = getelementptr inbounds nuw i8, ptr %196, i64 4
  %210 = load i8, ptr %209, align 1, !tbaa !36
  store i8 %210, ptr %208, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %195, i64 5
  %212 = getelementptr inbounds nuw i8, ptr %196, i64 5
  %213 = load i8, ptr %212, align 1, !tbaa !36
  store i8 %213, ptr %211, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %195, i64 6
  %215 = getelementptr inbounds nuw i8, ptr %196, i64 6
  %216 = load i8, ptr %215, align 1, !tbaa !36
  store i8 %216, ptr %214, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %195, i64 7
  %218 = getelementptr inbounds nuw i8, ptr %196, i64 7
  %219 = load i8, ptr %218, align 1, !tbaa !36
  store i8 %219, ptr %217, align 1, !tbaa !36
  %220 = add i32 %197, -8
  %221 = getelementptr inbounds nuw i8, ptr %195, i64 8
  %222 = getelementptr inbounds nuw i8, ptr %196, i64 8
  %223 = icmp eq i32 %220, 0
  br i1 %223, label %224, label %194, !llvm.loop !81

224:                                              ; preds = %189, %194, %169, %151
  %225 = load i32, ptr %36, align 8, !tbaa !34
  br label %226

226:                                              ; preds = %224, %120, %118
  %227 = phi i32 [ %225, %224 ], [ %117, %120 ], [ 0, %118 ]
  %228 = load i32, ptr %38, align 8, !tbaa !27
  %229 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %228, i32 %227), !nosanitize !20
  %230 = extractvalue { i32, i1 } %229, 1, !nosanitize !20
  br i1 %230, label %231, label %232, !prof !21, !nosanitize !20

231:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

232:                                              ; preds = %226
  %233 = extractvalue { i32, i1 } %229, 0, !nosanitize !20
  %234 = load ptr, ptr %43, align 8, !tbaa !29
  %235 = zext i32 %227 to i64
  %236 = getelementptr inbounds nuw i8, ptr %234, i64 %235
  store i32 0, ptr %44, align 4, !tbaa !17
  %237 = tail call ptr @__errno_location() #17
  store i32 0, ptr %237, align 4, !tbaa !4
  br label %238

238:                                              ; preds = %257, %232
  %239 = phi i32 [ 0, %232 ], [ %258, %257 ]
  %240 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %233, i32 %239), !nosanitize !20
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !20
  br i1 %241, label %242, label %243, !prof !21, !nosanitize !20

242:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

243:                                              ; preds = %238
  %244 = extractvalue { i32, i1 } %240, 0, !nosanitize !20
  %245 = tail call i32 @llvm.umin.i32(i32 %244, i32 1073741824)
  %246 = load i32, ptr %45, align 4, !tbaa !46
  %247 = zext i32 %239 to i64
  %248 = getelementptr inbounds nuw i8, ptr %236, i64 %247
  %249 = zext nneg i32 %245 to i64
  %250 = tail call i64 @read(i32 noundef %246, ptr noundef %248, i64 noundef %249) #14
  %251 = trunc i64 %250 to i32
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %260, label %253

253:                                              ; preds = %243
  %254 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %251), !nosanitize !20
  %255 = extractvalue { i32, i1 } %254, 1, !nosanitize !20
  br i1 %255, label %256, label %257, !prof !21, !nosanitize !20

256:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

257:                                              ; preds = %253
  %258 = extractvalue { i32, i1 } %254, 0, !nosanitize !20
  %259 = icmp ult i32 %258, %233
  br i1 %259, label %238, label %273, !llvm.loop !47

260:                                              ; preds = %243
  %261 = icmp slt i32 %251, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %260
  %263 = load i32, ptr %237, align 4, !tbaa !4
  %264 = icmp eq i32 %263, 11
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  store i32 1, ptr %44, align 4, !tbaa !17
  %266 = icmp eq i32 %239, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %265
  %268 = load i32, ptr %237, align 4, !tbaa !4
  br label %270

269:                                              ; preds = %260
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %273

270:                                              ; preds = %262, %267
  %271 = phi i32 [ %268, %267 ], [ %263, %262 ]
  %272 = tail call ptr @strerror(i32 noundef %271) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %272) #14
  br label %1116

273:                                              ; preds = %257, %269, %265
  %274 = phi i32 [ %239, %265 ], [ %239, %269 ], [ %258, %257 ]
  %275 = load i32, ptr %36, align 8, !tbaa !34
  %276 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %275, i32 %274), !nosanitize !20
  %277 = extractvalue { i32, i1 } %276, 1, !nosanitize !20
  br i1 %277, label %278, label %279, !prof !21, !nosanitize !20

278:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

279:                                              ; preds = %273
  %280 = extractvalue { i32, i1 } %276, 0, !nosanitize !20
  store i32 %280, ptr %36, align 8, !tbaa !34
  %281 = load ptr, ptr %43, align 8, !tbaa !29
  store ptr %281, ptr %42, align 8, !tbaa !35
  br label %282

282:                                              ; preds = %279, %114
  %283 = phi i32 [ %280, %279 ], [ %117, %114 ]
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %314, label %285

285:                                              ; preds = %282
  %286 = load i32, ptr %44, align 4, !tbaa !17
  %287 = icmp ne i32 %286, 0
  %288 = icmp ult i32 %283, 4
  %289 = and i1 %288, %287
  br i1 %289, label %314, label %290

290:                                              ; preds = %285
  %291 = icmp ugt i32 %283, 3
  %292 = load ptr, ptr %42, align 8, !tbaa !35
  br i1 %291, label %293, label %310

293:                                              ; preds = %290
  %294 = load i8, ptr %292, align 1, !tbaa !36
  %295 = icmp eq i8 %294, 31
  br i1 %295, label %296, label %310

296:                                              ; preds = %293
  %297 = getelementptr inbounds nuw i8, ptr %292, i64 1
  %298 = load i8, ptr %297, align 1, !tbaa !36
  %299 = icmp eq i8 %298, -117
  br i1 %299, label %300, label %310

300:                                              ; preds = %296
  %301 = getelementptr inbounds nuw i8, ptr %292, i64 2
  %302 = load i8, ptr %301, align 1, !tbaa !36
  %303 = icmp eq i8 %302, 8
  br i1 %303, label %304, label %310

304:                                              ; preds = %300
  %305 = getelementptr inbounds nuw i8, ptr %292, i64 3
  %306 = load i8, ptr %305, align 1, !tbaa !36
  %307 = icmp ult i8 %306, 32
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = tail call i32 @inflateReset(ptr noundef nonnull %42) #14
  store i32 2, ptr %37, align 8, !tbaa !26
  store i32 1, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %50, align 8, !tbaa !32
  br label %462

310:                                              ; preds = %304, %300, %296, %293, %290
  %311 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %311, ptr %33, align 8, !tbaa !22
  %312 = zext i32 %283 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %311, ptr align 1 %292, i64 %312, i1 false)
  %313 = load i32, ptr %36, align 8, !tbaa !34
  store i32 %313, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %36, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !26
  br label %464

314:                                              ; preds = %285, %282, %107
  %315 = load i32, ptr %37, align 8, !tbaa !26
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %474, label %462

317:                                              ; preds = %77
  %318 = load ptr, ptr %40, align 8, !tbaa !30
  %319 = load i32, ptr %38, align 8, !tbaa !27
  %320 = shl i32 %319, 1
  store i32 0, ptr %44, align 4, !tbaa !17
  %321 = tail call ptr @__errno_location() #17
  store i32 0, ptr %321, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %322

322:                                              ; preds = %342, %317
  %323 = phi i32 [ %343, %342 ], [ 0, %317 ]
  %324 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %320, i32 %323), !nosanitize !20
  %325 = extractvalue { i32, i1 } %324, 1, !nosanitize !20
  br i1 %325, label %326, label %327, !prof !21, !nosanitize !20

326:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

327:                                              ; preds = %322
  %328 = extractvalue { i32, i1 } %324, 0, !nosanitize !20
  %329 = tail call i32 @llvm.umin.i32(i32 %328, i32 1073741824)
  %330 = load i32, ptr %45, align 4, !tbaa !46
  %331 = zext i32 %323 to i64
  %332 = getelementptr inbounds nuw i8, ptr %318, i64 %331
  %333 = zext nneg i32 %329 to i64
  %334 = tail call i64 @read(i32 noundef %330, ptr noundef %332, i64 noundef %333) #14
  %335 = trunc i64 %334 to i32
  %336 = icmp slt i32 %335, 1
  br i1 %336, label %345, label %337

337:                                              ; preds = %327
  %338 = load i32, ptr %0, align 4, !tbaa !4
  %339 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %338, i32 %335), !nosanitize !20
  %340 = extractvalue { i32, i1 } %339, 1, !nosanitize !20
  br i1 %340, label %341, label %342, !prof !21, !nosanitize !20

341:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

342:                                              ; preds = %337
  %343 = extractvalue { i32, i1 } %339, 0, !nosanitize !20
  store i32 %343, ptr %0, align 4, !tbaa !4
  %344 = icmp ult i32 %343, %320
  br i1 %344, label %322, label %359, !llvm.loop !47

345:                                              ; preds = %327
  %346 = icmp slt i32 %335, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %345
  %348 = load i32, ptr %321, align 4, !tbaa !4
  %349 = icmp eq i32 %348, 11
  br i1 %349, label %350, label %356

350:                                              ; preds = %347
  store i32 1, ptr %44, align 4, !tbaa !17
  %351 = load i32, ptr %0, align 4, !tbaa !4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %350
  %354 = load i32, ptr %321, align 4, !tbaa !4
  br label %356

355:                                              ; preds = %345
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %359

356:                                              ; preds = %347, %353
  %357 = phi i32 [ %354, %353 ], [ %348, %347 ]
  %358 = tail call ptr @strerror(i32 noundef %357) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %358) #14
  br label %1116

359:                                              ; preds = %342, %355, %350
  %360 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %360, ptr %33, align 8, !tbaa !22
  br label %474

361:                                              ; preds = %77
  %362 = load i32, ptr %38, align 8, !tbaa !27
  %363 = shl i32 %362, 1
  store i32 %363, ptr %39, align 8, !tbaa !48
  %364 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %364, ptr %41, align 8, !tbaa !49
  br label %365

365:                                              ; preds = %444, %361
  %366 = phi i32 [ 0, %361 ], [ %429, %444 ]
  %367 = load i32, ptr %36, align 8, !tbaa !34
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %428

369:                                              ; preds = %365
  %370 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %370, label %448 [
    i32 0, label %371
    i32 -5, label %371
  ]

371:                                              ; preds = %369, %369
  %372 = load i32, ptr %35, align 8, !tbaa !24
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %424

374:                                              ; preds = %371
  %375 = load i32, ptr %38, align 8, !tbaa !27
  %376 = load ptr, ptr %43, align 8, !tbaa !29
  store i32 0, ptr %44, align 4, !tbaa !17
  %377 = tail call ptr @__errno_location() #17
  store i32 0, ptr %377, align 4, !tbaa !4
  br label %378

378:                                              ; preds = %397, %374
  %379 = phi i32 [ 0, %374 ], [ %398, %397 ]
  %380 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %375, i32 %379), !nosanitize !20
  %381 = extractvalue { i32, i1 } %380, 1, !nosanitize !20
  br i1 %381, label %382, label %383, !prof !21, !nosanitize !20

382:                                              ; preds = %378
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

383:                                              ; preds = %378
  %384 = extractvalue { i32, i1 } %380, 0, !nosanitize !20
  %385 = tail call i32 @llvm.umin.i32(i32 %384, i32 1073741824)
  %386 = load i32, ptr %45, align 4, !tbaa !46
  %387 = zext i32 %379 to i64
  %388 = getelementptr inbounds nuw i8, ptr %376, i64 %387
  %389 = zext nneg i32 %385 to i64
  %390 = tail call i64 @read(i32 noundef %386, ptr noundef %388, i64 noundef %389) #14
  %391 = trunc i64 %390 to i32
  %392 = icmp slt i32 %391, 1
  br i1 %392, label %400, label %393

393:                                              ; preds = %383
  %394 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %379, i32 %391), !nosanitize !20
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !20
  br i1 %395, label %396, label %397, !prof !21, !nosanitize !20

396:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

397:                                              ; preds = %393
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !20
  %399 = icmp ult i32 %398, %375
  br i1 %399, label %378, label %414, !llvm.loop !47

400:                                              ; preds = %383
  %401 = icmp slt i32 %391, 0
  br i1 %401, label %402, label %409

402:                                              ; preds = %400
  %403 = load i32, ptr %377, align 4, !tbaa !4
  %404 = icmp eq i32 %403, 11
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  store i32 1, ptr %44, align 4, !tbaa !17
  %406 = icmp eq i32 %379, 0
  br i1 %406, label %407, label %414

407:                                              ; preds = %405
  %408 = load i32, ptr %377, align 4, !tbaa !4
  br label %410

409:                                              ; preds = %400
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %414

410:                                              ; preds = %402, %407
  %411 = phi i32 [ %408, %407 ], [ %403, %402 ]
  %412 = tail call ptr @strerror(i32 noundef %411) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %412) #14
  %413 = load i32, ptr %9, align 8, !tbaa !16
  br label %448

414:                                              ; preds = %397, %409, %405
  %415 = phi i32 [ %379, %405 ], [ %379, %409 ], [ %398, %397 ]
  %416 = load i32, ptr %36, align 8, !tbaa !34
  %417 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %416, i32 %415), !nosanitize !20
  %418 = extractvalue { i32, i1 } %417, 1, !nosanitize !20
  br i1 %418, label %419, label %420, !prof !21, !nosanitize !20

419:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

420:                                              ; preds = %414
  %421 = extractvalue { i32, i1 } %417, 0, !nosanitize !20
  store i32 %421, ptr %36, align 8, !tbaa !34
  %422 = load ptr, ptr %43, align 8, !tbaa !29
  store ptr %422, ptr %42, align 8, !tbaa !35
  %423 = icmp eq i32 %421, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %420, %371
  %425 = load i32, ptr %44, align 4, !tbaa !17
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %448

427:                                              ; preds = %424
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %448

428:                                              ; preds = %420, %365
  %429 = tail call i32 @inflate(ptr noundef nonnull %42, i32 noundef 0) #14
  %430 = load i32, ptr %39, align 8, !tbaa !48
  %431 = icmp ult i32 %430, %363
  br i1 %431, label %432, label %433

432:                                              ; preds = %428
  store i32 0, ptr %46, align 4, !tbaa !33
  br label %433

433:                                              ; preds = %432, %428
  switch i32 %429, label %444 [
    i32 -2, label %434
    i32 2, label %434
    i32 -4, label %435
    i32 -3, label %436
  ]

434:                                              ; preds = %433, %433
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %448

435:                                              ; preds = %433
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %448

436:                                              ; preds = %433
  %437 = load i32, ptr %46, align 4, !tbaa !33
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %440

439:                                              ; preds = %436
  store i32 0, ptr %36, align 8, !tbaa !34
  store i32 1, ptr %35, align 8, !tbaa !24
  store i32 0, ptr %37, align 8, !tbaa !26
  br label %448

440:                                              ; preds = %436
  %441 = load ptr, ptr %47, align 8, !tbaa !50
  %442 = icmp eq ptr %441, null
  %443 = select i1 %442, ptr @.str.6, ptr %441
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %443) #14
  br label %448

444:                                              ; preds = %433
  %445 = icmp ne i32 %430, 0
  %446 = icmp ne i32 %429, 1
  %447 = select i1 %445, i1 %446, i1 false
  br i1 %447, label %365, label %448, !llvm.loop !51

448:                                              ; preds = %444, %369, %440, %439, %435, %434, %427, %424, %410
  %449 = phi i32 [ %413, %410 ], [ %366, %424 ], [ %366, %427 ], [ %429, %434 ], [ -4, %435 ], [ 0, %439 ], [ -3, %440 ], [ %370, %369 ], [ %429, %444 ]
  %450 = load i32, ptr %39, align 8, !tbaa !48
  %451 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %363, i32 %450), !nosanitize !20
  %452 = extractvalue { i32, i1 } %451, 1, !nosanitize !20
  br i1 %452, label %453, label %454, !prof !21, !nosanitize !20

453:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

454:                                              ; preds = %448
  %455 = extractvalue { i32, i1 } %451, 0, !nosanitize !20
  store i32 %455, ptr %0, align 8, !tbaa !19
  %456 = load ptr, ptr %41, align 8, !tbaa !49
  %457 = zext i32 %455 to i64
  %458 = sub nsw i64 0, %457
  %459 = getelementptr inbounds i8, ptr %456, i64 %458
  store ptr %459, ptr %33, align 8, !tbaa !22
  switch i32 %449, label %1116 [
    i32 1, label %460
    i32 0, label %462
  ]

460:                                              ; preds = %454
  store i32 0, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %37, align 8, !tbaa !26
  br label %462

461:                                              ; preds = %77
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %1116

462:                                              ; preds = %460, %454, %314, %308
  %463 = load i32, ptr %0, align 8, !tbaa !19
  br label %464

464:                                              ; preds = %462, %310
  %465 = phi i32 [ %463, %462 ], [ %313, %310 ]
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %474

467:                                              ; preds = %464
  %468 = load i32, ptr %35, align 8, !tbaa !24
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %467
  %471 = load i32, ptr %36, align 8, !tbaa !34
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %474, label %473

473:                                              ; preds = %470, %467
  br label %77, !llvm.loop !52

474:                                              ; preds = %470, %464, %314, %359
  %475 = load i64, ptr %29, align 8, !tbaa !18
  br label %476

476:                                              ; preds = %474, %62
  %477 = phi i64 [ %475, %474 ], [ %69, %62 ]
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %51, !llvm.loop !53

479:                                              ; preds = %476, %73, %28
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %493 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %494 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %495 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %496 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %497 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %498

498:                                              ; preds = %1098, %479
  %499 = phi ptr [ %2, %479 ], [ %1102, %1098 ]
  %500 = phi i64 [ 1, %479 ], [ %1101, %1098 ]
  %501 = phi i64 [ 0, %479 ], [ %1100, %1098 ]
  %502 = call i64 @llvm.umin.i64(i64 %500, i64 4294967295)
  %503 = trunc nuw i64 %502 to i32
  %504 = load i32, ptr %0, align 8, !tbaa !19
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %521, label %506

506:                                              ; preds = %498
  %507 = call i32 @llvm.umin.i32(i32 %504, i32 %503)
  %508 = load ptr, ptr %480, align 8, !tbaa !22
  %509 = zext i32 %507 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %499, ptr align 1 %508, i64 %509, i1 false)
  %510 = load ptr, ptr %480, align 8, !tbaa !22
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 %509
  store ptr %511, ptr %480, align 8, !tbaa !22
  %512 = load i32, ptr %0, align 8, !tbaa !19
  %513 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %512, i32 %507), !nosanitize !20
  %514 = extractvalue { i32, i1 } %513, 1, !nosanitize !20
  br i1 %514, label %515, label %516, !prof !21, !nosanitize !20

515:                                              ; preds = %506
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

516:                                              ; preds = %506
  %517 = extractvalue { i32, i1 } %513, 0, !nosanitize !20
  store i32 %517, ptr %0, align 8, !tbaa !19
  %518 = load i32, ptr %9, align 8, !tbaa !16
  %519 = icmp ne i32 %518, 0
  %520 = sext i1 %519 to i32
  br label %1081

521:                                              ; preds = %498
  %522 = load i32, ptr %481, align 8, !tbaa !24
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %521
  %525 = load i32, ptr %482, align 8, !tbaa !25
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %1107, label %527

527:                                              ; preds = %524, %521
  %528 = load i32, ptr %483, align 8, !tbaa !26
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %534, label %530

530:                                              ; preds = %527
  %531 = load i32, ptr %484, align 8, !tbaa !27
  %532 = shl i32 %531, 1
  %533 = icmp ugt i32 %532, %503
  br i1 %533, label %534, label %937

534:                                              ; preds = %530, %527
  br label %535

535:                                              ; preds = %534, %931
  %536 = phi i32 [ %932, %931 ], [ %528, %534 ]
  switch i32 %536, label %919 [
    i32 0, label %537
    i32 1, label %775
    i32 2, label %819
  ]

537:                                              ; preds = %535
  %538 = load i32, ptr %484, align 8, !tbaa !27
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %559

540:                                              ; preds = %537
  %541 = load i32, ptr %495, align 4, !tbaa !28
  %542 = zext i32 %541 to i64
  %543 = call noalias ptr @malloc(i64 noundef %542) #16
  store ptr %543, ptr %488, align 8, !tbaa !29
  %544 = load i32, ptr %495, align 4, !tbaa !28
  %545 = shl i32 %544, 1
  %546 = zext i32 %545 to i64
  %547 = call noalias ptr @malloc(i64 noundef %546) #16
  store ptr %547, ptr %494, align 8, !tbaa !30
  %548 = icmp eq ptr %543, null
  %549 = icmp eq ptr %547, null
  %550 = or i1 %548, %549
  br i1 %550, label %551, label %552

551:                                              ; preds = %540
  call void @free(ptr noundef %547) #14
  call void @free(ptr noundef %543) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %933

552:                                              ; preds = %540
  %553 = load i32, ptr %495, align 4, !tbaa !28
  store i32 %553, ptr %484, align 8, !tbaa !27
  store i32 0, ptr %482, align 8, !tbaa !25
  store ptr null, ptr %487, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %496, i8 0, i64 24, i1 false)
  %554 = call i32 @inflateInit2_(ptr noundef nonnull %487, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %559, label %556

556:                                              ; preds = %552
  %557 = load ptr, ptr %494, align 8, !tbaa !30
  call void @free(ptr noundef %557) #14
  %558 = load ptr, ptr %488, align 8, !tbaa !29
  call void @free(ptr noundef %558) #14
  store i32 0, ptr %484, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %933

559:                                              ; preds = %552, %537
  %560 = load i32, ptr %497, align 8, !tbaa !32
  %561 = icmp eq i32 %560, -1
  br i1 %561, label %565, label %562

562:                                              ; preds = %559
  %563 = load i32, ptr %491, align 4, !tbaa !33
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %570

565:                                              ; preds = %562, %559
  %566 = call i32 @inflateReset(ptr noundef nonnull %487) #14
  store i32 2, ptr %483, align 8, !tbaa !26
  %567 = load i32, ptr %491, align 4, !tbaa !33
  %568 = icmp ne i32 %567, -1
  %569 = zext i1 %568 to i32
  store i32 %569, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %497, align 8, !tbaa !32
  br label %772

570:                                              ; preds = %562
  %571 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %571, label %933 [
    i32 0, label %572
    i32 -5, label %572
  ]

572:                                              ; preds = %570, %570
  %573 = load i32, ptr %481, align 8, !tbaa !24
  %574 = icmp eq i32 %573, 0
  %575 = load i32, ptr %482, align 8, !tbaa !34
  br i1 %574, label %576, label %740

576:                                              ; preds = %572
  %577 = icmp eq i32 %575, 0
  br i1 %577, label %684, label %578

578:                                              ; preds = %576
  %579 = load ptr, ptr %488, align 8, !tbaa !29
  %580 = load ptr, ptr %487, align 8, !tbaa !35
  %581 = icmp eq ptr %580, %579
  br i1 %581, label %684, label %582

582:                                              ; preds = %578
  %583 = ptrtoaddr ptr %580 to i64
  %584 = ptrtoaddr ptr %579 to i64
  %585 = zext i32 %575 to i64
  %586 = icmp ult i32 %575, 4
  %587 = sub i64 %584, %583
  %588 = icmp ult i64 %587, 32
  %589 = or i1 %586, %588
  br i1 %589, label %629, label %590

590:                                              ; preds = %582
  %591 = icmp ult i32 %575, 32
  br i1 %591, label %613, label %592

592:                                              ; preds = %590
  %593 = and i64 %585, 28
  %594 = and i64 %585, 4294967264
  %595 = getelementptr i8, ptr %579, i64 %594
  %596 = getelementptr i8, ptr %580, i64 %594
  %597 = trunc nuw i64 %594 to i32
  %598 = sub i32 %575, %597
  br label %599

599:                                              ; preds = %599, %592
  %600 = phi i64 [ 0, %592 ], [ %607, %599 ]
  %601 = getelementptr i8, ptr %579, i64 %600
  %602 = getelementptr i8, ptr %580, i64 %600
  %603 = getelementptr i8, ptr %602, i64 16
  %604 = load <16 x i8>, ptr %602, align 1, !tbaa !36
  %605 = load <16 x i8>, ptr %603, align 1, !tbaa !36
  %606 = getelementptr i8, ptr %601, i64 16
  store <16 x i8> %604, ptr %601, align 1, !tbaa !36
  store <16 x i8> %605, ptr %606, align 1, !tbaa !36
  %607 = add nuw i64 %600, 32
  %608 = icmp eq i64 %607, %594
  br i1 %608, label %609, label %599, !llvm.loop !82

609:                                              ; preds = %599
  %610 = icmp eq i64 %594, %585
  br i1 %610, label %682, label %611

611:                                              ; preds = %609
  %612 = icmp eq i64 %593, 0
  br i1 %612, label %629, label %613, !prof !41

613:                                              ; preds = %590, %611
  %614 = phi i64 [ %594, %611 ], [ 0, %590 ]
  %615 = and i64 %585, 4294967292
  %616 = getelementptr i8, ptr %579, i64 %615
  %617 = getelementptr i8, ptr %580, i64 %615
  %618 = trunc nuw i64 %615 to i32
  %619 = sub i32 %575, %618
  br label %620

620:                                              ; preds = %620, %613
  %621 = phi i64 [ %614, %613 ], [ %625, %620 ]
  %622 = getelementptr i8, ptr %579, i64 %621
  %623 = getelementptr i8, ptr %580, i64 %621
  %624 = load <4 x i8>, ptr %623, align 1, !tbaa !36
  store <4 x i8> %624, ptr %622, align 1, !tbaa !36
  %625 = add nuw i64 %621, 4
  %626 = icmp eq i64 %625, %615
  br i1 %626, label %627, label %620, !llvm.loop !83

627:                                              ; preds = %620
  %628 = icmp eq i64 %615, %585
  br i1 %628, label %682, label %629

629:                                              ; preds = %582, %611, %627
  %630 = phi ptr [ %579, %582 ], [ %595, %611 ], [ %616, %627 ]
  %631 = phi ptr [ %580, %582 ], [ %596, %611 ], [ %617, %627 ]
  %632 = phi i32 [ %575, %582 ], [ %598, %611 ], [ %619, %627 ]
  %633 = add i32 %632, -1
  %634 = and i32 %632, 7
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %647, label %636

636:                                              ; preds = %629, %636
  %637 = phi ptr [ %643, %636 ], [ %630, %629 ]
  %638 = phi ptr [ %644, %636 ], [ %631, %629 ]
  %639 = phi i32 [ %642, %636 ], [ %632, %629 ]
  %640 = phi i32 [ %645, %636 ], [ 0, %629 ]
  %641 = load i8, ptr %638, align 1, !tbaa !36
  store i8 %641, ptr %637, align 1, !tbaa !36
  %642 = add i32 %639, -1
  %643 = getelementptr inbounds nuw i8, ptr %637, i64 1
  %644 = getelementptr inbounds nuw i8, ptr %638, i64 1
  %645 = add i32 %640, 1
  %646 = icmp eq i32 %645, %634
  br i1 %646, label %647, label %636, !llvm.loop !84

647:                                              ; preds = %636, %629
  %648 = phi ptr [ %630, %629 ], [ %643, %636 ]
  %649 = phi ptr [ %631, %629 ], [ %644, %636 ]
  %650 = phi i32 [ %632, %629 ], [ %642, %636 ]
  %651 = icmp ult i32 %633, 7
  br i1 %651, label %682, label %652

652:                                              ; preds = %647, %652
  %653 = phi ptr [ %679, %652 ], [ %648, %647 ]
  %654 = phi ptr [ %680, %652 ], [ %649, %647 ]
  %655 = phi i32 [ %678, %652 ], [ %650, %647 ]
  %656 = load i8, ptr %654, align 1, !tbaa !36
  store i8 %656, ptr %653, align 1, !tbaa !36
  %657 = getelementptr inbounds nuw i8, ptr %653, i64 1
  %658 = getelementptr inbounds nuw i8, ptr %654, i64 1
  %659 = load i8, ptr %658, align 1, !tbaa !36
  store i8 %659, ptr %657, align 1, !tbaa !36
  %660 = getelementptr inbounds nuw i8, ptr %653, i64 2
  %661 = getelementptr inbounds nuw i8, ptr %654, i64 2
  %662 = load i8, ptr %661, align 1, !tbaa !36
  store i8 %662, ptr %660, align 1, !tbaa !36
  %663 = getelementptr inbounds nuw i8, ptr %653, i64 3
  %664 = getelementptr inbounds nuw i8, ptr %654, i64 3
  %665 = load i8, ptr %664, align 1, !tbaa !36
  store i8 %665, ptr %663, align 1, !tbaa !36
  %666 = getelementptr inbounds nuw i8, ptr %653, i64 4
  %667 = getelementptr inbounds nuw i8, ptr %654, i64 4
  %668 = load i8, ptr %667, align 1, !tbaa !36
  store i8 %668, ptr %666, align 1, !tbaa !36
  %669 = getelementptr inbounds nuw i8, ptr %653, i64 5
  %670 = getelementptr inbounds nuw i8, ptr %654, i64 5
  %671 = load i8, ptr %670, align 1, !tbaa !36
  store i8 %671, ptr %669, align 1, !tbaa !36
  %672 = getelementptr inbounds nuw i8, ptr %653, i64 6
  %673 = getelementptr inbounds nuw i8, ptr %654, i64 6
  %674 = load i8, ptr %673, align 1, !tbaa !36
  store i8 %674, ptr %672, align 1, !tbaa !36
  %675 = getelementptr inbounds nuw i8, ptr %653, i64 7
  %676 = getelementptr inbounds nuw i8, ptr %654, i64 7
  %677 = load i8, ptr %676, align 1, !tbaa !36
  store i8 %677, ptr %675, align 1, !tbaa !36
  %678 = add i32 %655, -8
  %679 = getelementptr inbounds nuw i8, ptr %653, i64 8
  %680 = getelementptr inbounds nuw i8, ptr %654, i64 8
  %681 = icmp eq i32 %678, 0
  br i1 %681, label %682, label %652, !llvm.loop !85

682:                                              ; preds = %647, %652, %627, %609
  %683 = load i32, ptr %482, align 8, !tbaa !34
  br label %684

684:                                              ; preds = %682, %578, %576
  %685 = phi i32 [ %683, %682 ], [ %575, %578 ], [ 0, %576 ]
  %686 = load i32, ptr %484, align 8, !tbaa !27
  %687 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %686, i32 %685), !nosanitize !20
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !20
  br i1 %688, label %689, label %690, !prof !21, !nosanitize !20

689:                                              ; preds = %684
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

690:                                              ; preds = %684
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !20
  %692 = load ptr, ptr %488, align 8, !tbaa !29
  %693 = zext i32 %685 to i64
  %694 = getelementptr inbounds nuw i8, ptr %692, i64 %693
  store i32 0, ptr %489, align 4, !tbaa !17
  %695 = tail call ptr @__errno_location() #17
  store i32 0, ptr %695, align 4, !tbaa !4
  br label %696

696:                                              ; preds = %715, %690
  %697 = phi i32 [ 0, %690 ], [ %716, %715 ]
  %698 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %691, i32 %697), !nosanitize !20
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !20
  br i1 %699, label %700, label %701, !prof !21, !nosanitize !20

700:                                              ; preds = %696
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

701:                                              ; preds = %696
  %702 = extractvalue { i32, i1 } %698, 0, !nosanitize !20
  %703 = call i32 @llvm.umin.i32(i32 %702, i32 1073741824)
  %704 = load i32, ptr %490, align 4, !tbaa !46
  %705 = zext i32 %697 to i64
  %706 = getelementptr inbounds nuw i8, ptr %694, i64 %705
  %707 = zext nneg i32 %703 to i64
  %708 = call i64 @read(i32 noundef %704, ptr noundef %706, i64 noundef %707) #14
  %709 = trunc i64 %708 to i32
  %710 = icmp slt i32 %709, 1
  br i1 %710, label %718, label %711

711:                                              ; preds = %701
  %712 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %697, i32 %709), !nosanitize !20
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !20
  br i1 %713, label %714, label %715, !prof !21, !nosanitize !20

714:                                              ; preds = %711
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

715:                                              ; preds = %711
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !20
  %717 = icmp ult i32 %716, %691
  br i1 %717, label %696, label %731, !llvm.loop !47

718:                                              ; preds = %701
  %719 = icmp slt i32 %709, 0
  br i1 %719, label %720, label %727

720:                                              ; preds = %718
  %721 = load i32, ptr %695, align 4, !tbaa !4
  %722 = icmp eq i32 %721, 11
  br i1 %722, label %723, label %728

723:                                              ; preds = %720
  store i32 1, ptr %489, align 4, !tbaa !17
  %724 = icmp eq i32 %697, 0
  br i1 %724, label %725, label %731

725:                                              ; preds = %723
  %726 = load i32, ptr %695, align 4, !tbaa !4
  br label %728

727:                                              ; preds = %718
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %731

728:                                              ; preds = %720, %725
  %729 = phi i32 [ %726, %725 ], [ %721, %720 ]
  %730 = call ptr @strerror(i32 noundef %729) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %730) #14
  br label %933

731:                                              ; preds = %715, %727, %723
  %732 = phi i32 [ %697, %723 ], [ %697, %727 ], [ %716, %715 ]
  %733 = load i32, ptr %482, align 8, !tbaa !34
  %734 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %733, i32 %732), !nosanitize !20
  %735 = extractvalue { i32, i1 } %734, 1, !nosanitize !20
  br i1 %735, label %736, label %737, !prof !21, !nosanitize !20

736:                                              ; preds = %731
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

737:                                              ; preds = %731
  %738 = extractvalue { i32, i1 } %734, 0, !nosanitize !20
  store i32 %738, ptr %482, align 8, !tbaa !34
  %739 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %739, ptr %487, align 8, !tbaa !35
  br label %740

740:                                              ; preds = %737, %572
  %741 = phi i32 [ %738, %737 ], [ %575, %572 ]
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %772, label %743

743:                                              ; preds = %740
  %744 = load i32, ptr %489, align 4, !tbaa !17
  %745 = icmp ne i32 %744, 0
  %746 = icmp ult i32 %741, 4
  %747 = and i1 %746, %745
  br i1 %747, label %772, label %748

748:                                              ; preds = %743
  %749 = icmp ugt i32 %741, 3
  %750 = load ptr, ptr %487, align 8, !tbaa !35
  br i1 %749, label %751, label %768

751:                                              ; preds = %748
  %752 = load i8, ptr %750, align 1, !tbaa !36
  %753 = icmp eq i8 %752, 31
  br i1 %753, label %754, label %768

754:                                              ; preds = %751
  %755 = getelementptr inbounds nuw i8, ptr %750, i64 1
  %756 = load i8, ptr %755, align 1, !tbaa !36
  %757 = icmp eq i8 %756, -117
  br i1 %757, label %758, label %768

758:                                              ; preds = %754
  %759 = getelementptr inbounds nuw i8, ptr %750, i64 2
  %760 = load i8, ptr %759, align 1, !tbaa !36
  %761 = icmp eq i8 %760, 8
  br i1 %761, label %762, label %768

762:                                              ; preds = %758
  %763 = getelementptr inbounds nuw i8, ptr %750, i64 3
  %764 = load i8, ptr %763, align 1, !tbaa !36
  %765 = icmp ult i8 %764, 32
  br i1 %765, label %766, label %768

766:                                              ; preds = %762
  %767 = call i32 @inflateReset(ptr noundef nonnull %487) #14
  store i32 2, ptr %483, align 8, !tbaa !26
  store i32 1, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %497, align 8, !tbaa !32
  br label %920

768:                                              ; preds = %762, %758, %754, %751, %748
  %769 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %769, ptr %480, align 8, !tbaa !22
  %770 = zext i32 %741 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %769, ptr align 1 %750, i64 %770, i1 false)
  %771 = load i32, ptr %482, align 8, !tbaa !34
  store i32 %771, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %483, align 8, !tbaa !26
  br label %922

772:                                              ; preds = %743, %740, %565
  %773 = load i32, ptr %483, align 8, !tbaa !26
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %1098, label %920

775:                                              ; preds = %535
  %776 = load ptr, ptr %494, align 8, !tbaa !30
  %777 = load i32, ptr %484, align 8, !tbaa !27
  %778 = shl i32 %777, 1
  store i32 0, ptr %489, align 4, !tbaa !17
  %779 = tail call ptr @__errno_location() #17
  store i32 0, ptr %779, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %780

780:                                              ; preds = %800, %775
  %781 = phi i32 [ %801, %800 ], [ 0, %775 ]
  %782 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %778, i32 %781), !nosanitize !20
  %783 = extractvalue { i32, i1 } %782, 1, !nosanitize !20
  br i1 %783, label %784, label %785, !prof !21, !nosanitize !20

784:                                              ; preds = %780
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

785:                                              ; preds = %780
  %786 = extractvalue { i32, i1 } %782, 0, !nosanitize !20
  %787 = call i32 @llvm.umin.i32(i32 %786, i32 1073741824)
  %788 = load i32, ptr %490, align 4, !tbaa !46
  %789 = zext i32 %781 to i64
  %790 = getelementptr inbounds nuw i8, ptr %776, i64 %789
  %791 = zext nneg i32 %787 to i64
  %792 = call i64 @read(i32 noundef %788, ptr noundef %790, i64 noundef %791) #14
  %793 = trunc i64 %792 to i32
  %794 = icmp slt i32 %793, 1
  br i1 %794, label %803, label %795

795:                                              ; preds = %785
  %796 = load i32, ptr %0, align 4, !tbaa !4
  %797 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %796, i32 %793), !nosanitize !20
  %798 = extractvalue { i32, i1 } %797, 1, !nosanitize !20
  br i1 %798, label %799, label %800, !prof !21, !nosanitize !20

799:                                              ; preds = %795
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

800:                                              ; preds = %795
  %801 = extractvalue { i32, i1 } %797, 0, !nosanitize !20
  store i32 %801, ptr %0, align 4, !tbaa !4
  %802 = icmp ult i32 %801, %778
  br i1 %802, label %780, label %817, !llvm.loop !47

803:                                              ; preds = %785
  %804 = icmp slt i32 %793, 0
  br i1 %804, label %805, label %813

805:                                              ; preds = %803
  %806 = load i32, ptr %779, align 4, !tbaa !4
  %807 = icmp eq i32 %806, 11
  br i1 %807, label %808, label %814

808:                                              ; preds = %805
  store i32 1, ptr %489, align 4, !tbaa !17
  %809 = load i32, ptr %0, align 4, !tbaa !4
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %817

811:                                              ; preds = %808
  %812 = load i32, ptr %779, align 4, !tbaa !4
  br label %814

813:                                              ; preds = %803
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %817

814:                                              ; preds = %811, %805
  %815 = phi i32 [ %812, %811 ], [ %806, %805 ]
  %816 = call ptr @strerror(i32 noundef %815) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %816) #14
  br label %933

817:                                              ; preds = %800, %813, %808
  %818 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %818, ptr %480, align 8, !tbaa !22
  br label %1098

819:                                              ; preds = %535
  %820 = load i32, ptr %484, align 8, !tbaa !27
  %821 = shl i32 %820, 1
  store i32 %821, ptr %485, align 8, !tbaa !48
  %822 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %822, ptr %486, align 8, !tbaa !49
  br label %823

823:                                              ; preds = %902, %819
  %824 = phi i32 [ 0, %819 ], [ %887, %902 ]
  %825 = load i32, ptr %482, align 8, !tbaa !34
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %886

827:                                              ; preds = %823
  %828 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %828, label %906 [
    i32 0, label %829
    i32 -5, label %829
  ]

829:                                              ; preds = %827, %827
  %830 = load i32, ptr %481, align 8, !tbaa !24
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %832, label %882

832:                                              ; preds = %829
  %833 = load i32, ptr %484, align 8, !tbaa !27
  %834 = load ptr, ptr %488, align 8, !tbaa !29
  store i32 0, ptr %489, align 4, !tbaa !17
  %835 = tail call ptr @__errno_location() #17
  store i32 0, ptr %835, align 4, !tbaa !4
  br label %836

836:                                              ; preds = %855, %832
  %837 = phi i32 [ 0, %832 ], [ %856, %855 ]
  %838 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %833, i32 %837), !nosanitize !20
  %839 = extractvalue { i32, i1 } %838, 1, !nosanitize !20
  br i1 %839, label %840, label %841, !prof !21, !nosanitize !20

840:                                              ; preds = %836
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

841:                                              ; preds = %836
  %842 = extractvalue { i32, i1 } %838, 0, !nosanitize !20
  %843 = call i32 @llvm.umin.i32(i32 %842, i32 1073741824)
  %844 = load i32, ptr %490, align 4, !tbaa !46
  %845 = zext i32 %837 to i64
  %846 = getelementptr inbounds nuw i8, ptr %834, i64 %845
  %847 = zext nneg i32 %843 to i64
  %848 = call i64 @read(i32 noundef %844, ptr noundef %846, i64 noundef %847) #14
  %849 = trunc i64 %848 to i32
  %850 = icmp slt i32 %849, 1
  br i1 %850, label %858, label %851

851:                                              ; preds = %841
  %852 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %837, i32 %849), !nosanitize !20
  %853 = extractvalue { i32, i1 } %852, 1, !nosanitize !20
  br i1 %853, label %854, label %855, !prof !21, !nosanitize !20

854:                                              ; preds = %851
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

855:                                              ; preds = %851
  %856 = extractvalue { i32, i1 } %852, 0, !nosanitize !20
  %857 = icmp ult i32 %856, %833
  br i1 %857, label %836, label %872, !llvm.loop !47

858:                                              ; preds = %841
  %859 = icmp slt i32 %849, 0
  br i1 %859, label %860, label %867

860:                                              ; preds = %858
  %861 = load i32, ptr %835, align 4, !tbaa !4
  %862 = icmp eq i32 %861, 11
  br i1 %862, label %863, label %868

863:                                              ; preds = %860
  store i32 1, ptr %489, align 4, !tbaa !17
  %864 = icmp eq i32 %837, 0
  br i1 %864, label %865, label %872

865:                                              ; preds = %863
  %866 = load i32, ptr %835, align 4, !tbaa !4
  br label %868

867:                                              ; preds = %858
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %872

868:                                              ; preds = %860, %865
  %869 = phi i32 [ %866, %865 ], [ %861, %860 ]
  %870 = call ptr @strerror(i32 noundef %869) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %870) #14
  %871 = load i32, ptr %9, align 8, !tbaa !16
  br label %906

872:                                              ; preds = %855, %867, %863
  %873 = phi i32 [ %837, %863 ], [ %837, %867 ], [ %856, %855 ]
  %874 = load i32, ptr %482, align 8, !tbaa !34
  %875 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %874, i32 %873), !nosanitize !20
  %876 = extractvalue { i32, i1 } %875, 1, !nosanitize !20
  br i1 %876, label %877, label %878, !prof !21, !nosanitize !20

877:                                              ; preds = %872
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

878:                                              ; preds = %872
  %879 = extractvalue { i32, i1 } %875, 0, !nosanitize !20
  store i32 %879, ptr %482, align 8, !tbaa !34
  %880 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %880, ptr %487, align 8, !tbaa !35
  %881 = icmp eq i32 %879, 0
  br i1 %881, label %882, label %886

882:                                              ; preds = %878, %829
  %883 = load i32, ptr %489, align 4, !tbaa !17
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %906

885:                                              ; preds = %882
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %906

886:                                              ; preds = %878, %823
  %887 = call i32 @inflate(ptr noundef nonnull %487, i32 noundef 0) #14
  %888 = load i32, ptr %485, align 8, !tbaa !48
  %889 = icmp ult i32 %888, %821
  br i1 %889, label %890, label %891

890:                                              ; preds = %886
  store i32 0, ptr %491, align 4, !tbaa !33
  br label %891

891:                                              ; preds = %890, %886
  switch i32 %887, label %902 [
    i32 -2, label %892
    i32 2, label %892
    i32 -4, label %893
    i32 -3, label %894
  ]

892:                                              ; preds = %891, %891
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %906

893:                                              ; preds = %891
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %906

894:                                              ; preds = %891
  %895 = load i32, ptr %491, align 4, !tbaa !33
  %896 = icmp eq i32 %895, 1
  br i1 %896, label %897, label %898

897:                                              ; preds = %894
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %481, align 8, !tbaa !24
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %906

898:                                              ; preds = %894
  %899 = load ptr, ptr %492, align 8, !tbaa !50
  %900 = icmp eq ptr %899, null
  %901 = select i1 %900, ptr @.str.6, ptr %899
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %901) #14
  br label %906

902:                                              ; preds = %891
  %903 = icmp ne i32 %888, 0
  %904 = icmp ne i32 %887, 1
  %905 = select i1 %903, i1 %904, i1 false
  br i1 %905, label %823, label %906, !llvm.loop !51

906:                                              ; preds = %902, %827, %898, %897, %893, %892, %885, %882, %868
  %907 = phi i32 [ %871, %868 ], [ %824, %882 ], [ %824, %885 ], [ %887, %892 ], [ -4, %893 ], [ 0, %897 ], [ -3, %898 ], [ %887, %902 ], [ %828, %827 ]
  %908 = load i32, ptr %485, align 8, !tbaa !48
  %909 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %821, i32 %908), !nosanitize !20
  %910 = extractvalue { i32, i1 } %909, 1, !nosanitize !20
  br i1 %910, label %911, label %912, !prof !21, !nosanitize !20

911:                                              ; preds = %906
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

912:                                              ; preds = %906
  %913 = extractvalue { i32, i1 } %909, 0, !nosanitize !20
  store i32 %913, ptr %0, align 8, !tbaa !19
  %914 = load ptr, ptr %486, align 8, !tbaa !49
  %915 = zext i32 %913 to i64
  %916 = sub nsw i64 0, %915
  %917 = getelementptr inbounds i8, ptr %914, i64 %916
  store ptr %917, ptr %480, align 8, !tbaa !22
  switch i32 %907, label %933 [
    i32 1, label %918
    i32 0, label %920
  ]

918:                                              ; preds = %912
  store i32 0, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %920

919:                                              ; preds = %535
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %933

920:                                              ; preds = %918, %912, %772, %766
  %921 = load i32, ptr %0, align 8, !tbaa !19
  br label %922

922:                                              ; preds = %920, %768
  %923 = phi i32 [ %921, %920 ], [ %771, %768 ]
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %1098

925:                                              ; preds = %922
  %926 = load i32, ptr %481, align 8, !tbaa !24
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %931, label %928

928:                                              ; preds = %925
  %929 = load i32, ptr %482, align 8, !tbaa !34
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %1098, label %931

931:                                              ; preds = %928, %925
  %932 = load i32, ptr %483, align 8, !tbaa !26
  br label %535, !llvm.loop !52

933:                                              ; preds = %912, %570, %919, %814, %728, %556, %551
  %934 = load i32, ptr %0, align 8, !tbaa !19
  %935 = icmp eq i32 %934, 0
  %936 = sext i1 %935 to i32
  br label %1098

937:                                              ; preds = %530
  %938 = icmp eq i32 %528, 1
  br i1 %938, label %939, label %976

939:                                              ; preds = %937
  store i32 0, ptr %489, align 4, !tbaa !17
  %940 = tail call ptr @__errno_location() #17
  store i32 0, ptr %940, align 4, !tbaa !4
  br label %941

941:                                              ; preds = %960, %939
  %942 = phi i32 [ 0, %939 ], [ %961, %960 ]
  %943 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %942), !nosanitize !20
  %944 = extractvalue { i32, i1 } %943, 1, !nosanitize !20
  br i1 %944, label %945, label %946, !prof !21, !nosanitize !20

945:                                              ; preds = %941
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

946:                                              ; preds = %941
  %947 = extractvalue { i32, i1 } %943, 0, !nosanitize !20
  %948 = call i32 @llvm.umin.i32(i32 %947, i32 1073741824)
  %949 = load i32, ptr %490, align 4, !tbaa !46
  %950 = zext i32 %942 to i64
  %951 = getelementptr inbounds nuw i8, ptr %499, i64 %950
  %952 = zext nneg i32 %948 to i64
  %953 = call i64 @read(i32 noundef %949, ptr noundef %951, i64 noundef %952) #14
  %954 = trunc i64 %953 to i32
  %955 = icmp slt i32 %954, 1
  br i1 %955, label %963, label %956

956:                                              ; preds = %946
  %957 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %942, i32 %954), !nosanitize !20
  %958 = extractvalue { i32, i1 } %957, 1, !nosanitize !20
  br i1 %958, label %959, label %960, !prof !21, !nosanitize !20

959:                                              ; preds = %956
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

960:                                              ; preds = %956
  %961 = extractvalue { i32, i1 } %957, 0, !nosanitize !20
  %962 = icmp ult i32 %961, %503
  br i1 %962, label %941, label %1079, !llvm.loop !47

963:                                              ; preds = %946
  %964 = icmp slt i32 %954, 0
  br i1 %964, label %965, label %975

965:                                              ; preds = %963
  %966 = load i32, ptr %940, align 4, !tbaa !4
  %967 = icmp eq i32 %966, 11
  br i1 %967, label %968, label %972

968:                                              ; preds = %965
  store i32 1, ptr %489, align 4, !tbaa !17
  %969 = icmp eq i32 %942, 0
  br i1 %969, label %970, label %1081

970:                                              ; preds = %968
  %971 = load i32, ptr %940, align 4, !tbaa !4
  br label %972

972:                                              ; preds = %970, %965
  %973 = phi i32 [ %971, %970 ], [ %966, %965 ]
  %974 = call ptr @strerror(i32 noundef %973) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %974) #14
  br label %1081

975:                                              ; preds = %963
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %1081

976:                                              ; preds = %937
  store i32 %503, ptr %485, align 8, !tbaa !58
  store ptr %499, ptr %486, align 8, !tbaa !59
  br label %977

977:                                              ; preds = %1056, %976
  %978 = phi i32 [ 0, %976 ], [ %1041, %1056 ]
  %979 = load i32, ptr %482, align 8, !tbaa !34
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %1040

981:                                              ; preds = %977
  %982 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %982, label %1060 [
    i32 0, label %983
    i32 -5, label %983
  ]

983:                                              ; preds = %981, %981
  %984 = load i32, ptr %481, align 8, !tbaa !24
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %1036

986:                                              ; preds = %983
  %987 = load i32, ptr %484, align 8, !tbaa !27
  %988 = load ptr, ptr %488, align 8, !tbaa !29
  store i32 0, ptr %489, align 4, !tbaa !17
  %989 = tail call ptr @__errno_location() #17
  store i32 0, ptr %989, align 4, !tbaa !4
  br label %990

990:                                              ; preds = %1009, %986
  %991 = phi i32 [ 0, %986 ], [ %1010, %1009 ]
  %992 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %987, i32 %991), !nosanitize !20
  %993 = extractvalue { i32, i1 } %992, 1, !nosanitize !20
  br i1 %993, label %994, label %995, !prof !21, !nosanitize !20

994:                                              ; preds = %990
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

995:                                              ; preds = %990
  %996 = extractvalue { i32, i1 } %992, 0, !nosanitize !20
  %997 = call i32 @llvm.umin.i32(i32 %996, i32 1073741824)
  %998 = load i32, ptr %490, align 4, !tbaa !46
  %999 = zext i32 %991 to i64
  %1000 = getelementptr inbounds nuw i8, ptr %988, i64 %999
  %1001 = zext nneg i32 %997 to i64
  %1002 = call i64 @read(i32 noundef %998, ptr noundef %1000, i64 noundef %1001) #14
  %1003 = trunc i64 %1002 to i32
  %1004 = icmp slt i32 %1003, 1
  br i1 %1004, label %1012, label %1005

1005:                                             ; preds = %995
  %1006 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %991, i32 %1003), !nosanitize !20
  %1007 = extractvalue { i32, i1 } %1006, 1, !nosanitize !20
  br i1 %1007, label %1008, label %1009, !prof !21, !nosanitize !20

1008:                                             ; preds = %1005
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1009:                                             ; preds = %1005
  %1010 = extractvalue { i32, i1 } %1006, 0, !nosanitize !20
  %1011 = icmp ult i32 %1010, %987
  br i1 %1011, label %990, label %1026, !llvm.loop !47

1012:                                             ; preds = %995
  %1013 = icmp slt i32 %1003, 0
  br i1 %1013, label %1014, label %1021

1014:                                             ; preds = %1012
  %1015 = load i32, ptr %989, align 4, !tbaa !4
  %1016 = icmp eq i32 %1015, 11
  br i1 %1016, label %1017, label %1022

1017:                                             ; preds = %1014
  store i32 1, ptr %489, align 4, !tbaa !17
  %1018 = icmp eq i32 %991, 0
  br i1 %1018, label %1019, label %1026

1019:                                             ; preds = %1017
  %1020 = load i32, ptr %989, align 4, !tbaa !4
  br label %1022

1021:                                             ; preds = %1012
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %1026

1022:                                             ; preds = %1014, %1019
  %1023 = phi i32 [ %1020, %1019 ], [ %1015, %1014 ]
  %1024 = call ptr @strerror(i32 noundef %1023) #14
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1024) #14
  %1025 = load i32, ptr %9, align 8, !tbaa !16
  br label %1060

1026:                                             ; preds = %1009, %1021, %1017
  %1027 = phi i32 [ %991, %1017 ], [ %991, %1021 ], [ %1010, %1009 ]
  %1028 = load i32, ptr %482, align 8, !tbaa !34
  %1029 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1028, i32 %1027), !nosanitize !20
  %1030 = extractvalue { i32, i1 } %1029, 1, !nosanitize !20
  br i1 %1030, label %1031, label %1032, !prof !21, !nosanitize !20

1031:                                             ; preds = %1026
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1032:                                             ; preds = %1026
  %1033 = extractvalue { i32, i1 } %1029, 0, !nosanitize !20
  store i32 %1033, ptr %482, align 8, !tbaa !34
  %1034 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %1034, ptr %487, align 8, !tbaa !35
  %1035 = icmp eq i32 %1033, 0
  br i1 %1035, label %1036, label %1040

1036:                                             ; preds = %1032, %983
  %1037 = load i32, ptr %489, align 4, !tbaa !17
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1060

1039:                                             ; preds = %1036
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %1060

1040:                                             ; preds = %1032, %977
  %1041 = call i32 @inflate(ptr noundef nonnull %487, i32 noundef 0) #14
  %1042 = load i32, ptr %485, align 8, !tbaa !48
  %1043 = icmp ult i32 %1042, %503
  br i1 %1043, label %1044, label %1045

1044:                                             ; preds = %1040
  store i32 0, ptr %491, align 4, !tbaa !33
  br label %1045

1045:                                             ; preds = %1044, %1040
  switch i32 %1041, label %1056 [
    i32 -2, label %1046
    i32 2, label %1046
    i32 -4, label %1047
    i32 -3, label %1048
  ]

1046:                                             ; preds = %1045, %1045
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %1060

1047:                                             ; preds = %1045
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %1060

1048:                                             ; preds = %1045
  %1049 = load i32, ptr %491, align 4, !tbaa !33
  %1050 = icmp eq i32 %1049, 1
  br i1 %1050, label %1051, label %1052

1051:                                             ; preds = %1048
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %481, align 8, !tbaa !24
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %1060

1052:                                             ; preds = %1048
  %1053 = load ptr, ptr %492, align 8, !tbaa !50
  %1054 = icmp eq ptr %1053, null
  %1055 = select i1 %1054, ptr @.str.6, ptr %1053
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1055) #14
  br label %1060

1056:                                             ; preds = %1045
  %1057 = icmp ne i32 %1042, 0
  %1058 = icmp ne i32 %1041, 1
  %1059 = select i1 %1057, i1 %1058, i1 false
  br i1 %1059, label %977, label %1060, !llvm.loop !51

1060:                                             ; preds = %1056, %981, %1052, %1051, %1047, %1046, %1039, %1036, %1022
  %1061 = phi i32 [ %1025, %1022 ], [ %978, %1036 ], [ %978, %1039 ], [ %1041, %1046 ], [ -4, %1047 ], [ 0, %1051 ], [ -3, %1052 ], [ %982, %981 ], [ %1041, %1056 ]
  %1062 = load i32, ptr %485, align 8, !tbaa !48
  %1063 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %1062), !nosanitize !20
  %1064 = extractvalue { i32, i1 } %1063, 1, !nosanitize !20
  br i1 %1064, label %1065, label %1066, !prof !21, !nosanitize !20

1065:                                             ; preds = %1060
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

1066:                                             ; preds = %1060
  %1067 = extractvalue { i32, i1 } %1063, 0, !nosanitize !20
  %1068 = load ptr, ptr %486, align 8, !tbaa !49
  %1069 = zext i32 %1067 to i64
  %1070 = sub nsw i64 0, %1069
  %1071 = getelementptr inbounds i8, ptr %1068, i64 %1070
  store ptr %1071, ptr %480, align 8, !tbaa !22
  %1072 = icmp eq i32 %1061, 1
  br i1 %1072, label %1073, label %1074

1073:                                             ; preds = %1066
  store i32 0, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %1077

1074:                                             ; preds = %1066
  %1075 = icmp ne i32 %1061, 0
  %1076 = sext i1 %1075 to i32
  br label %1077

1077:                                             ; preds = %1074, %1073
  %1078 = phi i32 [ 0, %1073 ], [ %1076, %1074 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1081

1079:                                             ; preds = %960
  %1080 = zext i32 %961 to i64
  br label %1081

1081:                                             ; preds = %1079, %1077, %975, %972, %968, %516
  %1082 = phi i64 [ %1080, %1079 ], [ %950, %975 ], [ %950, %972 ], [ %950, %968 ], [ %509, %516 ], [ %1069, %1077 ]
  %1083 = phi i32 [ 0, %1079 ], [ 0, %975 ], [ -1, %972 ], [ 0, %968 ], [ %520, %516 ], [ %1078, %1077 ]
  %1084 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %500, i64 %1082), !nosanitize !20
  %1085 = extractvalue { i64, i1 } %1084, 0, !nosanitize !20
  %1086 = extractvalue { i64, i1 } %1084, 1, !nosanitize !20
  br i1 %1086, label %1087, label %1088, !prof !21, !nosanitize !20

1087:                                             ; preds = %1081
  call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

1088:                                             ; preds = %1081
  %1089 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %501, i64 %1082), !nosanitize !20
  %1090 = extractvalue { i64, i1 } %1089, 1, !nosanitize !20
  br i1 %1090, label %1091, label %1092, !prof !21, !nosanitize !20

1091:                                             ; preds = %1088
  call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

1092:                                             ; preds = %1088
  %1093 = extractvalue { i64, i1 } %1089, 0, !nosanitize !20
  %1094 = getelementptr inbounds nuw i8, ptr %499, i64 %1082
  %1095 = load i64, ptr %493, align 8, !tbaa !23
  %1096 = add nsw i64 %1095, %1082
  store i64 %1096, ptr %493, align 8, !tbaa !23
  %1097 = icmp eq i64 %1085, 0
  br i1 %1097, label %1110, label %1098

1098:                                             ; preds = %928, %922, %772, %1092, %933, %817
  %1099 = phi i32 [ %1083, %1092 ], [ %936, %933 ], [ 0, %817 ], [ 0, %772 ], [ 0, %922 ], [ 0, %928 ]
  %1100 = phi i64 [ %1093, %1092 ], [ %501, %933 ], [ %501, %817 ], [ %501, %772 ], [ %501, %922 ], [ %501, %928 ]
  %1101 = phi i64 [ %1085, %1092 ], [ %500, %933 ], [ %500, %817 ], [ %500, %772 ], [ %500, %922 ], [ %500, %928 ]
  %1102 = phi ptr [ %1094, %1092 ], [ %499, %933 ], [ %499, %817 ], [ %499, %772 ], [ %499, %922 ], [ %499, %928 ]
  %1103 = icmp eq i32 %1099, 0
  br i1 %1103, label %498, label %1104, !llvm.loop !60

1104:                                             ; preds = %1098
  %1105 = load i32, ptr %481, align 8, !tbaa !24
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1110, label %1107

1107:                                             ; preds = %524, %1104
  %1108 = phi i64 [ %1100, %1104 ], [ %501, %524 ]
  %1109 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1109, align 4, !tbaa !61
  br label %1110

1110:                                             ; preds = %1092, %1107, %1104
  %1111 = phi i64 [ %1100, %1104 ], [ %1108, %1107 ], [ %1093, %1092 ]
  %1112 = freeze i64 %1111
  %1113 = icmp eq i64 %1112, 0
  %1114 = load i8, ptr %2, align 1
  %1115 = zext i8 %1114 to i32
  br i1 %1113, label %1116, label %1117

1116:                                             ; preds = %454, %112, %1110, %461, %356, %270, %98, %93
  br label %1117

1117:                                             ; preds = %1, %4, %11, %18, %1110, %1116
  %1118 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %27, %18 ], [ -1, %11 ], [ -1, %1116 ], [ %1115, %1110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret i32 %1118
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %794, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %794

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
  tail call void @free(ptr noundef %29) #14
  tail call void @free(ptr noundef %24) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %270

35:                                               ; preds = %20
  %36 = load i32, ptr %21, align 4, !tbaa !28
  store i32 %36, ptr %17, align 8, !tbaa !27
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %38, align 8, !tbaa !25
  store ptr null, ptr %16, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %39 = tail call i32 @inflateInit2_(ptr noundef nonnull %16, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %30, align 8, !tbaa !30
  tail call void @free(ptr noundef %42) #14
  %43 = load ptr, ptr %25, align 8, !tbaa !29
  tail call void @free(ptr noundef %43) #14
  store i32 0, ptr %17, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #14
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
  %53 = tail call i32 @inflateReset(ptr noundef nonnull %16) #14
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

105:                                              ; preds = %82, %103
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

121:                                              ; preds = %74, %103, %119
  %122 = phi ptr [ %71, %74 ], [ %87, %103 ], [ %108, %119 ]
  %123 = phi ptr [ %72, %74 ], [ %88, %103 ], [ %109, %119 ]
  %124 = phi i32 [ %66, %74 ], [ %90, %103 ], [ %111, %119 ]
  %125 = add i32 %124, -1
  %126 = and i32 %124, 7
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %121, %128
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

144:                                              ; preds = %139, %144
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

174:                                              ; preds = %139, %144, %119, %101
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
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
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
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

196:                                              ; preds = %191
  %197 = extractvalue { i32, i1 } %193, 0, !nosanitize !20
  %198 = tail call i32 @llvm.umin.i32(i32 %197, i32 1073741824)
  %199 = load i32, ptr %190, align 4, !tbaa !46
  %200 = zext i32 %192 to i64
  %201 = getelementptr inbounds nuw i8, ptr %187, i64 %200
  %202 = zext nneg i32 %198 to i64
  %203 = tail call i64 @read(i32 noundef %199, ptr noundef %201, i64 noundef %202) #14
  %204 = trunc i64 %203 to i32
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %213, label %206

206:                                              ; preds = %196
  %207 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %192, i32 %204), !nosanitize !20
  %208 = extractvalue { i32, i1 } %207, 1, !nosanitize !20
  br i1 %208, label %209, label %210, !prof !21, !nosanitize !20

209:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
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
  %225 = tail call ptr @strerror(i32 noundef %224) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %225) #14
  br label %270

226:                                              ; preds = %210, %222, %218
  %227 = phi i32 [ %192, %218 ], [ %192, %222 ], [ %211, %210 ]
  %228 = load i32, ptr %65, align 8, !tbaa !34
  %229 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 %227), !nosanitize !20
  %230 = extractvalue { i32, i1 } %229, 1, !nosanitize !20
  br i1 %230, label %231, label %232, !prof !21, !nosanitize !20

231:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
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
  %263 = tail call i32 @inflateReset(ptr noundef nonnull %16) #14
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
  br i1 %276, label %794, label %277

277:                                              ; preds = %270, %270, %273
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #14
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %279 = load i64, ptr %278, align 8, !tbaa !18
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %729, label %281

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

299:                                              ; preds = %724, %281
  %300 = phi i64 [ %725, %724 ], [ %279, %281 ]
  %301 = load i32, ptr %1, align 8, !tbaa !19
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %318, label %303

303:                                              ; preds = %299
  %304 = zext i32 %301 to i64
  %305 = tail call i64 @llvm.smin.i64(i64 %300, i64 %304)
  %306 = trunc i64 %305 to i32
  %307 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %301, i32 %306), !nosanitize !20
  %308 = extractvalue { i32, i1 } %307, 1, !nosanitize !20
  br i1 %308, label %309, label %310, !prof !21, !nosanitize !20

309:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

310:                                              ; preds = %303
  %311 = extractvalue { i32, i1 } %307, 0, !nosanitize !20
  store i32 %311, ptr %1, align 8, !tbaa !19
  %312 = load ptr, ptr %282, align 8, !tbaa !22
  %313 = and i64 %305, 4294967295
  %314 = getelementptr inbounds nuw i8, ptr %312, i64 %313
  store ptr %314, ptr %282, align 8, !tbaa !22
  %315 = load i64, ptr %283, align 8, !tbaa !23
  %316 = add nsw i64 %315, %313
  store i64 %316, ptr %283, align 8, !tbaa !23
  %317 = sub nsw i64 %300, %313
  store i64 %317, ptr %278, align 8, !tbaa !18
  br label %724

318:                                              ; preds = %299
  %319 = load i32, ptr %284, align 8, !tbaa !24
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %318
  %322 = load i32, ptr %285, align 8, !tbaa !25
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %727, label %324

324:                                              ; preds = %321, %318
  br label %325

325:                                              ; preds = %721, %324
  %326 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %326, label %709 [
    i32 0, label %327
    i32 1, label %565
    i32 2, label %609
  ]

327:                                              ; preds = %325
  %328 = load i32, ptr %286, align 8, !tbaa !27
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %349

330:                                              ; preds = %327
  %331 = load i32, ptr %296, align 4, !tbaa !28
  %332 = zext i32 %331 to i64
  %333 = tail call noalias ptr @malloc(i64 noundef %332) #16
  store ptr %333, ptr %291, align 8, !tbaa !29
  %334 = load i32, ptr %296, align 4, !tbaa !28
  %335 = shl i32 %334, 1
  %336 = zext i32 %335 to i64
  %337 = tail call noalias ptr @malloc(i64 noundef %336) #16
  store ptr %337, ptr %288, align 8, !tbaa !30
  %338 = icmp eq ptr %333, null
  %339 = icmp eq ptr %337, null
  %340 = or i1 %338, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %330
  tail call void @free(ptr noundef %337) #14
  tail call void @free(ptr noundef %333) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %794

342:                                              ; preds = %330
  %343 = load i32, ptr %296, align 4, !tbaa !28
  store i32 %343, ptr %286, align 8, !tbaa !27
  store i32 0, ptr %285, align 8, !tbaa !25
  store ptr null, ptr %290, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %297, i8 0, i64 24, i1 false)
  %344 = tail call i32 @inflateInit2_(ptr noundef nonnull %290, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %342
  %347 = load ptr, ptr %288, align 8, !tbaa !30
  tail call void @free(ptr noundef %347) #14
  %348 = load ptr, ptr %291, align 8, !tbaa !29
  tail call void @free(ptr noundef %348) #14
  store i32 0, ptr %286, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %794

349:                                              ; preds = %342, %327
  %350 = load i32, ptr %298, align 8, !tbaa !32
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = load i32, ptr %294, align 4, !tbaa !33
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %352, %349
  %356 = tail call i32 @inflateReset(ptr noundef nonnull %290) #14
  store i32 2, ptr %9, align 8, !tbaa !26
  %357 = load i32, ptr %294, align 4, !tbaa !33
  %358 = icmp ne i32 %357, -1
  %359 = zext i1 %358 to i32
  store i32 %359, ptr %294, align 4, !tbaa !33
  store i32 0, ptr %298, align 8, !tbaa !32
  br label %562

360:                                              ; preds = %352
  %361 = load i32, ptr %271, align 8, !tbaa !16
  switch i32 %361, label %794 [
    i32 0, label %362
    i32 -5, label %362
  ]

362:                                              ; preds = %360, %360
  %363 = load i32, ptr %284, align 8, !tbaa !24
  %364 = icmp eq i32 %363, 0
  %365 = load i32, ptr %285, align 8, !tbaa !34
  br i1 %364, label %366, label %530

366:                                              ; preds = %362
  %367 = icmp eq i32 %365, 0
  br i1 %367, label %474, label %368

368:                                              ; preds = %366
  %369 = load ptr, ptr %291, align 8, !tbaa !29
  %370 = load ptr, ptr %290, align 8, !tbaa !35
  %371 = icmp eq ptr %370, %369
  br i1 %371, label %474, label %372

372:                                              ; preds = %368
  %373 = ptrtoaddr ptr %370 to i64
  %374 = ptrtoaddr ptr %369 to i64
  %375 = zext i32 %365 to i64
  %376 = icmp ult i32 %365, 4
  %377 = sub i64 %374, %373
  %378 = icmp ult i64 %377, 32
  %379 = or i1 %376, %378
  br i1 %379, label %419, label %380

380:                                              ; preds = %372
  %381 = icmp ult i32 %365, 32
  br i1 %381, label %403, label %382

382:                                              ; preds = %380
  %383 = and i64 %375, 28
  %384 = and i64 %375, 4294967264
  %385 = getelementptr i8, ptr %369, i64 %384
  %386 = getelementptr i8, ptr %370, i64 %384
  %387 = trunc nuw i64 %384 to i32
  %388 = sub i32 %365, %387
  br label %389

389:                                              ; preds = %389, %382
  %390 = phi i64 [ 0, %382 ], [ %397, %389 ]
  %391 = getelementptr i8, ptr %369, i64 %390
  %392 = getelementptr i8, ptr %370, i64 %390
  %393 = getelementptr i8, ptr %392, i64 16
  %394 = load <16 x i8>, ptr %392, align 1, !tbaa !36
  %395 = load <16 x i8>, ptr %393, align 1, !tbaa !36
  %396 = getelementptr i8, ptr %391, i64 16
  store <16 x i8> %394, ptr %391, align 1, !tbaa !36
  store <16 x i8> %395, ptr %396, align 1, !tbaa !36
  %397 = add nuw i64 %390, 32
  %398 = icmp eq i64 %397, %384
  br i1 %398, label %399, label %389, !llvm.loop !90

399:                                              ; preds = %389
  %400 = icmp eq i64 %384, %375
  br i1 %400, label %472, label %401

401:                                              ; preds = %399
  %402 = icmp eq i64 %383, 0
  br i1 %402, label %419, label %403, !prof !41

403:                                              ; preds = %380, %401
  %404 = phi i64 [ %384, %401 ], [ 0, %380 ]
  %405 = and i64 %375, 4294967292
  %406 = getelementptr i8, ptr %369, i64 %405
  %407 = getelementptr i8, ptr %370, i64 %405
  %408 = trunc nuw i64 %405 to i32
  %409 = sub i32 %365, %408
  br label %410

410:                                              ; preds = %410, %403
  %411 = phi i64 [ %404, %403 ], [ %415, %410 ]
  %412 = getelementptr i8, ptr %369, i64 %411
  %413 = getelementptr i8, ptr %370, i64 %411
  %414 = load <4 x i8>, ptr %413, align 1, !tbaa !36
  store <4 x i8> %414, ptr %412, align 1, !tbaa !36
  %415 = add nuw i64 %411, 4
  %416 = icmp eq i64 %415, %405
  br i1 %416, label %417, label %410, !llvm.loop !91

417:                                              ; preds = %410
  %418 = icmp eq i64 %405, %375
  br i1 %418, label %472, label %419

419:                                              ; preds = %372, %401, %417
  %420 = phi ptr [ %369, %372 ], [ %385, %401 ], [ %406, %417 ]
  %421 = phi ptr [ %370, %372 ], [ %386, %401 ], [ %407, %417 ]
  %422 = phi i32 [ %365, %372 ], [ %388, %401 ], [ %409, %417 ]
  %423 = add i32 %422, -1
  %424 = and i32 %422, 7
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %437, label %426

426:                                              ; preds = %419, %426
  %427 = phi ptr [ %433, %426 ], [ %420, %419 ]
  %428 = phi ptr [ %434, %426 ], [ %421, %419 ]
  %429 = phi i32 [ %432, %426 ], [ %422, %419 ]
  %430 = phi i32 [ %435, %426 ], [ 0, %419 ]
  %431 = load i8, ptr %428, align 1, !tbaa !36
  store i8 %431, ptr %427, align 1, !tbaa !36
  %432 = add i32 %429, -1
  %433 = getelementptr inbounds nuw i8, ptr %427, i64 1
  %434 = getelementptr inbounds nuw i8, ptr %428, i64 1
  %435 = add i32 %430, 1
  %436 = icmp eq i32 %435, %424
  br i1 %436, label %437, label %426, !llvm.loop !92

437:                                              ; preds = %426, %419
  %438 = phi ptr [ %420, %419 ], [ %433, %426 ]
  %439 = phi ptr [ %421, %419 ], [ %434, %426 ]
  %440 = phi i32 [ %422, %419 ], [ %432, %426 ]
  %441 = icmp ult i32 %423, 7
  br i1 %441, label %472, label %442

442:                                              ; preds = %437, %442
  %443 = phi ptr [ %469, %442 ], [ %438, %437 ]
  %444 = phi ptr [ %470, %442 ], [ %439, %437 ]
  %445 = phi i32 [ %468, %442 ], [ %440, %437 ]
  %446 = load i8, ptr %444, align 1, !tbaa !36
  store i8 %446, ptr %443, align 1, !tbaa !36
  %447 = getelementptr inbounds nuw i8, ptr %443, i64 1
  %448 = getelementptr inbounds nuw i8, ptr %444, i64 1
  %449 = load i8, ptr %448, align 1, !tbaa !36
  store i8 %449, ptr %447, align 1, !tbaa !36
  %450 = getelementptr inbounds nuw i8, ptr %443, i64 2
  %451 = getelementptr inbounds nuw i8, ptr %444, i64 2
  %452 = load i8, ptr %451, align 1, !tbaa !36
  store i8 %452, ptr %450, align 1, !tbaa !36
  %453 = getelementptr inbounds nuw i8, ptr %443, i64 3
  %454 = getelementptr inbounds nuw i8, ptr %444, i64 3
  %455 = load i8, ptr %454, align 1, !tbaa !36
  store i8 %455, ptr %453, align 1, !tbaa !36
  %456 = getelementptr inbounds nuw i8, ptr %443, i64 4
  %457 = getelementptr inbounds nuw i8, ptr %444, i64 4
  %458 = load i8, ptr %457, align 1, !tbaa !36
  store i8 %458, ptr %456, align 1, !tbaa !36
  %459 = getelementptr inbounds nuw i8, ptr %443, i64 5
  %460 = getelementptr inbounds nuw i8, ptr %444, i64 5
  %461 = load i8, ptr %460, align 1, !tbaa !36
  store i8 %461, ptr %459, align 1, !tbaa !36
  %462 = getelementptr inbounds nuw i8, ptr %443, i64 6
  %463 = getelementptr inbounds nuw i8, ptr %444, i64 6
  %464 = load i8, ptr %463, align 1, !tbaa !36
  store i8 %464, ptr %462, align 1, !tbaa !36
  %465 = getelementptr inbounds nuw i8, ptr %443, i64 7
  %466 = getelementptr inbounds nuw i8, ptr %444, i64 7
  %467 = load i8, ptr %466, align 1, !tbaa !36
  store i8 %467, ptr %465, align 1, !tbaa !36
  %468 = add i32 %445, -8
  %469 = getelementptr inbounds nuw i8, ptr %443, i64 8
  %470 = getelementptr inbounds nuw i8, ptr %444, i64 8
  %471 = icmp eq i32 %468, 0
  br i1 %471, label %472, label %442, !llvm.loop !93

472:                                              ; preds = %437, %442, %417, %399
  %473 = load i32, ptr %285, align 8, !tbaa !34
  br label %474

474:                                              ; preds = %472, %368, %366
  %475 = phi i32 [ %473, %472 ], [ %365, %368 ], [ 0, %366 ]
  %476 = load i32, ptr %286, align 8, !tbaa !27
  %477 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %476, i32 %475), !nosanitize !20
  %478 = extractvalue { i32, i1 } %477, 1, !nosanitize !20
  br i1 %478, label %479, label %480, !prof !21, !nosanitize !20

479:                                              ; preds = %474
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

480:                                              ; preds = %474
  %481 = extractvalue { i32, i1 } %477, 0, !nosanitize !20
  %482 = load ptr, ptr %291, align 8, !tbaa !29
  %483 = zext i32 %475 to i64
  %484 = getelementptr inbounds nuw i8, ptr %482, i64 %483
  store i32 0, ptr %292, align 4, !tbaa !17
  %485 = tail call ptr @__errno_location() #17
  store i32 0, ptr %485, align 4, !tbaa !4
  br label %486

486:                                              ; preds = %505, %480
  %487 = phi i32 [ 0, %480 ], [ %506, %505 ]
  %488 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %481, i32 %487), !nosanitize !20
  %489 = extractvalue { i32, i1 } %488, 1, !nosanitize !20
  br i1 %489, label %490, label %491, !prof !21, !nosanitize !20

490:                                              ; preds = %486
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

491:                                              ; preds = %486
  %492 = extractvalue { i32, i1 } %488, 0, !nosanitize !20
  %493 = tail call i32 @llvm.umin.i32(i32 %492, i32 1073741824)
  %494 = load i32, ptr %293, align 4, !tbaa !46
  %495 = zext i32 %487 to i64
  %496 = getelementptr inbounds nuw i8, ptr %484, i64 %495
  %497 = zext nneg i32 %493 to i64
  %498 = tail call i64 @read(i32 noundef %494, ptr noundef %496, i64 noundef %497) #14
  %499 = trunc i64 %498 to i32
  %500 = icmp slt i32 %499, 1
  br i1 %500, label %508, label %501

501:                                              ; preds = %491
  %502 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %487, i32 %499), !nosanitize !20
  %503 = extractvalue { i32, i1 } %502, 1, !nosanitize !20
  br i1 %503, label %504, label %505, !prof !21, !nosanitize !20

504:                                              ; preds = %501
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

505:                                              ; preds = %501
  %506 = extractvalue { i32, i1 } %502, 0, !nosanitize !20
  %507 = icmp ult i32 %506, %481
  br i1 %507, label %486, label %521, !llvm.loop !47

508:                                              ; preds = %491
  %509 = icmp slt i32 %499, 0
  br i1 %509, label %510, label %517

510:                                              ; preds = %508
  %511 = load i32, ptr %485, align 4, !tbaa !4
  %512 = icmp eq i32 %511, 11
  br i1 %512, label %513, label %518

513:                                              ; preds = %510
  store i32 1, ptr %292, align 4, !tbaa !17
  %514 = icmp eq i32 %487, 0
  br i1 %514, label %515, label %521

515:                                              ; preds = %513
  %516 = load i32, ptr %485, align 4, !tbaa !4
  br label %518

517:                                              ; preds = %508
  store i32 1, ptr %284, align 8, !tbaa !24
  br label %521

518:                                              ; preds = %510, %515
  %519 = phi i32 [ %516, %515 ], [ %511, %510 ]
  %520 = tail call ptr @strerror(i32 noundef %519) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %520) #14
  br label %794

521:                                              ; preds = %505, %517, %513
  %522 = phi i32 [ %487, %513 ], [ %487, %517 ], [ %506, %505 ]
  %523 = load i32, ptr %285, align 8, !tbaa !34
  %524 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %523, i32 %522), !nosanitize !20
  %525 = extractvalue { i32, i1 } %524, 1, !nosanitize !20
  br i1 %525, label %526, label %527, !prof !21, !nosanitize !20

526:                                              ; preds = %521
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

527:                                              ; preds = %521
  %528 = extractvalue { i32, i1 } %524, 0, !nosanitize !20
  store i32 %528, ptr %285, align 8, !tbaa !34
  %529 = load ptr, ptr %291, align 8, !tbaa !29
  store ptr %529, ptr %290, align 8, !tbaa !35
  br label %530

530:                                              ; preds = %527, %362
  %531 = phi i32 [ %528, %527 ], [ %365, %362 ]
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %562, label %533

533:                                              ; preds = %530
  %534 = load i32, ptr %292, align 4, !tbaa !17
  %535 = icmp ne i32 %534, 0
  %536 = icmp ult i32 %531, 4
  %537 = and i1 %536, %535
  br i1 %537, label %562, label %538

538:                                              ; preds = %533
  %539 = icmp ugt i32 %531, 3
  %540 = load ptr, ptr %290, align 8, !tbaa !35
  br i1 %539, label %541, label %558

541:                                              ; preds = %538
  %542 = load i8, ptr %540, align 1, !tbaa !36
  %543 = icmp eq i8 %542, 31
  br i1 %543, label %544, label %558

544:                                              ; preds = %541
  %545 = getelementptr inbounds nuw i8, ptr %540, i64 1
  %546 = load i8, ptr %545, align 1, !tbaa !36
  %547 = icmp eq i8 %546, -117
  br i1 %547, label %548, label %558

548:                                              ; preds = %544
  %549 = getelementptr inbounds nuw i8, ptr %540, i64 2
  %550 = load i8, ptr %549, align 1, !tbaa !36
  %551 = icmp eq i8 %550, 8
  br i1 %551, label %552, label %558

552:                                              ; preds = %548
  %553 = getelementptr inbounds nuw i8, ptr %540, i64 3
  %554 = load i8, ptr %553, align 1, !tbaa !36
  %555 = icmp ult i8 %554, 32
  br i1 %555, label %556, label %558

556:                                              ; preds = %552
  %557 = tail call i32 @inflateReset(ptr noundef nonnull %290) #14
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %294, align 4, !tbaa !33
  store i32 0, ptr %298, align 8, !tbaa !32
  br label %710

558:                                              ; preds = %552, %548, %544, %541, %538
  %559 = load ptr, ptr %288, align 8, !tbaa !30
  store ptr %559, ptr %282, align 8, !tbaa !22
  %560 = zext i32 %531 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %559, ptr align 1 %540, i64 %560, i1 false)
  %561 = load i32, ptr %285, align 8, !tbaa !34
  store i32 %561, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %285, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %712

562:                                              ; preds = %533, %530, %355
  %563 = load i32, ptr %9, align 8, !tbaa !26
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %722, label %710

565:                                              ; preds = %325
  %566 = load ptr, ptr %288, align 8, !tbaa !30
  %567 = load i32, ptr %286, align 8, !tbaa !27
  %568 = shl i32 %567, 1
  store i32 0, ptr %292, align 4, !tbaa !17
  %569 = tail call ptr @__errno_location() #17
  store i32 0, ptr %569, align 4, !tbaa !4
  store i32 0, ptr %1, align 8, !tbaa !4
  br label %570

570:                                              ; preds = %590, %565
  %571 = phi i32 [ %591, %590 ], [ 0, %565 ]
  %572 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %568, i32 %571), !nosanitize !20
  %573 = extractvalue { i32, i1 } %572, 1, !nosanitize !20
  br i1 %573, label %574, label %575, !prof !21, !nosanitize !20

574:                                              ; preds = %570
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

575:                                              ; preds = %570
  %576 = extractvalue { i32, i1 } %572, 0, !nosanitize !20
  %577 = tail call i32 @llvm.umin.i32(i32 %576, i32 1073741824)
  %578 = load i32, ptr %293, align 4, !tbaa !46
  %579 = zext i32 %571 to i64
  %580 = getelementptr inbounds nuw i8, ptr %566, i64 %579
  %581 = zext nneg i32 %577 to i64
  %582 = tail call i64 @read(i32 noundef %578, ptr noundef %580, i64 noundef %581) #14
  %583 = trunc i64 %582 to i32
  %584 = icmp slt i32 %583, 1
  br i1 %584, label %593, label %585

585:                                              ; preds = %575
  %586 = load i32, ptr %1, align 4, !tbaa !4
  %587 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %586, i32 %583), !nosanitize !20
  %588 = extractvalue { i32, i1 } %587, 1, !nosanitize !20
  br i1 %588, label %589, label %590, !prof !21, !nosanitize !20

589:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

590:                                              ; preds = %585
  %591 = extractvalue { i32, i1 } %587, 0, !nosanitize !20
  store i32 %591, ptr %1, align 4, !tbaa !4
  %592 = icmp ult i32 %591, %568
  br i1 %592, label %570, label %607, !llvm.loop !47

593:                                              ; preds = %575
  %594 = icmp slt i32 %583, 0
  br i1 %594, label %595, label %603

595:                                              ; preds = %593
  %596 = load i32, ptr %569, align 4, !tbaa !4
  %597 = icmp eq i32 %596, 11
  br i1 %597, label %598, label %604

598:                                              ; preds = %595
  store i32 1, ptr %292, align 4, !tbaa !17
  %599 = load i32, ptr %1, align 4, !tbaa !4
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %607

601:                                              ; preds = %598
  %602 = load i32, ptr %569, align 4, !tbaa !4
  br label %604

603:                                              ; preds = %593
  store i32 1, ptr %284, align 8, !tbaa !24
  br label %607

604:                                              ; preds = %595, %601
  %605 = phi i32 [ %602, %601 ], [ %596, %595 ]
  %606 = tail call ptr @strerror(i32 noundef %605) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %606) #14
  br label %794

607:                                              ; preds = %590, %603, %598
  %608 = load ptr, ptr %288, align 8, !tbaa !30
  store ptr %608, ptr %282, align 8, !tbaa !22
  br label %722

609:                                              ; preds = %325
  %610 = load i32, ptr %286, align 8, !tbaa !27
  %611 = shl i32 %610, 1
  store i32 %611, ptr %287, align 8, !tbaa !48
  %612 = load ptr, ptr %288, align 8, !tbaa !30
  store ptr %612, ptr %289, align 8, !tbaa !49
  br label %613

613:                                              ; preds = %692, %609
  %614 = phi i32 [ 0, %609 ], [ %677, %692 ]
  %615 = load i32, ptr %285, align 8, !tbaa !34
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %676

617:                                              ; preds = %613
  %618 = load i32, ptr %271, align 8, !tbaa !16
  switch i32 %618, label %696 [
    i32 0, label %619
    i32 -5, label %619
  ]

619:                                              ; preds = %617, %617
  %620 = load i32, ptr %284, align 8, !tbaa !24
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %672

622:                                              ; preds = %619
  %623 = load i32, ptr %286, align 8, !tbaa !27
  %624 = load ptr, ptr %291, align 8, !tbaa !29
  store i32 0, ptr %292, align 4, !tbaa !17
  %625 = tail call ptr @__errno_location() #17
  store i32 0, ptr %625, align 4, !tbaa !4
  br label %626

626:                                              ; preds = %645, %622
  %627 = phi i32 [ 0, %622 ], [ %646, %645 ]
  %628 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %623, i32 %627), !nosanitize !20
  %629 = extractvalue { i32, i1 } %628, 1, !nosanitize !20
  br i1 %629, label %630, label %631, !prof !21, !nosanitize !20

630:                                              ; preds = %626
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

631:                                              ; preds = %626
  %632 = extractvalue { i32, i1 } %628, 0, !nosanitize !20
  %633 = tail call i32 @llvm.umin.i32(i32 %632, i32 1073741824)
  %634 = load i32, ptr %293, align 4, !tbaa !46
  %635 = zext i32 %627 to i64
  %636 = getelementptr inbounds nuw i8, ptr %624, i64 %635
  %637 = zext nneg i32 %633 to i64
  %638 = tail call i64 @read(i32 noundef %634, ptr noundef %636, i64 noundef %637) #14
  %639 = trunc i64 %638 to i32
  %640 = icmp slt i32 %639, 1
  br i1 %640, label %648, label %641

641:                                              ; preds = %631
  %642 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %627, i32 %639), !nosanitize !20
  %643 = extractvalue { i32, i1 } %642, 1, !nosanitize !20
  br i1 %643, label %644, label %645, !prof !21, !nosanitize !20

644:                                              ; preds = %641
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

645:                                              ; preds = %641
  %646 = extractvalue { i32, i1 } %642, 0, !nosanitize !20
  %647 = icmp ult i32 %646, %623
  br i1 %647, label %626, label %662, !llvm.loop !47

648:                                              ; preds = %631
  %649 = icmp slt i32 %639, 0
  br i1 %649, label %650, label %657

650:                                              ; preds = %648
  %651 = load i32, ptr %625, align 4, !tbaa !4
  %652 = icmp eq i32 %651, 11
  br i1 %652, label %653, label %658

653:                                              ; preds = %650
  store i32 1, ptr %292, align 4, !tbaa !17
  %654 = icmp eq i32 %627, 0
  br i1 %654, label %655, label %662

655:                                              ; preds = %653
  %656 = load i32, ptr %625, align 4, !tbaa !4
  br label %658

657:                                              ; preds = %648
  store i32 1, ptr %284, align 8, !tbaa !24
  br label %662

658:                                              ; preds = %650, %655
  %659 = phi i32 [ %656, %655 ], [ %651, %650 ]
  %660 = tail call ptr @strerror(i32 noundef %659) #14
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %660) #14
  %661 = load i32, ptr %271, align 8, !tbaa !16
  br label %696

662:                                              ; preds = %645, %657, %653
  %663 = phi i32 [ %627, %653 ], [ %627, %657 ], [ %646, %645 ]
  %664 = load i32, ptr %285, align 8, !tbaa !34
  %665 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %664, i32 %663), !nosanitize !20
  %666 = extractvalue { i32, i1 } %665, 1, !nosanitize !20
  br i1 %666, label %667, label %668, !prof !21, !nosanitize !20

667:                                              ; preds = %662
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

668:                                              ; preds = %662
  %669 = extractvalue { i32, i1 } %665, 0, !nosanitize !20
  store i32 %669, ptr %285, align 8, !tbaa !34
  %670 = load ptr, ptr %291, align 8, !tbaa !29
  store ptr %670, ptr %290, align 8, !tbaa !35
  %671 = icmp eq i32 %669, 0
  br i1 %671, label %672, label %676

672:                                              ; preds = %668, %619
  %673 = load i32, ptr %292, align 4, !tbaa !17
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %696

675:                                              ; preds = %672
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %696

676:                                              ; preds = %668, %613
  %677 = tail call i32 @inflate(ptr noundef nonnull %290, i32 noundef 0) #14
  %678 = load i32, ptr %287, align 8, !tbaa !48
  %679 = icmp ult i32 %678, %611
  br i1 %679, label %680, label %681

680:                                              ; preds = %676
  store i32 0, ptr %294, align 4, !tbaa !33
  br label %681

681:                                              ; preds = %680, %676
  switch i32 %677, label %692 [
    i32 -2, label %682
    i32 2, label %682
    i32 -4, label %683
    i32 -3, label %684
  ]

682:                                              ; preds = %681, %681
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %696

683:                                              ; preds = %681
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %696

684:                                              ; preds = %681
  %685 = load i32, ptr %294, align 4, !tbaa !33
  %686 = icmp eq i32 %685, 1
  br i1 %686, label %687, label %688

687:                                              ; preds = %684
  store i32 0, ptr %285, align 8, !tbaa !34
  store i32 1, ptr %284, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %696

688:                                              ; preds = %684
  %689 = load ptr, ptr %295, align 8, !tbaa !50
  %690 = icmp eq ptr %689, null
  %691 = select i1 %690, ptr @.str.6, ptr %689
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %691) #14
  br label %696

692:                                              ; preds = %681
  %693 = icmp ne i32 %678, 0
  %694 = icmp ne i32 %677, 1
  %695 = select i1 %693, i1 %694, i1 false
  br i1 %695, label %613, label %696, !llvm.loop !51

696:                                              ; preds = %692, %617, %688, %687, %683, %682, %675, %672, %658
  %697 = phi i32 [ %661, %658 ], [ %614, %672 ], [ %614, %675 ], [ %677, %682 ], [ -4, %683 ], [ 0, %687 ], [ -3, %688 ], [ %618, %617 ], [ %677, %692 ]
  %698 = load i32, ptr %287, align 8, !tbaa !48
  %699 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %611, i32 %698), !nosanitize !20
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !20
  br i1 %700, label %701, label %702, !prof !21, !nosanitize !20

701:                                              ; preds = %696
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

702:                                              ; preds = %696
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !20
  store i32 %703, ptr %1, align 8, !tbaa !19
  %704 = load ptr, ptr %289, align 8, !tbaa !49
  %705 = zext i32 %703 to i64
  %706 = sub nsw i64 0, %705
  %707 = getelementptr inbounds i8, ptr %704, i64 %706
  store ptr %707, ptr %282, align 8, !tbaa !22
  switch i32 %697, label %794 [
    i32 1, label %708
    i32 0, label %710
  ]

708:                                              ; preds = %702
  store i32 0, ptr %294, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %710

709:                                              ; preds = %325
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %794

710:                                              ; preds = %708, %702, %562, %556
  %711 = load i32, ptr %1, align 8, !tbaa !19
  br label %712

712:                                              ; preds = %710, %558
  %713 = phi i32 [ %711, %710 ], [ %561, %558 ]
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %722

715:                                              ; preds = %712
  %716 = load i32, ptr %284, align 8, !tbaa !24
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %721, label %718

718:                                              ; preds = %715
  %719 = load i32, ptr %285, align 8, !tbaa !34
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %722, label %721

721:                                              ; preds = %718, %715
  br label %325, !llvm.loop !52

722:                                              ; preds = %718, %712, %562, %607
  %723 = load i64, ptr %278, align 8, !tbaa !18
  br label %724

724:                                              ; preds = %722, %310
  %725 = phi i64 [ %723, %722 ], [ %317, %310 ]
  %726 = icmp eq i64 %725, 0
  br i1 %726, label %727, label %299, !llvm.loop !53

727:                                              ; preds = %321, %724
  %728 = icmp slt i32 %0, 0
  br i1 %728, label %794, label %731

729:                                              ; preds = %277
  %730 = icmp slt i32 %0, 0
  br i1 %730, label %794, label %731

731:                                              ; preds = %727, %729
  %732 = load i32, ptr %1, align 8, !tbaa !19
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %734, label %749

734:                                              ; preds = %731
  store i32 1, ptr %1, align 8, !tbaa !19
  %735 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %736 = load ptr, ptr %735, align 8, !tbaa !30
  %737 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %738 = load i32, ptr %737, align 8, !tbaa !27
  %739 = shl i32 %738, 1
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds nuw i8, ptr %736, i64 %740
  %742 = getelementptr inbounds i8, ptr %741, i64 -1
  %743 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %742, ptr %743, align 8, !tbaa !22
  %744 = trunc i32 %0 to i8
  store i8 %744, ptr %742, align 1, !tbaa !36
  %745 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %746 = load i64, ptr %745, align 8, !tbaa !23
  %747 = add nsw i64 %746, -1
  store i64 %747, ptr %745, align 8, !tbaa !23
  %748 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %748, align 4, !tbaa !61
  br label %794

749:                                              ; preds = %731
  %750 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %751 = load i32, ptr %750, align 8, !tbaa !27
  %752 = shl i32 %751, 1
  %753 = icmp eq i32 %732, %752
  br i1 %753, label %754, label %755

754:                                              ; preds = %749
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #14
  br label %794

755:                                              ; preds = %749
  %756 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %757 = load ptr, ptr %756, align 8, !tbaa !22
  %758 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %759 = load ptr, ptr %758, align 8, !tbaa !30
  %760 = icmp eq ptr %757, %759
  br i1 %760, label %761, label %780

761:                                              ; preds = %755
  %762 = zext i32 %732 to i64
  %763 = getelementptr inbounds nuw i8, ptr %759, i64 %762
  %764 = zext i32 %752 to i64
  %765 = getelementptr inbounds nuw i8, ptr %759, i64 %764
  %766 = icmp ugt ptr %763, %757
  br i1 %766, label %767, label %777

767:                                              ; preds = %761, %767
  %768 = phi ptr [ %772, %767 ], [ %765, %761 ]
  %769 = phi ptr [ %770, %767 ], [ %763, %761 ]
  %770 = getelementptr inbounds i8, ptr %769, i64 -1
  %771 = load i8, ptr %770, align 1, !tbaa !36
  %772 = getelementptr inbounds i8, ptr %768, i64 -1
  store i8 %771, ptr %772, align 1, !tbaa !36
  %773 = load ptr, ptr %758, align 8, !tbaa !30
  %774 = icmp ugt ptr %770, %773
  br i1 %774, label %767, label %775, !llvm.loop !94

775:                                              ; preds = %767
  %776 = load i32, ptr %1, align 8, !tbaa !19
  br label %777

777:                                              ; preds = %775, %761
  %778 = phi i32 [ %732, %761 ], [ %776, %775 ]
  %779 = phi ptr [ %765, %761 ], [ %772, %775 ]
  store ptr %779, ptr %756, align 8, !tbaa !22
  br label %780

780:                                              ; preds = %777, %755
  %781 = phi ptr [ %779, %777 ], [ %757, %755 ]
  %782 = phi i32 [ %778, %777 ], [ %732, %755 ]
  %783 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %782, i32 1), !nosanitize !20
  %784 = extractvalue { i32, i1 } %783, 1, !nosanitize !20
  br i1 %784, label %785, label %786, !prof !21, !nosanitize !20

785:                                              ; preds = %780
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

786:                                              ; preds = %780
  %787 = extractvalue { i32, i1 } %783, 0, !nosanitize !20
  store i32 %787, ptr %1, align 8, !tbaa !19
  %788 = getelementptr inbounds i8, ptr %781, i64 -1
  store ptr %788, ptr %756, align 8, !tbaa !22
  %789 = trunc i32 %0 to i8
  store i8 %789, ptr %788, align 1, !tbaa !36
  %790 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %791 = load i64, ptr %790, align 8, !tbaa !23
  %792 = add nsw i64 %791, -1
  store i64 %792, ptr %790, align 8, !tbaa !23
  %793 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %793, align 4, !tbaa !61
  br label %794

794:                                              ; preds = %360, %702, %341, %518, %604, %709, %346, %729, %727, %273, %4, %2, %786, %754, %734
  %795 = phi i32 [ -1, %4 ], [ -1, %2 ], [ -1, %273 ], [ -1, %727 ], [ %0, %734 ], [ -1, %754 ], [ %0, %786 ], [ -1, %729 ], [ -1, %346 ], [ -1, %341 ], [ -1, %709 ], [ -1, %604 ], [ -1, %518 ], [ -1, %702 ], [ -1, %360 ]
  ret i32 %795
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %944, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !8
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %944

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
  br i1 %19, label %944, label %20

20:                                               ; preds = %13, %13, %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %471, label %24

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

43:                                               ; preds = %468, %24
  %44 = phi i64 [ %469, %468 ], [ %22, %24 ]
  %45 = load i32, ptr %0, align 8, !tbaa !19
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = zext i32 %45 to i64
  %49 = tail call i64 @llvm.smin.i64(i64 %44, i64 %48)
  %50 = trunc i64 %49 to i32
  %51 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %45, i32 %50), !nosanitize !20
  %52 = extractvalue { i32, i1 } %51, 1, !nosanitize !20
  br i1 %52, label %53, label %54, !prof !21, !nosanitize !20

53:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

54:                                               ; preds = %47
  %55 = extractvalue { i32, i1 } %51, 0, !nosanitize !20
  store i32 %55, ptr %0, align 8, !tbaa !19
  %56 = load ptr, ptr %25, align 8, !tbaa !22
  %57 = and i64 %49, 4294967295
  %58 = getelementptr inbounds nuw i8, ptr %56, i64 %57
  store ptr %58, ptr %25, align 8, !tbaa !22
  %59 = load i64, ptr %26, align 8, !tbaa !23
  %60 = add nsw i64 %59, %57
  store i64 %60, ptr %26, align 8, !tbaa !23
  %61 = sub nsw i64 %44, %57
  store i64 %61, ptr %21, align 8, !tbaa !18
  br label %468

62:                                               ; preds = %43
  %63 = load i32, ptr %27, align 8, !tbaa !24
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %28, align 8, !tbaa !25
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %471, label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %465, %68
  %70 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %70, label %453 [
    i32 0, label %71
    i32 1, label %309
    i32 2, label %353
  ]

71:                                               ; preds = %69
  %72 = load i32, ptr %30, align 8, !tbaa !27
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i32, ptr %40, align 4, !tbaa !28
  %76 = zext i32 %75 to i64
  %77 = tail call noalias ptr @malloc(i64 noundef %76) #16
  store ptr %77, ptr %35, align 8, !tbaa !29
  %78 = load i32, ptr %40, align 4, !tbaa !28
  %79 = shl i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = tail call noalias ptr @malloc(i64 noundef %80) #16
  store ptr %81, ptr %32, align 8, !tbaa !30
  %82 = icmp eq ptr %77, null
  %83 = icmp eq ptr %81, null
  %84 = or i1 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  tail call void @free(ptr noundef %81) #14
  tail call void @free(ptr noundef %77) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %944

86:                                               ; preds = %74
  %87 = load i32, ptr %40, align 4, !tbaa !28
  store i32 %87, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %88 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %91) #14
  %92 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %92) #14
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %944

93:                                               ; preds = %86, %71
  %94 = load i32, ptr %42, align 8, !tbaa !32
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %38, align 4, !tbaa !33
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96, %93
  %100 = tail call i32 @inflateReset(ptr noundef nonnull %34) #14
  store i32 2, ptr %29, align 8, !tbaa !26
  %101 = load i32, ptr %38, align 4, !tbaa !33
  %102 = icmp ne i32 %101, -1
  %103 = zext i1 %102 to i32
  store i32 %103, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %306

104:                                              ; preds = %96
  %105 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %105, label %944 [
    i32 0, label %106
    i32 -5, label %106
  ]

106:                                              ; preds = %104, %104
  %107 = load i32, ptr %27, align 8, !tbaa !24
  %108 = icmp eq i32 %107, 0
  %109 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %108, label %110, label %274

110:                                              ; preds = %106
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %218, label %112

112:                                              ; preds = %110
  %113 = load ptr, ptr %35, align 8, !tbaa !29
  %114 = load ptr, ptr %34, align 8, !tbaa !35
  %115 = icmp eq ptr %114, %113
  br i1 %115, label %218, label %116

116:                                              ; preds = %112
  %117 = ptrtoaddr ptr %114 to i64
  %118 = ptrtoaddr ptr %113 to i64
  %119 = zext i32 %109 to i64
  %120 = icmp ult i32 %109, 4
  %121 = sub i64 %118, %117
  %122 = icmp ult i64 %121, 32
  %123 = or i1 %120, %122
  br i1 %123, label %163, label %124

124:                                              ; preds = %116
  %125 = icmp ult i32 %109, 32
  br i1 %125, label %147, label %126

126:                                              ; preds = %124
  %127 = and i64 %119, 28
  %128 = and i64 %119, 4294967264
  %129 = getelementptr i8, ptr %113, i64 %128
  %130 = getelementptr i8, ptr %114, i64 %128
  %131 = trunc nuw i64 %128 to i32
  %132 = sub i32 %109, %131
  br label %133

133:                                              ; preds = %133, %126
  %134 = phi i64 [ 0, %126 ], [ %141, %133 ]
  %135 = getelementptr i8, ptr %113, i64 %134
  %136 = getelementptr i8, ptr %114, i64 %134
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

147:                                              ; preds = %124, %145
  %148 = phi i64 [ %128, %145 ], [ 0, %124 ]
  %149 = and i64 %119, 4294967292
  %150 = getelementptr i8, ptr %113, i64 %149
  %151 = getelementptr i8, ptr %114, i64 %149
  %152 = trunc nuw i64 %149 to i32
  %153 = sub i32 %109, %152
  br label %154

154:                                              ; preds = %154, %147
  %155 = phi i64 [ %148, %147 ], [ %159, %154 ]
  %156 = getelementptr i8, ptr %113, i64 %155
  %157 = getelementptr i8, ptr %114, i64 %155
  %158 = load <4 x i8>, ptr %157, align 1, !tbaa !36
  store <4 x i8> %158, ptr %156, align 1, !tbaa !36
  %159 = add nuw i64 %155, 4
  %160 = icmp eq i64 %159, %149
  br i1 %160, label %161, label %154, !llvm.loop !96

161:                                              ; preds = %154
  %162 = icmp eq i64 %149, %119
  br i1 %162, label %216, label %163

163:                                              ; preds = %116, %145, %161
  %164 = phi ptr [ %113, %116 ], [ %129, %145 ], [ %150, %161 ]
  %165 = phi ptr [ %114, %116 ], [ %130, %145 ], [ %151, %161 ]
  %166 = phi i32 [ %109, %116 ], [ %132, %145 ], [ %153, %161 ]
  %167 = add i32 %166, -1
  %168 = and i32 %166, 7
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %163, %170
  %171 = phi ptr [ %177, %170 ], [ %164, %163 ]
  %172 = phi ptr [ %178, %170 ], [ %165, %163 ]
  %173 = phi i32 [ %176, %170 ], [ %166, %163 ]
  %174 = phi i32 [ %179, %170 ], [ 0, %163 ]
  %175 = load i8, ptr %172, align 1, !tbaa !36
  store i8 %175, ptr %171, align 1, !tbaa !36
  %176 = add i32 %173, -1
  %177 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %178 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %179 = add i32 %174, 1
  %180 = icmp eq i32 %179, %168
  br i1 %180, label %181, label %170, !llvm.loop !97

181:                                              ; preds = %170, %163
  %182 = phi ptr [ %164, %163 ], [ %177, %170 ]
  %183 = phi ptr [ %165, %163 ], [ %178, %170 ]
  %184 = phi i32 [ %166, %163 ], [ %176, %170 ]
  %185 = icmp ult i32 %167, 7
  br i1 %185, label %216, label %186

186:                                              ; preds = %181, %186
  %187 = phi ptr [ %213, %186 ], [ %182, %181 ]
  %188 = phi ptr [ %214, %186 ], [ %183, %181 ]
  %189 = phi i32 [ %212, %186 ], [ %184, %181 ]
  %190 = load i8, ptr %188, align 1, !tbaa !36
  store i8 %190, ptr %187, align 1, !tbaa !36
  %191 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %192 = getelementptr inbounds nuw i8, ptr %188, i64 1
  %193 = load i8, ptr %192, align 1, !tbaa !36
  store i8 %193, ptr %191, align 1, !tbaa !36
  %194 = getelementptr inbounds nuw i8, ptr %187, i64 2
  %195 = getelementptr inbounds nuw i8, ptr %188, i64 2
  %196 = load i8, ptr %195, align 1, !tbaa !36
  store i8 %196, ptr %194, align 1, !tbaa !36
  %197 = getelementptr inbounds nuw i8, ptr %187, i64 3
  %198 = getelementptr inbounds nuw i8, ptr %188, i64 3
  %199 = load i8, ptr %198, align 1, !tbaa !36
  store i8 %199, ptr %197, align 1, !tbaa !36
  %200 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %201 = getelementptr inbounds nuw i8, ptr %188, i64 4
  %202 = load i8, ptr %201, align 1, !tbaa !36
  store i8 %202, ptr %200, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %187, i64 5
  %204 = getelementptr inbounds nuw i8, ptr %188, i64 5
  %205 = load i8, ptr %204, align 1, !tbaa !36
  store i8 %205, ptr %203, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %187, i64 6
  %207 = getelementptr inbounds nuw i8, ptr %188, i64 6
  %208 = load i8, ptr %207, align 1, !tbaa !36
  store i8 %208, ptr %206, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %187, i64 7
  %210 = getelementptr inbounds nuw i8, ptr %188, i64 7
  %211 = load i8, ptr %210, align 1, !tbaa !36
  store i8 %211, ptr %209, align 1, !tbaa !36
  %212 = add i32 %189, -8
  %213 = getelementptr inbounds nuw i8, ptr %187, i64 8
  %214 = getelementptr inbounds nuw i8, ptr %188, i64 8
  %215 = icmp eq i32 %212, 0
  br i1 %215, label %216, label %186, !llvm.loop !98

216:                                              ; preds = %181, %186, %161, %143
  %217 = load i32, ptr %28, align 8, !tbaa !34
  br label %218

218:                                              ; preds = %216, %112, %110
  %219 = phi i32 [ %217, %216 ], [ %109, %112 ], [ 0, %110 ]
  %220 = load i32, ptr %30, align 8, !tbaa !27
  %221 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %220, i32 %219), !nosanitize !20
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !20
  br i1 %222, label %223, label %224, !prof !21, !nosanitize !20

223:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

224:                                              ; preds = %218
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !20
  %226 = load ptr, ptr %35, align 8, !tbaa !29
  %227 = zext i32 %219 to i64
  %228 = getelementptr inbounds nuw i8, ptr %226, i64 %227
  store i32 0, ptr %36, align 4, !tbaa !17
  %229 = tail call ptr @__errno_location() #17
  store i32 0, ptr %229, align 4, !tbaa !4
  br label %230

230:                                              ; preds = %249, %224
  %231 = phi i32 [ 0, %224 ], [ %250, %249 ]
  %232 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %225, i32 %231), !nosanitize !20
  %233 = extractvalue { i32, i1 } %232, 1, !nosanitize !20
  br i1 %233, label %234, label %235, !prof !21, !nosanitize !20

234:                                              ; preds = %230
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

235:                                              ; preds = %230
  %236 = extractvalue { i32, i1 } %232, 0, !nosanitize !20
  %237 = tail call i32 @llvm.umin.i32(i32 %236, i32 1073741824)
  %238 = load i32, ptr %37, align 4, !tbaa !46
  %239 = zext i32 %231 to i64
  %240 = getelementptr inbounds nuw i8, ptr %228, i64 %239
  %241 = zext nneg i32 %237 to i64
  %242 = tail call i64 @read(i32 noundef %238, ptr noundef %240, i64 noundef %241) #14
  %243 = trunc i64 %242 to i32
  %244 = icmp slt i32 %243, 1
  br i1 %244, label %252, label %245

245:                                              ; preds = %235
  %246 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 %243), !nosanitize !20
  %247 = extractvalue { i32, i1 } %246, 1, !nosanitize !20
  br i1 %247, label %248, label %249, !prof !21, !nosanitize !20

248:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

249:                                              ; preds = %245
  %250 = extractvalue { i32, i1 } %246, 0, !nosanitize !20
  %251 = icmp ult i32 %250, %225
  br i1 %251, label %230, label %265, !llvm.loop !47

252:                                              ; preds = %235
  %253 = icmp slt i32 %243, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %252
  %255 = load i32, ptr %229, align 4, !tbaa !4
  %256 = icmp eq i32 %255, 11
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  store i32 1, ptr %36, align 4, !tbaa !17
  %258 = icmp eq i32 %231, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %257
  %260 = load i32, ptr %229, align 4, !tbaa !4
  br label %262

261:                                              ; preds = %252
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %265

262:                                              ; preds = %254, %259
  %263 = phi i32 [ %260, %259 ], [ %255, %254 ]
  %264 = tail call ptr @strerror(i32 noundef %263) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %264) #14
  br label %944

265:                                              ; preds = %249, %261, %257
  %266 = phi i32 [ %231, %257 ], [ %231, %261 ], [ %250, %249 ]
  %267 = load i32, ptr %28, align 8, !tbaa !34
  %268 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %267, i32 %266), !nosanitize !20
  %269 = extractvalue { i32, i1 } %268, 1, !nosanitize !20
  br i1 %269, label %270, label %271, !prof !21, !nosanitize !20

270:                                              ; preds = %265
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

271:                                              ; preds = %265
  %272 = extractvalue { i32, i1 } %268, 0, !nosanitize !20
  store i32 %272, ptr %28, align 8, !tbaa !34
  %273 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %273, ptr %34, align 8, !tbaa !35
  br label %274

274:                                              ; preds = %271, %106
  %275 = phi i32 [ %272, %271 ], [ %109, %106 ]
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %306, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %36, align 4, !tbaa !17
  %279 = icmp ne i32 %278, 0
  %280 = icmp ult i32 %275, 4
  %281 = and i1 %280, %279
  br i1 %281, label %306, label %282

282:                                              ; preds = %277
  %283 = icmp ugt i32 %275, 3
  %284 = load ptr, ptr %34, align 8, !tbaa !35
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
  %301 = tail call i32 @inflateReset(ptr noundef nonnull %34) #14
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %454

302:                                              ; preds = %296, %292, %288, %285, %282
  %303 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %303, ptr %25, align 8, !tbaa !22
  %304 = zext i32 %275 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %303, ptr align 1 %284, i64 %304, i1 false)
  %305 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %305, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %456

306:                                              ; preds = %277, %274, %99
  %307 = load i32, ptr %29, align 8, !tbaa !26
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %466, label %454

309:                                              ; preds = %69
  %310 = load ptr, ptr %32, align 8, !tbaa !30
  %311 = load i32, ptr %30, align 8, !tbaa !27
  %312 = shl i32 %311, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %313 = tail call ptr @__errno_location() #17
  store i32 0, ptr %313, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %314

314:                                              ; preds = %334, %309
  %315 = phi i32 [ %335, %334 ], [ 0, %309 ]
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %312, i32 %315), !nosanitize !20
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !20
  br i1 %317, label %318, label %319, !prof !21, !nosanitize !20

318:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

319:                                              ; preds = %314
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !20
  %321 = tail call i32 @llvm.umin.i32(i32 %320, i32 1073741824)
  %322 = load i32, ptr %37, align 4, !tbaa !46
  %323 = zext i32 %315 to i64
  %324 = getelementptr inbounds nuw i8, ptr %310, i64 %323
  %325 = zext nneg i32 %321 to i64
  %326 = tail call i64 @read(i32 noundef %322, ptr noundef %324, i64 noundef %325) #14
  %327 = trunc i64 %326 to i32
  %328 = icmp slt i32 %327, 1
  br i1 %328, label %337, label %329

329:                                              ; preds = %319
  %330 = load i32, ptr %0, align 4, !tbaa !4
  %331 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %330, i32 %327), !nosanitize !20
  %332 = extractvalue { i32, i1 } %331, 1, !nosanitize !20
  br i1 %332, label %333, label %334, !prof !21, !nosanitize !20

333:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

334:                                              ; preds = %329
  %335 = extractvalue { i32, i1 } %331, 0, !nosanitize !20
  store i32 %335, ptr %0, align 4, !tbaa !4
  %336 = icmp ult i32 %335, %312
  br i1 %336, label %314, label %351, !llvm.loop !47

337:                                              ; preds = %319
  %338 = icmp slt i32 %327, 0
  br i1 %338, label %339, label %347

339:                                              ; preds = %337
  %340 = load i32, ptr %313, align 4, !tbaa !4
  %341 = icmp eq i32 %340, 11
  br i1 %341, label %342, label %348

342:                                              ; preds = %339
  store i32 1, ptr %36, align 4, !tbaa !17
  %343 = load i32, ptr %0, align 4, !tbaa !4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %342
  %346 = load i32, ptr %313, align 4, !tbaa !4
  br label %348

347:                                              ; preds = %337
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %351

348:                                              ; preds = %339, %345
  %349 = phi i32 [ %346, %345 ], [ %340, %339 ]
  %350 = tail call ptr @strerror(i32 noundef %349) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %350) #14
  br label %944

351:                                              ; preds = %334, %347, %342
  %352 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %352, ptr %25, align 8, !tbaa !22
  br label %466

353:                                              ; preds = %69
  %354 = load i32, ptr %30, align 8, !tbaa !27
  %355 = shl i32 %354, 1
  store i32 %355, ptr %31, align 8, !tbaa !48
  %356 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %356, ptr %33, align 8, !tbaa !49
  br label %357

357:                                              ; preds = %436, %353
  %358 = phi i32 [ 0, %353 ], [ %421, %436 ]
  %359 = load i32, ptr %28, align 8, !tbaa !34
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %420

361:                                              ; preds = %357
  %362 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %362, label %440 [
    i32 0, label %363
    i32 -5, label %363
  ]

363:                                              ; preds = %361, %361
  %364 = load i32, ptr %27, align 8, !tbaa !24
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %416

366:                                              ; preds = %363
  %367 = load i32, ptr %30, align 8, !tbaa !27
  %368 = load ptr, ptr %35, align 8, !tbaa !29
  store i32 0, ptr %36, align 4, !tbaa !17
  %369 = tail call ptr @__errno_location() #17
  store i32 0, ptr %369, align 4, !tbaa !4
  br label %370

370:                                              ; preds = %389, %366
  %371 = phi i32 [ 0, %366 ], [ %390, %389 ]
  %372 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %367, i32 %371), !nosanitize !20
  %373 = extractvalue { i32, i1 } %372, 1, !nosanitize !20
  br i1 %373, label %374, label %375, !prof !21, !nosanitize !20

374:                                              ; preds = %370
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

375:                                              ; preds = %370
  %376 = extractvalue { i32, i1 } %372, 0, !nosanitize !20
  %377 = tail call i32 @llvm.umin.i32(i32 %376, i32 1073741824)
  %378 = load i32, ptr %37, align 4, !tbaa !46
  %379 = zext i32 %371 to i64
  %380 = getelementptr inbounds nuw i8, ptr %368, i64 %379
  %381 = zext nneg i32 %377 to i64
  %382 = tail call i64 @read(i32 noundef %378, ptr noundef %380, i64 noundef %381) #14
  %383 = trunc i64 %382 to i32
  %384 = icmp slt i32 %383, 1
  br i1 %384, label %392, label %385

385:                                              ; preds = %375
  %386 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %371, i32 %383), !nosanitize !20
  %387 = extractvalue { i32, i1 } %386, 1, !nosanitize !20
  br i1 %387, label %388, label %389, !prof !21, !nosanitize !20

388:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

389:                                              ; preds = %385
  %390 = extractvalue { i32, i1 } %386, 0, !nosanitize !20
  %391 = icmp ult i32 %390, %367
  br i1 %391, label %370, label %406, !llvm.loop !47

392:                                              ; preds = %375
  %393 = icmp slt i32 %383, 0
  br i1 %393, label %394, label %401

394:                                              ; preds = %392
  %395 = load i32, ptr %369, align 4, !tbaa !4
  %396 = icmp eq i32 %395, 11
  br i1 %396, label %397, label %402

397:                                              ; preds = %394
  store i32 1, ptr %36, align 4, !tbaa !17
  %398 = icmp eq i32 %371, 0
  br i1 %398, label %399, label %406

399:                                              ; preds = %397
  %400 = load i32, ptr %369, align 4, !tbaa !4
  br label %402

401:                                              ; preds = %392
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %406

402:                                              ; preds = %394, %399
  %403 = phi i32 [ %400, %399 ], [ %395, %394 ]
  %404 = tail call ptr @strerror(i32 noundef %403) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %404) #14
  %405 = load i32, ptr %14, align 8, !tbaa !16
  br label %440

406:                                              ; preds = %389, %401, %397
  %407 = phi i32 [ %371, %397 ], [ %371, %401 ], [ %390, %389 ]
  %408 = load i32, ptr %28, align 8, !tbaa !34
  %409 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %408, i32 %407), !nosanitize !20
  %410 = extractvalue { i32, i1 } %409, 1, !nosanitize !20
  br i1 %410, label %411, label %412, !prof !21, !nosanitize !20

411:                                              ; preds = %406
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

412:                                              ; preds = %406
  %413 = extractvalue { i32, i1 } %409, 0, !nosanitize !20
  store i32 %413, ptr %28, align 8, !tbaa !34
  %414 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %414, ptr %34, align 8, !tbaa !35
  %415 = icmp eq i32 %413, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %412, %363
  %417 = load i32, ptr %36, align 4, !tbaa !17
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %440

419:                                              ; preds = %416
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %440

420:                                              ; preds = %412, %357
  %421 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #14
  %422 = load i32, ptr %31, align 8, !tbaa !48
  %423 = icmp ult i32 %422, %355
  br i1 %423, label %424, label %425

424:                                              ; preds = %420
  store i32 0, ptr %38, align 4, !tbaa !33
  br label %425

425:                                              ; preds = %424, %420
  switch i32 %421, label %436 [
    i32 -2, label %426
    i32 2, label %426
    i32 -4, label %427
    i32 -3, label %428
  ]

426:                                              ; preds = %425, %425
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %440

427:                                              ; preds = %425
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %440

428:                                              ; preds = %425
  %429 = load i32, ptr %38, align 4, !tbaa !33
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %440

432:                                              ; preds = %428
  %433 = load ptr, ptr %39, align 8, !tbaa !50
  %434 = icmp eq ptr %433, null
  %435 = select i1 %434, ptr @.str.6, ptr %433
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %435) #14
  br label %440

436:                                              ; preds = %425
  %437 = icmp ne i32 %422, 0
  %438 = icmp ne i32 %421, 1
  %439 = select i1 %437, i1 %438, i1 false
  br i1 %439, label %357, label %440, !llvm.loop !51

440:                                              ; preds = %436, %361, %432, %431, %427, %426, %419, %416, %402
  %441 = phi i32 [ %405, %402 ], [ %358, %416 ], [ %358, %419 ], [ %421, %426 ], [ -4, %427 ], [ 0, %431 ], [ -3, %432 ], [ %362, %361 ], [ %421, %436 ]
  %442 = load i32, ptr %31, align 8, !tbaa !48
  %443 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %355, i32 %442), !nosanitize !20
  %444 = extractvalue { i32, i1 } %443, 1, !nosanitize !20
  br i1 %444, label %445, label %446, !prof !21, !nosanitize !20

445:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

446:                                              ; preds = %440
  %447 = extractvalue { i32, i1 } %443, 0, !nosanitize !20
  store i32 %447, ptr %0, align 8, !tbaa !19
  %448 = load ptr, ptr %33, align 8, !tbaa !49
  %449 = zext i32 %447 to i64
  %450 = sub nsw i64 0, %449
  %451 = getelementptr inbounds i8, ptr %448, i64 %450
  store ptr %451, ptr %25, align 8, !tbaa !22
  switch i32 %441, label %944 [
    i32 1, label %452
    i32 0, label %454
  ]

452:                                              ; preds = %446
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %454

453:                                              ; preds = %69
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %944

454:                                              ; preds = %452, %446, %306, %300
  %455 = load i32, ptr %0, align 8, !tbaa !19
  br label %456

456:                                              ; preds = %454, %302
  %457 = phi i32 [ %455, %454 ], [ %305, %302 ]
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %466

459:                                              ; preds = %456
  %460 = load i32, ptr %27, align 8, !tbaa !24
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %465, label %462

462:                                              ; preds = %459
  %463 = load i32, ptr %28, align 8, !tbaa !34
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %466, label %465

465:                                              ; preds = %462, %459
  br label %69, !llvm.loop !52

466:                                              ; preds = %462, %456, %306, %351
  %467 = load i64, ptr %21, align 8, !tbaa !18
  br label %468

468:                                              ; preds = %466, %54
  %469 = phi i64 [ %467, %466 ], [ %61, %54 ]
  %470 = icmp eq i64 %469, 0
  br i1 %470, label %471, label %43, !llvm.loop !53

471:                                              ; preds = %468, %65, %20
  %472 = add nsw i32 %2, -1
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %944, label %474

474:                                              ; preds = %471
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %492 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %493 = load i32, ptr %0, align 8, !tbaa !19
  br label %494

494:                                              ; preds = %474, %935
  %495 = phi i32 [ %927, %935 ], [ %493, %474 ]
  %496 = phi i32 [ %936, %935 ], [ %472, %474 ]
  %497 = phi ptr [ %937, %935 ], [ %1, %474 ]
  %498 = icmp eq i32 %495, 0
  br i1 %498, label %499, label %901

499:                                              ; preds = %494, %895
  %500 = load i32, ptr %475, align 8, !tbaa !26
  switch i32 %500, label %883 [
    i32 0, label %501
    i32 1, label %739
    i32 2, label %783
  ]

501:                                              ; preds = %499
  %502 = load i32, ptr %476, align 8, !tbaa !27
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %523

504:                                              ; preds = %501
  %505 = load i32, ptr %489, align 4, !tbaa !28
  %506 = zext i32 %505 to i64
  %507 = tail call noalias ptr @malloc(i64 noundef %506) #16
  store ptr %507, ptr %483, align 8, !tbaa !29
  %508 = load i32, ptr %489, align 4, !tbaa !28
  %509 = shl i32 %508, 1
  %510 = zext i32 %509 to i64
  %511 = tail call noalias ptr @malloc(i64 noundef %510) #16
  store ptr %511, ptr %478, align 8, !tbaa !30
  %512 = icmp eq ptr %507, null
  %513 = icmp eq ptr %511, null
  %514 = or i1 %512, %513
  br i1 %514, label %515, label %516

515:                                              ; preds = %504
  tail call void @free(ptr noundef %511) #14
  tail call void @free(ptr noundef %507) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %940

516:                                              ; preds = %504
  %517 = load i32, ptr %489, align 4, !tbaa !28
  store i32 %517, ptr %476, align 8, !tbaa !27
  store i32 0, ptr %481, align 8, !tbaa !25
  store ptr null, ptr %480, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %490, i8 0, i64 24, i1 false)
  %518 = tail call i32 @inflateInit2_(ptr noundef nonnull %480, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %523, label %520

520:                                              ; preds = %516
  %521 = load ptr, ptr %478, align 8, !tbaa !30
  tail call void @free(ptr noundef %521) #14
  %522 = load ptr, ptr %483, align 8, !tbaa !29
  tail call void @free(ptr noundef %522) #14
  store i32 0, ptr %476, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %940

523:                                              ; preds = %516, %501
  %524 = load i32, ptr %491, align 8, !tbaa !32
  %525 = icmp eq i32 %524, -1
  br i1 %525, label %529, label %526

526:                                              ; preds = %523
  %527 = load i32, ptr %486, align 4, !tbaa !33
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %534

529:                                              ; preds = %526, %523
  %530 = tail call i32 @inflateReset(ptr noundef nonnull %480) #14
  store i32 2, ptr %475, align 8, !tbaa !26
  %531 = load i32, ptr %486, align 4, !tbaa !33
  %532 = icmp ne i32 %531, -1
  %533 = zext i1 %532 to i32
  store i32 %533, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %491, align 8, !tbaa !32
  br label %736

534:                                              ; preds = %526
  %535 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %535, label %940 [
    i32 0, label %536
    i32 -5, label %536
  ]

536:                                              ; preds = %534, %534
  %537 = load i32, ptr %482, align 8, !tbaa !24
  %538 = icmp eq i32 %537, 0
  %539 = load i32, ptr %481, align 8, !tbaa !34
  br i1 %538, label %540, label %704

540:                                              ; preds = %536
  %541 = icmp eq i32 %539, 0
  br i1 %541, label %648, label %542

542:                                              ; preds = %540
  %543 = load ptr, ptr %483, align 8, !tbaa !29
  %544 = load ptr, ptr %480, align 8, !tbaa !35
  %545 = icmp eq ptr %544, %543
  br i1 %545, label %648, label %546

546:                                              ; preds = %542
  %547 = ptrtoaddr ptr %544 to i64
  %548 = ptrtoaddr ptr %543 to i64
  %549 = zext i32 %539 to i64
  %550 = icmp ult i32 %539, 4
  %551 = sub i64 %548, %547
  %552 = icmp ult i64 %551, 32
  %553 = or i1 %550, %552
  br i1 %553, label %593, label %554

554:                                              ; preds = %546
  %555 = icmp ult i32 %539, 32
  br i1 %555, label %577, label %556

556:                                              ; preds = %554
  %557 = and i64 %549, 28
  %558 = and i64 %549, 4294967264
  %559 = getelementptr i8, ptr %543, i64 %558
  %560 = getelementptr i8, ptr %544, i64 %558
  %561 = trunc nuw i64 %558 to i32
  %562 = sub i32 %539, %561
  br label %563

563:                                              ; preds = %563, %556
  %564 = phi i64 [ 0, %556 ], [ %571, %563 ]
  %565 = getelementptr i8, ptr %543, i64 %564
  %566 = getelementptr i8, ptr %544, i64 %564
  %567 = getelementptr i8, ptr %566, i64 16
  %568 = load <16 x i8>, ptr %566, align 1, !tbaa !36
  %569 = load <16 x i8>, ptr %567, align 1, !tbaa !36
  %570 = getelementptr i8, ptr %565, i64 16
  store <16 x i8> %568, ptr %565, align 1, !tbaa !36
  store <16 x i8> %569, ptr %570, align 1, !tbaa !36
  %571 = add nuw i64 %564, 32
  %572 = icmp eq i64 %571, %558
  br i1 %572, label %573, label %563, !llvm.loop !99

573:                                              ; preds = %563
  %574 = icmp eq i64 %558, %549
  br i1 %574, label %646, label %575

575:                                              ; preds = %573
  %576 = icmp eq i64 %557, 0
  br i1 %576, label %593, label %577, !prof !41

577:                                              ; preds = %554, %575
  %578 = phi i64 [ %558, %575 ], [ 0, %554 ]
  %579 = and i64 %549, 4294967292
  %580 = getelementptr i8, ptr %543, i64 %579
  %581 = getelementptr i8, ptr %544, i64 %579
  %582 = trunc nuw i64 %579 to i32
  %583 = sub i32 %539, %582
  br label %584

584:                                              ; preds = %584, %577
  %585 = phi i64 [ %578, %577 ], [ %589, %584 ]
  %586 = getelementptr i8, ptr %543, i64 %585
  %587 = getelementptr i8, ptr %544, i64 %585
  %588 = load <4 x i8>, ptr %587, align 1, !tbaa !36
  store <4 x i8> %588, ptr %586, align 1, !tbaa !36
  %589 = add nuw i64 %585, 4
  %590 = icmp eq i64 %589, %579
  br i1 %590, label %591, label %584, !llvm.loop !100

591:                                              ; preds = %584
  %592 = icmp eq i64 %579, %549
  br i1 %592, label %646, label %593

593:                                              ; preds = %546, %575, %591
  %594 = phi ptr [ %543, %546 ], [ %559, %575 ], [ %580, %591 ]
  %595 = phi ptr [ %544, %546 ], [ %560, %575 ], [ %581, %591 ]
  %596 = phi i32 [ %539, %546 ], [ %562, %575 ], [ %583, %591 ]
  %597 = add i32 %596, -1
  %598 = and i32 %596, 7
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %611, label %600

600:                                              ; preds = %593, %600
  %601 = phi ptr [ %607, %600 ], [ %594, %593 ]
  %602 = phi ptr [ %608, %600 ], [ %595, %593 ]
  %603 = phi i32 [ %606, %600 ], [ %596, %593 ]
  %604 = phi i32 [ %609, %600 ], [ 0, %593 ]
  %605 = load i8, ptr %602, align 1, !tbaa !36
  store i8 %605, ptr %601, align 1, !tbaa !36
  %606 = add i32 %603, -1
  %607 = getelementptr inbounds nuw i8, ptr %601, i64 1
  %608 = getelementptr inbounds nuw i8, ptr %602, i64 1
  %609 = add i32 %604, 1
  %610 = icmp eq i32 %609, %598
  br i1 %610, label %611, label %600, !llvm.loop !101

611:                                              ; preds = %600, %593
  %612 = phi ptr [ %594, %593 ], [ %607, %600 ]
  %613 = phi ptr [ %595, %593 ], [ %608, %600 ]
  %614 = phi i32 [ %596, %593 ], [ %606, %600 ]
  %615 = icmp ult i32 %597, 7
  br i1 %615, label %646, label %616

616:                                              ; preds = %611, %616
  %617 = phi ptr [ %643, %616 ], [ %612, %611 ]
  %618 = phi ptr [ %644, %616 ], [ %613, %611 ]
  %619 = phi i32 [ %642, %616 ], [ %614, %611 ]
  %620 = load i8, ptr %618, align 1, !tbaa !36
  store i8 %620, ptr %617, align 1, !tbaa !36
  %621 = getelementptr inbounds nuw i8, ptr %617, i64 1
  %622 = getelementptr inbounds nuw i8, ptr %618, i64 1
  %623 = load i8, ptr %622, align 1, !tbaa !36
  store i8 %623, ptr %621, align 1, !tbaa !36
  %624 = getelementptr inbounds nuw i8, ptr %617, i64 2
  %625 = getelementptr inbounds nuw i8, ptr %618, i64 2
  %626 = load i8, ptr %625, align 1, !tbaa !36
  store i8 %626, ptr %624, align 1, !tbaa !36
  %627 = getelementptr inbounds nuw i8, ptr %617, i64 3
  %628 = getelementptr inbounds nuw i8, ptr %618, i64 3
  %629 = load i8, ptr %628, align 1, !tbaa !36
  store i8 %629, ptr %627, align 1, !tbaa !36
  %630 = getelementptr inbounds nuw i8, ptr %617, i64 4
  %631 = getelementptr inbounds nuw i8, ptr %618, i64 4
  %632 = load i8, ptr %631, align 1, !tbaa !36
  store i8 %632, ptr %630, align 1, !tbaa !36
  %633 = getelementptr inbounds nuw i8, ptr %617, i64 5
  %634 = getelementptr inbounds nuw i8, ptr %618, i64 5
  %635 = load i8, ptr %634, align 1, !tbaa !36
  store i8 %635, ptr %633, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %617, i64 6
  %637 = getelementptr inbounds nuw i8, ptr %618, i64 6
  %638 = load i8, ptr %637, align 1, !tbaa !36
  store i8 %638, ptr %636, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %617, i64 7
  %640 = getelementptr inbounds nuw i8, ptr %618, i64 7
  %641 = load i8, ptr %640, align 1, !tbaa !36
  store i8 %641, ptr %639, align 1, !tbaa !36
  %642 = add i32 %619, -8
  %643 = getelementptr inbounds nuw i8, ptr %617, i64 8
  %644 = getelementptr inbounds nuw i8, ptr %618, i64 8
  %645 = icmp eq i32 %642, 0
  br i1 %645, label %646, label %616, !llvm.loop !102

646:                                              ; preds = %611, %616, %591, %573
  %647 = load i32, ptr %481, align 8, !tbaa !34
  br label %648

648:                                              ; preds = %646, %542, %540
  %649 = phi i32 [ %647, %646 ], [ %539, %542 ], [ 0, %540 ]
  %650 = load i32, ptr %476, align 8, !tbaa !27
  %651 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %650, i32 %649), !nosanitize !20
  %652 = extractvalue { i32, i1 } %651, 1, !nosanitize !20
  br i1 %652, label %653, label %654, !prof !21, !nosanitize !20

653:                                              ; preds = %648
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

654:                                              ; preds = %648
  %655 = extractvalue { i32, i1 } %651, 0, !nosanitize !20
  %656 = load ptr, ptr %483, align 8, !tbaa !29
  %657 = zext i32 %649 to i64
  %658 = getelementptr inbounds nuw i8, ptr %656, i64 %657
  store i32 0, ptr %484, align 4, !tbaa !17
  %659 = tail call ptr @__errno_location() #17
  store i32 0, ptr %659, align 4, !tbaa !4
  br label %660

660:                                              ; preds = %679, %654
  %661 = phi i32 [ 0, %654 ], [ %680, %679 ]
  %662 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %655, i32 %661), !nosanitize !20
  %663 = extractvalue { i32, i1 } %662, 1, !nosanitize !20
  br i1 %663, label %664, label %665, !prof !21, !nosanitize !20

664:                                              ; preds = %660
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

665:                                              ; preds = %660
  %666 = extractvalue { i32, i1 } %662, 0, !nosanitize !20
  %667 = tail call i32 @llvm.umin.i32(i32 %666, i32 1073741824)
  %668 = load i32, ptr %485, align 4, !tbaa !46
  %669 = zext i32 %661 to i64
  %670 = getelementptr inbounds nuw i8, ptr %658, i64 %669
  %671 = zext nneg i32 %667 to i64
  %672 = tail call i64 @read(i32 noundef %668, ptr noundef %670, i64 noundef %671) #14
  %673 = trunc i64 %672 to i32
  %674 = icmp slt i32 %673, 1
  br i1 %674, label %682, label %675

675:                                              ; preds = %665
  %676 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %661, i32 %673), !nosanitize !20
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !20
  br i1 %677, label %678, label %679, !prof !21, !nosanitize !20

678:                                              ; preds = %675
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

679:                                              ; preds = %675
  %680 = extractvalue { i32, i1 } %676, 0, !nosanitize !20
  %681 = icmp ult i32 %680, %655
  br i1 %681, label %660, label %695, !llvm.loop !47

682:                                              ; preds = %665
  %683 = icmp slt i32 %673, 0
  br i1 %683, label %684, label %691

684:                                              ; preds = %682
  %685 = load i32, ptr %659, align 4, !tbaa !4
  %686 = icmp eq i32 %685, 11
  br i1 %686, label %687, label %692

687:                                              ; preds = %684
  store i32 1, ptr %484, align 4, !tbaa !17
  %688 = icmp eq i32 %661, 0
  br i1 %688, label %689, label %695

689:                                              ; preds = %687
  %690 = load i32, ptr %659, align 4, !tbaa !4
  br label %692

691:                                              ; preds = %682
  store i32 1, ptr %482, align 8, !tbaa !24
  br label %695

692:                                              ; preds = %684, %689
  %693 = phi i32 [ %690, %689 ], [ %685, %684 ]
  %694 = tail call ptr @strerror(i32 noundef %693) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %694) #14
  br label %940

695:                                              ; preds = %679, %691, %687
  %696 = phi i32 [ %661, %687 ], [ %661, %691 ], [ %680, %679 ]
  %697 = load i32, ptr %481, align 8, !tbaa !34
  %698 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %697, i32 %696), !nosanitize !20
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !20
  br i1 %699, label %700, label %701, !prof !21, !nosanitize !20

700:                                              ; preds = %695
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

701:                                              ; preds = %695
  %702 = extractvalue { i32, i1 } %698, 0, !nosanitize !20
  store i32 %702, ptr %481, align 8, !tbaa !34
  %703 = load ptr, ptr %483, align 8, !tbaa !29
  store ptr %703, ptr %480, align 8, !tbaa !35
  br label %704

704:                                              ; preds = %701, %536
  %705 = phi i32 [ %702, %701 ], [ %539, %536 ]
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %736, label %707

707:                                              ; preds = %704
  %708 = load i32, ptr %484, align 4, !tbaa !17
  %709 = icmp ne i32 %708, 0
  %710 = icmp ult i32 %705, 4
  %711 = and i1 %710, %709
  br i1 %711, label %736, label %712

712:                                              ; preds = %707
  %713 = icmp ugt i32 %705, 3
  %714 = load ptr, ptr %480, align 8, !tbaa !35
  br i1 %713, label %715, label %732

715:                                              ; preds = %712
  %716 = load i8, ptr %714, align 1, !tbaa !36
  %717 = icmp eq i8 %716, 31
  br i1 %717, label %718, label %732

718:                                              ; preds = %715
  %719 = getelementptr inbounds nuw i8, ptr %714, i64 1
  %720 = load i8, ptr %719, align 1, !tbaa !36
  %721 = icmp eq i8 %720, -117
  br i1 %721, label %722, label %732

722:                                              ; preds = %718
  %723 = getelementptr inbounds nuw i8, ptr %714, i64 2
  %724 = load i8, ptr %723, align 1, !tbaa !36
  %725 = icmp eq i8 %724, 8
  br i1 %725, label %726, label %732

726:                                              ; preds = %722
  %727 = getelementptr inbounds nuw i8, ptr %714, i64 3
  %728 = load i8, ptr %727, align 1, !tbaa !36
  %729 = icmp ult i8 %728, 32
  br i1 %729, label %730, label %732

730:                                              ; preds = %726
  %731 = tail call i32 @inflateReset(ptr noundef nonnull %480) #14
  store i32 2, ptr %475, align 8, !tbaa !26
  store i32 1, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %491, align 8, !tbaa !32
  br label %884

732:                                              ; preds = %726, %722, %718, %715, %712
  %733 = load ptr, ptr %478, align 8, !tbaa !30
  store ptr %733, ptr %488, align 8, !tbaa !22
  %734 = zext i32 %705 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %733, ptr align 1 %714, i64 %734, i1 false)
  %735 = load i32, ptr %481, align 8, !tbaa !34
  store i32 %735, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %481, align 8, !tbaa !34
  store i32 1, ptr %475, align 8, !tbaa !26
  br label %886

736:                                              ; preds = %707, %704, %529
  %737 = load i32, ptr %475, align 8, !tbaa !26
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %896, label %884

739:                                              ; preds = %499
  %740 = load ptr, ptr %478, align 8, !tbaa !30
  %741 = load i32, ptr %476, align 8, !tbaa !27
  %742 = shl i32 %741, 1
  store i32 0, ptr %484, align 4, !tbaa !17
  %743 = tail call ptr @__errno_location() #17
  store i32 0, ptr %743, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %744

744:                                              ; preds = %764, %739
  %745 = phi i32 [ %765, %764 ], [ 0, %739 ]
  %746 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %742, i32 %745), !nosanitize !20
  %747 = extractvalue { i32, i1 } %746, 1, !nosanitize !20
  br i1 %747, label %748, label %749, !prof !21, !nosanitize !20

748:                                              ; preds = %744
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

749:                                              ; preds = %744
  %750 = extractvalue { i32, i1 } %746, 0, !nosanitize !20
  %751 = tail call i32 @llvm.umin.i32(i32 %750, i32 1073741824)
  %752 = load i32, ptr %485, align 4, !tbaa !46
  %753 = zext i32 %745 to i64
  %754 = getelementptr inbounds nuw i8, ptr %740, i64 %753
  %755 = zext nneg i32 %751 to i64
  %756 = tail call i64 @read(i32 noundef %752, ptr noundef %754, i64 noundef %755) #14
  %757 = trunc i64 %756 to i32
  %758 = icmp slt i32 %757, 1
  br i1 %758, label %767, label %759

759:                                              ; preds = %749
  %760 = load i32, ptr %0, align 4, !tbaa !4
  %761 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %760, i32 %757), !nosanitize !20
  %762 = extractvalue { i32, i1 } %761, 1, !nosanitize !20
  br i1 %762, label %763, label %764, !prof !21, !nosanitize !20

763:                                              ; preds = %759
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

764:                                              ; preds = %759
  %765 = extractvalue { i32, i1 } %761, 0, !nosanitize !20
  store i32 %765, ptr %0, align 4, !tbaa !4
  %766 = icmp ult i32 %765, %742
  br i1 %766, label %744, label %781, !llvm.loop !47

767:                                              ; preds = %749
  %768 = icmp slt i32 %757, 0
  br i1 %768, label %769, label %777

769:                                              ; preds = %767
  %770 = load i32, ptr %743, align 4, !tbaa !4
  %771 = icmp eq i32 %770, 11
  br i1 %771, label %772, label %778

772:                                              ; preds = %769
  store i32 1, ptr %484, align 4, !tbaa !17
  %773 = load i32, ptr %0, align 4, !tbaa !4
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %781

775:                                              ; preds = %772
  %776 = load i32, ptr %743, align 4, !tbaa !4
  br label %778

777:                                              ; preds = %767
  store i32 1, ptr %482, align 8, !tbaa !24
  br label %781

778:                                              ; preds = %769, %775
  %779 = phi i32 [ %776, %775 ], [ %770, %769 ]
  %780 = tail call ptr @strerror(i32 noundef %779) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %780) #14
  br label %940

781:                                              ; preds = %764, %777, %772
  %782 = load ptr, ptr %478, align 8, !tbaa !30
  store ptr %782, ptr %488, align 8, !tbaa !22
  br label %896

783:                                              ; preds = %499
  %784 = load i32, ptr %476, align 8, !tbaa !27
  %785 = shl i32 %784, 1
  store i32 %785, ptr %477, align 8, !tbaa !48
  %786 = load ptr, ptr %478, align 8, !tbaa !30
  store ptr %786, ptr %479, align 8, !tbaa !49
  br label %787

787:                                              ; preds = %866, %783
  %788 = phi i32 [ 0, %783 ], [ %851, %866 ]
  %789 = load i32, ptr %481, align 8, !tbaa !34
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %791, label %850

791:                                              ; preds = %787
  %792 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %792, label %870 [
    i32 0, label %793
    i32 -5, label %793
  ]

793:                                              ; preds = %791, %791
  %794 = load i32, ptr %482, align 8, !tbaa !24
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %796, label %846

796:                                              ; preds = %793
  %797 = load i32, ptr %476, align 8, !tbaa !27
  %798 = load ptr, ptr %483, align 8, !tbaa !29
  store i32 0, ptr %484, align 4, !tbaa !17
  %799 = tail call ptr @__errno_location() #17
  store i32 0, ptr %799, align 4, !tbaa !4
  br label %800

800:                                              ; preds = %819, %796
  %801 = phi i32 [ 0, %796 ], [ %820, %819 ]
  %802 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %797, i32 %801), !nosanitize !20
  %803 = extractvalue { i32, i1 } %802, 1, !nosanitize !20
  br i1 %803, label %804, label %805, !prof !21, !nosanitize !20

804:                                              ; preds = %800
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

805:                                              ; preds = %800
  %806 = extractvalue { i32, i1 } %802, 0, !nosanitize !20
  %807 = tail call i32 @llvm.umin.i32(i32 %806, i32 1073741824)
  %808 = load i32, ptr %485, align 4, !tbaa !46
  %809 = zext i32 %801 to i64
  %810 = getelementptr inbounds nuw i8, ptr %798, i64 %809
  %811 = zext nneg i32 %807 to i64
  %812 = tail call i64 @read(i32 noundef %808, ptr noundef %810, i64 noundef %811) #14
  %813 = trunc i64 %812 to i32
  %814 = icmp slt i32 %813, 1
  br i1 %814, label %822, label %815

815:                                              ; preds = %805
  %816 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %801, i32 %813), !nosanitize !20
  %817 = extractvalue { i32, i1 } %816, 1, !nosanitize !20
  br i1 %817, label %818, label %819, !prof !21, !nosanitize !20

818:                                              ; preds = %815
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

819:                                              ; preds = %815
  %820 = extractvalue { i32, i1 } %816, 0, !nosanitize !20
  %821 = icmp ult i32 %820, %797
  br i1 %821, label %800, label %836, !llvm.loop !47

822:                                              ; preds = %805
  %823 = icmp slt i32 %813, 0
  br i1 %823, label %824, label %831

824:                                              ; preds = %822
  %825 = load i32, ptr %799, align 4, !tbaa !4
  %826 = icmp eq i32 %825, 11
  br i1 %826, label %827, label %832

827:                                              ; preds = %824
  store i32 1, ptr %484, align 4, !tbaa !17
  %828 = icmp eq i32 %801, 0
  br i1 %828, label %829, label %836

829:                                              ; preds = %827
  %830 = load i32, ptr %799, align 4, !tbaa !4
  br label %832

831:                                              ; preds = %822
  store i32 1, ptr %482, align 8, !tbaa !24
  br label %836

832:                                              ; preds = %824, %829
  %833 = phi i32 [ %830, %829 ], [ %825, %824 ]
  %834 = tail call ptr @strerror(i32 noundef %833) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %834) #14
  %835 = load i32, ptr %14, align 8, !tbaa !16
  br label %870

836:                                              ; preds = %819, %831, %827
  %837 = phi i32 [ %801, %827 ], [ %801, %831 ], [ %820, %819 ]
  %838 = load i32, ptr %481, align 8, !tbaa !34
  %839 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %838, i32 %837), !nosanitize !20
  %840 = extractvalue { i32, i1 } %839, 1, !nosanitize !20
  br i1 %840, label %841, label %842, !prof !21, !nosanitize !20

841:                                              ; preds = %836
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

842:                                              ; preds = %836
  %843 = extractvalue { i32, i1 } %839, 0, !nosanitize !20
  store i32 %843, ptr %481, align 8, !tbaa !34
  %844 = load ptr, ptr %483, align 8, !tbaa !29
  store ptr %844, ptr %480, align 8, !tbaa !35
  %845 = icmp eq i32 %843, 0
  br i1 %845, label %846, label %850

846:                                              ; preds = %842, %793
  %847 = load i32, ptr %484, align 4, !tbaa !17
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %870

849:                                              ; preds = %846
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #14
  br label %870

850:                                              ; preds = %842, %787
  %851 = tail call i32 @inflate(ptr noundef nonnull %480, i32 noundef 0) #14
  %852 = load i32, ptr %477, align 8, !tbaa !48
  %853 = icmp ult i32 %852, %785
  br i1 %853, label %854, label %855

854:                                              ; preds = %850
  store i32 0, ptr %486, align 4, !tbaa !33
  br label %855

855:                                              ; preds = %854, %850
  switch i32 %851, label %866 [
    i32 -2, label %856
    i32 2, label %856
    i32 -4, label %857
    i32 -3, label %858
  ]

856:                                              ; preds = %855, %855
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #14
  br label %870

857:                                              ; preds = %855
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %870

858:                                              ; preds = %855
  %859 = load i32, ptr %486, align 4, !tbaa !33
  %860 = icmp eq i32 %859, 1
  br i1 %860, label %861, label %862

861:                                              ; preds = %858
  store i32 0, ptr %481, align 8, !tbaa !34
  store i32 1, ptr %482, align 8, !tbaa !24
  store i32 0, ptr %475, align 8, !tbaa !26
  br label %870

862:                                              ; preds = %858
  %863 = load ptr, ptr %487, align 8, !tbaa !50
  %864 = icmp eq ptr %863, null
  %865 = select i1 %864, ptr @.str.6, ptr %863
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %865) #14
  br label %870

866:                                              ; preds = %855
  %867 = icmp ne i32 %852, 0
  %868 = icmp ne i32 %851, 1
  %869 = select i1 %867, i1 %868, i1 false
  br i1 %869, label %787, label %870, !llvm.loop !51

870:                                              ; preds = %866, %791, %862, %861, %857, %856, %849, %846, %832
  %871 = phi i32 [ %835, %832 ], [ %788, %846 ], [ %788, %849 ], [ %851, %856 ], [ -4, %857 ], [ 0, %861 ], [ -3, %862 ], [ %851, %866 ], [ %792, %791 ]
  %872 = load i32, ptr %477, align 8, !tbaa !48
  %873 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %785, i32 %872), !nosanitize !20
  %874 = extractvalue { i32, i1 } %873, 1, !nosanitize !20
  br i1 %874, label %875, label %876, !prof !21, !nosanitize !20

875:                                              ; preds = %870
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

876:                                              ; preds = %870
  %877 = extractvalue { i32, i1 } %873, 0, !nosanitize !20
  store i32 %877, ptr %0, align 8, !tbaa !19
  %878 = load ptr, ptr %479, align 8, !tbaa !49
  %879 = zext i32 %877 to i64
  %880 = sub nsw i64 0, %879
  %881 = getelementptr inbounds i8, ptr %878, i64 %880
  store ptr %881, ptr %488, align 8, !tbaa !22
  switch i32 %871, label %940 [
    i32 1, label %882
    i32 0, label %884
  ]

882:                                              ; preds = %876
  store i32 0, ptr %486, align 4, !tbaa !33
  store i32 0, ptr %475, align 8, !tbaa !26
  br label %884

883:                                              ; preds = %499
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #14
  br label %940

884:                                              ; preds = %882, %876, %736, %730
  %885 = load i32, ptr %0, align 8, !tbaa !19
  br label %886

886:                                              ; preds = %884, %732
  %887 = phi i32 [ %885, %884 ], [ %735, %732 ]
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %889, label %896

889:                                              ; preds = %886
  %890 = load i32, ptr %482, align 8, !tbaa !24
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %895, label %892

892:                                              ; preds = %889
  %893 = load i32, ptr %481, align 8, !tbaa !34
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %896, label %895

895:                                              ; preds = %892, %889
  br label %499, !llvm.loop !52

896:                                              ; preds = %892, %886, %736, %781
  %897 = load i32, ptr %0, align 8, !tbaa !19
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %899, label %901

899:                                              ; preds = %896
  %900 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %900, align 4, !tbaa !61
  br label %940

901:                                              ; preds = %494, %896
  %902 = phi i32 [ %897, %896 ], [ %495, %494 ]
  %903 = tail call i32 @llvm.umin.i32(i32 %902, i32 %496)
  %904 = load ptr, ptr %488, align 8, !tbaa !22
  %905 = zext i32 %903 to i64
  %906 = tail call ptr @memchr(ptr noundef %904, i32 noundef 10, i64 noundef %905) #18
  %907 = icmp eq ptr %906, null
  br i1 %907, label %919, label %908

908:                                              ; preds = %901
  %909 = ptrtoint ptr %906 to i64
  %910 = ptrtoint ptr %904 to i64
  %911 = sub i64 %909, %910
  %912 = trunc i64 %911 to i32
  %913 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %912, i32 1), !nosanitize !20
  %914 = extractvalue { i32, i1 } %913, 1, !nosanitize !20
  br i1 %914, label %915, label %916, !prof !21, !nosanitize !20

915:                                              ; preds = %908
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

916:                                              ; preds = %908
  %917 = extractvalue { i32, i1 } %913, 0, !nosanitize !20
  %918 = zext i32 %917 to i64
  br label %919

919:                                              ; preds = %916, %901
  %920 = phi i64 [ %918, %916 ], [ %905, %901 ]
  %921 = phi i32 [ %917, %916 ], [ %903, %901 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %497, ptr align 1 %904, i64 %920, i1 false)
  %922 = load i32, ptr %0, align 8, !tbaa !19
  %923 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %922, i32 %921), !nosanitize !20
  %924 = extractvalue { i32, i1 } %923, 1, !nosanitize !20
  br i1 %924, label %925, label %926, !prof !21, !nosanitize !20

925:                                              ; preds = %919
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

926:                                              ; preds = %919
  %927 = extractvalue { i32, i1 } %923, 0, !nosanitize !20
  store i32 %927, ptr %0, align 8, !tbaa !19
  %928 = load ptr, ptr %488, align 8, !tbaa !22
  %929 = getelementptr inbounds nuw i8, ptr %928, i64 %920
  store ptr %929, ptr %488, align 8, !tbaa !22
  %930 = load i64, ptr %492, align 8, !tbaa !23
  %931 = add nsw i64 %930, %920
  store i64 %931, ptr %492, align 8, !tbaa !23
  %932 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %921), !nosanitize !20
  %933 = extractvalue { i32, i1 } %932, 1, !nosanitize !20
  br i1 %933, label %934, label %935, !prof !21, !nosanitize !20

934:                                              ; preds = %926
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

935:                                              ; preds = %926
  %936 = extractvalue { i32, i1 } %932, 0, !nosanitize !20
  %937 = getelementptr inbounds nuw i8, ptr %497, i64 %920
  %938 = icmp ne i32 %936, 0
  %939 = and i1 %907, %938
  br i1 %939, label %494, label %940, !llvm.loop !103

940:                                              ; preds = %935, %876, %534, %520, %515, %692, %778, %883, %899
  %941 = phi ptr [ %497, %876 ], [ %497, %899 ], [ %497, %883 ], [ %497, %778 ], [ %497, %692 ], [ %497, %515 ], [ %497, %520 ], [ %497, %534 ], [ %937, %935 ]
  %942 = icmp eq ptr %941, %1
  br i1 %942, label %944, label %943

943:                                              ; preds = %940
  store i8 0, ptr %941, align 1, !tbaa !36
  br label %944

944:                                              ; preds = %104, %446, %471, %85, %262, %348, %453, %90, %940, %16, %9, %3, %943
  %945 = phi ptr [ null, %9 ], [ null, %3 ], [ null, %16 ], [ null, %85 ], [ %1, %943 ], [ null, %940 ], [ null, %90 ], [ null, %471 ], [ null, %453 ], [ null, %348 ], [ null, %262 ], [ null, %446 ], [ null, %104 ]
  ret ptr %945
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
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
  tail call void @free(ptr noundef %28) #14
  tail call void @free(ptr noundef %23) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
  br label %269

34:                                               ; preds = %19
  %35 = load i32, ptr %20, align 4, !tbaa !28
  store i32 %35, ptr %16, align 8, !tbaa !27
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %37, align 8, !tbaa !25
  store ptr null, ptr %15, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %38 = tail call i32 @inflateInit2_(ptr noundef nonnull %15, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %29, align 8, !tbaa !30
  tail call void @free(ptr noundef %41) #14
  %42 = load ptr, ptr %24, align 8, !tbaa !29
  tail call void @free(ptr noundef %42) #14
  store i32 0, ptr %16, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #14
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
  %52 = tail call i32 @inflateReset(ptr noundef nonnull %15) #14
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

104:                                              ; preds = %81, %102
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

120:                                              ; preds = %73, %102, %118
  %121 = phi ptr [ %70, %73 ], [ %86, %102 ], [ %107, %118 ]
  %122 = phi ptr [ %71, %73 ], [ %87, %102 ], [ %108, %118 ]
  %123 = phi i32 [ %65, %73 ], [ %89, %102 ], [ %110, %118 ]
  %124 = add i32 %123, -1
  %125 = and i32 %123, 7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %120, %127
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

143:                                              ; preds = %138, %143
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

173:                                              ; preds = %138, %143, %118, %100
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
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
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
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

195:                                              ; preds = %190
  %196 = extractvalue { i32, i1 } %192, 0, !nosanitize !20
  %197 = tail call i32 @llvm.umin.i32(i32 %196, i32 1073741824)
  %198 = load i32, ptr %189, align 4, !tbaa !46
  %199 = zext i32 %191 to i64
  %200 = getelementptr inbounds nuw i8, ptr %186, i64 %199
  %201 = zext nneg i32 %197 to i64
  %202 = tail call i64 @read(i32 noundef %198, ptr noundef %200, i64 noundef %201) #14
  %203 = trunc i64 %202 to i32
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %212, label %205

205:                                              ; preds = %195
  %206 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %191, i32 %203), !nosanitize !20
  %207 = extractvalue { i32, i1 } %206, 1, !nosanitize !20
  br i1 %207, label %208, label %209, !prof !21, !nosanitize !20

208:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
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
  %224 = tail call ptr @strerror(i32 noundef %223) #14
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %224) #14
  br label %269

225:                                              ; preds = %209, %221, %217
  %226 = phi i32 [ %191, %217 ], [ %191, %221 ], [ %210, %209 ]
  %227 = load i32, ptr %64, align 8, !tbaa !34
  %228 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %226), !nosanitize !20
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !20
  br i1 %229, label %230, label %231, !prof !21, !nosanitize !20

230:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
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
  %262 = tail call i32 @inflateReset(ptr noundef nonnull %15) #14
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

274:                                              ; preds = %1, %269
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
  %13 = tail call i32 @inflateEnd(ptr noundef nonnull %12) #14
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  tail call void @free(ptr noundef %15) #14
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  tail call void @free(ptr noundef %17) #14
  br label %18

18:                                               ; preds = %11, %7
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %20 = load i32, ptr %19, align 8, !tbaa !16
  %21 = icmp eq i32 %20, -5
  %22 = select i1 %21, i32 -5, i32 0
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #14
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  tail call void @free(ptr noundef %24) #14
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %26 = load i32, ptr %25, align 4, !tbaa !46
  %27 = tail call i32 @close(i32 noundef %26) #14
  tail call void @free(ptr noundef nonnull %0) #14
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %22, i32 -1
  br label %30

30:                                               ; preds = %3, %1, %18
  %31 = phi i32 [ %29, %18 ], [ -2, %1 ], [ -2, %3 ]
  ret i32 %31
}

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nomerge noreturn nounwind }
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
