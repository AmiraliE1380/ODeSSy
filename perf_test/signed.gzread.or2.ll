; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.gzread.or.ll'
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
  br i1 %4, label %1009, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1009

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
  br i1 %15, label %1009, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1009

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %.loopexit96, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %.loopexit100, label %26

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

44:                                               ; preds = %428, %26
  %45 = phi i64 [ %429, %428 ], [ %24, %26 ]
  %46 = load i32, ptr %0, align 8, !tbaa !19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

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
  %62 = sub i64 %45, %54
  store i64 %62, ptr %23, align 8, !tbaa !18
  br label %428

63:                                               ; preds = %44
  %64 = load i32, ptr %29, align 8, !tbaa !24
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %.preheader744, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %30, align 8, !tbaa !25
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %.loopexit100, label %.preheader744

.preheader744:                                    ; preds = %66, %63
  br label %69

69:                                               ; preds = %.backedge, %.preheader744
  %70 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %70, label %415 [
    i32 0, label %71
    i32 1, label %287
    i32 2, label %321
  ]

71:                                               ; preds = %69
  %72 = load i32, ptr %32, align 8, !tbaa !27
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i32, ptr %41, align 4, !tbaa !28
  %76 = zext i32 %75 to i64
  %77 = tail call noalias ptr @malloc(i64 noundef %76) #15
  store ptr %77, ptr %37, align 8, !tbaa !29
  %78 = load i32, ptr %41, align 4, !tbaa !28
  %79 = shl i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = tail call noalias ptr @malloc(i64 noundef %80) #15
  store ptr %81, ptr %34, align 8, !tbaa !30
  %82 = icmp eq ptr %77, null
  %83 = icmp eq ptr %81, null
  %84 = or i1 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  tail call void @free(ptr noundef %81) #13
  tail call void @free(ptr noundef %77) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit96

86:                                               ; preds = %74
  %87 = load i32, ptr %41, align 4, !tbaa !28
  store i32 %87, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %88 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %91) #13
  %92 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %92) #13
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit96

93:                                               ; preds = %86, %71
  %94 = load i32, ptr %43, align 8, !tbaa !32
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %40, align 4, !tbaa !33
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96, %93
  %100 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  %101 = load i32, ptr %40, align 4, !tbaa !33
  %102 = icmp ne i32 %101, -1
  %103 = zext i1 %102 to i32
  store i32 %103, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %284

104:                                              ; preds = %96
  %105 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %105, label %.loopexit97 [
    i32 0, label %106
    i32 -5, label %106
  ]

106:                                              ; preds = %104, %104
  %107 = load i32, ptr %29, align 8, !tbaa !24
  %108 = icmp eq i32 %107, 0
  %109 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %108, label %110, label %252

110:                                              ; preds = %106
  %111 = icmp eq i32 %109, 0
  %112 = load ptr, ptr %37, align 8, !tbaa !29
  %113 = ptrtoaddr ptr %112 to i64
  br i1 %111, label %214, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %36, align 8, !tbaa !35
  %116 = icmp eq ptr %115, %112
  br i1 %116, label %214, label %117

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
  %127 = and i64 %119, 4294967264
  br label %128

128:                                              ; preds = %128, %126
  %129 = phi i64 [ 0, %126 ], [ %136, %128 ]
  %130 = getelementptr i8, ptr %112, i64 %129
  %131 = getelementptr i8, ptr %115, i64 %129
  %132 = getelementptr i8, ptr %131, i64 16
  %133 = load <16 x i8>, ptr %131, align 1, !tbaa !36
  %134 = load <16 x i8>, ptr %132, align 1, !tbaa !36
  %135 = getelementptr i8, ptr %130, i64 16
  store <16 x i8> %133, ptr %130, align 1, !tbaa !36
  store <16 x i8> %134, ptr %135, align 1, !tbaa !36
  %136 = add nuw nsw i64 %129, 32
  %137 = icmp eq i64 %136, %127
  br i1 %137, label %138, label %128, !llvm.loop !37

138:                                              ; preds = %128
  %139 = icmp eq i64 %127, %119
  br i1 %139, label %.loopexit89, label %140

140:                                              ; preds = %138
  %141 = trunc nuw i64 %127 to i32
  %142 = sub i32 %109, %141
  %143 = getelementptr i8, ptr %115, i64 %127
  %144 = getelementptr i8, ptr %112, i64 %127
  %145 = and i64 %119, 28
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %163, label %147, !prof !41

147:                                              ; preds = %140, %124
  %148 = phi i64 [ %127, %140 ], [ 0, %124 ]
  %149 = and i64 %119, 4294967292
  br label %150

150:                                              ; preds = %150, %147
  %151 = phi i64 [ %148, %147 ], [ %155, %150 ]
  %152 = getelementptr i8, ptr %112, i64 %151
  %153 = getelementptr i8, ptr %115, i64 %151
  %154 = load <4 x i8>, ptr %153, align 1, !tbaa !36
  store <4 x i8> %154, ptr %152, align 1, !tbaa !36
  %155 = add nuw i64 %151, 4
  %156 = icmp eq i64 %155, %149
  br i1 %156, label %157, label %150, !llvm.loop !42

157:                                              ; preds = %150
  %158 = getelementptr i8, ptr %112, i64 %149
  %159 = getelementptr i8, ptr %115, i64 %149
  %160 = trunc nuw i64 %149 to i32
  %161 = sub i32 %109, %160
  %162 = icmp eq i64 %149, %119
  br i1 %162, label %.loopexit89, label %163

163:                                              ; preds = %157, %140, %117
  %164 = phi ptr [ %112, %117 ], [ %144, %140 ], [ %158, %157 ]
  %165 = phi ptr [ %115, %117 ], [ %143, %140 ], [ %159, %157 ]
  %166 = phi i32 [ %109, %117 ], [ %142, %140 ], [ %161, %157 ]
  %167 = add i32 %166, -1
  %168 = and i32 %166, 7
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %.loopexit91, label %.preheader90

.preheader90:                                     ; preds = %163, %.preheader90
  %170 = phi ptr [ %175, %.preheader90 ], [ %164, %163 ]
  %171 = phi ptr [ %173, %.preheader90 ], [ %165, %163 ]
  %172 = phi i32 [ %176, %.preheader90 ], [ 0, %163 ]
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %174 = load i8, ptr %171, align 1, !tbaa !36
  %175 = getelementptr inbounds nuw i8, ptr %170, i64 1
  store i8 %174, ptr %170, align 1, !tbaa !36
  %176 = add nuw nsw i32 %172, 1
  %177 = icmp eq i32 %176, %168
  br i1 %177, label %.loopexit91.loopexit, label %.preheader90, !llvm.loop !43

.loopexit91.loopexit:                             ; preds = %.preheader90
  %178 = and i32 %166, -8
  br label %.loopexit91

.loopexit91:                                      ; preds = %.loopexit91.loopexit, %163
  %179 = phi ptr [ %164, %163 ], [ %175, %.loopexit91.loopexit ]
  %180 = phi ptr [ %165, %163 ], [ %173, %.loopexit91.loopexit ]
  %181 = phi i32 [ %166, %163 ], [ %178, %.loopexit91.loopexit ]
  %182 = icmp ult i32 %167, 7
  br i1 %182, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %.loopexit91, %.preheader88
  %183 = phi ptr [ %209, %.preheader88 ], [ %179, %.loopexit91 ]
  %184 = phi ptr [ %207, %.preheader88 ], [ %180, %.loopexit91 ]
  %185 = phi i32 [ %210, %.preheader88 ], [ %181, %.loopexit91 ]
  %186 = getelementptr inbounds nuw i8, ptr %184, i64 1
  %187 = load i8, ptr %184, align 1, !tbaa !36
  %188 = getelementptr inbounds nuw i8, ptr %183, i64 1
  store i8 %187, ptr %183, align 1, !tbaa !36
  %189 = getelementptr inbounds nuw i8, ptr %184, i64 2
  %190 = load i8, ptr %186, align 1, !tbaa !36
  %191 = getelementptr inbounds nuw i8, ptr %183, i64 2
  store i8 %190, ptr %188, align 1, !tbaa !36
  %192 = getelementptr inbounds nuw i8, ptr %184, i64 3
  %193 = load i8, ptr %189, align 1, !tbaa !36
  %194 = getelementptr inbounds nuw i8, ptr %183, i64 3
  store i8 %193, ptr %191, align 1, !tbaa !36
  %195 = getelementptr inbounds nuw i8, ptr %184, i64 4
  %196 = load i8, ptr %192, align 1, !tbaa !36
  %197 = getelementptr inbounds nuw i8, ptr %183, i64 4
  store i8 %196, ptr %194, align 1, !tbaa !36
  %198 = getelementptr inbounds nuw i8, ptr %184, i64 5
  %199 = load i8, ptr %195, align 1, !tbaa !36
  %200 = getelementptr inbounds nuw i8, ptr %183, i64 5
  store i8 %199, ptr %197, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %184, i64 6
  %202 = load i8, ptr %198, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %183, i64 6
  store i8 %202, ptr %200, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %184, i64 7
  %205 = load i8, ptr %201, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %183, i64 7
  store i8 %205, ptr %203, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %184, i64 8
  %208 = load i8, ptr %204, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %183, i64 8
  store i8 %208, ptr %206, align 1, !tbaa !36
  %210 = add i32 %185, -8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %.loopexit89, label %.preheader88, !llvm.loop !45

.loopexit89:                                      ; preds = %.preheader88, %.loopexit91, %157, %138
  %212 = load i32, ptr %30, align 8, !tbaa !34
  %213 = load ptr, ptr %37, align 8, !tbaa !29
  br label %214

214:                                              ; preds = %.loopexit89, %114, %110
  %215 = phi ptr [ %213, %.loopexit89 ], [ %112, %114 ], [ %112, %110 ]
  %216 = phi i32 [ %212, %.loopexit89 ], [ %109, %114 ], [ 0, %110 ]
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds nuw i8, ptr %215, i64 %217
  %219 = load i32, ptr %32, align 8, !tbaa !27
  %220 = sub i32 %219, %216
  store i32 0, ptr %38, align 4, !tbaa !17
  %221 = tail call ptr @__errno_location() #16
  store i32 0, ptr %221, align 4, !tbaa !4
  br label %222

222:                                              ; preds = %233, %214
  %223 = phi i32 [ 0, %214 ], [ %234, %233 ]
  %224 = sub i32 %220, %223
  %225 = tail call i32 @llvm.umin.i32(i32 %224, i32 1073741824)
  %226 = load i32, ptr %39, align 4, !tbaa !46
  %227 = zext i32 %223 to i64
  %228 = getelementptr inbounds nuw i8, ptr %218, i64 %227
  %229 = zext nneg i32 %225 to i64
  %230 = tail call i64 @read(i32 noundef %226, ptr noundef %228, i64 noundef %229) #13
  %231 = trunc i64 %230 to i32
  %232 = icmp slt i32 %231, 1
  br i1 %232, label %236, label %233

233:                                              ; preds = %222
  %234 = add i32 %223, %231
  %235 = icmp ult i32 %234, %220
  br i1 %235, label %222, label %.loopexit87, !llvm.loop !47

236:                                              ; preds = %222
  %237 = icmp slt i32 %231, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %236
  %239 = load i32, ptr %221, align 4, !tbaa !4
  %240 = icmp eq i32 %239, 11
  br i1 %240, label %241, label %.loopexit98

241:                                              ; preds = %238
  store i32 1, ptr %38, align 4, !tbaa !17
  %242 = icmp eq i32 %223, 0
  br i1 %242, label %243, label %.loopexit87

243:                                              ; preds = %241
  %244 = load i32, ptr %221, align 4, !tbaa !4
  br label %.loopexit98

245:                                              ; preds = %236
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit87

.loopexit98:                                      ; preds = %238, %243
  %246 = phi i32 [ %244, %243 ], [ %239, %238 ]
  %247 = tail call ptr @strerror(i32 noundef %246) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %247) #13
  br label %.loopexit96

.loopexit87:                                      ; preds = %233, %245, %241
  %248 = phi i32 [ %223, %241 ], [ %223, %245 ], [ %234, %233 ]
  %249 = load i32, ptr %30, align 8, !tbaa !34
  %250 = add i32 %249, %248
  store i32 %250, ptr %30, align 8, !tbaa !34
  %251 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %251, ptr %36, align 8, !tbaa !35
  br label %252

252:                                              ; preds = %.loopexit87, %106
  %253 = phi i32 [ %250, %.loopexit87 ], [ %109, %106 ]
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %284, label %255

255:                                              ; preds = %252
  %256 = load i32, ptr %38, align 4, !tbaa !17
  %257 = icmp ne i32 %256, 0
  %258 = icmp ult i32 %253, 4
  %259 = and i1 %258, %257
  br i1 %259, label %284, label %260

260:                                              ; preds = %255
  %261 = icmp ugt i32 %253, 3
  %262 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %261, label %263, label %280

263:                                              ; preds = %260
  %264 = load i8, ptr %262, align 1, !tbaa !36
  %265 = icmp eq i8 %264, 31
  br i1 %265, label %266, label %280

266:                                              ; preds = %263
  %267 = getelementptr inbounds nuw i8, ptr %262, i64 1
  %268 = load i8, ptr %267, align 1, !tbaa !36
  %269 = icmp eq i8 %268, -117
  br i1 %269, label %270, label %280

270:                                              ; preds = %266
  %271 = getelementptr inbounds nuw i8, ptr %262, i64 2
  %272 = load i8, ptr %271, align 1, !tbaa !36
  %273 = icmp eq i8 %272, 8
  br i1 %273, label %274, label %280

274:                                              ; preds = %270
  %275 = getelementptr inbounds nuw i8, ptr %262, i64 3
  %276 = load i8, ptr %275, align 1, !tbaa !36
  %277 = icmp ult i8 %276, 32
  br i1 %277, label %278, label %280

278:                                              ; preds = %274
  %279 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %416

280:                                              ; preds = %274, %270, %266, %263, %260
  %281 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %281, ptr %27, align 8, !tbaa !20
  %282 = zext i32 %253 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %281, ptr align 1 %262, i64 %282, i1 false)
  %283 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %283, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %418

284:                                              ; preds = %255, %252, %99
  %285 = load i32, ptr %31, align 8, !tbaa !26
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %.loopexit99, label %416

287:                                              ; preds = %69
  %288 = load ptr, ptr %34, align 8, !tbaa !30
  %289 = load i32, ptr %32, align 8, !tbaa !27
  %290 = shl i32 %289, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %291 = tail call ptr @__errno_location() #16
  store i32 0, ptr %291, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %292

292:                                              ; preds = %303, %287
  %293 = phi i32 [ %305, %303 ], [ 0, %287 ]
  %294 = sub i32 %290, %293
  %295 = tail call i32 @llvm.umin.i32(i32 %294, i32 1073741824)
  %296 = load i32, ptr %39, align 4, !tbaa !46
  %297 = zext i32 %293 to i64
  %298 = getelementptr inbounds nuw i8, ptr %288, i64 %297
  %299 = zext nneg i32 %295 to i64
  %300 = tail call i64 @read(i32 noundef %296, ptr noundef %298, i64 noundef %299) #13
  %301 = trunc i64 %300 to i32
  %302 = icmp slt i32 %301, 1
  br i1 %302, label %307, label %303

303:                                              ; preds = %292
  %304 = load i32, ptr %0, align 4, !tbaa !4
  %305 = add i32 %304, %301
  store i32 %305, ptr %0, align 4, !tbaa !4
  %306 = icmp ult i32 %305, %290
  br i1 %306, label %292, label %.loopexit95, !llvm.loop !47

307:                                              ; preds = %292
  %308 = icmp slt i32 %301, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %307
  %310 = load i32, ptr %291, align 4, !tbaa !4
  %311 = icmp eq i32 %310, 11
  br i1 %311, label %312, label %.loopexit101

312:                                              ; preds = %309
  store i32 1, ptr %38, align 4, !tbaa !17
  %313 = load i32, ptr %0, align 4, !tbaa !4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %.loopexit95

315:                                              ; preds = %312
  %316 = load i32, ptr %291, align 4, !tbaa !4
  br label %.loopexit101

317:                                              ; preds = %307
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit95

.loopexit101:                                     ; preds = %309, %315
  %318 = phi i32 [ %316, %315 ], [ %310, %309 ]
  %319 = tail call ptr @strerror(i32 noundef %318) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %319) #13
  br label %.loopexit96

.loopexit95:                                      ; preds = %303, %317, %312
  %320 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %320, ptr %27, align 8, !tbaa !20
  br label %.loopexit99

321:                                              ; preds = %69
  %322 = load i32, ptr %32, align 8, !tbaa !27
  %323 = shl i32 %322, 1
  store i32 %323, ptr %33, align 8, !tbaa !48
  %324 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %324, ptr %35, align 8, !tbaa !49
  br label %325

325:                                              ; preds = %396, %321
  %326 = phi i32 [ 0, %321 ], [ %375, %396 ]
  %327 = load i32, ptr %30, align 8, !tbaa !34
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %374

329:                                              ; preds = %325
  %330 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %330, label %.loopexit92 [
    i32 0, label %331
    i32 -5, label %331
  ]

331:                                              ; preds = %329, %329
  %332 = load i32, ptr %29, align 8, !tbaa !24
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %370

334:                                              ; preds = %331
  %335 = load ptr, ptr %37, align 8, !tbaa !29
  %336 = load i32, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %38, align 4, !tbaa !17
  %337 = tail call ptr @__errno_location() #16
  store i32 0, ptr %337, align 4, !tbaa !4
  br label %338

338:                                              ; preds = %349, %334
  %339 = phi i32 [ 0, %334 ], [ %350, %349 ]
  %340 = sub i32 %336, %339
  %341 = tail call i32 @llvm.umin.i32(i32 %340, i32 1073741824)
  %342 = load i32, ptr %39, align 4, !tbaa !46
  %343 = zext i32 %339 to i64
  %344 = getelementptr inbounds nuw i8, ptr %335, i64 %343
  %345 = zext nneg i32 %341 to i64
  %346 = tail call i64 @read(i32 noundef %342, ptr noundef %344, i64 noundef %345) #13
  %347 = trunc i64 %346 to i32
  %348 = icmp slt i32 %347, 1
  br i1 %348, label %352, label %349

349:                                              ; preds = %338
  %350 = add i32 %339, %347
  %351 = icmp ult i32 %350, %336
  br i1 %351, label %338, label %.loopexit86, !llvm.loop !47

352:                                              ; preds = %338
  %353 = icmp slt i32 %347, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %352
  %355 = load i32, ptr %337, align 4, !tbaa !4
  %356 = icmp eq i32 %355, 11
  br i1 %356, label %357, label %.loopexit94

357:                                              ; preds = %354
  store i32 1, ptr %38, align 4, !tbaa !17
  %358 = icmp eq i32 %339, 0
  br i1 %358, label %359, label %.loopexit86

359:                                              ; preds = %357
  %360 = load i32, ptr %337, align 4, !tbaa !4
  br label %.loopexit94

361:                                              ; preds = %352
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit86

.loopexit94:                                      ; preds = %354, %359
  %362 = phi i32 [ %360, %359 ], [ %355, %354 ]
  %363 = tail call ptr @strerror(i32 noundef %362) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %363) #13
  %364 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit92

.loopexit86:                                      ; preds = %349, %361, %357
  %365 = phi i32 [ %339, %357 ], [ %339, %361 ], [ %350, %349 ]
  %366 = load i32, ptr %30, align 8, !tbaa !34
  %367 = add i32 %366, %365
  store i32 %367, ptr %30, align 8, !tbaa !34
  %368 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %368, ptr %36, align 8, !tbaa !35
  %369 = icmp eq i32 %367, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %.loopexit86, %331
  %371 = load i32, ptr %38, align 4, !tbaa !17
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %.loopexit92

373:                                              ; preds = %370
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit92

374:                                              ; preds = %.loopexit86, %325
  %375 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %376 = load i32, ptr %33, align 8, !tbaa !48
  %377 = icmp ult i32 %376, %323
  br i1 %377, label %378, label %379

378:                                              ; preds = %374
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %379

379:                                              ; preds = %378, %374
  switch i32 %375, label %396 [
    i32 -2, label %380
    i32 2, label %380
    i32 -4, label %381
    i32 -3, label %382
  ]

380:                                              ; preds = %379, %379
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit92

381:                                              ; preds = %379
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %400

382:                                              ; preds = %379
  %383 = load i32, ptr %40, align 4, !tbaa !33
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %391

385:                                              ; preds = %382
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  %386 = sub i32 %323, %376
  store i32 %386, ptr %0, align 8, !tbaa !19
  %387 = load ptr, ptr %35, align 8, !tbaa !49
  %388 = zext i32 %386 to i64
  %389 = sub nsw i64 0, %388
  %390 = getelementptr inbounds i8, ptr %387, i64 %389
  store ptr %390, ptr %27, align 8, !tbaa !20
  br label %416

391:                                              ; preds = %382
  %392 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %393 = load ptr, ptr %392, align 8, !tbaa !50
  %394 = icmp eq ptr %393, null
  %395 = select i1 %394, ptr @.str.6, ptr %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %395) #13
  br label %400

396:                                              ; preds = %379
  %397 = icmp ne i32 %376, 0
  %398 = icmp ne i32 %375, 1
  %399 = select i1 %397, i1 %398, i1 false
  br i1 %399, label %325, label %.loopexit92, !llvm.loop !51

400:                                              ; preds = %391, %381
  %401 = load i32, ptr %33, align 8, !tbaa !48
  %402 = sub i32 %323, %401
  store i32 %402, ptr %0, align 8, !tbaa !19
  %403 = load ptr, ptr %35, align 8, !tbaa !49
  %404 = zext i32 %402 to i64
  %405 = sub nsw i64 0, %404
  %406 = getelementptr inbounds i8, ptr %403, i64 %405
  store ptr %406, ptr %27, align 8, !tbaa !20
  br label %.loopexit96

.loopexit92:                                      ; preds = %396, %329, %380, %373, %370, %.loopexit94
  %407 = phi i32 [ %364, %.loopexit94 ], [ %326, %370 ], [ %326, %373 ], [ %375, %380 ], [ %330, %329 ], [ %375, %396 ]
  %408 = load i32, ptr %33, align 8, !tbaa !48
  %409 = sub i32 %323, %408
  store i32 %409, ptr %0, align 8, !tbaa !19
  %410 = load ptr, ptr %35, align 8, !tbaa !49
  %411 = zext i32 %409 to i64
  %412 = sub nsw i64 0, %411
  %413 = getelementptr inbounds i8, ptr %410, i64 %412
  store ptr %413, ptr %27, align 8, !tbaa !20
  switch i32 %407, label %.loopexit96 [
    i32 1, label %414
    i32 0, label %416
  ]

414:                                              ; preds = %.loopexit92
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %416

415:                                              ; preds = %69
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit96

416:                                              ; preds = %414, %.loopexit92, %385, %284, %278
  %417 = load i32, ptr %0, align 8, !tbaa !19
  br label %418

418:                                              ; preds = %416, %280
  %419 = phi i32 [ %417, %416 ], [ %283, %280 ]
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %.loopexit99

421:                                              ; preds = %418
  %422 = load i32, ptr %29, align 8, !tbaa !24
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %.backedge, label %424

424:                                              ; preds = %421
  %425 = load i32, ptr %30, align 8, !tbaa !34
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %.loopexit99, label %.backedge

.backedge:                                        ; preds = %424, %421
  br label %69, !llvm.loop !52

.loopexit99:                                      ; preds = %424, %418, %284, %.loopexit95
  %427 = load i64, ptr %23, align 8, !tbaa !18
  br label %428

428:                                              ; preds = %.loopexit99, %60
  %429 = phi i64 [ %427, %.loopexit99 ], [ %62, %60 ]
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %.loopexit100, label %44, !llvm.loop !53

.loopexit100:                                     ; preds = %428, %66, %22
  %431 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %440 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %449

449:                                              ; preds = %989, %.loopexit100
  %450 = phi ptr [ %1, %.loopexit100 ], [ %984, %989 ]
  %451 = phi i64 [ %20, %.loopexit100 ], [ %985, %989 ]
  %452 = phi i64 [ 0, %.loopexit100 ], [ %986, %989 ]
  %453 = tail call i64 @llvm.umin.i64(i64 %451, i64 4294967295)
  %454 = trunc nuw i64 %453 to i32
  %455 = load i32, ptr %0, align 8, !tbaa !19
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %468, label %457

457:                                              ; preds = %449
  %458 = tail call i32 @llvm.umin.i32(i32 %455, i32 %454)
  %459 = load ptr, ptr %431, align 8, !tbaa !20
  %460 = zext i32 %458 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %450, ptr align 1 %459, i64 %460, i1 false)
  %461 = load ptr, ptr %431, align 8, !tbaa !20
  %462 = getelementptr inbounds nuw i8, ptr %461, i64 %460
  store ptr %462, ptr %431, align 8, !tbaa !20
  %463 = load i32, ptr %0, align 8, !tbaa !19
  %464 = sub i32 %463, %458
  store i32 %464, ptr %0, align 8, !tbaa !19
  %465 = load i32, ptr %10, align 8, !tbaa !16
  %466 = icmp ne i32 %465, 0
  %467 = sext i1 %466 to i32
  br label %972

468:                                              ; preds = %449
  %469 = load i32, ptr %432, align 8, !tbaa !24
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %468
  %472 = load i32, ptr %433, align 8, !tbaa !25
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %.loopexit84, label %474

474:                                              ; preds = %471, %468
  %475 = load i32, ptr %434, align 8, !tbaa !26
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %.preheader669, label %477

477:                                              ; preds = %474
  %478 = load i32, ptr %435, align 8, !tbaa !27
  %479 = shl i32 %478, 1
  %480 = icmp ugt i32 %479, %454
  br i1 %480, label %.preheader669, label %844

.preheader669:                                    ; preds = %477, %474
  br label %481

481:                                              ; preds = %.preheader669, %839
  %482 = phi i32 [ %840, %839 ], [ %475, %.preheader669 ]
  switch i32 %482, label %827 [
    i32 0, label %483
    i32 1, label %699
    i32 2, label %734
  ]

483:                                              ; preds = %481
  %484 = load i32, ptr %435, align 8, !tbaa !27
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %505

486:                                              ; preds = %483
  %487 = load i32, ptr %446, align 4, !tbaa !28
  %488 = zext i32 %487 to i64
  %489 = tail call noalias ptr @malloc(i64 noundef %488) #15
  store ptr %489, ptr %439, align 8, !tbaa !29
  %490 = load i32, ptr %446, align 4, !tbaa !28
  %491 = shl i32 %490, 1
  %492 = zext i32 %491 to i64
  %493 = tail call noalias ptr @malloc(i64 noundef %492) #15
  store ptr %493, ptr %445, align 8, !tbaa !30
  %494 = icmp eq ptr %489, null
  %495 = icmp eq ptr %493, null
  %496 = or i1 %494, %495
  br i1 %496, label %497, label %498

497:                                              ; preds = %486
  tail call void @free(ptr noundef %493) #13
  tail call void @free(ptr noundef %489) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

498:                                              ; preds = %486
  %499 = load i32, ptr %446, align 4, !tbaa !28
  store i32 %499, ptr %435, align 8, !tbaa !27
  store i32 0, ptr %433, align 8, !tbaa !25
  store ptr null, ptr %438, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %447, i8 0, i64 24, i1 false)
  %500 = tail call i32 @inflateInit2_(ptr noundef nonnull %438, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %498
  %503 = load ptr, ptr %445, align 8, !tbaa !30
  tail call void @free(ptr noundef %503) #13
  %504 = load ptr, ptr %439, align 8, !tbaa !29
  tail call void @free(ptr noundef %504) #13
  store i32 0, ptr %435, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

505:                                              ; preds = %498, %483
  %506 = load i32, ptr %448, align 8, !tbaa !32
  %507 = icmp eq i32 %506, -1
  br i1 %507, label %511, label %508

508:                                              ; preds = %505
  %509 = load i32, ptr %442, align 4, !tbaa !33
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %516

511:                                              ; preds = %508, %505
  %512 = tail call i32 @inflateReset(ptr noundef nonnull %438) #13
  store i32 2, ptr %434, align 8, !tbaa !26
  %513 = load i32, ptr %442, align 4, !tbaa !33
  %514 = icmp ne i32 %513, -1
  %515 = zext i1 %514 to i32
  store i32 %515, ptr %442, align 4, !tbaa !33
  store i32 0, ptr %448, align 8, !tbaa !32
  br label %696

516:                                              ; preds = %508
  %517 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %517, label %.loopexit78 [
    i32 0, label %518
    i32 -5, label %518
  ]

518:                                              ; preds = %516, %516
  %519 = load i32, ptr %432, align 8, !tbaa !24
  %520 = icmp eq i32 %519, 0
  %521 = load i32, ptr %433, align 8, !tbaa !34
  br i1 %520, label %522, label %664

522:                                              ; preds = %518
  %523 = icmp eq i32 %521, 0
  %524 = load ptr, ptr %439, align 8, !tbaa !29
  %525 = ptrtoaddr ptr %524 to i64
  br i1 %523, label %626, label %526

526:                                              ; preds = %522
  %527 = load ptr, ptr %438, align 8, !tbaa !35
  %528 = icmp eq ptr %527, %524
  br i1 %528, label %626, label %529

529:                                              ; preds = %526
  %530 = ptrtoaddr ptr %527 to i64
  %531 = zext i32 %521 to i64
  %532 = icmp ult i32 %521, 4
  %533 = sub i64 %525, %530
  %534 = icmp ult i64 %533, 32
  %535 = select i1 %532, i1 true, i1 %534
  br i1 %535, label %575, label %536

536:                                              ; preds = %529
  %537 = icmp ult i32 %521, 32
  br i1 %537, label %559, label %538

538:                                              ; preds = %536
  %539 = and i64 %531, 4294967264
  br label %540

540:                                              ; preds = %540, %538
  %541 = phi i64 [ 0, %538 ], [ %548, %540 ]
  %542 = getelementptr i8, ptr %524, i64 %541
  %543 = getelementptr i8, ptr %527, i64 %541
  %544 = getelementptr i8, ptr %543, i64 16
  %545 = load <16 x i8>, ptr %543, align 1, !tbaa !36
  %546 = load <16 x i8>, ptr %544, align 1, !tbaa !36
  %547 = getelementptr i8, ptr %542, i64 16
  store <16 x i8> %545, ptr %542, align 1, !tbaa !36
  store <16 x i8> %546, ptr %547, align 1, !tbaa !36
  %548 = add nuw nsw i64 %541, 32
  %549 = icmp eq i64 %548, %539
  br i1 %549, label %550, label %540, !llvm.loop !54

550:                                              ; preds = %540
  %551 = icmp eq i64 %539, %531
  br i1 %551, label %.loopexit71, label %552

552:                                              ; preds = %550
  %553 = trunc nuw i64 %539 to i32
  %554 = sub i32 %521, %553
  %555 = getelementptr i8, ptr %527, i64 %539
  %556 = getelementptr i8, ptr %524, i64 %539
  %557 = and i64 %531, 28
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %575, label %559, !prof !41

559:                                              ; preds = %552, %536
  %560 = phi i64 [ %539, %552 ], [ 0, %536 ]
  %561 = and i64 %531, 4294967292
  br label %562

562:                                              ; preds = %562, %559
  %563 = phi i64 [ %560, %559 ], [ %567, %562 ]
  %564 = getelementptr i8, ptr %524, i64 %563
  %565 = getelementptr i8, ptr %527, i64 %563
  %566 = load <4 x i8>, ptr %565, align 1, !tbaa !36
  store <4 x i8> %566, ptr %564, align 1, !tbaa !36
  %567 = add nuw i64 %563, 4
  %568 = icmp eq i64 %567, %561
  br i1 %568, label %569, label %562, !llvm.loop !55

569:                                              ; preds = %562
  %570 = getelementptr i8, ptr %524, i64 %561
  %571 = getelementptr i8, ptr %527, i64 %561
  %572 = trunc nuw i64 %561 to i32
  %573 = sub i32 %521, %572
  %574 = icmp eq i64 %561, %531
  br i1 %574, label %.loopexit71, label %575

575:                                              ; preds = %569, %552, %529
  %576 = phi ptr [ %524, %529 ], [ %556, %552 ], [ %570, %569 ]
  %577 = phi ptr [ %527, %529 ], [ %555, %552 ], [ %571, %569 ]
  %578 = phi i32 [ %521, %529 ], [ %554, %552 ], [ %573, %569 ]
  %579 = add i32 %578, -1
  %580 = and i32 %578, 7
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %.loopexit73, label %.preheader72

.preheader72:                                     ; preds = %575, %.preheader72
  %582 = phi ptr [ %587, %.preheader72 ], [ %576, %575 ]
  %583 = phi ptr [ %585, %.preheader72 ], [ %577, %575 ]
  %584 = phi i32 [ %588, %.preheader72 ], [ 0, %575 ]
  %585 = getelementptr inbounds nuw i8, ptr %583, i64 1
  %586 = load i8, ptr %583, align 1, !tbaa !36
  %587 = getelementptr inbounds nuw i8, ptr %582, i64 1
  store i8 %586, ptr %582, align 1, !tbaa !36
  %588 = add nuw nsw i32 %584, 1
  %589 = icmp eq i32 %588, %580
  br i1 %589, label %.loopexit73.loopexit, label %.preheader72, !llvm.loop !56

.loopexit73.loopexit:                             ; preds = %.preheader72
  %590 = and i32 %578, -8
  br label %.loopexit73

.loopexit73:                                      ; preds = %.loopexit73.loopexit, %575
  %591 = phi ptr [ %576, %575 ], [ %587, %.loopexit73.loopexit ]
  %592 = phi ptr [ %577, %575 ], [ %585, %.loopexit73.loopexit ]
  %593 = phi i32 [ %578, %575 ], [ %590, %.loopexit73.loopexit ]
  %594 = icmp ult i32 %579, 7
  br i1 %594, label %.loopexit71, label %.preheader

.preheader:                                       ; preds = %.loopexit73, %.preheader
  %595 = phi ptr [ %621, %.preheader ], [ %591, %.loopexit73 ]
  %596 = phi ptr [ %619, %.preheader ], [ %592, %.loopexit73 ]
  %597 = phi i32 [ %622, %.preheader ], [ %593, %.loopexit73 ]
  %598 = getelementptr inbounds nuw i8, ptr %596, i64 1
  %599 = load i8, ptr %596, align 1, !tbaa !36
  %600 = getelementptr inbounds nuw i8, ptr %595, i64 1
  store i8 %599, ptr %595, align 1, !tbaa !36
  %601 = getelementptr inbounds nuw i8, ptr %596, i64 2
  %602 = load i8, ptr %598, align 1, !tbaa !36
  %603 = getelementptr inbounds nuw i8, ptr %595, i64 2
  store i8 %602, ptr %600, align 1, !tbaa !36
  %604 = getelementptr inbounds nuw i8, ptr %596, i64 3
  %605 = load i8, ptr %601, align 1, !tbaa !36
  %606 = getelementptr inbounds nuw i8, ptr %595, i64 3
  store i8 %605, ptr %603, align 1, !tbaa !36
  %607 = getelementptr inbounds nuw i8, ptr %596, i64 4
  %608 = load i8, ptr %604, align 1, !tbaa !36
  %609 = getelementptr inbounds nuw i8, ptr %595, i64 4
  store i8 %608, ptr %606, align 1, !tbaa !36
  %610 = getelementptr inbounds nuw i8, ptr %596, i64 5
  %611 = load i8, ptr %607, align 1, !tbaa !36
  %612 = getelementptr inbounds nuw i8, ptr %595, i64 5
  store i8 %611, ptr %609, align 1, !tbaa !36
  %613 = getelementptr inbounds nuw i8, ptr %596, i64 6
  %614 = load i8, ptr %610, align 1, !tbaa !36
  %615 = getelementptr inbounds nuw i8, ptr %595, i64 6
  store i8 %614, ptr %612, align 1, !tbaa !36
  %616 = getelementptr inbounds nuw i8, ptr %596, i64 7
  %617 = load i8, ptr %613, align 1, !tbaa !36
  %618 = getelementptr inbounds nuw i8, ptr %595, i64 7
  store i8 %617, ptr %615, align 1, !tbaa !36
  %619 = getelementptr inbounds nuw i8, ptr %596, i64 8
  %620 = load i8, ptr %616, align 1, !tbaa !36
  %621 = getelementptr inbounds nuw i8, ptr %595, i64 8
  store i8 %620, ptr %618, align 1, !tbaa !36
  %622 = add i32 %597, -8
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %.loopexit71, label %.preheader, !llvm.loop !57

.loopexit71:                                      ; preds = %.preheader, %.loopexit73, %569, %550
  %624 = load i32, ptr %433, align 8, !tbaa !34
  %625 = load ptr, ptr %439, align 8, !tbaa !29
  br label %626

626:                                              ; preds = %.loopexit71, %526, %522
  %627 = phi ptr [ %625, %.loopexit71 ], [ %524, %526 ], [ %524, %522 ]
  %628 = phi i32 [ %624, %.loopexit71 ], [ %521, %526 ], [ 0, %522 ]
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds nuw i8, ptr %627, i64 %629
  %631 = load i32, ptr %435, align 8, !tbaa !27
  %632 = sub i32 %631, %628
  store i32 0, ptr %440, align 4, !tbaa !17
  %633 = tail call ptr @__errno_location() #16
  store i32 0, ptr %633, align 4, !tbaa !4
  br label %634

634:                                              ; preds = %645, %626
  %635 = phi i32 [ 0, %626 ], [ %646, %645 ]
  %636 = sub i32 %632, %635
  %637 = tail call i32 @llvm.umin.i32(i32 %636, i32 1073741824)
  %638 = load i32, ptr %441, align 4, !tbaa !46
  %639 = zext i32 %635 to i64
  %640 = getelementptr inbounds nuw i8, ptr %630, i64 %639
  %641 = zext nneg i32 %637 to i64
  %642 = tail call i64 @read(i32 noundef %638, ptr noundef %640, i64 noundef %641) #13
  %643 = trunc i64 %642 to i32
  %644 = icmp slt i32 %643, 1
  br i1 %644, label %648, label %645

645:                                              ; preds = %634
  %646 = add i32 %635, %643
  %647 = icmp ult i32 %646, %632
  br i1 %647, label %634, label %.loopexit70, !llvm.loop !47

648:                                              ; preds = %634
  %649 = icmp slt i32 %643, 0
  br i1 %649, label %650, label %657

650:                                              ; preds = %648
  %651 = load i32, ptr %633, align 4, !tbaa !4
  %652 = icmp eq i32 %651, 11
  br i1 %652, label %653, label %.loopexit79

653:                                              ; preds = %650
  store i32 1, ptr %440, align 4, !tbaa !17
  %654 = icmp eq i32 %635, 0
  br i1 %654, label %655, label %.loopexit70

655:                                              ; preds = %653
  %656 = load i32, ptr %633, align 4, !tbaa !4
  br label %.loopexit79

657:                                              ; preds = %648
  store i32 1, ptr %432, align 8, !tbaa !24
  br label %.loopexit70

.loopexit79:                                      ; preds = %650, %655
  %658 = phi i32 [ %656, %655 ], [ %651, %650 ]
  %659 = tail call ptr @strerror(i32 noundef %658) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %659) #13
  br label %.loopexit78

.loopexit70:                                      ; preds = %645, %657, %653
  %660 = phi i32 [ %635, %653 ], [ %635, %657 ], [ %646, %645 ]
  %661 = load i32, ptr %433, align 8, !tbaa !34
  %662 = add i32 %661, %660
  store i32 %662, ptr %433, align 8, !tbaa !34
  %663 = load ptr, ptr %439, align 8, !tbaa !29
  store ptr %663, ptr %438, align 8, !tbaa !35
  br label %664

664:                                              ; preds = %.loopexit70, %518
  %665 = phi i32 [ %662, %.loopexit70 ], [ %521, %518 ]
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %696, label %667

667:                                              ; preds = %664
  %668 = load i32, ptr %440, align 4, !tbaa !17
  %669 = icmp ne i32 %668, 0
  %670 = icmp ult i32 %665, 4
  %671 = and i1 %670, %669
  br i1 %671, label %696, label %672

672:                                              ; preds = %667
  %673 = icmp ugt i32 %665, 3
  %674 = load ptr, ptr %438, align 8, !tbaa !35
  br i1 %673, label %675, label %692

675:                                              ; preds = %672
  %676 = load i8, ptr %674, align 1, !tbaa !36
  %677 = icmp eq i8 %676, 31
  br i1 %677, label %678, label %692

678:                                              ; preds = %675
  %679 = getelementptr inbounds nuw i8, ptr %674, i64 1
  %680 = load i8, ptr %679, align 1, !tbaa !36
  %681 = icmp eq i8 %680, -117
  br i1 %681, label %682, label %692

682:                                              ; preds = %678
  %683 = getelementptr inbounds nuw i8, ptr %674, i64 2
  %684 = load i8, ptr %683, align 1, !tbaa !36
  %685 = icmp eq i8 %684, 8
  br i1 %685, label %686, label %692

686:                                              ; preds = %682
  %687 = getelementptr inbounds nuw i8, ptr %674, i64 3
  %688 = load i8, ptr %687, align 1, !tbaa !36
  %689 = icmp ult i8 %688, 32
  br i1 %689, label %690, label %692

690:                                              ; preds = %686
  %691 = tail call i32 @inflateReset(ptr noundef nonnull %438) #13
  store i32 2, ptr %434, align 8, !tbaa !26
  store i32 1, ptr %442, align 4, !tbaa !33
  store i32 0, ptr %448, align 8, !tbaa !32
  br label %828

692:                                              ; preds = %686, %682, %678, %675, %672
  %693 = load ptr, ptr %445, align 8, !tbaa !30
  store ptr %693, ptr %431, align 8, !tbaa !20
  %694 = zext i32 %665 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %693, ptr align 1 %674, i64 %694, i1 false)
  %695 = load i32, ptr %433, align 8, !tbaa !34
  store i32 %695, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %433, align 8, !tbaa !34
  store i32 1, ptr %434, align 8, !tbaa !26
  br label %830

696:                                              ; preds = %667, %664, %511
  %697 = load i32, ptr %434, align 8, !tbaa !26
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %.loopexit80, label %828

699:                                              ; preds = %481
  %700 = load ptr, ptr %445, align 8, !tbaa !30
  %701 = load i32, ptr %435, align 8, !tbaa !27
  %702 = shl i32 %701, 1
  store i32 0, ptr %440, align 4, !tbaa !17
  %703 = tail call ptr @__errno_location() #16
  store i32 0, ptr %703, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %704

704:                                              ; preds = %715, %699
  %705 = phi i32 [ %717, %715 ], [ 0, %699 ]
  %706 = sub i32 %702, %705
  %707 = tail call i32 @llvm.umin.i32(i32 %706, i32 1073741824)
  %708 = load i32, ptr %441, align 4, !tbaa !46
  %709 = zext i32 %705 to i64
  %710 = getelementptr inbounds nuw i8, ptr %700, i64 %709
  %711 = zext nneg i32 %707 to i64
  %712 = tail call i64 @read(i32 noundef %708, ptr noundef %710, i64 noundef %711) #13
  %713 = trunc i64 %712 to i32
  %714 = icmp slt i32 %713, 1
  br i1 %714, label %719, label %715

715:                                              ; preds = %704
  %716 = load i32, ptr %0, align 4, !tbaa !4
  %717 = add i32 %716, %713
  store i32 %717, ptr %0, align 4, !tbaa !4
  %718 = icmp ult i32 %717, %702
  br i1 %718, label %704, label %.loopexit77, !llvm.loop !47

719:                                              ; preds = %704
  %720 = icmp slt i32 %713, 0
  br i1 %720, label %721, label %729

721:                                              ; preds = %719
  %722 = load i32, ptr %703, align 4, !tbaa !4
  %723 = icmp eq i32 %722, 11
  br i1 %723, label %724, label %730

724:                                              ; preds = %721
  store i32 1, ptr %440, align 4, !tbaa !17
  %725 = load i32, ptr %0, align 4, !tbaa !4
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %727, label %.loopexit77

727:                                              ; preds = %724
  %728 = load i32, ptr %703, align 4, !tbaa !4
  br label %730

729:                                              ; preds = %719
  store i32 1, ptr %432, align 8, !tbaa !24
  br label %.loopexit77

730:                                              ; preds = %727, %721
  %731 = phi i32 [ %728, %727 ], [ %722, %721 ]
  %732 = tail call ptr @strerror(i32 noundef %731) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %732) #13
  br label %.loopexit78

.loopexit77:                                      ; preds = %715, %729, %724
  %733 = load ptr, ptr %445, align 8, !tbaa !30
  store ptr %733, ptr %431, align 8, !tbaa !20
  br label %.loopexit80

734:                                              ; preds = %481
  %735 = load i32, ptr %435, align 8, !tbaa !27
  %736 = shl i32 %735, 1
  store i32 %736, ptr %436, align 8, !tbaa !48
  %737 = load ptr, ptr %445, align 8, !tbaa !30
  store ptr %737, ptr %437, align 8, !tbaa !49
  br label %738

738:                                              ; preds = %808, %734
  %739 = phi i32 [ 0, %734 ], [ %788, %808 ]
  %740 = load i32, ptr %433, align 8, !tbaa !34
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %787

742:                                              ; preds = %738
  %743 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %743, label %.loopexit74 [
    i32 0, label %744
    i32 -5, label %744
  ]

744:                                              ; preds = %742, %742
  %745 = load i32, ptr %432, align 8, !tbaa !24
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %783

747:                                              ; preds = %744
  %748 = load ptr, ptr %439, align 8, !tbaa !29
  %749 = load i32, ptr %435, align 8, !tbaa !27
  store i32 0, ptr %440, align 4, !tbaa !17
  %750 = tail call ptr @__errno_location() #16
  store i32 0, ptr %750, align 4, !tbaa !4
  br label %751

751:                                              ; preds = %762, %747
  %752 = phi i32 [ 0, %747 ], [ %763, %762 ]
  %753 = sub i32 %749, %752
  %754 = tail call i32 @llvm.umin.i32(i32 %753, i32 1073741824)
  %755 = load i32, ptr %441, align 4, !tbaa !46
  %756 = zext i32 %752 to i64
  %757 = getelementptr inbounds nuw i8, ptr %748, i64 %756
  %758 = zext nneg i32 %754 to i64
  %759 = tail call i64 @read(i32 noundef %755, ptr noundef %757, i64 noundef %758) #13
  %760 = trunc i64 %759 to i32
  %761 = icmp slt i32 %760, 1
  br i1 %761, label %765, label %762

762:                                              ; preds = %751
  %763 = add i32 %752, %760
  %764 = icmp ult i32 %763, %749
  br i1 %764, label %751, label %.loopexit, !llvm.loop !47

765:                                              ; preds = %751
  %766 = icmp slt i32 %760, 0
  br i1 %766, label %767, label %774

767:                                              ; preds = %765
  %768 = load i32, ptr %750, align 4, !tbaa !4
  %769 = icmp eq i32 %768, 11
  br i1 %769, label %770, label %.loopexit75

770:                                              ; preds = %767
  store i32 1, ptr %440, align 4, !tbaa !17
  %771 = icmp eq i32 %752, 0
  br i1 %771, label %772, label %.loopexit

772:                                              ; preds = %770
  %773 = load i32, ptr %750, align 4, !tbaa !4
  br label %.loopexit75

774:                                              ; preds = %765
  store i32 1, ptr %432, align 8, !tbaa !24
  br label %.loopexit

.loopexit75:                                      ; preds = %767, %772
  %775 = phi i32 [ %773, %772 ], [ %768, %767 ]
  %776 = tail call ptr @strerror(i32 noundef %775) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %776) #13
  %777 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit74

.loopexit:                                        ; preds = %762, %774, %770
  %778 = phi i32 [ %752, %770 ], [ %752, %774 ], [ %763, %762 ]
  %779 = load i32, ptr %433, align 8, !tbaa !34
  %780 = add i32 %779, %778
  store i32 %780, ptr %433, align 8, !tbaa !34
  %781 = load ptr, ptr %439, align 8, !tbaa !29
  store ptr %781, ptr %438, align 8, !tbaa !35
  %782 = icmp eq i32 %780, 0
  br i1 %782, label %783, label %787

783:                                              ; preds = %.loopexit, %744
  %784 = load i32, ptr %440, align 4, !tbaa !17
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %786, label %.loopexit74

786:                                              ; preds = %783
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit74

787:                                              ; preds = %.loopexit, %738
  %788 = tail call i32 @inflate(ptr noundef nonnull %438, i32 noundef 0) #13
  %789 = load i32, ptr %436, align 8, !tbaa !48
  %790 = icmp ult i32 %789, %736
  br i1 %790, label %791, label %792

791:                                              ; preds = %787
  store i32 0, ptr %442, align 4, !tbaa !33
  br label %792

792:                                              ; preds = %791, %787
  switch i32 %788, label %808 [
    i32 -2, label %793
    i32 2, label %793
    i32 -4, label %794
    i32 -3, label %795
  ]

793:                                              ; preds = %792, %792
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit74

794:                                              ; preds = %792
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %812

795:                                              ; preds = %792
  %796 = load i32, ptr %442, align 4, !tbaa !33
  %797 = icmp eq i32 %796, 1
  br i1 %797, label %798, label %804

798:                                              ; preds = %795
  store i32 0, ptr %433, align 8, !tbaa !34
  store i32 1, ptr %432, align 8, !tbaa !24
  store i32 0, ptr %434, align 8, !tbaa !26
  %799 = sub i32 %736, %789
  store i32 %799, ptr %0, align 8, !tbaa !19
  %800 = load ptr, ptr %437, align 8, !tbaa !49
  %801 = zext i32 %799 to i64
  %802 = sub nsw i64 0, %801
  %803 = getelementptr inbounds i8, ptr %800, i64 %802
  store ptr %803, ptr %431, align 8, !tbaa !20
  br label %828

804:                                              ; preds = %795
  %805 = load ptr, ptr %443, align 8, !tbaa !50
  %806 = icmp eq ptr %805, null
  %807 = select i1 %806, ptr @.str.6, ptr %805
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %807) #13
  br label %812

808:                                              ; preds = %792
  %809 = icmp ne i32 %789, 0
  %810 = icmp ne i32 %788, 1
  %811 = select i1 %809, i1 %810, i1 false
  br i1 %811, label %738, label %.loopexit74, !llvm.loop !51

812:                                              ; preds = %804, %794
  %813 = load i32, ptr %436, align 8, !tbaa !48
  %814 = sub i32 %736, %813
  store i32 %814, ptr %0, align 8, !tbaa !19
  %815 = load ptr, ptr %437, align 8, !tbaa !49
  %816 = zext i32 %814 to i64
  %817 = sub nsw i64 0, %816
  %818 = getelementptr inbounds i8, ptr %815, i64 %817
  store ptr %818, ptr %431, align 8, !tbaa !20
  br label %.loopexit78

.loopexit74:                                      ; preds = %808, %742, %793, %786, %783, %.loopexit75
  %819 = phi i32 [ %777, %.loopexit75 ], [ %739, %783 ], [ %739, %786 ], [ %788, %793 ], [ %788, %808 ], [ %743, %742 ]
  %820 = load i32, ptr %436, align 8, !tbaa !48
  %821 = sub i32 %736, %820
  store i32 %821, ptr %0, align 8, !tbaa !19
  %822 = load ptr, ptr %437, align 8, !tbaa !49
  %823 = zext i32 %821 to i64
  %824 = sub nsw i64 0, %823
  %825 = getelementptr inbounds i8, ptr %822, i64 %824
  store ptr %825, ptr %431, align 8, !tbaa !20
  switch i32 %819, label %.loopexit78 [
    i32 1, label %826
    i32 0, label %828
  ]

826:                                              ; preds = %.loopexit74
  store i32 0, ptr %442, align 4, !tbaa !33
  store i32 0, ptr %434, align 8, !tbaa !26
  br label %828

827:                                              ; preds = %481
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit78

828:                                              ; preds = %826, %.loopexit74, %798, %696, %690
  %829 = load i32, ptr %0, align 8, !tbaa !19
  br label %830

830:                                              ; preds = %828, %692
  %831 = phi i32 [ %829, %828 ], [ %695, %692 ]
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %833, label %.loopexit80

833:                                              ; preds = %830
  %834 = load i32, ptr %432, align 8, !tbaa !24
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %839, label %836

836:                                              ; preds = %833
  %837 = load i32, ptr %433, align 8, !tbaa !34
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %.loopexit80, label %839

839:                                              ; preds = %836, %833
  %840 = load i32, ptr %434, align 8, !tbaa !26
  br label %481, !llvm.loop !52

.loopexit78:                                      ; preds = %.loopexit74, %516, %827, %812, %730, %.loopexit79, %502, %497
  %841 = load i32, ptr %0, align 8, !tbaa !19
  %842 = icmp eq i32 %841, 0
  %843 = sext i1 %842 to i32
  br label %.loopexit80

844:                                              ; preds = %477
  %845 = icmp eq i32 %475, 1
  br i1 %845, label %846, label %875

846:                                              ; preds = %844
  store i32 0, ptr %440, align 4, !tbaa !17
  %847 = tail call ptr @__errno_location() #16
  store i32 0, ptr %847, align 4, !tbaa !4
  br label %848

848:                                              ; preds = %859, %846
  %849 = phi i32 [ 0, %846 ], [ %860, %859 ]
  %850 = sub i32 %454, %849
  %851 = tail call i32 @llvm.umin.i32(i32 %850, i32 1073741824)
  %852 = load i32, ptr %441, align 4, !tbaa !46
  %853 = zext i32 %849 to i64
  %854 = getelementptr inbounds nuw i8, ptr %450, i64 %853
  %855 = zext nneg i32 %851 to i64
  %856 = tail call i64 @read(i32 noundef %852, ptr noundef %854, i64 noundef %855) #13
  %857 = trunc i64 %856 to i32
  %858 = icmp slt i32 %857, 1
  br i1 %858, label %862, label %859

859:                                              ; preds = %848
  %860 = add i32 %849, %857
  %861 = icmp ult i32 %860, %454
  br i1 %861, label %848, label %970, !llvm.loop !47

862:                                              ; preds = %848
  %863 = icmp slt i32 %857, 0
  br i1 %863, label %864, label %874

864:                                              ; preds = %862
  %865 = load i32, ptr %847, align 4, !tbaa !4
  %866 = icmp eq i32 %865, 11
  br i1 %866, label %867, label %871

867:                                              ; preds = %864
  store i32 1, ptr %440, align 4, !tbaa !17
  %868 = icmp eq i32 %849, 0
  br i1 %868, label %869, label %972

869:                                              ; preds = %867
  %870 = load i32, ptr %847, align 4, !tbaa !4
  br label %871

871:                                              ; preds = %869, %864
  %872 = phi i32 [ %870, %869 ], [ %865, %864 ]
  %873 = tail call ptr @strerror(i32 noundef %872) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %873) #13
  br label %972

874:                                              ; preds = %862
  store i32 1, ptr %432, align 8, !tbaa !24
  br label %972

875:                                              ; preds = %844
  store i32 %454, ptr %436, align 8, !tbaa !58
  store ptr %450, ptr %437, align 8, !tbaa !59
  br label %876

876:                                              ; preds = %941, %875
  %877 = phi i32 [ 0, %875 ], [ %926, %941 ]
  %878 = load i32, ptr %433, align 8, !tbaa !34
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %880, label %925

880:                                              ; preds = %876
  %881 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %881, label %.loopexit81 [
    i32 0, label %882
    i32 -5, label %882
  ]

882:                                              ; preds = %880, %880
  %883 = load i32, ptr %432, align 8, !tbaa !24
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %921

885:                                              ; preds = %882
  %886 = load ptr, ptr %439, align 8, !tbaa !29
  %887 = load i32, ptr %435, align 8, !tbaa !27
  store i32 0, ptr %440, align 4, !tbaa !17
  %888 = tail call ptr @__errno_location() #16
  store i32 0, ptr %888, align 4, !tbaa !4
  br label %889

889:                                              ; preds = %900, %885
  %890 = phi i32 [ 0, %885 ], [ %901, %900 ]
  %891 = sub i32 %887, %890
  %892 = tail call i32 @llvm.umin.i32(i32 %891, i32 1073741824)
  %893 = load i32, ptr %441, align 4, !tbaa !46
  %894 = zext i32 %890 to i64
  %895 = getelementptr inbounds nuw i8, ptr %886, i64 %894
  %896 = zext nneg i32 %892 to i64
  %897 = tail call i64 @read(i32 noundef %893, ptr noundef %895, i64 noundef %896) #13
  %898 = trunc i64 %897 to i32
  %899 = icmp slt i32 %898, 1
  br i1 %899, label %903, label %900

900:                                              ; preds = %889
  %901 = add i32 %890, %898
  %902 = icmp ult i32 %901, %887
  br i1 %902, label %889, label %.loopexit76, !llvm.loop !47

903:                                              ; preds = %889
  %904 = icmp slt i32 %898, 0
  br i1 %904, label %905, label %912

905:                                              ; preds = %903
  %906 = load i32, ptr %888, align 4, !tbaa !4
  %907 = icmp eq i32 %906, 11
  br i1 %907, label %908, label %.loopexit83

908:                                              ; preds = %905
  store i32 1, ptr %440, align 4, !tbaa !17
  %909 = icmp eq i32 %890, 0
  br i1 %909, label %910, label %.loopexit76

910:                                              ; preds = %908
  %911 = load i32, ptr %888, align 4, !tbaa !4
  br label %.loopexit83

912:                                              ; preds = %903
  store i32 1, ptr %432, align 8, !tbaa !24
  br label %.loopexit76

.loopexit83:                                      ; preds = %905, %910
  %913 = phi i32 [ %911, %910 ], [ %906, %905 ]
  %914 = tail call ptr @strerror(i32 noundef %913) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %914) #13
  %915 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit81

.loopexit76:                                      ; preds = %900, %912, %908
  %916 = phi i32 [ %890, %908 ], [ %890, %912 ], [ %901, %900 ]
  %917 = load i32, ptr %433, align 8, !tbaa !34
  %918 = add i32 %917, %916
  store i32 %918, ptr %433, align 8, !tbaa !34
  %919 = load ptr, ptr %439, align 8, !tbaa !29
  store ptr %919, ptr %438, align 8, !tbaa !35
  %920 = icmp eq i32 %918, 0
  br i1 %920, label %921, label %925

921:                                              ; preds = %.loopexit76, %882
  %922 = load i32, ptr %440, align 4, !tbaa !17
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %924, label %.loopexit81

924:                                              ; preds = %921
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit81

925:                                              ; preds = %.loopexit76, %876
  %926 = tail call i32 @inflate(ptr noundef nonnull %438, i32 noundef 0) #13
  %927 = load i32, ptr %436, align 8, !tbaa !48
  %928 = icmp ult i32 %927, %454
  br i1 %928, label %929, label %930

929:                                              ; preds = %925
  store i32 0, ptr %442, align 4, !tbaa !33
  br label %930

930:                                              ; preds = %929, %925
  switch i32 %926, label %941 [
    i32 -2, label %931
    i32 2, label %931
    i32 -4, label %932
    i32 -3, label %933
  ]

931:                                              ; preds = %930, %930
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit81

932:                                              ; preds = %930
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %945

933:                                              ; preds = %930
  %934 = load i32, ptr %442, align 4, !tbaa !33
  %935 = icmp eq i32 %934, 1
  br i1 %935, label %936, label %937

936:                                              ; preds = %933
  store i32 0, ptr %433, align 8, !tbaa !34
  store i32 1, ptr %432, align 8, !tbaa !24
  store i32 0, ptr %434, align 8, !tbaa !26
  br label %945

937:                                              ; preds = %933
  %938 = load ptr, ptr %443, align 8, !tbaa !50
  %939 = icmp eq ptr %938, null
  %940 = select i1 %939, ptr @.str.6, ptr %938
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %940) #13
  br label %945

941:                                              ; preds = %930
  %942 = icmp ne i32 %927, 0
  %943 = icmp ne i32 %926, 1
  %944 = select i1 %942, i1 %943, i1 false
  br i1 %944, label %876, label %.loopexit81, !llvm.loop !51

945:                                              ; preds = %937, %936, %932
  %946 = phi i32 [ -3, %937 ], [ 0, %936 ], [ -4, %932 ]
  %947 = load i32, ptr %436, align 8, !tbaa !48
  %948 = sub i32 %454, %947
  %949 = load ptr, ptr %437, align 8, !tbaa !49
  %950 = zext i32 %948 to i64
  %951 = sub nsw i64 0, %950
  %952 = getelementptr inbounds i8, ptr %949, i64 %951
  store ptr %952, ptr %431, align 8, !tbaa !20
  br label %962

.loopexit81:                                      ; preds = %941, %880, %931, %924, %921, %.loopexit83
  %953 = phi i32 [ %915, %.loopexit83 ], [ %877, %921 ], [ %877, %924 ], [ %926, %931 ], [ %926, %941 ], [ %881, %880 ]
  %954 = load i32, ptr %436, align 8, !tbaa !48
  %955 = sub i32 %454, %954
  %956 = load ptr, ptr %437, align 8, !tbaa !49
  %957 = zext i32 %955 to i64
  %958 = sub nsw i64 0, %957
  %959 = getelementptr inbounds i8, ptr %956, i64 %958
  store ptr %959, ptr %431, align 8, !tbaa !20
  %960 = icmp eq i32 %953, 1
  br i1 %960, label %961, label %962

961:                                              ; preds = %.loopexit81
  store i32 0, ptr %442, align 4, !tbaa !33
  store i32 0, ptr %434, align 8, !tbaa !26
  br label %967

962:                                              ; preds = %.loopexit81, %945
  %963 = phi i64 [ %950, %945 ], [ %957, %.loopexit81 ]
  %964 = phi i32 [ %946, %945 ], [ %953, %.loopexit81 ]
  %965 = icmp ne i32 %964, 0
  %966 = sext i1 %965 to i32
  br label %967

967:                                              ; preds = %962, %961
  %968 = phi i64 [ %957, %961 ], [ %963, %962 ]
  %969 = phi i32 [ 0, %961 ], [ %966, %962 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %972

970:                                              ; preds = %859
  %971 = zext i32 %860 to i64
  br label %972

972:                                              ; preds = %970, %967, %874, %871, %867, %457
  %973 = phi i64 [ %971, %970 ], [ %853, %874 ], [ %853, %871 ], [ %853, %867 ], [ %460, %457 ], [ %968, %967 ]
  %974 = phi i32 [ 0, %970 ], [ 0, %874 ], [ -1, %871 ], [ 0, %867 ], [ %467, %457 ], [ %969, %967 ]
  %975 = load i64, ptr %444, align 8, !tbaa !21
  %976 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %975, i64 %973), !nosanitize !22
  %977 = extractvalue { i64, i1 } %976, 1, !nosanitize !22
  br i1 %977, label %978, label %979, !prof !23, !nosanitize !22

978:                                              ; preds = %972
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

979:                                              ; preds = %972
  %980 = extractvalue { i64, i1 } %976, 0, !nosanitize !22
  %981 = add i64 %973, %452
  %982 = getelementptr inbounds nuw i8, ptr %450, i64 %973
  %983 = sub i64 %451, %973
  store i64 %980, ptr %444, align 8, !tbaa !21
  br label %.loopexit80

.loopexit80:                                      ; preds = %836, %830, %696, %979, %.loopexit78, %.loopexit77
  %984 = phi ptr [ %982, %979 ], [ %450, %.loopexit78 ], [ %450, %.loopexit77 ], [ %450, %696 ], [ %450, %830 ], [ %450, %836 ]
  %985 = phi i64 [ %983, %979 ], [ %451, %.loopexit78 ], [ %451, %.loopexit77 ], [ %451, %696 ], [ %451, %830 ], [ %451, %836 ]
  %986 = phi i64 [ %981, %979 ], [ %452, %.loopexit78 ], [ %452, %.loopexit77 ], [ %452, %696 ], [ %452, %830 ], [ %452, %836 ]
  %987 = phi i32 [ %974, %979 ], [ %843, %.loopexit78 ], [ 0, %.loopexit77 ], [ 0, %696 ], [ 0, %830 ], [ 0, %836 ]
  %988 = icmp eq i64 %985, 0
  br i1 %988, label %.loopexit85, label %989

989:                                              ; preds = %.loopexit80
  %990 = icmp eq i32 %987, 0
  br i1 %990, label %449, label %991, !llvm.loop !60

991:                                              ; preds = %989
  %992 = load i32, ptr %432, align 8, !tbaa !24
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %.loopexit85, label %.loopexit84

.loopexit84:                                      ; preds = %471, %991
  %994 = phi i64 [ %986, %991 ], [ %452, %471 ]
  %995 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %995, align 4, !tbaa !61
  br label %.loopexit85

.loopexit85:                                      ; preds = %.loopexit80, %.loopexit84, %991
  %996 = phi i64 [ %986, %991 ], [ %994, %.loopexit84 ], [ %986, %.loopexit80 ]
  %997 = trunc i64 %996 to i32
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %.loopexit96, label %1009

.loopexit96:                                      ; preds = %.loopexit92, %.loopexit85, %415, %400, %.loopexit101, %.loopexit98, %90, %85, %19
  %999 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit97

.loopexit97:                                      ; preds = %104, %.loopexit96
  %1000 = phi i32 [ %999, %.loopexit96 ], [ %105, %104 ]
  switch i32 %1000, label %1009 [
    i32 0, label %1001
    i32 -5, label %1001
  ]

1001:                                             ; preds = %.loopexit97, %.loopexit97
  %1002 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1003 = load i32, ptr %1002, align 4, !tbaa !17
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1009, label %1005

1005:                                             ; preds = %1001
  %1006 = tail call ptr @__errno_location() #16
  %1007 = load i32, ptr %1006, align 4, !tbaa !4
  %1008 = tail call ptr @strerror(i32 noundef %1007) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1008) #13
  br label %1009

1009:                                             ; preds = %1005, %1001, %.loopexit97, %.loopexit85, %18, %12, %5, %3
  %1010 = phi i32 [ -1, %5 ], [ -1, %3 ], [ -1, %18 ], [ -1, %12 ], [ -1, %1005 ], [ -1, %.loopexit97 ], [ 0, %1001 ], [ %997, %.loopexit85 ]
  ret i32 %1010
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
  br i1 %5, label %1002, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1002

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
  br i1 %16, label %1002, label %17

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
  br label %1002

24:                                               ; preds = %21, %17
  %25 = icmp eq i64 %19, 0
  br i1 %25, label %1002, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %28 = load i64, ptr %27, align 8, !tbaa !18
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %.loopexit98, label %30

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

48:                                               ; preds = %432, %30
  %49 = phi i64 [ %433, %432 ], [ %28, %30 ]
  %50 = load i32, ptr %3, align 8, !tbaa !19
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %67, label %52

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
  %66 = sub i64 %49, %58
  store i64 %66, ptr %27, align 8, !tbaa !18
  br label %432

67:                                               ; preds = %48
  %68 = load i32, ptr %33, align 8, !tbaa !24
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %.preheader728, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %34, align 8, !tbaa !25
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %.loopexit98, label %.preheader728

.preheader728:                                    ; preds = %70, %67
  br label %73

73:                                               ; preds = %.backedge, %.preheader728
  %74 = load i32, ptr %35, align 8, !tbaa !26
  switch i32 %74, label %419 [
    i32 0, label %75
    i32 1, label %291
    i32 2, label %325
  ]

75:                                               ; preds = %73
  %76 = load i32, ptr %36, align 8, !tbaa !27
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i32, ptr %45, align 4, !tbaa !28
  %80 = zext i32 %79 to i64
  %81 = tail call noalias ptr @malloc(i64 noundef %80) #15
  store ptr %81, ptr %41, align 8, !tbaa !29
  %82 = load i32, ptr %45, align 4, !tbaa !28
  %83 = shl i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #15
  store ptr %85, ptr %38, align 8, !tbaa !30
  %86 = icmp eq ptr %81, null
  %87 = icmp eq ptr %85, null
  %88 = or i1 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  tail call void @free(ptr noundef %85) #13
  tail call void @free(ptr noundef %81) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit84

90:                                               ; preds = %78
  %91 = load i32, ptr %45, align 4, !tbaa !28
  store i32 %91, ptr %36, align 8, !tbaa !27
  store i32 0, ptr %34, align 8, !tbaa !25
  store ptr null, ptr %40, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  %92 = tail call i32 @inflateInit2_(ptr noundef nonnull %40, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %38, align 8, !tbaa !30
  tail call void @free(ptr noundef %95) #13
  %96 = load ptr, ptr %41, align 8, !tbaa !29
  tail call void @free(ptr noundef %96) #13
  store i32 0, ptr %36, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit84

97:                                               ; preds = %90, %75
  %98 = load i32, ptr %47, align 8, !tbaa !32
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %44, align 4, !tbaa !33
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100, %97
  %104 = tail call i32 @inflateReset(ptr noundef nonnull %40) #13
  store i32 2, ptr %35, align 8, !tbaa !26
  %105 = load i32, ptr %44, align 4, !tbaa !33
  %106 = icmp ne i32 %105, -1
  %107 = zext i1 %106 to i32
  store i32 %107, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %47, align 8, !tbaa !32
  br label %288

108:                                              ; preds = %100
  %109 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %109, label %.loopexit84 [
    i32 0, label %110
    i32 -5, label %110
  ]

110:                                              ; preds = %108, %108
  %111 = load i32, ptr %33, align 8, !tbaa !24
  %112 = icmp eq i32 %111, 0
  %113 = load i32, ptr %34, align 8, !tbaa !34
  br i1 %112, label %114, label %256

114:                                              ; preds = %110
  %115 = icmp eq i32 %113, 0
  %116 = load ptr, ptr %41, align 8, !tbaa !29
  %117 = ptrtoaddr ptr %116 to i64
  br i1 %115, label %218, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %40, align 8, !tbaa !35
  %120 = icmp eq ptr %119, %116
  br i1 %120, label %218, label %121

121:                                              ; preds = %118
  %122 = ptrtoaddr ptr %119 to i64
  %123 = zext i32 %113 to i64
  %124 = icmp ult i32 %113, 4
  %125 = sub i64 %117, %122
  %126 = icmp ult i64 %125, 32
  %127 = select i1 %124, i1 true, i1 %126
  br i1 %127, label %167, label %128

128:                                              ; preds = %121
  %129 = icmp ult i32 %113, 32
  br i1 %129, label %151, label %130

130:                                              ; preds = %128
  %131 = and i64 %123, 4294967264
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi i64 [ 0, %130 ], [ %140, %132 ]
  %134 = getelementptr i8, ptr %116, i64 %133
  %135 = getelementptr i8, ptr %119, i64 %133
  %136 = getelementptr i8, ptr %135, i64 16
  %137 = load <16 x i8>, ptr %135, align 1, !tbaa !36
  %138 = load <16 x i8>, ptr %136, align 1, !tbaa !36
  %139 = getelementptr i8, ptr %134, i64 16
  store <16 x i8> %137, ptr %134, align 1, !tbaa !36
  store <16 x i8> %138, ptr %139, align 1, !tbaa !36
  %140 = add nuw nsw i64 %133, 32
  %141 = icmp eq i64 %140, %131
  br i1 %141, label %142, label %132, !llvm.loop !62

142:                                              ; preds = %132
  %143 = icmp eq i64 %131, %123
  br i1 %143, label %.loopexit88, label %144

144:                                              ; preds = %142
  %145 = trunc nuw i64 %131 to i32
  %146 = sub i32 %113, %145
  %147 = getelementptr i8, ptr %119, i64 %131
  %148 = getelementptr i8, ptr %116, i64 %131
  %149 = and i64 %123, 28
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %167, label %151, !prof !41

151:                                              ; preds = %144, %128
  %152 = phi i64 [ %131, %144 ], [ 0, %128 ]
  %153 = and i64 %123, 4294967292
  br label %154

154:                                              ; preds = %154, %151
  %155 = phi i64 [ %152, %151 ], [ %159, %154 ]
  %156 = getelementptr i8, ptr %116, i64 %155
  %157 = getelementptr i8, ptr %119, i64 %155
  %158 = load <4 x i8>, ptr %157, align 1, !tbaa !36
  store <4 x i8> %158, ptr %156, align 1, !tbaa !36
  %159 = add nuw i64 %155, 4
  %160 = icmp eq i64 %159, %153
  br i1 %160, label %161, label %154, !llvm.loop !63

161:                                              ; preds = %154
  %162 = getelementptr i8, ptr %116, i64 %153
  %163 = getelementptr i8, ptr %119, i64 %153
  %164 = trunc nuw i64 %153 to i32
  %165 = sub i32 %113, %164
  %166 = icmp eq i64 %153, %123
  br i1 %166, label %.loopexit88, label %167

167:                                              ; preds = %161, %144, %121
  %168 = phi ptr [ %116, %121 ], [ %148, %144 ], [ %162, %161 ]
  %169 = phi ptr [ %119, %121 ], [ %147, %144 ], [ %163, %161 ]
  %170 = phi i32 [ %113, %121 ], [ %146, %144 ], [ %165, %161 ]
  %171 = add i32 %170, -1
  %172 = and i32 %170, 7
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %.loopexit90, label %.preheader89

.preheader89:                                     ; preds = %167, %.preheader89
  %174 = phi ptr [ %179, %.preheader89 ], [ %168, %167 ]
  %175 = phi ptr [ %177, %.preheader89 ], [ %169, %167 ]
  %176 = phi i32 [ %180, %.preheader89 ], [ 0, %167 ]
  %177 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %178 = load i8, ptr %175, align 1, !tbaa !36
  %179 = getelementptr inbounds nuw i8, ptr %174, i64 1
  store i8 %178, ptr %174, align 1, !tbaa !36
  %180 = add nuw nsw i32 %176, 1
  %181 = icmp eq i32 %180, %172
  br i1 %181, label %.loopexit90.loopexit, label %.preheader89, !llvm.loop !64

.loopexit90.loopexit:                             ; preds = %.preheader89
  %182 = and i32 %170, -8
  br label %.loopexit90

.loopexit90:                                      ; preds = %.loopexit90.loopexit, %167
  %183 = phi ptr [ %168, %167 ], [ %179, %.loopexit90.loopexit ]
  %184 = phi ptr [ %169, %167 ], [ %177, %.loopexit90.loopexit ]
  %185 = phi i32 [ %170, %167 ], [ %182, %.loopexit90.loopexit ]
  %186 = icmp ult i32 %171, 7
  br i1 %186, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %.loopexit90, %.preheader87
  %187 = phi ptr [ %213, %.preheader87 ], [ %183, %.loopexit90 ]
  %188 = phi ptr [ %211, %.preheader87 ], [ %184, %.loopexit90 ]
  %189 = phi i32 [ %214, %.preheader87 ], [ %185, %.loopexit90 ]
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
  br i1 %215, label %.loopexit88, label %.preheader87, !llvm.loop !65

.loopexit88:                                      ; preds = %.preheader87, %.loopexit90, %161, %142
  %216 = load i32, ptr %34, align 8, !tbaa !34
  %217 = load ptr, ptr %41, align 8, !tbaa !29
  br label %218

218:                                              ; preds = %.loopexit88, %118, %114
  %219 = phi ptr [ %217, %.loopexit88 ], [ %116, %118 ], [ %116, %114 ]
  %220 = phi i32 [ %216, %.loopexit88 ], [ %113, %118 ], [ 0, %114 ]
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds nuw i8, ptr %219, i64 %221
  %223 = load i32, ptr %36, align 8, !tbaa !27
  %224 = sub i32 %223, %220
  store i32 0, ptr %42, align 4, !tbaa !17
  %225 = tail call ptr @__errno_location() #16
  store i32 0, ptr %225, align 4, !tbaa !4
  br label %226

226:                                              ; preds = %237, %218
  %227 = phi i32 [ 0, %218 ], [ %238, %237 ]
  %228 = sub i32 %224, %227
  %229 = tail call i32 @llvm.umin.i32(i32 %228, i32 1073741824)
  %230 = load i32, ptr %43, align 4, !tbaa !46
  %231 = zext i32 %227 to i64
  %232 = getelementptr inbounds nuw i8, ptr %222, i64 %231
  %233 = zext nneg i32 %229 to i64
  %234 = tail call i64 @read(i32 noundef %230, ptr noundef %232, i64 noundef %233) #13
  %235 = trunc i64 %234 to i32
  %236 = icmp slt i32 %235, 1
  br i1 %236, label %240, label %237

237:                                              ; preds = %226
  %238 = add i32 %227, %235
  %239 = icmp ult i32 %238, %224
  br i1 %239, label %226, label %.loopexit86, !llvm.loop !47

240:                                              ; preds = %226
  %241 = icmp slt i32 %235, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %240
  %243 = load i32, ptr %225, align 4, !tbaa !4
  %244 = icmp eq i32 %243, 11
  br i1 %244, label %245, label %.loopexit96

245:                                              ; preds = %242
  store i32 1, ptr %42, align 4, !tbaa !17
  %246 = icmp eq i32 %227, 0
  br i1 %246, label %247, label %.loopexit86

247:                                              ; preds = %245
  %248 = load i32, ptr %225, align 4, !tbaa !4
  br label %.loopexit96

249:                                              ; preds = %240
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %.loopexit86

.loopexit96:                                      ; preds = %242, %247
  %250 = phi i32 [ %248, %247 ], [ %243, %242 ]
  %251 = tail call ptr @strerror(i32 noundef %250) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %251) #13
  br label %.loopexit84

.loopexit86:                                      ; preds = %237, %249, %245
  %252 = phi i32 [ %227, %245 ], [ %227, %249 ], [ %238, %237 ]
  %253 = load i32, ptr %34, align 8, !tbaa !34
  %254 = add i32 %253, %252
  store i32 %254, ptr %34, align 8, !tbaa !34
  %255 = load ptr, ptr %41, align 8, !tbaa !29
  store ptr %255, ptr %40, align 8, !tbaa !35
  br label %256

256:                                              ; preds = %.loopexit86, %110
  %257 = phi i32 [ %254, %.loopexit86 ], [ %113, %110 ]
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %288, label %259

259:                                              ; preds = %256
  %260 = load i32, ptr %42, align 4, !tbaa !17
  %261 = icmp ne i32 %260, 0
  %262 = icmp ult i32 %257, 4
  %263 = and i1 %262, %261
  br i1 %263, label %288, label %264

264:                                              ; preds = %259
  %265 = icmp ugt i32 %257, 3
  %266 = load ptr, ptr %40, align 8, !tbaa !35
  br i1 %265, label %267, label %284

267:                                              ; preds = %264
  %268 = load i8, ptr %266, align 1, !tbaa !36
  %269 = icmp eq i8 %268, 31
  br i1 %269, label %270, label %284

270:                                              ; preds = %267
  %271 = getelementptr inbounds nuw i8, ptr %266, i64 1
  %272 = load i8, ptr %271, align 1, !tbaa !36
  %273 = icmp eq i8 %272, -117
  br i1 %273, label %274, label %284

274:                                              ; preds = %270
  %275 = getelementptr inbounds nuw i8, ptr %266, i64 2
  %276 = load i8, ptr %275, align 1, !tbaa !36
  %277 = icmp eq i8 %276, 8
  br i1 %277, label %278, label %284

278:                                              ; preds = %274
  %279 = getelementptr inbounds nuw i8, ptr %266, i64 3
  %280 = load i8, ptr %279, align 1, !tbaa !36
  %281 = icmp ult i8 %280, 32
  br i1 %281, label %282, label %284

282:                                              ; preds = %278
  %283 = tail call i32 @inflateReset(ptr noundef nonnull %40) #13
  store i32 2, ptr %35, align 8, !tbaa !26
  store i32 1, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %47, align 8, !tbaa !32
  br label %420

284:                                              ; preds = %278, %274, %270, %267, %264
  %285 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %285, ptr %31, align 8, !tbaa !20
  %286 = zext i32 %257 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %285, ptr align 1 %266, i64 %286, i1 false)
  %287 = load i32, ptr %34, align 8, !tbaa !34
  store i32 %287, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %34, align 8, !tbaa !34
  store i32 1, ptr %35, align 8, !tbaa !26
  br label %422

288:                                              ; preds = %259, %256, %103
  %289 = load i32, ptr %35, align 8, !tbaa !26
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %.loopexit97, label %420

291:                                              ; preds = %73
  %292 = load ptr, ptr %38, align 8, !tbaa !30
  %293 = load i32, ptr %36, align 8, !tbaa !27
  %294 = shl i32 %293, 1
  store i32 0, ptr %42, align 4, !tbaa !17
  %295 = tail call ptr @__errno_location() #16
  store i32 0, ptr %295, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %296

296:                                              ; preds = %307, %291
  %297 = phi i32 [ %309, %307 ], [ 0, %291 ]
  %298 = sub i32 %294, %297
  %299 = tail call i32 @llvm.umin.i32(i32 %298, i32 1073741824)
  %300 = load i32, ptr %43, align 4, !tbaa !46
  %301 = zext i32 %297 to i64
  %302 = getelementptr inbounds nuw i8, ptr %292, i64 %301
  %303 = zext nneg i32 %299 to i64
  %304 = tail call i64 @read(i32 noundef %300, ptr noundef %302, i64 noundef %303) #13
  %305 = trunc i64 %304 to i32
  %306 = icmp slt i32 %305, 1
  br i1 %306, label %311, label %307

307:                                              ; preds = %296
  %308 = load i32, ptr %3, align 4, !tbaa !4
  %309 = add i32 %308, %305
  store i32 %309, ptr %3, align 4, !tbaa !4
  %310 = icmp ult i32 %309, %294
  br i1 %310, label %296, label %.loopexit94, !llvm.loop !47

311:                                              ; preds = %296
  %312 = icmp slt i32 %305, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %311
  %314 = load i32, ptr %295, align 4, !tbaa !4
  %315 = icmp eq i32 %314, 11
  br i1 %315, label %316, label %.loopexit99

316:                                              ; preds = %313
  store i32 1, ptr %42, align 4, !tbaa !17
  %317 = load i32, ptr %3, align 4, !tbaa !4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %.loopexit94

319:                                              ; preds = %316
  %320 = load i32, ptr %295, align 4, !tbaa !4
  br label %.loopexit99

321:                                              ; preds = %311
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %.loopexit94

.loopexit99:                                      ; preds = %313, %319
  %322 = phi i32 [ %320, %319 ], [ %314, %313 ]
  %323 = tail call ptr @strerror(i32 noundef %322) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %323) #13
  br label %.loopexit84

.loopexit94:                                      ; preds = %307, %321, %316
  %324 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %324, ptr %31, align 8, !tbaa !20
  br label %.loopexit97

325:                                              ; preds = %73
  %326 = load i32, ptr %36, align 8, !tbaa !27
  %327 = shl i32 %326, 1
  store i32 %327, ptr %37, align 8, !tbaa !48
  %328 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %328, ptr %39, align 8, !tbaa !49
  br label %329

329:                                              ; preds = %400, %325
  %330 = phi i32 [ 0, %325 ], [ %379, %400 ]
  %331 = load i32, ptr %34, align 8, !tbaa !34
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %378

333:                                              ; preds = %329
  %334 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %334, label %.loopexit91 [
    i32 0, label %335
    i32 -5, label %335
  ]

335:                                              ; preds = %333, %333
  %336 = load i32, ptr %33, align 8, !tbaa !24
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %374

338:                                              ; preds = %335
  %339 = load ptr, ptr %41, align 8, !tbaa !29
  %340 = load i32, ptr %36, align 8, !tbaa !27
  store i32 0, ptr %42, align 4, !tbaa !17
  %341 = tail call ptr @__errno_location() #16
  store i32 0, ptr %341, align 4, !tbaa !4
  br label %342

342:                                              ; preds = %353, %338
  %343 = phi i32 [ 0, %338 ], [ %354, %353 ]
  %344 = sub i32 %340, %343
  %345 = tail call i32 @llvm.umin.i32(i32 %344, i32 1073741824)
  %346 = load i32, ptr %43, align 4, !tbaa !46
  %347 = zext i32 %343 to i64
  %348 = getelementptr inbounds nuw i8, ptr %339, i64 %347
  %349 = zext nneg i32 %345 to i64
  %350 = tail call i64 @read(i32 noundef %346, ptr noundef %348, i64 noundef %349) #13
  %351 = trunc i64 %350 to i32
  %352 = icmp slt i32 %351, 1
  br i1 %352, label %356, label %353

353:                                              ; preds = %342
  %354 = add i32 %343, %351
  %355 = icmp ult i32 %354, %340
  br i1 %355, label %342, label %.loopexit85, !llvm.loop !47

356:                                              ; preds = %342
  %357 = icmp slt i32 %351, 0
  br i1 %357, label %358, label %365

358:                                              ; preds = %356
  %359 = load i32, ptr %341, align 4, !tbaa !4
  %360 = icmp eq i32 %359, 11
  br i1 %360, label %361, label %.loopexit93

361:                                              ; preds = %358
  store i32 1, ptr %42, align 4, !tbaa !17
  %362 = icmp eq i32 %343, 0
  br i1 %362, label %363, label %.loopexit85

363:                                              ; preds = %361
  %364 = load i32, ptr %341, align 4, !tbaa !4
  br label %.loopexit93

365:                                              ; preds = %356
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %.loopexit85

.loopexit93:                                      ; preds = %358, %363
  %366 = phi i32 [ %364, %363 ], [ %359, %358 ]
  %367 = tail call ptr @strerror(i32 noundef %366) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %367) #13
  %368 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit91

.loopexit85:                                      ; preds = %353, %365, %361
  %369 = phi i32 [ %343, %361 ], [ %343, %365 ], [ %354, %353 ]
  %370 = load i32, ptr %34, align 8, !tbaa !34
  %371 = add i32 %370, %369
  store i32 %371, ptr %34, align 8, !tbaa !34
  %372 = load ptr, ptr %41, align 8, !tbaa !29
  store ptr %372, ptr %40, align 8, !tbaa !35
  %373 = icmp eq i32 %371, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %.loopexit85, %335
  %375 = load i32, ptr %42, align 4, !tbaa !17
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %.loopexit91

377:                                              ; preds = %374
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit91

378:                                              ; preds = %.loopexit85, %329
  %379 = tail call i32 @inflate(ptr noundef nonnull %40, i32 noundef 0) #13
  %380 = load i32, ptr %37, align 8, !tbaa !48
  %381 = icmp ult i32 %380, %327
  br i1 %381, label %382, label %383

382:                                              ; preds = %378
  store i32 0, ptr %44, align 4, !tbaa !33
  br label %383

383:                                              ; preds = %382, %378
  switch i32 %379, label %400 [
    i32 -2, label %384
    i32 2, label %384
    i32 -4, label %385
    i32 -3, label %386
  ]

384:                                              ; preds = %383, %383
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit91

385:                                              ; preds = %383
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %404

386:                                              ; preds = %383
  %387 = load i32, ptr %44, align 4, !tbaa !33
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %395

389:                                              ; preds = %386
  store i32 0, ptr %34, align 8, !tbaa !34
  store i32 1, ptr %33, align 8, !tbaa !24
  store i32 0, ptr %35, align 8, !tbaa !26
  %390 = sub i32 %327, %380
  store i32 %390, ptr %3, align 8, !tbaa !19
  %391 = load ptr, ptr %39, align 8, !tbaa !49
  %392 = zext i32 %390 to i64
  %393 = sub nsw i64 0, %392
  %394 = getelementptr inbounds i8, ptr %391, i64 %393
  store ptr %394, ptr %31, align 8, !tbaa !20
  br label %420

395:                                              ; preds = %386
  %396 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %397 = load ptr, ptr %396, align 8, !tbaa !50
  %398 = icmp eq ptr %397, null
  %399 = select i1 %398, ptr @.str.6, ptr %397
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %399) #13
  br label %404

400:                                              ; preds = %383
  %401 = icmp ne i32 %380, 0
  %402 = icmp ne i32 %379, 1
  %403 = select i1 %401, i1 %402, i1 false
  br i1 %403, label %329, label %.loopexit91, !llvm.loop !51

404:                                              ; preds = %395, %385
  %405 = load i32, ptr %37, align 8, !tbaa !48
  %406 = sub i32 %327, %405
  store i32 %406, ptr %3, align 8, !tbaa !19
  %407 = load ptr, ptr %39, align 8, !tbaa !49
  %408 = zext i32 %406 to i64
  %409 = sub nsw i64 0, %408
  %410 = getelementptr inbounds i8, ptr %407, i64 %409
  store ptr %410, ptr %31, align 8, !tbaa !20
  br label %.loopexit84

.loopexit91:                                      ; preds = %400, %333, %384, %377, %374, %.loopexit93
  %411 = phi i32 [ %368, %.loopexit93 ], [ %330, %374 ], [ %330, %377 ], [ %379, %384 ], [ %334, %333 ], [ %379, %400 ]
  %412 = load i32, ptr %37, align 8, !tbaa !48
  %413 = sub i32 %327, %412
  store i32 %413, ptr %3, align 8, !tbaa !19
  %414 = load ptr, ptr %39, align 8, !tbaa !49
  %415 = zext i32 %413 to i64
  %416 = sub nsw i64 0, %415
  %417 = getelementptr inbounds i8, ptr %414, i64 %416
  store ptr %417, ptr %31, align 8, !tbaa !20
  switch i32 %411, label %.loopexit84 [
    i32 1, label %418
    i32 0, label %420
  ]

418:                                              ; preds = %.loopexit91
  store i32 0, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %35, align 8, !tbaa !26
  br label %420

419:                                              ; preds = %73
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit84

420:                                              ; preds = %418, %.loopexit91, %389, %288, %282
  %421 = load i32, ptr %3, align 8, !tbaa !19
  br label %422

422:                                              ; preds = %420, %284
  %423 = phi i32 [ %421, %420 ], [ %287, %284 ]
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %.loopexit97

425:                                              ; preds = %422
  %426 = load i32, ptr %33, align 8, !tbaa !24
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %.backedge, label %428

428:                                              ; preds = %425
  %429 = load i32, ptr %34, align 8, !tbaa !34
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %.loopexit97, label %.backedge

.backedge:                                        ; preds = %428, %425
  br label %73, !llvm.loop !52

.loopexit97:                                      ; preds = %428, %422, %288, %.loopexit94
  %431 = load i64, ptr %27, align 8, !tbaa !18
  br label %432

432:                                              ; preds = %.loopexit97, %64
  %433 = phi i64 [ %431, %.loopexit97 ], [ %66, %64 ]
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %.loopexit98, label %48, !llvm.loop !53

.loopexit98:                                      ; preds = %432, %70, %26
  %435 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %436 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %437 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %438 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %439 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %440 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %441 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %442 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %443 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %444 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %445 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %446 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %447 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %448 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %449 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %450 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %451 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %452 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %453

453:                                              ; preds = %993, %.loopexit98
  %454 = phi ptr [ %0, %.loopexit98 ], [ %988, %993 ]
  %455 = phi i64 [ %19, %.loopexit98 ], [ %989, %993 ]
  %456 = phi i64 [ 0, %.loopexit98 ], [ %990, %993 ]
  %457 = tail call i64 @llvm.umin.i64(i64 %455, i64 4294967295)
  %458 = trunc nuw i64 %457 to i32
  %459 = load i32, ptr %3, align 8, !tbaa !19
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %472, label %461

461:                                              ; preds = %453
  %462 = tail call i32 @llvm.umin.i32(i32 %459, i32 %458)
  %463 = load ptr, ptr %435, align 8, !tbaa !20
  %464 = zext i32 %462 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %454, ptr align 1 %463, i64 %464, i1 false)
  %465 = load ptr, ptr %435, align 8, !tbaa !20
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 %464
  store ptr %466, ptr %435, align 8, !tbaa !20
  %467 = load i32, ptr %3, align 8, !tbaa !19
  %468 = sub i32 %467, %462
  store i32 %468, ptr %3, align 8, !tbaa !19
  %469 = load i32, ptr %11, align 8, !tbaa !16
  %470 = icmp ne i32 %469, 0
  %471 = sext i1 %470 to i32
  br label %976

472:                                              ; preds = %453
  %473 = load i32, ptr %436, align 8, !tbaa !24
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %478, label %475

475:                                              ; preds = %472
  %476 = load i32, ptr %437, align 8, !tbaa !25
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %.loopexit83, label %478

478:                                              ; preds = %475, %472
  %479 = load i32, ptr %438, align 8, !tbaa !26
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %.preheader653, label %481

481:                                              ; preds = %478
  %482 = load i32, ptr %439, align 8, !tbaa !27
  %483 = shl i32 %482, 1
  %484 = icmp ugt i32 %483, %458
  br i1 %484, label %.preheader653, label %848

.preheader653:                                    ; preds = %481, %478
  br label %485

485:                                              ; preds = %.preheader653, %843
  %486 = phi i32 [ %844, %843 ], [ %479, %.preheader653 ]
  switch i32 %486, label %831 [
    i32 0, label %487
    i32 1, label %703
    i32 2, label %738
  ]

487:                                              ; preds = %485
  %488 = load i32, ptr %439, align 8, !tbaa !27
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %509

490:                                              ; preds = %487
  %491 = load i32, ptr %450, align 4, !tbaa !28
  %492 = zext i32 %491 to i64
  %493 = tail call noalias ptr @malloc(i64 noundef %492) #15
  store ptr %493, ptr %443, align 8, !tbaa !29
  %494 = load i32, ptr %450, align 4, !tbaa !28
  %495 = shl i32 %494, 1
  %496 = zext i32 %495 to i64
  %497 = tail call noalias ptr @malloc(i64 noundef %496) #15
  store ptr %497, ptr %449, align 8, !tbaa !30
  %498 = icmp eq ptr %493, null
  %499 = icmp eq ptr %497, null
  %500 = or i1 %498, %499
  br i1 %500, label %501, label %502

501:                                              ; preds = %490
  tail call void @free(ptr noundef %497) #13
  tail call void @free(ptr noundef %493) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

502:                                              ; preds = %490
  %503 = load i32, ptr %450, align 4, !tbaa !28
  store i32 %503, ptr %439, align 8, !tbaa !27
  store i32 0, ptr %437, align 8, !tbaa !25
  store ptr null, ptr %442, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %451, i8 0, i64 24, i1 false)
  %504 = tail call i32 @inflateInit2_(ptr noundef nonnull %442, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %509, label %506

506:                                              ; preds = %502
  %507 = load ptr, ptr %449, align 8, !tbaa !30
  tail call void @free(ptr noundef %507) #13
  %508 = load ptr, ptr %443, align 8, !tbaa !29
  tail call void @free(ptr noundef %508) #13
  store i32 0, ptr %439, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

509:                                              ; preds = %502, %487
  %510 = load i32, ptr %452, align 8, !tbaa !32
  %511 = icmp eq i32 %510, -1
  br i1 %511, label %515, label %512

512:                                              ; preds = %509
  %513 = load i32, ptr %446, align 4, !tbaa !33
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %512, %509
  %516 = tail call i32 @inflateReset(ptr noundef nonnull %442) #13
  store i32 2, ptr %438, align 8, !tbaa !26
  %517 = load i32, ptr %446, align 4, !tbaa !33
  %518 = icmp ne i32 %517, -1
  %519 = zext i1 %518 to i32
  store i32 %519, ptr %446, align 4, !tbaa !33
  store i32 0, ptr %452, align 8, !tbaa !32
  br label %700

520:                                              ; preds = %512
  %521 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %521, label %.loopexit77 [
    i32 0, label %522
    i32 -5, label %522
  ]

522:                                              ; preds = %520, %520
  %523 = load i32, ptr %436, align 8, !tbaa !24
  %524 = icmp eq i32 %523, 0
  %525 = load i32, ptr %437, align 8, !tbaa !34
  br i1 %524, label %526, label %668

526:                                              ; preds = %522
  %527 = icmp eq i32 %525, 0
  %528 = load ptr, ptr %443, align 8, !tbaa !29
  %529 = ptrtoaddr ptr %528 to i64
  br i1 %527, label %630, label %530

530:                                              ; preds = %526
  %531 = load ptr, ptr %442, align 8, !tbaa !35
  %532 = icmp eq ptr %531, %528
  br i1 %532, label %630, label %533

533:                                              ; preds = %530
  %534 = ptrtoaddr ptr %531 to i64
  %535 = zext i32 %525 to i64
  %536 = icmp ult i32 %525, 4
  %537 = sub i64 %529, %534
  %538 = icmp ult i64 %537, 32
  %539 = select i1 %536, i1 true, i1 %538
  br i1 %539, label %579, label %540

540:                                              ; preds = %533
  %541 = icmp ult i32 %525, 32
  br i1 %541, label %563, label %542

542:                                              ; preds = %540
  %543 = and i64 %535, 4294967264
  br label %544

544:                                              ; preds = %544, %542
  %545 = phi i64 [ 0, %542 ], [ %552, %544 ]
  %546 = getelementptr i8, ptr %528, i64 %545
  %547 = getelementptr i8, ptr %531, i64 %545
  %548 = getelementptr i8, ptr %547, i64 16
  %549 = load <16 x i8>, ptr %547, align 1, !tbaa !36
  %550 = load <16 x i8>, ptr %548, align 1, !tbaa !36
  %551 = getelementptr i8, ptr %546, i64 16
  store <16 x i8> %549, ptr %546, align 1, !tbaa !36
  store <16 x i8> %550, ptr %551, align 1, !tbaa !36
  %552 = add nuw nsw i64 %545, 32
  %553 = icmp eq i64 %552, %543
  br i1 %553, label %554, label %544, !llvm.loop !66

554:                                              ; preds = %544
  %555 = icmp eq i64 %543, %535
  br i1 %555, label %.loopexit70, label %556

556:                                              ; preds = %554
  %557 = trunc nuw i64 %543 to i32
  %558 = sub i32 %525, %557
  %559 = getelementptr i8, ptr %531, i64 %543
  %560 = getelementptr i8, ptr %528, i64 %543
  %561 = and i64 %535, 28
  %562 = icmp eq i64 %561, 0
  br i1 %562, label %579, label %563, !prof !41

563:                                              ; preds = %556, %540
  %564 = phi i64 [ %543, %556 ], [ 0, %540 ]
  %565 = and i64 %535, 4294967292
  br label %566

566:                                              ; preds = %566, %563
  %567 = phi i64 [ %564, %563 ], [ %571, %566 ]
  %568 = getelementptr i8, ptr %528, i64 %567
  %569 = getelementptr i8, ptr %531, i64 %567
  %570 = load <4 x i8>, ptr %569, align 1, !tbaa !36
  store <4 x i8> %570, ptr %568, align 1, !tbaa !36
  %571 = add nuw i64 %567, 4
  %572 = icmp eq i64 %571, %565
  br i1 %572, label %573, label %566, !llvm.loop !67

573:                                              ; preds = %566
  %574 = getelementptr i8, ptr %528, i64 %565
  %575 = getelementptr i8, ptr %531, i64 %565
  %576 = trunc nuw i64 %565 to i32
  %577 = sub i32 %525, %576
  %578 = icmp eq i64 %565, %535
  br i1 %578, label %.loopexit70, label %579

579:                                              ; preds = %573, %556, %533
  %580 = phi ptr [ %528, %533 ], [ %560, %556 ], [ %574, %573 ]
  %581 = phi ptr [ %531, %533 ], [ %559, %556 ], [ %575, %573 ]
  %582 = phi i32 [ %525, %533 ], [ %558, %556 ], [ %577, %573 ]
  %583 = add i32 %582, -1
  %584 = and i32 %582, 7
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %579, %.preheader71
  %586 = phi ptr [ %591, %.preheader71 ], [ %580, %579 ]
  %587 = phi ptr [ %589, %.preheader71 ], [ %581, %579 ]
  %588 = phi i32 [ %592, %.preheader71 ], [ 0, %579 ]
  %589 = getelementptr inbounds nuw i8, ptr %587, i64 1
  %590 = load i8, ptr %587, align 1, !tbaa !36
  %591 = getelementptr inbounds nuw i8, ptr %586, i64 1
  store i8 %590, ptr %586, align 1, !tbaa !36
  %592 = add nuw nsw i32 %588, 1
  %593 = icmp eq i32 %592, %584
  br i1 %593, label %.loopexit72.loopexit, label %.preheader71, !llvm.loop !68

.loopexit72.loopexit:                             ; preds = %.preheader71
  %594 = and i32 %582, -8
  br label %.loopexit72

.loopexit72:                                      ; preds = %.loopexit72.loopexit, %579
  %595 = phi ptr [ %580, %579 ], [ %591, %.loopexit72.loopexit ]
  %596 = phi ptr [ %581, %579 ], [ %589, %.loopexit72.loopexit ]
  %597 = phi i32 [ %582, %579 ], [ %594, %.loopexit72.loopexit ]
  %598 = icmp ult i32 %583, 7
  br i1 %598, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %.loopexit72, %.preheader
  %599 = phi ptr [ %625, %.preheader ], [ %595, %.loopexit72 ]
  %600 = phi ptr [ %623, %.preheader ], [ %596, %.loopexit72 ]
  %601 = phi i32 [ %626, %.preheader ], [ %597, %.loopexit72 ]
  %602 = getelementptr inbounds nuw i8, ptr %600, i64 1
  %603 = load i8, ptr %600, align 1, !tbaa !36
  %604 = getelementptr inbounds nuw i8, ptr %599, i64 1
  store i8 %603, ptr %599, align 1, !tbaa !36
  %605 = getelementptr inbounds nuw i8, ptr %600, i64 2
  %606 = load i8, ptr %602, align 1, !tbaa !36
  %607 = getelementptr inbounds nuw i8, ptr %599, i64 2
  store i8 %606, ptr %604, align 1, !tbaa !36
  %608 = getelementptr inbounds nuw i8, ptr %600, i64 3
  %609 = load i8, ptr %605, align 1, !tbaa !36
  %610 = getelementptr inbounds nuw i8, ptr %599, i64 3
  store i8 %609, ptr %607, align 1, !tbaa !36
  %611 = getelementptr inbounds nuw i8, ptr %600, i64 4
  %612 = load i8, ptr %608, align 1, !tbaa !36
  %613 = getelementptr inbounds nuw i8, ptr %599, i64 4
  store i8 %612, ptr %610, align 1, !tbaa !36
  %614 = getelementptr inbounds nuw i8, ptr %600, i64 5
  %615 = load i8, ptr %611, align 1, !tbaa !36
  %616 = getelementptr inbounds nuw i8, ptr %599, i64 5
  store i8 %615, ptr %613, align 1, !tbaa !36
  %617 = getelementptr inbounds nuw i8, ptr %600, i64 6
  %618 = load i8, ptr %614, align 1, !tbaa !36
  %619 = getelementptr inbounds nuw i8, ptr %599, i64 6
  store i8 %618, ptr %616, align 1, !tbaa !36
  %620 = getelementptr inbounds nuw i8, ptr %600, i64 7
  %621 = load i8, ptr %617, align 1, !tbaa !36
  %622 = getelementptr inbounds nuw i8, ptr %599, i64 7
  store i8 %621, ptr %619, align 1, !tbaa !36
  %623 = getelementptr inbounds nuw i8, ptr %600, i64 8
  %624 = load i8, ptr %620, align 1, !tbaa !36
  %625 = getelementptr inbounds nuw i8, ptr %599, i64 8
  store i8 %624, ptr %622, align 1, !tbaa !36
  %626 = add i32 %601, -8
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %.loopexit70, label %.preheader, !llvm.loop !69

.loopexit70:                                      ; preds = %.preheader, %.loopexit72, %573, %554
  %628 = load i32, ptr %437, align 8, !tbaa !34
  %629 = load ptr, ptr %443, align 8, !tbaa !29
  br label %630

630:                                              ; preds = %.loopexit70, %530, %526
  %631 = phi ptr [ %629, %.loopexit70 ], [ %528, %530 ], [ %528, %526 ]
  %632 = phi i32 [ %628, %.loopexit70 ], [ %525, %530 ], [ 0, %526 ]
  %633 = zext i32 %632 to i64
  %634 = getelementptr inbounds nuw i8, ptr %631, i64 %633
  %635 = load i32, ptr %439, align 8, !tbaa !27
  %636 = sub i32 %635, %632
  store i32 0, ptr %444, align 4, !tbaa !17
  %637 = tail call ptr @__errno_location() #16
  store i32 0, ptr %637, align 4, !tbaa !4
  br label %638

638:                                              ; preds = %649, %630
  %639 = phi i32 [ 0, %630 ], [ %650, %649 ]
  %640 = sub i32 %636, %639
  %641 = tail call i32 @llvm.umin.i32(i32 %640, i32 1073741824)
  %642 = load i32, ptr %445, align 4, !tbaa !46
  %643 = zext i32 %639 to i64
  %644 = getelementptr inbounds nuw i8, ptr %634, i64 %643
  %645 = zext nneg i32 %641 to i64
  %646 = tail call i64 @read(i32 noundef %642, ptr noundef %644, i64 noundef %645) #13
  %647 = trunc i64 %646 to i32
  %648 = icmp slt i32 %647, 1
  br i1 %648, label %652, label %649

649:                                              ; preds = %638
  %650 = add i32 %639, %647
  %651 = icmp ult i32 %650, %636
  br i1 %651, label %638, label %.loopexit69, !llvm.loop !47

652:                                              ; preds = %638
  %653 = icmp slt i32 %647, 0
  br i1 %653, label %654, label %661

654:                                              ; preds = %652
  %655 = load i32, ptr %637, align 4, !tbaa !4
  %656 = icmp eq i32 %655, 11
  br i1 %656, label %657, label %.loopexit78

657:                                              ; preds = %654
  store i32 1, ptr %444, align 4, !tbaa !17
  %658 = icmp eq i32 %639, 0
  br i1 %658, label %659, label %.loopexit69

659:                                              ; preds = %657
  %660 = load i32, ptr %637, align 4, !tbaa !4
  br label %.loopexit78

661:                                              ; preds = %652
  store i32 1, ptr %436, align 8, !tbaa !24
  br label %.loopexit69

.loopexit78:                                      ; preds = %654, %659
  %662 = phi i32 [ %660, %659 ], [ %655, %654 ]
  %663 = tail call ptr @strerror(i32 noundef %662) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %663) #13
  br label %.loopexit77

.loopexit69:                                      ; preds = %649, %661, %657
  %664 = phi i32 [ %639, %657 ], [ %639, %661 ], [ %650, %649 ]
  %665 = load i32, ptr %437, align 8, !tbaa !34
  %666 = add i32 %665, %664
  store i32 %666, ptr %437, align 8, !tbaa !34
  %667 = load ptr, ptr %443, align 8, !tbaa !29
  store ptr %667, ptr %442, align 8, !tbaa !35
  br label %668

668:                                              ; preds = %.loopexit69, %522
  %669 = phi i32 [ %666, %.loopexit69 ], [ %525, %522 ]
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %700, label %671

671:                                              ; preds = %668
  %672 = load i32, ptr %444, align 4, !tbaa !17
  %673 = icmp ne i32 %672, 0
  %674 = icmp ult i32 %669, 4
  %675 = and i1 %674, %673
  br i1 %675, label %700, label %676

676:                                              ; preds = %671
  %677 = icmp ugt i32 %669, 3
  %678 = load ptr, ptr %442, align 8, !tbaa !35
  br i1 %677, label %679, label %696

679:                                              ; preds = %676
  %680 = load i8, ptr %678, align 1, !tbaa !36
  %681 = icmp eq i8 %680, 31
  br i1 %681, label %682, label %696

682:                                              ; preds = %679
  %683 = getelementptr inbounds nuw i8, ptr %678, i64 1
  %684 = load i8, ptr %683, align 1, !tbaa !36
  %685 = icmp eq i8 %684, -117
  br i1 %685, label %686, label %696

686:                                              ; preds = %682
  %687 = getelementptr inbounds nuw i8, ptr %678, i64 2
  %688 = load i8, ptr %687, align 1, !tbaa !36
  %689 = icmp eq i8 %688, 8
  br i1 %689, label %690, label %696

690:                                              ; preds = %686
  %691 = getelementptr inbounds nuw i8, ptr %678, i64 3
  %692 = load i8, ptr %691, align 1, !tbaa !36
  %693 = icmp ult i8 %692, 32
  br i1 %693, label %694, label %696

694:                                              ; preds = %690
  %695 = tail call i32 @inflateReset(ptr noundef nonnull %442) #13
  store i32 2, ptr %438, align 8, !tbaa !26
  store i32 1, ptr %446, align 4, !tbaa !33
  store i32 0, ptr %452, align 8, !tbaa !32
  br label %832

696:                                              ; preds = %690, %686, %682, %679, %676
  %697 = load ptr, ptr %449, align 8, !tbaa !30
  store ptr %697, ptr %435, align 8, !tbaa !20
  %698 = zext i32 %669 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %697, ptr align 1 %678, i64 %698, i1 false)
  %699 = load i32, ptr %437, align 8, !tbaa !34
  store i32 %699, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %437, align 8, !tbaa !34
  store i32 1, ptr %438, align 8, !tbaa !26
  br label %834

700:                                              ; preds = %671, %668, %515
  %701 = load i32, ptr %438, align 8, !tbaa !26
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %.loopexit79, label %832

703:                                              ; preds = %485
  %704 = load ptr, ptr %449, align 8, !tbaa !30
  %705 = load i32, ptr %439, align 8, !tbaa !27
  %706 = shl i32 %705, 1
  store i32 0, ptr %444, align 4, !tbaa !17
  %707 = tail call ptr @__errno_location() #16
  store i32 0, ptr %707, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %708

708:                                              ; preds = %719, %703
  %709 = phi i32 [ %721, %719 ], [ 0, %703 ]
  %710 = sub i32 %706, %709
  %711 = tail call i32 @llvm.umin.i32(i32 %710, i32 1073741824)
  %712 = load i32, ptr %445, align 4, !tbaa !46
  %713 = zext i32 %709 to i64
  %714 = getelementptr inbounds nuw i8, ptr %704, i64 %713
  %715 = zext nneg i32 %711 to i64
  %716 = tail call i64 @read(i32 noundef %712, ptr noundef %714, i64 noundef %715) #13
  %717 = trunc i64 %716 to i32
  %718 = icmp slt i32 %717, 1
  br i1 %718, label %723, label %719

719:                                              ; preds = %708
  %720 = load i32, ptr %3, align 4, !tbaa !4
  %721 = add i32 %720, %717
  store i32 %721, ptr %3, align 4, !tbaa !4
  %722 = icmp ult i32 %721, %706
  br i1 %722, label %708, label %.loopexit76, !llvm.loop !47

723:                                              ; preds = %708
  %724 = icmp slt i32 %717, 0
  br i1 %724, label %725, label %733

725:                                              ; preds = %723
  %726 = load i32, ptr %707, align 4, !tbaa !4
  %727 = icmp eq i32 %726, 11
  br i1 %727, label %728, label %734

728:                                              ; preds = %725
  store i32 1, ptr %444, align 4, !tbaa !17
  %729 = load i32, ptr %3, align 4, !tbaa !4
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %.loopexit76

731:                                              ; preds = %728
  %732 = load i32, ptr %707, align 4, !tbaa !4
  br label %734

733:                                              ; preds = %723
  store i32 1, ptr %436, align 8, !tbaa !24
  br label %.loopexit76

734:                                              ; preds = %731, %725
  %735 = phi i32 [ %732, %731 ], [ %726, %725 ]
  %736 = tail call ptr @strerror(i32 noundef %735) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %736) #13
  br label %.loopexit77

.loopexit76:                                      ; preds = %719, %733, %728
  %737 = load ptr, ptr %449, align 8, !tbaa !30
  store ptr %737, ptr %435, align 8, !tbaa !20
  br label %.loopexit79

738:                                              ; preds = %485
  %739 = load i32, ptr %439, align 8, !tbaa !27
  %740 = shl i32 %739, 1
  store i32 %740, ptr %440, align 8, !tbaa !48
  %741 = load ptr, ptr %449, align 8, !tbaa !30
  store ptr %741, ptr %441, align 8, !tbaa !49
  br label %742

742:                                              ; preds = %812, %738
  %743 = phi i32 [ 0, %738 ], [ %792, %812 ]
  %744 = load i32, ptr %437, align 8, !tbaa !34
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %791

746:                                              ; preds = %742
  %747 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %747, label %.loopexit73 [
    i32 0, label %748
    i32 -5, label %748
  ]

748:                                              ; preds = %746, %746
  %749 = load i32, ptr %436, align 8, !tbaa !24
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %751, label %787

751:                                              ; preds = %748
  %752 = load ptr, ptr %443, align 8, !tbaa !29
  %753 = load i32, ptr %439, align 8, !tbaa !27
  store i32 0, ptr %444, align 4, !tbaa !17
  %754 = tail call ptr @__errno_location() #16
  store i32 0, ptr %754, align 4, !tbaa !4
  br label %755

755:                                              ; preds = %766, %751
  %756 = phi i32 [ 0, %751 ], [ %767, %766 ]
  %757 = sub i32 %753, %756
  %758 = tail call i32 @llvm.umin.i32(i32 %757, i32 1073741824)
  %759 = load i32, ptr %445, align 4, !tbaa !46
  %760 = zext i32 %756 to i64
  %761 = getelementptr inbounds nuw i8, ptr %752, i64 %760
  %762 = zext nneg i32 %758 to i64
  %763 = tail call i64 @read(i32 noundef %759, ptr noundef %761, i64 noundef %762) #13
  %764 = trunc i64 %763 to i32
  %765 = icmp slt i32 %764, 1
  br i1 %765, label %769, label %766

766:                                              ; preds = %755
  %767 = add i32 %756, %764
  %768 = icmp ult i32 %767, %753
  br i1 %768, label %755, label %.loopexit, !llvm.loop !47

769:                                              ; preds = %755
  %770 = icmp slt i32 %764, 0
  br i1 %770, label %771, label %778

771:                                              ; preds = %769
  %772 = load i32, ptr %754, align 4, !tbaa !4
  %773 = icmp eq i32 %772, 11
  br i1 %773, label %774, label %.loopexit74

774:                                              ; preds = %771
  store i32 1, ptr %444, align 4, !tbaa !17
  %775 = icmp eq i32 %756, 0
  br i1 %775, label %776, label %.loopexit

776:                                              ; preds = %774
  %777 = load i32, ptr %754, align 4, !tbaa !4
  br label %.loopexit74

778:                                              ; preds = %769
  store i32 1, ptr %436, align 8, !tbaa !24
  br label %.loopexit

.loopexit74:                                      ; preds = %771, %776
  %779 = phi i32 [ %777, %776 ], [ %772, %771 ]
  %780 = tail call ptr @strerror(i32 noundef %779) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %780) #13
  %781 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit73

.loopexit:                                        ; preds = %766, %778, %774
  %782 = phi i32 [ %756, %774 ], [ %756, %778 ], [ %767, %766 ]
  %783 = load i32, ptr %437, align 8, !tbaa !34
  %784 = add i32 %783, %782
  store i32 %784, ptr %437, align 8, !tbaa !34
  %785 = load ptr, ptr %443, align 8, !tbaa !29
  store ptr %785, ptr %442, align 8, !tbaa !35
  %786 = icmp eq i32 %784, 0
  br i1 %786, label %787, label %791

787:                                              ; preds = %.loopexit, %748
  %788 = load i32, ptr %444, align 4, !tbaa !17
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %.loopexit73

790:                                              ; preds = %787
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit73

791:                                              ; preds = %.loopexit, %742
  %792 = tail call i32 @inflate(ptr noundef nonnull %442, i32 noundef 0) #13
  %793 = load i32, ptr %440, align 8, !tbaa !48
  %794 = icmp ult i32 %793, %740
  br i1 %794, label %795, label %796

795:                                              ; preds = %791
  store i32 0, ptr %446, align 4, !tbaa !33
  br label %796

796:                                              ; preds = %795, %791
  switch i32 %792, label %812 [
    i32 -2, label %797
    i32 2, label %797
    i32 -4, label %798
    i32 -3, label %799
  ]

797:                                              ; preds = %796, %796
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit73

798:                                              ; preds = %796
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %816

799:                                              ; preds = %796
  %800 = load i32, ptr %446, align 4, !tbaa !33
  %801 = icmp eq i32 %800, 1
  br i1 %801, label %802, label %808

802:                                              ; preds = %799
  store i32 0, ptr %437, align 8, !tbaa !34
  store i32 1, ptr %436, align 8, !tbaa !24
  store i32 0, ptr %438, align 8, !tbaa !26
  %803 = sub i32 %740, %793
  store i32 %803, ptr %3, align 8, !tbaa !19
  %804 = load ptr, ptr %441, align 8, !tbaa !49
  %805 = zext i32 %803 to i64
  %806 = sub nsw i64 0, %805
  %807 = getelementptr inbounds i8, ptr %804, i64 %806
  store ptr %807, ptr %435, align 8, !tbaa !20
  br label %832

808:                                              ; preds = %799
  %809 = load ptr, ptr %447, align 8, !tbaa !50
  %810 = icmp eq ptr %809, null
  %811 = select i1 %810, ptr @.str.6, ptr %809
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %811) #13
  br label %816

812:                                              ; preds = %796
  %813 = icmp ne i32 %793, 0
  %814 = icmp ne i32 %792, 1
  %815 = select i1 %813, i1 %814, i1 false
  br i1 %815, label %742, label %.loopexit73, !llvm.loop !51

816:                                              ; preds = %808, %798
  %817 = load i32, ptr %440, align 8, !tbaa !48
  %818 = sub i32 %740, %817
  store i32 %818, ptr %3, align 8, !tbaa !19
  %819 = load ptr, ptr %441, align 8, !tbaa !49
  %820 = zext i32 %818 to i64
  %821 = sub nsw i64 0, %820
  %822 = getelementptr inbounds i8, ptr %819, i64 %821
  store ptr %822, ptr %435, align 8, !tbaa !20
  br label %.loopexit77

.loopexit73:                                      ; preds = %812, %746, %797, %790, %787, %.loopexit74
  %823 = phi i32 [ %781, %.loopexit74 ], [ %743, %787 ], [ %743, %790 ], [ %792, %797 ], [ %792, %812 ], [ %747, %746 ]
  %824 = load i32, ptr %440, align 8, !tbaa !48
  %825 = sub i32 %740, %824
  store i32 %825, ptr %3, align 8, !tbaa !19
  %826 = load ptr, ptr %441, align 8, !tbaa !49
  %827 = zext i32 %825 to i64
  %828 = sub nsw i64 0, %827
  %829 = getelementptr inbounds i8, ptr %826, i64 %828
  store ptr %829, ptr %435, align 8, !tbaa !20
  switch i32 %823, label %.loopexit77 [
    i32 1, label %830
    i32 0, label %832
  ]

830:                                              ; preds = %.loopexit73
  store i32 0, ptr %446, align 4, !tbaa !33
  store i32 0, ptr %438, align 8, !tbaa !26
  br label %832

831:                                              ; preds = %485
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit77

832:                                              ; preds = %830, %.loopexit73, %802, %700, %694
  %833 = load i32, ptr %3, align 8, !tbaa !19
  br label %834

834:                                              ; preds = %832, %696
  %835 = phi i32 [ %833, %832 ], [ %699, %696 ]
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %837, label %.loopexit79

837:                                              ; preds = %834
  %838 = load i32, ptr %436, align 8, !tbaa !24
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %843, label %840

840:                                              ; preds = %837
  %841 = load i32, ptr %437, align 8, !tbaa !34
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %.loopexit79, label %843

843:                                              ; preds = %840, %837
  %844 = load i32, ptr %438, align 8, !tbaa !26
  br label %485, !llvm.loop !52

.loopexit77:                                      ; preds = %.loopexit73, %520, %831, %816, %734, %.loopexit78, %506, %501
  %845 = load i32, ptr %3, align 8, !tbaa !19
  %846 = icmp eq i32 %845, 0
  %847 = sext i1 %846 to i32
  br label %.loopexit79

848:                                              ; preds = %481
  %849 = icmp eq i32 %479, 1
  br i1 %849, label %850, label %879

850:                                              ; preds = %848
  store i32 0, ptr %444, align 4, !tbaa !17
  %851 = tail call ptr @__errno_location() #16
  store i32 0, ptr %851, align 4, !tbaa !4
  br label %852

852:                                              ; preds = %863, %850
  %853 = phi i32 [ 0, %850 ], [ %864, %863 ]
  %854 = sub i32 %458, %853
  %855 = tail call i32 @llvm.umin.i32(i32 %854, i32 1073741824)
  %856 = load i32, ptr %445, align 4, !tbaa !46
  %857 = zext i32 %853 to i64
  %858 = getelementptr inbounds nuw i8, ptr %454, i64 %857
  %859 = zext nneg i32 %855 to i64
  %860 = tail call i64 @read(i32 noundef %856, ptr noundef %858, i64 noundef %859) #13
  %861 = trunc i64 %860 to i32
  %862 = icmp slt i32 %861, 1
  br i1 %862, label %866, label %863

863:                                              ; preds = %852
  %864 = add i32 %853, %861
  %865 = icmp ult i32 %864, %458
  br i1 %865, label %852, label %974, !llvm.loop !47

866:                                              ; preds = %852
  %867 = icmp slt i32 %861, 0
  br i1 %867, label %868, label %878

868:                                              ; preds = %866
  %869 = load i32, ptr %851, align 4, !tbaa !4
  %870 = icmp eq i32 %869, 11
  br i1 %870, label %871, label %875

871:                                              ; preds = %868
  store i32 1, ptr %444, align 4, !tbaa !17
  %872 = icmp eq i32 %853, 0
  br i1 %872, label %873, label %976

873:                                              ; preds = %871
  %874 = load i32, ptr %851, align 4, !tbaa !4
  br label %875

875:                                              ; preds = %873, %868
  %876 = phi i32 [ %874, %873 ], [ %869, %868 ]
  %877 = tail call ptr @strerror(i32 noundef %876) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %877) #13
  br label %976

878:                                              ; preds = %866
  store i32 1, ptr %436, align 8, !tbaa !24
  br label %976

879:                                              ; preds = %848
  store i32 %458, ptr %440, align 8, !tbaa !58
  store ptr %454, ptr %441, align 8, !tbaa !59
  br label %880

880:                                              ; preds = %945, %879
  %881 = phi i32 [ 0, %879 ], [ %930, %945 ]
  %882 = load i32, ptr %437, align 8, !tbaa !34
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %884, label %929

884:                                              ; preds = %880
  %885 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %885, label %.loopexit80 [
    i32 0, label %886
    i32 -5, label %886
  ]

886:                                              ; preds = %884, %884
  %887 = load i32, ptr %436, align 8, !tbaa !24
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %889, label %925

889:                                              ; preds = %886
  %890 = load ptr, ptr %443, align 8, !tbaa !29
  %891 = load i32, ptr %439, align 8, !tbaa !27
  store i32 0, ptr %444, align 4, !tbaa !17
  %892 = tail call ptr @__errno_location() #16
  store i32 0, ptr %892, align 4, !tbaa !4
  br label %893

893:                                              ; preds = %904, %889
  %894 = phi i32 [ 0, %889 ], [ %905, %904 ]
  %895 = sub i32 %891, %894
  %896 = tail call i32 @llvm.umin.i32(i32 %895, i32 1073741824)
  %897 = load i32, ptr %445, align 4, !tbaa !46
  %898 = zext i32 %894 to i64
  %899 = getelementptr inbounds nuw i8, ptr %890, i64 %898
  %900 = zext nneg i32 %896 to i64
  %901 = tail call i64 @read(i32 noundef %897, ptr noundef %899, i64 noundef %900) #13
  %902 = trunc i64 %901 to i32
  %903 = icmp slt i32 %902, 1
  br i1 %903, label %907, label %904

904:                                              ; preds = %893
  %905 = add i32 %894, %902
  %906 = icmp ult i32 %905, %891
  br i1 %906, label %893, label %.loopexit75, !llvm.loop !47

907:                                              ; preds = %893
  %908 = icmp slt i32 %902, 0
  br i1 %908, label %909, label %916

909:                                              ; preds = %907
  %910 = load i32, ptr %892, align 4, !tbaa !4
  %911 = icmp eq i32 %910, 11
  br i1 %911, label %912, label %.loopexit82

912:                                              ; preds = %909
  store i32 1, ptr %444, align 4, !tbaa !17
  %913 = icmp eq i32 %894, 0
  br i1 %913, label %914, label %.loopexit75

914:                                              ; preds = %912
  %915 = load i32, ptr %892, align 4, !tbaa !4
  br label %.loopexit82

916:                                              ; preds = %907
  store i32 1, ptr %436, align 8, !tbaa !24
  br label %.loopexit75

.loopexit82:                                      ; preds = %909, %914
  %917 = phi i32 [ %915, %914 ], [ %910, %909 ]
  %918 = tail call ptr @strerror(i32 noundef %917) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %918) #13
  %919 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit80

.loopexit75:                                      ; preds = %904, %916, %912
  %920 = phi i32 [ %894, %912 ], [ %894, %916 ], [ %905, %904 ]
  %921 = load i32, ptr %437, align 8, !tbaa !34
  %922 = add i32 %921, %920
  store i32 %922, ptr %437, align 8, !tbaa !34
  %923 = load ptr, ptr %443, align 8, !tbaa !29
  store ptr %923, ptr %442, align 8, !tbaa !35
  %924 = icmp eq i32 %922, 0
  br i1 %924, label %925, label %929

925:                                              ; preds = %.loopexit75, %886
  %926 = load i32, ptr %444, align 4, !tbaa !17
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %.loopexit80

928:                                              ; preds = %925
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit80

929:                                              ; preds = %.loopexit75, %880
  %930 = tail call i32 @inflate(ptr noundef nonnull %442, i32 noundef 0) #13
  %931 = load i32, ptr %440, align 8, !tbaa !48
  %932 = icmp ult i32 %931, %458
  br i1 %932, label %933, label %934

933:                                              ; preds = %929
  store i32 0, ptr %446, align 4, !tbaa !33
  br label %934

934:                                              ; preds = %933, %929
  switch i32 %930, label %945 [
    i32 -2, label %935
    i32 2, label %935
    i32 -4, label %936
    i32 -3, label %937
  ]

935:                                              ; preds = %934, %934
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit80

936:                                              ; preds = %934
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %949

937:                                              ; preds = %934
  %938 = load i32, ptr %446, align 4, !tbaa !33
  %939 = icmp eq i32 %938, 1
  br i1 %939, label %940, label %941

940:                                              ; preds = %937
  store i32 0, ptr %437, align 8, !tbaa !34
  store i32 1, ptr %436, align 8, !tbaa !24
  store i32 0, ptr %438, align 8, !tbaa !26
  br label %949

941:                                              ; preds = %937
  %942 = load ptr, ptr %447, align 8, !tbaa !50
  %943 = icmp eq ptr %942, null
  %944 = select i1 %943, ptr @.str.6, ptr %942
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %944) #13
  br label %949

945:                                              ; preds = %934
  %946 = icmp ne i32 %931, 0
  %947 = icmp ne i32 %930, 1
  %948 = select i1 %946, i1 %947, i1 false
  br i1 %948, label %880, label %.loopexit80, !llvm.loop !51

949:                                              ; preds = %941, %940, %936
  %950 = phi i32 [ -3, %941 ], [ 0, %940 ], [ -4, %936 ]
  %951 = load i32, ptr %440, align 8, !tbaa !48
  %952 = sub i32 %458, %951
  %953 = load ptr, ptr %441, align 8, !tbaa !49
  %954 = zext i32 %952 to i64
  %955 = sub nsw i64 0, %954
  %956 = getelementptr inbounds i8, ptr %953, i64 %955
  store ptr %956, ptr %435, align 8, !tbaa !20
  br label %966

.loopexit80:                                      ; preds = %945, %884, %935, %928, %925, %.loopexit82
  %957 = phi i32 [ %919, %.loopexit82 ], [ %881, %925 ], [ %881, %928 ], [ %930, %935 ], [ %930, %945 ], [ %885, %884 ]
  %958 = load i32, ptr %440, align 8, !tbaa !48
  %959 = sub i32 %458, %958
  %960 = load ptr, ptr %441, align 8, !tbaa !49
  %961 = zext i32 %959 to i64
  %962 = sub nsw i64 0, %961
  %963 = getelementptr inbounds i8, ptr %960, i64 %962
  store ptr %963, ptr %435, align 8, !tbaa !20
  %964 = icmp eq i32 %957, 1
  br i1 %964, label %965, label %966

965:                                              ; preds = %.loopexit80
  store i32 0, ptr %446, align 4, !tbaa !33
  store i32 0, ptr %438, align 8, !tbaa !26
  br label %971

966:                                              ; preds = %.loopexit80, %949
  %967 = phi i64 [ %954, %949 ], [ %961, %.loopexit80 ]
  %968 = phi i32 [ %950, %949 ], [ %957, %.loopexit80 ]
  %969 = icmp ne i32 %968, 0
  %970 = sext i1 %969 to i32
  br label %971

971:                                              ; preds = %966, %965
  %972 = phi i64 [ %961, %965 ], [ %967, %966 ]
  %973 = phi i32 [ 0, %965 ], [ %970, %966 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %976

974:                                              ; preds = %863
  %975 = zext i32 %864 to i64
  br label %976

976:                                              ; preds = %974, %971, %878, %875, %871, %461
  %977 = phi i64 [ %975, %974 ], [ %857, %878 ], [ %857, %875 ], [ %857, %871 ], [ %464, %461 ], [ %972, %971 ]
  %978 = phi i32 [ 0, %974 ], [ 0, %878 ], [ -1, %875 ], [ 0, %871 ], [ %471, %461 ], [ %973, %971 ]
  %979 = load i64, ptr %448, align 8, !tbaa !21
  %980 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %979, i64 %977), !nosanitize !22
  %981 = extractvalue { i64, i1 } %980, 1, !nosanitize !22
  br i1 %981, label %982, label %983, !prof !23, !nosanitize !22

982:                                              ; preds = %976
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

983:                                              ; preds = %976
  %984 = extractvalue { i64, i1 } %980, 0, !nosanitize !22
  %985 = add i64 %977, %456
  %986 = getelementptr inbounds nuw i8, ptr %454, i64 %977
  %987 = sub i64 %455, %977
  store i64 %984, ptr %448, align 8, !tbaa !21
  br label %.loopexit79

.loopexit79:                                      ; preds = %840, %834, %700, %983, %.loopexit77, %.loopexit76
  %988 = phi ptr [ %986, %983 ], [ %454, %.loopexit77 ], [ %454, %.loopexit76 ], [ %454, %700 ], [ %454, %834 ], [ %454, %840 ]
  %989 = phi i64 [ %987, %983 ], [ %455, %.loopexit77 ], [ %455, %.loopexit76 ], [ %455, %700 ], [ %455, %834 ], [ %455, %840 ]
  %990 = phi i64 [ %985, %983 ], [ %456, %.loopexit77 ], [ %456, %.loopexit76 ], [ %456, %700 ], [ %456, %834 ], [ %456, %840 ]
  %991 = phi i32 [ %978, %983 ], [ %847, %.loopexit77 ], [ 0, %.loopexit76 ], [ 0, %700 ], [ 0, %834 ], [ 0, %840 ]
  %992 = icmp eq i64 %989, 0
  br i1 %992, label %.loopexit84, label %993

993:                                              ; preds = %.loopexit79
  %994 = icmp eq i32 %991, 0
  br i1 %994, label %453, label %995, !llvm.loop !60

995:                                              ; preds = %993
  %996 = load i32, ptr %436, align 8, !tbaa !24
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %.loopexit84, label %.loopexit83

.loopexit83:                                      ; preds = %475, %995
  %998 = phi i64 [ %990, %995 ], [ %456, %475 ]
  %999 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %999, align 4, !tbaa !61
  br label %.loopexit84

.loopexit84:                                      ; preds = %.loopexit91, %108, %.loopexit79, %.loopexit83, %995, %419, %404, %.loopexit99, %.loopexit96, %94, %89
  %1000 = phi i64 [ 0, %94 ], [ 0, %89 ], [ %998, %.loopexit83 ], [ %990, %995 ], [ 0, %404 ], [ %990, %.loopexit79 ], [ 0, %419 ], [ 0, %.loopexit99 ], [ 0, %.loopexit96 ], [ 0, %108 ], [ 0, %.loopexit91 ]
  %1001 = udiv i64 %1000, %1
  br label %1002

1002:                                             ; preds = %.loopexit84, %24, %23, %13, %6, %4
  %1003 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %23 ], [ 0, %13 ], [ %1001, %.loopexit84 ], [ 0, %24 ]
  ret i64 %1003
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1010, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1010

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
  br i1 %14, label %1010, label %15

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
  br label %1010

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %.loopexit98, label %36

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

54:                                               ; preds = %438, %36
  %55 = phi i64 [ %439, %438 ], [ %34, %36 ]
  %56 = load i32, ptr %0, align 8, !tbaa !19
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %73, label %58

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
  %72 = sub i64 %55, %64
  store i64 %72, ptr %33, align 8, !tbaa !18
  br label %438

73:                                               ; preds = %54
  %74 = load i32, ptr %39, align 8, !tbaa !24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %.preheader725, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %40, align 8, !tbaa !25
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %.loopexit98, label %.preheader725

.preheader725:                                    ; preds = %76, %73
  br label %79

79:                                               ; preds = %.backedge, %.preheader725
  %80 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %80, label %425 [
    i32 0, label %81
    i32 1, label %297
    i32 2, label %331
  ]

81:                                               ; preds = %79
  %82 = load i32, ptr %42, align 8, !tbaa !27
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load i32, ptr %51, align 4, !tbaa !28
  %86 = zext i32 %85 to i64
  %87 = tail call noalias ptr @malloc(i64 noundef %86) #15
  store ptr %87, ptr %47, align 8, !tbaa !29
  %88 = load i32, ptr %51, align 4, !tbaa !28
  %89 = shl i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = tail call noalias ptr @malloc(i64 noundef %90) #15
  store ptr %91, ptr %44, align 8, !tbaa !30
  %92 = icmp eq ptr %87, null
  %93 = icmp eq ptr %91, null
  %94 = or i1 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  tail call void @free(ptr noundef %91) #13
  tail call void @free(ptr noundef %87) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit95

96:                                               ; preds = %84
  %97 = load i32, ptr %51, align 4, !tbaa !28
  store i32 %97, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %98 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %101) #13
  %102 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %102) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit95

103:                                              ; preds = %96, %81
  %104 = load i32, ptr %53, align 8, !tbaa !32
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr %50, align 4, !tbaa !33
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106, %103
  %110 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %111 = load i32, ptr %50, align 4, !tbaa !33
  %112 = icmp ne i32 %111, -1
  %113 = zext i1 %112 to i32
  store i32 %113, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %294

114:                                              ; preds = %106
  %115 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %115, label %.loopexit95 [
    i32 0, label %116
    i32 -5, label %116
  ]

116:                                              ; preds = %114, %114
  %117 = load i32, ptr %39, align 8, !tbaa !24
  %118 = icmp eq i32 %117, 0
  %119 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %118, label %120, label %262

120:                                              ; preds = %116
  %121 = icmp eq i32 %119, 0
  %122 = load ptr, ptr %47, align 8, !tbaa !29
  %123 = ptrtoaddr ptr %122 to i64
  br i1 %121, label %224, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %46, align 8, !tbaa !35
  %126 = icmp eq ptr %125, %122
  br i1 %126, label %224, label %127

127:                                              ; preds = %124
  %128 = ptrtoaddr ptr %125 to i64
  %129 = zext i32 %119 to i64
  %130 = icmp ult i32 %119, 4
  %131 = sub i64 %123, %128
  %132 = icmp ult i64 %131, 32
  %133 = select i1 %130, i1 true, i1 %132
  br i1 %133, label %173, label %134

134:                                              ; preds = %127
  %135 = icmp ult i32 %119, 32
  br i1 %135, label %157, label %136

136:                                              ; preds = %134
  %137 = and i64 %129, 4294967264
  br label %138

138:                                              ; preds = %138, %136
  %139 = phi i64 [ 0, %136 ], [ %146, %138 ]
  %140 = getelementptr i8, ptr %122, i64 %139
  %141 = getelementptr i8, ptr %125, i64 %139
  %142 = getelementptr i8, ptr %141, i64 16
  %143 = load <16 x i8>, ptr %141, align 1, !tbaa !36
  %144 = load <16 x i8>, ptr %142, align 1, !tbaa !36
  %145 = getelementptr i8, ptr %140, i64 16
  store <16 x i8> %143, ptr %140, align 1, !tbaa !36
  store <16 x i8> %144, ptr %145, align 1, !tbaa !36
  %146 = add nuw nsw i64 %139, 32
  %147 = icmp eq i64 %146, %137
  br i1 %147, label %148, label %138, !llvm.loop !70

148:                                              ; preds = %138
  %149 = icmp eq i64 %137, %129
  br i1 %149, label %.loopexit88, label %150

150:                                              ; preds = %148
  %151 = trunc nuw i64 %137 to i32
  %152 = sub i32 %119, %151
  %153 = getelementptr i8, ptr %125, i64 %137
  %154 = getelementptr i8, ptr %122, i64 %137
  %155 = and i64 %129, 28
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %173, label %157, !prof !41

157:                                              ; preds = %150, %134
  %158 = phi i64 [ %137, %150 ], [ 0, %134 ]
  %159 = and i64 %129, 4294967292
  br label %160

160:                                              ; preds = %160, %157
  %161 = phi i64 [ %158, %157 ], [ %165, %160 ]
  %162 = getelementptr i8, ptr %122, i64 %161
  %163 = getelementptr i8, ptr %125, i64 %161
  %164 = load <4 x i8>, ptr %163, align 1, !tbaa !36
  store <4 x i8> %164, ptr %162, align 1, !tbaa !36
  %165 = add nuw i64 %161, 4
  %166 = icmp eq i64 %165, %159
  br i1 %166, label %167, label %160, !llvm.loop !71

167:                                              ; preds = %160
  %168 = getelementptr i8, ptr %122, i64 %159
  %169 = getelementptr i8, ptr %125, i64 %159
  %170 = trunc nuw i64 %159 to i32
  %171 = sub i32 %119, %170
  %172 = icmp eq i64 %159, %129
  br i1 %172, label %.loopexit88, label %173

173:                                              ; preds = %167, %150, %127
  %174 = phi ptr [ %122, %127 ], [ %154, %150 ], [ %168, %167 ]
  %175 = phi ptr [ %125, %127 ], [ %153, %150 ], [ %169, %167 ]
  %176 = phi i32 [ %119, %127 ], [ %152, %150 ], [ %171, %167 ]
  %177 = add i32 %176, -1
  %178 = and i32 %176, 7
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %.loopexit90, label %.preheader89

.preheader89:                                     ; preds = %173, %.preheader89
  %180 = phi ptr [ %185, %.preheader89 ], [ %174, %173 ]
  %181 = phi ptr [ %183, %.preheader89 ], [ %175, %173 ]
  %182 = phi i32 [ %186, %.preheader89 ], [ 0, %173 ]
  %183 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %184 = load i8, ptr %181, align 1, !tbaa !36
  %185 = getelementptr inbounds nuw i8, ptr %180, i64 1
  store i8 %184, ptr %180, align 1, !tbaa !36
  %186 = add nuw nsw i32 %182, 1
  %187 = icmp eq i32 %186, %178
  br i1 %187, label %.loopexit90.loopexit, label %.preheader89, !llvm.loop !72

.loopexit90.loopexit:                             ; preds = %.preheader89
  %188 = and i32 %176, -8
  br label %.loopexit90

.loopexit90:                                      ; preds = %.loopexit90.loopexit, %173
  %189 = phi ptr [ %174, %173 ], [ %185, %.loopexit90.loopexit ]
  %190 = phi ptr [ %175, %173 ], [ %183, %.loopexit90.loopexit ]
  %191 = phi i32 [ %176, %173 ], [ %188, %.loopexit90.loopexit ]
  %192 = icmp ult i32 %177, 7
  br i1 %192, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %.loopexit90, %.preheader87
  %193 = phi ptr [ %219, %.preheader87 ], [ %189, %.loopexit90 ]
  %194 = phi ptr [ %217, %.preheader87 ], [ %190, %.loopexit90 ]
  %195 = phi i32 [ %220, %.preheader87 ], [ %191, %.loopexit90 ]
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
  br i1 %221, label %.loopexit88, label %.preheader87, !llvm.loop !73

.loopexit88:                                      ; preds = %.preheader87, %.loopexit90, %167, %148
  %222 = load i32, ptr %40, align 8, !tbaa !34
  %223 = load ptr, ptr %47, align 8, !tbaa !29
  br label %224

224:                                              ; preds = %.loopexit88, %124, %120
  %225 = phi ptr [ %223, %.loopexit88 ], [ %122, %124 ], [ %122, %120 ]
  %226 = phi i32 [ %222, %.loopexit88 ], [ %119, %124 ], [ 0, %120 ]
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 %227
  %229 = load i32, ptr %42, align 8, !tbaa !27
  %230 = sub i32 %229, %226
  store i32 0, ptr %48, align 4, !tbaa !17
  %231 = tail call ptr @__errno_location() #16
  store i32 0, ptr %231, align 4, !tbaa !4
  br label %232

232:                                              ; preds = %243, %224
  %233 = phi i32 [ 0, %224 ], [ %244, %243 ]
  %234 = sub i32 %230, %233
  %235 = tail call i32 @llvm.umin.i32(i32 %234, i32 1073741824)
  %236 = load i32, ptr %49, align 4, !tbaa !46
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
  br i1 %245, label %232, label %.loopexit86, !llvm.loop !47

246:                                              ; preds = %232
  %247 = icmp slt i32 %241, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %246
  %249 = load i32, ptr %231, align 4, !tbaa !4
  %250 = icmp eq i32 %249, 11
  br i1 %250, label %251, label %.loopexit96

251:                                              ; preds = %248
  store i32 1, ptr %48, align 4, !tbaa !17
  %252 = icmp eq i32 %233, 0
  br i1 %252, label %253, label %.loopexit86

253:                                              ; preds = %251
  %254 = load i32, ptr %231, align 4, !tbaa !4
  br label %.loopexit96

255:                                              ; preds = %246
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit86

.loopexit96:                                      ; preds = %248, %253
  %256 = phi i32 [ %254, %253 ], [ %249, %248 ]
  %257 = tail call ptr @strerror(i32 noundef %256) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %257) #13
  br label %.loopexit95

.loopexit86:                                      ; preds = %243, %255, %251
  %258 = phi i32 [ %233, %251 ], [ %233, %255 ], [ %244, %243 ]
  %259 = load i32, ptr %40, align 8, !tbaa !34
  %260 = add i32 %259, %258
  store i32 %260, ptr %40, align 8, !tbaa !34
  %261 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %261, ptr %46, align 8, !tbaa !35
  br label %262

262:                                              ; preds = %.loopexit86, %116
  %263 = phi i32 [ %260, %.loopexit86 ], [ %119, %116 ]
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %294, label %265

265:                                              ; preds = %262
  %266 = load i32, ptr %48, align 4, !tbaa !17
  %267 = icmp ne i32 %266, 0
  %268 = icmp ult i32 %263, 4
  %269 = and i1 %268, %267
  br i1 %269, label %294, label %270

270:                                              ; preds = %265
  %271 = icmp ugt i32 %263, 3
  %272 = load ptr, ptr %46, align 8, !tbaa !35
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
  %289 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %426

290:                                              ; preds = %284, %280, %276, %273, %270
  %291 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %291, ptr %37, align 8, !tbaa !20
  %292 = zext i32 %263 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %291, ptr align 1 %272, i64 %292, i1 false)
  %293 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %293, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %428

294:                                              ; preds = %265, %262, %109
  %295 = load i32, ptr %41, align 8, !tbaa !26
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %.loopexit97, label %426

297:                                              ; preds = %79
  %298 = load ptr, ptr %44, align 8, !tbaa !30
  %299 = load i32, ptr %42, align 8, !tbaa !27
  %300 = shl i32 %299, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %301 = tail call ptr @__errno_location() #16
  store i32 0, ptr %301, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %302

302:                                              ; preds = %313, %297
  %303 = phi i32 [ %315, %313 ], [ 0, %297 ]
  %304 = sub i32 %300, %303
  %305 = tail call i32 @llvm.umin.i32(i32 %304, i32 1073741824)
  %306 = load i32, ptr %49, align 4, !tbaa !46
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
  br i1 %316, label %302, label %.loopexit94, !llvm.loop !47

317:                                              ; preds = %302
  %318 = icmp slt i32 %311, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %317
  %320 = load i32, ptr %301, align 4, !tbaa !4
  %321 = icmp eq i32 %320, 11
  br i1 %321, label %322, label %.loopexit99

322:                                              ; preds = %319
  store i32 1, ptr %48, align 4, !tbaa !17
  %323 = load i32, ptr %0, align 4, !tbaa !4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %.loopexit94

325:                                              ; preds = %322
  %326 = load i32, ptr %301, align 4, !tbaa !4
  br label %.loopexit99

327:                                              ; preds = %317
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit94

.loopexit99:                                      ; preds = %319, %325
  %328 = phi i32 [ %326, %325 ], [ %320, %319 ]
  %329 = tail call ptr @strerror(i32 noundef %328) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %329) #13
  br label %.loopexit95

.loopexit94:                                      ; preds = %313, %327, %322
  %330 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %330, ptr %37, align 8, !tbaa !20
  br label %.loopexit97

331:                                              ; preds = %79
  %332 = load i32, ptr %42, align 8, !tbaa !27
  %333 = shl i32 %332, 1
  store i32 %333, ptr %43, align 8, !tbaa !48
  %334 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %334, ptr %45, align 8, !tbaa !49
  br label %335

335:                                              ; preds = %406, %331
  %336 = phi i32 [ 0, %331 ], [ %385, %406 ]
  %337 = load i32, ptr %40, align 8, !tbaa !34
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %384

339:                                              ; preds = %335
  %340 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %340, label %.loopexit91 [
    i32 0, label %341
    i32 -5, label %341
  ]

341:                                              ; preds = %339, %339
  %342 = load i32, ptr %39, align 8, !tbaa !24
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %380

344:                                              ; preds = %341
  %345 = load ptr, ptr %47, align 8, !tbaa !29
  %346 = load i32, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %48, align 4, !tbaa !17
  %347 = tail call ptr @__errno_location() #16
  store i32 0, ptr %347, align 4, !tbaa !4
  br label %348

348:                                              ; preds = %359, %344
  %349 = phi i32 [ 0, %344 ], [ %360, %359 ]
  %350 = sub i32 %346, %349
  %351 = tail call i32 @llvm.umin.i32(i32 %350, i32 1073741824)
  %352 = load i32, ptr %49, align 4, !tbaa !46
  %353 = zext i32 %349 to i64
  %354 = getelementptr inbounds nuw i8, ptr %345, i64 %353
  %355 = zext nneg i32 %351 to i64
  %356 = tail call i64 @read(i32 noundef %352, ptr noundef %354, i64 noundef %355) #13
  %357 = trunc i64 %356 to i32
  %358 = icmp slt i32 %357, 1
  br i1 %358, label %362, label %359

359:                                              ; preds = %348
  %360 = add i32 %349, %357
  %361 = icmp ult i32 %360, %346
  br i1 %361, label %348, label %.loopexit85, !llvm.loop !47

362:                                              ; preds = %348
  %363 = icmp slt i32 %357, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %362
  %365 = load i32, ptr %347, align 4, !tbaa !4
  %366 = icmp eq i32 %365, 11
  br i1 %366, label %367, label %.loopexit93

367:                                              ; preds = %364
  store i32 1, ptr %48, align 4, !tbaa !17
  %368 = icmp eq i32 %349, 0
  br i1 %368, label %369, label %.loopexit85

369:                                              ; preds = %367
  %370 = load i32, ptr %347, align 4, !tbaa !4
  br label %.loopexit93

371:                                              ; preds = %362
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit85

.loopexit93:                                      ; preds = %364, %369
  %372 = phi i32 [ %370, %369 ], [ %365, %364 ]
  %373 = tail call ptr @strerror(i32 noundef %372) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %373) #13
  %374 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit91

.loopexit85:                                      ; preds = %359, %371, %367
  %375 = phi i32 [ %349, %367 ], [ %349, %371 ], [ %360, %359 ]
  %376 = load i32, ptr %40, align 8, !tbaa !34
  %377 = add i32 %376, %375
  store i32 %377, ptr %40, align 8, !tbaa !34
  %378 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %378, ptr %46, align 8, !tbaa !35
  %379 = icmp eq i32 %377, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %.loopexit85, %341
  %381 = load i32, ptr %48, align 4, !tbaa !17
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %.loopexit91

383:                                              ; preds = %380
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit91

384:                                              ; preds = %.loopexit85, %335
  %385 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %386 = load i32, ptr %43, align 8, !tbaa !48
  %387 = icmp ult i32 %386, %333
  br i1 %387, label %388, label %389

388:                                              ; preds = %384
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %389

389:                                              ; preds = %388, %384
  switch i32 %385, label %406 [
    i32 -2, label %390
    i32 2, label %390
    i32 -4, label %391
    i32 -3, label %392
  ]

390:                                              ; preds = %389, %389
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit91

391:                                              ; preds = %389
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %410

392:                                              ; preds = %389
  %393 = load i32, ptr %50, align 4, !tbaa !33
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %395, label %401

395:                                              ; preds = %392
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  %396 = sub i32 %333, %386
  store i32 %396, ptr %0, align 8, !tbaa !19
  %397 = load ptr, ptr %45, align 8, !tbaa !49
  %398 = zext i32 %396 to i64
  %399 = sub nsw i64 0, %398
  %400 = getelementptr inbounds i8, ptr %397, i64 %399
  store ptr %400, ptr %37, align 8, !tbaa !20
  br label %426

401:                                              ; preds = %392
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %403 = load ptr, ptr %402, align 8, !tbaa !50
  %404 = icmp eq ptr %403, null
  %405 = select i1 %404, ptr @.str.6, ptr %403
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %405) #13
  br label %410

406:                                              ; preds = %389
  %407 = icmp ne i32 %386, 0
  %408 = icmp ne i32 %385, 1
  %409 = select i1 %407, i1 %408, i1 false
  br i1 %409, label %335, label %.loopexit91, !llvm.loop !51

410:                                              ; preds = %401, %391
  %411 = load i32, ptr %43, align 8, !tbaa !48
  %412 = sub i32 %333, %411
  store i32 %412, ptr %0, align 8, !tbaa !19
  %413 = load ptr, ptr %45, align 8, !tbaa !49
  %414 = zext i32 %412 to i64
  %415 = sub nsw i64 0, %414
  %416 = getelementptr inbounds i8, ptr %413, i64 %415
  store ptr %416, ptr %37, align 8, !tbaa !20
  br label %.loopexit95

.loopexit91:                                      ; preds = %406, %339, %390, %383, %380, %.loopexit93
  %417 = phi i32 [ %374, %.loopexit93 ], [ %336, %380 ], [ %336, %383 ], [ %385, %390 ], [ %340, %339 ], [ %385, %406 ]
  %418 = load i32, ptr %43, align 8, !tbaa !48
  %419 = sub i32 %333, %418
  store i32 %419, ptr %0, align 8, !tbaa !19
  %420 = load ptr, ptr %45, align 8, !tbaa !49
  %421 = zext i32 %419 to i64
  %422 = sub nsw i64 0, %421
  %423 = getelementptr inbounds i8, ptr %420, i64 %422
  store ptr %423, ptr %37, align 8, !tbaa !20
  switch i32 %417, label %.loopexit95 [
    i32 1, label %424
    i32 0, label %426
  ]

424:                                              ; preds = %.loopexit91
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %426

425:                                              ; preds = %79
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit95

426:                                              ; preds = %424, %.loopexit91, %395, %294, %288
  %427 = load i32, ptr %0, align 8, !tbaa !19
  br label %428

428:                                              ; preds = %426, %290
  %429 = phi i32 [ %427, %426 ], [ %293, %290 ]
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %.loopexit97

431:                                              ; preds = %428
  %432 = load i32, ptr %39, align 8, !tbaa !24
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %.backedge, label %434

434:                                              ; preds = %431
  %435 = load i32, ptr %40, align 8, !tbaa !34
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %.loopexit97, label %.backedge

.backedge:                                        ; preds = %434, %431
  br label %79, !llvm.loop !52

.loopexit97:                                      ; preds = %434, %428, %294, %.loopexit94
  %437 = load i64, ptr %33, align 8, !tbaa !18
  br label %438

438:                                              ; preds = %.loopexit97, %70
  %439 = phi i64 [ %437, %.loopexit97 ], [ %72, %70 ]
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %.loopexit98, label %54, !llvm.loop !53

.loopexit98:                                      ; preds = %438, %76, %32
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %459

459:                                              ; preds = %.loopexit79, %.loopexit98
  %460 = phi ptr [ %2, %.loopexit98 ], [ %998, %.loopexit79 ]
  %461 = phi i64 [ 1, %.loopexit98 ], [ %997, %.loopexit79 ]
  %462 = phi i64 [ 0, %.loopexit98 ], [ %996, %.loopexit79 ]
  %463 = call i64 @llvm.umin.i64(i64 %461, i64 4294967295)
  %464 = trunc nuw i64 %463 to i32
  %465 = load i32, ptr %0, align 8, !tbaa !19
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %478, label %467

467:                                              ; preds = %459
  %468 = call i32 @llvm.umin.i32(i32 %465, i32 %464)
  %469 = load ptr, ptr %441, align 8, !tbaa !20
  %470 = zext i32 %468 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %460, ptr align 1 %469, i64 %470, i1 false)
  %471 = load ptr, ptr %441, align 8, !tbaa !20
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 %470
  store ptr %472, ptr %441, align 8, !tbaa !20
  %473 = load i32, ptr %0, align 8, !tbaa !19
  %474 = sub i32 %473, %468
  store i32 %474, ptr %0, align 8, !tbaa !19
  %475 = load i32, ptr %9, align 8, !tbaa !16
  %476 = icmp ne i32 %475, 0
  %477 = sext i1 %476 to i32
  br label %982

478:                                              ; preds = %459
  %479 = load i32, ptr %442, align 8, !tbaa !24
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %484, label %481

481:                                              ; preds = %478
  %482 = load i32, ptr %443, align 8, !tbaa !25
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %.loopexit83, label %484

484:                                              ; preds = %481, %478
  %485 = load i32, ptr %444, align 8, !tbaa !26
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %.preheader650, label %487

487:                                              ; preds = %484
  %488 = load i32, ptr %445, align 8, !tbaa !27
  %489 = shl i32 %488, 1
  %490 = icmp ugt i32 %489, %464
  br i1 %490, label %.preheader650, label %854

.preheader650:                                    ; preds = %487, %484
  br label %491

491:                                              ; preds = %.preheader650, %849
  %492 = phi i32 [ %850, %849 ], [ %485, %.preheader650 ]
  switch i32 %492, label %837 [
    i32 0, label %493
    i32 1, label %709
    i32 2, label %744
  ]

493:                                              ; preds = %491
  %494 = load i32, ptr %445, align 8, !tbaa !27
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %515

496:                                              ; preds = %493
  %497 = load i32, ptr %456, align 4, !tbaa !28
  %498 = zext i32 %497 to i64
  %499 = call noalias ptr @malloc(i64 noundef %498) #15
  store ptr %499, ptr %449, align 8, !tbaa !29
  %500 = load i32, ptr %456, align 4, !tbaa !28
  %501 = shl i32 %500, 1
  %502 = zext i32 %501 to i64
  %503 = call noalias ptr @malloc(i64 noundef %502) #15
  store ptr %503, ptr %455, align 8, !tbaa !30
  %504 = icmp eq ptr %499, null
  %505 = icmp eq ptr %503, null
  %506 = or i1 %504, %505
  br i1 %506, label %507, label %508

507:                                              ; preds = %496
  call void @free(ptr noundef %503) #13
  call void @free(ptr noundef %499) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

508:                                              ; preds = %496
  %509 = load i32, ptr %456, align 4, !tbaa !28
  store i32 %509, ptr %445, align 8, !tbaa !27
  store i32 0, ptr %443, align 8, !tbaa !25
  store ptr null, ptr %448, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %457, i8 0, i64 24, i1 false)
  %510 = call i32 @inflateInit2_(ptr noundef nonnull %448, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %515, label %512

512:                                              ; preds = %508
  %513 = load ptr, ptr %455, align 8, !tbaa !30
  call void @free(ptr noundef %513) #13
  %514 = load ptr, ptr %449, align 8, !tbaa !29
  call void @free(ptr noundef %514) #13
  store i32 0, ptr %445, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

515:                                              ; preds = %508, %493
  %516 = load i32, ptr %458, align 8, !tbaa !32
  %517 = icmp eq i32 %516, -1
  br i1 %517, label %521, label %518

518:                                              ; preds = %515
  %519 = load i32, ptr %452, align 4, !tbaa !33
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %526

521:                                              ; preds = %518, %515
  %522 = call i32 @inflateReset(ptr noundef nonnull %448) #13
  store i32 2, ptr %444, align 8, !tbaa !26
  %523 = load i32, ptr %452, align 4, !tbaa !33
  %524 = icmp ne i32 %523, -1
  %525 = zext i1 %524 to i32
  store i32 %525, ptr %452, align 4, !tbaa !33
  store i32 0, ptr %458, align 8, !tbaa !32
  br label %706

526:                                              ; preds = %518
  %527 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %527, label %.loopexit77 [
    i32 0, label %528
    i32 -5, label %528
  ]

528:                                              ; preds = %526, %526
  %529 = load i32, ptr %442, align 8, !tbaa !24
  %530 = icmp eq i32 %529, 0
  %531 = load i32, ptr %443, align 8, !tbaa !34
  br i1 %530, label %532, label %674

532:                                              ; preds = %528
  %533 = icmp eq i32 %531, 0
  %534 = load ptr, ptr %449, align 8, !tbaa !29
  %535 = ptrtoaddr ptr %534 to i64
  br i1 %533, label %636, label %536

536:                                              ; preds = %532
  %537 = load ptr, ptr %448, align 8, !tbaa !35
  %538 = icmp eq ptr %537, %534
  br i1 %538, label %636, label %539

539:                                              ; preds = %536
  %540 = ptrtoaddr ptr %537 to i64
  %541 = zext i32 %531 to i64
  %542 = icmp ult i32 %531, 4
  %543 = sub i64 %535, %540
  %544 = icmp ult i64 %543, 32
  %545 = select i1 %542, i1 true, i1 %544
  br i1 %545, label %585, label %546

546:                                              ; preds = %539
  %547 = icmp ult i32 %531, 32
  br i1 %547, label %569, label %548

548:                                              ; preds = %546
  %549 = and i64 %541, 4294967264
  br label %550

550:                                              ; preds = %550, %548
  %551 = phi i64 [ 0, %548 ], [ %558, %550 ]
  %552 = getelementptr i8, ptr %534, i64 %551
  %553 = getelementptr i8, ptr %537, i64 %551
  %554 = getelementptr i8, ptr %553, i64 16
  %555 = load <16 x i8>, ptr %553, align 1, !tbaa !36
  %556 = load <16 x i8>, ptr %554, align 1, !tbaa !36
  %557 = getelementptr i8, ptr %552, i64 16
  store <16 x i8> %555, ptr %552, align 1, !tbaa !36
  store <16 x i8> %556, ptr %557, align 1, !tbaa !36
  %558 = add nuw nsw i64 %551, 32
  %559 = icmp eq i64 %558, %549
  br i1 %559, label %560, label %550, !llvm.loop !74

560:                                              ; preds = %550
  %561 = icmp eq i64 %549, %541
  br i1 %561, label %.loopexit70, label %562

562:                                              ; preds = %560
  %563 = trunc nuw i64 %549 to i32
  %564 = sub i32 %531, %563
  %565 = getelementptr i8, ptr %537, i64 %549
  %566 = getelementptr i8, ptr %534, i64 %549
  %567 = and i64 %541, 28
  %568 = icmp eq i64 %567, 0
  br i1 %568, label %585, label %569, !prof !41

569:                                              ; preds = %562, %546
  %570 = phi i64 [ %549, %562 ], [ 0, %546 ]
  %571 = and i64 %541, 4294967292
  br label %572

572:                                              ; preds = %572, %569
  %573 = phi i64 [ %570, %569 ], [ %577, %572 ]
  %574 = getelementptr i8, ptr %534, i64 %573
  %575 = getelementptr i8, ptr %537, i64 %573
  %576 = load <4 x i8>, ptr %575, align 1, !tbaa !36
  store <4 x i8> %576, ptr %574, align 1, !tbaa !36
  %577 = add nuw i64 %573, 4
  %578 = icmp eq i64 %577, %571
  br i1 %578, label %579, label %572, !llvm.loop !75

579:                                              ; preds = %572
  %580 = getelementptr i8, ptr %534, i64 %571
  %581 = getelementptr i8, ptr %537, i64 %571
  %582 = trunc nuw i64 %571 to i32
  %583 = sub i32 %531, %582
  %584 = icmp eq i64 %571, %541
  br i1 %584, label %.loopexit70, label %585

585:                                              ; preds = %579, %562, %539
  %586 = phi ptr [ %534, %539 ], [ %566, %562 ], [ %580, %579 ]
  %587 = phi ptr [ %537, %539 ], [ %565, %562 ], [ %581, %579 ]
  %588 = phi i32 [ %531, %539 ], [ %564, %562 ], [ %583, %579 ]
  %589 = add i32 %588, -1
  %590 = and i32 %588, 7
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %585, %.preheader71
  %592 = phi ptr [ %597, %.preheader71 ], [ %586, %585 ]
  %593 = phi ptr [ %595, %.preheader71 ], [ %587, %585 ]
  %594 = phi i32 [ %598, %.preheader71 ], [ 0, %585 ]
  %595 = getelementptr inbounds nuw i8, ptr %593, i64 1
  %596 = load i8, ptr %593, align 1, !tbaa !36
  %597 = getelementptr inbounds nuw i8, ptr %592, i64 1
  store i8 %596, ptr %592, align 1, !tbaa !36
  %598 = add nuw nsw i32 %594, 1
  %599 = icmp eq i32 %598, %590
  br i1 %599, label %.loopexit72.loopexit, label %.preheader71, !llvm.loop !76

.loopexit72.loopexit:                             ; preds = %.preheader71
  %600 = and i32 %588, -8
  br label %.loopexit72

.loopexit72:                                      ; preds = %.loopexit72.loopexit, %585
  %601 = phi ptr [ %586, %585 ], [ %597, %.loopexit72.loopexit ]
  %602 = phi ptr [ %587, %585 ], [ %595, %.loopexit72.loopexit ]
  %603 = phi i32 [ %588, %585 ], [ %600, %.loopexit72.loopexit ]
  %604 = icmp ult i32 %589, 7
  br i1 %604, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %.loopexit72, %.preheader
  %605 = phi ptr [ %631, %.preheader ], [ %601, %.loopexit72 ]
  %606 = phi ptr [ %629, %.preheader ], [ %602, %.loopexit72 ]
  %607 = phi i32 [ %632, %.preheader ], [ %603, %.loopexit72 ]
  %608 = getelementptr inbounds nuw i8, ptr %606, i64 1
  %609 = load i8, ptr %606, align 1, !tbaa !36
  %610 = getelementptr inbounds nuw i8, ptr %605, i64 1
  store i8 %609, ptr %605, align 1, !tbaa !36
  %611 = getelementptr inbounds nuw i8, ptr %606, i64 2
  %612 = load i8, ptr %608, align 1, !tbaa !36
  %613 = getelementptr inbounds nuw i8, ptr %605, i64 2
  store i8 %612, ptr %610, align 1, !tbaa !36
  %614 = getelementptr inbounds nuw i8, ptr %606, i64 3
  %615 = load i8, ptr %611, align 1, !tbaa !36
  %616 = getelementptr inbounds nuw i8, ptr %605, i64 3
  store i8 %615, ptr %613, align 1, !tbaa !36
  %617 = getelementptr inbounds nuw i8, ptr %606, i64 4
  %618 = load i8, ptr %614, align 1, !tbaa !36
  %619 = getelementptr inbounds nuw i8, ptr %605, i64 4
  store i8 %618, ptr %616, align 1, !tbaa !36
  %620 = getelementptr inbounds nuw i8, ptr %606, i64 5
  %621 = load i8, ptr %617, align 1, !tbaa !36
  %622 = getelementptr inbounds nuw i8, ptr %605, i64 5
  store i8 %621, ptr %619, align 1, !tbaa !36
  %623 = getelementptr inbounds nuw i8, ptr %606, i64 6
  %624 = load i8, ptr %620, align 1, !tbaa !36
  %625 = getelementptr inbounds nuw i8, ptr %605, i64 6
  store i8 %624, ptr %622, align 1, !tbaa !36
  %626 = getelementptr inbounds nuw i8, ptr %606, i64 7
  %627 = load i8, ptr %623, align 1, !tbaa !36
  %628 = getelementptr inbounds nuw i8, ptr %605, i64 7
  store i8 %627, ptr %625, align 1, !tbaa !36
  %629 = getelementptr inbounds nuw i8, ptr %606, i64 8
  %630 = load i8, ptr %626, align 1, !tbaa !36
  %631 = getelementptr inbounds nuw i8, ptr %605, i64 8
  store i8 %630, ptr %628, align 1, !tbaa !36
  %632 = add i32 %607, -8
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %.loopexit70, label %.preheader, !llvm.loop !77

.loopexit70:                                      ; preds = %.preheader, %.loopexit72, %579, %560
  %634 = load i32, ptr %443, align 8, !tbaa !34
  %635 = load ptr, ptr %449, align 8, !tbaa !29
  br label %636

636:                                              ; preds = %.loopexit70, %536, %532
  %637 = phi ptr [ %635, %.loopexit70 ], [ %534, %536 ], [ %534, %532 ]
  %638 = phi i32 [ %634, %.loopexit70 ], [ %531, %536 ], [ 0, %532 ]
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds nuw i8, ptr %637, i64 %639
  %641 = load i32, ptr %445, align 8, !tbaa !27
  %642 = sub i32 %641, %638
  store i32 0, ptr %450, align 4, !tbaa !17
  %643 = tail call ptr @__errno_location() #16
  store i32 0, ptr %643, align 4, !tbaa !4
  br label %644

644:                                              ; preds = %655, %636
  %645 = phi i32 [ 0, %636 ], [ %656, %655 ]
  %646 = sub i32 %642, %645
  %647 = call i32 @llvm.umin.i32(i32 %646, i32 1073741824)
  %648 = load i32, ptr %451, align 4, !tbaa !46
  %649 = zext i32 %645 to i64
  %650 = getelementptr inbounds nuw i8, ptr %640, i64 %649
  %651 = zext nneg i32 %647 to i64
  %652 = call i64 @read(i32 noundef %648, ptr noundef %650, i64 noundef %651) #13
  %653 = trunc i64 %652 to i32
  %654 = icmp slt i32 %653, 1
  br i1 %654, label %658, label %655

655:                                              ; preds = %644
  %656 = add i32 %645, %653
  %657 = icmp ult i32 %656, %642
  br i1 %657, label %644, label %.loopexit69, !llvm.loop !47

658:                                              ; preds = %644
  %659 = icmp slt i32 %653, 0
  br i1 %659, label %660, label %667

660:                                              ; preds = %658
  %661 = load i32, ptr %643, align 4, !tbaa !4
  %662 = icmp eq i32 %661, 11
  br i1 %662, label %663, label %.loopexit78

663:                                              ; preds = %660
  store i32 1, ptr %450, align 4, !tbaa !17
  %664 = icmp eq i32 %645, 0
  br i1 %664, label %665, label %.loopexit69

665:                                              ; preds = %663
  %666 = load i32, ptr %643, align 4, !tbaa !4
  br label %.loopexit78

667:                                              ; preds = %658
  store i32 1, ptr %442, align 8, !tbaa !24
  br label %.loopexit69

.loopexit78:                                      ; preds = %660, %665
  %668 = phi i32 [ %666, %665 ], [ %661, %660 ]
  %669 = call ptr @strerror(i32 noundef %668) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %669) #13
  br label %.loopexit77

.loopexit69:                                      ; preds = %655, %667, %663
  %670 = phi i32 [ %645, %663 ], [ %645, %667 ], [ %656, %655 ]
  %671 = load i32, ptr %443, align 8, !tbaa !34
  %672 = add i32 %671, %670
  store i32 %672, ptr %443, align 8, !tbaa !34
  %673 = load ptr, ptr %449, align 8, !tbaa !29
  store ptr %673, ptr %448, align 8, !tbaa !35
  br label %674

674:                                              ; preds = %.loopexit69, %528
  %675 = phi i32 [ %672, %.loopexit69 ], [ %531, %528 ]
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %706, label %677

677:                                              ; preds = %674
  %678 = load i32, ptr %450, align 4, !tbaa !17
  %679 = icmp ne i32 %678, 0
  %680 = icmp ult i32 %675, 4
  %681 = and i1 %680, %679
  br i1 %681, label %706, label %682

682:                                              ; preds = %677
  %683 = icmp ugt i32 %675, 3
  %684 = load ptr, ptr %448, align 8, !tbaa !35
  br i1 %683, label %685, label %702

685:                                              ; preds = %682
  %686 = load i8, ptr %684, align 1, !tbaa !36
  %687 = icmp eq i8 %686, 31
  br i1 %687, label %688, label %702

688:                                              ; preds = %685
  %689 = getelementptr inbounds nuw i8, ptr %684, i64 1
  %690 = load i8, ptr %689, align 1, !tbaa !36
  %691 = icmp eq i8 %690, -117
  br i1 %691, label %692, label %702

692:                                              ; preds = %688
  %693 = getelementptr inbounds nuw i8, ptr %684, i64 2
  %694 = load i8, ptr %693, align 1, !tbaa !36
  %695 = icmp eq i8 %694, 8
  br i1 %695, label %696, label %702

696:                                              ; preds = %692
  %697 = getelementptr inbounds nuw i8, ptr %684, i64 3
  %698 = load i8, ptr %697, align 1, !tbaa !36
  %699 = icmp ult i8 %698, 32
  br i1 %699, label %700, label %702

700:                                              ; preds = %696
  %701 = call i32 @inflateReset(ptr noundef nonnull %448) #13
  store i32 2, ptr %444, align 8, !tbaa !26
  store i32 1, ptr %452, align 4, !tbaa !33
  store i32 0, ptr %458, align 8, !tbaa !32
  br label %838

702:                                              ; preds = %696, %692, %688, %685, %682
  %703 = load ptr, ptr %455, align 8, !tbaa !30
  store ptr %703, ptr %441, align 8, !tbaa !20
  %704 = zext i32 %675 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %703, ptr align 1 %684, i64 %704, i1 false)
  %705 = load i32, ptr %443, align 8, !tbaa !34
  store i32 %705, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %443, align 8, !tbaa !34
  store i32 1, ptr %444, align 8, !tbaa !26
  br label %840

706:                                              ; preds = %677, %674, %521
  %707 = load i32, ptr %444, align 8, !tbaa !26
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %.loopexit79, label %838

709:                                              ; preds = %491
  %710 = load ptr, ptr %455, align 8, !tbaa !30
  %711 = load i32, ptr %445, align 8, !tbaa !27
  %712 = shl i32 %711, 1
  store i32 0, ptr %450, align 4, !tbaa !17
  %713 = tail call ptr @__errno_location() #16
  store i32 0, ptr %713, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %714

714:                                              ; preds = %725, %709
  %715 = phi i32 [ %727, %725 ], [ 0, %709 ]
  %716 = sub i32 %712, %715
  %717 = call i32 @llvm.umin.i32(i32 %716, i32 1073741824)
  %718 = load i32, ptr %451, align 4, !tbaa !46
  %719 = zext i32 %715 to i64
  %720 = getelementptr inbounds nuw i8, ptr %710, i64 %719
  %721 = zext nneg i32 %717 to i64
  %722 = call i64 @read(i32 noundef %718, ptr noundef %720, i64 noundef %721) #13
  %723 = trunc i64 %722 to i32
  %724 = icmp slt i32 %723, 1
  br i1 %724, label %729, label %725

725:                                              ; preds = %714
  %726 = load i32, ptr %0, align 4, !tbaa !4
  %727 = add i32 %726, %723
  store i32 %727, ptr %0, align 4, !tbaa !4
  %728 = icmp ult i32 %727, %712
  br i1 %728, label %714, label %.loopexit76, !llvm.loop !47

729:                                              ; preds = %714
  %730 = icmp slt i32 %723, 0
  br i1 %730, label %731, label %739

731:                                              ; preds = %729
  %732 = load i32, ptr %713, align 4, !tbaa !4
  %733 = icmp eq i32 %732, 11
  br i1 %733, label %734, label %740

734:                                              ; preds = %731
  store i32 1, ptr %450, align 4, !tbaa !17
  %735 = load i32, ptr %0, align 4, !tbaa !4
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %.loopexit76

737:                                              ; preds = %734
  %738 = load i32, ptr %713, align 4, !tbaa !4
  br label %740

739:                                              ; preds = %729
  store i32 1, ptr %442, align 8, !tbaa !24
  br label %.loopexit76

740:                                              ; preds = %737, %731
  %741 = phi i32 [ %738, %737 ], [ %732, %731 ]
  %742 = call ptr @strerror(i32 noundef %741) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %742) #13
  br label %.loopexit77

.loopexit76:                                      ; preds = %725, %739, %734
  %743 = load ptr, ptr %455, align 8, !tbaa !30
  store ptr %743, ptr %441, align 8, !tbaa !20
  br label %.loopexit79

744:                                              ; preds = %491
  %745 = load i32, ptr %445, align 8, !tbaa !27
  %746 = shl i32 %745, 1
  store i32 %746, ptr %446, align 8, !tbaa !48
  %747 = load ptr, ptr %455, align 8, !tbaa !30
  store ptr %747, ptr %447, align 8, !tbaa !49
  br label %748

748:                                              ; preds = %818, %744
  %749 = phi i32 [ 0, %744 ], [ %798, %818 ]
  %750 = load i32, ptr %443, align 8, !tbaa !34
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %797

752:                                              ; preds = %748
  %753 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %753, label %.loopexit73 [
    i32 0, label %754
    i32 -5, label %754
  ]

754:                                              ; preds = %752, %752
  %755 = load i32, ptr %442, align 8, !tbaa !24
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %793

757:                                              ; preds = %754
  %758 = load ptr, ptr %449, align 8, !tbaa !29
  %759 = load i32, ptr %445, align 8, !tbaa !27
  store i32 0, ptr %450, align 4, !tbaa !17
  %760 = tail call ptr @__errno_location() #16
  store i32 0, ptr %760, align 4, !tbaa !4
  br label %761

761:                                              ; preds = %772, %757
  %762 = phi i32 [ 0, %757 ], [ %773, %772 ]
  %763 = sub i32 %759, %762
  %764 = call i32 @llvm.umin.i32(i32 %763, i32 1073741824)
  %765 = load i32, ptr %451, align 4, !tbaa !46
  %766 = zext i32 %762 to i64
  %767 = getelementptr inbounds nuw i8, ptr %758, i64 %766
  %768 = zext nneg i32 %764 to i64
  %769 = call i64 @read(i32 noundef %765, ptr noundef %767, i64 noundef %768) #13
  %770 = trunc i64 %769 to i32
  %771 = icmp slt i32 %770, 1
  br i1 %771, label %775, label %772

772:                                              ; preds = %761
  %773 = add i32 %762, %770
  %774 = icmp ult i32 %773, %759
  br i1 %774, label %761, label %.loopexit, !llvm.loop !47

775:                                              ; preds = %761
  %776 = icmp slt i32 %770, 0
  br i1 %776, label %777, label %784

777:                                              ; preds = %775
  %778 = load i32, ptr %760, align 4, !tbaa !4
  %779 = icmp eq i32 %778, 11
  br i1 %779, label %780, label %.loopexit74

780:                                              ; preds = %777
  store i32 1, ptr %450, align 4, !tbaa !17
  %781 = icmp eq i32 %762, 0
  br i1 %781, label %782, label %.loopexit

782:                                              ; preds = %780
  %783 = load i32, ptr %760, align 4, !tbaa !4
  br label %.loopexit74

784:                                              ; preds = %775
  store i32 1, ptr %442, align 8, !tbaa !24
  br label %.loopexit

.loopexit74:                                      ; preds = %777, %782
  %785 = phi i32 [ %783, %782 ], [ %778, %777 ]
  %786 = call ptr @strerror(i32 noundef %785) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %786) #13
  %787 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit73

.loopexit:                                        ; preds = %772, %784, %780
  %788 = phi i32 [ %762, %780 ], [ %762, %784 ], [ %773, %772 ]
  %789 = load i32, ptr %443, align 8, !tbaa !34
  %790 = add i32 %789, %788
  store i32 %790, ptr %443, align 8, !tbaa !34
  %791 = load ptr, ptr %449, align 8, !tbaa !29
  store ptr %791, ptr %448, align 8, !tbaa !35
  %792 = icmp eq i32 %790, 0
  br i1 %792, label %793, label %797

793:                                              ; preds = %.loopexit, %754
  %794 = load i32, ptr %450, align 4, !tbaa !17
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %796, label %.loopexit73

796:                                              ; preds = %793
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit73

797:                                              ; preds = %.loopexit, %748
  %798 = call i32 @inflate(ptr noundef nonnull %448, i32 noundef 0) #13
  %799 = load i32, ptr %446, align 8, !tbaa !48
  %800 = icmp ult i32 %799, %746
  br i1 %800, label %801, label %802

801:                                              ; preds = %797
  store i32 0, ptr %452, align 4, !tbaa !33
  br label %802

802:                                              ; preds = %801, %797
  switch i32 %798, label %818 [
    i32 -2, label %803
    i32 2, label %803
    i32 -4, label %804
    i32 -3, label %805
  ]

803:                                              ; preds = %802, %802
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit73

804:                                              ; preds = %802
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %822

805:                                              ; preds = %802
  %806 = load i32, ptr %452, align 4, !tbaa !33
  %807 = icmp eq i32 %806, 1
  br i1 %807, label %808, label %814

808:                                              ; preds = %805
  store i32 0, ptr %443, align 8, !tbaa !34
  store i32 1, ptr %442, align 8, !tbaa !24
  store i32 0, ptr %444, align 8, !tbaa !26
  %809 = sub i32 %746, %799
  store i32 %809, ptr %0, align 8, !tbaa !19
  %810 = load ptr, ptr %447, align 8, !tbaa !49
  %811 = zext i32 %809 to i64
  %812 = sub nsw i64 0, %811
  %813 = getelementptr inbounds i8, ptr %810, i64 %812
  store ptr %813, ptr %441, align 8, !tbaa !20
  br label %838

814:                                              ; preds = %805
  %815 = load ptr, ptr %453, align 8, !tbaa !50
  %816 = icmp eq ptr %815, null
  %817 = select i1 %816, ptr @.str.6, ptr %815
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %817) #13
  br label %822

818:                                              ; preds = %802
  %819 = icmp ne i32 %799, 0
  %820 = icmp ne i32 %798, 1
  %821 = select i1 %819, i1 %820, i1 false
  br i1 %821, label %748, label %.loopexit73, !llvm.loop !51

822:                                              ; preds = %814, %804
  %823 = load i32, ptr %446, align 8, !tbaa !48
  %824 = sub i32 %746, %823
  store i32 %824, ptr %0, align 8, !tbaa !19
  %825 = load ptr, ptr %447, align 8, !tbaa !49
  %826 = zext i32 %824 to i64
  %827 = sub nsw i64 0, %826
  %828 = getelementptr inbounds i8, ptr %825, i64 %827
  store ptr %828, ptr %441, align 8, !tbaa !20
  br label %.loopexit77

.loopexit73:                                      ; preds = %818, %752, %803, %796, %793, %.loopexit74
  %829 = phi i32 [ %787, %.loopexit74 ], [ %749, %793 ], [ %749, %796 ], [ %798, %803 ], [ %798, %818 ], [ %753, %752 ]
  %830 = load i32, ptr %446, align 8, !tbaa !48
  %831 = sub i32 %746, %830
  store i32 %831, ptr %0, align 8, !tbaa !19
  %832 = load ptr, ptr %447, align 8, !tbaa !49
  %833 = zext i32 %831 to i64
  %834 = sub nsw i64 0, %833
  %835 = getelementptr inbounds i8, ptr %832, i64 %834
  store ptr %835, ptr %441, align 8, !tbaa !20
  switch i32 %829, label %.loopexit77 [
    i32 1, label %836
    i32 0, label %838
  ]

836:                                              ; preds = %.loopexit73
  store i32 0, ptr %452, align 4, !tbaa !33
  store i32 0, ptr %444, align 8, !tbaa !26
  br label %838

837:                                              ; preds = %491
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit77

838:                                              ; preds = %836, %.loopexit73, %808, %706, %700
  %839 = load i32, ptr %0, align 8, !tbaa !19
  br label %840

840:                                              ; preds = %838, %702
  %841 = phi i32 [ %839, %838 ], [ %705, %702 ]
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %.loopexit79

843:                                              ; preds = %840
  %844 = load i32, ptr %442, align 8, !tbaa !24
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %849, label %846

846:                                              ; preds = %843
  %847 = load i32, ptr %443, align 8, !tbaa !34
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %.loopexit79, label %849

849:                                              ; preds = %846, %843
  %850 = load i32, ptr %444, align 8, !tbaa !26
  br label %491, !llvm.loop !52

.loopexit77:                                      ; preds = %.loopexit73, %526, %837, %822, %740, %.loopexit78, %512, %507
  %851 = load i32, ptr %0, align 8, !tbaa !19
  %852 = icmp eq i32 %851, 0
  %853 = sext i1 %852 to i32
  br label %.loopexit79

854:                                              ; preds = %487
  %855 = icmp eq i32 %485, 1
  br i1 %855, label %856, label %885

856:                                              ; preds = %854
  store i32 0, ptr %450, align 4, !tbaa !17
  %857 = tail call ptr @__errno_location() #16
  store i32 0, ptr %857, align 4, !tbaa !4
  br label %858

858:                                              ; preds = %869, %856
  %859 = phi i32 [ 0, %856 ], [ %870, %869 ]
  %860 = sub i32 %464, %859
  %861 = call i32 @llvm.umin.i32(i32 %860, i32 1073741824)
  %862 = load i32, ptr %451, align 4, !tbaa !46
  %863 = zext i32 %859 to i64
  %864 = getelementptr inbounds nuw i8, ptr %460, i64 %863
  %865 = zext nneg i32 %861 to i64
  %866 = call i64 @read(i32 noundef %862, ptr noundef %864, i64 noundef %865) #13
  %867 = trunc i64 %866 to i32
  %868 = icmp slt i32 %867, 1
  br i1 %868, label %872, label %869

869:                                              ; preds = %858
  %870 = add i32 %859, %867
  %871 = icmp ult i32 %870, %464
  br i1 %871, label %858, label %980, !llvm.loop !47

872:                                              ; preds = %858
  %873 = icmp slt i32 %867, 0
  br i1 %873, label %874, label %884

874:                                              ; preds = %872
  %875 = load i32, ptr %857, align 4, !tbaa !4
  %876 = icmp eq i32 %875, 11
  br i1 %876, label %877, label %881

877:                                              ; preds = %874
  store i32 1, ptr %450, align 4, !tbaa !17
  %878 = icmp eq i32 %859, 0
  br i1 %878, label %879, label %982

879:                                              ; preds = %877
  %880 = load i32, ptr %857, align 4, !tbaa !4
  br label %881

881:                                              ; preds = %879, %874
  %882 = phi i32 [ %880, %879 ], [ %875, %874 ]
  %883 = call ptr @strerror(i32 noundef %882) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %883) #13
  br label %982

884:                                              ; preds = %872
  store i32 1, ptr %442, align 8, !tbaa !24
  br label %982

885:                                              ; preds = %854
  store i32 %464, ptr %446, align 8, !tbaa !58
  store ptr %460, ptr %447, align 8, !tbaa !59
  br label %886

886:                                              ; preds = %951, %885
  %887 = phi i32 [ 0, %885 ], [ %936, %951 ]
  %888 = load i32, ptr %443, align 8, !tbaa !34
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %935

890:                                              ; preds = %886
  %891 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %891, label %.loopexit80 [
    i32 0, label %892
    i32 -5, label %892
  ]

892:                                              ; preds = %890, %890
  %893 = load i32, ptr %442, align 8, !tbaa !24
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %895, label %931

895:                                              ; preds = %892
  %896 = load ptr, ptr %449, align 8, !tbaa !29
  %897 = load i32, ptr %445, align 8, !tbaa !27
  store i32 0, ptr %450, align 4, !tbaa !17
  %898 = tail call ptr @__errno_location() #16
  store i32 0, ptr %898, align 4, !tbaa !4
  br label %899

899:                                              ; preds = %910, %895
  %900 = phi i32 [ 0, %895 ], [ %911, %910 ]
  %901 = sub i32 %897, %900
  %902 = call i32 @llvm.umin.i32(i32 %901, i32 1073741824)
  %903 = load i32, ptr %451, align 4, !tbaa !46
  %904 = zext i32 %900 to i64
  %905 = getelementptr inbounds nuw i8, ptr %896, i64 %904
  %906 = zext nneg i32 %902 to i64
  %907 = call i64 @read(i32 noundef %903, ptr noundef %905, i64 noundef %906) #13
  %908 = trunc i64 %907 to i32
  %909 = icmp slt i32 %908, 1
  br i1 %909, label %913, label %910

910:                                              ; preds = %899
  %911 = add i32 %900, %908
  %912 = icmp ult i32 %911, %897
  br i1 %912, label %899, label %.loopexit75, !llvm.loop !47

913:                                              ; preds = %899
  %914 = icmp slt i32 %908, 0
  br i1 %914, label %915, label %922

915:                                              ; preds = %913
  %916 = load i32, ptr %898, align 4, !tbaa !4
  %917 = icmp eq i32 %916, 11
  br i1 %917, label %918, label %.loopexit82

918:                                              ; preds = %915
  store i32 1, ptr %450, align 4, !tbaa !17
  %919 = icmp eq i32 %900, 0
  br i1 %919, label %920, label %.loopexit75

920:                                              ; preds = %918
  %921 = load i32, ptr %898, align 4, !tbaa !4
  br label %.loopexit82

922:                                              ; preds = %913
  store i32 1, ptr %442, align 8, !tbaa !24
  br label %.loopexit75

.loopexit82:                                      ; preds = %915, %920
  %923 = phi i32 [ %921, %920 ], [ %916, %915 ]
  %924 = call ptr @strerror(i32 noundef %923) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %924) #13
  %925 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit80

.loopexit75:                                      ; preds = %910, %922, %918
  %926 = phi i32 [ %900, %918 ], [ %900, %922 ], [ %911, %910 ]
  %927 = load i32, ptr %443, align 8, !tbaa !34
  %928 = add i32 %927, %926
  store i32 %928, ptr %443, align 8, !tbaa !34
  %929 = load ptr, ptr %449, align 8, !tbaa !29
  store ptr %929, ptr %448, align 8, !tbaa !35
  %930 = icmp eq i32 %928, 0
  br i1 %930, label %931, label %935

931:                                              ; preds = %.loopexit75, %892
  %932 = load i32, ptr %450, align 4, !tbaa !17
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %934, label %.loopexit80

934:                                              ; preds = %931
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit80

935:                                              ; preds = %.loopexit75, %886
  %936 = call i32 @inflate(ptr noundef nonnull %448, i32 noundef 0) #13
  %937 = load i32, ptr %446, align 8, !tbaa !48
  %938 = icmp ult i32 %937, %464
  br i1 %938, label %939, label %940

939:                                              ; preds = %935
  store i32 0, ptr %452, align 4, !tbaa !33
  br label %940

940:                                              ; preds = %939, %935
  switch i32 %936, label %951 [
    i32 -2, label %941
    i32 2, label %941
    i32 -4, label %942
    i32 -3, label %943
  ]

941:                                              ; preds = %940, %940
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit80

942:                                              ; preds = %940
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %955

943:                                              ; preds = %940
  %944 = load i32, ptr %452, align 4, !tbaa !33
  %945 = icmp eq i32 %944, 1
  br i1 %945, label %946, label %947

946:                                              ; preds = %943
  store i32 0, ptr %443, align 8, !tbaa !34
  store i32 1, ptr %442, align 8, !tbaa !24
  store i32 0, ptr %444, align 8, !tbaa !26
  br label %955

947:                                              ; preds = %943
  %948 = load ptr, ptr %453, align 8, !tbaa !50
  %949 = icmp eq ptr %948, null
  %950 = select i1 %949, ptr @.str.6, ptr %948
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %950) #13
  br label %955

951:                                              ; preds = %940
  %952 = icmp ne i32 %937, 0
  %953 = icmp ne i32 %936, 1
  %954 = select i1 %952, i1 %953, i1 false
  br i1 %954, label %886, label %.loopexit80, !llvm.loop !51

955:                                              ; preds = %947, %946, %942
  %956 = phi i32 [ -3, %947 ], [ 0, %946 ], [ -4, %942 ]
  %957 = load i32, ptr %446, align 8, !tbaa !48
  %958 = sub i32 %464, %957
  %959 = load ptr, ptr %447, align 8, !tbaa !49
  %960 = zext i32 %958 to i64
  %961 = sub nsw i64 0, %960
  %962 = getelementptr inbounds i8, ptr %959, i64 %961
  store ptr %962, ptr %441, align 8, !tbaa !20
  br label %972

.loopexit80:                                      ; preds = %951, %890, %941, %934, %931, %.loopexit82
  %963 = phi i32 [ %925, %.loopexit82 ], [ %887, %931 ], [ %887, %934 ], [ %936, %941 ], [ %936, %951 ], [ %891, %890 ]
  %964 = load i32, ptr %446, align 8, !tbaa !48
  %965 = sub i32 %464, %964
  %966 = load ptr, ptr %447, align 8, !tbaa !49
  %967 = zext i32 %965 to i64
  %968 = sub nsw i64 0, %967
  %969 = getelementptr inbounds i8, ptr %966, i64 %968
  store ptr %969, ptr %441, align 8, !tbaa !20
  %970 = icmp eq i32 %963, 1
  br i1 %970, label %971, label %972

971:                                              ; preds = %.loopexit80
  store i32 0, ptr %452, align 4, !tbaa !33
  store i32 0, ptr %444, align 8, !tbaa !26
  br label %977

972:                                              ; preds = %.loopexit80, %955
  %973 = phi i64 [ %960, %955 ], [ %967, %.loopexit80 ]
  %974 = phi i32 [ %956, %955 ], [ %963, %.loopexit80 ]
  %975 = icmp ne i32 %974, 0
  %976 = sext i1 %975 to i32
  br label %977

977:                                              ; preds = %972, %971
  %978 = phi i64 [ %967, %971 ], [ %973, %972 ]
  %979 = phi i32 [ 0, %971 ], [ %976, %972 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %982

980:                                              ; preds = %869
  %981 = zext i32 %870 to i64
  br label %982

982:                                              ; preds = %980, %977, %884, %881, %877, %467
  %983 = phi i64 [ %981, %980 ], [ %863, %884 ], [ %863, %881 ], [ %863, %877 ], [ %470, %467 ], [ %978, %977 ]
  %984 = phi i32 [ 0, %980 ], [ 0, %884 ], [ -1, %881 ], [ 0, %877 ], [ %477, %467 ], [ %979, %977 ]
  %985 = load i64, ptr %454, align 8, !tbaa !21
  %986 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %985, i64 %983), !nosanitize !22
  %987 = extractvalue { i64, i1 } %986, 1, !nosanitize !22
  br i1 %987, label %988, label %989, !prof !23, !nosanitize !22

988:                                              ; preds = %982
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

989:                                              ; preds = %982
  %990 = extractvalue { i64, i1 } %986, 0, !nosanitize !22
  %991 = add i64 %983, %462
  %992 = getelementptr inbounds nuw i8, ptr %460, i64 %983
  %993 = sub i64 %461, %983
  store i64 %990, ptr %454, align 8, !tbaa !21
  %994 = icmp eq i64 %993, 0
  br i1 %994, label %.loopexit84, label %.loopexit79

.loopexit79:                                      ; preds = %846, %840, %706, %989, %.loopexit77, %.loopexit76
  %995 = phi i32 [ %984, %989 ], [ %853, %.loopexit77 ], [ 0, %.loopexit76 ], [ 0, %706 ], [ 0, %840 ], [ 0, %846 ]
  %996 = phi i64 [ %991, %989 ], [ %462, %.loopexit77 ], [ %462, %.loopexit76 ], [ %462, %706 ], [ %462, %840 ], [ %462, %846 ]
  %997 = phi i64 [ %993, %989 ], [ %461, %.loopexit77 ], [ %461, %.loopexit76 ], [ %461, %706 ], [ %461, %840 ], [ %461, %846 ]
  %998 = phi ptr [ %992, %989 ], [ %460, %.loopexit77 ], [ %460, %.loopexit76 ], [ %460, %706 ], [ %460, %840 ], [ %460, %846 ]
  %999 = icmp eq i32 %995, 0
  br i1 %999, label %459, label %1000, !llvm.loop !60

1000:                                             ; preds = %.loopexit79
  %1001 = load i32, ptr %442, align 8, !tbaa !24
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %.loopexit84, label %.loopexit83

.loopexit83:                                      ; preds = %481, %1000
  %1003 = phi i64 [ %996, %1000 ], [ %462, %481 ]
  %1004 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1004, align 4, !tbaa !61
  br label %.loopexit84

.loopexit84:                                      ; preds = %989, %.loopexit83, %1000
  %1005 = phi i64 [ %996, %1000 ], [ %1003, %.loopexit83 ], [ %991, %989 ]
  %1006 = freeze i64 %1005
  %1007 = icmp eq i64 %1006, 0
  %1008 = load i8, ptr %2, align 1
  %1009 = zext i8 %1008 to i32
  br i1 %1007, label %.loopexit95, label %1010

.loopexit95:                                      ; preds = %.loopexit91, %114, %.loopexit84, %425, %410, %.loopexit99, %.loopexit96, %100, %95
  br label %1010

1010:                                             ; preds = %.loopexit95, %.loopexit84, %25, %11, %4, %1
  %1011 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %.loopexit95 ], [ %1009, %.loopexit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1011
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1010, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1010

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
  br i1 %14, label %1010, label %15

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
  br label %1010

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %.loopexit98, label %36

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

54:                                               ; preds = %438, %36
  %55 = phi i64 [ %439, %438 ], [ %34, %36 ]
  %56 = load i32, ptr %0, align 8, !tbaa !19
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %73, label %58

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
  %72 = sub i64 %55, %64
  store i64 %72, ptr %33, align 8, !tbaa !18
  br label %438

73:                                               ; preds = %54
  %74 = load i32, ptr %39, align 8, !tbaa !24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %.preheader725, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %40, align 8, !tbaa !25
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %.loopexit98, label %.preheader725

.preheader725:                                    ; preds = %76, %73
  br label %79

79:                                               ; preds = %.backedge, %.preheader725
  %80 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %80, label %425 [
    i32 0, label %81
    i32 1, label %297
    i32 2, label %331
  ]

81:                                               ; preds = %79
  %82 = load i32, ptr %42, align 8, !tbaa !27
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load i32, ptr %51, align 4, !tbaa !28
  %86 = zext i32 %85 to i64
  %87 = tail call noalias ptr @malloc(i64 noundef %86) #15
  store ptr %87, ptr %47, align 8, !tbaa !29
  %88 = load i32, ptr %51, align 4, !tbaa !28
  %89 = shl i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = tail call noalias ptr @malloc(i64 noundef %90) #15
  store ptr %91, ptr %44, align 8, !tbaa !30
  %92 = icmp eq ptr %87, null
  %93 = icmp eq ptr %91, null
  %94 = or i1 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  tail call void @free(ptr noundef %91) #13
  tail call void @free(ptr noundef %87) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit95

96:                                               ; preds = %84
  %97 = load i32, ptr %51, align 4, !tbaa !28
  store i32 %97, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %98 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %101) #13
  %102 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %102) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit95

103:                                              ; preds = %96, %81
  %104 = load i32, ptr %53, align 8, !tbaa !32
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr %50, align 4, !tbaa !33
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106, %103
  %110 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %111 = load i32, ptr %50, align 4, !tbaa !33
  %112 = icmp ne i32 %111, -1
  %113 = zext i1 %112 to i32
  store i32 %113, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %294

114:                                              ; preds = %106
  %115 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %115, label %.loopexit95 [
    i32 0, label %116
    i32 -5, label %116
  ]

116:                                              ; preds = %114, %114
  %117 = load i32, ptr %39, align 8, !tbaa !24
  %118 = icmp eq i32 %117, 0
  %119 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %118, label %120, label %262

120:                                              ; preds = %116
  %121 = icmp eq i32 %119, 0
  %122 = load ptr, ptr %47, align 8, !tbaa !29
  %123 = ptrtoaddr ptr %122 to i64
  br i1 %121, label %224, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %46, align 8, !tbaa !35
  %126 = icmp eq ptr %125, %122
  br i1 %126, label %224, label %127

127:                                              ; preds = %124
  %128 = ptrtoaddr ptr %125 to i64
  %129 = zext i32 %119 to i64
  %130 = icmp ult i32 %119, 4
  %131 = sub i64 %123, %128
  %132 = icmp ult i64 %131, 32
  %133 = select i1 %130, i1 true, i1 %132
  br i1 %133, label %173, label %134

134:                                              ; preds = %127
  %135 = icmp ult i32 %119, 32
  br i1 %135, label %157, label %136

136:                                              ; preds = %134
  %137 = and i64 %129, 4294967264
  br label %138

138:                                              ; preds = %138, %136
  %139 = phi i64 [ 0, %136 ], [ %146, %138 ]
  %140 = getelementptr i8, ptr %122, i64 %139
  %141 = getelementptr i8, ptr %125, i64 %139
  %142 = getelementptr i8, ptr %141, i64 16
  %143 = load <16 x i8>, ptr %141, align 1, !tbaa !36
  %144 = load <16 x i8>, ptr %142, align 1, !tbaa !36
  %145 = getelementptr i8, ptr %140, i64 16
  store <16 x i8> %143, ptr %140, align 1, !tbaa !36
  store <16 x i8> %144, ptr %145, align 1, !tbaa !36
  %146 = add nuw nsw i64 %139, 32
  %147 = icmp eq i64 %146, %137
  br i1 %147, label %148, label %138, !llvm.loop !78

148:                                              ; preds = %138
  %149 = icmp eq i64 %137, %129
  br i1 %149, label %.loopexit88, label %150

150:                                              ; preds = %148
  %151 = trunc nuw i64 %137 to i32
  %152 = sub i32 %119, %151
  %153 = getelementptr i8, ptr %125, i64 %137
  %154 = getelementptr i8, ptr %122, i64 %137
  %155 = and i64 %129, 28
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %173, label %157, !prof !41

157:                                              ; preds = %150, %134
  %158 = phi i64 [ %137, %150 ], [ 0, %134 ]
  %159 = and i64 %129, 4294967292
  br label %160

160:                                              ; preds = %160, %157
  %161 = phi i64 [ %158, %157 ], [ %165, %160 ]
  %162 = getelementptr i8, ptr %122, i64 %161
  %163 = getelementptr i8, ptr %125, i64 %161
  %164 = load <4 x i8>, ptr %163, align 1, !tbaa !36
  store <4 x i8> %164, ptr %162, align 1, !tbaa !36
  %165 = add nuw i64 %161, 4
  %166 = icmp eq i64 %165, %159
  br i1 %166, label %167, label %160, !llvm.loop !79

167:                                              ; preds = %160
  %168 = getelementptr i8, ptr %122, i64 %159
  %169 = getelementptr i8, ptr %125, i64 %159
  %170 = trunc nuw i64 %159 to i32
  %171 = sub i32 %119, %170
  %172 = icmp eq i64 %159, %129
  br i1 %172, label %.loopexit88, label %173

173:                                              ; preds = %167, %150, %127
  %174 = phi ptr [ %122, %127 ], [ %154, %150 ], [ %168, %167 ]
  %175 = phi ptr [ %125, %127 ], [ %153, %150 ], [ %169, %167 ]
  %176 = phi i32 [ %119, %127 ], [ %152, %150 ], [ %171, %167 ]
  %177 = add i32 %176, -1
  %178 = and i32 %176, 7
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %.loopexit90, label %.preheader89

.preheader89:                                     ; preds = %173, %.preheader89
  %180 = phi ptr [ %185, %.preheader89 ], [ %174, %173 ]
  %181 = phi ptr [ %183, %.preheader89 ], [ %175, %173 ]
  %182 = phi i32 [ %186, %.preheader89 ], [ 0, %173 ]
  %183 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %184 = load i8, ptr %181, align 1, !tbaa !36
  %185 = getelementptr inbounds nuw i8, ptr %180, i64 1
  store i8 %184, ptr %180, align 1, !tbaa !36
  %186 = add nuw nsw i32 %182, 1
  %187 = icmp eq i32 %186, %178
  br i1 %187, label %.loopexit90.loopexit, label %.preheader89, !llvm.loop !80

.loopexit90.loopexit:                             ; preds = %.preheader89
  %188 = and i32 %176, -8
  br label %.loopexit90

.loopexit90:                                      ; preds = %.loopexit90.loopexit, %173
  %189 = phi ptr [ %174, %173 ], [ %185, %.loopexit90.loopexit ]
  %190 = phi ptr [ %175, %173 ], [ %183, %.loopexit90.loopexit ]
  %191 = phi i32 [ %176, %173 ], [ %188, %.loopexit90.loopexit ]
  %192 = icmp ult i32 %177, 7
  br i1 %192, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %.loopexit90, %.preheader87
  %193 = phi ptr [ %219, %.preheader87 ], [ %189, %.loopexit90 ]
  %194 = phi ptr [ %217, %.preheader87 ], [ %190, %.loopexit90 ]
  %195 = phi i32 [ %220, %.preheader87 ], [ %191, %.loopexit90 ]
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
  br i1 %221, label %.loopexit88, label %.preheader87, !llvm.loop !81

.loopexit88:                                      ; preds = %.preheader87, %.loopexit90, %167, %148
  %222 = load i32, ptr %40, align 8, !tbaa !34
  %223 = load ptr, ptr %47, align 8, !tbaa !29
  br label %224

224:                                              ; preds = %.loopexit88, %124, %120
  %225 = phi ptr [ %223, %.loopexit88 ], [ %122, %124 ], [ %122, %120 ]
  %226 = phi i32 [ %222, %.loopexit88 ], [ %119, %124 ], [ 0, %120 ]
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds nuw i8, ptr %225, i64 %227
  %229 = load i32, ptr %42, align 8, !tbaa !27
  %230 = sub i32 %229, %226
  store i32 0, ptr %48, align 4, !tbaa !17
  %231 = tail call ptr @__errno_location() #16
  store i32 0, ptr %231, align 4, !tbaa !4
  br label %232

232:                                              ; preds = %243, %224
  %233 = phi i32 [ 0, %224 ], [ %244, %243 ]
  %234 = sub i32 %230, %233
  %235 = tail call i32 @llvm.umin.i32(i32 %234, i32 1073741824)
  %236 = load i32, ptr %49, align 4, !tbaa !46
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
  br i1 %245, label %232, label %.loopexit86, !llvm.loop !47

246:                                              ; preds = %232
  %247 = icmp slt i32 %241, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %246
  %249 = load i32, ptr %231, align 4, !tbaa !4
  %250 = icmp eq i32 %249, 11
  br i1 %250, label %251, label %.loopexit96

251:                                              ; preds = %248
  store i32 1, ptr %48, align 4, !tbaa !17
  %252 = icmp eq i32 %233, 0
  br i1 %252, label %253, label %.loopexit86

253:                                              ; preds = %251
  %254 = load i32, ptr %231, align 4, !tbaa !4
  br label %.loopexit96

255:                                              ; preds = %246
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit86

.loopexit96:                                      ; preds = %248, %253
  %256 = phi i32 [ %254, %253 ], [ %249, %248 ]
  %257 = tail call ptr @strerror(i32 noundef %256) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %257) #13
  br label %.loopexit95

.loopexit86:                                      ; preds = %243, %255, %251
  %258 = phi i32 [ %233, %251 ], [ %233, %255 ], [ %244, %243 ]
  %259 = load i32, ptr %40, align 8, !tbaa !34
  %260 = add i32 %259, %258
  store i32 %260, ptr %40, align 8, !tbaa !34
  %261 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %261, ptr %46, align 8, !tbaa !35
  br label %262

262:                                              ; preds = %.loopexit86, %116
  %263 = phi i32 [ %260, %.loopexit86 ], [ %119, %116 ]
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %294, label %265

265:                                              ; preds = %262
  %266 = load i32, ptr %48, align 4, !tbaa !17
  %267 = icmp ne i32 %266, 0
  %268 = icmp ult i32 %263, 4
  %269 = and i1 %268, %267
  br i1 %269, label %294, label %270

270:                                              ; preds = %265
  %271 = icmp ugt i32 %263, 3
  %272 = load ptr, ptr %46, align 8, !tbaa !35
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
  %289 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %426

290:                                              ; preds = %284, %280, %276, %273, %270
  %291 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %291, ptr %37, align 8, !tbaa !20
  %292 = zext i32 %263 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %291, ptr align 1 %272, i64 %292, i1 false)
  %293 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %293, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %428

294:                                              ; preds = %265, %262, %109
  %295 = load i32, ptr %41, align 8, !tbaa !26
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %.loopexit97, label %426

297:                                              ; preds = %79
  %298 = load ptr, ptr %44, align 8, !tbaa !30
  %299 = load i32, ptr %42, align 8, !tbaa !27
  %300 = shl i32 %299, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %301 = tail call ptr @__errno_location() #16
  store i32 0, ptr %301, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %302

302:                                              ; preds = %313, %297
  %303 = phi i32 [ %315, %313 ], [ 0, %297 ]
  %304 = sub i32 %300, %303
  %305 = tail call i32 @llvm.umin.i32(i32 %304, i32 1073741824)
  %306 = load i32, ptr %49, align 4, !tbaa !46
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
  br i1 %316, label %302, label %.loopexit94, !llvm.loop !47

317:                                              ; preds = %302
  %318 = icmp slt i32 %311, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %317
  %320 = load i32, ptr %301, align 4, !tbaa !4
  %321 = icmp eq i32 %320, 11
  br i1 %321, label %322, label %.loopexit99

322:                                              ; preds = %319
  store i32 1, ptr %48, align 4, !tbaa !17
  %323 = load i32, ptr %0, align 4, !tbaa !4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %.loopexit94

325:                                              ; preds = %322
  %326 = load i32, ptr %301, align 4, !tbaa !4
  br label %.loopexit99

327:                                              ; preds = %317
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit94

.loopexit99:                                      ; preds = %319, %325
  %328 = phi i32 [ %326, %325 ], [ %320, %319 ]
  %329 = tail call ptr @strerror(i32 noundef %328) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %329) #13
  br label %.loopexit95

.loopexit94:                                      ; preds = %313, %327, %322
  %330 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %330, ptr %37, align 8, !tbaa !20
  br label %.loopexit97

331:                                              ; preds = %79
  %332 = load i32, ptr %42, align 8, !tbaa !27
  %333 = shl i32 %332, 1
  store i32 %333, ptr %43, align 8, !tbaa !48
  %334 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %334, ptr %45, align 8, !tbaa !49
  br label %335

335:                                              ; preds = %406, %331
  %336 = phi i32 [ 0, %331 ], [ %385, %406 ]
  %337 = load i32, ptr %40, align 8, !tbaa !34
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %384

339:                                              ; preds = %335
  %340 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %340, label %.loopexit91 [
    i32 0, label %341
    i32 -5, label %341
  ]

341:                                              ; preds = %339, %339
  %342 = load i32, ptr %39, align 8, !tbaa !24
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %380

344:                                              ; preds = %341
  %345 = load ptr, ptr %47, align 8, !tbaa !29
  %346 = load i32, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %48, align 4, !tbaa !17
  %347 = tail call ptr @__errno_location() #16
  store i32 0, ptr %347, align 4, !tbaa !4
  br label %348

348:                                              ; preds = %359, %344
  %349 = phi i32 [ 0, %344 ], [ %360, %359 ]
  %350 = sub i32 %346, %349
  %351 = tail call i32 @llvm.umin.i32(i32 %350, i32 1073741824)
  %352 = load i32, ptr %49, align 4, !tbaa !46
  %353 = zext i32 %349 to i64
  %354 = getelementptr inbounds nuw i8, ptr %345, i64 %353
  %355 = zext nneg i32 %351 to i64
  %356 = tail call i64 @read(i32 noundef %352, ptr noundef %354, i64 noundef %355) #13
  %357 = trunc i64 %356 to i32
  %358 = icmp slt i32 %357, 1
  br i1 %358, label %362, label %359

359:                                              ; preds = %348
  %360 = add i32 %349, %357
  %361 = icmp ult i32 %360, %346
  br i1 %361, label %348, label %.loopexit85, !llvm.loop !47

362:                                              ; preds = %348
  %363 = icmp slt i32 %357, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %362
  %365 = load i32, ptr %347, align 4, !tbaa !4
  %366 = icmp eq i32 %365, 11
  br i1 %366, label %367, label %.loopexit93

367:                                              ; preds = %364
  store i32 1, ptr %48, align 4, !tbaa !17
  %368 = icmp eq i32 %349, 0
  br i1 %368, label %369, label %.loopexit85

369:                                              ; preds = %367
  %370 = load i32, ptr %347, align 4, !tbaa !4
  br label %.loopexit93

371:                                              ; preds = %362
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit85

.loopexit93:                                      ; preds = %364, %369
  %372 = phi i32 [ %370, %369 ], [ %365, %364 ]
  %373 = tail call ptr @strerror(i32 noundef %372) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %373) #13
  %374 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit91

.loopexit85:                                      ; preds = %359, %371, %367
  %375 = phi i32 [ %349, %367 ], [ %349, %371 ], [ %360, %359 ]
  %376 = load i32, ptr %40, align 8, !tbaa !34
  %377 = add i32 %376, %375
  store i32 %377, ptr %40, align 8, !tbaa !34
  %378 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %378, ptr %46, align 8, !tbaa !35
  %379 = icmp eq i32 %377, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %.loopexit85, %341
  %381 = load i32, ptr %48, align 4, !tbaa !17
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %.loopexit91

383:                                              ; preds = %380
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit91

384:                                              ; preds = %.loopexit85, %335
  %385 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %386 = load i32, ptr %43, align 8, !tbaa !48
  %387 = icmp ult i32 %386, %333
  br i1 %387, label %388, label %389

388:                                              ; preds = %384
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %389

389:                                              ; preds = %388, %384
  switch i32 %385, label %406 [
    i32 -2, label %390
    i32 2, label %390
    i32 -4, label %391
    i32 -3, label %392
  ]

390:                                              ; preds = %389, %389
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit91

391:                                              ; preds = %389
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %410

392:                                              ; preds = %389
  %393 = load i32, ptr %50, align 4, !tbaa !33
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %395, label %401

395:                                              ; preds = %392
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  %396 = sub i32 %333, %386
  store i32 %396, ptr %0, align 8, !tbaa !19
  %397 = load ptr, ptr %45, align 8, !tbaa !49
  %398 = zext i32 %396 to i64
  %399 = sub nsw i64 0, %398
  %400 = getelementptr inbounds i8, ptr %397, i64 %399
  store ptr %400, ptr %37, align 8, !tbaa !20
  br label %426

401:                                              ; preds = %392
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %403 = load ptr, ptr %402, align 8, !tbaa !50
  %404 = icmp eq ptr %403, null
  %405 = select i1 %404, ptr @.str.6, ptr %403
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %405) #13
  br label %410

406:                                              ; preds = %389
  %407 = icmp ne i32 %386, 0
  %408 = icmp ne i32 %385, 1
  %409 = select i1 %407, i1 %408, i1 false
  br i1 %409, label %335, label %.loopexit91, !llvm.loop !51

410:                                              ; preds = %401, %391
  %411 = load i32, ptr %43, align 8, !tbaa !48
  %412 = sub i32 %333, %411
  store i32 %412, ptr %0, align 8, !tbaa !19
  %413 = load ptr, ptr %45, align 8, !tbaa !49
  %414 = zext i32 %412 to i64
  %415 = sub nsw i64 0, %414
  %416 = getelementptr inbounds i8, ptr %413, i64 %415
  store ptr %416, ptr %37, align 8, !tbaa !20
  br label %.loopexit95

.loopexit91:                                      ; preds = %406, %339, %390, %383, %380, %.loopexit93
  %417 = phi i32 [ %374, %.loopexit93 ], [ %336, %380 ], [ %336, %383 ], [ %385, %390 ], [ %385, %406 ], [ %340, %339 ]
  %418 = load i32, ptr %43, align 8, !tbaa !48
  %419 = sub i32 %333, %418
  store i32 %419, ptr %0, align 8, !tbaa !19
  %420 = load ptr, ptr %45, align 8, !tbaa !49
  %421 = zext i32 %419 to i64
  %422 = sub nsw i64 0, %421
  %423 = getelementptr inbounds i8, ptr %420, i64 %422
  store ptr %423, ptr %37, align 8, !tbaa !20
  switch i32 %417, label %.loopexit95 [
    i32 1, label %424
    i32 0, label %426
  ]

424:                                              ; preds = %.loopexit91
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %426

425:                                              ; preds = %79
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit95

426:                                              ; preds = %424, %.loopexit91, %395, %294, %288
  %427 = load i32, ptr %0, align 8, !tbaa !19
  br label %428

428:                                              ; preds = %426, %290
  %429 = phi i32 [ %427, %426 ], [ %293, %290 ]
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %.loopexit97

431:                                              ; preds = %428
  %432 = load i32, ptr %39, align 8, !tbaa !24
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %.backedge, label %434

434:                                              ; preds = %431
  %435 = load i32, ptr %40, align 8, !tbaa !34
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %.loopexit97, label %.backedge

.backedge:                                        ; preds = %434, %431
  br label %79, !llvm.loop !52

.loopexit97:                                      ; preds = %434, %428, %294, %.loopexit94
  %437 = load i64, ptr %33, align 8, !tbaa !18
  br label %438

438:                                              ; preds = %.loopexit97, %70
  %439 = phi i64 [ %437, %.loopexit97 ], [ %72, %70 ]
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %.loopexit98, label %54, !llvm.loop !53

.loopexit98:                                      ; preds = %438, %76, %32
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %459

459:                                              ; preds = %.loopexit79, %.loopexit98
  %460 = phi ptr [ %2, %.loopexit98 ], [ %998, %.loopexit79 ]
  %461 = phi i64 [ 1, %.loopexit98 ], [ %997, %.loopexit79 ]
  %462 = phi i64 [ 0, %.loopexit98 ], [ %996, %.loopexit79 ]
  %463 = call i64 @llvm.umin.i64(i64 %461, i64 4294967295)
  %464 = trunc nuw i64 %463 to i32
  %465 = load i32, ptr %0, align 8, !tbaa !19
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %478, label %467

467:                                              ; preds = %459
  %468 = call i32 @llvm.umin.i32(i32 %465, i32 %464)
  %469 = load ptr, ptr %441, align 8, !tbaa !20
  %470 = zext i32 %468 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %460, ptr align 1 %469, i64 %470, i1 false)
  %471 = load ptr, ptr %441, align 8, !tbaa !20
  %472 = getelementptr inbounds nuw i8, ptr %471, i64 %470
  store ptr %472, ptr %441, align 8, !tbaa !20
  %473 = load i32, ptr %0, align 8, !tbaa !19
  %474 = sub i32 %473, %468
  store i32 %474, ptr %0, align 8, !tbaa !19
  %475 = load i32, ptr %9, align 8, !tbaa !16
  %476 = icmp ne i32 %475, 0
  %477 = sext i1 %476 to i32
  br label %982

478:                                              ; preds = %459
  %479 = load i32, ptr %442, align 8, !tbaa !24
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %484, label %481

481:                                              ; preds = %478
  %482 = load i32, ptr %443, align 8, !tbaa !25
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %.loopexit83, label %484

484:                                              ; preds = %481, %478
  %485 = load i32, ptr %444, align 8, !tbaa !26
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %.preheader650, label %487

487:                                              ; preds = %484
  %488 = load i32, ptr %445, align 8, !tbaa !27
  %489 = shl i32 %488, 1
  %490 = icmp ugt i32 %489, %464
  br i1 %490, label %.preheader650, label %854

.preheader650:                                    ; preds = %487, %484
  br label %491

491:                                              ; preds = %.preheader650, %849
  %492 = phi i32 [ %850, %849 ], [ %485, %.preheader650 ]
  switch i32 %492, label %837 [
    i32 0, label %493
    i32 1, label %709
    i32 2, label %744
  ]

493:                                              ; preds = %491
  %494 = load i32, ptr %445, align 8, !tbaa !27
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %515

496:                                              ; preds = %493
  %497 = load i32, ptr %456, align 4, !tbaa !28
  %498 = zext i32 %497 to i64
  %499 = call noalias ptr @malloc(i64 noundef %498) #15
  store ptr %499, ptr %449, align 8, !tbaa !29
  %500 = load i32, ptr %456, align 4, !tbaa !28
  %501 = shl i32 %500, 1
  %502 = zext i32 %501 to i64
  %503 = call noalias ptr @malloc(i64 noundef %502) #15
  store ptr %503, ptr %455, align 8, !tbaa !30
  %504 = icmp eq ptr %499, null
  %505 = icmp eq ptr %503, null
  %506 = or i1 %504, %505
  br i1 %506, label %507, label %508

507:                                              ; preds = %496
  call void @free(ptr noundef %503) #13
  call void @free(ptr noundef %499) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

508:                                              ; preds = %496
  %509 = load i32, ptr %456, align 4, !tbaa !28
  store i32 %509, ptr %445, align 8, !tbaa !27
  store i32 0, ptr %443, align 8, !tbaa !25
  store ptr null, ptr %448, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %457, i8 0, i64 24, i1 false)
  %510 = call i32 @inflateInit2_(ptr noundef nonnull %448, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %515, label %512

512:                                              ; preds = %508
  %513 = load ptr, ptr %455, align 8, !tbaa !30
  call void @free(ptr noundef %513) #13
  %514 = load ptr, ptr %449, align 8, !tbaa !29
  call void @free(ptr noundef %514) #13
  store i32 0, ptr %445, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

515:                                              ; preds = %508, %493
  %516 = load i32, ptr %458, align 8, !tbaa !32
  %517 = icmp eq i32 %516, -1
  br i1 %517, label %521, label %518

518:                                              ; preds = %515
  %519 = load i32, ptr %452, align 4, !tbaa !33
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %521, label %526

521:                                              ; preds = %518, %515
  %522 = call i32 @inflateReset(ptr noundef nonnull %448) #13
  store i32 2, ptr %444, align 8, !tbaa !26
  %523 = load i32, ptr %452, align 4, !tbaa !33
  %524 = icmp ne i32 %523, -1
  %525 = zext i1 %524 to i32
  store i32 %525, ptr %452, align 4, !tbaa !33
  store i32 0, ptr %458, align 8, !tbaa !32
  br label %706

526:                                              ; preds = %518
  %527 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %527, label %.loopexit77 [
    i32 0, label %528
    i32 -5, label %528
  ]

528:                                              ; preds = %526, %526
  %529 = load i32, ptr %442, align 8, !tbaa !24
  %530 = icmp eq i32 %529, 0
  %531 = load i32, ptr %443, align 8, !tbaa !34
  br i1 %530, label %532, label %674

532:                                              ; preds = %528
  %533 = icmp eq i32 %531, 0
  %534 = load ptr, ptr %449, align 8, !tbaa !29
  %535 = ptrtoaddr ptr %534 to i64
  br i1 %533, label %636, label %536

536:                                              ; preds = %532
  %537 = load ptr, ptr %448, align 8, !tbaa !35
  %538 = icmp eq ptr %537, %534
  br i1 %538, label %636, label %539

539:                                              ; preds = %536
  %540 = ptrtoaddr ptr %537 to i64
  %541 = zext i32 %531 to i64
  %542 = icmp ult i32 %531, 4
  %543 = sub i64 %535, %540
  %544 = icmp ult i64 %543, 32
  %545 = select i1 %542, i1 true, i1 %544
  br i1 %545, label %585, label %546

546:                                              ; preds = %539
  %547 = icmp ult i32 %531, 32
  br i1 %547, label %569, label %548

548:                                              ; preds = %546
  %549 = and i64 %541, 4294967264
  br label %550

550:                                              ; preds = %550, %548
  %551 = phi i64 [ 0, %548 ], [ %558, %550 ]
  %552 = getelementptr i8, ptr %534, i64 %551
  %553 = getelementptr i8, ptr %537, i64 %551
  %554 = getelementptr i8, ptr %553, i64 16
  %555 = load <16 x i8>, ptr %553, align 1, !tbaa !36
  %556 = load <16 x i8>, ptr %554, align 1, !tbaa !36
  %557 = getelementptr i8, ptr %552, i64 16
  store <16 x i8> %555, ptr %552, align 1, !tbaa !36
  store <16 x i8> %556, ptr %557, align 1, !tbaa !36
  %558 = add nuw nsw i64 %551, 32
  %559 = icmp eq i64 %558, %549
  br i1 %559, label %560, label %550, !llvm.loop !82

560:                                              ; preds = %550
  %561 = icmp eq i64 %549, %541
  br i1 %561, label %.loopexit70, label %562

562:                                              ; preds = %560
  %563 = trunc nuw i64 %549 to i32
  %564 = sub i32 %531, %563
  %565 = getelementptr i8, ptr %537, i64 %549
  %566 = getelementptr i8, ptr %534, i64 %549
  %567 = and i64 %541, 28
  %568 = icmp eq i64 %567, 0
  br i1 %568, label %585, label %569, !prof !41

569:                                              ; preds = %562, %546
  %570 = phi i64 [ %549, %562 ], [ 0, %546 ]
  %571 = and i64 %541, 4294967292
  br label %572

572:                                              ; preds = %572, %569
  %573 = phi i64 [ %570, %569 ], [ %577, %572 ]
  %574 = getelementptr i8, ptr %534, i64 %573
  %575 = getelementptr i8, ptr %537, i64 %573
  %576 = load <4 x i8>, ptr %575, align 1, !tbaa !36
  store <4 x i8> %576, ptr %574, align 1, !tbaa !36
  %577 = add nuw i64 %573, 4
  %578 = icmp eq i64 %577, %571
  br i1 %578, label %579, label %572, !llvm.loop !83

579:                                              ; preds = %572
  %580 = getelementptr i8, ptr %534, i64 %571
  %581 = getelementptr i8, ptr %537, i64 %571
  %582 = trunc nuw i64 %571 to i32
  %583 = sub i32 %531, %582
  %584 = icmp eq i64 %571, %541
  br i1 %584, label %.loopexit70, label %585

585:                                              ; preds = %579, %562, %539
  %586 = phi ptr [ %534, %539 ], [ %566, %562 ], [ %580, %579 ]
  %587 = phi ptr [ %537, %539 ], [ %565, %562 ], [ %581, %579 ]
  %588 = phi i32 [ %531, %539 ], [ %564, %562 ], [ %583, %579 ]
  %589 = add i32 %588, -1
  %590 = and i32 %588, 7
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %585, %.preheader71
  %592 = phi ptr [ %597, %.preheader71 ], [ %586, %585 ]
  %593 = phi ptr [ %595, %.preheader71 ], [ %587, %585 ]
  %594 = phi i32 [ %598, %.preheader71 ], [ 0, %585 ]
  %595 = getelementptr inbounds nuw i8, ptr %593, i64 1
  %596 = load i8, ptr %593, align 1, !tbaa !36
  %597 = getelementptr inbounds nuw i8, ptr %592, i64 1
  store i8 %596, ptr %592, align 1, !tbaa !36
  %598 = add nuw nsw i32 %594, 1
  %599 = icmp eq i32 %598, %590
  br i1 %599, label %.loopexit72.loopexit, label %.preheader71, !llvm.loop !84

.loopexit72.loopexit:                             ; preds = %.preheader71
  %600 = and i32 %588, -8
  br label %.loopexit72

.loopexit72:                                      ; preds = %.loopexit72.loopexit, %585
  %601 = phi ptr [ %586, %585 ], [ %597, %.loopexit72.loopexit ]
  %602 = phi ptr [ %587, %585 ], [ %595, %.loopexit72.loopexit ]
  %603 = phi i32 [ %588, %585 ], [ %600, %.loopexit72.loopexit ]
  %604 = icmp ult i32 %589, 7
  br i1 %604, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %.loopexit72, %.preheader
  %605 = phi ptr [ %631, %.preheader ], [ %601, %.loopexit72 ]
  %606 = phi ptr [ %629, %.preheader ], [ %602, %.loopexit72 ]
  %607 = phi i32 [ %632, %.preheader ], [ %603, %.loopexit72 ]
  %608 = getelementptr inbounds nuw i8, ptr %606, i64 1
  %609 = load i8, ptr %606, align 1, !tbaa !36
  %610 = getelementptr inbounds nuw i8, ptr %605, i64 1
  store i8 %609, ptr %605, align 1, !tbaa !36
  %611 = getelementptr inbounds nuw i8, ptr %606, i64 2
  %612 = load i8, ptr %608, align 1, !tbaa !36
  %613 = getelementptr inbounds nuw i8, ptr %605, i64 2
  store i8 %612, ptr %610, align 1, !tbaa !36
  %614 = getelementptr inbounds nuw i8, ptr %606, i64 3
  %615 = load i8, ptr %611, align 1, !tbaa !36
  %616 = getelementptr inbounds nuw i8, ptr %605, i64 3
  store i8 %615, ptr %613, align 1, !tbaa !36
  %617 = getelementptr inbounds nuw i8, ptr %606, i64 4
  %618 = load i8, ptr %614, align 1, !tbaa !36
  %619 = getelementptr inbounds nuw i8, ptr %605, i64 4
  store i8 %618, ptr %616, align 1, !tbaa !36
  %620 = getelementptr inbounds nuw i8, ptr %606, i64 5
  %621 = load i8, ptr %617, align 1, !tbaa !36
  %622 = getelementptr inbounds nuw i8, ptr %605, i64 5
  store i8 %621, ptr %619, align 1, !tbaa !36
  %623 = getelementptr inbounds nuw i8, ptr %606, i64 6
  %624 = load i8, ptr %620, align 1, !tbaa !36
  %625 = getelementptr inbounds nuw i8, ptr %605, i64 6
  store i8 %624, ptr %622, align 1, !tbaa !36
  %626 = getelementptr inbounds nuw i8, ptr %606, i64 7
  %627 = load i8, ptr %623, align 1, !tbaa !36
  %628 = getelementptr inbounds nuw i8, ptr %605, i64 7
  store i8 %627, ptr %625, align 1, !tbaa !36
  %629 = getelementptr inbounds nuw i8, ptr %606, i64 8
  %630 = load i8, ptr %626, align 1, !tbaa !36
  %631 = getelementptr inbounds nuw i8, ptr %605, i64 8
  store i8 %630, ptr %628, align 1, !tbaa !36
  %632 = add i32 %607, -8
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %.loopexit70, label %.preheader, !llvm.loop !85

.loopexit70:                                      ; preds = %.preheader, %.loopexit72, %579, %560
  %634 = load i32, ptr %443, align 8, !tbaa !34
  %635 = load ptr, ptr %449, align 8, !tbaa !29
  br label %636

636:                                              ; preds = %.loopexit70, %536, %532
  %637 = phi ptr [ %635, %.loopexit70 ], [ %534, %536 ], [ %534, %532 ]
  %638 = phi i32 [ %634, %.loopexit70 ], [ %531, %536 ], [ 0, %532 ]
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds nuw i8, ptr %637, i64 %639
  %641 = load i32, ptr %445, align 8, !tbaa !27
  %642 = sub i32 %641, %638
  store i32 0, ptr %450, align 4, !tbaa !17
  %643 = tail call ptr @__errno_location() #16
  store i32 0, ptr %643, align 4, !tbaa !4
  br label %644

644:                                              ; preds = %655, %636
  %645 = phi i32 [ 0, %636 ], [ %656, %655 ]
  %646 = sub i32 %642, %645
  %647 = call i32 @llvm.umin.i32(i32 %646, i32 1073741824)
  %648 = load i32, ptr %451, align 4, !tbaa !46
  %649 = zext i32 %645 to i64
  %650 = getelementptr inbounds nuw i8, ptr %640, i64 %649
  %651 = zext nneg i32 %647 to i64
  %652 = call i64 @read(i32 noundef %648, ptr noundef %650, i64 noundef %651) #13
  %653 = trunc i64 %652 to i32
  %654 = icmp slt i32 %653, 1
  br i1 %654, label %658, label %655

655:                                              ; preds = %644
  %656 = add i32 %645, %653
  %657 = icmp ult i32 %656, %642
  br i1 %657, label %644, label %.loopexit69, !llvm.loop !47

658:                                              ; preds = %644
  %659 = icmp slt i32 %653, 0
  br i1 %659, label %660, label %667

660:                                              ; preds = %658
  %661 = load i32, ptr %643, align 4, !tbaa !4
  %662 = icmp eq i32 %661, 11
  br i1 %662, label %663, label %.loopexit78

663:                                              ; preds = %660
  store i32 1, ptr %450, align 4, !tbaa !17
  %664 = icmp eq i32 %645, 0
  br i1 %664, label %665, label %.loopexit69

665:                                              ; preds = %663
  %666 = load i32, ptr %643, align 4, !tbaa !4
  br label %.loopexit78

667:                                              ; preds = %658
  store i32 1, ptr %442, align 8, !tbaa !24
  br label %.loopexit69

.loopexit78:                                      ; preds = %660, %665
  %668 = phi i32 [ %666, %665 ], [ %661, %660 ]
  %669 = call ptr @strerror(i32 noundef %668) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %669) #13
  br label %.loopexit77

.loopexit69:                                      ; preds = %655, %667, %663
  %670 = phi i32 [ %645, %663 ], [ %645, %667 ], [ %656, %655 ]
  %671 = load i32, ptr %443, align 8, !tbaa !34
  %672 = add i32 %671, %670
  store i32 %672, ptr %443, align 8, !tbaa !34
  %673 = load ptr, ptr %449, align 8, !tbaa !29
  store ptr %673, ptr %448, align 8, !tbaa !35
  br label %674

674:                                              ; preds = %.loopexit69, %528
  %675 = phi i32 [ %672, %.loopexit69 ], [ %531, %528 ]
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %706, label %677

677:                                              ; preds = %674
  %678 = load i32, ptr %450, align 4, !tbaa !17
  %679 = icmp ne i32 %678, 0
  %680 = icmp ult i32 %675, 4
  %681 = and i1 %680, %679
  br i1 %681, label %706, label %682

682:                                              ; preds = %677
  %683 = icmp ugt i32 %675, 3
  %684 = load ptr, ptr %448, align 8, !tbaa !35
  br i1 %683, label %685, label %702

685:                                              ; preds = %682
  %686 = load i8, ptr %684, align 1, !tbaa !36
  %687 = icmp eq i8 %686, 31
  br i1 %687, label %688, label %702

688:                                              ; preds = %685
  %689 = getelementptr inbounds nuw i8, ptr %684, i64 1
  %690 = load i8, ptr %689, align 1, !tbaa !36
  %691 = icmp eq i8 %690, -117
  br i1 %691, label %692, label %702

692:                                              ; preds = %688
  %693 = getelementptr inbounds nuw i8, ptr %684, i64 2
  %694 = load i8, ptr %693, align 1, !tbaa !36
  %695 = icmp eq i8 %694, 8
  br i1 %695, label %696, label %702

696:                                              ; preds = %692
  %697 = getelementptr inbounds nuw i8, ptr %684, i64 3
  %698 = load i8, ptr %697, align 1, !tbaa !36
  %699 = icmp ult i8 %698, 32
  br i1 %699, label %700, label %702

700:                                              ; preds = %696
  %701 = call i32 @inflateReset(ptr noundef nonnull %448) #13
  store i32 2, ptr %444, align 8, !tbaa !26
  store i32 1, ptr %452, align 4, !tbaa !33
  store i32 0, ptr %458, align 8, !tbaa !32
  br label %838

702:                                              ; preds = %696, %692, %688, %685, %682
  %703 = load ptr, ptr %455, align 8, !tbaa !30
  store ptr %703, ptr %441, align 8, !tbaa !20
  %704 = zext i32 %675 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %703, ptr align 1 %684, i64 %704, i1 false)
  %705 = load i32, ptr %443, align 8, !tbaa !34
  store i32 %705, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %443, align 8, !tbaa !34
  store i32 1, ptr %444, align 8, !tbaa !26
  br label %840

706:                                              ; preds = %677, %674, %521
  %707 = load i32, ptr %444, align 8, !tbaa !26
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %.loopexit79, label %838

709:                                              ; preds = %491
  %710 = load ptr, ptr %455, align 8, !tbaa !30
  %711 = load i32, ptr %445, align 8, !tbaa !27
  %712 = shl i32 %711, 1
  store i32 0, ptr %450, align 4, !tbaa !17
  %713 = tail call ptr @__errno_location() #16
  store i32 0, ptr %713, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %714

714:                                              ; preds = %725, %709
  %715 = phi i32 [ %727, %725 ], [ 0, %709 ]
  %716 = sub i32 %712, %715
  %717 = call i32 @llvm.umin.i32(i32 %716, i32 1073741824)
  %718 = load i32, ptr %451, align 4, !tbaa !46
  %719 = zext i32 %715 to i64
  %720 = getelementptr inbounds nuw i8, ptr %710, i64 %719
  %721 = zext nneg i32 %717 to i64
  %722 = call i64 @read(i32 noundef %718, ptr noundef %720, i64 noundef %721) #13
  %723 = trunc i64 %722 to i32
  %724 = icmp slt i32 %723, 1
  br i1 %724, label %729, label %725

725:                                              ; preds = %714
  %726 = load i32, ptr %0, align 4, !tbaa !4
  %727 = add i32 %726, %723
  store i32 %727, ptr %0, align 4, !tbaa !4
  %728 = icmp ult i32 %727, %712
  br i1 %728, label %714, label %.loopexit76, !llvm.loop !47

729:                                              ; preds = %714
  %730 = icmp slt i32 %723, 0
  br i1 %730, label %731, label %739

731:                                              ; preds = %729
  %732 = load i32, ptr %713, align 4, !tbaa !4
  %733 = icmp eq i32 %732, 11
  br i1 %733, label %734, label %740

734:                                              ; preds = %731
  store i32 1, ptr %450, align 4, !tbaa !17
  %735 = load i32, ptr %0, align 4, !tbaa !4
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %.loopexit76

737:                                              ; preds = %734
  %738 = load i32, ptr %713, align 4, !tbaa !4
  br label %740

739:                                              ; preds = %729
  store i32 1, ptr %442, align 8, !tbaa !24
  br label %.loopexit76

740:                                              ; preds = %737, %731
  %741 = phi i32 [ %738, %737 ], [ %732, %731 ]
  %742 = call ptr @strerror(i32 noundef %741) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %742) #13
  br label %.loopexit77

.loopexit76:                                      ; preds = %725, %739, %734
  %743 = load ptr, ptr %455, align 8, !tbaa !30
  store ptr %743, ptr %441, align 8, !tbaa !20
  br label %.loopexit79

744:                                              ; preds = %491
  %745 = load i32, ptr %445, align 8, !tbaa !27
  %746 = shl i32 %745, 1
  store i32 %746, ptr %446, align 8, !tbaa !48
  %747 = load ptr, ptr %455, align 8, !tbaa !30
  store ptr %747, ptr %447, align 8, !tbaa !49
  br label %748

748:                                              ; preds = %818, %744
  %749 = phi i32 [ 0, %744 ], [ %798, %818 ]
  %750 = load i32, ptr %443, align 8, !tbaa !34
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %797

752:                                              ; preds = %748
  %753 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %753, label %.loopexit73 [
    i32 0, label %754
    i32 -5, label %754
  ]

754:                                              ; preds = %752, %752
  %755 = load i32, ptr %442, align 8, !tbaa !24
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %793

757:                                              ; preds = %754
  %758 = load ptr, ptr %449, align 8, !tbaa !29
  %759 = load i32, ptr %445, align 8, !tbaa !27
  store i32 0, ptr %450, align 4, !tbaa !17
  %760 = tail call ptr @__errno_location() #16
  store i32 0, ptr %760, align 4, !tbaa !4
  br label %761

761:                                              ; preds = %772, %757
  %762 = phi i32 [ 0, %757 ], [ %773, %772 ]
  %763 = sub i32 %759, %762
  %764 = call i32 @llvm.umin.i32(i32 %763, i32 1073741824)
  %765 = load i32, ptr %451, align 4, !tbaa !46
  %766 = zext i32 %762 to i64
  %767 = getelementptr inbounds nuw i8, ptr %758, i64 %766
  %768 = zext nneg i32 %764 to i64
  %769 = call i64 @read(i32 noundef %765, ptr noundef %767, i64 noundef %768) #13
  %770 = trunc i64 %769 to i32
  %771 = icmp slt i32 %770, 1
  br i1 %771, label %775, label %772

772:                                              ; preds = %761
  %773 = add i32 %762, %770
  %774 = icmp ult i32 %773, %759
  br i1 %774, label %761, label %.loopexit, !llvm.loop !47

775:                                              ; preds = %761
  %776 = icmp slt i32 %770, 0
  br i1 %776, label %777, label %784

777:                                              ; preds = %775
  %778 = load i32, ptr %760, align 4, !tbaa !4
  %779 = icmp eq i32 %778, 11
  br i1 %779, label %780, label %.loopexit74

780:                                              ; preds = %777
  store i32 1, ptr %450, align 4, !tbaa !17
  %781 = icmp eq i32 %762, 0
  br i1 %781, label %782, label %.loopexit

782:                                              ; preds = %780
  %783 = load i32, ptr %760, align 4, !tbaa !4
  br label %.loopexit74

784:                                              ; preds = %775
  store i32 1, ptr %442, align 8, !tbaa !24
  br label %.loopexit

.loopexit74:                                      ; preds = %777, %782
  %785 = phi i32 [ %783, %782 ], [ %778, %777 ]
  %786 = call ptr @strerror(i32 noundef %785) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %786) #13
  %787 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit73

.loopexit:                                        ; preds = %772, %784, %780
  %788 = phi i32 [ %762, %780 ], [ %762, %784 ], [ %773, %772 ]
  %789 = load i32, ptr %443, align 8, !tbaa !34
  %790 = add i32 %789, %788
  store i32 %790, ptr %443, align 8, !tbaa !34
  %791 = load ptr, ptr %449, align 8, !tbaa !29
  store ptr %791, ptr %448, align 8, !tbaa !35
  %792 = icmp eq i32 %790, 0
  br i1 %792, label %793, label %797

793:                                              ; preds = %.loopexit, %754
  %794 = load i32, ptr %450, align 4, !tbaa !17
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %796, label %.loopexit73

796:                                              ; preds = %793
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit73

797:                                              ; preds = %.loopexit, %748
  %798 = call i32 @inflate(ptr noundef nonnull %448, i32 noundef 0) #13
  %799 = load i32, ptr %446, align 8, !tbaa !48
  %800 = icmp ult i32 %799, %746
  br i1 %800, label %801, label %802

801:                                              ; preds = %797
  store i32 0, ptr %452, align 4, !tbaa !33
  br label %802

802:                                              ; preds = %801, %797
  switch i32 %798, label %818 [
    i32 -2, label %803
    i32 2, label %803
    i32 -4, label %804
    i32 -3, label %805
  ]

803:                                              ; preds = %802, %802
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit73

804:                                              ; preds = %802
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %822

805:                                              ; preds = %802
  %806 = load i32, ptr %452, align 4, !tbaa !33
  %807 = icmp eq i32 %806, 1
  br i1 %807, label %808, label %814

808:                                              ; preds = %805
  store i32 0, ptr %443, align 8, !tbaa !34
  store i32 1, ptr %442, align 8, !tbaa !24
  store i32 0, ptr %444, align 8, !tbaa !26
  %809 = sub i32 %746, %799
  store i32 %809, ptr %0, align 8, !tbaa !19
  %810 = load ptr, ptr %447, align 8, !tbaa !49
  %811 = zext i32 %809 to i64
  %812 = sub nsw i64 0, %811
  %813 = getelementptr inbounds i8, ptr %810, i64 %812
  store ptr %813, ptr %441, align 8, !tbaa !20
  br label %838

814:                                              ; preds = %805
  %815 = load ptr, ptr %453, align 8, !tbaa !50
  %816 = icmp eq ptr %815, null
  %817 = select i1 %816, ptr @.str.6, ptr %815
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %817) #13
  br label %822

818:                                              ; preds = %802
  %819 = icmp ne i32 %799, 0
  %820 = icmp ne i32 %798, 1
  %821 = select i1 %819, i1 %820, i1 false
  br i1 %821, label %748, label %.loopexit73, !llvm.loop !51

822:                                              ; preds = %814, %804
  %823 = load i32, ptr %446, align 8, !tbaa !48
  %824 = sub i32 %746, %823
  store i32 %824, ptr %0, align 8, !tbaa !19
  %825 = load ptr, ptr %447, align 8, !tbaa !49
  %826 = zext i32 %824 to i64
  %827 = sub nsw i64 0, %826
  %828 = getelementptr inbounds i8, ptr %825, i64 %827
  store ptr %828, ptr %441, align 8, !tbaa !20
  br label %.loopexit77

.loopexit73:                                      ; preds = %818, %752, %803, %796, %793, %.loopexit74
  %829 = phi i32 [ %787, %.loopexit74 ], [ %749, %793 ], [ %749, %796 ], [ %798, %803 ], [ %753, %752 ], [ %798, %818 ]
  %830 = load i32, ptr %446, align 8, !tbaa !48
  %831 = sub i32 %746, %830
  store i32 %831, ptr %0, align 8, !tbaa !19
  %832 = load ptr, ptr %447, align 8, !tbaa !49
  %833 = zext i32 %831 to i64
  %834 = sub nsw i64 0, %833
  %835 = getelementptr inbounds i8, ptr %832, i64 %834
  store ptr %835, ptr %441, align 8, !tbaa !20
  switch i32 %829, label %.loopexit77 [
    i32 1, label %836
    i32 0, label %838
  ]

836:                                              ; preds = %.loopexit73
  store i32 0, ptr %452, align 4, !tbaa !33
  store i32 0, ptr %444, align 8, !tbaa !26
  br label %838

837:                                              ; preds = %491
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit77

838:                                              ; preds = %836, %.loopexit73, %808, %706, %700
  %839 = load i32, ptr %0, align 8, !tbaa !19
  br label %840

840:                                              ; preds = %838, %702
  %841 = phi i32 [ %839, %838 ], [ %705, %702 ]
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %.loopexit79

843:                                              ; preds = %840
  %844 = load i32, ptr %442, align 8, !tbaa !24
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %849, label %846

846:                                              ; preds = %843
  %847 = load i32, ptr %443, align 8, !tbaa !34
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %.loopexit79, label %849

849:                                              ; preds = %846, %843
  %850 = load i32, ptr %444, align 8, !tbaa !26
  br label %491, !llvm.loop !52

.loopexit77:                                      ; preds = %.loopexit73, %526, %837, %822, %740, %.loopexit78, %512, %507
  %851 = load i32, ptr %0, align 8, !tbaa !19
  %852 = icmp eq i32 %851, 0
  %853 = sext i1 %852 to i32
  br label %.loopexit79

854:                                              ; preds = %487
  %855 = icmp eq i32 %485, 1
  br i1 %855, label %856, label %885

856:                                              ; preds = %854
  store i32 0, ptr %450, align 4, !tbaa !17
  %857 = tail call ptr @__errno_location() #16
  store i32 0, ptr %857, align 4, !tbaa !4
  br label %858

858:                                              ; preds = %869, %856
  %859 = phi i32 [ 0, %856 ], [ %870, %869 ]
  %860 = sub i32 %464, %859
  %861 = call i32 @llvm.umin.i32(i32 %860, i32 1073741824)
  %862 = load i32, ptr %451, align 4, !tbaa !46
  %863 = zext i32 %859 to i64
  %864 = getelementptr inbounds nuw i8, ptr %460, i64 %863
  %865 = zext nneg i32 %861 to i64
  %866 = call i64 @read(i32 noundef %862, ptr noundef %864, i64 noundef %865) #13
  %867 = trunc i64 %866 to i32
  %868 = icmp slt i32 %867, 1
  br i1 %868, label %872, label %869

869:                                              ; preds = %858
  %870 = add i32 %859, %867
  %871 = icmp ult i32 %870, %464
  br i1 %871, label %858, label %980, !llvm.loop !47

872:                                              ; preds = %858
  %873 = icmp slt i32 %867, 0
  br i1 %873, label %874, label %884

874:                                              ; preds = %872
  %875 = load i32, ptr %857, align 4, !tbaa !4
  %876 = icmp eq i32 %875, 11
  br i1 %876, label %877, label %881

877:                                              ; preds = %874
  store i32 1, ptr %450, align 4, !tbaa !17
  %878 = icmp eq i32 %859, 0
  br i1 %878, label %879, label %982

879:                                              ; preds = %877
  %880 = load i32, ptr %857, align 4, !tbaa !4
  br label %881

881:                                              ; preds = %879, %874
  %882 = phi i32 [ %880, %879 ], [ %875, %874 ]
  %883 = call ptr @strerror(i32 noundef %882) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %883) #13
  br label %982

884:                                              ; preds = %872
  store i32 1, ptr %442, align 8, !tbaa !24
  br label %982

885:                                              ; preds = %854
  store i32 %464, ptr %446, align 8, !tbaa !58
  store ptr %460, ptr %447, align 8, !tbaa !59
  br label %886

886:                                              ; preds = %951, %885
  %887 = phi i32 [ 0, %885 ], [ %936, %951 ]
  %888 = load i32, ptr %443, align 8, !tbaa !34
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %890, label %935

890:                                              ; preds = %886
  %891 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %891, label %.loopexit80 [
    i32 0, label %892
    i32 -5, label %892
  ]

892:                                              ; preds = %890, %890
  %893 = load i32, ptr %442, align 8, !tbaa !24
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %895, label %931

895:                                              ; preds = %892
  %896 = load ptr, ptr %449, align 8, !tbaa !29
  %897 = load i32, ptr %445, align 8, !tbaa !27
  store i32 0, ptr %450, align 4, !tbaa !17
  %898 = tail call ptr @__errno_location() #16
  store i32 0, ptr %898, align 4, !tbaa !4
  br label %899

899:                                              ; preds = %910, %895
  %900 = phi i32 [ 0, %895 ], [ %911, %910 ]
  %901 = sub i32 %897, %900
  %902 = call i32 @llvm.umin.i32(i32 %901, i32 1073741824)
  %903 = load i32, ptr %451, align 4, !tbaa !46
  %904 = zext i32 %900 to i64
  %905 = getelementptr inbounds nuw i8, ptr %896, i64 %904
  %906 = zext nneg i32 %902 to i64
  %907 = call i64 @read(i32 noundef %903, ptr noundef %905, i64 noundef %906) #13
  %908 = trunc i64 %907 to i32
  %909 = icmp slt i32 %908, 1
  br i1 %909, label %913, label %910

910:                                              ; preds = %899
  %911 = add i32 %900, %908
  %912 = icmp ult i32 %911, %897
  br i1 %912, label %899, label %.loopexit75, !llvm.loop !47

913:                                              ; preds = %899
  %914 = icmp slt i32 %908, 0
  br i1 %914, label %915, label %922

915:                                              ; preds = %913
  %916 = load i32, ptr %898, align 4, !tbaa !4
  %917 = icmp eq i32 %916, 11
  br i1 %917, label %918, label %.loopexit82

918:                                              ; preds = %915
  store i32 1, ptr %450, align 4, !tbaa !17
  %919 = icmp eq i32 %900, 0
  br i1 %919, label %920, label %.loopexit75

920:                                              ; preds = %918
  %921 = load i32, ptr %898, align 4, !tbaa !4
  br label %.loopexit82

922:                                              ; preds = %913
  store i32 1, ptr %442, align 8, !tbaa !24
  br label %.loopexit75

.loopexit82:                                      ; preds = %915, %920
  %923 = phi i32 [ %921, %920 ], [ %916, %915 ]
  %924 = call ptr @strerror(i32 noundef %923) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %924) #13
  %925 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit80

.loopexit75:                                      ; preds = %910, %922, %918
  %926 = phi i32 [ %900, %918 ], [ %900, %922 ], [ %911, %910 ]
  %927 = load i32, ptr %443, align 8, !tbaa !34
  %928 = add i32 %927, %926
  store i32 %928, ptr %443, align 8, !tbaa !34
  %929 = load ptr, ptr %449, align 8, !tbaa !29
  store ptr %929, ptr %448, align 8, !tbaa !35
  %930 = icmp eq i32 %928, 0
  br i1 %930, label %931, label %935

931:                                              ; preds = %.loopexit75, %892
  %932 = load i32, ptr %450, align 4, !tbaa !17
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %934, label %.loopexit80

934:                                              ; preds = %931
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit80

935:                                              ; preds = %.loopexit75, %886
  %936 = call i32 @inflate(ptr noundef nonnull %448, i32 noundef 0) #13
  %937 = load i32, ptr %446, align 8, !tbaa !48
  %938 = icmp ult i32 %937, %464
  br i1 %938, label %939, label %940

939:                                              ; preds = %935
  store i32 0, ptr %452, align 4, !tbaa !33
  br label %940

940:                                              ; preds = %939, %935
  switch i32 %936, label %951 [
    i32 -2, label %941
    i32 2, label %941
    i32 -4, label %942
    i32 -3, label %943
  ]

941:                                              ; preds = %940, %940
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit80

942:                                              ; preds = %940
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %955

943:                                              ; preds = %940
  %944 = load i32, ptr %452, align 4, !tbaa !33
  %945 = icmp eq i32 %944, 1
  br i1 %945, label %946, label %947

946:                                              ; preds = %943
  store i32 0, ptr %443, align 8, !tbaa !34
  store i32 1, ptr %442, align 8, !tbaa !24
  store i32 0, ptr %444, align 8, !tbaa !26
  br label %955

947:                                              ; preds = %943
  %948 = load ptr, ptr %453, align 8, !tbaa !50
  %949 = icmp eq ptr %948, null
  %950 = select i1 %949, ptr @.str.6, ptr %948
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %950) #13
  br label %955

951:                                              ; preds = %940
  %952 = icmp ne i32 %937, 0
  %953 = icmp ne i32 %936, 1
  %954 = select i1 %952, i1 %953, i1 false
  br i1 %954, label %886, label %.loopexit80, !llvm.loop !51

955:                                              ; preds = %947, %946, %942
  %956 = phi i32 [ -3, %947 ], [ 0, %946 ], [ -4, %942 ]
  %957 = load i32, ptr %446, align 8, !tbaa !48
  %958 = sub i32 %464, %957
  %959 = load ptr, ptr %447, align 8, !tbaa !49
  %960 = zext i32 %958 to i64
  %961 = sub nsw i64 0, %960
  %962 = getelementptr inbounds i8, ptr %959, i64 %961
  store ptr %962, ptr %441, align 8, !tbaa !20
  br label %972

.loopexit80:                                      ; preds = %951, %890, %941, %934, %931, %.loopexit82
  %963 = phi i32 [ %925, %.loopexit82 ], [ %887, %931 ], [ %887, %934 ], [ %936, %941 ], [ %891, %890 ], [ %936, %951 ]
  %964 = load i32, ptr %446, align 8, !tbaa !48
  %965 = sub i32 %464, %964
  %966 = load ptr, ptr %447, align 8, !tbaa !49
  %967 = zext i32 %965 to i64
  %968 = sub nsw i64 0, %967
  %969 = getelementptr inbounds i8, ptr %966, i64 %968
  store ptr %969, ptr %441, align 8, !tbaa !20
  %970 = icmp eq i32 %963, 1
  br i1 %970, label %971, label %972

971:                                              ; preds = %.loopexit80
  store i32 0, ptr %452, align 4, !tbaa !33
  store i32 0, ptr %444, align 8, !tbaa !26
  br label %977

972:                                              ; preds = %.loopexit80, %955
  %973 = phi i64 [ %960, %955 ], [ %967, %.loopexit80 ]
  %974 = phi i32 [ %956, %955 ], [ %963, %.loopexit80 ]
  %975 = icmp ne i32 %974, 0
  %976 = sext i1 %975 to i32
  br label %977

977:                                              ; preds = %972, %971
  %978 = phi i64 [ %967, %971 ], [ %973, %972 ]
  %979 = phi i32 [ 0, %971 ], [ %976, %972 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %982

980:                                              ; preds = %869
  %981 = zext i32 %870 to i64
  br label %982

982:                                              ; preds = %980, %977, %884, %881, %877, %467
  %983 = phi i64 [ %981, %980 ], [ %863, %884 ], [ %863, %881 ], [ %863, %877 ], [ %470, %467 ], [ %978, %977 ]
  %984 = phi i32 [ 0, %980 ], [ 0, %884 ], [ -1, %881 ], [ 0, %877 ], [ %477, %467 ], [ %979, %977 ]
  %985 = load i64, ptr %454, align 8, !tbaa !21
  %986 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %985, i64 %983), !nosanitize !22
  %987 = extractvalue { i64, i1 } %986, 1, !nosanitize !22
  br i1 %987, label %988, label %989, !prof !23, !nosanitize !22

988:                                              ; preds = %982
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

989:                                              ; preds = %982
  %990 = extractvalue { i64, i1 } %986, 0, !nosanitize !22
  %991 = add i64 %983, %462
  %992 = getelementptr inbounds nuw i8, ptr %460, i64 %983
  %993 = sub i64 %461, %983
  store i64 %990, ptr %454, align 8, !tbaa !21
  %994 = icmp eq i64 %993, 0
  br i1 %994, label %.loopexit84, label %.loopexit79

.loopexit79:                                      ; preds = %846, %840, %706, %989, %.loopexit77, %.loopexit76
  %995 = phi i32 [ %984, %989 ], [ %853, %.loopexit77 ], [ 0, %.loopexit76 ], [ 0, %706 ], [ 0, %840 ], [ 0, %846 ]
  %996 = phi i64 [ %991, %989 ], [ %462, %.loopexit77 ], [ %462, %.loopexit76 ], [ %462, %706 ], [ %462, %840 ], [ %462, %846 ]
  %997 = phi i64 [ %993, %989 ], [ %461, %.loopexit77 ], [ %461, %.loopexit76 ], [ %461, %706 ], [ %461, %840 ], [ %461, %846 ]
  %998 = phi ptr [ %992, %989 ], [ %460, %.loopexit77 ], [ %460, %.loopexit76 ], [ %460, %706 ], [ %460, %840 ], [ %460, %846 ]
  %999 = icmp eq i32 %995, 0
  br i1 %999, label %459, label %1000, !llvm.loop !60

1000:                                             ; preds = %.loopexit79
  %1001 = load i32, ptr %442, align 8, !tbaa !24
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %.loopexit84, label %.loopexit83

.loopexit83:                                      ; preds = %481, %1000
  %1003 = phi i64 [ %996, %1000 ], [ %462, %481 ]
  %1004 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1004, align 4, !tbaa !61
  br label %.loopexit84

.loopexit84:                                      ; preds = %989, %.loopexit83, %1000
  %1005 = phi i64 [ %996, %1000 ], [ %1003, %.loopexit83 ], [ %991, %989 ]
  %1006 = freeze i64 %1005
  %1007 = icmp eq i64 %1006, 0
  %1008 = load i8, ptr %2, align 1
  %1009 = zext i8 %1008 to i32
  br i1 %1007, label %.loopexit95, label %1010

.loopexit95:                                      ; preds = %.loopexit91, %114, %.loopexit84, %425, %410, %.loopexit99, %.loopexit96, %100, %95
  br label %1010

1010:                                             ; preds = %.loopexit95, %.loopexit84, %25, %11, %4, %1
  %1011 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %.loopexit95 ], [ %1009, %.loopexit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1011
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %.loopexit53, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %.loopexit53

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %248

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %248

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
  br label %248

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
  br label %248

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
  br label %248

58:                                               ; preds = %48
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %60 = load i32, ptr %59, align 8, !tbaa !16
  switch i32 %60, label %248 [
    i32 0, label %61
    i32 -5, label %61
  ]

61:                                               ; preds = %58, %58
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %63 = load i32, ptr %62, align 8, !tbaa !24
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %66 = load i32, ptr %65, align 8, !tbaa !34
  br i1 %64, label %67, label %213

67:                                               ; preds = %61
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %171, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %71 = load ptr, ptr %70, align 8, !tbaa !29
  %72 = load ptr, ptr %16, align 8, !tbaa !35
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %171, label %74

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
  %85 = and i64 %77, 4294967264
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi i64 [ 0, %84 ], [ %94, %86 ]
  %88 = getelementptr i8, ptr %71, i64 %87
  %89 = getelementptr i8, ptr %72, i64 %87
  %90 = getelementptr i8, ptr %89, i64 16
  %91 = load <16 x i8>, ptr %89, align 1, !tbaa !36
  %92 = load <16 x i8>, ptr %90, align 1, !tbaa !36
  %93 = getelementptr i8, ptr %88, i64 16
  store <16 x i8> %91, ptr %88, align 1, !tbaa !36
  store <16 x i8> %92, ptr %93, align 1, !tbaa !36
  %94 = add nuw nsw i64 %87, 32
  %95 = icmp eq i64 %94, %85
  br i1 %95, label %96, label %86, !llvm.loop !86

96:                                               ; preds = %86
  %97 = icmp eq i64 %85, %77
  br i1 %97, label %.loopexit59, label %98

98:                                               ; preds = %96
  %99 = trunc nuw i64 %85 to i32
  %100 = sub i32 %66, %99
  %101 = getelementptr i8, ptr %72, i64 %85
  %102 = getelementptr i8, ptr %71, i64 %85
  %103 = and i64 %77, 28
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %121, label %105, !prof !41

105:                                              ; preds = %98, %82
  %106 = phi i64 [ %85, %98 ], [ 0, %82 ]
  %107 = and i64 %77, 4294967292
  br label %108

108:                                              ; preds = %108, %105
  %109 = phi i64 [ %106, %105 ], [ %113, %108 ]
  %110 = getelementptr i8, ptr %71, i64 %109
  %111 = getelementptr i8, ptr %72, i64 %109
  %112 = load <4 x i8>, ptr %111, align 1, !tbaa !36
  store <4 x i8> %112, ptr %110, align 1, !tbaa !36
  %113 = add nuw i64 %109, 4
  %114 = icmp eq i64 %113, %107
  br i1 %114, label %115, label %108, !llvm.loop !87

115:                                              ; preds = %108
  %116 = getelementptr i8, ptr %71, i64 %107
  %117 = getelementptr i8, ptr %72, i64 %107
  %118 = trunc nuw i64 %107 to i32
  %119 = sub i32 %66, %118
  %120 = icmp eq i64 %107, %77
  br i1 %120, label %.loopexit59, label %121

121:                                              ; preds = %115, %98, %74
  %122 = phi ptr [ %71, %74 ], [ %102, %98 ], [ %116, %115 ]
  %123 = phi ptr [ %72, %74 ], [ %101, %98 ], [ %117, %115 ]
  %124 = phi i32 [ %66, %74 ], [ %100, %98 ], [ %119, %115 ]
  %125 = add i32 %124, -1
  %126 = and i32 %124, 7
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %.loopexit61, label %.preheader60

.preheader60:                                     ; preds = %121, %.preheader60
  %128 = phi ptr [ %133, %.preheader60 ], [ %122, %121 ]
  %129 = phi ptr [ %131, %.preheader60 ], [ %123, %121 ]
  %130 = phi i32 [ %134, %.preheader60 ], [ 0, %121 ]
  %131 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %132 = load i8, ptr %129, align 1, !tbaa !36
  %133 = getelementptr inbounds nuw i8, ptr %128, i64 1
  store i8 %132, ptr %128, align 1, !tbaa !36
  %134 = add nuw nsw i32 %130, 1
  %135 = icmp eq i32 %134, %126
  br i1 %135, label %.loopexit61.loopexit, label %.preheader60, !llvm.loop !88

.loopexit61.loopexit:                             ; preds = %.preheader60
  %136 = and i32 %124, -8
  br label %.loopexit61

.loopexit61:                                      ; preds = %.loopexit61.loopexit, %121
  %137 = phi ptr [ %122, %121 ], [ %133, %.loopexit61.loopexit ]
  %138 = phi ptr [ %123, %121 ], [ %131, %.loopexit61.loopexit ]
  %139 = phi i32 [ %124, %121 ], [ %136, %.loopexit61.loopexit ]
  %140 = icmp ult i32 %125, 7
  br i1 %140, label %.loopexit59, label %.preheader58

.preheader58:                                     ; preds = %.loopexit61, %.preheader58
  %141 = phi ptr [ %167, %.preheader58 ], [ %137, %.loopexit61 ]
  %142 = phi ptr [ %165, %.preheader58 ], [ %138, %.loopexit61 ]
  %143 = phi i32 [ %168, %.preheader58 ], [ %139, %.loopexit61 ]
  %144 = getelementptr inbounds nuw i8, ptr %142, i64 1
  %145 = load i8, ptr %142, align 1, !tbaa !36
  %146 = getelementptr inbounds nuw i8, ptr %141, i64 1
  store i8 %145, ptr %141, align 1, !tbaa !36
  %147 = getelementptr inbounds nuw i8, ptr %142, i64 2
  %148 = load i8, ptr %144, align 1, !tbaa !36
  %149 = getelementptr inbounds nuw i8, ptr %141, i64 2
  store i8 %148, ptr %146, align 1, !tbaa !36
  %150 = getelementptr inbounds nuw i8, ptr %142, i64 3
  %151 = load i8, ptr %147, align 1, !tbaa !36
  %152 = getelementptr inbounds nuw i8, ptr %141, i64 3
  store i8 %151, ptr %149, align 1, !tbaa !36
  %153 = getelementptr inbounds nuw i8, ptr %142, i64 4
  %154 = load i8, ptr %150, align 1, !tbaa !36
  %155 = getelementptr inbounds nuw i8, ptr %141, i64 4
  store i8 %154, ptr %152, align 1, !tbaa !36
  %156 = getelementptr inbounds nuw i8, ptr %142, i64 5
  %157 = load i8, ptr %153, align 1, !tbaa !36
  %158 = getelementptr inbounds nuw i8, ptr %141, i64 5
  store i8 %157, ptr %155, align 1, !tbaa !36
  %159 = getelementptr inbounds nuw i8, ptr %142, i64 6
  %160 = load i8, ptr %156, align 1, !tbaa !36
  %161 = getelementptr inbounds nuw i8, ptr %141, i64 6
  store i8 %160, ptr %158, align 1, !tbaa !36
  %162 = getelementptr inbounds nuw i8, ptr %142, i64 7
  %163 = load i8, ptr %159, align 1, !tbaa !36
  %164 = getelementptr inbounds nuw i8, ptr %141, i64 7
  store i8 %163, ptr %161, align 1, !tbaa !36
  %165 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %166 = load i8, ptr %162, align 1, !tbaa !36
  %167 = getelementptr inbounds nuw i8, ptr %141, i64 8
  store i8 %166, ptr %164, align 1, !tbaa !36
  %168 = add i32 %143, -8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %.loopexit59, label %.preheader58, !llvm.loop !89

.loopexit59:                                      ; preds = %.preheader58, %.loopexit61, %115, %96
  %170 = load i32, ptr %65, align 8, !tbaa !34
  br label %171

171:                                              ; preds = %.loopexit59, %69, %67
  %172 = phi i32 [ %170, %.loopexit59 ], [ %66, %69 ], [ 0, %67 ]
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %174 = load ptr, ptr %173, align 8, !tbaa !29
  %175 = zext i32 %172 to i64
  %176 = getelementptr inbounds nuw i8, ptr %174, i64 %175
  %177 = load i32, ptr %17, align 8, !tbaa !27
  %178 = sub i32 %177, %172
  %179 = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %179, align 4, !tbaa !17
  %180 = tail call ptr @__errno_location() #16
  store i32 0, ptr %180, align 4, !tbaa !4
  %181 = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %182

182:                                              ; preds = %193, %171
  %183 = phi i32 [ 0, %171 ], [ %194, %193 ]
  %184 = sub i32 %178, %183
  %185 = tail call i32 @llvm.umin.i32(i32 %184, i32 1073741824)
  %186 = load i32, ptr %181, align 4, !tbaa !46
  %187 = zext i32 %183 to i64
  %188 = getelementptr inbounds nuw i8, ptr %176, i64 %187
  %189 = zext nneg i32 %185 to i64
  %190 = tail call i64 @read(i32 noundef %186, ptr noundef %188, i64 noundef %189) #13
  %191 = trunc i64 %190 to i32
  %192 = icmp slt i32 %191, 1
  br i1 %192, label %196, label %193

193:                                              ; preds = %182
  %194 = add i32 %183, %191
  %195 = icmp ult i32 %194, %178
  br i1 %195, label %182, label %.loopexit57, !llvm.loop !47

196:                                              ; preds = %182
  %197 = icmp slt i32 %191, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %196
  %199 = load i32, ptr %180, align 4, !tbaa !4
  %200 = icmp eq i32 %199, 11
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  store i32 1, ptr %179, align 4, !tbaa !17
  %202 = icmp eq i32 %183, 0
  br i1 %202, label %203, label %.loopexit57

203:                                              ; preds = %201
  %204 = load i32, ptr %180, align 4, !tbaa !4
  br label %206

205:                                              ; preds = %196
  store i32 1, ptr %62, align 8, !tbaa !24
  br label %.loopexit57

206:                                              ; preds = %203, %198
  %207 = phi i32 [ %204, %203 ], [ %199, %198 ]
  %208 = tail call ptr @strerror(i32 noundef %207) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %208) #13
  br label %248

.loopexit57:                                      ; preds = %193, %205, %201
  %209 = phi i32 [ %183, %201 ], [ %183, %205 ], [ %194, %193 ]
  %210 = load i32, ptr %65, align 8, !tbaa !34
  %211 = add i32 %210, %209
  store i32 %211, ptr %65, align 8, !tbaa !34
  %212 = load ptr, ptr %173, align 8, !tbaa !29
  store ptr %212, ptr %16, align 8, !tbaa !35
  br label %213

213:                                              ; preds = %.loopexit57, %61
  %214 = phi i32 [ %211, %.loopexit57 ], [ %66, %61 ]
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %248, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %218 = load i32, ptr %217, align 4, !tbaa !17
  %219 = icmp ne i32 %218, 0
  %220 = icmp ult i32 %214, 4
  %221 = and i1 %220, %219
  br i1 %221, label %248, label %222

222:                                              ; preds = %216
  %223 = icmp ugt i32 %214, 3
  %224 = load ptr, ptr %16, align 8, !tbaa !35
  br i1 %223, label %225, label %242

225:                                              ; preds = %222
  %226 = load i8, ptr %224, align 1, !tbaa !36
  %227 = icmp eq i8 %226, 31
  br i1 %227, label %228, label %242

228:                                              ; preds = %225
  %229 = getelementptr inbounds nuw i8, ptr %224, i64 1
  %230 = load i8, ptr %229, align 1, !tbaa !36
  %231 = icmp eq i8 %230, -117
  br i1 %231, label %232, label %242

232:                                              ; preds = %228
  %233 = getelementptr inbounds nuw i8, ptr %224, i64 2
  %234 = load i8, ptr %233, align 1, !tbaa !36
  %235 = icmp eq i8 %234, 8
  br i1 %235, label %236, label %242

236:                                              ; preds = %232
  %237 = getelementptr inbounds nuw i8, ptr %224, i64 3
  %238 = load i8, ptr %237, align 1, !tbaa !36
  %239 = icmp ult i8 %238, 32
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %49, align 4, !tbaa !33
  store i32 0, ptr %45, align 8, !tbaa !32
  br label %248

242:                                              ; preds = %236, %232, %228, %225, %222
  %243 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %244 = load ptr, ptr %243, align 8, !tbaa !30
  %245 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %244, ptr %245, align 8, !tbaa !20
  %246 = zext i32 %214 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %244, ptr align 1 %224, i64 %246, i1 false)
  %247 = load i32, ptr %65, align 8, !tbaa !34
  store i32 %247, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %65, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %248

248:                                              ; preds = %242, %240, %216, %213, %206, %58, %52, %41, %34, %12, %8
  %249 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %250 = load i32, ptr %249, align 8, !tbaa !16
  switch i32 %250, label %251 [
    i32 0, label %255
    i32 -5, label %255
  ]

251:                                              ; preds = %248
  %252 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %253 = load i32, ptr %252, align 4, !tbaa !17
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %.loopexit53, label %255

255:                                              ; preds = %251, %248, %248
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %256 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %257 = load i64, ptr %256, align 8, !tbaa !18
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %665, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %261 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %262 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %263 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %264 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %265 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %266 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %267 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %268 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %269 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %271 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %272 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %273 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %274 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %275 = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %276

276:                                              ; preds = %660, %259
  %277 = phi i64 [ %661, %660 ], [ %257, %259 ]
  %278 = load i32, ptr %1, align 8, !tbaa !19
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %295, label %280

280:                                              ; preds = %276
  %281 = zext i32 %278 to i64
  %282 = tail call i64 @llvm.smin.i64(i64 %277, i64 %281)
  %283 = trunc i64 %282 to i32
  %284 = sub i32 %278, %283
  store i32 %284, ptr %1, align 8, !tbaa !19
  %285 = load ptr, ptr %260, align 8, !tbaa !20
  %286 = and i64 %282, 4294967295
  %287 = getelementptr inbounds nuw i8, ptr %285, i64 %286
  store ptr %287, ptr %260, align 8, !tbaa !20
  %288 = load i64, ptr %261, align 8, !tbaa !21
  %289 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %288, i64 %286), !nosanitize !22
  %290 = extractvalue { i64, i1 } %289, 1, !nosanitize !22
  br i1 %290, label %291, label %292, !prof !23, !nosanitize !22

291:                                              ; preds = %280
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

292:                                              ; preds = %280
  %293 = extractvalue { i64, i1 } %289, 0, !nosanitize !22
  store i64 %293, ptr %261, align 8, !tbaa !21
  %294 = sub i64 %277, %286
  store i64 %294, ptr %256, align 8, !tbaa !18
  br label %660

295:                                              ; preds = %276
  %296 = load i32, ptr %262, align 8, !tbaa !24
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %.preheader320, label %298

298:                                              ; preds = %295
  %299 = load i32, ptr %263, align 8, !tbaa !25
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %663, label %.preheader320

.preheader320:                                    ; preds = %298, %295
  br label %301

301:                                              ; preds = %.backedge, %.preheader320
  %302 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %302, label %647 [
    i32 0, label %303
    i32 1, label %519
    i32 2, label %553
  ]

303:                                              ; preds = %301
  %304 = load i32, ptr %264, align 8, !tbaa !27
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %325

306:                                              ; preds = %303
  %307 = load i32, ptr %273, align 4, !tbaa !28
  %308 = zext i32 %307 to i64
  %309 = tail call noalias ptr @malloc(i64 noundef %308) #15
  store ptr %309, ptr %269, align 8, !tbaa !29
  %310 = load i32, ptr %273, align 4, !tbaa !28
  %311 = shl i32 %310, 1
  %312 = zext i32 %311 to i64
  %313 = tail call noalias ptr @malloc(i64 noundef %312) #15
  store ptr %313, ptr %266, align 8, !tbaa !30
  %314 = icmp eq ptr %309, null
  %315 = icmp eq ptr %313, null
  %316 = or i1 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %306
  tail call void @free(ptr noundef %313) #13
  tail call void @free(ptr noundef %309) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit53

318:                                              ; preds = %306
  %319 = load i32, ptr %273, align 4, !tbaa !28
  store i32 %319, ptr %264, align 8, !tbaa !27
  store i32 0, ptr %263, align 8, !tbaa !25
  store ptr null, ptr %268, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %274, i8 0, i64 24, i1 false)
  %320 = tail call i32 @inflateInit2_(ptr noundef nonnull %268, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %318
  %323 = load ptr, ptr %266, align 8, !tbaa !30
  tail call void @free(ptr noundef %323) #13
  %324 = load ptr, ptr %269, align 8, !tbaa !29
  tail call void @free(ptr noundef %324) #13
  store i32 0, ptr %264, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit53

325:                                              ; preds = %318, %303
  %326 = load i32, ptr %275, align 8, !tbaa !32
  %327 = icmp eq i32 %326, -1
  br i1 %327, label %331, label %328

328:                                              ; preds = %325
  %329 = load i32, ptr %272, align 4, !tbaa !33
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %328, %325
  %332 = tail call i32 @inflateReset(ptr noundef nonnull %268) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %333 = load i32, ptr %272, align 4, !tbaa !33
  %334 = icmp ne i32 %333, -1
  %335 = zext i1 %334 to i32
  store i32 %335, ptr %272, align 4, !tbaa !33
  store i32 0, ptr %275, align 8, !tbaa !32
  br label %516

336:                                              ; preds = %328
  %337 = load i32, ptr %249, align 8, !tbaa !16
  switch i32 %337, label %.loopexit53 [
    i32 0, label %338
    i32 -5, label %338
  ]

338:                                              ; preds = %336, %336
  %339 = load i32, ptr %262, align 8, !tbaa !24
  %340 = icmp eq i32 %339, 0
  %341 = load i32, ptr %263, align 8, !tbaa !34
  br i1 %340, label %342, label %484

342:                                              ; preds = %338
  %343 = icmp eq i32 %341, 0
  %344 = load ptr, ptr %269, align 8, !tbaa !29
  %345 = ptrtoaddr ptr %344 to i64
  br i1 %343, label %446, label %346

346:                                              ; preds = %342
  %347 = load ptr, ptr %268, align 8, !tbaa !35
  %348 = icmp eq ptr %347, %344
  br i1 %348, label %446, label %349

349:                                              ; preds = %346
  %350 = ptrtoaddr ptr %347 to i64
  %351 = zext i32 %341 to i64
  %352 = icmp ult i32 %341, 4
  %353 = sub i64 %345, %350
  %354 = icmp ult i64 %353, 32
  %355 = select i1 %352, i1 true, i1 %354
  br i1 %355, label %395, label %356

356:                                              ; preds = %349
  %357 = icmp ult i32 %341, 32
  br i1 %357, label %379, label %358

358:                                              ; preds = %356
  %359 = and i64 %351, 4294967264
  br label %360

360:                                              ; preds = %360, %358
  %361 = phi i64 [ 0, %358 ], [ %368, %360 ]
  %362 = getelementptr i8, ptr %344, i64 %361
  %363 = getelementptr i8, ptr %347, i64 %361
  %364 = getelementptr i8, ptr %363, i64 16
  %365 = load <16 x i8>, ptr %363, align 1, !tbaa !36
  %366 = load <16 x i8>, ptr %364, align 1, !tbaa !36
  %367 = getelementptr i8, ptr %362, i64 16
  store <16 x i8> %365, ptr %362, align 1, !tbaa !36
  store <16 x i8> %366, ptr %367, align 1, !tbaa !36
  %368 = add nuw nsw i64 %361, 32
  %369 = icmp eq i64 %368, %359
  br i1 %369, label %370, label %360, !llvm.loop !90

370:                                              ; preds = %360
  %371 = icmp eq i64 %359, %351
  br i1 %371, label %.loopexit47, label %372

372:                                              ; preds = %370
  %373 = trunc nuw i64 %359 to i32
  %374 = sub i32 %341, %373
  %375 = getelementptr i8, ptr %347, i64 %359
  %376 = getelementptr i8, ptr %344, i64 %359
  %377 = and i64 %351, 28
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %395, label %379, !prof !41

379:                                              ; preds = %372, %356
  %380 = phi i64 [ %359, %372 ], [ 0, %356 ]
  %381 = and i64 %351, 4294967292
  br label %382

382:                                              ; preds = %382, %379
  %383 = phi i64 [ %380, %379 ], [ %387, %382 ]
  %384 = getelementptr i8, ptr %344, i64 %383
  %385 = getelementptr i8, ptr %347, i64 %383
  %386 = load <4 x i8>, ptr %385, align 1, !tbaa !36
  store <4 x i8> %386, ptr %384, align 1, !tbaa !36
  %387 = add nuw i64 %383, 4
  %388 = icmp eq i64 %387, %381
  br i1 %388, label %389, label %382, !llvm.loop !91

389:                                              ; preds = %382
  %390 = getelementptr i8, ptr %344, i64 %381
  %391 = getelementptr i8, ptr %347, i64 %381
  %392 = trunc nuw i64 %381 to i32
  %393 = sub i32 %341, %392
  %394 = icmp eq i64 %381, %351
  br i1 %394, label %.loopexit47, label %395

395:                                              ; preds = %389, %372, %349
  %396 = phi ptr [ %344, %349 ], [ %376, %372 ], [ %390, %389 ]
  %397 = phi ptr [ %347, %349 ], [ %375, %372 ], [ %391, %389 ]
  %398 = phi i32 [ %341, %349 ], [ %374, %372 ], [ %393, %389 ]
  %399 = add i32 %398, -1
  %400 = and i32 %398, 7
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %.loopexit49, label %.preheader48

.preheader48:                                     ; preds = %395, %.preheader48
  %402 = phi ptr [ %407, %.preheader48 ], [ %396, %395 ]
  %403 = phi ptr [ %405, %.preheader48 ], [ %397, %395 ]
  %404 = phi i32 [ %408, %.preheader48 ], [ 0, %395 ]
  %405 = getelementptr inbounds nuw i8, ptr %403, i64 1
  %406 = load i8, ptr %403, align 1, !tbaa !36
  %407 = getelementptr inbounds nuw i8, ptr %402, i64 1
  store i8 %406, ptr %402, align 1, !tbaa !36
  %408 = add nuw nsw i32 %404, 1
  %409 = icmp eq i32 %408, %400
  br i1 %409, label %.loopexit49.loopexit, label %.preheader48, !llvm.loop !92

.loopexit49.loopexit:                             ; preds = %.preheader48
  %410 = and i32 %398, -8
  br label %.loopexit49

.loopexit49:                                      ; preds = %.loopexit49.loopexit, %395
  %411 = phi ptr [ %396, %395 ], [ %407, %.loopexit49.loopexit ]
  %412 = phi ptr [ %397, %395 ], [ %405, %.loopexit49.loopexit ]
  %413 = phi i32 [ %398, %395 ], [ %410, %.loopexit49.loopexit ]
  %414 = icmp ult i32 %399, 7
  br i1 %414, label %.loopexit47, label %.preheader46

.preheader46:                                     ; preds = %.loopexit49, %.preheader46
  %415 = phi ptr [ %441, %.preheader46 ], [ %411, %.loopexit49 ]
  %416 = phi ptr [ %439, %.preheader46 ], [ %412, %.loopexit49 ]
  %417 = phi i32 [ %442, %.preheader46 ], [ %413, %.loopexit49 ]
  %418 = getelementptr inbounds nuw i8, ptr %416, i64 1
  %419 = load i8, ptr %416, align 1, !tbaa !36
  %420 = getelementptr inbounds nuw i8, ptr %415, i64 1
  store i8 %419, ptr %415, align 1, !tbaa !36
  %421 = getelementptr inbounds nuw i8, ptr %416, i64 2
  %422 = load i8, ptr %418, align 1, !tbaa !36
  %423 = getelementptr inbounds nuw i8, ptr %415, i64 2
  store i8 %422, ptr %420, align 1, !tbaa !36
  %424 = getelementptr inbounds nuw i8, ptr %416, i64 3
  %425 = load i8, ptr %421, align 1, !tbaa !36
  %426 = getelementptr inbounds nuw i8, ptr %415, i64 3
  store i8 %425, ptr %423, align 1, !tbaa !36
  %427 = getelementptr inbounds nuw i8, ptr %416, i64 4
  %428 = load i8, ptr %424, align 1, !tbaa !36
  %429 = getelementptr inbounds nuw i8, ptr %415, i64 4
  store i8 %428, ptr %426, align 1, !tbaa !36
  %430 = getelementptr inbounds nuw i8, ptr %416, i64 5
  %431 = load i8, ptr %427, align 1, !tbaa !36
  %432 = getelementptr inbounds nuw i8, ptr %415, i64 5
  store i8 %431, ptr %429, align 1, !tbaa !36
  %433 = getelementptr inbounds nuw i8, ptr %416, i64 6
  %434 = load i8, ptr %430, align 1, !tbaa !36
  %435 = getelementptr inbounds nuw i8, ptr %415, i64 6
  store i8 %434, ptr %432, align 1, !tbaa !36
  %436 = getelementptr inbounds nuw i8, ptr %416, i64 7
  %437 = load i8, ptr %433, align 1, !tbaa !36
  %438 = getelementptr inbounds nuw i8, ptr %415, i64 7
  store i8 %437, ptr %435, align 1, !tbaa !36
  %439 = getelementptr inbounds nuw i8, ptr %416, i64 8
  %440 = load i8, ptr %436, align 1, !tbaa !36
  %441 = getelementptr inbounds nuw i8, ptr %415, i64 8
  store i8 %440, ptr %438, align 1, !tbaa !36
  %442 = add i32 %417, -8
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %.loopexit47, label %.preheader46, !llvm.loop !93

.loopexit47:                                      ; preds = %.preheader46, %.loopexit49, %389, %370
  %444 = load i32, ptr %263, align 8, !tbaa !34
  %445 = load ptr, ptr %269, align 8, !tbaa !29
  br label %446

446:                                              ; preds = %.loopexit47, %346, %342
  %447 = phi ptr [ %445, %.loopexit47 ], [ %344, %346 ], [ %344, %342 ]
  %448 = phi i32 [ %444, %.loopexit47 ], [ %341, %346 ], [ 0, %342 ]
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds nuw i8, ptr %447, i64 %449
  %451 = load i32, ptr %264, align 8, !tbaa !27
  %452 = sub i32 %451, %448
  store i32 0, ptr %270, align 4, !tbaa !17
  %453 = tail call ptr @__errno_location() #16
  store i32 0, ptr %453, align 4, !tbaa !4
  br label %454

454:                                              ; preds = %465, %446
  %455 = phi i32 [ 0, %446 ], [ %466, %465 ]
  %456 = sub i32 %452, %455
  %457 = tail call i32 @llvm.umin.i32(i32 %456, i32 1073741824)
  %458 = load i32, ptr %271, align 4, !tbaa !46
  %459 = zext i32 %455 to i64
  %460 = getelementptr inbounds nuw i8, ptr %450, i64 %459
  %461 = zext nneg i32 %457 to i64
  %462 = tail call i64 @read(i32 noundef %458, ptr noundef %460, i64 noundef %461) #13
  %463 = trunc i64 %462 to i32
  %464 = icmp slt i32 %463, 1
  br i1 %464, label %468, label %465

465:                                              ; preds = %454
  %466 = add i32 %455, %463
  %467 = icmp ult i32 %466, %452
  br i1 %467, label %454, label %.loopexit45, !llvm.loop !47

468:                                              ; preds = %454
  %469 = icmp slt i32 %463, 0
  br i1 %469, label %470, label %477

470:                                              ; preds = %468
  %471 = load i32, ptr %453, align 4, !tbaa !4
  %472 = icmp eq i32 %471, 11
  br i1 %472, label %473, label %.loopexit54

473:                                              ; preds = %470
  store i32 1, ptr %270, align 4, !tbaa !17
  %474 = icmp eq i32 %455, 0
  br i1 %474, label %475, label %.loopexit45

475:                                              ; preds = %473
  %476 = load i32, ptr %453, align 4, !tbaa !4
  br label %.loopexit54

477:                                              ; preds = %468
  store i32 1, ptr %262, align 8, !tbaa !24
  br label %.loopexit45

.loopexit54:                                      ; preds = %470, %475
  %478 = phi i32 [ %476, %475 ], [ %471, %470 ]
  %479 = tail call ptr @strerror(i32 noundef %478) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %479) #13
  br label %.loopexit53

.loopexit45:                                      ; preds = %465, %477, %473
  %480 = phi i32 [ %455, %473 ], [ %455, %477 ], [ %466, %465 ]
  %481 = load i32, ptr %263, align 8, !tbaa !34
  %482 = add i32 %481, %480
  store i32 %482, ptr %263, align 8, !tbaa !34
  %483 = load ptr, ptr %269, align 8, !tbaa !29
  store ptr %483, ptr %268, align 8, !tbaa !35
  br label %484

484:                                              ; preds = %.loopexit45, %338
  %485 = phi i32 [ %482, %.loopexit45 ], [ %341, %338 ]
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %516, label %487

487:                                              ; preds = %484
  %488 = load i32, ptr %270, align 4, !tbaa !17
  %489 = icmp ne i32 %488, 0
  %490 = icmp ult i32 %485, 4
  %491 = and i1 %490, %489
  br i1 %491, label %516, label %492

492:                                              ; preds = %487
  %493 = icmp ugt i32 %485, 3
  %494 = load ptr, ptr %268, align 8, !tbaa !35
  br i1 %493, label %495, label %512

495:                                              ; preds = %492
  %496 = load i8, ptr %494, align 1, !tbaa !36
  %497 = icmp eq i8 %496, 31
  br i1 %497, label %498, label %512

498:                                              ; preds = %495
  %499 = getelementptr inbounds nuw i8, ptr %494, i64 1
  %500 = load i8, ptr %499, align 1, !tbaa !36
  %501 = icmp eq i8 %500, -117
  br i1 %501, label %502, label %512

502:                                              ; preds = %498
  %503 = getelementptr inbounds nuw i8, ptr %494, i64 2
  %504 = load i8, ptr %503, align 1, !tbaa !36
  %505 = icmp eq i8 %504, 8
  br i1 %505, label %506, label %512

506:                                              ; preds = %502
  %507 = getelementptr inbounds nuw i8, ptr %494, i64 3
  %508 = load i8, ptr %507, align 1, !tbaa !36
  %509 = icmp ult i8 %508, 32
  br i1 %509, label %510, label %512

510:                                              ; preds = %506
  %511 = tail call i32 @inflateReset(ptr noundef nonnull %268) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %272, align 4, !tbaa !33
  store i32 0, ptr %275, align 8, !tbaa !32
  br label %648

512:                                              ; preds = %506, %502, %498, %495, %492
  %513 = load ptr, ptr %266, align 8, !tbaa !30
  store ptr %513, ptr %260, align 8, !tbaa !20
  %514 = zext i32 %485 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %513, ptr align 1 %494, i64 %514, i1 false)
  %515 = load i32, ptr %263, align 8, !tbaa !34
  store i32 %515, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %263, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %650

516:                                              ; preds = %487, %484, %331
  %517 = load i32, ptr %9, align 8, !tbaa !26
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %.loopexit55, label %648

519:                                              ; preds = %301
  %520 = load ptr, ptr %266, align 8, !tbaa !30
  %521 = load i32, ptr %264, align 8, !tbaa !27
  %522 = shl i32 %521, 1
  store i32 0, ptr %270, align 4, !tbaa !17
  %523 = tail call ptr @__errno_location() #16
  store i32 0, ptr %523, align 4, !tbaa !4
  store i32 0, ptr %1, align 8, !tbaa !4
  br label %524

524:                                              ; preds = %535, %519
  %525 = phi i32 [ %537, %535 ], [ 0, %519 ]
  %526 = sub i32 %522, %525
  %527 = tail call i32 @llvm.umin.i32(i32 %526, i32 1073741824)
  %528 = load i32, ptr %271, align 4, !tbaa !46
  %529 = zext i32 %525 to i64
  %530 = getelementptr inbounds nuw i8, ptr %520, i64 %529
  %531 = zext nneg i32 %527 to i64
  %532 = tail call i64 @read(i32 noundef %528, ptr noundef %530, i64 noundef %531) #13
  %533 = trunc i64 %532 to i32
  %534 = icmp slt i32 %533, 1
  br i1 %534, label %539, label %535

535:                                              ; preds = %524
  %536 = load i32, ptr %1, align 4, !tbaa !4
  %537 = add i32 %536, %533
  store i32 %537, ptr %1, align 4, !tbaa !4
  %538 = icmp ult i32 %537, %522
  br i1 %538, label %524, label %.loopexit52, !llvm.loop !47

539:                                              ; preds = %524
  %540 = icmp slt i32 %533, 0
  br i1 %540, label %541, label %549

541:                                              ; preds = %539
  %542 = load i32, ptr %523, align 4, !tbaa !4
  %543 = icmp eq i32 %542, 11
  br i1 %543, label %544, label %.loopexit56

544:                                              ; preds = %541
  store i32 1, ptr %270, align 4, !tbaa !17
  %545 = load i32, ptr %1, align 4, !tbaa !4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %.loopexit52

547:                                              ; preds = %544
  %548 = load i32, ptr %523, align 4, !tbaa !4
  br label %.loopexit56

549:                                              ; preds = %539
  store i32 1, ptr %262, align 8, !tbaa !24
  br label %.loopexit52

.loopexit56:                                      ; preds = %541, %547
  %550 = phi i32 [ %548, %547 ], [ %542, %541 ]
  %551 = tail call ptr @strerror(i32 noundef %550) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %551) #13
  br label %.loopexit53

.loopexit52:                                      ; preds = %535, %549, %544
  %552 = load ptr, ptr %266, align 8, !tbaa !30
  store ptr %552, ptr %260, align 8, !tbaa !20
  br label %.loopexit55

553:                                              ; preds = %301
  %554 = load i32, ptr %264, align 8, !tbaa !27
  %555 = shl i32 %554, 1
  store i32 %555, ptr %265, align 8, !tbaa !48
  %556 = load ptr, ptr %266, align 8, !tbaa !30
  store ptr %556, ptr %267, align 8, !tbaa !49
  br label %557

557:                                              ; preds = %628, %553
  %558 = phi i32 [ 0, %553 ], [ %607, %628 ]
  %559 = load i32, ptr %263, align 8, !tbaa !34
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %606

561:                                              ; preds = %557
  %562 = load i32, ptr %249, align 8, !tbaa !16
  switch i32 %562, label %.loopexit50 [
    i32 0, label %563
    i32 -5, label %563
  ]

563:                                              ; preds = %561, %561
  %564 = load i32, ptr %262, align 8, !tbaa !24
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %602

566:                                              ; preds = %563
  %567 = load ptr, ptr %269, align 8, !tbaa !29
  %568 = load i32, ptr %264, align 8, !tbaa !27
  store i32 0, ptr %270, align 4, !tbaa !17
  %569 = tail call ptr @__errno_location() #16
  store i32 0, ptr %569, align 4, !tbaa !4
  br label %570

570:                                              ; preds = %581, %566
  %571 = phi i32 [ 0, %566 ], [ %582, %581 ]
  %572 = sub i32 %568, %571
  %573 = tail call i32 @llvm.umin.i32(i32 %572, i32 1073741824)
  %574 = load i32, ptr %271, align 4, !tbaa !46
  %575 = zext i32 %571 to i64
  %576 = getelementptr inbounds nuw i8, ptr %567, i64 %575
  %577 = zext nneg i32 %573 to i64
  %578 = tail call i64 @read(i32 noundef %574, ptr noundef %576, i64 noundef %577) #13
  %579 = trunc i64 %578 to i32
  %580 = icmp slt i32 %579, 1
  br i1 %580, label %584, label %581

581:                                              ; preds = %570
  %582 = add i32 %571, %579
  %583 = icmp ult i32 %582, %568
  br i1 %583, label %570, label %.loopexit, !llvm.loop !47

584:                                              ; preds = %570
  %585 = icmp slt i32 %579, 0
  br i1 %585, label %586, label %593

586:                                              ; preds = %584
  %587 = load i32, ptr %569, align 4, !tbaa !4
  %588 = icmp eq i32 %587, 11
  br i1 %588, label %589, label %.loopexit51

589:                                              ; preds = %586
  store i32 1, ptr %270, align 4, !tbaa !17
  %590 = icmp eq i32 %571, 0
  br i1 %590, label %591, label %.loopexit

591:                                              ; preds = %589
  %592 = load i32, ptr %569, align 4, !tbaa !4
  br label %.loopexit51

593:                                              ; preds = %584
  store i32 1, ptr %262, align 8, !tbaa !24
  br label %.loopexit

.loopexit51:                                      ; preds = %586, %591
  %594 = phi i32 [ %592, %591 ], [ %587, %586 ]
  %595 = tail call ptr @strerror(i32 noundef %594) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %595) #13
  %596 = load i32, ptr %249, align 8, !tbaa !16
  br label %.loopexit50

.loopexit:                                        ; preds = %581, %593, %589
  %597 = phi i32 [ %571, %589 ], [ %571, %593 ], [ %582, %581 ]
  %598 = load i32, ptr %263, align 8, !tbaa !34
  %599 = add i32 %598, %597
  store i32 %599, ptr %263, align 8, !tbaa !34
  %600 = load ptr, ptr %269, align 8, !tbaa !29
  store ptr %600, ptr %268, align 8, !tbaa !35
  %601 = icmp eq i32 %599, 0
  br i1 %601, label %602, label %606

602:                                              ; preds = %.loopexit, %563
  %603 = load i32, ptr %270, align 4, !tbaa !17
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %.loopexit50

605:                                              ; preds = %602
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit50

606:                                              ; preds = %.loopexit, %557
  %607 = tail call i32 @inflate(ptr noundef nonnull %268, i32 noundef 0) #13
  %608 = load i32, ptr %265, align 8, !tbaa !48
  %609 = icmp ult i32 %608, %555
  br i1 %609, label %610, label %611

610:                                              ; preds = %606
  store i32 0, ptr %272, align 4, !tbaa !33
  br label %611

611:                                              ; preds = %610, %606
  switch i32 %607, label %628 [
    i32 -2, label %612
    i32 2, label %612
    i32 -4, label %613
    i32 -3, label %614
  ]

612:                                              ; preds = %611, %611
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit50

613:                                              ; preds = %611
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %632

614:                                              ; preds = %611
  %615 = load i32, ptr %272, align 4, !tbaa !33
  %616 = icmp eq i32 %615, 1
  br i1 %616, label %617, label %623

617:                                              ; preds = %614
  store i32 0, ptr %263, align 8, !tbaa !34
  store i32 1, ptr %262, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  %618 = sub i32 %555, %608
  store i32 %618, ptr %1, align 8, !tbaa !19
  %619 = load ptr, ptr %267, align 8, !tbaa !49
  %620 = zext i32 %618 to i64
  %621 = sub nsw i64 0, %620
  %622 = getelementptr inbounds i8, ptr %619, i64 %621
  store ptr %622, ptr %260, align 8, !tbaa !20
  br label %648

623:                                              ; preds = %614
  %624 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %625 = load ptr, ptr %624, align 8, !tbaa !50
  %626 = icmp eq ptr %625, null
  %627 = select i1 %626, ptr @.str.6, ptr %625
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %627) #13
  br label %632

628:                                              ; preds = %611
  %629 = icmp ne i32 %608, 0
  %630 = icmp ne i32 %607, 1
  %631 = select i1 %629, i1 %630, i1 false
  br i1 %631, label %557, label %.loopexit50, !llvm.loop !51

632:                                              ; preds = %623, %613
  %633 = load i32, ptr %265, align 8, !tbaa !48
  %634 = sub i32 %555, %633
  store i32 %634, ptr %1, align 8, !tbaa !19
  %635 = load ptr, ptr %267, align 8, !tbaa !49
  %636 = zext i32 %634 to i64
  %637 = sub nsw i64 0, %636
  %638 = getelementptr inbounds i8, ptr %635, i64 %637
  store ptr %638, ptr %260, align 8, !tbaa !20
  br label %.loopexit53

.loopexit50:                                      ; preds = %628, %561, %612, %605, %602, %.loopexit51
  %639 = phi i32 [ %596, %.loopexit51 ], [ %558, %602 ], [ %558, %605 ], [ %607, %612 ], [ %607, %628 ], [ %562, %561 ]
  %640 = load i32, ptr %265, align 8, !tbaa !48
  %641 = sub i32 %555, %640
  store i32 %641, ptr %1, align 8, !tbaa !19
  %642 = load ptr, ptr %267, align 8, !tbaa !49
  %643 = zext i32 %641 to i64
  %644 = sub nsw i64 0, %643
  %645 = getelementptr inbounds i8, ptr %642, i64 %644
  store ptr %645, ptr %260, align 8, !tbaa !20
  switch i32 %639, label %.loopexit53 [
    i32 1, label %646
    i32 0, label %648
  ]

646:                                              ; preds = %.loopexit50
  store i32 0, ptr %272, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %648

647:                                              ; preds = %301
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit53

648:                                              ; preds = %646, %.loopexit50, %617, %516, %510
  %649 = load i32, ptr %1, align 8, !tbaa !19
  br label %650

650:                                              ; preds = %648, %512
  %651 = phi i32 [ %649, %648 ], [ %515, %512 ]
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %653, label %.loopexit55

653:                                              ; preds = %650
  %654 = load i32, ptr %262, align 8, !tbaa !24
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %.backedge, label %656

656:                                              ; preds = %653
  %657 = load i32, ptr %263, align 8, !tbaa !34
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %.loopexit55, label %.backedge

.backedge:                                        ; preds = %656, %653
  br label %301, !llvm.loop !52

.loopexit55:                                      ; preds = %656, %650, %516, %.loopexit52
  %659 = load i64, ptr %256, align 8, !tbaa !18
  br label %660

660:                                              ; preds = %.loopexit55, %292
  %661 = phi i64 [ %659, %.loopexit55 ], [ %294, %292 ]
  %662 = icmp eq i64 %661, 0
  br i1 %662, label %663, label %276, !llvm.loop !53

663:                                              ; preds = %660, %298
  %664 = icmp slt i32 %0, 0
  br i1 %664, label %.loopexit53, label %667

665:                                              ; preds = %255
  %666 = icmp slt i32 %0, 0
  br i1 %666, label %.loopexit53, label %667

667:                                              ; preds = %665, %663
  %668 = load i32, ptr %1, align 8, !tbaa !19
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %689

670:                                              ; preds = %667
  store i32 1, ptr %1, align 8, !tbaa !19
  %671 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %672 = load ptr, ptr %671, align 8, !tbaa !30
  %673 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %674 = load i32, ptr %673, align 8, !tbaa !27
  %675 = shl i32 %674, 1
  %676 = zext i32 %675 to i64
  %677 = getelementptr inbounds nuw i8, ptr %672, i64 %676
  %678 = getelementptr inbounds i8, ptr %677, i64 -1
  %679 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %678, ptr %679, align 8, !tbaa !20
  %680 = trunc i32 %0 to i8
  store i8 %680, ptr %678, align 1, !tbaa !36
  %681 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %682 = load i64, ptr %681, align 8, !tbaa !21
  %683 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %682, i64 -1)
  %684 = extractvalue { i64, i1 } %683, 1, !nosanitize !22
  br i1 %684, label %685, label %686, !prof !23, !nosanitize !22

685:                                              ; preds = %715, %670
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

686:                                              ; preds = %670
  %687 = extractvalue { i64, i1 } %683, 0, !nosanitize !22
  store i64 %687, ptr %681, align 8, !tbaa !21
  %688 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %688, align 4, !tbaa !61
  br label %.loopexit53

689:                                              ; preds = %667
  %690 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %691 = load i32, ptr %690, align 8, !tbaa !27
  %692 = shl i32 %691, 1
  %693 = icmp eq i32 %668, %692
  br i1 %693, label %694, label %695

694:                                              ; preds = %689
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %.loopexit53

695:                                              ; preds = %689
  %696 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %697 = load ptr, ptr %696, align 8, !tbaa !20
  %698 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %699 = load ptr, ptr %698, align 8, !tbaa !30
  %700 = icmp eq ptr %697, %699
  br i1 %700, label %.preheader, label %715

.preheader:                                       ; preds = %695
  %701 = zext i32 %668 to i64
  %702 = getelementptr inbounds nuw i8, ptr %699, i64 %701
  %703 = zext i32 %692 to i64
  %704 = getelementptr inbounds nuw i8, ptr %699, i64 %703
  br label %705

705:                                              ; preds = %.preheader, %705
  %706 = phi ptr [ %710, %705 ], [ %704, %.preheader ]
  %707 = phi ptr [ %708, %705 ], [ %702, %.preheader ]
  %708 = getelementptr inbounds i8, ptr %707, i64 -1
  %709 = load i8, ptr %708, align 1, !tbaa !36
  %710 = getelementptr inbounds i8, ptr %706, i64 -1
  store i8 %709, ptr %710, align 1, !tbaa !36
  %711 = load ptr, ptr %698, align 8, !tbaa !30
  %712 = icmp ugt ptr %708, %711
  br i1 %712, label %705, label %713, !llvm.loop !94

713:                                              ; preds = %705
  %714 = load i32, ptr %1, align 8, !tbaa !19
  br label %715

715:                                              ; preds = %713, %695
  %716 = phi ptr [ %697, %695 ], [ %710, %713 ]
  %717 = phi i32 [ %668, %695 ], [ %714, %713 ]
  %718 = add i32 %717, 1
  store i32 %718, ptr %1, align 8, !tbaa !19
  %719 = getelementptr inbounds i8, ptr %716, i64 -1
  store ptr %719, ptr %696, align 8, !tbaa !20
  %720 = trunc i32 %0 to i8
  store i8 %720, ptr %719, align 1, !tbaa !36
  %721 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %722 = load i64, ptr %721, align 8, !tbaa !21
  %723 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %722, i64 -1)
  %724 = extractvalue { i64, i1 } %723, 1, !nosanitize !22
  br i1 %724, label %685, label %725, !prof !23, !nosanitize !22

725:                                              ; preds = %715
  %726 = extractvalue { i64, i1 } %723, 0, !nosanitize !22
  store i64 %726, ptr %721, align 8, !tbaa !21
  %727 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %727, align 4, !tbaa !61
  br label %.loopexit53

.loopexit53:                                      ; preds = %.loopexit50, %336, %725, %694, %686, %665, %663, %647, %632, %.loopexit56, %.loopexit54, %322, %317, %251, %4, %2
  %728 = phi i32 [ -1, %4 ], [ -1, %2 ], [ -1, %251 ], [ -1, %663 ], [ %0, %686 ], [ -1, %694 ], [ %0, %725 ], [ -1, %665 ], [ -1, %632 ], [ -1, %322 ], [ -1, %647 ], [ -1, %.loopexit56 ], [ -1, %.loopexit54 ], [ -1, %317 ], [ -1, %336 ], [ -1, %.loopexit50 ]
  ret i32 %728
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %.loopexit81, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !8
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %.loopexit81

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
  br i1 %19, label %.loopexit81, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %.loopexit84, label %24

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

42:                                               ; preds = %426, %24
  %43 = phi i64 [ %427, %426 ], [ %22, %24 ]
  %44 = load i32, ptr %0, align 8, !tbaa !19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

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
  %60 = sub i64 %43, %52
  store i64 %60, ptr %21, align 8, !tbaa !18
  br label %426

61:                                               ; preds = %42
  %62 = load i32, ptr %27, align 8, !tbaa !24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %.preheader629, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %28, align 8, !tbaa !25
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %.loopexit84, label %.preheader629

.preheader629:                                    ; preds = %64, %61
  br label %67

67:                                               ; preds = %.backedge, %.preheader629
  %68 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %68, label %413 [
    i32 0, label %69
    i32 1, label %285
    i32 2, label %319
  ]

69:                                               ; preds = %67
  %70 = load i32, ptr %30, align 8, !tbaa !27
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i32, ptr %39, align 4, !tbaa !28
  %74 = zext i32 %73 to i64
  %75 = tail call noalias ptr @malloc(i64 noundef %74) #15
  store ptr %75, ptr %35, align 8, !tbaa !29
  %76 = load i32, ptr %39, align 4, !tbaa !28
  %77 = shl i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = tail call noalias ptr @malloc(i64 noundef %78) #15
  store ptr %79, ptr %32, align 8, !tbaa !30
  %80 = icmp eq ptr %75, null
  %81 = icmp eq ptr %79, null
  %82 = or i1 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  tail call void @free(ptr noundef %79) #13
  tail call void @free(ptr noundef %75) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit81

84:                                               ; preds = %72
  %85 = load i32, ptr %39, align 4, !tbaa !28
  store i32 %85, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %86 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %89) #13
  %90 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %90) #13
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit81

91:                                               ; preds = %84, %69
  %92 = load i32, ptr %41, align 8, !tbaa !32
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, ptr %38, align 4, !tbaa !33
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94, %91
  %98 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  %99 = load i32, ptr %38, align 4, !tbaa !33
  %100 = icmp ne i32 %99, -1
  %101 = zext i1 %100 to i32
  store i32 %101, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !32
  br label %282

102:                                              ; preds = %94
  %103 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %103, label %.loopexit81 [
    i32 0, label %104
    i32 -5, label %104
  ]

104:                                              ; preds = %102, %102
  %105 = load i32, ptr %27, align 8, !tbaa !24
  %106 = icmp eq i32 %105, 0
  %107 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %106, label %108, label %250

108:                                              ; preds = %104
  %109 = icmp eq i32 %107, 0
  %110 = load ptr, ptr %35, align 8, !tbaa !29
  %111 = ptrtoaddr ptr %110 to i64
  br i1 %109, label %212, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %34, align 8, !tbaa !35
  %114 = icmp eq ptr %113, %110
  br i1 %114, label %212, label %115

115:                                              ; preds = %112
  %116 = ptrtoaddr ptr %113 to i64
  %117 = zext i32 %107 to i64
  %118 = icmp ult i32 %107, 4
  %119 = sub i64 %111, %116
  %120 = icmp ult i64 %119, 32
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %161, label %122

122:                                              ; preds = %115
  %123 = icmp ult i32 %107, 32
  br i1 %123, label %145, label %124

124:                                              ; preds = %122
  %125 = and i64 %117, 4294967264
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i64 [ 0, %124 ], [ %134, %126 ]
  %128 = getelementptr i8, ptr %110, i64 %127
  %129 = getelementptr i8, ptr %113, i64 %127
  %130 = getelementptr i8, ptr %129, i64 16
  %131 = load <16 x i8>, ptr %129, align 1, !tbaa !36
  %132 = load <16 x i8>, ptr %130, align 1, !tbaa !36
  %133 = getelementptr i8, ptr %128, i64 16
  store <16 x i8> %131, ptr %128, align 1, !tbaa !36
  store <16 x i8> %132, ptr %133, align 1, !tbaa !36
  %134 = add nuw nsw i64 %127, 32
  %135 = icmp eq i64 %134, %125
  br i1 %135, label %136, label %126, !llvm.loop !95

136:                                              ; preds = %126
  %137 = icmp eq i64 %125, %117
  br i1 %137, label %.loopexit74, label %138

138:                                              ; preds = %136
  %139 = trunc nuw i64 %125 to i32
  %140 = sub i32 %107, %139
  %141 = getelementptr i8, ptr %113, i64 %125
  %142 = getelementptr i8, ptr %110, i64 %125
  %143 = and i64 %117, 28
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %161, label %145, !prof !41

145:                                              ; preds = %138, %122
  %146 = phi i64 [ %125, %138 ], [ 0, %122 ]
  %147 = and i64 %117, 4294967292
  br label %148

148:                                              ; preds = %148, %145
  %149 = phi i64 [ %146, %145 ], [ %153, %148 ]
  %150 = getelementptr i8, ptr %110, i64 %149
  %151 = getelementptr i8, ptr %113, i64 %149
  %152 = load <4 x i8>, ptr %151, align 1, !tbaa !36
  store <4 x i8> %152, ptr %150, align 1, !tbaa !36
  %153 = add nuw i64 %149, 4
  %154 = icmp eq i64 %153, %147
  br i1 %154, label %155, label %148, !llvm.loop !96

155:                                              ; preds = %148
  %156 = getelementptr i8, ptr %110, i64 %147
  %157 = getelementptr i8, ptr %113, i64 %147
  %158 = trunc nuw i64 %147 to i32
  %159 = sub i32 %107, %158
  %160 = icmp eq i64 %147, %117
  br i1 %160, label %.loopexit74, label %161

161:                                              ; preds = %155, %138, %115
  %162 = phi ptr [ %110, %115 ], [ %142, %138 ], [ %156, %155 ]
  %163 = phi ptr [ %113, %115 ], [ %141, %138 ], [ %157, %155 ]
  %164 = phi i32 [ %107, %115 ], [ %140, %138 ], [ %159, %155 ]
  %165 = add i32 %164, -1
  %166 = and i32 %164, 7
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %.loopexit76, label %.preheader75

.preheader75:                                     ; preds = %161, %.preheader75
  %168 = phi ptr [ %173, %.preheader75 ], [ %162, %161 ]
  %169 = phi ptr [ %171, %.preheader75 ], [ %163, %161 ]
  %170 = phi i32 [ %174, %.preheader75 ], [ 0, %161 ]
  %171 = getelementptr inbounds nuw i8, ptr %169, i64 1
  %172 = load i8, ptr %169, align 1, !tbaa !36
  %173 = getelementptr inbounds nuw i8, ptr %168, i64 1
  store i8 %172, ptr %168, align 1, !tbaa !36
  %174 = add nuw nsw i32 %170, 1
  %175 = icmp eq i32 %174, %166
  br i1 %175, label %.loopexit76.loopexit, label %.preheader75, !llvm.loop !97

.loopexit76.loopexit:                             ; preds = %.preheader75
  %176 = and i32 %164, -8
  br label %.loopexit76

.loopexit76:                                      ; preds = %.loopexit76.loopexit, %161
  %177 = phi ptr [ %162, %161 ], [ %173, %.loopexit76.loopexit ]
  %178 = phi ptr [ %163, %161 ], [ %171, %.loopexit76.loopexit ]
  %179 = phi i32 [ %164, %161 ], [ %176, %.loopexit76.loopexit ]
  %180 = icmp ult i32 %165, 7
  br i1 %180, label %.loopexit74, label %.preheader73

.preheader73:                                     ; preds = %.loopexit76, %.preheader73
  %181 = phi ptr [ %207, %.preheader73 ], [ %177, %.loopexit76 ]
  %182 = phi ptr [ %205, %.preheader73 ], [ %178, %.loopexit76 ]
  %183 = phi i32 [ %208, %.preheader73 ], [ %179, %.loopexit76 ]
  %184 = getelementptr inbounds nuw i8, ptr %182, i64 1
  %185 = load i8, ptr %182, align 1, !tbaa !36
  %186 = getelementptr inbounds nuw i8, ptr %181, i64 1
  store i8 %185, ptr %181, align 1, !tbaa !36
  %187 = getelementptr inbounds nuw i8, ptr %182, i64 2
  %188 = load i8, ptr %184, align 1, !tbaa !36
  %189 = getelementptr inbounds nuw i8, ptr %181, i64 2
  store i8 %188, ptr %186, align 1, !tbaa !36
  %190 = getelementptr inbounds nuw i8, ptr %182, i64 3
  %191 = load i8, ptr %187, align 1, !tbaa !36
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 3
  store i8 %191, ptr %189, align 1, !tbaa !36
  %193 = getelementptr inbounds nuw i8, ptr %182, i64 4
  %194 = load i8, ptr %190, align 1, !tbaa !36
  %195 = getelementptr inbounds nuw i8, ptr %181, i64 4
  store i8 %194, ptr %192, align 1, !tbaa !36
  %196 = getelementptr inbounds nuw i8, ptr %182, i64 5
  %197 = load i8, ptr %193, align 1, !tbaa !36
  %198 = getelementptr inbounds nuw i8, ptr %181, i64 5
  store i8 %197, ptr %195, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %182, i64 6
  %200 = load i8, ptr %196, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %181, i64 6
  store i8 %200, ptr %198, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %182, i64 7
  %203 = load i8, ptr %199, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %181, i64 7
  store i8 %203, ptr %201, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %182, i64 8
  %206 = load i8, ptr %202, align 1, !tbaa !36
  %207 = getelementptr inbounds nuw i8, ptr %181, i64 8
  store i8 %206, ptr %204, align 1, !tbaa !36
  %208 = add i32 %183, -8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %.loopexit74, label %.preheader73, !llvm.loop !98

.loopexit74:                                      ; preds = %.preheader73, %.loopexit76, %155, %136
  %210 = load i32, ptr %28, align 8, !tbaa !34
  %211 = load ptr, ptr %35, align 8, !tbaa !29
  br label %212

212:                                              ; preds = %.loopexit74, %112, %108
  %213 = phi ptr [ %211, %.loopexit74 ], [ %110, %112 ], [ %110, %108 ]
  %214 = phi i32 [ %210, %.loopexit74 ], [ %107, %112 ], [ 0, %108 ]
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 %215
  %217 = load i32, ptr %30, align 8, !tbaa !27
  %218 = sub i32 %217, %214
  store i32 0, ptr %36, align 4, !tbaa !17
  %219 = tail call ptr @__errno_location() #16
  store i32 0, ptr %219, align 4, !tbaa !4
  br label %220

220:                                              ; preds = %231, %212
  %221 = phi i32 [ 0, %212 ], [ %232, %231 ]
  %222 = sub i32 %218, %221
  %223 = tail call i32 @llvm.umin.i32(i32 %222, i32 1073741824)
  %224 = load i32, ptr %37, align 4, !tbaa !46
  %225 = zext i32 %221 to i64
  %226 = getelementptr inbounds nuw i8, ptr %216, i64 %225
  %227 = zext nneg i32 %223 to i64
  %228 = tail call i64 @read(i32 noundef %224, ptr noundef %226, i64 noundef %227) #13
  %229 = trunc i64 %228 to i32
  %230 = icmp slt i32 %229, 1
  br i1 %230, label %234, label %231

231:                                              ; preds = %220
  %232 = add i32 %221, %229
  %233 = icmp ult i32 %232, %218
  br i1 %233, label %220, label %.loopexit72, !llvm.loop !47

234:                                              ; preds = %220
  %235 = icmp slt i32 %229, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %234
  %237 = load i32, ptr %219, align 4, !tbaa !4
  %238 = icmp eq i32 %237, 11
  br i1 %238, label %239, label %.loopexit82

239:                                              ; preds = %236
  store i32 1, ptr %36, align 4, !tbaa !17
  %240 = icmp eq i32 %221, 0
  br i1 %240, label %241, label %.loopexit72

241:                                              ; preds = %239
  %242 = load i32, ptr %219, align 4, !tbaa !4
  br label %.loopexit82

243:                                              ; preds = %234
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit72

.loopexit82:                                      ; preds = %236, %241
  %244 = phi i32 [ %242, %241 ], [ %237, %236 ]
  %245 = tail call ptr @strerror(i32 noundef %244) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %245) #13
  br label %.loopexit81

.loopexit72:                                      ; preds = %231, %243, %239
  %246 = phi i32 [ %221, %239 ], [ %221, %243 ], [ %232, %231 ]
  %247 = load i32, ptr %28, align 8, !tbaa !34
  %248 = add i32 %247, %246
  store i32 %248, ptr %28, align 8, !tbaa !34
  %249 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %249, ptr %34, align 8, !tbaa !35
  br label %250

250:                                              ; preds = %.loopexit72, %104
  %251 = phi i32 [ %248, %.loopexit72 ], [ %107, %104 ]
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %282, label %253

253:                                              ; preds = %250
  %254 = load i32, ptr %36, align 4, !tbaa !17
  %255 = icmp ne i32 %254, 0
  %256 = icmp ult i32 %251, 4
  %257 = and i1 %256, %255
  br i1 %257, label %282, label %258

258:                                              ; preds = %253
  %259 = icmp ugt i32 %251, 3
  %260 = load ptr, ptr %34, align 8, !tbaa !35
  br i1 %259, label %261, label %278

261:                                              ; preds = %258
  %262 = load i8, ptr %260, align 1, !tbaa !36
  %263 = icmp eq i8 %262, 31
  br i1 %263, label %264, label %278

264:                                              ; preds = %261
  %265 = getelementptr inbounds nuw i8, ptr %260, i64 1
  %266 = load i8, ptr %265, align 1, !tbaa !36
  %267 = icmp eq i8 %266, -117
  br i1 %267, label %268, label %278

268:                                              ; preds = %264
  %269 = getelementptr inbounds nuw i8, ptr %260, i64 2
  %270 = load i8, ptr %269, align 1, !tbaa !36
  %271 = icmp eq i8 %270, 8
  br i1 %271, label %272, label %278

272:                                              ; preds = %268
  %273 = getelementptr inbounds nuw i8, ptr %260, i64 3
  %274 = load i8, ptr %273, align 1, !tbaa !36
  %275 = icmp ult i8 %274, 32
  br i1 %275, label %276, label %278

276:                                              ; preds = %272
  %277 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !32
  br label %414

278:                                              ; preds = %272, %268, %264, %261, %258
  %279 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %279, ptr %25, align 8, !tbaa !20
  %280 = zext i32 %251 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %279, ptr align 1 %260, i64 %280, i1 false)
  %281 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %281, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %416

282:                                              ; preds = %253, %250, %97
  %283 = load i32, ptr %29, align 8, !tbaa !26
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %.loopexit83, label %414

285:                                              ; preds = %67
  %286 = load ptr, ptr %32, align 8, !tbaa !30
  %287 = load i32, ptr %30, align 8, !tbaa !27
  %288 = shl i32 %287, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %289 = tail call ptr @__errno_location() #16
  store i32 0, ptr %289, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %290

290:                                              ; preds = %301, %285
  %291 = phi i32 [ %303, %301 ], [ 0, %285 ]
  %292 = sub i32 %288, %291
  %293 = tail call i32 @llvm.umin.i32(i32 %292, i32 1073741824)
  %294 = load i32, ptr %37, align 4, !tbaa !46
  %295 = zext i32 %291 to i64
  %296 = getelementptr inbounds nuw i8, ptr %286, i64 %295
  %297 = zext nneg i32 %293 to i64
  %298 = tail call i64 @read(i32 noundef %294, ptr noundef %296, i64 noundef %297) #13
  %299 = trunc i64 %298 to i32
  %300 = icmp slt i32 %299, 1
  br i1 %300, label %305, label %301

301:                                              ; preds = %290
  %302 = load i32, ptr %0, align 4, !tbaa !4
  %303 = add i32 %302, %299
  store i32 %303, ptr %0, align 4, !tbaa !4
  %304 = icmp ult i32 %303, %288
  br i1 %304, label %290, label %.loopexit80, !llvm.loop !47

305:                                              ; preds = %290
  %306 = icmp slt i32 %299, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %305
  %308 = load i32, ptr %289, align 4, !tbaa !4
  %309 = icmp eq i32 %308, 11
  br i1 %309, label %310, label %.loopexit85

310:                                              ; preds = %307
  store i32 1, ptr %36, align 4, !tbaa !17
  %311 = load i32, ptr %0, align 4, !tbaa !4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %.loopexit80

313:                                              ; preds = %310
  %314 = load i32, ptr %289, align 4, !tbaa !4
  br label %.loopexit85

315:                                              ; preds = %305
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit80

.loopexit85:                                      ; preds = %307, %313
  %316 = phi i32 [ %314, %313 ], [ %308, %307 ]
  %317 = tail call ptr @strerror(i32 noundef %316) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %317) #13
  br label %.loopexit81

.loopexit80:                                      ; preds = %301, %315, %310
  %318 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %318, ptr %25, align 8, !tbaa !20
  br label %.loopexit83

319:                                              ; preds = %67
  %320 = load i32, ptr %30, align 8, !tbaa !27
  %321 = shl i32 %320, 1
  store i32 %321, ptr %31, align 8, !tbaa !48
  %322 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %322, ptr %33, align 8, !tbaa !49
  br label %323

323:                                              ; preds = %394, %319
  %324 = phi i32 [ 0, %319 ], [ %373, %394 ]
  %325 = load i32, ptr %28, align 8, !tbaa !34
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %372

327:                                              ; preds = %323
  %328 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %328, label %.loopexit77 [
    i32 0, label %329
    i32 -5, label %329
  ]

329:                                              ; preds = %327, %327
  %330 = load i32, ptr %27, align 8, !tbaa !24
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %368

332:                                              ; preds = %329
  %333 = load ptr, ptr %35, align 8, !tbaa !29
  %334 = load i32, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %36, align 4, !tbaa !17
  %335 = tail call ptr @__errno_location() #16
  store i32 0, ptr %335, align 4, !tbaa !4
  br label %336

336:                                              ; preds = %347, %332
  %337 = phi i32 [ 0, %332 ], [ %348, %347 ]
  %338 = sub i32 %334, %337
  %339 = tail call i32 @llvm.umin.i32(i32 %338, i32 1073741824)
  %340 = load i32, ptr %37, align 4, !tbaa !46
  %341 = zext i32 %337 to i64
  %342 = getelementptr inbounds nuw i8, ptr %333, i64 %341
  %343 = zext nneg i32 %339 to i64
  %344 = tail call i64 @read(i32 noundef %340, ptr noundef %342, i64 noundef %343) #13
  %345 = trunc i64 %344 to i32
  %346 = icmp slt i32 %345, 1
  br i1 %346, label %350, label %347

347:                                              ; preds = %336
  %348 = add i32 %337, %345
  %349 = icmp ult i32 %348, %334
  br i1 %349, label %336, label %.loopexit71, !llvm.loop !47

350:                                              ; preds = %336
  %351 = icmp slt i32 %345, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %350
  %353 = load i32, ptr %335, align 4, !tbaa !4
  %354 = icmp eq i32 %353, 11
  br i1 %354, label %355, label %.loopexit79

355:                                              ; preds = %352
  store i32 1, ptr %36, align 4, !tbaa !17
  %356 = icmp eq i32 %337, 0
  br i1 %356, label %357, label %.loopexit71

357:                                              ; preds = %355
  %358 = load i32, ptr %335, align 4, !tbaa !4
  br label %.loopexit79

359:                                              ; preds = %350
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit71

.loopexit79:                                      ; preds = %352, %357
  %360 = phi i32 [ %358, %357 ], [ %353, %352 ]
  %361 = tail call ptr @strerror(i32 noundef %360) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %361) #13
  %362 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit77

.loopexit71:                                      ; preds = %347, %359, %355
  %363 = phi i32 [ %337, %355 ], [ %337, %359 ], [ %348, %347 ]
  %364 = load i32, ptr %28, align 8, !tbaa !34
  %365 = add i32 %364, %363
  store i32 %365, ptr %28, align 8, !tbaa !34
  %366 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %366, ptr %34, align 8, !tbaa !35
  %367 = icmp eq i32 %365, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %.loopexit71, %329
  %369 = load i32, ptr %36, align 4, !tbaa !17
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %.loopexit77

371:                                              ; preds = %368
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit77

372:                                              ; preds = %.loopexit71, %323
  %373 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %374 = load i32, ptr %31, align 8, !tbaa !48
  %375 = icmp ult i32 %374, %321
  br i1 %375, label %376, label %377

376:                                              ; preds = %372
  store i32 0, ptr %38, align 4, !tbaa !33
  br label %377

377:                                              ; preds = %376, %372
  switch i32 %373, label %394 [
    i32 -2, label %378
    i32 2, label %378
    i32 -4, label %379
    i32 -3, label %380
  ]

378:                                              ; preds = %377, %377
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit77

379:                                              ; preds = %377
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %398

380:                                              ; preds = %377
  %381 = load i32, ptr %38, align 4, !tbaa !33
  %382 = icmp eq i32 %381, 1
  br i1 %382, label %383, label %389

383:                                              ; preds = %380
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  %384 = sub i32 %321, %374
  store i32 %384, ptr %0, align 8, !tbaa !19
  %385 = load ptr, ptr %33, align 8, !tbaa !49
  %386 = zext i32 %384 to i64
  %387 = sub nsw i64 0, %386
  %388 = getelementptr inbounds i8, ptr %385, i64 %387
  store ptr %388, ptr %25, align 8, !tbaa !20
  br label %414

389:                                              ; preds = %380
  %390 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %391 = load ptr, ptr %390, align 8, !tbaa !50
  %392 = icmp eq ptr %391, null
  %393 = select i1 %392, ptr @.str.6, ptr %391
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %393) #13
  br label %398

394:                                              ; preds = %377
  %395 = icmp ne i32 %374, 0
  %396 = icmp ne i32 %373, 1
  %397 = select i1 %395, i1 %396, i1 false
  br i1 %397, label %323, label %.loopexit77, !llvm.loop !51

398:                                              ; preds = %389, %379
  %399 = load i32, ptr %31, align 8, !tbaa !48
  %400 = sub i32 %321, %399
  store i32 %400, ptr %0, align 8, !tbaa !19
  %401 = load ptr, ptr %33, align 8, !tbaa !49
  %402 = zext i32 %400 to i64
  %403 = sub nsw i64 0, %402
  %404 = getelementptr inbounds i8, ptr %401, i64 %403
  store ptr %404, ptr %25, align 8, !tbaa !20
  br label %.loopexit81

.loopexit77:                                      ; preds = %394, %327, %378, %371, %368, %.loopexit79
  %405 = phi i32 [ %362, %.loopexit79 ], [ %324, %368 ], [ %324, %371 ], [ %373, %378 ], [ %373, %394 ], [ %328, %327 ]
  %406 = load i32, ptr %31, align 8, !tbaa !48
  %407 = sub i32 %321, %406
  store i32 %407, ptr %0, align 8, !tbaa !19
  %408 = load ptr, ptr %33, align 8, !tbaa !49
  %409 = zext i32 %407 to i64
  %410 = sub nsw i64 0, %409
  %411 = getelementptr inbounds i8, ptr %408, i64 %410
  store ptr %411, ptr %25, align 8, !tbaa !20
  switch i32 %405, label %.loopexit81 [
    i32 1, label %412
    i32 0, label %414
  ]

412:                                              ; preds = %.loopexit77
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %414

413:                                              ; preds = %67
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit81

414:                                              ; preds = %412, %.loopexit77, %383, %282, %276
  %415 = load i32, ptr %0, align 8, !tbaa !19
  br label %416

416:                                              ; preds = %414, %278
  %417 = phi i32 [ %415, %414 ], [ %281, %278 ]
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %.loopexit83

419:                                              ; preds = %416
  %420 = load i32, ptr %27, align 8, !tbaa !24
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %.backedge, label %422

422:                                              ; preds = %419
  %423 = load i32, ptr %28, align 8, !tbaa !34
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %.loopexit83, label %.backedge

.backedge:                                        ; preds = %422, %419
  br label %67, !llvm.loop !52

.loopexit83:                                      ; preds = %422, %416, %282, %.loopexit80
  %425 = load i64, ptr %21, align 8, !tbaa !18
  br label %426

426:                                              ; preds = %.loopexit83, %58
  %427 = phi i64 [ %425, %.loopexit83 ], [ %60, %58 ]
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %.loopexit84, label %42, !llvm.loop !53

.loopexit84:                                      ; preds = %426, %64, %20
  %429 = add nsw i32 %2, -1
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %.loopexit81, label %431

431:                                              ; preds = %.loopexit84
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %434 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %440 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %449 = load i32, ptr %0, align 8, !tbaa !19
  br label %450

450:                                              ; preds = %838, %431
  %451 = phi i32 [ %831, %838 ], [ %449, %431 ]
  %452 = phi i32 [ %840, %838 ], [ %429, %431 ]
  %453 = phi ptr [ %841, %838 ], [ %1, %431 ]
  %454 = icmp eq i32 %451, 0
  br i1 %454, label %.preheader65, label %816

.preheader65:                                     ; preds = %450, %.preheader65.backedge
  %455 = load i32, ptr %432, align 8, !tbaa !26
  switch i32 %455, label %800 [
    i32 0, label %456
    i32 1, label %672
    i32 2, label %706
  ]

456:                                              ; preds = %.preheader65
  %457 = load i32, ptr %433, align 8, !tbaa !27
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %478

459:                                              ; preds = %456
  %460 = load i32, ptr %445, align 4, !tbaa !28
  %461 = zext i32 %460 to i64
  %462 = tail call noalias ptr @malloc(i64 noundef %461) #15
  store ptr %462, ptr %440, align 8, !tbaa !29
  %463 = load i32, ptr %445, align 4, !tbaa !28
  %464 = shl i32 %463, 1
  %465 = zext i32 %464 to i64
  %466 = tail call noalias ptr @malloc(i64 noundef %465) #15
  store ptr %466, ptr %435, align 8, !tbaa !30
  %467 = icmp eq ptr %462, null
  %468 = icmp eq ptr %466, null
  %469 = or i1 %467, %468
  br i1 %469, label %470, label %471

470:                                              ; preds = %459
  tail call void @free(ptr noundef %466) #13
  tail call void @free(ptr noundef %462) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit66

471:                                              ; preds = %459
  %472 = load i32, ptr %445, align 4, !tbaa !28
  store i32 %472, ptr %433, align 8, !tbaa !27
  store i32 0, ptr %438, align 8, !tbaa !25
  store ptr null, ptr %437, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %446, i8 0, i64 24, i1 false)
  %473 = tail call i32 @inflateInit2_(ptr noundef nonnull %437, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %478, label %475

475:                                              ; preds = %471
  %476 = load ptr, ptr %435, align 8, !tbaa !30
  tail call void @free(ptr noundef %476) #13
  %477 = load ptr, ptr %440, align 8, !tbaa !29
  tail call void @free(ptr noundef %477) #13
  store i32 0, ptr %433, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit66

478:                                              ; preds = %471, %456
  %479 = load i32, ptr %447, align 8, !tbaa !32
  %480 = icmp eq i32 %479, -1
  br i1 %480, label %484, label %481

481:                                              ; preds = %478
  %482 = load i32, ptr %443, align 4, !tbaa !33
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %489

484:                                              ; preds = %481, %478
  %485 = tail call i32 @inflateReset(ptr noundef nonnull %437) #13
  store i32 2, ptr %432, align 8, !tbaa !26
  %486 = load i32, ptr %443, align 4, !tbaa !33
  %487 = icmp ne i32 %486, -1
  %488 = zext i1 %487 to i32
  store i32 %488, ptr %443, align 4, !tbaa !33
  store i32 0, ptr %447, align 8, !tbaa !32
  br label %669

489:                                              ; preds = %481
  %490 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %490, label %.loopexit66 [
    i32 0, label %491
    i32 -5, label %491
  ]

491:                                              ; preds = %489, %489
  %492 = load i32, ptr %439, align 8, !tbaa !24
  %493 = icmp eq i32 %492, 0
  %494 = load i32, ptr %438, align 8, !tbaa !34
  br i1 %493, label %495, label %637

495:                                              ; preds = %491
  %496 = icmp eq i32 %494, 0
  %497 = load ptr, ptr %440, align 8, !tbaa !29
  %498 = ptrtoaddr ptr %497 to i64
  br i1 %496, label %599, label %499

499:                                              ; preds = %495
  %500 = load ptr, ptr %437, align 8, !tbaa !35
  %501 = icmp eq ptr %500, %497
  br i1 %501, label %599, label %502

502:                                              ; preds = %499
  %503 = ptrtoaddr ptr %500 to i64
  %504 = zext i32 %494 to i64
  %505 = icmp ult i32 %494, 4
  %506 = sub i64 %498, %503
  %507 = icmp ult i64 %506, 32
  %508 = select i1 %505, i1 true, i1 %507
  br i1 %508, label %548, label %509

509:                                              ; preds = %502
  %510 = icmp ult i32 %494, 32
  br i1 %510, label %532, label %511

511:                                              ; preds = %509
  %512 = and i64 %504, 4294967264
  br label %513

513:                                              ; preds = %513, %511
  %514 = phi i64 [ 0, %511 ], [ %521, %513 ]
  %515 = getelementptr i8, ptr %497, i64 %514
  %516 = getelementptr i8, ptr %500, i64 %514
  %517 = getelementptr i8, ptr %516, i64 16
  %518 = load <16 x i8>, ptr %516, align 1, !tbaa !36
  %519 = load <16 x i8>, ptr %517, align 1, !tbaa !36
  %520 = getelementptr i8, ptr %515, i64 16
  store <16 x i8> %518, ptr %515, align 1, !tbaa !36
  store <16 x i8> %519, ptr %520, align 1, !tbaa !36
  %521 = add nuw nsw i64 %514, 32
  %522 = icmp eq i64 %521, %512
  br i1 %522, label %523, label %513, !llvm.loop !99

523:                                              ; preds = %513
  %524 = icmp eq i64 %512, %504
  br i1 %524, label %.loopexit59, label %525

525:                                              ; preds = %523
  %526 = trunc nuw i64 %512 to i32
  %527 = sub i32 %494, %526
  %528 = getelementptr i8, ptr %500, i64 %512
  %529 = getelementptr i8, ptr %497, i64 %512
  %530 = and i64 %504, 28
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %548, label %532, !prof !41

532:                                              ; preds = %525, %509
  %533 = phi i64 [ %512, %525 ], [ 0, %509 ]
  %534 = and i64 %504, 4294967292
  br label %535

535:                                              ; preds = %535, %532
  %536 = phi i64 [ %533, %532 ], [ %540, %535 ]
  %537 = getelementptr i8, ptr %497, i64 %536
  %538 = getelementptr i8, ptr %500, i64 %536
  %539 = load <4 x i8>, ptr %538, align 1, !tbaa !36
  store <4 x i8> %539, ptr %537, align 1, !tbaa !36
  %540 = add nuw i64 %536, 4
  %541 = icmp eq i64 %540, %534
  br i1 %541, label %542, label %535, !llvm.loop !100

542:                                              ; preds = %535
  %543 = getelementptr i8, ptr %497, i64 %534
  %544 = getelementptr i8, ptr %500, i64 %534
  %545 = trunc nuw i64 %534 to i32
  %546 = sub i32 %494, %545
  %547 = icmp eq i64 %534, %504
  br i1 %547, label %.loopexit59, label %548

548:                                              ; preds = %542, %525, %502
  %549 = phi ptr [ %497, %502 ], [ %529, %525 ], [ %543, %542 ]
  %550 = phi ptr [ %500, %502 ], [ %528, %525 ], [ %544, %542 ]
  %551 = phi i32 [ %494, %502 ], [ %527, %525 ], [ %546, %542 ]
  %552 = add i32 %551, -1
  %553 = and i32 %551, 7
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %.loopexit61, label %.preheader60

.preheader60:                                     ; preds = %548, %.preheader60
  %555 = phi ptr [ %560, %.preheader60 ], [ %549, %548 ]
  %556 = phi ptr [ %558, %.preheader60 ], [ %550, %548 ]
  %557 = phi i32 [ %561, %.preheader60 ], [ 0, %548 ]
  %558 = getelementptr inbounds nuw i8, ptr %556, i64 1
  %559 = load i8, ptr %556, align 1, !tbaa !36
  %560 = getelementptr inbounds nuw i8, ptr %555, i64 1
  store i8 %559, ptr %555, align 1, !tbaa !36
  %561 = add nuw nsw i32 %557, 1
  %562 = icmp eq i32 %561, %553
  br i1 %562, label %.loopexit61.loopexit, label %.preheader60, !llvm.loop !101

.loopexit61.loopexit:                             ; preds = %.preheader60
  %563 = and i32 %551, -8
  br label %.loopexit61

.loopexit61:                                      ; preds = %.loopexit61.loopexit, %548
  %564 = phi ptr [ %549, %548 ], [ %560, %.loopexit61.loopexit ]
  %565 = phi ptr [ %550, %548 ], [ %558, %.loopexit61.loopexit ]
  %566 = phi i32 [ %551, %548 ], [ %563, %.loopexit61.loopexit ]
  %567 = icmp ult i32 %552, 7
  br i1 %567, label %.loopexit59, label %.preheader

.preheader:                                       ; preds = %.loopexit61, %.preheader
  %568 = phi ptr [ %594, %.preheader ], [ %564, %.loopexit61 ]
  %569 = phi ptr [ %592, %.preheader ], [ %565, %.loopexit61 ]
  %570 = phi i32 [ %595, %.preheader ], [ %566, %.loopexit61 ]
  %571 = getelementptr inbounds nuw i8, ptr %569, i64 1
  %572 = load i8, ptr %569, align 1, !tbaa !36
  %573 = getelementptr inbounds nuw i8, ptr %568, i64 1
  store i8 %572, ptr %568, align 1, !tbaa !36
  %574 = getelementptr inbounds nuw i8, ptr %569, i64 2
  %575 = load i8, ptr %571, align 1, !tbaa !36
  %576 = getelementptr inbounds nuw i8, ptr %568, i64 2
  store i8 %575, ptr %573, align 1, !tbaa !36
  %577 = getelementptr inbounds nuw i8, ptr %569, i64 3
  %578 = load i8, ptr %574, align 1, !tbaa !36
  %579 = getelementptr inbounds nuw i8, ptr %568, i64 3
  store i8 %578, ptr %576, align 1, !tbaa !36
  %580 = getelementptr inbounds nuw i8, ptr %569, i64 4
  %581 = load i8, ptr %577, align 1, !tbaa !36
  %582 = getelementptr inbounds nuw i8, ptr %568, i64 4
  store i8 %581, ptr %579, align 1, !tbaa !36
  %583 = getelementptr inbounds nuw i8, ptr %569, i64 5
  %584 = load i8, ptr %580, align 1, !tbaa !36
  %585 = getelementptr inbounds nuw i8, ptr %568, i64 5
  store i8 %584, ptr %582, align 1, !tbaa !36
  %586 = getelementptr inbounds nuw i8, ptr %569, i64 6
  %587 = load i8, ptr %583, align 1, !tbaa !36
  %588 = getelementptr inbounds nuw i8, ptr %568, i64 6
  store i8 %587, ptr %585, align 1, !tbaa !36
  %589 = getelementptr inbounds nuw i8, ptr %569, i64 7
  %590 = load i8, ptr %586, align 1, !tbaa !36
  %591 = getelementptr inbounds nuw i8, ptr %568, i64 7
  store i8 %590, ptr %588, align 1, !tbaa !36
  %592 = getelementptr inbounds nuw i8, ptr %569, i64 8
  %593 = load i8, ptr %589, align 1, !tbaa !36
  %594 = getelementptr inbounds nuw i8, ptr %568, i64 8
  store i8 %593, ptr %591, align 1, !tbaa !36
  %595 = add i32 %570, -8
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %.loopexit59, label %.preheader, !llvm.loop !102

.loopexit59:                                      ; preds = %.preheader, %.loopexit61, %542, %523
  %597 = load i32, ptr %438, align 8, !tbaa !34
  %598 = load ptr, ptr %440, align 8, !tbaa !29
  br label %599

599:                                              ; preds = %.loopexit59, %499, %495
  %600 = phi ptr [ %598, %.loopexit59 ], [ %497, %499 ], [ %497, %495 ]
  %601 = phi i32 [ %597, %.loopexit59 ], [ %494, %499 ], [ 0, %495 ]
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds nuw i8, ptr %600, i64 %602
  %604 = load i32, ptr %433, align 8, !tbaa !27
  %605 = sub i32 %604, %601
  store i32 0, ptr %441, align 4, !tbaa !17
  %606 = tail call ptr @__errno_location() #16
  store i32 0, ptr %606, align 4, !tbaa !4
  br label %607

607:                                              ; preds = %618, %599
  %608 = phi i32 [ 0, %599 ], [ %619, %618 ]
  %609 = sub i32 %605, %608
  %610 = tail call i32 @llvm.umin.i32(i32 %609, i32 1073741824)
  %611 = load i32, ptr %442, align 4, !tbaa !46
  %612 = zext i32 %608 to i64
  %613 = getelementptr inbounds nuw i8, ptr %603, i64 %612
  %614 = zext nneg i32 %610 to i64
  %615 = tail call i64 @read(i32 noundef %611, ptr noundef %613, i64 noundef %614) #13
  %616 = trunc i64 %615 to i32
  %617 = icmp slt i32 %616, 1
  br i1 %617, label %621, label %618

618:                                              ; preds = %607
  %619 = add i32 %608, %616
  %620 = icmp ult i32 %619, %605
  br i1 %620, label %607, label %.loopexit58, !llvm.loop !47

621:                                              ; preds = %607
  %622 = icmp slt i32 %616, 0
  br i1 %622, label %623, label %630

623:                                              ; preds = %621
  %624 = load i32, ptr %606, align 4, !tbaa !4
  %625 = icmp eq i32 %624, 11
  br i1 %625, label %626, label %.loopexit67

626:                                              ; preds = %623
  store i32 1, ptr %441, align 4, !tbaa !17
  %627 = icmp eq i32 %608, 0
  br i1 %627, label %628, label %.loopexit58

628:                                              ; preds = %626
  %629 = load i32, ptr %606, align 4, !tbaa !4
  br label %.loopexit67

630:                                              ; preds = %621
  store i32 1, ptr %439, align 8, !tbaa !24
  br label %.loopexit58

.loopexit67:                                      ; preds = %623, %628
  %631 = phi i32 [ %629, %628 ], [ %624, %623 ]
  %632 = tail call ptr @strerror(i32 noundef %631) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %632) #13
  br label %.loopexit66

.loopexit58:                                      ; preds = %618, %630, %626
  %633 = phi i32 [ %608, %626 ], [ %608, %630 ], [ %619, %618 ]
  %634 = load i32, ptr %438, align 8, !tbaa !34
  %635 = add i32 %634, %633
  store i32 %635, ptr %438, align 8, !tbaa !34
  %636 = load ptr, ptr %440, align 8, !tbaa !29
  store ptr %636, ptr %437, align 8, !tbaa !35
  br label %637

637:                                              ; preds = %.loopexit58, %491
  %638 = phi i32 [ %635, %.loopexit58 ], [ %494, %491 ]
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %669, label %640

640:                                              ; preds = %637
  %641 = load i32, ptr %441, align 4, !tbaa !17
  %642 = icmp ne i32 %641, 0
  %643 = icmp ult i32 %638, 4
  %644 = and i1 %643, %642
  br i1 %644, label %669, label %645

645:                                              ; preds = %640
  %646 = icmp ugt i32 %638, 3
  %647 = load ptr, ptr %437, align 8, !tbaa !35
  br i1 %646, label %648, label %665

648:                                              ; preds = %645
  %649 = load i8, ptr %647, align 1, !tbaa !36
  %650 = icmp eq i8 %649, 31
  br i1 %650, label %651, label %665

651:                                              ; preds = %648
  %652 = getelementptr inbounds nuw i8, ptr %647, i64 1
  %653 = load i8, ptr %652, align 1, !tbaa !36
  %654 = icmp eq i8 %653, -117
  br i1 %654, label %655, label %665

655:                                              ; preds = %651
  %656 = getelementptr inbounds nuw i8, ptr %647, i64 2
  %657 = load i8, ptr %656, align 1, !tbaa !36
  %658 = icmp eq i8 %657, 8
  br i1 %658, label %659, label %665

659:                                              ; preds = %655
  %660 = getelementptr inbounds nuw i8, ptr %647, i64 3
  %661 = load i8, ptr %660, align 1, !tbaa !36
  %662 = icmp ult i8 %661, 32
  br i1 %662, label %663, label %665

663:                                              ; preds = %659
  %664 = tail call i32 @inflateReset(ptr noundef nonnull %437) #13
  store i32 2, ptr %432, align 8, !tbaa !26
  store i32 1, ptr %443, align 4, !tbaa !33
  store i32 0, ptr %447, align 8, !tbaa !32
  br label %801

665:                                              ; preds = %659, %655, %651, %648, %645
  %666 = load ptr, ptr %435, align 8, !tbaa !30
  store ptr %666, ptr %444, align 8, !tbaa !20
  %667 = zext i32 %638 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %666, ptr align 1 %647, i64 %667, i1 false)
  %668 = load i32, ptr %438, align 8, !tbaa !34
  store i32 %668, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %438, align 8, !tbaa !34
  store i32 1, ptr %432, align 8, !tbaa !26
  br label %803

669:                                              ; preds = %640, %637, %484
  %670 = load i32, ptr %432, align 8, !tbaa !26
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %.loopexit68, label %801

672:                                              ; preds = %.preheader65
  %673 = load ptr, ptr %435, align 8, !tbaa !30
  %674 = load i32, ptr %433, align 8, !tbaa !27
  %675 = shl i32 %674, 1
  store i32 0, ptr %441, align 4, !tbaa !17
  %676 = tail call ptr @__errno_location() #16
  store i32 0, ptr %676, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %677

677:                                              ; preds = %688, %672
  %678 = phi i32 [ %690, %688 ], [ 0, %672 ]
  %679 = sub i32 %675, %678
  %680 = tail call i32 @llvm.umin.i32(i32 %679, i32 1073741824)
  %681 = load i32, ptr %442, align 4, !tbaa !46
  %682 = zext i32 %678 to i64
  %683 = getelementptr inbounds nuw i8, ptr %673, i64 %682
  %684 = zext nneg i32 %680 to i64
  %685 = tail call i64 @read(i32 noundef %681, ptr noundef %683, i64 noundef %684) #13
  %686 = trunc i64 %685 to i32
  %687 = icmp slt i32 %686, 1
  br i1 %687, label %692, label %688

688:                                              ; preds = %677
  %689 = load i32, ptr %0, align 4, !tbaa !4
  %690 = add i32 %689, %686
  store i32 %690, ptr %0, align 4, !tbaa !4
  %691 = icmp ult i32 %690, %675
  br i1 %691, label %677, label %.loopexit64, !llvm.loop !47

692:                                              ; preds = %677
  %693 = icmp slt i32 %686, 0
  br i1 %693, label %694, label %702

694:                                              ; preds = %692
  %695 = load i32, ptr %676, align 4, !tbaa !4
  %696 = icmp eq i32 %695, 11
  br i1 %696, label %697, label %.loopexit69

697:                                              ; preds = %694
  store i32 1, ptr %441, align 4, !tbaa !17
  %698 = load i32, ptr %0, align 4, !tbaa !4
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %700, label %.loopexit64

700:                                              ; preds = %697
  %701 = load i32, ptr %676, align 4, !tbaa !4
  br label %.loopexit69

702:                                              ; preds = %692
  store i32 1, ptr %439, align 8, !tbaa !24
  br label %.loopexit64

.loopexit69:                                      ; preds = %694, %700
  %703 = phi i32 [ %701, %700 ], [ %695, %694 ]
  %704 = tail call ptr @strerror(i32 noundef %703) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %704) #13
  br label %.loopexit66

.loopexit64:                                      ; preds = %688, %702, %697
  %705 = load ptr, ptr %435, align 8, !tbaa !30
  store ptr %705, ptr %444, align 8, !tbaa !20
  br label %.loopexit68

706:                                              ; preds = %.preheader65
  %707 = load i32, ptr %433, align 8, !tbaa !27
  %708 = shl i32 %707, 1
  store i32 %708, ptr %434, align 8, !tbaa !48
  %709 = load ptr, ptr %435, align 8, !tbaa !30
  store ptr %709, ptr %436, align 8, !tbaa !49
  br label %710

710:                                              ; preds = %781, %706
  %711 = phi i32 [ 0, %706 ], [ %760, %781 ]
  %712 = load i32, ptr %438, align 8, !tbaa !34
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %759

714:                                              ; preds = %710
  %715 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %715, label %.loopexit62 [
    i32 0, label %716
    i32 -5, label %716
  ]

716:                                              ; preds = %714, %714
  %717 = load i32, ptr %439, align 8, !tbaa !24
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %719, label %755

719:                                              ; preds = %716
  %720 = load ptr, ptr %440, align 8, !tbaa !29
  %721 = load i32, ptr %433, align 8, !tbaa !27
  store i32 0, ptr %441, align 4, !tbaa !17
  %722 = tail call ptr @__errno_location() #16
  store i32 0, ptr %722, align 4, !tbaa !4
  br label %723

723:                                              ; preds = %734, %719
  %724 = phi i32 [ 0, %719 ], [ %735, %734 ]
  %725 = sub i32 %721, %724
  %726 = tail call i32 @llvm.umin.i32(i32 %725, i32 1073741824)
  %727 = load i32, ptr %442, align 4, !tbaa !46
  %728 = zext i32 %724 to i64
  %729 = getelementptr inbounds nuw i8, ptr %720, i64 %728
  %730 = zext nneg i32 %726 to i64
  %731 = tail call i64 @read(i32 noundef %727, ptr noundef %729, i64 noundef %730) #13
  %732 = trunc i64 %731 to i32
  %733 = icmp slt i32 %732, 1
  br i1 %733, label %737, label %734

734:                                              ; preds = %723
  %735 = add i32 %724, %732
  %736 = icmp ult i32 %735, %721
  br i1 %736, label %723, label %.loopexit, !llvm.loop !47

737:                                              ; preds = %723
  %738 = icmp slt i32 %732, 0
  br i1 %738, label %739, label %746

739:                                              ; preds = %737
  %740 = load i32, ptr %722, align 4, !tbaa !4
  %741 = icmp eq i32 %740, 11
  br i1 %741, label %742, label %.loopexit63

742:                                              ; preds = %739
  store i32 1, ptr %441, align 4, !tbaa !17
  %743 = icmp eq i32 %724, 0
  br i1 %743, label %744, label %.loopexit

744:                                              ; preds = %742
  %745 = load i32, ptr %722, align 4, !tbaa !4
  br label %.loopexit63

746:                                              ; preds = %737
  store i32 1, ptr %439, align 8, !tbaa !24
  br label %.loopexit

.loopexit63:                                      ; preds = %739, %744
  %747 = phi i32 [ %745, %744 ], [ %740, %739 ]
  %748 = tail call ptr @strerror(i32 noundef %747) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %748) #13
  %749 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit62

.loopexit:                                        ; preds = %734, %746, %742
  %750 = phi i32 [ %724, %742 ], [ %724, %746 ], [ %735, %734 ]
  %751 = load i32, ptr %438, align 8, !tbaa !34
  %752 = add i32 %751, %750
  store i32 %752, ptr %438, align 8, !tbaa !34
  %753 = load ptr, ptr %440, align 8, !tbaa !29
  store ptr %753, ptr %437, align 8, !tbaa !35
  %754 = icmp eq i32 %752, 0
  br i1 %754, label %755, label %759

755:                                              ; preds = %.loopexit, %716
  %756 = load i32, ptr %441, align 4, !tbaa !17
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %.loopexit62

758:                                              ; preds = %755
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit62

759:                                              ; preds = %.loopexit, %710
  %760 = tail call i32 @inflate(ptr noundef nonnull %437, i32 noundef 0) #13
  %761 = load i32, ptr %434, align 8, !tbaa !48
  %762 = icmp ult i32 %761, %708
  br i1 %762, label %763, label %764

763:                                              ; preds = %759
  store i32 0, ptr %443, align 4, !tbaa !33
  br label %764

764:                                              ; preds = %763, %759
  switch i32 %760, label %781 [
    i32 -2, label %765
    i32 2, label %765
    i32 -4, label %766
    i32 -3, label %767
  ]

765:                                              ; preds = %764, %764
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit62

766:                                              ; preds = %764
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %785

767:                                              ; preds = %764
  %768 = load i32, ptr %443, align 4, !tbaa !33
  %769 = icmp eq i32 %768, 1
  br i1 %769, label %770, label %776

770:                                              ; preds = %767
  store i32 0, ptr %438, align 8, !tbaa !34
  store i32 1, ptr %439, align 8, !tbaa !24
  store i32 0, ptr %432, align 8, !tbaa !26
  %771 = sub i32 %708, %761
  store i32 %771, ptr %0, align 8, !tbaa !19
  %772 = load ptr, ptr %436, align 8, !tbaa !49
  %773 = zext i32 %771 to i64
  %774 = sub nsw i64 0, %773
  %775 = getelementptr inbounds i8, ptr %772, i64 %774
  store ptr %775, ptr %444, align 8, !tbaa !20
  br label %801

776:                                              ; preds = %767
  %777 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %778 = load ptr, ptr %777, align 8, !tbaa !50
  %779 = icmp eq ptr %778, null
  %780 = select i1 %779, ptr @.str.6, ptr %778
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %780) #13
  br label %785

781:                                              ; preds = %764
  %782 = icmp ne i32 %761, 0
  %783 = icmp ne i32 %760, 1
  %784 = select i1 %782, i1 %783, i1 false
  br i1 %784, label %710, label %.loopexit62, !llvm.loop !51

785:                                              ; preds = %776, %766
  %786 = load i32, ptr %434, align 8, !tbaa !48
  %787 = sub i32 %708, %786
  store i32 %787, ptr %0, align 8, !tbaa !19
  %788 = load ptr, ptr %436, align 8, !tbaa !49
  %789 = zext i32 %787 to i64
  %790 = sub nsw i64 0, %789
  %791 = getelementptr inbounds i8, ptr %788, i64 %790
  store ptr %791, ptr %444, align 8, !tbaa !20
  br label %.loopexit66

.loopexit62:                                      ; preds = %781, %714, %765, %758, %755, %.loopexit63
  %792 = phi i32 [ %749, %.loopexit63 ], [ %711, %755 ], [ %711, %758 ], [ %760, %765 ], [ %715, %714 ], [ %760, %781 ]
  %793 = load i32, ptr %434, align 8, !tbaa !48
  %794 = sub i32 %708, %793
  store i32 %794, ptr %0, align 8, !tbaa !19
  %795 = load ptr, ptr %436, align 8, !tbaa !49
  %796 = zext i32 %794 to i64
  %797 = sub nsw i64 0, %796
  %798 = getelementptr inbounds i8, ptr %795, i64 %797
  store ptr %798, ptr %444, align 8, !tbaa !20
  switch i32 %792, label %.loopexit66 [
    i32 1, label %799
    i32 0, label %801
  ]

799:                                              ; preds = %.loopexit62
  store i32 0, ptr %443, align 4, !tbaa !33
  store i32 0, ptr %432, align 8, !tbaa !26
  br label %801

800:                                              ; preds = %.preheader65
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit66

801:                                              ; preds = %799, %.loopexit62, %770, %669, %663
  %802 = load i32, ptr %0, align 8, !tbaa !19
  br label %803

803:                                              ; preds = %801, %665
  %804 = phi i32 [ %802, %801 ], [ %668, %665 ]
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %806, label %.loopexit68

806:                                              ; preds = %803
  %807 = load i32, ptr %439, align 8, !tbaa !24
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %.preheader65.backedge, label %809

809:                                              ; preds = %806
  %810 = load i32, ptr %438, align 8, !tbaa !34
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %.loopexit68, label %.preheader65.backedge

.preheader65.backedge:                            ; preds = %809, %806
  br label %.preheader65, !llvm.loop !52

.loopexit68:                                      ; preds = %809, %803, %669, %.loopexit64
  %812 = load i32, ptr %0, align 8, !tbaa !19
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %816

814:                                              ; preds = %.loopexit68
  %815 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %815, align 4, !tbaa !61
  br label %.loopexit66

816:                                              ; preds = %.loopexit68, %450
  %817 = phi i32 [ %812, %.loopexit68 ], [ %451, %450 ]
  %818 = tail call i32 @llvm.umin.i32(i32 %817, i32 %452)
  %819 = load ptr, ptr %444, align 8, !tbaa !20
  %820 = zext i32 %818 to i64
  %821 = tail call ptr @memchr(ptr noundef %819, i32 noundef 10, i64 noundef %820) #17
  %822 = icmp eq ptr %821, null
  %823 = ptrtoint ptr %821 to i64
  %824 = ptrtoint ptr %819 to i64
  %825 = sub i64 %823, %824
  %826 = trunc i64 %825 to i32
  %827 = add i32 %826, 1
  %828 = select i1 %822, i32 %818, i32 %827
  %829 = zext i32 %828 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %453, ptr align 1 %819, i64 %829, i1 false)
  %830 = load i32, ptr %0, align 8, !tbaa !19
  %831 = sub i32 %830, %828
  store i32 %831, ptr %0, align 8, !tbaa !19
  %832 = load ptr, ptr %444, align 8, !tbaa !20
  %833 = getelementptr inbounds nuw i8, ptr %832, i64 %829
  store ptr %833, ptr %444, align 8, !tbaa !20
  %834 = load i64, ptr %448, align 8, !tbaa !21
  %835 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %834, i64 %829), !nosanitize !22
  %836 = extractvalue { i64, i1 } %835, 1, !nosanitize !22
  br i1 %836, label %837, label %838, !prof !23, !nosanitize !22

837:                                              ; preds = %816
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

838:                                              ; preds = %816
  %839 = extractvalue { i64, i1 } %835, 0, !nosanitize !22
  store i64 %839, ptr %448, align 8, !tbaa !21
  %840 = sub i32 %452, %828
  %841 = getelementptr inbounds nuw i8, ptr %453, i64 %829
  %842 = icmp ne i32 %840, 0
  %843 = and i1 %822, %842
  br i1 %843, label %450, label %.loopexit66, !llvm.loop !103

.loopexit66:                                      ; preds = %838, %.loopexit62, %489, %814, %800, %785, %.loopexit69, %.loopexit67, %475, %470
  %844 = phi ptr [ %453, %.loopexit62 ], [ %453, %814 ], [ %453, %800 ], [ %453, %.loopexit69 ], [ %453, %.loopexit67 ], [ %453, %470 ], [ %453, %475 ], [ %453, %785 ], [ %453, %489 ], [ %841, %838 ]
  %845 = icmp eq ptr %844, %1
  br i1 %845, label %.loopexit81, label %846

846:                                              ; preds = %.loopexit66
  store i8 0, ptr %844, align 1, !tbaa !36
  br label %.loopexit81

.loopexit81:                                      ; preds = %.loopexit77, %102, %846, %.loopexit66, %.loopexit84, %413, %398, %.loopexit85, %.loopexit82, %88, %83, %16, %9, %3
  %847 = phi ptr [ null, %9 ], [ null, %3 ], [ null, %16 ], [ null, %88 ], [ %1, %846 ], [ null, %.loopexit66 ], [ null, %398 ], [ null, %.loopexit84 ], [ null, %413 ], [ null, %.loopexit85 ], [ null, %.loopexit82 ], [ null, %83 ], [ null, %102 ], [ null, %.loopexit77 ]
  ret ptr %847
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %252, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %247

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %247

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %247

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
  br label %247

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
  br label %247

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
  br label %247

57:                                               ; preds = %47
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %59 = load i32, ptr %58, align 8, !tbaa !16
  switch i32 %59, label %247 [
    i32 0, label %60
    i32 -5, label %60
  ]

60:                                               ; preds = %57, %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %62 = load i32, ptr %61, align 8, !tbaa !24
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %65 = load i32, ptr %64, align 8, !tbaa !34
  br i1 %63, label %66, label %212

66:                                               ; preds = %60
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %170, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %70 = load ptr, ptr %69, align 8, !tbaa !29
  %71 = load ptr, ptr %15, align 8, !tbaa !35
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %170, label %73

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
  %84 = and i64 %76, 4294967264
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi i64 [ 0, %83 ], [ %93, %85 ]
  %87 = getelementptr i8, ptr %70, i64 %86
  %88 = getelementptr i8, ptr %71, i64 %86
  %89 = getelementptr i8, ptr %88, i64 16
  %90 = load <16 x i8>, ptr %88, align 1, !tbaa !36
  %91 = load <16 x i8>, ptr %89, align 1, !tbaa !36
  %92 = getelementptr i8, ptr %87, i64 16
  store <16 x i8> %90, ptr %87, align 1, !tbaa !36
  store <16 x i8> %91, ptr %92, align 1, !tbaa !36
  %93 = add nuw nsw i64 %86, 32
  %94 = icmp eq i64 %93, %84
  br i1 %94, label %95, label %85, !llvm.loop !104

95:                                               ; preds = %85
  %96 = icmp eq i64 %84, %76
  br i1 %96, label %.loopexit12, label %97

97:                                               ; preds = %95
  %98 = trunc nuw i64 %84 to i32
  %99 = sub i32 %65, %98
  %100 = getelementptr i8, ptr %71, i64 %84
  %101 = getelementptr i8, ptr %70, i64 %84
  %102 = and i64 %76, 28
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %120, label %104, !prof !41

104:                                              ; preds = %97, %81
  %105 = phi i64 [ %84, %97 ], [ 0, %81 ]
  %106 = and i64 %76, 4294967292
  br label %107

107:                                              ; preds = %107, %104
  %108 = phi i64 [ %105, %104 ], [ %112, %107 ]
  %109 = getelementptr i8, ptr %70, i64 %108
  %110 = getelementptr i8, ptr %71, i64 %108
  %111 = load <4 x i8>, ptr %110, align 1, !tbaa !36
  store <4 x i8> %111, ptr %109, align 1, !tbaa !36
  %112 = add nuw i64 %108, 4
  %113 = icmp eq i64 %112, %106
  br i1 %113, label %114, label %107, !llvm.loop !105

114:                                              ; preds = %107
  %115 = getelementptr i8, ptr %70, i64 %106
  %116 = getelementptr i8, ptr %71, i64 %106
  %117 = trunc nuw i64 %106 to i32
  %118 = sub i32 %65, %117
  %119 = icmp eq i64 %106, %76
  br i1 %119, label %.loopexit12, label %120

120:                                              ; preds = %114, %97, %73
  %121 = phi ptr [ %70, %73 ], [ %101, %97 ], [ %115, %114 ]
  %122 = phi ptr [ %71, %73 ], [ %100, %97 ], [ %116, %114 ]
  %123 = phi i32 [ %65, %73 ], [ %99, %97 ], [ %118, %114 ]
  %124 = add i32 %123, -1
  %125 = and i32 %123, 7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %.loopexit14, label %.preheader13

.preheader13:                                     ; preds = %120, %.preheader13
  %127 = phi ptr [ %132, %.preheader13 ], [ %121, %120 ]
  %128 = phi ptr [ %130, %.preheader13 ], [ %122, %120 ]
  %129 = phi i32 [ %133, %.preheader13 ], [ 0, %120 ]
  %130 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %131 = load i8, ptr %128, align 1, !tbaa !36
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 1
  store i8 %131, ptr %127, align 1, !tbaa !36
  %133 = add nuw nsw i32 %129, 1
  %134 = icmp eq i32 %133, %125
  br i1 %134, label %.loopexit14.loopexit, label %.preheader13, !llvm.loop !106

.loopexit14.loopexit:                             ; preds = %.preheader13
  %135 = and i32 %123, -8
  br label %.loopexit14

.loopexit14:                                      ; preds = %.loopexit14.loopexit, %120
  %136 = phi ptr [ %121, %120 ], [ %132, %.loopexit14.loopexit ]
  %137 = phi ptr [ %122, %120 ], [ %130, %.loopexit14.loopexit ]
  %138 = phi i32 [ %123, %120 ], [ %135, %.loopexit14.loopexit ]
  %139 = icmp ult i32 %124, 7
  br i1 %139, label %.loopexit12, label %.preheader

.preheader:                                       ; preds = %.loopexit14, %.preheader
  %140 = phi ptr [ %166, %.preheader ], [ %136, %.loopexit14 ]
  %141 = phi ptr [ %164, %.preheader ], [ %137, %.loopexit14 ]
  %142 = phi i32 [ %167, %.preheader ], [ %138, %.loopexit14 ]
  %143 = getelementptr inbounds nuw i8, ptr %141, i64 1
  %144 = load i8, ptr %141, align 1, !tbaa !36
  %145 = getelementptr inbounds nuw i8, ptr %140, i64 1
  store i8 %144, ptr %140, align 1, !tbaa !36
  %146 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %147 = load i8, ptr %143, align 1, !tbaa !36
  %148 = getelementptr inbounds nuw i8, ptr %140, i64 2
  store i8 %147, ptr %145, align 1, !tbaa !36
  %149 = getelementptr inbounds nuw i8, ptr %141, i64 3
  %150 = load i8, ptr %146, align 1, !tbaa !36
  %151 = getelementptr inbounds nuw i8, ptr %140, i64 3
  store i8 %150, ptr %148, align 1, !tbaa !36
  %152 = getelementptr inbounds nuw i8, ptr %141, i64 4
  %153 = load i8, ptr %149, align 1, !tbaa !36
  %154 = getelementptr inbounds nuw i8, ptr %140, i64 4
  store i8 %153, ptr %151, align 1, !tbaa !36
  %155 = getelementptr inbounds nuw i8, ptr %141, i64 5
  %156 = load i8, ptr %152, align 1, !tbaa !36
  %157 = getelementptr inbounds nuw i8, ptr %140, i64 5
  store i8 %156, ptr %154, align 1, !tbaa !36
  %158 = getelementptr inbounds nuw i8, ptr %141, i64 6
  %159 = load i8, ptr %155, align 1, !tbaa !36
  %160 = getelementptr inbounds nuw i8, ptr %140, i64 6
  store i8 %159, ptr %157, align 1, !tbaa !36
  %161 = getelementptr inbounds nuw i8, ptr %141, i64 7
  %162 = load i8, ptr %158, align 1, !tbaa !36
  %163 = getelementptr inbounds nuw i8, ptr %140, i64 7
  store i8 %162, ptr %160, align 1, !tbaa !36
  %164 = getelementptr inbounds nuw i8, ptr %141, i64 8
  %165 = load i8, ptr %161, align 1, !tbaa !36
  %166 = getelementptr inbounds nuw i8, ptr %140, i64 8
  store i8 %165, ptr %163, align 1, !tbaa !36
  %167 = add i32 %142, -8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %.loopexit12, label %.preheader, !llvm.loop !107

.loopexit12:                                      ; preds = %.preheader, %.loopexit14, %114, %95
  %169 = load i32, ptr %64, align 8, !tbaa !34
  br label %170

170:                                              ; preds = %.loopexit12, %68, %66
  %171 = phi i32 [ %169, %.loopexit12 ], [ %65, %68 ], [ 0, %66 ]
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %173 = load ptr, ptr %172, align 8, !tbaa !29
  %174 = zext i32 %171 to i64
  %175 = getelementptr inbounds nuw i8, ptr %173, i64 %174
  %176 = load i32, ptr %16, align 8, !tbaa !27
  %177 = sub i32 %176, %171
  %178 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %178, align 4, !tbaa !17
  %179 = tail call ptr @__errno_location() #16
  store i32 0, ptr %179, align 4, !tbaa !4
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %181

181:                                              ; preds = %192, %170
  %182 = phi i32 [ 0, %170 ], [ %193, %192 ]
  %183 = sub i32 %177, %182
  %184 = tail call i32 @llvm.umin.i32(i32 %183, i32 1073741824)
  %185 = load i32, ptr %180, align 4, !tbaa !46
  %186 = zext i32 %182 to i64
  %187 = getelementptr inbounds nuw i8, ptr %175, i64 %186
  %188 = zext nneg i32 %184 to i64
  %189 = tail call i64 @read(i32 noundef %185, ptr noundef %187, i64 noundef %188) #13
  %190 = trunc i64 %189 to i32
  %191 = icmp slt i32 %190, 1
  br i1 %191, label %195, label %192

192:                                              ; preds = %181
  %193 = add i32 %182, %190
  %194 = icmp ult i32 %193, %177
  br i1 %194, label %181, label %.loopexit, !llvm.loop !47

195:                                              ; preds = %181
  %196 = icmp slt i32 %190, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %195
  %198 = load i32, ptr %179, align 4, !tbaa !4
  %199 = icmp eq i32 %198, 11
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  store i32 1, ptr %178, align 4, !tbaa !17
  %201 = icmp eq i32 %182, 0
  br i1 %201, label %202, label %.loopexit

202:                                              ; preds = %200
  %203 = load i32, ptr %179, align 4, !tbaa !4
  br label %205

204:                                              ; preds = %195
  store i32 1, ptr %61, align 8, !tbaa !24
  br label %.loopexit

205:                                              ; preds = %202, %197
  %206 = phi i32 [ %203, %202 ], [ %198, %197 ]
  %207 = tail call ptr @strerror(i32 noundef %206) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %207) #13
  br label %247

.loopexit:                                        ; preds = %192, %204, %200
  %208 = phi i32 [ %182, %200 ], [ %182, %204 ], [ %193, %192 ]
  %209 = load i32, ptr %64, align 8, !tbaa !34
  %210 = add i32 %209, %208
  store i32 %210, ptr %64, align 8, !tbaa !34
  %211 = load ptr, ptr %172, align 8, !tbaa !29
  store ptr %211, ptr %15, align 8, !tbaa !35
  br label %212

212:                                              ; preds = %.loopexit, %60
  %213 = phi i32 [ %210, %.loopexit ], [ %65, %60 ]
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %247, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %217 = load i32, ptr %216, align 4, !tbaa !17
  %218 = icmp ne i32 %217, 0
  %219 = icmp ult i32 %213, 4
  %220 = and i1 %219, %218
  br i1 %220, label %247, label %221

221:                                              ; preds = %215
  %222 = icmp ugt i32 %213, 3
  %223 = load ptr, ptr %15, align 8, !tbaa !35
  br i1 %222, label %224, label %241

224:                                              ; preds = %221
  %225 = load i8, ptr %223, align 1, !tbaa !36
  %226 = icmp eq i8 %225, 31
  br i1 %226, label %227, label %241

227:                                              ; preds = %224
  %228 = getelementptr inbounds nuw i8, ptr %223, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !36
  %230 = icmp eq i8 %229, -117
  br i1 %230, label %231, label %241

231:                                              ; preds = %227
  %232 = getelementptr inbounds nuw i8, ptr %223, i64 2
  %233 = load i8, ptr %232, align 1, !tbaa !36
  %234 = icmp eq i8 %233, 8
  br i1 %234, label %235, label %241

235:                                              ; preds = %231
  %236 = getelementptr inbounds nuw i8, ptr %223, i64 3
  %237 = load i8, ptr %236, align 1, !tbaa !36
  %238 = icmp ult i8 %237, 32
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %247

241:                                              ; preds = %235, %231, %227, %224, %221
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %243 = load ptr, ptr %242, align 8, !tbaa !30
  %244 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %243, ptr %244, align 8, !tbaa !20
  %245 = zext i32 %213 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %243, ptr align 1 %223, i64 %245, i1 false)
  %246 = load i32, ptr %64, align 8, !tbaa !34
  store i32 %246, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %64, align 8, !tbaa !34
  store i32 1, ptr %8, align 8, !tbaa !26
  br label %247

247:                                              ; preds = %241, %239, %215, %212, %205, %57, %51, %40, %33, %11, %7, %3
  %248 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %249 = load i32, ptr %248, align 8, !tbaa !32
  %250 = icmp eq i32 %249, 1
  %251 = zext i1 %250 to i32
  br label %252

252:                                              ; preds = %247, %1
  %253 = phi i32 [ %251, %247 ], [ 0, %1 ]
  ret i32 %253
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

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
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
