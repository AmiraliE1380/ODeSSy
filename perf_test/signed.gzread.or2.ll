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
  br i1 %4, label %1013, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1013

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
  br i1 %15, label %1013, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1013

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

44:                                               ; preds = %432, %26
  %45 = phi i64 [ %433, %432 ], [ %24, %26 ]
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
  br label %432

67:                                               ; preds = %44
  %68 = load i32, ptr %29, align 8, !tbaa !24
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %.preheader744, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %30, align 8, !tbaa !25
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %.loopexit100, label %.preheader744

.preheader744:                                    ; preds = %70, %67
  br label %73

73:                                               ; preds = %.backedge, %.preheader744
  %74 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %74, label %419 [
    i32 0, label %75
    i32 1, label %291
    i32 2, label %325
  ]

75:                                               ; preds = %73
  %76 = load i32, ptr %32, align 8, !tbaa !27
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load i32, ptr %41, align 4, !tbaa !28
  %80 = zext i32 %79 to i64
  %81 = tail call noalias ptr @malloc(i64 noundef %80) #15
  store ptr %81, ptr %37, align 8, !tbaa !29
  %82 = load i32, ptr %41, align 4, !tbaa !28
  %83 = shl i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #15
  store ptr %85, ptr %34, align 8, !tbaa !30
  %86 = icmp eq ptr %81, null
  %87 = icmp eq ptr %85, null
  %88 = or i1 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  tail call void @free(ptr noundef %85) #13
  tail call void @free(ptr noundef %81) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit96

90:                                               ; preds = %78
  %91 = load i32, ptr %41, align 4, !tbaa !28
  store i32 %91, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %92 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %95) #13
  %96 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %96) #13
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit96

97:                                               ; preds = %90, %75
  %98 = load i32, ptr %43, align 8, !tbaa !32
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %40, align 4, !tbaa !33
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100, %97
  %104 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  %105 = load i32, ptr %40, align 4, !tbaa !33
  %106 = icmp ne i32 %105, -1
  %107 = zext i1 %106 to i32
  store i32 %107, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %288

108:                                              ; preds = %100
  %109 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %109, label %.loopexit97 [
    i32 0, label %110
    i32 -5, label %110
  ]

110:                                              ; preds = %108, %108
  %111 = load i32, ptr %29, align 8, !tbaa !24
  %112 = icmp eq i32 %111, 0
  %113 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %112, label %114, label %256

114:                                              ; preds = %110
  %115 = icmp eq i32 %113, 0
  %116 = load ptr, ptr %37, align 8, !tbaa !29
  %117 = ptrtoaddr ptr %116 to i64
  br i1 %115, label %218, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %36, align 8, !tbaa !35
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
  br i1 %141, label %142, label %132, !llvm.loop !37

142:                                              ; preds = %132
  %143 = icmp eq i64 %131, %123
  br i1 %143, label %.loopexit89, label %144

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
  br i1 %160, label %161, label %154, !llvm.loop !42

161:                                              ; preds = %154
  %162 = getelementptr i8, ptr %116, i64 %153
  %163 = getelementptr i8, ptr %119, i64 %153
  %164 = trunc nuw i64 %153 to i32
  %165 = sub i32 %113, %164
  %166 = icmp eq i64 %153, %123
  br i1 %166, label %.loopexit89, label %167

167:                                              ; preds = %161, %144, %121
  %168 = phi ptr [ %116, %121 ], [ %148, %144 ], [ %162, %161 ]
  %169 = phi ptr [ %119, %121 ], [ %147, %144 ], [ %163, %161 ]
  %170 = phi i32 [ %113, %121 ], [ %146, %144 ], [ %165, %161 ]
  %171 = add i32 %170, -1
  %172 = and i32 %170, 7
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %.loopexit91, label %.preheader90

.preheader90:                                     ; preds = %167, %.preheader90
  %174 = phi ptr [ %179, %.preheader90 ], [ %168, %167 ]
  %175 = phi ptr [ %177, %.preheader90 ], [ %169, %167 ]
  %176 = phi i32 [ %180, %.preheader90 ], [ 0, %167 ]
  %177 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %178 = load i8, ptr %175, align 1, !tbaa !36
  %179 = getelementptr inbounds nuw i8, ptr %174, i64 1
  store i8 %178, ptr %174, align 1, !tbaa !36
  %180 = add nuw nsw i32 %176, 1
  %181 = icmp eq i32 %180, %172
  br i1 %181, label %.loopexit91.loopexit, label %.preheader90, !llvm.loop !43

.loopexit91.loopexit:                             ; preds = %.preheader90
  %182 = and i32 %170, -8
  br label %.loopexit91

.loopexit91:                                      ; preds = %.loopexit91.loopexit, %167
  %183 = phi ptr [ %168, %167 ], [ %179, %.loopexit91.loopexit ]
  %184 = phi ptr [ %169, %167 ], [ %177, %.loopexit91.loopexit ]
  %185 = phi i32 [ %170, %167 ], [ %182, %.loopexit91.loopexit ]
  %186 = icmp ult i32 %171, 7
  br i1 %186, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %.loopexit91, %.preheader88
  %187 = phi ptr [ %213, %.preheader88 ], [ %183, %.loopexit91 ]
  %188 = phi ptr [ %211, %.preheader88 ], [ %184, %.loopexit91 ]
  %189 = phi i32 [ %214, %.preheader88 ], [ %185, %.loopexit91 ]
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
  br i1 %215, label %.loopexit89, label %.preheader88, !llvm.loop !45

.loopexit89:                                      ; preds = %.preheader88, %.loopexit91, %161, %142
  %216 = load i32, ptr %30, align 8, !tbaa !34
  %217 = load ptr, ptr %37, align 8, !tbaa !29
  br label %218

218:                                              ; preds = %.loopexit89, %118, %114
  %219 = phi ptr [ %217, %.loopexit89 ], [ %116, %118 ], [ %116, %114 ]
  %220 = phi i32 [ %216, %.loopexit89 ], [ %113, %118 ], [ 0, %114 ]
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds nuw i8, ptr %219, i64 %221
  %223 = load i32, ptr %32, align 8, !tbaa !27
  %224 = sub i32 %223, %220
  store i32 0, ptr %38, align 4, !tbaa !17
  %225 = tail call ptr @__errno_location() #16
  store i32 0, ptr %225, align 4, !tbaa !4
  br label %226

226:                                              ; preds = %237, %218
  %227 = phi i32 [ 0, %218 ], [ %238, %237 ]
  %228 = sub i32 %224, %227
  %229 = tail call i32 @llvm.umin.i32(i32 %228, i32 1073741824)
  %230 = load i32, ptr %39, align 4, !tbaa !46
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
  br i1 %239, label %226, label %.loopexit87, !llvm.loop !47

240:                                              ; preds = %226
  %241 = icmp slt i32 %235, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %240
  %243 = load i32, ptr %225, align 4, !tbaa !4
  %244 = icmp eq i32 %243, 11
  br i1 %244, label %245, label %.loopexit98

245:                                              ; preds = %242
  store i32 1, ptr %38, align 4, !tbaa !17
  %246 = icmp eq i32 %227, 0
  br i1 %246, label %247, label %.loopexit87

247:                                              ; preds = %245
  %248 = load i32, ptr %225, align 4, !tbaa !4
  br label %.loopexit98

249:                                              ; preds = %240
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit87

.loopexit98:                                      ; preds = %242, %247
  %250 = phi i32 [ %248, %247 ], [ %243, %242 ]
  %251 = tail call ptr @strerror(i32 noundef %250) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %251) #13
  br label %.loopexit96

.loopexit87:                                      ; preds = %237, %249, %245
  %252 = phi i32 [ %227, %245 ], [ %227, %249 ], [ %238, %237 ]
  %253 = load i32, ptr %30, align 8, !tbaa !34
  %254 = add i32 %253, %252
  store i32 %254, ptr %30, align 8, !tbaa !34
  %255 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %255, ptr %36, align 8, !tbaa !35
  br label %256

256:                                              ; preds = %.loopexit87, %110
  %257 = phi i32 [ %254, %.loopexit87 ], [ %113, %110 ]
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %288, label %259

259:                                              ; preds = %256
  %260 = load i32, ptr %38, align 4, !tbaa !17
  %261 = icmp ne i32 %260, 0
  %262 = icmp ult i32 %257, 4
  %263 = and i1 %262, %261
  br i1 %263, label %288, label %264

264:                                              ; preds = %259
  %265 = icmp ugt i32 %257, 3
  %266 = load ptr, ptr %36, align 8, !tbaa !35
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
  %283 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %420

284:                                              ; preds = %278, %274, %270, %267, %264
  %285 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %285, ptr %27, align 8, !tbaa !20
  %286 = zext i32 %257 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %285, ptr align 1 %266, i64 %286, i1 false)
  %287 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %287, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %422

288:                                              ; preds = %259, %256, %103
  %289 = load i32, ptr %31, align 8, !tbaa !26
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %.loopexit99, label %420

291:                                              ; preds = %73
  %292 = load ptr, ptr %34, align 8, !tbaa !30
  %293 = load i32, ptr %32, align 8, !tbaa !27
  %294 = shl i32 %293, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %295 = tail call ptr @__errno_location() #16
  store i32 0, ptr %295, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %296

296:                                              ; preds = %307, %291
  %297 = phi i32 [ %309, %307 ], [ 0, %291 ]
  %298 = sub i32 %294, %297
  %299 = tail call i32 @llvm.umin.i32(i32 %298, i32 1073741824)
  %300 = load i32, ptr %39, align 4, !tbaa !46
  %301 = zext i32 %297 to i64
  %302 = getelementptr inbounds nuw i8, ptr %292, i64 %301
  %303 = zext nneg i32 %299 to i64
  %304 = tail call i64 @read(i32 noundef %300, ptr noundef %302, i64 noundef %303) #13
  %305 = trunc i64 %304 to i32
  %306 = icmp slt i32 %305, 1
  br i1 %306, label %311, label %307

307:                                              ; preds = %296
  %308 = load i32, ptr %0, align 4, !tbaa !4
  %309 = add i32 %308, %305
  store i32 %309, ptr %0, align 4, !tbaa !4
  %310 = icmp ult i32 %309, %294
  br i1 %310, label %296, label %.loopexit95, !llvm.loop !47

311:                                              ; preds = %296
  %312 = icmp slt i32 %305, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %311
  %314 = load i32, ptr %295, align 4, !tbaa !4
  %315 = icmp eq i32 %314, 11
  br i1 %315, label %316, label %.loopexit101

316:                                              ; preds = %313
  store i32 1, ptr %38, align 4, !tbaa !17
  %317 = load i32, ptr %0, align 4, !tbaa !4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %.loopexit95

319:                                              ; preds = %316
  %320 = load i32, ptr %295, align 4, !tbaa !4
  br label %.loopexit101

321:                                              ; preds = %311
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit95

.loopexit101:                                     ; preds = %313, %319
  %322 = phi i32 [ %320, %319 ], [ %314, %313 ]
  %323 = tail call ptr @strerror(i32 noundef %322) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %323) #13
  br label %.loopexit96

.loopexit95:                                      ; preds = %307, %321, %316
  %324 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %324, ptr %27, align 8, !tbaa !20
  br label %.loopexit99

325:                                              ; preds = %73
  %326 = load i32, ptr %32, align 8, !tbaa !27
  %327 = shl i32 %326, 1
  store i32 %327, ptr %33, align 8, !tbaa !48
  %328 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %328, ptr %35, align 8, !tbaa !49
  br label %329

329:                                              ; preds = %400, %325
  %330 = phi i32 [ 0, %325 ], [ %379, %400 ]
  %331 = load i32, ptr %30, align 8, !tbaa !34
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %378

333:                                              ; preds = %329
  %334 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %334, label %.loopexit92 [
    i32 0, label %335
    i32 -5, label %335
  ]

335:                                              ; preds = %333, %333
  %336 = load i32, ptr %29, align 8, !tbaa !24
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %374

338:                                              ; preds = %335
  %339 = load ptr, ptr %37, align 8, !tbaa !29
  %340 = load i32, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %38, align 4, !tbaa !17
  %341 = tail call ptr @__errno_location() #16
  store i32 0, ptr %341, align 4, !tbaa !4
  br label %342

342:                                              ; preds = %353, %338
  %343 = phi i32 [ 0, %338 ], [ %354, %353 ]
  %344 = sub i32 %340, %343
  %345 = tail call i32 @llvm.umin.i32(i32 %344, i32 1073741824)
  %346 = load i32, ptr %39, align 4, !tbaa !46
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
  br i1 %355, label %342, label %.loopexit86, !llvm.loop !47

356:                                              ; preds = %342
  %357 = icmp slt i32 %351, 0
  br i1 %357, label %358, label %365

358:                                              ; preds = %356
  %359 = load i32, ptr %341, align 4, !tbaa !4
  %360 = icmp eq i32 %359, 11
  br i1 %360, label %361, label %.loopexit94

361:                                              ; preds = %358
  store i32 1, ptr %38, align 4, !tbaa !17
  %362 = icmp eq i32 %343, 0
  br i1 %362, label %363, label %.loopexit86

363:                                              ; preds = %361
  %364 = load i32, ptr %341, align 4, !tbaa !4
  br label %.loopexit94

365:                                              ; preds = %356
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit86

.loopexit94:                                      ; preds = %358, %363
  %366 = phi i32 [ %364, %363 ], [ %359, %358 ]
  %367 = tail call ptr @strerror(i32 noundef %366) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %367) #13
  %368 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit92

.loopexit86:                                      ; preds = %353, %365, %361
  %369 = phi i32 [ %343, %361 ], [ %343, %365 ], [ %354, %353 ]
  %370 = load i32, ptr %30, align 8, !tbaa !34
  %371 = add i32 %370, %369
  store i32 %371, ptr %30, align 8, !tbaa !34
  %372 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %372, ptr %36, align 8, !tbaa !35
  %373 = icmp eq i32 %371, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %.loopexit86, %335
  %375 = load i32, ptr %38, align 4, !tbaa !17
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %.loopexit92

377:                                              ; preds = %374
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit92

378:                                              ; preds = %.loopexit86, %329
  %379 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %380 = load i32, ptr %33, align 8, !tbaa !48
  %381 = icmp ult i32 %380, %327
  br i1 %381, label %382, label %383

382:                                              ; preds = %378
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %383

383:                                              ; preds = %382, %378
  switch i32 %379, label %400 [
    i32 -2, label %384
    i32 2, label %384
    i32 -4, label %385
    i32 -3, label %386
  ]

384:                                              ; preds = %383, %383
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit92

385:                                              ; preds = %383
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %404

386:                                              ; preds = %383
  %387 = load i32, ptr %40, align 4, !tbaa !33
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %395

389:                                              ; preds = %386
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  %390 = sub i32 %327, %380
  store i32 %390, ptr %0, align 8, !tbaa !19
  %391 = load ptr, ptr %35, align 8, !tbaa !49
  %392 = zext i32 %390 to i64
  %393 = sub nsw i64 0, %392
  %394 = getelementptr inbounds i8, ptr %391, i64 %393
  store ptr %394, ptr %27, align 8, !tbaa !20
  br label %420

395:                                              ; preds = %386
  %396 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %397 = load ptr, ptr %396, align 8, !tbaa !50
  %398 = icmp eq ptr %397, null
  %399 = select i1 %398, ptr @.str.6, ptr %397
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %399) #13
  br label %404

400:                                              ; preds = %383
  %401 = icmp ne i32 %380, 0
  %402 = icmp ne i32 %379, 1
  %403 = select i1 %401, i1 %402, i1 false
  br i1 %403, label %329, label %.loopexit92, !llvm.loop !51

404:                                              ; preds = %395, %385
  %405 = load i32, ptr %33, align 8, !tbaa !48
  %406 = sub i32 %327, %405
  store i32 %406, ptr %0, align 8, !tbaa !19
  %407 = load ptr, ptr %35, align 8, !tbaa !49
  %408 = zext i32 %406 to i64
  %409 = sub nsw i64 0, %408
  %410 = getelementptr inbounds i8, ptr %407, i64 %409
  store ptr %410, ptr %27, align 8, !tbaa !20
  br label %.loopexit96

.loopexit92:                                      ; preds = %400, %333, %384, %377, %374, %.loopexit94
  %411 = phi i32 [ %368, %.loopexit94 ], [ %330, %374 ], [ %330, %377 ], [ %379, %384 ], [ %334, %333 ], [ %379, %400 ]
  %412 = load i32, ptr %33, align 8, !tbaa !48
  %413 = sub i32 %327, %412
  store i32 %413, ptr %0, align 8, !tbaa !19
  %414 = load ptr, ptr %35, align 8, !tbaa !49
  %415 = zext i32 %413 to i64
  %416 = sub nsw i64 0, %415
  %417 = getelementptr inbounds i8, ptr %414, i64 %416
  store ptr %417, ptr %27, align 8, !tbaa !20
  switch i32 %411, label %.loopexit96 [
    i32 1, label %418
    i32 0, label %420
  ]

418:                                              ; preds = %.loopexit92
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %420

419:                                              ; preds = %73
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit96

420:                                              ; preds = %418, %.loopexit92, %389, %288, %282
  %421 = load i32, ptr %0, align 8, !tbaa !19
  br label %422

422:                                              ; preds = %420, %284
  %423 = phi i32 [ %421, %420 ], [ %287, %284 ]
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %.loopexit99

425:                                              ; preds = %422
  %426 = load i32, ptr %29, align 8, !tbaa !24
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %.backedge, label %428

428:                                              ; preds = %425
  %429 = load i32, ptr %30, align 8, !tbaa !34
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %.loopexit99, label %.backedge

.backedge:                                        ; preds = %428, %425
  br label %73, !llvm.loop !52

.loopexit99:                                      ; preds = %428, %422, %288, %.loopexit95
  %431 = load i64, ptr %23, align 8, !tbaa !18
  br label %432

432:                                              ; preds = %.loopexit99, %65
  %433 = phi i64 [ %431, %.loopexit99 ], [ %66, %65 ]
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %.loopexit100, label %44, !llvm.loop !53

.loopexit100:                                     ; preds = %432, %70, %22
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %440 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %453

453:                                              ; preds = %993, %.loopexit100
  %454 = phi ptr [ %1, %.loopexit100 ], [ %988, %993 ]
  %455 = phi i64 [ %20, %.loopexit100 ], [ %989, %993 ]
  %456 = phi i64 [ 0, %.loopexit100 ], [ %990, %993 ]
  %457 = tail call i64 @llvm.umin.i64(i64 %455, i64 4294967295)
  %458 = trunc nuw i64 %457 to i32
  %459 = load i32, ptr %0, align 8, !tbaa !19
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
  %467 = load i32, ptr %0, align 8, !tbaa !19
  %468 = sub i32 %467, %462
  store i32 %468, ptr %0, align 8, !tbaa !19
  %469 = load i32, ptr %10, align 8, !tbaa !16
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
  br i1 %477, label %.loopexit84, label %478

478:                                              ; preds = %475, %472
  %479 = load i32, ptr %438, align 8, !tbaa !26
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %.preheader669, label %481

481:                                              ; preds = %478
  %482 = load i32, ptr %439, align 8, !tbaa !27
  %483 = shl i32 %482, 1
  %484 = icmp ugt i32 %483, %458
  br i1 %484, label %.preheader669, label %848

.preheader669:                                    ; preds = %481, %478
  br label %485

485:                                              ; preds = %.preheader669, %843
  %486 = phi i32 [ %844, %843 ], [ %479, %.preheader669 ]
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

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
  %521 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %521, label %.loopexit78 [
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
  br i1 %553, label %554, label %544, !llvm.loop !54

554:                                              ; preds = %544
  %555 = icmp eq i64 %543, %535
  br i1 %555, label %.loopexit71, label %556

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
  br i1 %572, label %573, label %566, !llvm.loop !55

573:                                              ; preds = %566
  %574 = getelementptr i8, ptr %528, i64 %565
  %575 = getelementptr i8, ptr %531, i64 %565
  %576 = trunc nuw i64 %565 to i32
  %577 = sub i32 %525, %576
  %578 = icmp eq i64 %565, %535
  br i1 %578, label %.loopexit71, label %579

579:                                              ; preds = %573, %556, %533
  %580 = phi ptr [ %528, %533 ], [ %560, %556 ], [ %574, %573 ]
  %581 = phi ptr [ %531, %533 ], [ %559, %556 ], [ %575, %573 ]
  %582 = phi i32 [ %525, %533 ], [ %558, %556 ], [ %577, %573 ]
  %583 = add i32 %582, -1
  %584 = and i32 %582, 7
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %.loopexit73, label %.preheader72

.preheader72:                                     ; preds = %579, %.preheader72
  %586 = phi ptr [ %591, %.preheader72 ], [ %580, %579 ]
  %587 = phi ptr [ %589, %.preheader72 ], [ %581, %579 ]
  %588 = phi i32 [ %592, %.preheader72 ], [ 0, %579 ]
  %589 = getelementptr inbounds nuw i8, ptr %587, i64 1
  %590 = load i8, ptr %587, align 1, !tbaa !36
  %591 = getelementptr inbounds nuw i8, ptr %586, i64 1
  store i8 %590, ptr %586, align 1, !tbaa !36
  %592 = add nuw nsw i32 %588, 1
  %593 = icmp eq i32 %592, %584
  br i1 %593, label %.loopexit73.loopexit, label %.preheader72, !llvm.loop !56

.loopexit73.loopexit:                             ; preds = %.preheader72
  %594 = and i32 %582, -8
  br label %.loopexit73

.loopexit73:                                      ; preds = %.loopexit73.loopexit, %579
  %595 = phi ptr [ %580, %579 ], [ %591, %.loopexit73.loopexit ]
  %596 = phi ptr [ %581, %579 ], [ %589, %.loopexit73.loopexit ]
  %597 = phi i32 [ %582, %579 ], [ %594, %.loopexit73.loopexit ]
  %598 = icmp ult i32 %583, 7
  br i1 %598, label %.loopexit71, label %.preheader

.preheader:                                       ; preds = %.loopexit73, %.preheader
  %599 = phi ptr [ %625, %.preheader ], [ %595, %.loopexit73 ]
  %600 = phi ptr [ %623, %.preheader ], [ %596, %.loopexit73 ]
  %601 = phi i32 [ %626, %.preheader ], [ %597, %.loopexit73 ]
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
  br i1 %627, label %.loopexit71, label %.preheader, !llvm.loop !57

.loopexit71:                                      ; preds = %.preheader, %.loopexit73, %573, %554
  %628 = load i32, ptr %437, align 8, !tbaa !34
  %629 = load ptr, ptr %443, align 8, !tbaa !29
  br label %630

630:                                              ; preds = %.loopexit71, %530, %526
  %631 = phi ptr [ %629, %.loopexit71 ], [ %528, %530 ], [ %528, %526 ]
  %632 = phi i32 [ %628, %.loopexit71 ], [ %525, %530 ], [ 0, %526 ]
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
  br i1 %651, label %638, label %.loopexit70, !llvm.loop !47

652:                                              ; preds = %638
  %653 = icmp slt i32 %647, 0
  br i1 %653, label %654, label %661

654:                                              ; preds = %652
  %655 = load i32, ptr %637, align 4, !tbaa !4
  %656 = icmp eq i32 %655, 11
  br i1 %656, label %657, label %.loopexit79

657:                                              ; preds = %654
  store i32 1, ptr %444, align 4, !tbaa !17
  %658 = icmp eq i32 %639, 0
  br i1 %658, label %659, label %.loopexit70

659:                                              ; preds = %657
  %660 = load i32, ptr %637, align 4, !tbaa !4
  br label %.loopexit79

661:                                              ; preds = %652
  store i32 1, ptr %436, align 8, !tbaa !24
  br label %.loopexit70

.loopexit79:                                      ; preds = %654, %659
  %662 = phi i32 [ %660, %659 ], [ %655, %654 ]
  %663 = tail call ptr @strerror(i32 noundef %662) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %663) #13
  br label %.loopexit78

.loopexit70:                                      ; preds = %649, %661, %657
  %664 = phi i32 [ %639, %657 ], [ %639, %661 ], [ %650, %649 ]
  %665 = load i32, ptr %437, align 8, !tbaa !34
  %666 = add i32 %665, %664
  store i32 %666, ptr %437, align 8, !tbaa !34
  %667 = load ptr, ptr %443, align 8, !tbaa !29
  store ptr %667, ptr %442, align 8, !tbaa !35
  br label %668

668:                                              ; preds = %.loopexit70, %522
  %669 = phi i32 [ %666, %.loopexit70 ], [ %525, %522 ]
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
  store i32 %699, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %437, align 8, !tbaa !34
  store i32 1, ptr %438, align 8, !tbaa !26
  br label %834

700:                                              ; preds = %671, %668, %515
  %701 = load i32, ptr %438, align 8, !tbaa !26
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %.loopexit80, label %832

703:                                              ; preds = %485
  %704 = load ptr, ptr %449, align 8, !tbaa !30
  %705 = load i32, ptr %439, align 8, !tbaa !27
  %706 = shl i32 %705, 1
  store i32 0, ptr %444, align 4, !tbaa !17
  %707 = tail call ptr @__errno_location() #16
  store i32 0, ptr %707, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
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
  %720 = load i32, ptr %0, align 4, !tbaa !4
  %721 = add i32 %720, %717
  store i32 %721, ptr %0, align 4, !tbaa !4
  %722 = icmp ult i32 %721, %706
  br i1 %722, label %708, label %.loopexit77, !llvm.loop !47

723:                                              ; preds = %708
  %724 = icmp slt i32 %717, 0
  br i1 %724, label %725, label %733

725:                                              ; preds = %723
  %726 = load i32, ptr %707, align 4, !tbaa !4
  %727 = icmp eq i32 %726, 11
  br i1 %727, label %728, label %734

728:                                              ; preds = %725
  store i32 1, ptr %444, align 4, !tbaa !17
  %729 = load i32, ptr %0, align 4, !tbaa !4
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %.loopexit77

731:                                              ; preds = %728
  %732 = load i32, ptr %707, align 4, !tbaa !4
  br label %734

733:                                              ; preds = %723
  store i32 1, ptr %436, align 8, !tbaa !24
  br label %.loopexit77

734:                                              ; preds = %731, %725
  %735 = phi i32 [ %732, %731 ], [ %726, %725 ]
  %736 = tail call ptr @strerror(i32 noundef %735) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %736) #13
  br label %.loopexit78

.loopexit77:                                      ; preds = %719, %733, %728
  %737 = load ptr, ptr %449, align 8, !tbaa !30
  store ptr %737, ptr %435, align 8, !tbaa !20
  br label %.loopexit80

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
  %747 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %747, label %.loopexit74 [
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
  br i1 %773, label %774, label %.loopexit75

774:                                              ; preds = %771
  store i32 1, ptr %444, align 4, !tbaa !17
  %775 = icmp eq i32 %756, 0
  br i1 %775, label %776, label %.loopexit

776:                                              ; preds = %774
  %777 = load i32, ptr %754, align 4, !tbaa !4
  br label %.loopexit75

778:                                              ; preds = %769
  store i32 1, ptr %436, align 8, !tbaa !24
  br label %.loopexit

.loopexit75:                                      ; preds = %771, %776
  %779 = phi i32 [ %777, %776 ], [ %772, %771 ]
  %780 = tail call ptr @strerror(i32 noundef %779) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %780) #13
  %781 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit74

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
  br i1 %789, label %790, label %.loopexit74

790:                                              ; preds = %787
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit74

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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit74

798:                                              ; preds = %796
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
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
  store i32 %803, ptr %0, align 8, !tbaa !19
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %811) #13
  br label %816

812:                                              ; preds = %796
  %813 = icmp ne i32 %793, 0
  %814 = icmp ne i32 %792, 1
  %815 = select i1 %813, i1 %814, i1 false
  br i1 %815, label %742, label %.loopexit74, !llvm.loop !51

816:                                              ; preds = %808, %798
  %817 = load i32, ptr %440, align 8, !tbaa !48
  %818 = sub i32 %740, %817
  store i32 %818, ptr %0, align 8, !tbaa !19
  %819 = load ptr, ptr %441, align 8, !tbaa !49
  %820 = zext i32 %818 to i64
  %821 = sub nsw i64 0, %820
  %822 = getelementptr inbounds i8, ptr %819, i64 %821
  store ptr %822, ptr %435, align 8, !tbaa !20
  br label %.loopexit78

.loopexit74:                                      ; preds = %812, %746, %797, %790, %787, %.loopexit75
  %823 = phi i32 [ %781, %.loopexit75 ], [ %743, %787 ], [ %743, %790 ], [ %792, %797 ], [ %792, %812 ], [ %747, %746 ]
  %824 = load i32, ptr %440, align 8, !tbaa !48
  %825 = sub i32 %740, %824
  store i32 %825, ptr %0, align 8, !tbaa !19
  %826 = load ptr, ptr %441, align 8, !tbaa !49
  %827 = zext i32 %825 to i64
  %828 = sub nsw i64 0, %827
  %829 = getelementptr inbounds i8, ptr %826, i64 %828
  store ptr %829, ptr %435, align 8, !tbaa !20
  switch i32 %823, label %.loopexit78 [
    i32 1, label %830
    i32 0, label %832
  ]

830:                                              ; preds = %.loopexit74
  store i32 0, ptr %446, align 4, !tbaa !33
  store i32 0, ptr %438, align 8, !tbaa !26
  br label %832

831:                                              ; preds = %485
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit78

832:                                              ; preds = %830, %.loopexit74, %802, %700, %694
  %833 = load i32, ptr %0, align 8, !tbaa !19
  br label %834

834:                                              ; preds = %832, %696
  %835 = phi i32 [ %833, %832 ], [ %699, %696 ]
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %837, label %.loopexit80

837:                                              ; preds = %834
  %838 = load i32, ptr %436, align 8, !tbaa !24
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %843, label %840

840:                                              ; preds = %837
  %841 = load i32, ptr %437, align 8, !tbaa !34
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %.loopexit80, label %843

843:                                              ; preds = %840, %837
  %844 = load i32, ptr %438, align 8, !tbaa !26
  br label %485, !llvm.loop !52

.loopexit78:                                      ; preds = %.loopexit74, %520, %831, %816, %734, %.loopexit79, %506, %501
  %845 = load i32, ptr %0, align 8, !tbaa !19
  %846 = icmp eq i32 %845, 0
  %847 = sext i1 %846 to i32
  br label %.loopexit80

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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %877) #13
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
  %885 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %885, label %.loopexit81 [
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
  br i1 %906, label %893, label %.loopexit76, !llvm.loop !47

907:                                              ; preds = %893
  %908 = icmp slt i32 %902, 0
  br i1 %908, label %909, label %916

909:                                              ; preds = %907
  %910 = load i32, ptr %892, align 4, !tbaa !4
  %911 = icmp eq i32 %910, 11
  br i1 %911, label %912, label %.loopexit83

912:                                              ; preds = %909
  store i32 1, ptr %444, align 4, !tbaa !17
  %913 = icmp eq i32 %894, 0
  br i1 %913, label %914, label %.loopexit76

914:                                              ; preds = %912
  %915 = load i32, ptr %892, align 4, !tbaa !4
  br label %.loopexit83

916:                                              ; preds = %907
  store i32 1, ptr %436, align 8, !tbaa !24
  br label %.loopexit76

.loopexit83:                                      ; preds = %909, %914
  %917 = phi i32 [ %915, %914 ], [ %910, %909 ]
  %918 = tail call ptr @strerror(i32 noundef %917) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %918) #13
  %919 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit81

.loopexit76:                                      ; preds = %904, %916, %912
  %920 = phi i32 [ %894, %912 ], [ %894, %916 ], [ %905, %904 ]
  %921 = load i32, ptr %437, align 8, !tbaa !34
  %922 = add i32 %921, %920
  store i32 %922, ptr %437, align 8, !tbaa !34
  %923 = load ptr, ptr %443, align 8, !tbaa !29
  store ptr %923, ptr %442, align 8, !tbaa !35
  %924 = icmp eq i32 %922, 0
  br i1 %924, label %925, label %929

925:                                              ; preds = %.loopexit76, %886
  %926 = load i32, ptr %444, align 4, !tbaa !17
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %.loopexit81

928:                                              ; preds = %925
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit81

929:                                              ; preds = %.loopexit76, %880
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit81

936:                                              ; preds = %934
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %944) #13
  br label %949

945:                                              ; preds = %934
  %946 = icmp ne i32 %931, 0
  %947 = icmp ne i32 %930, 1
  %948 = select i1 %946, i1 %947, i1 false
  br i1 %948, label %880, label %.loopexit81, !llvm.loop !51

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

.loopexit81:                                      ; preds = %945, %884, %935, %928, %925, %.loopexit83
  %957 = phi i32 [ %919, %.loopexit83 ], [ %881, %925 ], [ %881, %928 ], [ %930, %935 ], [ %930, %945 ], [ %885, %884 ]
  %958 = load i32, ptr %440, align 8, !tbaa !48
  %959 = sub i32 %458, %958
  %960 = load ptr, ptr %441, align 8, !tbaa !49
  %961 = zext i32 %959 to i64
  %962 = sub nsw i64 0, %961
  %963 = getelementptr inbounds i8, ptr %960, i64 %962
  store ptr %963, ptr %435, align 8, !tbaa !20
  %964 = icmp eq i32 %957, 1
  br i1 %964, label %965, label %966

965:                                              ; preds = %.loopexit81
  store i32 0, ptr %446, align 4, !tbaa !33
  store i32 0, ptr %438, align 8, !tbaa !26
  br label %971

966:                                              ; preds = %.loopexit81, %949
  %967 = phi i64 [ %954, %949 ], [ %961, %.loopexit81 ]
  %968 = phi i32 [ %950, %949 ], [ %957, %.loopexit81 ]
  %969 = icmp ne i32 %968, 0
  %970 = sext i1 %969 to i32
  br label %971

971:                                              ; preds = %966, %965
  %972 = phi i64 [ %961, %965 ], [ %967, %966 ]
  %973 = phi i32 [ 0, %965 ], [ %970, %966 ]
  store i32 0, ptr %0, align 8, !tbaa !19
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
  br label %.loopexit80

.loopexit80:                                      ; preds = %840, %834, %700, %983, %.loopexit78, %.loopexit77
  %988 = phi ptr [ %986, %983 ], [ %454, %.loopexit78 ], [ %454, %.loopexit77 ], [ %454, %700 ], [ %454, %834 ], [ %454, %840 ]
  %989 = phi i64 [ %987, %983 ], [ %455, %.loopexit78 ], [ %455, %.loopexit77 ], [ %455, %700 ], [ %455, %834 ], [ %455, %840 ]
  %990 = phi i64 [ %985, %983 ], [ %456, %.loopexit78 ], [ %456, %.loopexit77 ], [ %456, %700 ], [ %456, %834 ], [ %456, %840 ]
  %991 = phi i32 [ %978, %983 ], [ %847, %.loopexit78 ], [ 0, %.loopexit77 ], [ 0, %700 ], [ 0, %834 ], [ 0, %840 ]
  %992 = icmp eq i64 %989, 0
  br i1 %992, label %.loopexit85, label %993

993:                                              ; preds = %.loopexit80
  %994 = icmp eq i32 %991, 0
  br i1 %994, label %453, label %995, !llvm.loop !60

995:                                              ; preds = %993
  %996 = load i32, ptr %436, align 8, !tbaa !24
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %.loopexit85, label %.loopexit84

.loopexit84:                                      ; preds = %475, %995
  %998 = phi i64 [ %990, %995 ], [ %456, %475 ]
  %999 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %999, align 4, !tbaa !61
  br label %.loopexit85

.loopexit85:                                      ; preds = %.loopexit80, %.loopexit84, %995
  %1000 = phi i64 [ %990, %995 ], [ %998, %.loopexit84 ], [ %990, %.loopexit80 ]
  %1001 = trunc i64 %1000 to i32
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %.loopexit96, label %1013

.loopexit96:                                      ; preds = %.loopexit92, %.loopexit85, %419, %404, %.loopexit101, %.loopexit98, %94, %89, %19
  %1003 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit97

.loopexit97:                                      ; preds = %108, %.loopexit96
  %1004 = phi i32 [ %1003, %.loopexit96 ], [ %109, %108 ]
  switch i32 %1004, label %1013 [
    i32 0, label %1005
    i32 -5, label %1005
  ]

1005:                                             ; preds = %.loopexit97, %.loopexit97
  %1006 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1007 = load i32, ptr %1006, align 4, !tbaa !17
  %1008 = icmp eq i32 %1007, 0
  br i1 %1008, label %1013, label %1009

1009:                                             ; preds = %1005
  %1010 = tail call ptr @__errno_location() #16
  %1011 = load i32, ptr %1010, align 4, !tbaa !4
  %1012 = tail call ptr @strerror(i32 noundef %1011) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1012) #13
  br label %1013

1013:                                             ; preds = %1009, %1005, %.loopexit97, %.loopexit85, %18, %12, %5, %3
  %1014 = phi i32 [ -1, %5 ], [ -1, %3 ], [ -1, %18 ], [ -1, %12 ], [ -1, %1009 ], [ -1, %.loopexit97 ], [ 0, %1005 ], [ %1001, %.loopexit85 ]
  ret i32 %1014
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
  br i1 %5, label %1006, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1006

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
  br i1 %16, label %1006, label %17

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
  br label %1006

24:                                               ; preds = %21, %17
  %25 = icmp eq i64 %19, 0
  br i1 %25, label %1006, label %26

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

48:                                               ; preds = %436, %30
  %49 = phi i64 [ %437, %436 ], [ %28, %30 ]
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
  br label %436

71:                                               ; preds = %48
  %72 = load i32, ptr %33, align 8, !tbaa !24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %.preheader728, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %34, align 8, !tbaa !25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %.loopexit98, label %.preheader728

.preheader728:                                    ; preds = %74, %71
  br label %77

77:                                               ; preds = %.backedge, %.preheader728
  %78 = load i32, ptr %35, align 8, !tbaa !26
  switch i32 %78, label %423 [
    i32 0, label %79
    i32 1, label %295
    i32 2, label %329
  ]

79:                                               ; preds = %77
  %80 = load i32, ptr %36, align 8, !tbaa !27
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load i32, ptr %45, align 4, !tbaa !28
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #15
  store ptr %85, ptr %41, align 8, !tbaa !29
  %86 = load i32, ptr %45, align 4, !tbaa !28
  %87 = shl i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = tail call noalias ptr @malloc(i64 noundef %88) #15
  store ptr %89, ptr %38, align 8, !tbaa !30
  %90 = icmp eq ptr %85, null
  %91 = icmp eq ptr %89, null
  %92 = or i1 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  tail call void @free(ptr noundef %89) #13
  tail call void @free(ptr noundef %85) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit84

94:                                               ; preds = %82
  %95 = load i32, ptr %45, align 4, !tbaa !28
  store i32 %95, ptr %36, align 8, !tbaa !27
  store i32 0, ptr %34, align 8, !tbaa !25
  store ptr null, ptr %40, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  %96 = tail call i32 @inflateInit2_(ptr noundef nonnull %40, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %38, align 8, !tbaa !30
  tail call void @free(ptr noundef %99) #13
  %100 = load ptr, ptr %41, align 8, !tbaa !29
  tail call void @free(ptr noundef %100) #13
  store i32 0, ptr %36, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit84

101:                                              ; preds = %94, %79
  %102 = load i32, ptr %47, align 8, !tbaa !32
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %44, align 4, !tbaa !33
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104, %101
  %108 = tail call i32 @inflateReset(ptr noundef nonnull %40) #13
  store i32 2, ptr %35, align 8, !tbaa !26
  %109 = load i32, ptr %44, align 4, !tbaa !33
  %110 = icmp ne i32 %109, -1
  %111 = zext i1 %110 to i32
  store i32 %111, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %47, align 8, !tbaa !32
  br label %292

112:                                              ; preds = %104
  %113 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %113, label %.loopexit84 [
    i32 0, label %114
    i32 -5, label %114
  ]

114:                                              ; preds = %112, %112
  %115 = load i32, ptr %33, align 8, !tbaa !24
  %116 = icmp eq i32 %115, 0
  %117 = load i32, ptr %34, align 8, !tbaa !34
  br i1 %116, label %118, label %260

118:                                              ; preds = %114
  %119 = icmp eq i32 %117, 0
  %120 = load ptr, ptr %41, align 8, !tbaa !29
  %121 = ptrtoaddr ptr %120 to i64
  br i1 %119, label %222, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %40, align 8, !tbaa !35
  %124 = icmp eq ptr %123, %120
  br i1 %124, label %222, label %125

125:                                              ; preds = %122
  %126 = ptrtoaddr ptr %123 to i64
  %127 = zext i32 %117 to i64
  %128 = icmp ult i32 %117, 4
  %129 = sub i64 %121, %126
  %130 = icmp ult i64 %129, 32
  %131 = select i1 %128, i1 true, i1 %130
  br i1 %131, label %171, label %132

132:                                              ; preds = %125
  %133 = icmp ult i32 %117, 32
  br i1 %133, label %155, label %134

134:                                              ; preds = %132
  %135 = and i64 %127, 4294967264
  br label %136

136:                                              ; preds = %136, %134
  %137 = phi i64 [ 0, %134 ], [ %144, %136 ]
  %138 = getelementptr i8, ptr %120, i64 %137
  %139 = getelementptr i8, ptr %123, i64 %137
  %140 = getelementptr i8, ptr %139, i64 16
  %141 = load <16 x i8>, ptr %139, align 1, !tbaa !36
  %142 = load <16 x i8>, ptr %140, align 1, !tbaa !36
  %143 = getelementptr i8, ptr %138, i64 16
  store <16 x i8> %141, ptr %138, align 1, !tbaa !36
  store <16 x i8> %142, ptr %143, align 1, !tbaa !36
  %144 = add nuw nsw i64 %137, 32
  %145 = icmp eq i64 %144, %135
  br i1 %145, label %146, label %136, !llvm.loop !62

146:                                              ; preds = %136
  %147 = icmp eq i64 %135, %127
  br i1 %147, label %.loopexit88, label %148

148:                                              ; preds = %146
  %149 = trunc nuw i64 %135 to i32
  %150 = sub i32 %117, %149
  %151 = getelementptr i8, ptr %123, i64 %135
  %152 = getelementptr i8, ptr %120, i64 %135
  %153 = and i64 %127, 28
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %171, label %155, !prof !41

155:                                              ; preds = %148, %132
  %156 = phi i64 [ %135, %148 ], [ 0, %132 ]
  %157 = and i64 %127, 4294967292
  br label %158

158:                                              ; preds = %158, %155
  %159 = phi i64 [ %156, %155 ], [ %163, %158 ]
  %160 = getelementptr i8, ptr %120, i64 %159
  %161 = getelementptr i8, ptr %123, i64 %159
  %162 = load <4 x i8>, ptr %161, align 1, !tbaa !36
  store <4 x i8> %162, ptr %160, align 1, !tbaa !36
  %163 = add nuw i64 %159, 4
  %164 = icmp eq i64 %163, %157
  br i1 %164, label %165, label %158, !llvm.loop !63

165:                                              ; preds = %158
  %166 = getelementptr i8, ptr %120, i64 %157
  %167 = getelementptr i8, ptr %123, i64 %157
  %168 = trunc nuw i64 %157 to i32
  %169 = sub i32 %117, %168
  %170 = icmp eq i64 %157, %127
  br i1 %170, label %.loopexit88, label %171

171:                                              ; preds = %165, %148, %125
  %172 = phi ptr [ %120, %125 ], [ %152, %148 ], [ %166, %165 ]
  %173 = phi ptr [ %123, %125 ], [ %151, %148 ], [ %167, %165 ]
  %174 = phi i32 [ %117, %125 ], [ %150, %148 ], [ %169, %165 ]
  %175 = add i32 %174, -1
  %176 = and i32 %174, 7
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %.loopexit90, label %.preheader89

.preheader89:                                     ; preds = %171, %.preheader89
  %178 = phi ptr [ %183, %.preheader89 ], [ %172, %171 ]
  %179 = phi ptr [ %181, %.preheader89 ], [ %173, %171 ]
  %180 = phi i32 [ %184, %.preheader89 ], [ 0, %171 ]
  %181 = getelementptr inbounds nuw i8, ptr %179, i64 1
  %182 = load i8, ptr %179, align 1, !tbaa !36
  %183 = getelementptr inbounds nuw i8, ptr %178, i64 1
  store i8 %182, ptr %178, align 1, !tbaa !36
  %184 = add nuw nsw i32 %180, 1
  %185 = icmp eq i32 %184, %176
  br i1 %185, label %.loopexit90.loopexit, label %.preheader89, !llvm.loop !64

.loopexit90.loopexit:                             ; preds = %.preheader89
  %186 = and i32 %174, -8
  br label %.loopexit90

.loopexit90:                                      ; preds = %.loopexit90.loopexit, %171
  %187 = phi ptr [ %172, %171 ], [ %183, %.loopexit90.loopexit ]
  %188 = phi ptr [ %173, %171 ], [ %181, %.loopexit90.loopexit ]
  %189 = phi i32 [ %174, %171 ], [ %186, %.loopexit90.loopexit ]
  %190 = icmp ult i32 %175, 7
  br i1 %190, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %.loopexit90, %.preheader87
  %191 = phi ptr [ %217, %.preheader87 ], [ %187, %.loopexit90 ]
  %192 = phi ptr [ %215, %.preheader87 ], [ %188, %.loopexit90 ]
  %193 = phi i32 [ %218, %.preheader87 ], [ %189, %.loopexit90 ]
  %194 = getelementptr inbounds nuw i8, ptr %192, i64 1
  %195 = load i8, ptr %192, align 1, !tbaa !36
  %196 = getelementptr inbounds nuw i8, ptr %191, i64 1
  store i8 %195, ptr %191, align 1, !tbaa !36
  %197 = getelementptr inbounds nuw i8, ptr %192, i64 2
  %198 = load i8, ptr %194, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %191, i64 2
  store i8 %198, ptr %196, align 1, !tbaa !36
  %200 = getelementptr inbounds nuw i8, ptr %192, i64 3
  %201 = load i8, ptr %197, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %191, i64 3
  store i8 %201, ptr %199, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %192, i64 4
  %204 = load i8, ptr %200, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %191, i64 4
  store i8 %204, ptr %202, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %192, i64 5
  %207 = load i8, ptr %203, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %191, i64 5
  store i8 %207, ptr %205, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %192, i64 6
  %210 = load i8, ptr %206, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %191, i64 6
  store i8 %210, ptr %208, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %192, i64 7
  %213 = load i8, ptr %209, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %191, i64 7
  store i8 %213, ptr %211, align 1, !tbaa !36
  %215 = getelementptr inbounds nuw i8, ptr %192, i64 8
  %216 = load i8, ptr %212, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %191, i64 8
  store i8 %216, ptr %214, align 1, !tbaa !36
  %218 = add i32 %193, -8
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %.loopexit88, label %.preheader87, !llvm.loop !65

.loopexit88:                                      ; preds = %.preheader87, %.loopexit90, %165, %146
  %220 = load i32, ptr %34, align 8, !tbaa !34
  %221 = load ptr, ptr %41, align 8, !tbaa !29
  br label %222

222:                                              ; preds = %.loopexit88, %122, %118
  %223 = phi ptr [ %221, %.loopexit88 ], [ %120, %122 ], [ %120, %118 ]
  %224 = phi i32 [ %220, %.loopexit88 ], [ %117, %122 ], [ 0, %118 ]
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds nuw i8, ptr %223, i64 %225
  %227 = load i32, ptr %36, align 8, !tbaa !27
  %228 = sub i32 %227, %224
  store i32 0, ptr %42, align 4, !tbaa !17
  %229 = tail call ptr @__errno_location() #16
  store i32 0, ptr %229, align 4, !tbaa !4
  br label %230

230:                                              ; preds = %241, %222
  %231 = phi i32 [ 0, %222 ], [ %242, %241 ]
  %232 = sub i32 %228, %231
  %233 = tail call i32 @llvm.umin.i32(i32 %232, i32 1073741824)
  %234 = load i32, ptr %43, align 4, !tbaa !46
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
  br i1 %243, label %230, label %.loopexit86, !llvm.loop !47

244:                                              ; preds = %230
  %245 = icmp slt i32 %239, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %244
  %247 = load i32, ptr %229, align 4, !tbaa !4
  %248 = icmp eq i32 %247, 11
  br i1 %248, label %249, label %.loopexit96

249:                                              ; preds = %246
  store i32 1, ptr %42, align 4, !tbaa !17
  %250 = icmp eq i32 %231, 0
  br i1 %250, label %251, label %.loopexit86

251:                                              ; preds = %249
  %252 = load i32, ptr %229, align 4, !tbaa !4
  br label %.loopexit96

253:                                              ; preds = %244
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %.loopexit86

.loopexit96:                                      ; preds = %246, %251
  %254 = phi i32 [ %252, %251 ], [ %247, %246 ]
  %255 = tail call ptr @strerror(i32 noundef %254) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %255) #13
  br label %.loopexit84

.loopexit86:                                      ; preds = %241, %253, %249
  %256 = phi i32 [ %231, %249 ], [ %231, %253 ], [ %242, %241 ]
  %257 = load i32, ptr %34, align 8, !tbaa !34
  %258 = add i32 %257, %256
  store i32 %258, ptr %34, align 8, !tbaa !34
  %259 = load ptr, ptr %41, align 8, !tbaa !29
  store ptr %259, ptr %40, align 8, !tbaa !35
  br label %260

260:                                              ; preds = %.loopexit86, %114
  %261 = phi i32 [ %258, %.loopexit86 ], [ %117, %114 ]
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %292, label %263

263:                                              ; preds = %260
  %264 = load i32, ptr %42, align 4, !tbaa !17
  %265 = icmp ne i32 %264, 0
  %266 = icmp ult i32 %261, 4
  %267 = and i1 %266, %265
  br i1 %267, label %292, label %268

268:                                              ; preds = %263
  %269 = icmp ugt i32 %261, 3
  %270 = load ptr, ptr %40, align 8, !tbaa !35
  br i1 %269, label %271, label %288

271:                                              ; preds = %268
  %272 = load i8, ptr %270, align 1, !tbaa !36
  %273 = icmp eq i8 %272, 31
  br i1 %273, label %274, label %288

274:                                              ; preds = %271
  %275 = getelementptr inbounds nuw i8, ptr %270, i64 1
  %276 = load i8, ptr %275, align 1, !tbaa !36
  %277 = icmp eq i8 %276, -117
  br i1 %277, label %278, label %288

278:                                              ; preds = %274
  %279 = getelementptr inbounds nuw i8, ptr %270, i64 2
  %280 = load i8, ptr %279, align 1, !tbaa !36
  %281 = icmp eq i8 %280, 8
  br i1 %281, label %282, label %288

282:                                              ; preds = %278
  %283 = getelementptr inbounds nuw i8, ptr %270, i64 3
  %284 = load i8, ptr %283, align 1, !tbaa !36
  %285 = icmp ult i8 %284, 32
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = tail call i32 @inflateReset(ptr noundef nonnull %40) #13
  store i32 2, ptr %35, align 8, !tbaa !26
  store i32 1, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %47, align 8, !tbaa !32
  br label %424

288:                                              ; preds = %282, %278, %274, %271, %268
  %289 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %289, ptr %31, align 8, !tbaa !20
  %290 = zext i32 %261 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %289, ptr align 1 %270, i64 %290, i1 false)
  %291 = load i32, ptr %34, align 8, !tbaa !34
  store i32 %291, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %34, align 8, !tbaa !34
  store i32 1, ptr %35, align 8, !tbaa !26
  br label %426

292:                                              ; preds = %263, %260, %107
  %293 = load i32, ptr %35, align 8, !tbaa !26
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %.loopexit97, label %424

295:                                              ; preds = %77
  %296 = load ptr, ptr %38, align 8, !tbaa !30
  %297 = load i32, ptr %36, align 8, !tbaa !27
  %298 = shl i32 %297, 1
  store i32 0, ptr %42, align 4, !tbaa !17
  %299 = tail call ptr @__errno_location() #16
  store i32 0, ptr %299, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %300

300:                                              ; preds = %311, %295
  %301 = phi i32 [ %313, %311 ], [ 0, %295 ]
  %302 = sub i32 %298, %301
  %303 = tail call i32 @llvm.umin.i32(i32 %302, i32 1073741824)
  %304 = load i32, ptr %43, align 4, !tbaa !46
  %305 = zext i32 %301 to i64
  %306 = getelementptr inbounds nuw i8, ptr %296, i64 %305
  %307 = zext nneg i32 %303 to i64
  %308 = tail call i64 @read(i32 noundef %304, ptr noundef %306, i64 noundef %307) #13
  %309 = trunc i64 %308 to i32
  %310 = icmp slt i32 %309, 1
  br i1 %310, label %315, label %311

311:                                              ; preds = %300
  %312 = load i32, ptr %3, align 4, !tbaa !4
  %313 = add i32 %312, %309
  store i32 %313, ptr %3, align 4, !tbaa !4
  %314 = icmp ult i32 %313, %298
  br i1 %314, label %300, label %.loopexit94, !llvm.loop !47

315:                                              ; preds = %300
  %316 = icmp slt i32 %309, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %315
  %318 = load i32, ptr %299, align 4, !tbaa !4
  %319 = icmp eq i32 %318, 11
  br i1 %319, label %320, label %.loopexit99

320:                                              ; preds = %317
  store i32 1, ptr %42, align 4, !tbaa !17
  %321 = load i32, ptr %3, align 4, !tbaa !4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %.loopexit94

323:                                              ; preds = %320
  %324 = load i32, ptr %299, align 4, !tbaa !4
  br label %.loopexit99

325:                                              ; preds = %315
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %.loopexit94

.loopexit99:                                      ; preds = %317, %323
  %326 = phi i32 [ %324, %323 ], [ %318, %317 ]
  %327 = tail call ptr @strerror(i32 noundef %326) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %327) #13
  br label %.loopexit84

.loopexit94:                                      ; preds = %311, %325, %320
  %328 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %328, ptr %31, align 8, !tbaa !20
  br label %.loopexit97

329:                                              ; preds = %77
  %330 = load i32, ptr %36, align 8, !tbaa !27
  %331 = shl i32 %330, 1
  store i32 %331, ptr %37, align 8, !tbaa !48
  %332 = load ptr, ptr %38, align 8, !tbaa !30
  store ptr %332, ptr %39, align 8, !tbaa !49
  br label %333

333:                                              ; preds = %404, %329
  %334 = phi i32 [ 0, %329 ], [ %383, %404 ]
  %335 = load i32, ptr %34, align 8, !tbaa !34
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %382

337:                                              ; preds = %333
  %338 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %338, label %.loopexit91 [
    i32 0, label %339
    i32 -5, label %339
  ]

339:                                              ; preds = %337, %337
  %340 = load i32, ptr %33, align 8, !tbaa !24
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %378

342:                                              ; preds = %339
  %343 = load ptr, ptr %41, align 8, !tbaa !29
  %344 = load i32, ptr %36, align 8, !tbaa !27
  store i32 0, ptr %42, align 4, !tbaa !17
  %345 = tail call ptr @__errno_location() #16
  store i32 0, ptr %345, align 4, !tbaa !4
  br label %346

346:                                              ; preds = %357, %342
  %347 = phi i32 [ 0, %342 ], [ %358, %357 ]
  %348 = sub i32 %344, %347
  %349 = tail call i32 @llvm.umin.i32(i32 %348, i32 1073741824)
  %350 = load i32, ptr %43, align 4, !tbaa !46
  %351 = zext i32 %347 to i64
  %352 = getelementptr inbounds nuw i8, ptr %343, i64 %351
  %353 = zext nneg i32 %349 to i64
  %354 = tail call i64 @read(i32 noundef %350, ptr noundef %352, i64 noundef %353) #13
  %355 = trunc i64 %354 to i32
  %356 = icmp slt i32 %355, 1
  br i1 %356, label %360, label %357

357:                                              ; preds = %346
  %358 = add i32 %347, %355
  %359 = icmp ult i32 %358, %344
  br i1 %359, label %346, label %.loopexit85, !llvm.loop !47

360:                                              ; preds = %346
  %361 = icmp slt i32 %355, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %360
  %363 = load i32, ptr %345, align 4, !tbaa !4
  %364 = icmp eq i32 %363, 11
  br i1 %364, label %365, label %.loopexit93

365:                                              ; preds = %362
  store i32 1, ptr %42, align 4, !tbaa !17
  %366 = icmp eq i32 %347, 0
  br i1 %366, label %367, label %.loopexit85

367:                                              ; preds = %365
  %368 = load i32, ptr %345, align 4, !tbaa !4
  br label %.loopexit93

369:                                              ; preds = %360
  store i32 1, ptr %33, align 8, !tbaa !24
  br label %.loopexit85

.loopexit93:                                      ; preds = %362, %367
  %370 = phi i32 [ %368, %367 ], [ %363, %362 ]
  %371 = tail call ptr @strerror(i32 noundef %370) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %371) #13
  %372 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit91

.loopexit85:                                      ; preds = %357, %369, %365
  %373 = phi i32 [ %347, %365 ], [ %347, %369 ], [ %358, %357 ]
  %374 = load i32, ptr %34, align 8, !tbaa !34
  %375 = add i32 %374, %373
  store i32 %375, ptr %34, align 8, !tbaa !34
  %376 = load ptr, ptr %41, align 8, !tbaa !29
  store ptr %376, ptr %40, align 8, !tbaa !35
  %377 = icmp eq i32 %375, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %.loopexit85, %339
  %379 = load i32, ptr %42, align 4, !tbaa !17
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %.loopexit91

381:                                              ; preds = %378
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit91

382:                                              ; preds = %.loopexit85, %333
  %383 = tail call i32 @inflate(ptr noundef nonnull %40, i32 noundef 0) #13
  %384 = load i32, ptr %37, align 8, !tbaa !48
  %385 = icmp ult i32 %384, %331
  br i1 %385, label %386, label %387

386:                                              ; preds = %382
  store i32 0, ptr %44, align 4, !tbaa !33
  br label %387

387:                                              ; preds = %386, %382
  switch i32 %383, label %404 [
    i32 -2, label %388
    i32 2, label %388
    i32 -4, label %389
    i32 -3, label %390
  ]

388:                                              ; preds = %387, %387
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit91

389:                                              ; preds = %387
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %408

390:                                              ; preds = %387
  %391 = load i32, ptr %44, align 4, !tbaa !33
  %392 = icmp eq i32 %391, 1
  br i1 %392, label %393, label %399

393:                                              ; preds = %390
  store i32 0, ptr %34, align 8, !tbaa !34
  store i32 1, ptr %33, align 8, !tbaa !24
  store i32 0, ptr %35, align 8, !tbaa !26
  %394 = sub i32 %331, %384
  store i32 %394, ptr %3, align 8, !tbaa !19
  %395 = load ptr, ptr %39, align 8, !tbaa !49
  %396 = zext i32 %394 to i64
  %397 = sub nsw i64 0, %396
  %398 = getelementptr inbounds i8, ptr %395, i64 %397
  store ptr %398, ptr %31, align 8, !tbaa !20
  br label %424

399:                                              ; preds = %390
  %400 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %401 = load ptr, ptr %400, align 8, !tbaa !50
  %402 = icmp eq ptr %401, null
  %403 = select i1 %402, ptr @.str.6, ptr %401
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %403) #13
  br label %408

404:                                              ; preds = %387
  %405 = icmp ne i32 %384, 0
  %406 = icmp ne i32 %383, 1
  %407 = select i1 %405, i1 %406, i1 false
  br i1 %407, label %333, label %.loopexit91, !llvm.loop !51

408:                                              ; preds = %399, %389
  %409 = load i32, ptr %37, align 8, !tbaa !48
  %410 = sub i32 %331, %409
  store i32 %410, ptr %3, align 8, !tbaa !19
  %411 = load ptr, ptr %39, align 8, !tbaa !49
  %412 = zext i32 %410 to i64
  %413 = sub nsw i64 0, %412
  %414 = getelementptr inbounds i8, ptr %411, i64 %413
  store ptr %414, ptr %31, align 8, !tbaa !20
  br label %.loopexit84

.loopexit91:                                      ; preds = %404, %337, %388, %381, %378, %.loopexit93
  %415 = phi i32 [ %372, %.loopexit93 ], [ %334, %378 ], [ %334, %381 ], [ %383, %388 ], [ %338, %337 ], [ %383, %404 ]
  %416 = load i32, ptr %37, align 8, !tbaa !48
  %417 = sub i32 %331, %416
  store i32 %417, ptr %3, align 8, !tbaa !19
  %418 = load ptr, ptr %39, align 8, !tbaa !49
  %419 = zext i32 %417 to i64
  %420 = sub nsw i64 0, %419
  %421 = getelementptr inbounds i8, ptr %418, i64 %420
  store ptr %421, ptr %31, align 8, !tbaa !20
  switch i32 %415, label %.loopexit84 [
    i32 1, label %422
    i32 0, label %424
  ]

422:                                              ; preds = %.loopexit91
  store i32 0, ptr %44, align 4, !tbaa !33
  store i32 0, ptr %35, align 8, !tbaa !26
  br label %424

423:                                              ; preds = %77
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit84

424:                                              ; preds = %422, %.loopexit91, %393, %292, %286
  %425 = load i32, ptr %3, align 8, !tbaa !19
  br label %426

426:                                              ; preds = %424, %288
  %427 = phi i32 [ %425, %424 ], [ %291, %288 ]
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %.loopexit97

429:                                              ; preds = %426
  %430 = load i32, ptr %33, align 8, !tbaa !24
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %.backedge, label %432

432:                                              ; preds = %429
  %433 = load i32, ptr %34, align 8, !tbaa !34
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %.loopexit97, label %.backedge

.backedge:                                        ; preds = %432, %429
  br label %77, !llvm.loop !52

.loopexit97:                                      ; preds = %432, %426, %292, %.loopexit94
  %435 = load i64, ptr %27, align 8, !tbaa !18
  br label %436

436:                                              ; preds = %.loopexit97, %69
  %437 = phi i64 [ %435, %.loopexit97 ], [ %70, %69 ]
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %.loopexit98, label %48, !llvm.loop !53

.loopexit98:                                      ; preds = %436, %74, %26
  %439 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %440 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %441 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %442 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %443 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %444 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %445 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %446 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %447 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %448 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %449 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %450 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %451 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %452 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %453 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %454 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %455 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %456 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %457

457:                                              ; preds = %997, %.loopexit98
  %458 = phi ptr [ %0, %.loopexit98 ], [ %992, %997 ]
  %459 = phi i64 [ %19, %.loopexit98 ], [ %993, %997 ]
  %460 = phi i64 [ 0, %.loopexit98 ], [ %994, %997 ]
  %461 = tail call i64 @llvm.umin.i64(i64 %459, i64 4294967295)
  %462 = trunc nuw i64 %461 to i32
  %463 = load i32, ptr %3, align 8, !tbaa !19
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %476, label %465

465:                                              ; preds = %457
  %466 = tail call i32 @llvm.umin.i32(i32 %463, i32 %462)
  %467 = load ptr, ptr %439, align 8, !tbaa !20
  %468 = zext i32 %466 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %458, ptr align 1 %467, i64 %468, i1 false)
  %469 = load ptr, ptr %439, align 8, !tbaa !20
  %470 = getelementptr inbounds nuw i8, ptr %469, i64 %468
  store ptr %470, ptr %439, align 8, !tbaa !20
  %471 = load i32, ptr %3, align 8, !tbaa !19
  %472 = sub i32 %471, %466
  store i32 %472, ptr %3, align 8, !tbaa !19
  %473 = load i32, ptr %11, align 8, !tbaa !16
  %474 = icmp ne i32 %473, 0
  %475 = sext i1 %474 to i32
  br label %980

476:                                              ; preds = %457
  %477 = load i32, ptr %440, align 8, !tbaa !24
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %476
  %480 = load i32, ptr %441, align 8, !tbaa !25
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %.loopexit83, label %482

482:                                              ; preds = %479, %476
  %483 = load i32, ptr %442, align 8, !tbaa !26
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %.preheader653, label %485

485:                                              ; preds = %482
  %486 = load i32, ptr %443, align 8, !tbaa !27
  %487 = shl i32 %486, 1
  %488 = icmp ugt i32 %487, %462
  br i1 %488, label %.preheader653, label %852

.preheader653:                                    ; preds = %485, %482
  br label %489

489:                                              ; preds = %.preheader653, %847
  %490 = phi i32 [ %848, %847 ], [ %483, %.preheader653 ]
  switch i32 %490, label %835 [
    i32 0, label %491
    i32 1, label %707
    i32 2, label %742
  ]

491:                                              ; preds = %489
  %492 = load i32, ptr %443, align 8, !tbaa !27
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %513

494:                                              ; preds = %491
  %495 = load i32, ptr %454, align 4, !tbaa !28
  %496 = zext i32 %495 to i64
  %497 = tail call noalias ptr @malloc(i64 noundef %496) #15
  store ptr %497, ptr %447, align 8, !tbaa !29
  %498 = load i32, ptr %454, align 4, !tbaa !28
  %499 = shl i32 %498, 1
  %500 = zext i32 %499 to i64
  %501 = tail call noalias ptr @malloc(i64 noundef %500) #15
  store ptr %501, ptr %453, align 8, !tbaa !30
  %502 = icmp eq ptr %497, null
  %503 = icmp eq ptr %501, null
  %504 = or i1 %502, %503
  br i1 %504, label %505, label %506

505:                                              ; preds = %494
  tail call void @free(ptr noundef %501) #13
  tail call void @free(ptr noundef %497) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

506:                                              ; preds = %494
  %507 = load i32, ptr %454, align 4, !tbaa !28
  store i32 %507, ptr %443, align 8, !tbaa !27
  store i32 0, ptr %441, align 8, !tbaa !25
  store ptr null, ptr %446, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %455, i8 0, i64 24, i1 false)
  %508 = tail call i32 @inflateInit2_(ptr noundef nonnull %446, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %513, label %510

510:                                              ; preds = %506
  %511 = load ptr, ptr %453, align 8, !tbaa !30
  tail call void @free(ptr noundef %511) #13
  %512 = load ptr, ptr %447, align 8, !tbaa !29
  tail call void @free(ptr noundef %512) #13
  store i32 0, ptr %443, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

513:                                              ; preds = %506, %491
  %514 = load i32, ptr %456, align 8, !tbaa !32
  %515 = icmp eq i32 %514, -1
  br i1 %515, label %519, label %516

516:                                              ; preds = %513
  %517 = load i32, ptr %450, align 4, !tbaa !33
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %524

519:                                              ; preds = %516, %513
  %520 = tail call i32 @inflateReset(ptr noundef nonnull %446) #13
  store i32 2, ptr %442, align 8, !tbaa !26
  %521 = load i32, ptr %450, align 4, !tbaa !33
  %522 = icmp ne i32 %521, -1
  %523 = zext i1 %522 to i32
  store i32 %523, ptr %450, align 4, !tbaa !33
  store i32 0, ptr %456, align 8, !tbaa !32
  br label %704

524:                                              ; preds = %516
  %525 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %525, label %.loopexit77 [
    i32 0, label %526
    i32 -5, label %526
  ]

526:                                              ; preds = %524, %524
  %527 = load i32, ptr %440, align 8, !tbaa !24
  %528 = icmp eq i32 %527, 0
  %529 = load i32, ptr %441, align 8, !tbaa !34
  br i1 %528, label %530, label %672

530:                                              ; preds = %526
  %531 = icmp eq i32 %529, 0
  %532 = load ptr, ptr %447, align 8, !tbaa !29
  %533 = ptrtoaddr ptr %532 to i64
  br i1 %531, label %634, label %534

534:                                              ; preds = %530
  %535 = load ptr, ptr %446, align 8, !tbaa !35
  %536 = icmp eq ptr %535, %532
  br i1 %536, label %634, label %537

537:                                              ; preds = %534
  %538 = ptrtoaddr ptr %535 to i64
  %539 = zext i32 %529 to i64
  %540 = icmp ult i32 %529, 4
  %541 = sub i64 %533, %538
  %542 = icmp ult i64 %541, 32
  %543 = select i1 %540, i1 true, i1 %542
  br i1 %543, label %583, label %544

544:                                              ; preds = %537
  %545 = icmp ult i32 %529, 32
  br i1 %545, label %567, label %546

546:                                              ; preds = %544
  %547 = and i64 %539, 4294967264
  br label %548

548:                                              ; preds = %548, %546
  %549 = phi i64 [ 0, %546 ], [ %556, %548 ]
  %550 = getelementptr i8, ptr %532, i64 %549
  %551 = getelementptr i8, ptr %535, i64 %549
  %552 = getelementptr i8, ptr %551, i64 16
  %553 = load <16 x i8>, ptr %551, align 1, !tbaa !36
  %554 = load <16 x i8>, ptr %552, align 1, !tbaa !36
  %555 = getelementptr i8, ptr %550, i64 16
  store <16 x i8> %553, ptr %550, align 1, !tbaa !36
  store <16 x i8> %554, ptr %555, align 1, !tbaa !36
  %556 = add nuw nsw i64 %549, 32
  %557 = icmp eq i64 %556, %547
  br i1 %557, label %558, label %548, !llvm.loop !66

558:                                              ; preds = %548
  %559 = icmp eq i64 %547, %539
  br i1 %559, label %.loopexit70, label %560

560:                                              ; preds = %558
  %561 = trunc nuw i64 %547 to i32
  %562 = sub i32 %529, %561
  %563 = getelementptr i8, ptr %535, i64 %547
  %564 = getelementptr i8, ptr %532, i64 %547
  %565 = and i64 %539, 28
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %583, label %567, !prof !41

567:                                              ; preds = %560, %544
  %568 = phi i64 [ %547, %560 ], [ 0, %544 ]
  %569 = and i64 %539, 4294967292
  br label %570

570:                                              ; preds = %570, %567
  %571 = phi i64 [ %568, %567 ], [ %575, %570 ]
  %572 = getelementptr i8, ptr %532, i64 %571
  %573 = getelementptr i8, ptr %535, i64 %571
  %574 = load <4 x i8>, ptr %573, align 1, !tbaa !36
  store <4 x i8> %574, ptr %572, align 1, !tbaa !36
  %575 = add nuw i64 %571, 4
  %576 = icmp eq i64 %575, %569
  br i1 %576, label %577, label %570, !llvm.loop !67

577:                                              ; preds = %570
  %578 = getelementptr i8, ptr %532, i64 %569
  %579 = getelementptr i8, ptr %535, i64 %569
  %580 = trunc nuw i64 %569 to i32
  %581 = sub i32 %529, %580
  %582 = icmp eq i64 %569, %539
  br i1 %582, label %.loopexit70, label %583

583:                                              ; preds = %577, %560, %537
  %584 = phi ptr [ %532, %537 ], [ %564, %560 ], [ %578, %577 ]
  %585 = phi ptr [ %535, %537 ], [ %563, %560 ], [ %579, %577 ]
  %586 = phi i32 [ %529, %537 ], [ %562, %560 ], [ %581, %577 ]
  %587 = add i32 %586, -1
  %588 = and i32 %586, 7
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %583, %.preheader71
  %590 = phi ptr [ %595, %.preheader71 ], [ %584, %583 ]
  %591 = phi ptr [ %593, %.preheader71 ], [ %585, %583 ]
  %592 = phi i32 [ %596, %.preheader71 ], [ 0, %583 ]
  %593 = getelementptr inbounds nuw i8, ptr %591, i64 1
  %594 = load i8, ptr %591, align 1, !tbaa !36
  %595 = getelementptr inbounds nuw i8, ptr %590, i64 1
  store i8 %594, ptr %590, align 1, !tbaa !36
  %596 = add nuw nsw i32 %592, 1
  %597 = icmp eq i32 %596, %588
  br i1 %597, label %.loopexit72.loopexit, label %.preheader71, !llvm.loop !68

.loopexit72.loopexit:                             ; preds = %.preheader71
  %598 = and i32 %586, -8
  br label %.loopexit72

.loopexit72:                                      ; preds = %.loopexit72.loopexit, %583
  %599 = phi ptr [ %584, %583 ], [ %595, %.loopexit72.loopexit ]
  %600 = phi ptr [ %585, %583 ], [ %593, %.loopexit72.loopexit ]
  %601 = phi i32 [ %586, %583 ], [ %598, %.loopexit72.loopexit ]
  %602 = icmp ult i32 %587, 7
  br i1 %602, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %.loopexit72, %.preheader
  %603 = phi ptr [ %629, %.preheader ], [ %599, %.loopexit72 ]
  %604 = phi ptr [ %627, %.preheader ], [ %600, %.loopexit72 ]
  %605 = phi i32 [ %630, %.preheader ], [ %601, %.loopexit72 ]
  %606 = getelementptr inbounds nuw i8, ptr %604, i64 1
  %607 = load i8, ptr %604, align 1, !tbaa !36
  %608 = getelementptr inbounds nuw i8, ptr %603, i64 1
  store i8 %607, ptr %603, align 1, !tbaa !36
  %609 = getelementptr inbounds nuw i8, ptr %604, i64 2
  %610 = load i8, ptr %606, align 1, !tbaa !36
  %611 = getelementptr inbounds nuw i8, ptr %603, i64 2
  store i8 %610, ptr %608, align 1, !tbaa !36
  %612 = getelementptr inbounds nuw i8, ptr %604, i64 3
  %613 = load i8, ptr %609, align 1, !tbaa !36
  %614 = getelementptr inbounds nuw i8, ptr %603, i64 3
  store i8 %613, ptr %611, align 1, !tbaa !36
  %615 = getelementptr inbounds nuw i8, ptr %604, i64 4
  %616 = load i8, ptr %612, align 1, !tbaa !36
  %617 = getelementptr inbounds nuw i8, ptr %603, i64 4
  store i8 %616, ptr %614, align 1, !tbaa !36
  %618 = getelementptr inbounds nuw i8, ptr %604, i64 5
  %619 = load i8, ptr %615, align 1, !tbaa !36
  %620 = getelementptr inbounds nuw i8, ptr %603, i64 5
  store i8 %619, ptr %617, align 1, !tbaa !36
  %621 = getelementptr inbounds nuw i8, ptr %604, i64 6
  %622 = load i8, ptr %618, align 1, !tbaa !36
  %623 = getelementptr inbounds nuw i8, ptr %603, i64 6
  store i8 %622, ptr %620, align 1, !tbaa !36
  %624 = getelementptr inbounds nuw i8, ptr %604, i64 7
  %625 = load i8, ptr %621, align 1, !tbaa !36
  %626 = getelementptr inbounds nuw i8, ptr %603, i64 7
  store i8 %625, ptr %623, align 1, !tbaa !36
  %627 = getelementptr inbounds nuw i8, ptr %604, i64 8
  %628 = load i8, ptr %624, align 1, !tbaa !36
  %629 = getelementptr inbounds nuw i8, ptr %603, i64 8
  store i8 %628, ptr %626, align 1, !tbaa !36
  %630 = add i32 %605, -8
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %.loopexit70, label %.preheader, !llvm.loop !69

.loopexit70:                                      ; preds = %.preheader, %.loopexit72, %577, %558
  %632 = load i32, ptr %441, align 8, !tbaa !34
  %633 = load ptr, ptr %447, align 8, !tbaa !29
  br label %634

634:                                              ; preds = %.loopexit70, %534, %530
  %635 = phi ptr [ %633, %.loopexit70 ], [ %532, %534 ], [ %532, %530 ]
  %636 = phi i32 [ %632, %.loopexit70 ], [ %529, %534 ], [ 0, %530 ]
  %637 = zext i32 %636 to i64
  %638 = getelementptr inbounds nuw i8, ptr %635, i64 %637
  %639 = load i32, ptr %443, align 8, !tbaa !27
  %640 = sub i32 %639, %636
  store i32 0, ptr %448, align 4, !tbaa !17
  %641 = tail call ptr @__errno_location() #16
  store i32 0, ptr %641, align 4, !tbaa !4
  br label %642

642:                                              ; preds = %653, %634
  %643 = phi i32 [ 0, %634 ], [ %654, %653 ]
  %644 = sub i32 %640, %643
  %645 = tail call i32 @llvm.umin.i32(i32 %644, i32 1073741824)
  %646 = load i32, ptr %449, align 4, !tbaa !46
  %647 = zext i32 %643 to i64
  %648 = getelementptr inbounds nuw i8, ptr %638, i64 %647
  %649 = zext nneg i32 %645 to i64
  %650 = tail call i64 @read(i32 noundef %646, ptr noundef %648, i64 noundef %649) #13
  %651 = trunc i64 %650 to i32
  %652 = icmp slt i32 %651, 1
  br i1 %652, label %656, label %653

653:                                              ; preds = %642
  %654 = add i32 %643, %651
  %655 = icmp ult i32 %654, %640
  br i1 %655, label %642, label %.loopexit69, !llvm.loop !47

656:                                              ; preds = %642
  %657 = icmp slt i32 %651, 0
  br i1 %657, label %658, label %665

658:                                              ; preds = %656
  %659 = load i32, ptr %641, align 4, !tbaa !4
  %660 = icmp eq i32 %659, 11
  br i1 %660, label %661, label %.loopexit78

661:                                              ; preds = %658
  store i32 1, ptr %448, align 4, !tbaa !17
  %662 = icmp eq i32 %643, 0
  br i1 %662, label %663, label %.loopexit69

663:                                              ; preds = %661
  %664 = load i32, ptr %641, align 4, !tbaa !4
  br label %.loopexit78

665:                                              ; preds = %656
  store i32 1, ptr %440, align 8, !tbaa !24
  br label %.loopexit69

.loopexit78:                                      ; preds = %658, %663
  %666 = phi i32 [ %664, %663 ], [ %659, %658 ]
  %667 = tail call ptr @strerror(i32 noundef %666) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %667) #13
  br label %.loopexit77

.loopexit69:                                      ; preds = %653, %665, %661
  %668 = phi i32 [ %643, %661 ], [ %643, %665 ], [ %654, %653 ]
  %669 = load i32, ptr %441, align 8, !tbaa !34
  %670 = add i32 %669, %668
  store i32 %670, ptr %441, align 8, !tbaa !34
  %671 = load ptr, ptr %447, align 8, !tbaa !29
  store ptr %671, ptr %446, align 8, !tbaa !35
  br label %672

672:                                              ; preds = %.loopexit69, %526
  %673 = phi i32 [ %670, %.loopexit69 ], [ %529, %526 ]
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %704, label %675

675:                                              ; preds = %672
  %676 = load i32, ptr %448, align 4, !tbaa !17
  %677 = icmp ne i32 %676, 0
  %678 = icmp ult i32 %673, 4
  %679 = and i1 %678, %677
  br i1 %679, label %704, label %680

680:                                              ; preds = %675
  %681 = icmp ugt i32 %673, 3
  %682 = load ptr, ptr %446, align 8, !tbaa !35
  br i1 %681, label %683, label %700

683:                                              ; preds = %680
  %684 = load i8, ptr %682, align 1, !tbaa !36
  %685 = icmp eq i8 %684, 31
  br i1 %685, label %686, label %700

686:                                              ; preds = %683
  %687 = getelementptr inbounds nuw i8, ptr %682, i64 1
  %688 = load i8, ptr %687, align 1, !tbaa !36
  %689 = icmp eq i8 %688, -117
  br i1 %689, label %690, label %700

690:                                              ; preds = %686
  %691 = getelementptr inbounds nuw i8, ptr %682, i64 2
  %692 = load i8, ptr %691, align 1, !tbaa !36
  %693 = icmp eq i8 %692, 8
  br i1 %693, label %694, label %700

694:                                              ; preds = %690
  %695 = getelementptr inbounds nuw i8, ptr %682, i64 3
  %696 = load i8, ptr %695, align 1, !tbaa !36
  %697 = icmp ult i8 %696, 32
  br i1 %697, label %698, label %700

698:                                              ; preds = %694
  %699 = tail call i32 @inflateReset(ptr noundef nonnull %446) #13
  store i32 2, ptr %442, align 8, !tbaa !26
  store i32 1, ptr %450, align 4, !tbaa !33
  store i32 0, ptr %456, align 8, !tbaa !32
  br label %836

700:                                              ; preds = %694, %690, %686, %683, %680
  %701 = load ptr, ptr %453, align 8, !tbaa !30
  store ptr %701, ptr %439, align 8, !tbaa !20
  %702 = zext i32 %673 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %701, ptr align 1 %682, i64 %702, i1 false)
  %703 = load i32, ptr %441, align 8, !tbaa !34
  store i32 %703, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %441, align 8, !tbaa !34
  store i32 1, ptr %442, align 8, !tbaa !26
  br label %838

704:                                              ; preds = %675, %672, %519
  %705 = load i32, ptr %442, align 8, !tbaa !26
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %.loopexit79, label %836

707:                                              ; preds = %489
  %708 = load ptr, ptr %453, align 8, !tbaa !30
  %709 = load i32, ptr %443, align 8, !tbaa !27
  %710 = shl i32 %709, 1
  store i32 0, ptr %448, align 4, !tbaa !17
  %711 = tail call ptr @__errno_location() #16
  store i32 0, ptr %711, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %712

712:                                              ; preds = %723, %707
  %713 = phi i32 [ %725, %723 ], [ 0, %707 ]
  %714 = sub i32 %710, %713
  %715 = tail call i32 @llvm.umin.i32(i32 %714, i32 1073741824)
  %716 = load i32, ptr %449, align 4, !tbaa !46
  %717 = zext i32 %713 to i64
  %718 = getelementptr inbounds nuw i8, ptr %708, i64 %717
  %719 = zext nneg i32 %715 to i64
  %720 = tail call i64 @read(i32 noundef %716, ptr noundef %718, i64 noundef %719) #13
  %721 = trunc i64 %720 to i32
  %722 = icmp slt i32 %721, 1
  br i1 %722, label %727, label %723

723:                                              ; preds = %712
  %724 = load i32, ptr %3, align 4, !tbaa !4
  %725 = add i32 %724, %721
  store i32 %725, ptr %3, align 4, !tbaa !4
  %726 = icmp ult i32 %725, %710
  br i1 %726, label %712, label %.loopexit76, !llvm.loop !47

727:                                              ; preds = %712
  %728 = icmp slt i32 %721, 0
  br i1 %728, label %729, label %737

729:                                              ; preds = %727
  %730 = load i32, ptr %711, align 4, !tbaa !4
  %731 = icmp eq i32 %730, 11
  br i1 %731, label %732, label %738

732:                                              ; preds = %729
  store i32 1, ptr %448, align 4, !tbaa !17
  %733 = load i32, ptr %3, align 4, !tbaa !4
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %.loopexit76

735:                                              ; preds = %732
  %736 = load i32, ptr %711, align 4, !tbaa !4
  br label %738

737:                                              ; preds = %727
  store i32 1, ptr %440, align 8, !tbaa !24
  br label %.loopexit76

738:                                              ; preds = %735, %729
  %739 = phi i32 [ %736, %735 ], [ %730, %729 ]
  %740 = tail call ptr @strerror(i32 noundef %739) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %740) #13
  br label %.loopexit77

.loopexit76:                                      ; preds = %723, %737, %732
  %741 = load ptr, ptr %453, align 8, !tbaa !30
  store ptr %741, ptr %439, align 8, !tbaa !20
  br label %.loopexit79

742:                                              ; preds = %489
  %743 = load i32, ptr %443, align 8, !tbaa !27
  %744 = shl i32 %743, 1
  store i32 %744, ptr %444, align 8, !tbaa !48
  %745 = load ptr, ptr %453, align 8, !tbaa !30
  store ptr %745, ptr %445, align 8, !tbaa !49
  br label %746

746:                                              ; preds = %816, %742
  %747 = phi i32 [ 0, %742 ], [ %796, %816 ]
  %748 = load i32, ptr %441, align 8, !tbaa !34
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %795

750:                                              ; preds = %746
  %751 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %751, label %.loopexit73 [
    i32 0, label %752
    i32 -5, label %752
  ]

752:                                              ; preds = %750, %750
  %753 = load i32, ptr %440, align 8, !tbaa !24
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %755, label %791

755:                                              ; preds = %752
  %756 = load ptr, ptr %447, align 8, !tbaa !29
  %757 = load i32, ptr %443, align 8, !tbaa !27
  store i32 0, ptr %448, align 4, !tbaa !17
  %758 = tail call ptr @__errno_location() #16
  store i32 0, ptr %758, align 4, !tbaa !4
  br label %759

759:                                              ; preds = %770, %755
  %760 = phi i32 [ 0, %755 ], [ %771, %770 ]
  %761 = sub i32 %757, %760
  %762 = tail call i32 @llvm.umin.i32(i32 %761, i32 1073741824)
  %763 = load i32, ptr %449, align 4, !tbaa !46
  %764 = zext i32 %760 to i64
  %765 = getelementptr inbounds nuw i8, ptr %756, i64 %764
  %766 = zext nneg i32 %762 to i64
  %767 = tail call i64 @read(i32 noundef %763, ptr noundef %765, i64 noundef %766) #13
  %768 = trunc i64 %767 to i32
  %769 = icmp slt i32 %768, 1
  br i1 %769, label %773, label %770

770:                                              ; preds = %759
  %771 = add i32 %760, %768
  %772 = icmp ult i32 %771, %757
  br i1 %772, label %759, label %.loopexit, !llvm.loop !47

773:                                              ; preds = %759
  %774 = icmp slt i32 %768, 0
  br i1 %774, label %775, label %782

775:                                              ; preds = %773
  %776 = load i32, ptr %758, align 4, !tbaa !4
  %777 = icmp eq i32 %776, 11
  br i1 %777, label %778, label %.loopexit74

778:                                              ; preds = %775
  store i32 1, ptr %448, align 4, !tbaa !17
  %779 = icmp eq i32 %760, 0
  br i1 %779, label %780, label %.loopexit

780:                                              ; preds = %778
  %781 = load i32, ptr %758, align 4, !tbaa !4
  br label %.loopexit74

782:                                              ; preds = %773
  store i32 1, ptr %440, align 8, !tbaa !24
  br label %.loopexit

.loopexit74:                                      ; preds = %775, %780
  %783 = phi i32 [ %781, %780 ], [ %776, %775 ]
  %784 = tail call ptr @strerror(i32 noundef %783) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %784) #13
  %785 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit73

.loopexit:                                        ; preds = %770, %782, %778
  %786 = phi i32 [ %760, %778 ], [ %760, %782 ], [ %771, %770 ]
  %787 = load i32, ptr %441, align 8, !tbaa !34
  %788 = add i32 %787, %786
  store i32 %788, ptr %441, align 8, !tbaa !34
  %789 = load ptr, ptr %447, align 8, !tbaa !29
  store ptr %789, ptr %446, align 8, !tbaa !35
  %790 = icmp eq i32 %788, 0
  br i1 %790, label %791, label %795

791:                                              ; preds = %.loopexit, %752
  %792 = load i32, ptr %448, align 4, !tbaa !17
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %794, label %.loopexit73

794:                                              ; preds = %791
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit73

795:                                              ; preds = %.loopexit, %746
  %796 = tail call i32 @inflate(ptr noundef nonnull %446, i32 noundef 0) #13
  %797 = load i32, ptr %444, align 8, !tbaa !48
  %798 = icmp ult i32 %797, %744
  br i1 %798, label %799, label %800

799:                                              ; preds = %795
  store i32 0, ptr %450, align 4, !tbaa !33
  br label %800

800:                                              ; preds = %799, %795
  switch i32 %796, label %816 [
    i32 -2, label %801
    i32 2, label %801
    i32 -4, label %802
    i32 -3, label %803
  ]

801:                                              ; preds = %800, %800
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit73

802:                                              ; preds = %800
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %820

803:                                              ; preds = %800
  %804 = load i32, ptr %450, align 4, !tbaa !33
  %805 = icmp eq i32 %804, 1
  br i1 %805, label %806, label %812

806:                                              ; preds = %803
  store i32 0, ptr %441, align 8, !tbaa !34
  store i32 1, ptr %440, align 8, !tbaa !24
  store i32 0, ptr %442, align 8, !tbaa !26
  %807 = sub i32 %744, %797
  store i32 %807, ptr %3, align 8, !tbaa !19
  %808 = load ptr, ptr %445, align 8, !tbaa !49
  %809 = zext i32 %807 to i64
  %810 = sub nsw i64 0, %809
  %811 = getelementptr inbounds i8, ptr %808, i64 %810
  store ptr %811, ptr %439, align 8, !tbaa !20
  br label %836

812:                                              ; preds = %803
  %813 = load ptr, ptr %451, align 8, !tbaa !50
  %814 = icmp eq ptr %813, null
  %815 = select i1 %814, ptr @.str.6, ptr %813
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %815) #13
  br label %820

816:                                              ; preds = %800
  %817 = icmp ne i32 %797, 0
  %818 = icmp ne i32 %796, 1
  %819 = select i1 %817, i1 %818, i1 false
  br i1 %819, label %746, label %.loopexit73, !llvm.loop !51

820:                                              ; preds = %812, %802
  %821 = load i32, ptr %444, align 8, !tbaa !48
  %822 = sub i32 %744, %821
  store i32 %822, ptr %3, align 8, !tbaa !19
  %823 = load ptr, ptr %445, align 8, !tbaa !49
  %824 = zext i32 %822 to i64
  %825 = sub nsw i64 0, %824
  %826 = getelementptr inbounds i8, ptr %823, i64 %825
  store ptr %826, ptr %439, align 8, !tbaa !20
  br label %.loopexit77

.loopexit73:                                      ; preds = %816, %750, %801, %794, %791, %.loopexit74
  %827 = phi i32 [ %785, %.loopexit74 ], [ %747, %791 ], [ %747, %794 ], [ %796, %801 ], [ %796, %816 ], [ %751, %750 ]
  %828 = load i32, ptr %444, align 8, !tbaa !48
  %829 = sub i32 %744, %828
  store i32 %829, ptr %3, align 8, !tbaa !19
  %830 = load ptr, ptr %445, align 8, !tbaa !49
  %831 = zext i32 %829 to i64
  %832 = sub nsw i64 0, %831
  %833 = getelementptr inbounds i8, ptr %830, i64 %832
  store ptr %833, ptr %439, align 8, !tbaa !20
  switch i32 %827, label %.loopexit77 [
    i32 1, label %834
    i32 0, label %836
  ]

834:                                              ; preds = %.loopexit73
  store i32 0, ptr %450, align 4, !tbaa !33
  store i32 0, ptr %442, align 8, !tbaa !26
  br label %836

835:                                              ; preds = %489
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit77

836:                                              ; preds = %834, %.loopexit73, %806, %704, %698
  %837 = load i32, ptr %3, align 8, !tbaa !19
  br label %838

838:                                              ; preds = %836, %700
  %839 = phi i32 [ %837, %836 ], [ %703, %700 ]
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %.loopexit79

841:                                              ; preds = %838
  %842 = load i32, ptr %440, align 8, !tbaa !24
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %847, label %844

844:                                              ; preds = %841
  %845 = load i32, ptr %441, align 8, !tbaa !34
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %.loopexit79, label %847

847:                                              ; preds = %844, %841
  %848 = load i32, ptr %442, align 8, !tbaa !26
  br label %489, !llvm.loop !52

.loopexit77:                                      ; preds = %.loopexit73, %524, %835, %820, %738, %.loopexit78, %510, %505
  %849 = load i32, ptr %3, align 8, !tbaa !19
  %850 = icmp eq i32 %849, 0
  %851 = sext i1 %850 to i32
  br label %.loopexit79

852:                                              ; preds = %485
  %853 = icmp eq i32 %483, 1
  br i1 %853, label %854, label %883

854:                                              ; preds = %852
  store i32 0, ptr %448, align 4, !tbaa !17
  %855 = tail call ptr @__errno_location() #16
  store i32 0, ptr %855, align 4, !tbaa !4
  br label %856

856:                                              ; preds = %867, %854
  %857 = phi i32 [ 0, %854 ], [ %868, %867 ]
  %858 = sub i32 %462, %857
  %859 = tail call i32 @llvm.umin.i32(i32 %858, i32 1073741824)
  %860 = load i32, ptr %449, align 4, !tbaa !46
  %861 = zext i32 %857 to i64
  %862 = getelementptr inbounds nuw i8, ptr %458, i64 %861
  %863 = zext nneg i32 %859 to i64
  %864 = tail call i64 @read(i32 noundef %860, ptr noundef %862, i64 noundef %863) #13
  %865 = trunc i64 %864 to i32
  %866 = icmp slt i32 %865, 1
  br i1 %866, label %870, label %867

867:                                              ; preds = %856
  %868 = add i32 %857, %865
  %869 = icmp ult i32 %868, %462
  br i1 %869, label %856, label %978, !llvm.loop !47

870:                                              ; preds = %856
  %871 = icmp slt i32 %865, 0
  br i1 %871, label %872, label %882

872:                                              ; preds = %870
  %873 = load i32, ptr %855, align 4, !tbaa !4
  %874 = icmp eq i32 %873, 11
  br i1 %874, label %875, label %879

875:                                              ; preds = %872
  store i32 1, ptr %448, align 4, !tbaa !17
  %876 = icmp eq i32 %857, 0
  br i1 %876, label %877, label %980

877:                                              ; preds = %875
  %878 = load i32, ptr %855, align 4, !tbaa !4
  br label %879

879:                                              ; preds = %877, %872
  %880 = phi i32 [ %878, %877 ], [ %873, %872 ]
  %881 = tail call ptr @strerror(i32 noundef %880) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %881) #13
  br label %980

882:                                              ; preds = %870
  store i32 1, ptr %440, align 8, !tbaa !24
  br label %980

883:                                              ; preds = %852
  store i32 %462, ptr %444, align 8, !tbaa !58
  store ptr %458, ptr %445, align 8, !tbaa !59
  br label %884

884:                                              ; preds = %949, %883
  %885 = phi i32 [ 0, %883 ], [ %934, %949 ]
  %886 = load i32, ptr %441, align 8, !tbaa !34
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %933

888:                                              ; preds = %884
  %889 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %889, label %.loopexit80 [
    i32 0, label %890
    i32 -5, label %890
  ]

890:                                              ; preds = %888, %888
  %891 = load i32, ptr %440, align 8, !tbaa !24
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %893, label %929

893:                                              ; preds = %890
  %894 = load ptr, ptr %447, align 8, !tbaa !29
  %895 = load i32, ptr %443, align 8, !tbaa !27
  store i32 0, ptr %448, align 4, !tbaa !17
  %896 = tail call ptr @__errno_location() #16
  store i32 0, ptr %896, align 4, !tbaa !4
  br label %897

897:                                              ; preds = %908, %893
  %898 = phi i32 [ 0, %893 ], [ %909, %908 ]
  %899 = sub i32 %895, %898
  %900 = tail call i32 @llvm.umin.i32(i32 %899, i32 1073741824)
  %901 = load i32, ptr %449, align 4, !tbaa !46
  %902 = zext i32 %898 to i64
  %903 = getelementptr inbounds nuw i8, ptr %894, i64 %902
  %904 = zext nneg i32 %900 to i64
  %905 = tail call i64 @read(i32 noundef %901, ptr noundef %903, i64 noundef %904) #13
  %906 = trunc i64 %905 to i32
  %907 = icmp slt i32 %906, 1
  br i1 %907, label %911, label %908

908:                                              ; preds = %897
  %909 = add i32 %898, %906
  %910 = icmp ult i32 %909, %895
  br i1 %910, label %897, label %.loopexit75, !llvm.loop !47

911:                                              ; preds = %897
  %912 = icmp slt i32 %906, 0
  br i1 %912, label %913, label %920

913:                                              ; preds = %911
  %914 = load i32, ptr %896, align 4, !tbaa !4
  %915 = icmp eq i32 %914, 11
  br i1 %915, label %916, label %.loopexit82

916:                                              ; preds = %913
  store i32 1, ptr %448, align 4, !tbaa !17
  %917 = icmp eq i32 %898, 0
  br i1 %917, label %918, label %.loopexit75

918:                                              ; preds = %916
  %919 = load i32, ptr %896, align 4, !tbaa !4
  br label %.loopexit82

920:                                              ; preds = %911
  store i32 1, ptr %440, align 8, !tbaa !24
  br label %.loopexit75

.loopexit82:                                      ; preds = %913, %918
  %921 = phi i32 [ %919, %918 ], [ %914, %913 ]
  %922 = tail call ptr @strerror(i32 noundef %921) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %922) #13
  %923 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit80

.loopexit75:                                      ; preds = %908, %920, %916
  %924 = phi i32 [ %898, %916 ], [ %898, %920 ], [ %909, %908 ]
  %925 = load i32, ptr %441, align 8, !tbaa !34
  %926 = add i32 %925, %924
  store i32 %926, ptr %441, align 8, !tbaa !34
  %927 = load ptr, ptr %447, align 8, !tbaa !29
  store ptr %927, ptr %446, align 8, !tbaa !35
  %928 = icmp eq i32 %926, 0
  br i1 %928, label %929, label %933

929:                                              ; preds = %.loopexit75, %890
  %930 = load i32, ptr %448, align 4, !tbaa !17
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %932, label %.loopexit80

932:                                              ; preds = %929
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit80

933:                                              ; preds = %.loopexit75, %884
  %934 = tail call i32 @inflate(ptr noundef nonnull %446, i32 noundef 0) #13
  %935 = load i32, ptr %444, align 8, !tbaa !48
  %936 = icmp ult i32 %935, %462
  br i1 %936, label %937, label %938

937:                                              ; preds = %933
  store i32 0, ptr %450, align 4, !tbaa !33
  br label %938

938:                                              ; preds = %937, %933
  switch i32 %934, label %949 [
    i32 -2, label %939
    i32 2, label %939
    i32 -4, label %940
    i32 -3, label %941
  ]

939:                                              ; preds = %938, %938
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit80

940:                                              ; preds = %938
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %953

941:                                              ; preds = %938
  %942 = load i32, ptr %450, align 4, !tbaa !33
  %943 = icmp eq i32 %942, 1
  br i1 %943, label %944, label %945

944:                                              ; preds = %941
  store i32 0, ptr %441, align 8, !tbaa !34
  store i32 1, ptr %440, align 8, !tbaa !24
  store i32 0, ptr %442, align 8, !tbaa !26
  br label %953

945:                                              ; preds = %941
  %946 = load ptr, ptr %451, align 8, !tbaa !50
  %947 = icmp eq ptr %946, null
  %948 = select i1 %947, ptr @.str.6, ptr %946
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %948) #13
  br label %953

949:                                              ; preds = %938
  %950 = icmp ne i32 %935, 0
  %951 = icmp ne i32 %934, 1
  %952 = select i1 %950, i1 %951, i1 false
  br i1 %952, label %884, label %.loopexit80, !llvm.loop !51

953:                                              ; preds = %945, %944, %940
  %954 = phi i32 [ -3, %945 ], [ 0, %944 ], [ -4, %940 ]
  %955 = load i32, ptr %444, align 8, !tbaa !48
  %956 = sub i32 %462, %955
  %957 = load ptr, ptr %445, align 8, !tbaa !49
  %958 = zext i32 %956 to i64
  %959 = sub nsw i64 0, %958
  %960 = getelementptr inbounds i8, ptr %957, i64 %959
  store ptr %960, ptr %439, align 8, !tbaa !20
  br label %970

.loopexit80:                                      ; preds = %949, %888, %939, %932, %929, %.loopexit82
  %961 = phi i32 [ %923, %.loopexit82 ], [ %885, %929 ], [ %885, %932 ], [ %934, %939 ], [ %934, %949 ], [ %889, %888 ]
  %962 = load i32, ptr %444, align 8, !tbaa !48
  %963 = sub i32 %462, %962
  %964 = load ptr, ptr %445, align 8, !tbaa !49
  %965 = zext i32 %963 to i64
  %966 = sub nsw i64 0, %965
  %967 = getelementptr inbounds i8, ptr %964, i64 %966
  store ptr %967, ptr %439, align 8, !tbaa !20
  %968 = icmp eq i32 %961, 1
  br i1 %968, label %969, label %970

969:                                              ; preds = %.loopexit80
  store i32 0, ptr %450, align 4, !tbaa !33
  store i32 0, ptr %442, align 8, !tbaa !26
  br label %975

970:                                              ; preds = %.loopexit80, %953
  %971 = phi i64 [ %958, %953 ], [ %965, %.loopexit80 ]
  %972 = phi i32 [ %954, %953 ], [ %961, %.loopexit80 ]
  %973 = icmp ne i32 %972, 0
  %974 = sext i1 %973 to i32
  br label %975

975:                                              ; preds = %970, %969
  %976 = phi i64 [ %965, %969 ], [ %971, %970 ]
  %977 = phi i32 [ 0, %969 ], [ %974, %970 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %980

978:                                              ; preds = %867
  %979 = zext i32 %868 to i64
  br label %980

980:                                              ; preds = %978, %975, %882, %879, %875, %465
  %981 = phi i64 [ %979, %978 ], [ %861, %882 ], [ %861, %879 ], [ %861, %875 ], [ %468, %465 ], [ %976, %975 ]
  %982 = phi i32 [ 0, %978 ], [ 0, %882 ], [ -1, %879 ], [ 0, %875 ], [ %475, %465 ], [ %977, %975 ]
  %983 = load i64, ptr %452, align 8, !tbaa !21
  %984 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %983, i64 %981), !nosanitize !22
  %985 = extractvalue { i64, i1 } %984, 1, !nosanitize !22
  br i1 %985, label %986, label %987, !prof !23, !nosanitize !22

986:                                              ; preds = %980
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

987:                                              ; preds = %980
  %988 = extractvalue { i64, i1 } %984, 0, !nosanitize !22
  %989 = add i64 %981, %460
  %990 = getelementptr inbounds nuw i8, ptr %458, i64 %981
  %991 = sub i64 %459, %981
  store i64 %988, ptr %452, align 8, !tbaa !21
  br label %.loopexit79

.loopexit79:                                      ; preds = %844, %838, %704, %987, %.loopexit77, %.loopexit76
  %992 = phi ptr [ %990, %987 ], [ %458, %.loopexit77 ], [ %458, %.loopexit76 ], [ %458, %704 ], [ %458, %838 ], [ %458, %844 ]
  %993 = phi i64 [ %991, %987 ], [ %459, %.loopexit77 ], [ %459, %.loopexit76 ], [ %459, %704 ], [ %459, %838 ], [ %459, %844 ]
  %994 = phi i64 [ %989, %987 ], [ %460, %.loopexit77 ], [ %460, %.loopexit76 ], [ %460, %704 ], [ %460, %838 ], [ %460, %844 ]
  %995 = phi i32 [ %982, %987 ], [ %851, %.loopexit77 ], [ 0, %.loopexit76 ], [ 0, %704 ], [ 0, %838 ], [ 0, %844 ]
  %996 = icmp eq i64 %993, 0
  br i1 %996, label %.loopexit84, label %997

997:                                              ; preds = %.loopexit79
  %998 = icmp eq i32 %995, 0
  br i1 %998, label %457, label %999, !llvm.loop !60

999:                                              ; preds = %997
  %1000 = load i32, ptr %440, align 8, !tbaa !24
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %.loopexit84, label %.loopexit83

.loopexit83:                                      ; preds = %479, %999
  %1002 = phi i64 [ %994, %999 ], [ %460, %479 ]
  %1003 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1003, align 4, !tbaa !61
  br label %.loopexit84

.loopexit84:                                      ; preds = %.loopexit91, %112, %.loopexit79, %.loopexit83, %999, %423, %408, %.loopexit99, %.loopexit96, %98, %93
  %1004 = phi i64 [ 0, %98 ], [ 0, %93 ], [ %1002, %.loopexit83 ], [ %994, %999 ], [ 0, %408 ], [ %994, %.loopexit79 ], [ 0, %423 ], [ 0, %.loopexit99 ], [ 0, %.loopexit96 ], [ 0, %112 ], [ 0, %.loopexit91 ]
  %1005 = udiv i64 %1004, %1
  br label %1006

1006:                                             ; preds = %.loopexit84, %24, %23, %13, %6, %4
  %1007 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %23 ], [ 0, %13 ], [ %1005, %.loopexit84 ], [ 0, %24 ]
  ret i64 %1007
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1014, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1014

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
  br i1 %14, label %1014, label %15

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
  br label %1014

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

54:                                               ; preds = %442, %36
  %55 = phi i64 [ %443, %442 ], [ %34, %36 ]
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
  br label %442

77:                                               ; preds = %54
  %78 = load i32, ptr %39, align 8, !tbaa !24
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %.preheader725, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %40, align 8, !tbaa !25
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %.loopexit98, label %.preheader725

.preheader725:                                    ; preds = %80, %77
  br label %83

83:                                               ; preds = %.backedge, %.preheader725
  %84 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %84, label %429 [
    i32 0, label %85
    i32 1, label %301
    i32 2, label %335
  ]

85:                                               ; preds = %83
  %86 = load i32, ptr %42, align 8, !tbaa !27
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load i32, ptr %51, align 4, !tbaa !28
  %90 = zext i32 %89 to i64
  %91 = tail call noalias ptr @malloc(i64 noundef %90) #15
  store ptr %91, ptr %47, align 8, !tbaa !29
  %92 = load i32, ptr %51, align 4, !tbaa !28
  %93 = shl i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = tail call noalias ptr @malloc(i64 noundef %94) #15
  store ptr %95, ptr %44, align 8, !tbaa !30
  %96 = icmp eq ptr %91, null
  %97 = icmp eq ptr %95, null
  %98 = or i1 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  tail call void @free(ptr noundef %95) #13
  tail call void @free(ptr noundef %91) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit95

100:                                              ; preds = %88
  %101 = load i32, ptr %51, align 4, !tbaa !28
  store i32 %101, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %102 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %105) #13
  %106 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %106) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit95

107:                                              ; preds = %100, %85
  %108 = load i32, ptr %53, align 8, !tbaa !32
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %50, align 4, !tbaa !33
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110, %107
  %114 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %115 = load i32, ptr %50, align 4, !tbaa !33
  %116 = icmp ne i32 %115, -1
  %117 = zext i1 %116 to i32
  store i32 %117, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %298

118:                                              ; preds = %110
  %119 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %119, label %.loopexit95 [
    i32 0, label %120
    i32 -5, label %120
  ]

120:                                              ; preds = %118, %118
  %121 = load i32, ptr %39, align 8, !tbaa !24
  %122 = icmp eq i32 %121, 0
  %123 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %122, label %124, label %266

124:                                              ; preds = %120
  %125 = icmp eq i32 %123, 0
  %126 = load ptr, ptr %47, align 8, !tbaa !29
  %127 = ptrtoaddr ptr %126 to i64
  br i1 %125, label %228, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %46, align 8, !tbaa !35
  %130 = icmp eq ptr %129, %126
  br i1 %130, label %228, label %131

131:                                              ; preds = %128
  %132 = ptrtoaddr ptr %129 to i64
  %133 = zext i32 %123 to i64
  %134 = icmp ult i32 %123, 4
  %135 = sub i64 %127, %132
  %136 = icmp ult i64 %135, 32
  %137 = select i1 %134, i1 true, i1 %136
  br i1 %137, label %177, label %138

138:                                              ; preds = %131
  %139 = icmp ult i32 %123, 32
  br i1 %139, label %161, label %140

140:                                              ; preds = %138
  %141 = and i64 %133, 4294967264
  br label %142

142:                                              ; preds = %142, %140
  %143 = phi i64 [ 0, %140 ], [ %150, %142 ]
  %144 = getelementptr i8, ptr %126, i64 %143
  %145 = getelementptr i8, ptr %129, i64 %143
  %146 = getelementptr i8, ptr %145, i64 16
  %147 = load <16 x i8>, ptr %145, align 1, !tbaa !36
  %148 = load <16 x i8>, ptr %146, align 1, !tbaa !36
  %149 = getelementptr i8, ptr %144, i64 16
  store <16 x i8> %147, ptr %144, align 1, !tbaa !36
  store <16 x i8> %148, ptr %149, align 1, !tbaa !36
  %150 = add nuw nsw i64 %143, 32
  %151 = icmp eq i64 %150, %141
  br i1 %151, label %152, label %142, !llvm.loop !70

152:                                              ; preds = %142
  %153 = icmp eq i64 %141, %133
  br i1 %153, label %.loopexit88, label %154

154:                                              ; preds = %152
  %155 = trunc nuw i64 %141 to i32
  %156 = sub i32 %123, %155
  %157 = getelementptr i8, ptr %129, i64 %141
  %158 = getelementptr i8, ptr %126, i64 %141
  %159 = and i64 %133, 28
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %177, label %161, !prof !41

161:                                              ; preds = %154, %138
  %162 = phi i64 [ %141, %154 ], [ 0, %138 ]
  %163 = and i64 %133, 4294967292
  br label %164

164:                                              ; preds = %164, %161
  %165 = phi i64 [ %162, %161 ], [ %169, %164 ]
  %166 = getelementptr i8, ptr %126, i64 %165
  %167 = getelementptr i8, ptr %129, i64 %165
  %168 = load <4 x i8>, ptr %167, align 1, !tbaa !36
  store <4 x i8> %168, ptr %166, align 1, !tbaa !36
  %169 = add nuw i64 %165, 4
  %170 = icmp eq i64 %169, %163
  br i1 %170, label %171, label %164, !llvm.loop !71

171:                                              ; preds = %164
  %172 = getelementptr i8, ptr %126, i64 %163
  %173 = getelementptr i8, ptr %129, i64 %163
  %174 = trunc nuw i64 %163 to i32
  %175 = sub i32 %123, %174
  %176 = icmp eq i64 %163, %133
  br i1 %176, label %.loopexit88, label %177

177:                                              ; preds = %171, %154, %131
  %178 = phi ptr [ %126, %131 ], [ %158, %154 ], [ %172, %171 ]
  %179 = phi ptr [ %129, %131 ], [ %157, %154 ], [ %173, %171 ]
  %180 = phi i32 [ %123, %131 ], [ %156, %154 ], [ %175, %171 ]
  %181 = add i32 %180, -1
  %182 = and i32 %180, 7
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %.loopexit90, label %.preheader89

.preheader89:                                     ; preds = %177, %.preheader89
  %184 = phi ptr [ %189, %.preheader89 ], [ %178, %177 ]
  %185 = phi ptr [ %187, %.preheader89 ], [ %179, %177 ]
  %186 = phi i32 [ %190, %.preheader89 ], [ 0, %177 ]
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 1
  %188 = load i8, ptr %185, align 1, !tbaa !36
  %189 = getelementptr inbounds nuw i8, ptr %184, i64 1
  store i8 %188, ptr %184, align 1, !tbaa !36
  %190 = add nuw nsw i32 %186, 1
  %191 = icmp eq i32 %190, %182
  br i1 %191, label %.loopexit90.loopexit, label %.preheader89, !llvm.loop !72

.loopexit90.loopexit:                             ; preds = %.preheader89
  %192 = and i32 %180, -8
  br label %.loopexit90

.loopexit90:                                      ; preds = %.loopexit90.loopexit, %177
  %193 = phi ptr [ %178, %177 ], [ %189, %.loopexit90.loopexit ]
  %194 = phi ptr [ %179, %177 ], [ %187, %.loopexit90.loopexit ]
  %195 = phi i32 [ %180, %177 ], [ %192, %.loopexit90.loopexit ]
  %196 = icmp ult i32 %181, 7
  br i1 %196, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %.loopexit90, %.preheader87
  %197 = phi ptr [ %223, %.preheader87 ], [ %193, %.loopexit90 ]
  %198 = phi ptr [ %221, %.preheader87 ], [ %194, %.loopexit90 ]
  %199 = phi i32 [ %224, %.preheader87 ], [ %195, %.loopexit90 ]
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 1
  %201 = load i8, ptr %198, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %197, i64 1
  store i8 %201, ptr %197, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %198, i64 2
  %204 = load i8, ptr %200, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %197, i64 2
  store i8 %204, ptr %202, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %198, i64 3
  %207 = load i8, ptr %203, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %197, i64 3
  store i8 %207, ptr %205, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %198, i64 4
  %210 = load i8, ptr %206, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %197, i64 4
  store i8 %210, ptr %208, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %198, i64 5
  %213 = load i8, ptr %209, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %197, i64 5
  store i8 %213, ptr %211, align 1, !tbaa !36
  %215 = getelementptr inbounds nuw i8, ptr %198, i64 6
  %216 = load i8, ptr %212, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %197, i64 6
  store i8 %216, ptr %214, align 1, !tbaa !36
  %218 = getelementptr inbounds nuw i8, ptr %198, i64 7
  %219 = load i8, ptr %215, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %197, i64 7
  store i8 %219, ptr %217, align 1, !tbaa !36
  %221 = getelementptr inbounds nuw i8, ptr %198, i64 8
  %222 = load i8, ptr %218, align 1, !tbaa !36
  %223 = getelementptr inbounds nuw i8, ptr %197, i64 8
  store i8 %222, ptr %220, align 1, !tbaa !36
  %224 = add i32 %199, -8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %.loopexit88, label %.preheader87, !llvm.loop !73

.loopexit88:                                      ; preds = %.preheader87, %.loopexit90, %171, %152
  %226 = load i32, ptr %40, align 8, !tbaa !34
  %227 = load ptr, ptr %47, align 8, !tbaa !29
  br label %228

228:                                              ; preds = %.loopexit88, %128, %124
  %229 = phi ptr [ %227, %.loopexit88 ], [ %126, %128 ], [ %126, %124 ]
  %230 = phi i32 [ %226, %.loopexit88 ], [ %123, %128 ], [ 0, %124 ]
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 %231
  %233 = load i32, ptr %42, align 8, !tbaa !27
  %234 = sub i32 %233, %230
  store i32 0, ptr %48, align 4, !tbaa !17
  %235 = tail call ptr @__errno_location() #16
  store i32 0, ptr %235, align 4, !tbaa !4
  br label %236

236:                                              ; preds = %247, %228
  %237 = phi i32 [ 0, %228 ], [ %248, %247 ]
  %238 = sub i32 %234, %237
  %239 = tail call i32 @llvm.umin.i32(i32 %238, i32 1073741824)
  %240 = load i32, ptr %49, align 4, !tbaa !46
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
  br i1 %249, label %236, label %.loopexit86, !llvm.loop !47

250:                                              ; preds = %236
  %251 = icmp slt i32 %245, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %250
  %253 = load i32, ptr %235, align 4, !tbaa !4
  %254 = icmp eq i32 %253, 11
  br i1 %254, label %255, label %.loopexit96

255:                                              ; preds = %252
  store i32 1, ptr %48, align 4, !tbaa !17
  %256 = icmp eq i32 %237, 0
  br i1 %256, label %257, label %.loopexit86

257:                                              ; preds = %255
  %258 = load i32, ptr %235, align 4, !tbaa !4
  br label %.loopexit96

259:                                              ; preds = %250
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit86

.loopexit96:                                      ; preds = %252, %257
  %260 = phi i32 [ %258, %257 ], [ %253, %252 ]
  %261 = tail call ptr @strerror(i32 noundef %260) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %261) #13
  br label %.loopexit95

.loopexit86:                                      ; preds = %247, %259, %255
  %262 = phi i32 [ %237, %255 ], [ %237, %259 ], [ %248, %247 ]
  %263 = load i32, ptr %40, align 8, !tbaa !34
  %264 = add i32 %263, %262
  store i32 %264, ptr %40, align 8, !tbaa !34
  %265 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %265, ptr %46, align 8, !tbaa !35
  br label %266

266:                                              ; preds = %.loopexit86, %120
  %267 = phi i32 [ %264, %.loopexit86 ], [ %123, %120 ]
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %298, label %269

269:                                              ; preds = %266
  %270 = load i32, ptr %48, align 4, !tbaa !17
  %271 = icmp ne i32 %270, 0
  %272 = icmp ult i32 %267, 4
  %273 = and i1 %272, %271
  br i1 %273, label %298, label %274

274:                                              ; preds = %269
  %275 = icmp ugt i32 %267, 3
  %276 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %275, label %277, label %294

277:                                              ; preds = %274
  %278 = load i8, ptr %276, align 1, !tbaa !36
  %279 = icmp eq i8 %278, 31
  br i1 %279, label %280, label %294

280:                                              ; preds = %277
  %281 = getelementptr inbounds nuw i8, ptr %276, i64 1
  %282 = load i8, ptr %281, align 1, !tbaa !36
  %283 = icmp eq i8 %282, -117
  br i1 %283, label %284, label %294

284:                                              ; preds = %280
  %285 = getelementptr inbounds nuw i8, ptr %276, i64 2
  %286 = load i8, ptr %285, align 1, !tbaa !36
  %287 = icmp eq i8 %286, 8
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  %289 = getelementptr inbounds nuw i8, ptr %276, i64 3
  %290 = load i8, ptr %289, align 1, !tbaa !36
  %291 = icmp ult i8 %290, 32
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %430

294:                                              ; preds = %288, %284, %280, %277, %274
  %295 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %295, ptr %37, align 8, !tbaa !20
  %296 = zext i32 %267 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %295, ptr align 1 %276, i64 %296, i1 false)
  %297 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %297, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %432

298:                                              ; preds = %269, %266, %113
  %299 = load i32, ptr %41, align 8, !tbaa !26
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %.loopexit97, label %430

301:                                              ; preds = %83
  %302 = load ptr, ptr %44, align 8, !tbaa !30
  %303 = load i32, ptr %42, align 8, !tbaa !27
  %304 = shl i32 %303, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %305 = tail call ptr @__errno_location() #16
  store i32 0, ptr %305, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %306

306:                                              ; preds = %317, %301
  %307 = phi i32 [ %319, %317 ], [ 0, %301 ]
  %308 = sub i32 %304, %307
  %309 = tail call i32 @llvm.umin.i32(i32 %308, i32 1073741824)
  %310 = load i32, ptr %49, align 4, !tbaa !46
  %311 = zext i32 %307 to i64
  %312 = getelementptr inbounds nuw i8, ptr %302, i64 %311
  %313 = zext nneg i32 %309 to i64
  %314 = tail call i64 @read(i32 noundef %310, ptr noundef %312, i64 noundef %313) #13
  %315 = trunc i64 %314 to i32
  %316 = icmp slt i32 %315, 1
  br i1 %316, label %321, label %317

317:                                              ; preds = %306
  %318 = load i32, ptr %0, align 4, !tbaa !4
  %319 = add i32 %318, %315
  store i32 %319, ptr %0, align 4, !tbaa !4
  %320 = icmp ult i32 %319, %304
  br i1 %320, label %306, label %.loopexit94, !llvm.loop !47

321:                                              ; preds = %306
  %322 = icmp slt i32 %315, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %321
  %324 = load i32, ptr %305, align 4, !tbaa !4
  %325 = icmp eq i32 %324, 11
  br i1 %325, label %326, label %.loopexit99

326:                                              ; preds = %323
  store i32 1, ptr %48, align 4, !tbaa !17
  %327 = load i32, ptr %0, align 4, !tbaa !4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %.loopexit94

329:                                              ; preds = %326
  %330 = load i32, ptr %305, align 4, !tbaa !4
  br label %.loopexit99

331:                                              ; preds = %321
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit94

.loopexit99:                                      ; preds = %323, %329
  %332 = phi i32 [ %330, %329 ], [ %324, %323 ]
  %333 = tail call ptr @strerror(i32 noundef %332) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %333) #13
  br label %.loopexit95

.loopexit94:                                      ; preds = %317, %331, %326
  %334 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %334, ptr %37, align 8, !tbaa !20
  br label %.loopexit97

335:                                              ; preds = %83
  %336 = load i32, ptr %42, align 8, !tbaa !27
  %337 = shl i32 %336, 1
  store i32 %337, ptr %43, align 8, !tbaa !48
  %338 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %338, ptr %45, align 8, !tbaa !49
  br label %339

339:                                              ; preds = %410, %335
  %340 = phi i32 [ 0, %335 ], [ %389, %410 ]
  %341 = load i32, ptr %40, align 8, !tbaa !34
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %388

343:                                              ; preds = %339
  %344 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %344, label %.loopexit91 [
    i32 0, label %345
    i32 -5, label %345
  ]

345:                                              ; preds = %343, %343
  %346 = load i32, ptr %39, align 8, !tbaa !24
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %384

348:                                              ; preds = %345
  %349 = load ptr, ptr %47, align 8, !tbaa !29
  %350 = load i32, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %48, align 4, !tbaa !17
  %351 = tail call ptr @__errno_location() #16
  store i32 0, ptr %351, align 4, !tbaa !4
  br label %352

352:                                              ; preds = %363, %348
  %353 = phi i32 [ 0, %348 ], [ %364, %363 ]
  %354 = sub i32 %350, %353
  %355 = tail call i32 @llvm.umin.i32(i32 %354, i32 1073741824)
  %356 = load i32, ptr %49, align 4, !tbaa !46
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
  br i1 %365, label %352, label %.loopexit85, !llvm.loop !47

366:                                              ; preds = %352
  %367 = icmp slt i32 %361, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %366
  %369 = load i32, ptr %351, align 4, !tbaa !4
  %370 = icmp eq i32 %369, 11
  br i1 %370, label %371, label %.loopexit93

371:                                              ; preds = %368
  store i32 1, ptr %48, align 4, !tbaa !17
  %372 = icmp eq i32 %353, 0
  br i1 %372, label %373, label %.loopexit85

373:                                              ; preds = %371
  %374 = load i32, ptr %351, align 4, !tbaa !4
  br label %.loopexit93

375:                                              ; preds = %366
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit85

.loopexit93:                                      ; preds = %368, %373
  %376 = phi i32 [ %374, %373 ], [ %369, %368 ]
  %377 = tail call ptr @strerror(i32 noundef %376) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %377) #13
  %378 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit91

.loopexit85:                                      ; preds = %363, %375, %371
  %379 = phi i32 [ %353, %371 ], [ %353, %375 ], [ %364, %363 ]
  %380 = load i32, ptr %40, align 8, !tbaa !34
  %381 = add i32 %380, %379
  store i32 %381, ptr %40, align 8, !tbaa !34
  %382 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %382, ptr %46, align 8, !tbaa !35
  %383 = icmp eq i32 %381, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %.loopexit85, %345
  %385 = load i32, ptr %48, align 4, !tbaa !17
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %.loopexit91

387:                                              ; preds = %384
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit91

388:                                              ; preds = %.loopexit85, %339
  %389 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %390 = load i32, ptr %43, align 8, !tbaa !48
  %391 = icmp ult i32 %390, %337
  br i1 %391, label %392, label %393

392:                                              ; preds = %388
  store i32 0, ptr %50, align 4, !tbaa !33
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
  br label %.loopexit91

395:                                              ; preds = %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %414

396:                                              ; preds = %393
  %397 = load i32, ptr %50, align 4, !tbaa !33
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %405

399:                                              ; preds = %396
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  %400 = sub i32 %337, %390
  store i32 %400, ptr %0, align 8, !tbaa !19
  %401 = load ptr, ptr %45, align 8, !tbaa !49
  %402 = zext i32 %400 to i64
  %403 = sub nsw i64 0, %402
  %404 = getelementptr inbounds i8, ptr %401, i64 %403
  store ptr %404, ptr %37, align 8, !tbaa !20
  br label %430

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
  br i1 %413, label %339, label %.loopexit91, !llvm.loop !51

414:                                              ; preds = %405, %395
  %415 = load i32, ptr %43, align 8, !tbaa !48
  %416 = sub i32 %337, %415
  store i32 %416, ptr %0, align 8, !tbaa !19
  %417 = load ptr, ptr %45, align 8, !tbaa !49
  %418 = zext i32 %416 to i64
  %419 = sub nsw i64 0, %418
  %420 = getelementptr inbounds i8, ptr %417, i64 %419
  store ptr %420, ptr %37, align 8, !tbaa !20
  br label %.loopexit95

.loopexit91:                                      ; preds = %410, %343, %394, %387, %384, %.loopexit93
  %421 = phi i32 [ %378, %.loopexit93 ], [ %340, %384 ], [ %340, %387 ], [ %389, %394 ], [ %344, %343 ], [ %389, %410 ]
  %422 = load i32, ptr %43, align 8, !tbaa !48
  %423 = sub i32 %337, %422
  store i32 %423, ptr %0, align 8, !tbaa !19
  %424 = load ptr, ptr %45, align 8, !tbaa !49
  %425 = zext i32 %423 to i64
  %426 = sub nsw i64 0, %425
  %427 = getelementptr inbounds i8, ptr %424, i64 %426
  store ptr %427, ptr %37, align 8, !tbaa !20
  switch i32 %421, label %.loopexit95 [
    i32 1, label %428
    i32 0, label %430
  ]

428:                                              ; preds = %.loopexit91
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %430

429:                                              ; preds = %83
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit95

430:                                              ; preds = %428, %.loopexit91, %399, %298, %292
  %431 = load i32, ptr %0, align 8, !tbaa !19
  br label %432

432:                                              ; preds = %430, %294
  %433 = phi i32 [ %431, %430 ], [ %297, %294 ]
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %.loopexit97

435:                                              ; preds = %432
  %436 = load i32, ptr %39, align 8, !tbaa !24
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %.backedge, label %438

438:                                              ; preds = %435
  %439 = load i32, ptr %40, align 8, !tbaa !34
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %.loopexit97, label %.backedge

.backedge:                                        ; preds = %438, %435
  br label %83, !llvm.loop !52

.loopexit97:                                      ; preds = %438, %432, %298, %.loopexit94
  %441 = load i64, ptr %33, align 8, !tbaa !18
  br label %442

442:                                              ; preds = %.loopexit97, %75
  %443 = phi i64 [ %441, %.loopexit97 ], [ %76, %75 ]
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %.loopexit98, label %54, !llvm.loop !53

.loopexit98:                                      ; preds = %442, %80, %32
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %463

463:                                              ; preds = %.loopexit79, %.loopexit98
  %464 = phi ptr [ %2, %.loopexit98 ], [ %1002, %.loopexit79 ]
  %465 = phi i64 [ 1, %.loopexit98 ], [ %1001, %.loopexit79 ]
  %466 = phi i64 [ 0, %.loopexit98 ], [ %1000, %.loopexit79 ]
  %467 = call i64 @llvm.umin.i64(i64 %465, i64 4294967295)
  %468 = trunc nuw i64 %467 to i32
  %469 = load i32, ptr %0, align 8, !tbaa !19
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %482, label %471

471:                                              ; preds = %463
  %472 = call i32 @llvm.umin.i32(i32 %469, i32 %468)
  %473 = load ptr, ptr %445, align 8, !tbaa !20
  %474 = zext i32 %472 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %464, ptr align 1 %473, i64 %474, i1 false)
  %475 = load ptr, ptr %445, align 8, !tbaa !20
  %476 = getelementptr inbounds nuw i8, ptr %475, i64 %474
  store ptr %476, ptr %445, align 8, !tbaa !20
  %477 = load i32, ptr %0, align 8, !tbaa !19
  %478 = sub i32 %477, %472
  store i32 %478, ptr %0, align 8, !tbaa !19
  %479 = load i32, ptr %9, align 8, !tbaa !16
  %480 = icmp ne i32 %479, 0
  %481 = sext i1 %480 to i32
  br label %986

482:                                              ; preds = %463
  %483 = load i32, ptr %446, align 8, !tbaa !24
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %488, label %485

485:                                              ; preds = %482
  %486 = load i32, ptr %447, align 8, !tbaa !25
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %.loopexit83, label %488

488:                                              ; preds = %485, %482
  %489 = load i32, ptr %448, align 8, !tbaa !26
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %.preheader650, label %491

491:                                              ; preds = %488
  %492 = load i32, ptr %449, align 8, !tbaa !27
  %493 = shl i32 %492, 1
  %494 = icmp ugt i32 %493, %468
  br i1 %494, label %.preheader650, label %858

.preheader650:                                    ; preds = %491, %488
  br label %495

495:                                              ; preds = %.preheader650, %853
  %496 = phi i32 [ %854, %853 ], [ %489, %.preheader650 ]
  switch i32 %496, label %841 [
    i32 0, label %497
    i32 1, label %713
    i32 2, label %748
  ]

497:                                              ; preds = %495
  %498 = load i32, ptr %449, align 8, !tbaa !27
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %519

500:                                              ; preds = %497
  %501 = load i32, ptr %460, align 4, !tbaa !28
  %502 = zext i32 %501 to i64
  %503 = call noalias ptr @malloc(i64 noundef %502) #15
  store ptr %503, ptr %453, align 8, !tbaa !29
  %504 = load i32, ptr %460, align 4, !tbaa !28
  %505 = shl i32 %504, 1
  %506 = zext i32 %505 to i64
  %507 = call noalias ptr @malloc(i64 noundef %506) #15
  store ptr %507, ptr %459, align 8, !tbaa !30
  %508 = icmp eq ptr %503, null
  %509 = icmp eq ptr %507, null
  %510 = or i1 %508, %509
  br i1 %510, label %511, label %512

511:                                              ; preds = %500
  call void @free(ptr noundef %507) #13
  call void @free(ptr noundef %503) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

512:                                              ; preds = %500
  %513 = load i32, ptr %460, align 4, !tbaa !28
  store i32 %513, ptr %449, align 8, !tbaa !27
  store i32 0, ptr %447, align 8, !tbaa !25
  store ptr null, ptr %452, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %461, i8 0, i64 24, i1 false)
  %514 = call i32 @inflateInit2_(ptr noundef nonnull %452, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %519, label %516

516:                                              ; preds = %512
  %517 = load ptr, ptr %459, align 8, !tbaa !30
  call void @free(ptr noundef %517) #13
  %518 = load ptr, ptr %453, align 8, !tbaa !29
  call void @free(ptr noundef %518) #13
  store i32 0, ptr %449, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

519:                                              ; preds = %512, %497
  %520 = load i32, ptr %462, align 8, !tbaa !32
  %521 = icmp eq i32 %520, -1
  br i1 %521, label %525, label %522

522:                                              ; preds = %519
  %523 = load i32, ptr %456, align 4, !tbaa !33
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %530

525:                                              ; preds = %522, %519
  %526 = call i32 @inflateReset(ptr noundef nonnull %452) #13
  store i32 2, ptr %448, align 8, !tbaa !26
  %527 = load i32, ptr %456, align 4, !tbaa !33
  %528 = icmp ne i32 %527, -1
  %529 = zext i1 %528 to i32
  store i32 %529, ptr %456, align 4, !tbaa !33
  store i32 0, ptr %462, align 8, !tbaa !32
  br label %710

530:                                              ; preds = %522
  %531 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %531, label %.loopexit77 [
    i32 0, label %532
    i32 -5, label %532
  ]

532:                                              ; preds = %530, %530
  %533 = load i32, ptr %446, align 8, !tbaa !24
  %534 = icmp eq i32 %533, 0
  %535 = load i32, ptr %447, align 8, !tbaa !34
  br i1 %534, label %536, label %678

536:                                              ; preds = %532
  %537 = icmp eq i32 %535, 0
  %538 = load ptr, ptr %453, align 8, !tbaa !29
  %539 = ptrtoaddr ptr %538 to i64
  br i1 %537, label %640, label %540

540:                                              ; preds = %536
  %541 = load ptr, ptr %452, align 8, !tbaa !35
  %542 = icmp eq ptr %541, %538
  br i1 %542, label %640, label %543

543:                                              ; preds = %540
  %544 = ptrtoaddr ptr %541 to i64
  %545 = zext i32 %535 to i64
  %546 = icmp ult i32 %535, 4
  %547 = sub i64 %539, %544
  %548 = icmp ult i64 %547, 32
  %549 = select i1 %546, i1 true, i1 %548
  br i1 %549, label %589, label %550

550:                                              ; preds = %543
  %551 = icmp ult i32 %535, 32
  br i1 %551, label %573, label %552

552:                                              ; preds = %550
  %553 = and i64 %545, 4294967264
  br label %554

554:                                              ; preds = %554, %552
  %555 = phi i64 [ 0, %552 ], [ %562, %554 ]
  %556 = getelementptr i8, ptr %538, i64 %555
  %557 = getelementptr i8, ptr %541, i64 %555
  %558 = getelementptr i8, ptr %557, i64 16
  %559 = load <16 x i8>, ptr %557, align 1, !tbaa !36
  %560 = load <16 x i8>, ptr %558, align 1, !tbaa !36
  %561 = getelementptr i8, ptr %556, i64 16
  store <16 x i8> %559, ptr %556, align 1, !tbaa !36
  store <16 x i8> %560, ptr %561, align 1, !tbaa !36
  %562 = add nuw nsw i64 %555, 32
  %563 = icmp eq i64 %562, %553
  br i1 %563, label %564, label %554, !llvm.loop !74

564:                                              ; preds = %554
  %565 = icmp eq i64 %553, %545
  br i1 %565, label %.loopexit70, label %566

566:                                              ; preds = %564
  %567 = trunc nuw i64 %553 to i32
  %568 = sub i32 %535, %567
  %569 = getelementptr i8, ptr %541, i64 %553
  %570 = getelementptr i8, ptr %538, i64 %553
  %571 = and i64 %545, 28
  %572 = icmp eq i64 %571, 0
  br i1 %572, label %589, label %573, !prof !41

573:                                              ; preds = %566, %550
  %574 = phi i64 [ %553, %566 ], [ 0, %550 ]
  %575 = and i64 %545, 4294967292
  br label %576

576:                                              ; preds = %576, %573
  %577 = phi i64 [ %574, %573 ], [ %581, %576 ]
  %578 = getelementptr i8, ptr %538, i64 %577
  %579 = getelementptr i8, ptr %541, i64 %577
  %580 = load <4 x i8>, ptr %579, align 1, !tbaa !36
  store <4 x i8> %580, ptr %578, align 1, !tbaa !36
  %581 = add nuw i64 %577, 4
  %582 = icmp eq i64 %581, %575
  br i1 %582, label %583, label %576, !llvm.loop !75

583:                                              ; preds = %576
  %584 = getelementptr i8, ptr %538, i64 %575
  %585 = getelementptr i8, ptr %541, i64 %575
  %586 = trunc nuw i64 %575 to i32
  %587 = sub i32 %535, %586
  %588 = icmp eq i64 %575, %545
  br i1 %588, label %.loopexit70, label %589

589:                                              ; preds = %583, %566, %543
  %590 = phi ptr [ %538, %543 ], [ %570, %566 ], [ %584, %583 ]
  %591 = phi ptr [ %541, %543 ], [ %569, %566 ], [ %585, %583 ]
  %592 = phi i32 [ %535, %543 ], [ %568, %566 ], [ %587, %583 ]
  %593 = add i32 %592, -1
  %594 = and i32 %592, 7
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %589, %.preheader71
  %596 = phi ptr [ %601, %.preheader71 ], [ %590, %589 ]
  %597 = phi ptr [ %599, %.preheader71 ], [ %591, %589 ]
  %598 = phi i32 [ %602, %.preheader71 ], [ 0, %589 ]
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 1
  %600 = load i8, ptr %597, align 1, !tbaa !36
  %601 = getelementptr inbounds nuw i8, ptr %596, i64 1
  store i8 %600, ptr %596, align 1, !tbaa !36
  %602 = add nuw nsw i32 %598, 1
  %603 = icmp eq i32 %602, %594
  br i1 %603, label %.loopexit72.loopexit, label %.preheader71, !llvm.loop !76

.loopexit72.loopexit:                             ; preds = %.preheader71
  %604 = and i32 %592, -8
  br label %.loopexit72

.loopexit72:                                      ; preds = %.loopexit72.loopexit, %589
  %605 = phi ptr [ %590, %589 ], [ %601, %.loopexit72.loopexit ]
  %606 = phi ptr [ %591, %589 ], [ %599, %.loopexit72.loopexit ]
  %607 = phi i32 [ %592, %589 ], [ %604, %.loopexit72.loopexit ]
  %608 = icmp ult i32 %593, 7
  br i1 %608, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %.loopexit72, %.preheader
  %609 = phi ptr [ %635, %.preheader ], [ %605, %.loopexit72 ]
  %610 = phi ptr [ %633, %.preheader ], [ %606, %.loopexit72 ]
  %611 = phi i32 [ %636, %.preheader ], [ %607, %.loopexit72 ]
  %612 = getelementptr inbounds nuw i8, ptr %610, i64 1
  %613 = load i8, ptr %610, align 1, !tbaa !36
  %614 = getelementptr inbounds nuw i8, ptr %609, i64 1
  store i8 %613, ptr %609, align 1, !tbaa !36
  %615 = getelementptr inbounds nuw i8, ptr %610, i64 2
  %616 = load i8, ptr %612, align 1, !tbaa !36
  %617 = getelementptr inbounds nuw i8, ptr %609, i64 2
  store i8 %616, ptr %614, align 1, !tbaa !36
  %618 = getelementptr inbounds nuw i8, ptr %610, i64 3
  %619 = load i8, ptr %615, align 1, !tbaa !36
  %620 = getelementptr inbounds nuw i8, ptr %609, i64 3
  store i8 %619, ptr %617, align 1, !tbaa !36
  %621 = getelementptr inbounds nuw i8, ptr %610, i64 4
  %622 = load i8, ptr %618, align 1, !tbaa !36
  %623 = getelementptr inbounds nuw i8, ptr %609, i64 4
  store i8 %622, ptr %620, align 1, !tbaa !36
  %624 = getelementptr inbounds nuw i8, ptr %610, i64 5
  %625 = load i8, ptr %621, align 1, !tbaa !36
  %626 = getelementptr inbounds nuw i8, ptr %609, i64 5
  store i8 %625, ptr %623, align 1, !tbaa !36
  %627 = getelementptr inbounds nuw i8, ptr %610, i64 6
  %628 = load i8, ptr %624, align 1, !tbaa !36
  %629 = getelementptr inbounds nuw i8, ptr %609, i64 6
  store i8 %628, ptr %626, align 1, !tbaa !36
  %630 = getelementptr inbounds nuw i8, ptr %610, i64 7
  %631 = load i8, ptr %627, align 1, !tbaa !36
  %632 = getelementptr inbounds nuw i8, ptr %609, i64 7
  store i8 %631, ptr %629, align 1, !tbaa !36
  %633 = getelementptr inbounds nuw i8, ptr %610, i64 8
  %634 = load i8, ptr %630, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %609, i64 8
  store i8 %634, ptr %632, align 1, !tbaa !36
  %636 = add i32 %611, -8
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %.loopexit70, label %.preheader, !llvm.loop !77

.loopexit70:                                      ; preds = %.preheader, %.loopexit72, %583, %564
  %638 = load i32, ptr %447, align 8, !tbaa !34
  %639 = load ptr, ptr %453, align 8, !tbaa !29
  br label %640

640:                                              ; preds = %.loopexit70, %540, %536
  %641 = phi ptr [ %639, %.loopexit70 ], [ %538, %540 ], [ %538, %536 ]
  %642 = phi i32 [ %638, %.loopexit70 ], [ %535, %540 ], [ 0, %536 ]
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds nuw i8, ptr %641, i64 %643
  %645 = load i32, ptr %449, align 8, !tbaa !27
  %646 = sub i32 %645, %642
  store i32 0, ptr %454, align 4, !tbaa !17
  %647 = tail call ptr @__errno_location() #16
  store i32 0, ptr %647, align 4, !tbaa !4
  br label %648

648:                                              ; preds = %659, %640
  %649 = phi i32 [ 0, %640 ], [ %660, %659 ]
  %650 = sub i32 %646, %649
  %651 = call i32 @llvm.umin.i32(i32 %650, i32 1073741824)
  %652 = load i32, ptr %455, align 4, !tbaa !46
  %653 = zext i32 %649 to i64
  %654 = getelementptr inbounds nuw i8, ptr %644, i64 %653
  %655 = zext nneg i32 %651 to i64
  %656 = call i64 @read(i32 noundef %652, ptr noundef %654, i64 noundef %655) #13
  %657 = trunc i64 %656 to i32
  %658 = icmp slt i32 %657, 1
  br i1 %658, label %662, label %659

659:                                              ; preds = %648
  %660 = add i32 %649, %657
  %661 = icmp ult i32 %660, %646
  br i1 %661, label %648, label %.loopexit69, !llvm.loop !47

662:                                              ; preds = %648
  %663 = icmp slt i32 %657, 0
  br i1 %663, label %664, label %671

664:                                              ; preds = %662
  %665 = load i32, ptr %647, align 4, !tbaa !4
  %666 = icmp eq i32 %665, 11
  br i1 %666, label %667, label %.loopexit78

667:                                              ; preds = %664
  store i32 1, ptr %454, align 4, !tbaa !17
  %668 = icmp eq i32 %649, 0
  br i1 %668, label %669, label %.loopexit69

669:                                              ; preds = %667
  %670 = load i32, ptr %647, align 4, !tbaa !4
  br label %.loopexit78

671:                                              ; preds = %662
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %.loopexit69

.loopexit78:                                      ; preds = %664, %669
  %672 = phi i32 [ %670, %669 ], [ %665, %664 ]
  %673 = call ptr @strerror(i32 noundef %672) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %673) #13
  br label %.loopexit77

.loopexit69:                                      ; preds = %659, %671, %667
  %674 = phi i32 [ %649, %667 ], [ %649, %671 ], [ %660, %659 ]
  %675 = load i32, ptr %447, align 8, !tbaa !34
  %676 = add i32 %675, %674
  store i32 %676, ptr %447, align 8, !tbaa !34
  %677 = load ptr, ptr %453, align 8, !tbaa !29
  store ptr %677, ptr %452, align 8, !tbaa !35
  br label %678

678:                                              ; preds = %.loopexit69, %532
  %679 = phi i32 [ %676, %.loopexit69 ], [ %535, %532 ]
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %710, label %681

681:                                              ; preds = %678
  %682 = load i32, ptr %454, align 4, !tbaa !17
  %683 = icmp ne i32 %682, 0
  %684 = icmp ult i32 %679, 4
  %685 = and i1 %684, %683
  br i1 %685, label %710, label %686

686:                                              ; preds = %681
  %687 = icmp ugt i32 %679, 3
  %688 = load ptr, ptr %452, align 8, !tbaa !35
  br i1 %687, label %689, label %706

689:                                              ; preds = %686
  %690 = load i8, ptr %688, align 1, !tbaa !36
  %691 = icmp eq i8 %690, 31
  br i1 %691, label %692, label %706

692:                                              ; preds = %689
  %693 = getelementptr inbounds nuw i8, ptr %688, i64 1
  %694 = load i8, ptr %693, align 1, !tbaa !36
  %695 = icmp eq i8 %694, -117
  br i1 %695, label %696, label %706

696:                                              ; preds = %692
  %697 = getelementptr inbounds nuw i8, ptr %688, i64 2
  %698 = load i8, ptr %697, align 1, !tbaa !36
  %699 = icmp eq i8 %698, 8
  br i1 %699, label %700, label %706

700:                                              ; preds = %696
  %701 = getelementptr inbounds nuw i8, ptr %688, i64 3
  %702 = load i8, ptr %701, align 1, !tbaa !36
  %703 = icmp ult i8 %702, 32
  br i1 %703, label %704, label %706

704:                                              ; preds = %700
  %705 = call i32 @inflateReset(ptr noundef nonnull %452) #13
  store i32 2, ptr %448, align 8, !tbaa !26
  store i32 1, ptr %456, align 4, !tbaa !33
  store i32 0, ptr %462, align 8, !tbaa !32
  br label %842

706:                                              ; preds = %700, %696, %692, %689, %686
  %707 = load ptr, ptr %459, align 8, !tbaa !30
  store ptr %707, ptr %445, align 8, !tbaa !20
  %708 = zext i32 %679 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %707, ptr align 1 %688, i64 %708, i1 false)
  %709 = load i32, ptr %447, align 8, !tbaa !34
  store i32 %709, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %447, align 8, !tbaa !34
  store i32 1, ptr %448, align 8, !tbaa !26
  br label %844

710:                                              ; preds = %681, %678, %525
  %711 = load i32, ptr %448, align 8, !tbaa !26
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %.loopexit79, label %842

713:                                              ; preds = %495
  %714 = load ptr, ptr %459, align 8, !tbaa !30
  %715 = load i32, ptr %449, align 8, !tbaa !27
  %716 = shl i32 %715, 1
  store i32 0, ptr %454, align 4, !tbaa !17
  %717 = tail call ptr @__errno_location() #16
  store i32 0, ptr %717, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %718

718:                                              ; preds = %729, %713
  %719 = phi i32 [ %731, %729 ], [ 0, %713 ]
  %720 = sub i32 %716, %719
  %721 = call i32 @llvm.umin.i32(i32 %720, i32 1073741824)
  %722 = load i32, ptr %455, align 4, !tbaa !46
  %723 = zext i32 %719 to i64
  %724 = getelementptr inbounds nuw i8, ptr %714, i64 %723
  %725 = zext nneg i32 %721 to i64
  %726 = call i64 @read(i32 noundef %722, ptr noundef %724, i64 noundef %725) #13
  %727 = trunc i64 %726 to i32
  %728 = icmp slt i32 %727, 1
  br i1 %728, label %733, label %729

729:                                              ; preds = %718
  %730 = load i32, ptr %0, align 4, !tbaa !4
  %731 = add i32 %730, %727
  store i32 %731, ptr %0, align 4, !tbaa !4
  %732 = icmp ult i32 %731, %716
  br i1 %732, label %718, label %.loopexit76, !llvm.loop !47

733:                                              ; preds = %718
  %734 = icmp slt i32 %727, 0
  br i1 %734, label %735, label %743

735:                                              ; preds = %733
  %736 = load i32, ptr %717, align 4, !tbaa !4
  %737 = icmp eq i32 %736, 11
  br i1 %737, label %738, label %744

738:                                              ; preds = %735
  store i32 1, ptr %454, align 4, !tbaa !17
  %739 = load i32, ptr %0, align 4, !tbaa !4
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %.loopexit76

741:                                              ; preds = %738
  %742 = load i32, ptr %717, align 4, !tbaa !4
  br label %744

743:                                              ; preds = %733
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %.loopexit76

744:                                              ; preds = %741, %735
  %745 = phi i32 [ %742, %741 ], [ %736, %735 ]
  %746 = call ptr @strerror(i32 noundef %745) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %746) #13
  br label %.loopexit77

.loopexit76:                                      ; preds = %729, %743, %738
  %747 = load ptr, ptr %459, align 8, !tbaa !30
  store ptr %747, ptr %445, align 8, !tbaa !20
  br label %.loopexit79

748:                                              ; preds = %495
  %749 = load i32, ptr %449, align 8, !tbaa !27
  %750 = shl i32 %749, 1
  store i32 %750, ptr %450, align 8, !tbaa !48
  %751 = load ptr, ptr %459, align 8, !tbaa !30
  store ptr %751, ptr %451, align 8, !tbaa !49
  br label %752

752:                                              ; preds = %822, %748
  %753 = phi i32 [ 0, %748 ], [ %802, %822 ]
  %754 = load i32, ptr %447, align 8, !tbaa !34
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %801

756:                                              ; preds = %752
  %757 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %757, label %.loopexit73 [
    i32 0, label %758
    i32 -5, label %758
  ]

758:                                              ; preds = %756, %756
  %759 = load i32, ptr %446, align 8, !tbaa !24
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %797

761:                                              ; preds = %758
  %762 = load ptr, ptr %453, align 8, !tbaa !29
  %763 = load i32, ptr %449, align 8, !tbaa !27
  store i32 0, ptr %454, align 4, !tbaa !17
  %764 = tail call ptr @__errno_location() #16
  store i32 0, ptr %764, align 4, !tbaa !4
  br label %765

765:                                              ; preds = %776, %761
  %766 = phi i32 [ 0, %761 ], [ %777, %776 ]
  %767 = sub i32 %763, %766
  %768 = call i32 @llvm.umin.i32(i32 %767, i32 1073741824)
  %769 = load i32, ptr %455, align 4, !tbaa !46
  %770 = zext i32 %766 to i64
  %771 = getelementptr inbounds nuw i8, ptr %762, i64 %770
  %772 = zext nneg i32 %768 to i64
  %773 = call i64 @read(i32 noundef %769, ptr noundef %771, i64 noundef %772) #13
  %774 = trunc i64 %773 to i32
  %775 = icmp slt i32 %774, 1
  br i1 %775, label %779, label %776

776:                                              ; preds = %765
  %777 = add i32 %766, %774
  %778 = icmp ult i32 %777, %763
  br i1 %778, label %765, label %.loopexit, !llvm.loop !47

779:                                              ; preds = %765
  %780 = icmp slt i32 %774, 0
  br i1 %780, label %781, label %788

781:                                              ; preds = %779
  %782 = load i32, ptr %764, align 4, !tbaa !4
  %783 = icmp eq i32 %782, 11
  br i1 %783, label %784, label %.loopexit74

784:                                              ; preds = %781
  store i32 1, ptr %454, align 4, !tbaa !17
  %785 = icmp eq i32 %766, 0
  br i1 %785, label %786, label %.loopexit

786:                                              ; preds = %784
  %787 = load i32, ptr %764, align 4, !tbaa !4
  br label %.loopexit74

788:                                              ; preds = %779
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %.loopexit

.loopexit74:                                      ; preds = %781, %786
  %789 = phi i32 [ %787, %786 ], [ %782, %781 ]
  %790 = call ptr @strerror(i32 noundef %789) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %790) #13
  %791 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit73

.loopexit:                                        ; preds = %776, %788, %784
  %792 = phi i32 [ %766, %784 ], [ %766, %788 ], [ %777, %776 ]
  %793 = load i32, ptr %447, align 8, !tbaa !34
  %794 = add i32 %793, %792
  store i32 %794, ptr %447, align 8, !tbaa !34
  %795 = load ptr, ptr %453, align 8, !tbaa !29
  store ptr %795, ptr %452, align 8, !tbaa !35
  %796 = icmp eq i32 %794, 0
  br i1 %796, label %797, label %801

797:                                              ; preds = %.loopexit, %758
  %798 = load i32, ptr %454, align 4, !tbaa !17
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %800, label %.loopexit73

800:                                              ; preds = %797
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit73

801:                                              ; preds = %.loopexit, %752
  %802 = call i32 @inflate(ptr noundef nonnull %452, i32 noundef 0) #13
  %803 = load i32, ptr %450, align 8, !tbaa !48
  %804 = icmp ult i32 %803, %750
  br i1 %804, label %805, label %806

805:                                              ; preds = %801
  store i32 0, ptr %456, align 4, !tbaa !33
  br label %806

806:                                              ; preds = %805, %801
  switch i32 %802, label %822 [
    i32 -2, label %807
    i32 2, label %807
    i32 -4, label %808
    i32 -3, label %809
  ]

807:                                              ; preds = %806, %806
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit73

808:                                              ; preds = %806
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %826

809:                                              ; preds = %806
  %810 = load i32, ptr %456, align 4, !tbaa !33
  %811 = icmp eq i32 %810, 1
  br i1 %811, label %812, label %818

812:                                              ; preds = %809
  store i32 0, ptr %447, align 8, !tbaa !34
  store i32 1, ptr %446, align 8, !tbaa !24
  store i32 0, ptr %448, align 8, !tbaa !26
  %813 = sub i32 %750, %803
  store i32 %813, ptr %0, align 8, !tbaa !19
  %814 = load ptr, ptr %451, align 8, !tbaa !49
  %815 = zext i32 %813 to i64
  %816 = sub nsw i64 0, %815
  %817 = getelementptr inbounds i8, ptr %814, i64 %816
  store ptr %817, ptr %445, align 8, !tbaa !20
  br label %842

818:                                              ; preds = %809
  %819 = load ptr, ptr %457, align 8, !tbaa !50
  %820 = icmp eq ptr %819, null
  %821 = select i1 %820, ptr @.str.6, ptr %819
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %821) #13
  br label %826

822:                                              ; preds = %806
  %823 = icmp ne i32 %803, 0
  %824 = icmp ne i32 %802, 1
  %825 = select i1 %823, i1 %824, i1 false
  br i1 %825, label %752, label %.loopexit73, !llvm.loop !51

826:                                              ; preds = %818, %808
  %827 = load i32, ptr %450, align 8, !tbaa !48
  %828 = sub i32 %750, %827
  store i32 %828, ptr %0, align 8, !tbaa !19
  %829 = load ptr, ptr %451, align 8, !tbaa !49
  %830 = zext i32 %828 to i64
  %831 = sub nsw i64 0, %830
  %832 = getelementptr inbounds i8, ptr %829, i64 %831
  store ptr %832, ptr %445, align 8, !tbaa !20
  br label %.loopexit77

.loopexit73:                                      ; preds = %822, %756, %807, %800, %797, %.loopexit74
  %833 = phi i32 [ %791, %.loopexit74 ], [ %753, %797 ], [ %753, %800 ], [ %802, %807 ], [ %802, %822 ], [ %757, %756 ]
  %834 = load i32, ptr %450, align 8, !tbaa !48
  %835 = sub i32 %750, %834
  store i32 %835, ptr %0, align 8, !tbaa !19
  %836 = load ptr, ptr %451, align 8, !tbaa !49
  %837 = zext i32 %835 to i64
  %838 = sub nsw i64 0, %837
  %839 = getelementptr inbounds i8, ptr %836, i64 %838
  store ptr %839, ptr %445, align 8, !tbaa !20
  switch i32 %833, label %.loopexit77 [
    i32 1, label %840
    i32 0, label %842
  ]

840:                                              ; preds = %.loopexit73
  store i32 0, ptr %456, align 4, !tbaa !33
  store i32 0, ptr %448, align 8, !tbaa !26
  br label %842

841:                                              ; preds = %495
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit77

842:                                              ; preds = %840, %.loopexit73, %812, %710, %704
  %843 = load i32, ptr %0, align 8, !tbaa !19
  br label %844

844:                                              ; preds = %842, %706
  %845 = phi i32 [ %843, %842 ], [ %709, %706 ]
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %.loopexit79

847:                                              ; preds = %844
  %848 = load i32, ptr %446, align 8, !tbaa !24
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %853, label %850

850:                                              ; preds = %847
  %851 = load i32, ptr %447, align 8, !tbaa !34
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %.loopexit79, label %853

853:                                              ; preds = %850, %847
  %854 = load i32, ptr %448, align 8, !tbaa !26
  br label %495, !llvm.loop !52

.loopexit77:                                      ; preds = %.loopexit73, %530, %841, %826, %744, %.loopexit78, %516, %511
  %855 = load i32, ptr %0, align 8, !tbaa !19
  %856 = icmp eq i32 %855, 0
  %857 = sext i1 %856 to i32
  br label %.loopexit79

858:                                              ; preds = %491
  %859 = icmp eq i32 %489, 1
  br i1 %859, label %860, label %889

860:                                              ; preds = %858
  store i32 0, ptr %454, align 4, !tbaa !17
  %861 = tail call ptr @__errno_location() #16
  store i32 0, ptr %861, align 4, !tbaa !4
  br label %862

862:                                              ; preds = %873, %860
  %863 = phi i32 [ 0, %860 ], [ %874, %873 ]
  %864 = sub i32 %468, %863
  %865 = call i32 @llvm.umin.i32(i32 %864, i32 1073741824)
  %866 = load i32, ptr %455, align 4, !tbaa !46
  %867 = zext i32 %863 to i64
  %868 = getelementptr inbounds nuw i8, ptr %464, i64 %867
  %869 = zext nneg i32 %865 to i64
  %870 = call i64 @read(i32 noundef %866, ptr noundef %868, i64 noundef %869) #13
  %871 = trunc i64 %870 to i32
  %872 = icmp slt i32 %871, 1
  br i1 %872, label %876, label %873

873:                                              ; preds = %862
  %874 = add i32 %863, %871
  %875 = icmp ult i32 %874, %468
  br i1 %875, label %862, label %984, !llvm.loop !47

876:                                              ; preds = %862
  %877 = icmp slt i32 %871, 0
  br i1 %877, label %878, label %888

878:                                              ; preds = %876
  %879 = load i32, ptr %861, align 4, !tbaa !4
  %880 = icmp eq i32 %879, 11
  br i1 %880, label %881, label %885

881:                                              ; preds = %878
  store i32 1, ptr %454, align 4, !tbaa !17
  %882 = icmp eq i32 %863, 0
  br i1 %882, label %883, label %986

883:                                              ; preds = %881
  %884 = load i32, ptr %861, align 4, !tbaa !4
  br label %885

885:                                              ; preds = %883, %878
  %886 = phi i32 [ %884, %883 ], [ %879, %878 ]
  %887 = call ptr @strerror(i32 noundef %886) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %887) #13
  br label %986

888:                                              ; preds = %876
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %986

889:                                              ; preds = %858
  store i32 %468, ptr %450, align 8, !tbaa !58
  store ptr %464, ptr %451, align 8, !tbaa !59
  br label %890

890:                                              ; preds = %955, %889
  %891 = phi i32 [ 0, %889 ], [ %940, %955 ]
  %892 = load i32, ptr %447, align 8, !tbaa !34
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %939

894:                                              ; preds = %890
  %895 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %895, label %.loopexit80 [
    i32 0, label %896
    i32 -5, label %896
  ]

896:                                              ; preds = %894, %894
  %897 = load i32, ptr %446, align 8, !tbaa !24
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %899, label %935

899:                                              ; preds = %896
  %900 = load ptr, ptr %453, align 8, !tbaa !29
  %901 = load i32, ptr %449, align 8, !tbaa !27
  store i32 0, ptr %454, align 4, !tbaa !17
  %902 = tail call ptr @__errno_location() #16
  store i32 0, ptr %902, align 4, !tbaa !4
  br label %903

903:                                              ; preds = %914, %899
  %904 = phi i32 [ 0, %899 ], [ %915, %914 ]
  %905 = sub i32 %901, %904
  %906 = call i32 @llvm.umin.i32(i32 %905, i32 1073741824)
  %907 = load i32, ptr %455, align 4, !tbaa !46
  %908 = zext i32 %904 to i64
  %909 = getelementptr inbounds nuw i8, ptr %900, i64 %908
  %910 = zext nneg i32 %906 to i64
  %911 = call i64 @read(i32 noundef %907, ptr noundef %909, i64 noundef %910) #13
  %912 = trunc i64 %911 to i32
  %913 = icmp slt i32 %912, 1
  br i1 %913, label %917, label %914

914:                                              ; preds = %903
  %915 = add i32 %904, %912
  %916 = icmp ult i32 %915, %901
  br i1 %916, label %903, label %.loopexit75, !llvm.loop !47

917:                                              ; preds = %903
  %918 = icmp slt i32 %912, 0
  br i1 %918, label %919, label %926

919:                                              ; preds = %917
  %920 = load i32, ptr %902, align 4, !tbaa !4
  %921 = icmp eq i32 %920, 11
  br i1 %921, label %922, label %.loopexit82

922:                                              ; preds = %919
  store i32 1, ptr %454, align 4, !tbaa !17
  %923 = icmp eq i32 %904, 0
  br i1 %923, label %924, label %.loopexit75

924:                                              ; preds = %922
  %925 = load i32, ptr %902, align 4, !tbaa !4
  br label %.loopexit82

926:                                              ; preds = %917
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %.loopexit75

.loopexit82:                                      ; preds = %919, %924
  %927 = phi i32 [ %925, %924 ], [ %920, %919 ]
  %928 = call ptr @strerror(i32 noundef %927) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %928) #13
  %929 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit80

.loopexit75:                                      ; preds = %914, %926, %922
  %930 = phi i32 [ %904, %922 ], [ %904, %926 ], [ %915, %914 ]
  %931 = load i32, ptr %447, align 8, !tbaa !34
  %932 = add i32 %931, %930
  store i32 %932, ptr %447, align 8, !tbaa !34
  %933 = load ptr, ptr %453, align 8, !tbaa !29
  store ptr %933, ptr %452, align 8, !tbaa !35
  %934 = icmp eq i32 %932, 0
  br i1 %934, label %935, label %939

935:                                              ; preds = %.loopexit75, %896
  %936 = load i32, ptr %454, align 4, !tbaa !17
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %938, label %.loopexit80

938:                                              ; preds = %935
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit80

939:                                              ; preds = %.loopexit75, %890
  %940 = call i32 @inflate(ptr noundef nonnull %452, i32 noundef 0) #13
  %941 = load i32, ptr %450, align 8, !tbaa !48
  %942 = icmp ult i32 %941, %468
  br i1 %942, label %943, label %944

943:                                              ; preds = %939
  store i32 0, ptr %456, align 4, !tbaa !33
  br label %944

944:                                              ; preds = %943, %939
  switch i32 %940, label %955 [
    i32 -2, label %945
    i32 2, label %945
    i32 -4, label %946
    i32 -3, label %947
  ]

945:                                              ; preds = %944, %944
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit80

946:                                              ; preds = %944
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %959

947:                                              ; preds = %944
  %948 = load i32, ptr %456, align 4, !tbaa !33
  %949 = icmp eq i32 %948, 1
  br i1 %949, label %950, label %951

950:                                              ; preds = %947
  store i32 0, ptr %447, align 8, !tbaa !34
  store i32 1, ptr %446, align 8, !tbaa !24
  store i32 0, ptr %448, align 8, !tbaa !26
  br label %959

951:                                              ; preds = %947
  %952 = load ptr, ptr %457, align 8, !tbaa !50
  %953 = icmp eq ptr %952, null
  %954 = select i1 %953, ptr @.str.6, ptr %952
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %954) #13
  br label %959

955:                                              ; preds = %944
  %956 = icmp ne i32 %941, 0
  %957 = icmp ne i32 %940, 1
  %958 = select i1 %956, i1 %957, i1 false
  br i1 %958, label %890, label %.loopexit80, !llvm.loop !51

959:                                              ; preds = %951, %950, %946
  %960 = phi i32 [ -3, %951 ], [ 0, %950 ], [ -4, %946 ]
  %961 = load i32, ptr %450, align 8, !tbaa !48
  %962 = sub i32 %468, %961
  %963 = load ptr, ptr %451, align 8, !tbaa !49
  %964 = zext i32 %962 to i64
  %965 = sub nsw i64 0, %964
  %966 = getelementptr inbounds i8, ptr %963, i64 %965
  store ptr %966, ptr %445, align 8, !tbaa !20
  br label %976

.loopexit80:                                      ; preds = %955, %894, %945, %938, %935, %.loopexit82
  %967 = phi i32 [ %929, %.loopexit82 ], [ %891, %935 ], [ %891, %938 ], [ %940, %945 ], [ %940, %955 ], [ %895, %894 ]
  %968 = load i32, ptr %450, align 8, !tbaa !48
  %969 = sub i32 %468, %968
  %970 = load ptr, ptr %451, align 8, !tbaa !49
  %971 = zext i32 %969 to i64
  %972 = sub nsw i64 0, %971
  %973 = getelementptr inbounds i8, ptr %970, i64 %972
  store ptr %973, ptr %445, align 8, !tbaa !20
  %974 = icmp eq i32 %967, 1
  br i1 %974, label %975, label %976

975:                                              ; preds = %.loopexit80
  store i32 0, ptr %456, align 4, !tbaa !33
  store i32 0, ptr %448, align 8, !tbaa !26
  br label %981

976:                                              ; preds = %.loopexit80, %959
  %977 = phi i64 [ %964, %959 ], [ %971, %.loopexit80 ]
  %978 = phi i32 [ %960, %959 ], [ %967, %.loopexit80 ]
  %979 = icmp ne i32 %978, 0
  %980 = sext i1 %979 to i32
  br label %981

981:                                              ; preds = %976, %975
  %982 = phi i64 [ %971, %975 ], [ %977, %976 ]
  %983 = phi i32 [ 0, %975 ], [ %980, %976 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %986

984:                                              ; preds = %873
  %985 = zext i32 %874 to i64
  br label %986

986:                                              ; preds = %984, %981, %888, %885, %881, %471
  %987 = phi i64 [ %985, %984 ], [ %867, %888 ], [ %867, %885 ], [ %867, %881 ], [ %474, %471 ], [ %982, %981 ]
  %988 = phi i32 [ 0, %984 ], [ 0, %888 ], [ -1, %885 ], [ 0, %881 ], [ %481, %471 ], [ %983, %981 ]
  %989 = load i64, ptr %458, align 8, !tbaa !21
  %990 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %989, i64 %987), !nosanitize !22
  %991 = extractvalue { i64, i1 } %990, 1, !nosanitize !22
  br i1 %991, label %992, label %993, !prof !23, !nosanitize !22

992:                                              ; preds = %986
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

993:                                              ; preds = %986
  %994 = extractvalue { i64, i1 } %990, 0, !nosanitize !22
  %995 = add i64 %987, %466
  %996 = getelementptr inbounds nuw i8, ptr %464, i64 %987
  %997 = sub i64 %465, %987
  store i64 %994, ptr %458, align 8, !tbaa !21
  %998 = icmp eq i64 %997, 0
  br i1 %998, label %.loopexit84, label %.loopexit79

.loopexit79:                                      ; preds = %850, %844, %710, %993, %.loopexit77, %.loopexit76
  %999 = phi i32 [ %988, %993 ], [ %857, %.loopexit77 ], [ 0, %.loopexit76 ], [ 0, %710 ], [ 0, %844 ], [ 0, %850 ]
  %1000 = phi i64 [ %995, %993 ], [ %466, %.loopexit77 ], [ %466, %.loopexit76 ], [ %466, %710 ], [ %466, %844 ], [ %466, %850 ]
  %1001 = phi i64 [ %997, %993 ], [ %465, %.loopexit77 ], [ %465, %.loopexit76 ], [ %465, %710 ], [ %465, %844 ], [ %465, %850 ]
  %1002 = phi ptr [ %996, %993 ], [ %464, %.loopexit77 ], [ %464, %.loopexit76 ], [ %464, %710 ], [ %464, %844 ], [ %464, %850 ]
  %1003 = icmp eq i32 %999, 0
  br i1 %1003, label %463, label %1004, !llvm.loop !60

1004:                                             ; preds = %.loopexit79
  %1005 = load i32, ptr %446, align 8, !tbaa !24
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %.loopexit84, label %.loopexit83

.loopexit83:                                      ; preds = %485, %1004
  %1007 = phi i64 [ %1000, %1004 ], [ %466, %485 ]
  %1008 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1008, align 4, !tbaa !61
  br label %.loopexit84

.loopexit84:                                      ; preds = %993, %.loopexit83, %1004
  %1009 = phi i64 [ %1000, %1004 ], [ %1007, %.loopexit83 ], [ %995, %993 ]
  %1010 = freeze i64 %1009
  %1011 = icmp eq i64 %1010, 0
  %1012 = load i8, ptr %2, align 1
  %1013 = zext i8 %1012 to i32
  br i1 %1011, label %.loopexit95, label %1014

.loopexit95:                                      ; preds = %.loopexit91, %118, %.loopexit84, %429, %414, %.loopexit99, %.loopexit96, %104, %99
  br label %1014

1014:                                             ; preds = %.loopexit95, %.loopexit84, %25, %11, %4, %1
  %1015 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %.loopexit95 ], [ %1013, %.loopexit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1015
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
  br i1 %3, label %1014, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1014

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
  br i1 %14, label %1014, label %15

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
  br label %1014

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

54:                                               ; preds = %442, %36
  %55 = phi i64 [ %443, %442 ], [ %34, %36 ]
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
  br label %442

77:                                               ; preds = %54
  %78 = load i32, ptr %39, align 8, !tbaa !24
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %.preheader725, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %40, align 8, !tbaa !25
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %.loopexit98, label %.preheader725

.preheader725:                                    ; preds = %80, %77
  br label %83

83:                                               ; preds = %.backedge, %.preheader725
  %84 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %84, label %429 [
    i32 0, label %85
    i32 1, label %301
    i32 2, label %335
  ]

85:                                               ; preds = %83
  %86 = load i32, ptr %42, align 8, !tbaa !27
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load i32, ptr %51, align 4, !tbaa !28
  %90 = zext i32 %89 to i64
  %91 = tail call noalias ptr @malloc(i64 noundef %90) #15
  store ptr %91, ptr %47, align 8, !tbaa !29
  %92 = load i32, ptr %51, align 4, !tbaa !28
  %93 = shl i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = tail call noalias ptr @malloc(i64 noundef %94) #15
  store ptr %95, ptr %44, align 8, !tbaa !30
  %96 = icmp eq ptr %91, null
  %97 = icmp eq ptr %95, null
  %98 = or i1 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  tail call void @free(ptr noundef %95) #13
  tail call void @free(ptr noundef %91) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit95

100:                                              ; preds = %88
  %101 = load i32, ptr %51, align 4, !tbaa !28
  store i32 %101, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  %102 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %105) #13
  %106 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %106) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit95

107:                                              ; preds = %100, %85
  %108 = load i32, ptr %53, align 8, !tbaa !32
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %50, align 4, !tbaa !33
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110, %107
  %114 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %115 = load i32, ptr %50, align 4, !tbaa !33
  %116 = icmp ne i32 %115, -1
  %117 = zext i1 %116 to i32
  store i32 %117, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %298

118:                                              ; preds = %110
  %119 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %119, label %.loopexit95 [
    i32 0, label %120
    i32 -5, label %120
  ]

120:                                              ; preds = %118, %118
  %121 = load i32, ptr %39, align 8, !tbaa !24
  %122 = icmp eq i32 %121, 0
  %123 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %122, label %124, label %266

124:                                              ; preds = %120
  %125 = icmp eq i32 %123, 0
  %126 = load ptr, ptr %47, align 8, !tbaa !29
  %127 = ptrtoaddr ptr %126 to i64
  br i1 %125, label %228, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %46, align 8, !tbaa !35
  %130 = icmp eq ptr %129, %126
  br i1 %130, label %228, label %131

131:                                              ; preds = %128
  %132 = ptrtoaddr ptr %129 to i64
  %133 = zext i32 %123 to i64
  %134 = icmp ult i32 %123, 4
  %135 = sub i64 %127, %132
  %136 = icmp ult i64 %135, 32
  %137 = select i1 %134, i1 true, i1 %136
  br i1 %137, label %177, label %138

138:                                              ; preds = %131
  %139 = icmp ult i32 %123, 32
  br i1 %139, label %161, label %140

140:                                              ; preds = %138
  %141 = and i64 %133, 4294967264
  br label %142

142:                                              ; preds = %142, %140
  %143 = phi i64 [ 0, %140 ], [ %150, %142 ]
  %144 = getelementptr i8, ptr %126, i64 %143
  %145 = getelementptr i8, ptr %129, i64 %143
  %146 = getelementptr i8, ptr %145, i64 16
  %147 = load <16 x i8>, ptr %145, align 1, !tbaa !36
  %148 = load <16 x i8>, ptr %146, align 1, !tbaa !36
  %149 = getelementptr i8, ptr %144, i64 16
  store <16 x i8> %147, ptr %144, align 1, !tbaa !36
  store <16 x i8> %148, ptr %149, align 1, !tbaa !36
  %150 = add nuw nsw i64 %143, 32
  %151 = icmp eq i64 %150, %141
  br i1 %151, label %152, label %142, !llvm.loop !78

152:                                              ; preds = %142
  %153 = icmp eq i64 %141, %133
  br i1 %153, label %.loopexit88, label %154

154:                                              ; preds = %152
  %155 = trunc nuw i64 %141 to i32
  %156 = sub i32 %123, %155
  %157 = getelementptr i8, ptr %129, i64 %141
  %158 = getelementptr i8, ptr %126, i64 %141
  %159 = and i64 %133, 28
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %177, label %161, !prof !41

161:                                              ; preds = %154, %138
  %162 = phi i64 [ %141, %154 ], [ 0, %138 ]
  %163 = and i64 %133, 4294967292
  br label %164

164:                                              ; preds = %164, %161
  %165 = phi i64 [ %162, %161 ], [ %169, %164 ]
  %166 = getelementptr i8, ptr %126, i64 %165
  %167 = getelementptr i8, ptr %129, i64 %165
  %168 = load <4 x i8>, ptr %167, align 1, !tbaa !36
  store <4 x i8> %168, ptr %166, align 1, !tbaa !36
  %169 = add nuw i64 %165, 4
  %170 = icmp eq i64 %169, %163
  br i1 %170, label %171, label %164, !llvm.loop !79

171:                                              ; preds = %164
  %172 = getelementptr i8, ptr %126, i64 %163
  %173 = getelementptr i8, ptr %129, i64 %163
  %174 = trunc nuw i64 %163 to i32
  %175 = sub i32 %123, %174
  %176 = icmp eq i64 %163, %133
  br i1 %176, label %.loopexit88, label %177

177:                                              ; preds = %171, %154, %131
  %178 = phi ptr [ %126, %131 ], [ %158, %154 ], [ %172, %171 ]
  %179 = phi ptr [ %129, %131 ], [ %157, %154 ], [ %173, %171 ]
  %180 = phi i32 [ %123, %131 ], [ %156, %154 ], [ %175, %171 ]
  %181 = add i32 %180, -1
  %182 = and i32 %180, 7
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %.loopexit90, label %.preheader89

.preheader89:                                     ; preds = %177, %.preheader89
  %184 = phi ptr [ %189, %.preheader89 ], [ %178, %177 ]
  %185 = phi ptr [ %187, %.preheader89 ], [ %179, %177 ]
  %186 = phi i32 [ %190, %.preheader89 ], [ 0, %177 ]
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 1
  %188 = load i8, ptr %185, align 1, !tbaa !36
  %189 = getelementptr inbounds nuw i8, ptr %184, i64 1
  store i8 %188, ptr %184, align 1, !tbaa !36
  %190 = add nuw nsw i32 %186, 1
  %191 = icmp eq i32 %190, %182
  br i1 %191, label %.loopexit90.loopexit, label %.preheader89, !llvm.loop !80

.loopexit90.loopexit:                             ; preds = %.preheader89
  %192 = and i32 %180, -8
  br label %.loopexit90

.loopexit90:                                      ; preds = %.loopexit90.loopexit, %177
  %193 = phi ptr [ %178, %177 ], [ %189, %.loopexit90.loopexit ]
  %194 = phi ptr [ %179, %177 ], [ %187, %.loopexit90.loopexit ]
  %195 = phi i32 [ %180, %177 ], [ %192, %.loopexit90.loopexit ]
  %196 = icmp ult i32 %181, 7
  br i1 %196, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %.loopexit90, %.preheader87
  %197 = phi ptr [ %223, %.preheader87 ], [ %193, %.loopexit90 ]
  %198 = phi ptr [ %221, %.preheader87 ], [ %194, %.loopexit90 ]
  %199 = phi i32 [ %224, %.preheader87 ], [ %195, %.loopexit90 ]
  %200 = getelementptr inbounds nuw i8, ptr %198, i64 1
  %201 = load i8, ptr %198, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %197, i64 1
  store i8 %201, ptr %197, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %198, i64 2
  %204 = load i8, ptr %200, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %197, i64 2
  store i8 %204, ptr %202, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %198, i64 3
  %207 = load i8, ptr %203, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %197, i64 3
  store i8 %207, ptr %205, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %198, i64 4
  %210 = load i8, ptr %206, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %197, i64 4
  store i8 %210, ptr %208, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %198, i64 5
  %213 = load i8, ptr %209, align 1, !tbaa !36
  %214 = getelementptr inbounds nuw i8, ptr %197, i64 5
  store i8 %213, ptr %211, align 1, !tbaa !36
  %215 = getelementptr inbounds nuw i8, ptr %198, i64 6
  %216 = load i8, ptr %212, align 1, !tbaa !36
  %217 = getelementptr inbounds nuw i8, ptr %197, i64 6
  store i8 %216, ptr %214, align 1, !tbaa !36
  %218 = getelementptr inbounds nuw i8, ptr %198, i64 7
  %219 = load i8, ptr %215, align 1, !tbaa !36
  %220 = getelementptr inbounds nuw i8, ptr %197, i64 7
  store i8 %219, ptr %217, align 1, !tbaa !36
  %221 = getelementptr inbounds nuw i8, ptr %198, i64 8
  %222 = load i8, ptr %218, align 1, !tbaa !36
  %223 = getelementptr inbounds nuw i8, ptr %197, i64 8
  store i8 %222, ptr %220, align 1, !tbaa !36
  %224 = add i32 %199, -8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %.loopexit88, label %.preheader87, !llvm.loop !81

.loopexit88:                                      ; preds = %.preheader87, %.loopexit90, %171, %152
  %226 = load i32, ptr %40, align 8, !tbaa !34
  %227 = load ptr, ptr %47, align 8, !tbaa !29
  br label %228

228:                                              ; preds = %.loopexit88, %128, %124
  %229 = phi ptr [ %227, %.loopexit88 ], [ %126, %128 ], [ %126, %124 ]
  %230 = phi i32 [ %226, %.loopexit88 ], [ %123, %128 ], [ 0, %124 ]
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 %231
  %233 = load i32, ptr %42, align 8, !tbaa !27
  %234 = sub i32 %233, %230
  store i32 0, ptr %48, align 4, !tbaa !17
  %235 = tail call ptr @__errno_location() #16
  store i32 0, ptr %235, align 4, !tbaa !4
  br label %236

236:                                              ; preds = %247, %228
  %237 = phi i32 [ 0, %228 ], [ %248, %247 ]
  %238 = sub i32 %234, %237
  %239 = tail call i32 @llvm.umin.i32(i32 %238, i32 1073741824)
  %240 = load i32, ptr %49, align 4, !tbaa !46
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
  br i1 %249, label %236, label %.loopexit86, !llvm.loop !47

250:                                              ; preds = %236
  %251 = icmp slt i32 %245, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %250
  %253 = load i32, ptr %235, align 4, !tbaa !4
  %254 = icmp eq i32 %253, 11
  br i1 %254, label %255, label %.loopexit96

255:                                              ; preds = %252
  store i32 1, ptr %48, align 4, !tbaa !17
  %256 = icmp eq i32 %237, 0
  br i1 %256, label %257, label %.loopexit86

257:                                              ; preds = %255
  %258 = load i32, ptr %235, align 4, !tbaa !4
  br label %.loopexit96

259:                                              ; preds = %250
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit86

.loopexit96:                                      ; preds = %252, %257
  %260 = phi i32 [ %258, %257 ], [ %253, %252 ]
  %261 = tail call ptr @strerror(i32 noundef %260) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %261) #13
  br label %.loopexit95

.loopexit86:                                      ; preds = %247, %259, %255
  %262 = phi i32 [ %237, %255 ], [ %237, %259 ], [ %248, %247 ]
  %263 = load i32, ptr %40, align 8, !tbaa !34
  %264 = add i32 %263, %262
  store i32 %264, ptr %40, align 8, !tbaa !34
  %265 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %265, ptr %46, align 8, !tbaa !35
  br label %266

266:                                              ; preds = %.loopexit86, %120
  %267 = phi i32 [ %264, %.loopexit86 ], [ %123, %120 ]
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %298, label %269

269:                                              ; preds = %266
  %270 = load i32, ptr %48, align 4, !tbaa !17
  %271 = icmp ne i32 %270, 0
  %272 = icmp ult i32 %267, 4
  %273 = and i1 %272, %271
  br i1 %273, label %298, label %274

274:                                              ; preds = %269
  %275 = icmp ugt i32 %267, 3
  %276 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %275, label %277, label %294

277:                                              ; preds = %274
  %278 = load i8, ptr %276, align 1, !tbaa !36
  %279 = icmp eq i8 %278, 31
  br i1 %279, label %280, label %294

280:                                              ; preds = %277
  %281 = getelementptr inbounds nuw i8, ptr %276, i64 1
  %282 = load i8, ptr %281, align 1, !tbaa !36
  %283 = icmp eq i8 %282, -117
  br i1 %283, label %284, label %294

284:                                              ; preds = %280
  %285 = getelementptr inbounds nuw i8, ptr %276, i64 2
  %286 = load i8, ptr %285, align 1, !tbaa !36
  %287 = icmp eq i8 %286, 8
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  %289 = getelementptr inbounds nuw i8, ptr %276, i64 3
  %290 = load i8, ptr %289, align 1, !tbaa !36
  %291 = icmp ult i8 %290, 32
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %53, align 8, !tbaa !32
  br label %430

294:                                              ; preds = %288, %284, %280, %277, %274
  %295 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %295, ptr %37, align 8, !tbaa !20
  %296 = zext i32 %267 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %295, ptr align 1 %276, i64 %296, i1 false)
  %297 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %297, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %432

298:                                              ; preds = %269, %266, %113
  %299 = load i32, ptr %41, align 8, !tbaa !26
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %.loopexit97, label %430

301:                                              ; preds = %83
  %302 = load ptr, ptr %44, align 8, !tbaa !30
  %303 = load i32, ptr %42, align 8, !tbaa !27
  %304 = shl i32 %303, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %305 = tail call ptr @__errno_location() #16
  store i32 0, ptr %305, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %306

306:                                              ; preds = %317, %301
  %307 = phi i32 [ %319, %317 ], [ 0, %301 ]
  %308 = sub i32 %304, %307
  %309 = tail call i32 @llvm.umin.i32(i32 %308, i32 1073741824)
  %310 = load i32, ptr %49, align 4, !tbaa !46
  %311 = zext i32 %307 to i64
  %312 = getelementptr inbounds nuw i8, ptr %302, i64 %311
  %313 = zext nneg i32 %309 to i64
  %314 = tail call i64 @read(i32 noundef %310, ptr noundef %312, i64 noundef %313) #13
  %315 = trunc i64 %314 to i32
  %316 = icmp slt i32 %315, 1
  br i1 %316, label %321, label %317

317:                                              ; preds = %306
  %318 = load i32, ptr %0, align 4, !tbaa !4
  %319 = add i32 %318, %315
  store i32 %319, ptr %0, align 4, !tbaa !4
  %320 = icmp ult i32 %319, %304
  br i1 %320, label %306, label %.loopexit94, !llvm.loop !47

321:                                              ; preds = %306
  %322 = icmp slt i32 %315, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %321
  %324 = load i32, ptr %305, align 4, !tbaa !4
  %325 = icmp eq i32 %324, 11
  br i1 %325, label %326, label %.loopexit99

326:                                              ; preds = %323
  store i32 1, ptr %48, align 4, !tbaa !17
  %327 = load i32, ptr %0, align 4, !tbaa !4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %.loopexit94

329:                                              ; preds = %326
  %330 = load i32, ptr %305, align 4, !tbaa !4
  br label %.loopexit99

331:                                              ; preds = %321
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit94

.loopexit99:                                      ; preds = %323, %329
  %332 = phi i32 [ %330, %329 ], [ %324, %323 ]
  %333 = tail call ptr @strerror(i32 noundef %332) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %333) #13
  br label %.loopexit95

.loopexit94:                                      ; preds = %317, %331, %326
  %334 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %334, ptr %37, align 8, !tbaa !20
  br label %.loopexit97

335:                                              ; preds = %83
  %336 = load i32, ptr %42, align 8, !tbaa !27
  %337 = shl i32 %336, 1
  store i32 %337, ptr %43, align 8, !tbaa !48
  %338 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %338, ptr %45, align 8, !tbaa !49
  br label %339

339:                                              ; preds = %410, %335
  %340 = phi i32 [ 0, %335 ], [ %389, %410 ]
  %341 = load i32, ptr %40, align 8, !tbaa !34
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %388

343:                                              ; preds = %339
  %344 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %344, label %.loopexit91 [
    i32 0, label %345
    i32 -5, label %345
  ]

345:                                              ; preds = %343, %343
  %346 = load i32, ptr %39, align 8, !tbaa !24
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %384

348:                                              ; preds = %345
  %349 = load ptr, ptr %47, align 8, !tbaa !29
  %350 = load i32, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %48, align 4, !tbaa !17
  %351 = tail call ptr @__errno_location() #16
  store i32 0, ptr %351, align 4, !tbaa !4
  br label %352

352:                                              ; preds = %363, %348
  %353 = phi i32 [ 0, %348 ], [ %364, %363 ]
  %354 = sub i32 %350, %353
  %355 = tail call i32 @llvm.umin.i32(i32 %354, i32 1073741824)
  %356 = load i32, ptr %49, align 4, !tbaa !46
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
  br i1 %365, label %352, label %.loopexit85, !llvm.loop !47

366:                                              ; preds = %352
  %367 = icmp slt i32 %361, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %366
  %369 = load i32, ptr %351, align 4, !tbaa !4
  %370 = icmp eq i32 %369, 11
  br i1 %370, label %371, label %.loopexit93

371:                                              ; preds = %368
  store i32 1, ptr %48, align 4, !tbaa !17
  %372 = icmp eq i32 %353, 0
  br i1 %372, label %373, label %.loopexit85

373:                                              ; preds = %371
  %374 = load i32, ptr %351, align 4, !tbaa !4
  br label %.loopexit93

375:                                              ; preds = %366
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit85

.loopexit93:                                      ; preds = %368, %373
  %376 = phi i32 [ %374, %373 ], [ %369, %368 ]
  %377 = tail call ptr @strerror(i32 noundef %376) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %377) #13
  %378 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit91

.loopexit85:                                      ; preds = %363, %375, %371
  %379 = phi i32 [ %353, %371 ], [ %353, %375 ], [ %364, %363 ]
  %380 = load i32, ptr %40, align 8, !tbaa !34
  %381 = add i32 %380, %379
  store i32 %381, ptr %40, align 8, !tbaa !34
  %382 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %382, ptr %46, align 8, !tbaa !35
  %383 = icmp eq i32 %381, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %.loopexit85, %345
  %385 = load i32, ptr %48, align 4, !tbaa !17
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %.loopexit91

387:                                              ; preds = %384
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit91

388:                                              ; preds = %.loopexit85, %339
  %389 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %390 = load i32, ptr %43, align 8, !tbaa !48
  %391 = icmp ult i32 %390, %337
  br i1 %391, label %392, label %393

392:                                              ; preds = %388
  store i32 0, ptr %50, align 4, !tbaa !33
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
  br label %.loopexit91

395:                                              ; preds = %393
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %414

396:                                              ; preds = %393
  %397 = load i32, ptr %50, align 4, !tbaa !33
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %405

399:                                              ; preds = %396
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  %400 = sub i32 %337, %390
  store i32 %400, ptr %0, align 8, !tbaa !19
  %401 = load ptr, ptr %45, align 8, !tbaa !49
  %402 = zext i32 %400 to i64
  %403 = sub nsw i64 0, %402
  %404 = getelementptr inbounds i8, ptr %401, i64 %403
  store ptr %404, ptr %37, align 8, !tbaa !20
  br label %430

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
  br i1 %413, label %339, label %.loopexit91, !llvm.loop !51

414:                                              ; preds = %405, %395
  %415 = load i32, ptr %43, align 8, !tbaa !48
  %416 = sub i32 %337, %415
  store i32 %416, ptr %0, align 8, !tbaa !19
  %417 = load ptr, ptr %45, align 8, !tbaa !49
  %418 = zext i32 %416 to i64
  %419 = sub nsw i64 0, %418
  %420 = getelementptr inbounds i8, ptr %417, i64 %419
  store ptr %420, ptr %37, align 8, !tbaa !20
  br label %.loopexit95

.loopexit91:                                      ; preds = %410, %343, %394, %387, %384, %.loopexit93
  %421 = phi i32 [ %378, %.loopexit93 ], [ %340, %384 ], [ %340, %387 ], [ %389, %394 ], [ %389, %410 ], [ %344, %343 ]
  %422 = load i32, ptr %43, align 8, !tbaa !48
  %423 = sub i32 %337, %422
  store i32 %423, ptr %0, align 8, !tbaa !19
  %424 = load ptr, ptr %45, align 8, !tbaa !49
  %425 = zext i32 %423 to i64
  %426 = sub nsw i64 0, %425
  %427 = getelementptr inbounds i8, ptr %424, i64 %426
  store ptr %427, ptr %37, align 8, !tbaa !20
  switch i32 %421, label %.loopexit95 [
    i32 1, label %428
    i32 0, label %430
  ]

428:                                              ; preds = %.loopexit91
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %430

429:                                              ; preds = %83
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit95

430:                                              ; preds = %428, %.loopexit91, %399, %298, %292
  %431 = load i32, ptr %0, align 8, !tbaa !19
  br label %432

432:                                              ; preds = %430, %294
  %433 = phi i32 [ %431, %430 ], [ %297, %294 ]
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %.loopexit97

435:                                              ; preds = %432
  %436 = load i32, ptr %39, align 8, !tbaa !24
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %.backedge, label %438

438:                                              ; preds = %435
  %439 = load i32, ptr %40, align 8, !tbaa !34
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %.loopexit97, label %.backedge

.backedge:                                        ; preds = %438, %435
  br label %83, !llvm.loop !52

.loopexit97:                                      ; preds = %438, %432, %298, %.loopexit94
  %441 = load i64, ptr %33, align 8, !tbaa !18
  br label %442

442:                                              ; preds = %.loopexit97, %75
  %443 = phi i64 [ %441, %.loopexit97 ], [ %76, %75 ]
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %.loopexit98, label %54, !llvm.loop !53

.loopexit98:                                      ; preds = %442, %80, %32
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %463

463:                                              ; preds = %.loopexit79, %.loopexit98
  %464 = phi ptr [ %2, %.loopexit98 ], [ %1002, %.loopexit79 ]
  %465 = phi i64 [ 1, %.loopexit98 ], [ %1001, %.loopexit79 ]
  %466 = phi i64 [ 0, %.loopexit98 ], [ %1000, %.loopexit79 ]
  %467 = call i64 @llvm.umin.i64(i64 %465, i64 4294967295)
  %468 = trunc nuw i64 %467 to i32
  %469 = load i32, ptr %0, align 8, !tbaa !19
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %482, label %471

471:                                              ; preds = %463
  %472 = call i32 @llvm.umin.i32(i32 %469, i32 %468)
  %473 = load ptr, ptr %445, align 8, !tbaa !20
  %474 = zext i32 %472 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %464, ptr align 1 %473, i64 %474, i1 false)
  %475 = load ptr, ptr %445, align 8, !tbaa !20
  %476 = getelementptr inbounds nuw i8, ptr %475, i64 %474
  store ptr %476, ptr %445, align 8, !tbaa !20
  %477 = load i32, ptr %0, align 8, !tbaa !19
  %478 = sub i32 %477, %472
  store i32 %478, ptr %0, align 8, !tbaa !19
  %479 = load i32, ptr %9, align 8, !tbaa !16
  %480 = icmp ne i32 %479, 0
  %481 = sext i1 %480 to i32
  br label %986

482:                                              ; preds = %463
  %483 = load i32, ptr %446, align 8, !tbaa !24
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %488, label %485

485:                                              ; preds = %482
  %486 = load i32, ptr %447, align 8, !tbaa !25
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %.loopexit83, label %488

488:                                              ; preds = %485, %482
  %489 = load i32, ptr %448, align 8, !tbaa !26
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %.preheader650, label %491

491:                                              ; preds = %488
  %492 = load i32, ptr %449, align 8, !tbaa !27
  %493 = shl i32 %492, 1
  %494 = icmp ugt i32 %493, %468
  br i1 %494, label %.preheader650, label %858

.preheader650:                                    ; preds = %491, %488
  br label %495

495:                                              ; preds = %.preheader650, %853
  %496 = phi i32 [ %854, %853 ], [ %489, %.preheader650 ]
  switch i32 %496, label %841 [
    i32 0, label %497
    i32 1, label %713
    i32 2, label %748
  ]

497:                                              ; preds = %495
  %498 = load i32, ptr %449, align 8, !tbaa !27
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %519

500:                                              ; preds = %497
  %501 = load i32, ptr %460, align 4, !tbaa !28
  %502 = zext i32 %501 to i64
  %503 = call noalias ptr @malloc(i64 noundef %502) #15
  store ptr %503, ptr %453, align 8, !tbaa !29
  %504 = load i32, ptr %460, align 4, !tbaa !28
  %505 = shl i32 %504, 1
  %506 = zext i32 %505 to i64
  %507 = call noalias ptr @malloc(i64 noundef %506) #15
  store ptr %507, ptr %459, align 8, !tbaa !30
  %508 = icmp eq ptr %503, null
  %509 = icmp eq ptr %507, null
  %510 = or i1 %508, %509
  br i1 %510, label %511, label %512

511:                                              ; preds = %500
  call void @free(ptr noundef %507) #13
  call void @free(ptr noundef %503) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

512:                                              ; preds = %500
  %513 = load i32, ptr %460, align 4, !tbaa !28
  store i32 %513, ptr %449, align 8, !tbaa !27
  store i32 0, ptr %447, align 8, !tbaa !25
  store ptr null, ptr %452, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %461, i8 0, i64 24, i1 false)
  %514 = call i32 @inflateInit2_(ptr noundef nonnull %452, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %519, label %516

516:                                              ; preds = %512
  %517 = load ptr, ptr %459, align 8, !tbaa !30
  call void @free(ptr noundef %517) #13
  %518 = load ptr, ptr %453, align 8, !tbaa !29
  call void @free(ptr noundef %518) #13
  store i32 0, ptr %449, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

519:                                              ; preds = %512, %497
  %520 = load i32, ptr %462, align 8, !tbaa !32
  %521 = icmp eq i32 %520, -1
  br i1 %521, label %525, label %522

522:                                              ; preds = %519
  %523 = load i32, ptr %456, align 4, !tbaa !33
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %530

525:                                              ; preds = %522, %519
  %526 = call i32 @inflateReset(ptr noundef nonnull %452) #13
  store i32 2, ptr %448, align 8, !tbaa !26
  %527 = load i32, ptr %456, align 4, !tbaa !33
  %528 = icmp ne i32 %527, -1
  %529 = zext i1 %528 to i32
  store i32 %529, ptr %456, align 4, !tbaa !33
  store i32 0, ptr %462, align 8, !tbaa !32
  br label %710

530:                                              ; preds = %522
  %531 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %531, label %.loopexit77 [
    i32 0, label %532
    i32 -5, label %532
  ]

532:                                              ; preds = %530, %530
  %533 = load i32, ptr %446, align 8, !tbaa !24
  %534 = icmp eq i32 %533, 0
  %535 = load i32, ptr %447, align 8, !tbaa !34
  br i1 %534, label %536, label %678

536:                                              ; preds = %532
  %537 = icmp eq i32 %535, 0
  %538 = load ptr, ptr %453, align 8, !tbaa !29
  %539 = ptrtoaddr ptr %538 to i64
  br i1 %537, label %640, label %540

540:                                              ; preds = %536
  %541 = load ptr, ptr %452, align 8, !tbaa !35
  %542 = icmp eq ptr %541, %538
  br i1 %542, label %640, label %543

543:                                              ; preds = %540
  %544 = ptrtoaddr ptr %541 to i64
  %545 = zext i32 %535 to i64
  %546 = icmp ult i32 %535, 4
  %547 = sub i64 %539, %544
  %548 = icmp ult i64 %547, 32
  %549 = select i1 %546, i1 true, i1 %548
  br i1 %549, label %589, label %550

550:                                              ; preds = %543
  %551 = icmp ult i32 %535, 32
  br i1 %551, label %573, label %552

552:                                              ; preds = %550
  %553 = and i64 %545, 4294967264
  br label %554

554:                                              ; preds = %554, %552
  %555 = phi i64 [ 0, %552 ], [ %562, %554 ]
  %556 = getelementptr i8, ptr %538, i64 %555
  %557 = getelementptr i8, ptr %541, i64 %555
  %558 = getelementptr i8, ptr %557, i64 16
  %559 = load <16 x i8>, ptr %557, align 1, !tbaa !36
  %560 = load <16 x i8>, ptr %558, align 1, !tbaa !36
  %561 = getelementptr i8, ptr %556, i64 16
  store <16 x i8> %559, ptr %556, align 1, !tbaa !36
  store <16 x i8> %560, ptr %561, align 1, !tbaa !36
  %562 = add nuw nsw i64 %555, 32
  %563 = icmp eq i64 %562, %553
  br i1 %563, label %564, label %554, !llvm.loop !82

564:                                              ; preds = %554
  %565 = icmp eq i64 %553, %545
  br i1 %565, label %.loopexit70, label %566

566:                                              ; preds = %564
  %567 = trunc nuw i64 %553 to i32
  %568 = sub i32 %535, %567
  %569 = getelementptr i8, ptr %541, i64 %553
  %570 = getelementptr i8, ptr %538, i64 %553
  %571 = and i64 %545, 28
  %572 = icmp eq i64 %571, 0
  br i1 %572, label %589, label %573, !prof !41

573:                                              ; preds = %566, %550
  %574 = phi i64 [ %553, %566 ], [ 0, %550 ]
  %575 = and i64 %545, 4294967292
  br label %576

576:                                              ; preds = %576, %573
  %577 = phi i64 [ %574, %573 ], [ %581, %576 ]
  %578 = getelementptr i8, ptr %538, i64 %577
  %579 = getelementptr i8, ptr %541, i64 %577
  %580 = load <4 x i8>, ptr %579, align 1, !tbaa !36
  store <4 x i8> %580, ptr %578, align 1, !tbaa !36
  %581 = add nuw i64 %577, 4
  %582 = icmp eq i64 %581, %575
  br i1 %582, label %583, label %576, !llvm.loop !83

583:                                              ; preds = %576
  %584 = getelementptr i8, ptr %538, i64 %575
  %585 = getelementptr i8, ptr %541, i64 %575
  %586 = trunc nuw i64 %575 to i32
  %587 = sub i32 %535, %586
  %588 = icmp eq i64 %575, %545
  br i1 %588, label %.loopexit70, label %589

589:                                              ; preds = %583, %566, %543
  %590 = phi ptr [ %538, %543 ], [ %570, %566 ], [ %584, %583 ]
  %591 = phi ptr [ %541, %543 ], [ %569, %566 ], [ %585, %583 ]
  %592 = phi i32 [ %535, %543 ], [ %568, %566 ], [ %587, %583 ]
  %593 = add i32 %592, -1
  %594 = and i32 %592, 7
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %589, %.preheader71
  %596 = phi ptr [ %601, %.preheader71 ], [ %590, %589 ]
  %597 = phi ptr [ %599, %.preheader71 ], [ %591, %589 ]
  %598 = phi i32 [ %602, %.preheader71 ], [ 0, %589 ]
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 1
  %600 = load i8, ptr %597, align 1, !tbaa !36
  %601 = getelementptr inbounds nuw i8, ptr %596, i64 1
  store i8 %600, ptr %596, align 1, !tbaa !36
  %602 = add nuw nsw i32 %598, 1
  %603 = icmp eq i32 %602, %594
  br i1 %603, label %.loopexit72.loopexit, label %.preheader71, !llvm.loop !84

.loopexit72.loopexit:                             ; preds = %.preheader71
  %604 = and i32 %592, -8
  br label %.loopexit72

.loopexit72:                                      ; preds = %.loopexit72.loopexit, %589
  %605 = phi ptr [ %590, %589 ], [ %601, %.loopexit72.loopexit ]
  %606 = phi ptr [ %591, %589 ], [ %599, %.loopexit72.loopexit ]
  %607 = phi i32 [ %592, %589 ], [ %604, %.loopexit72.loopexit ]
  %608 = icmp ult i32 %593, 7
  br i1 %608, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %.loopexit72, %.preheader
  %609 = phi ptr [ %635, %.preheader ], [ %605, %.loopexit72 ]
  %610 = phi ptr [ %633, %.preheader ], [ %606, %.loopexit72 ]
  %611 = phi i32 [ %636, %.preheader ], [ %607, %.loopexit72 ]
  %612 = getelementptr inbounds nuw i8, ptr %610, i64 1
  %613 = load i8, ptr %610, align 1, !tbaa !36
  %614 = getelementptr inbounds nuw i8, ptr %609, i64 1
  store i8 %613, ptr %609, align 1, !tbaa !36
  %615 = getelementptr inbounds nuw i8, ptr %610, i64 2
  %616 = load i8, ptr %612, align 1, !tbaa !36
  %617 = getelementptr inbounds nuw i8, ptr %609, i64 2
  store i8 %616, ptr %614, align 1, !tbaa !36
  %618 = getelementptr inbounds nuw i8, ptr %610, i64 3
  %619 = load i8, ptr %615, align 1, !tbaa !36
  %620 = getelementptr inbounds nuw i8, ptr %609, i64 3
  store i8 %619, ptr %617, align 1, !tbaa !36
  %621 = getelementptr inbounds nuw i8, ptr %610, i64 4
  %622 = load i8, ptr %618, align 1, !tbaa !36
  %623 = getelementptr inbounds nuw i8, ptr %609, i64 4
  store i8 %622, ptr %620, align 1, !tbaa !36
  %624 = getelementptr inbounds nuw i8, ptr %610, i64 5
  %625 = load i8, ptr %621, align 1, !tbaa !36
  %626 = getelementptr inbounds nuw i8, ptr %609, i64 5
  store i8 %625, ptr %623, align 1, !tbaa !36
  %627 = getelementptr inbounds nuw i8, ptr %610, i64 6
  %628 = load i8, ptr %624, align 1, !tbaa !36
  %629 = getelementptr inbounds nuw i8, ptr %609, i64 6
  store i8 %628, ptr %626, align 1, !tbaa !36
  %630 = getelementptr inbounds nuw i8, ptr %610, i64 7
  %631 = load i8, ptr %627, align 1, !tbaa !36
  %632 = getelementptr inbounds nuw i8, ptr %609, i64 7
  store i8 %631, ptr %629, align 1, !tbaa !36
  %633 = getelementptr inbounds nuw i8, ptr %610, i64 8
  %634 = load i8, ptr %630, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %609, i64 8
  store i8 %634, ptr %632, align 1, !tbaa !36
  %636 = add i32 %611, -8
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %.loopexit70, label %.preheader, !llvm.loop !85

.loopexit70:                                      ; preds = %.preheader, %.loopexit72, %583, %564
  %638 = load i32, ptr %447, align 8, !tbaa !34
  %639 = load ptr, ptr %453, align 8, !tbaa !29
  br label %640

640:                                              ; preds = %.loopexit70, %540, %536
  %641 = phi ptr [ %639, %.loopexit70 ], [ %538, %540 ], [ %538, %536 ]
  %642 = phi i32 [ %638, %.loopexit70 ], [ %535, %540 ], [ 0, %536 ]
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds nuw i8, ptr %641, i64 %643
  %645 = load i32, ptr %449, align 8, !tbaa !27
  %646 = sub i32 %645, %642
  store i32 0, ptr %454, align 4, !tbaa !17
  %647 = tail call ptr @__errno_location() #16
  store i32 0, ptr %647, align 4, !tbaa !4
  br label %648

648:                                              ; preds = %659, %640
  %649 = phi i32 [ 0, %640 ], [ %660, %659 ]
  %650 = sub i32 %646, %649
  %651 = call i32 @llvm.umin.i32(i32 %650, i32 1073741824)
  %652 = load i32, ptr %455, align 4, !tbaa !46
  %653 = zext i32 %649 to i64
  %654 = getelementptr inbounds nuw i8, ptr %644, i64 %653
  %655 = zext nneg i32 %651 to i64
  %656 = call i64 @read(i32 noundef %652, ptr noundef %654, i64 noundef %655) #13
  %657 = trunc i64 %656 to i32
  %658 = icmp slt i32 %657, 1
  br i1 %658, label %662, label %659

659:                                              ; preds = %648
  %660 = add i32 %649, %657
  %661 = icmp ult i32 %660, %646
  br i1 %661, label %648, label %.loopexit69, !llvm.loop !47

662:                                              ; preds = %648
  %663 = icmp slt i32 %657, 0
  br i1 %663, label %664, label %671

664:                                              ; preds = %662
  %665 = load i32, ptr %647, align 4, !tbaa !4
  %666 = icmp eq i32 %665, 11
  br i1 %666, label %667, label %.loopexit78

667:                                              ; preds = %664
  store i32 1, ptr %454, align 4, !tbaa !17
  %668 = icmp eq i32 %649, 0
  br i1 %668, label %669, label %.loopexit69

669:                                              ; preds = %667
  %670 = load i32, ptr %647, align 4, !tbaa !4
  br label %.loopexit78

671:                                              ; preds = %662
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %.loopexit69

.loopexit78:                                      ; preds = %664, %669
  %672 = phi i32 [ %670, %669 ], [ %665, %664 ]
  %673 = call ptr @strerror(i32 noundef %672) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %673) #13
  br label %.loopexit77

.loopexit69:                                      ; preds = %659, %671, %667
  %674 = phi i32 [ %649, %667 ], [ %649, %671 ], [ %660, %659 ]
  %675 = load i32, ptr %447, align 8, !tbaa !34
  %676 = add i32 %675, %674
  store i32 %676, ptr %447, align 8, !tbaa !34
  %677 = load ptr, ptr %453, align 8, !tbaa !29
  store ptr %677, ptr %452, align 8, !tbaa !35
  br label %678

678:                                              ; preds = %.loopexit69, %532
  %679 = phi i32 [ %676, %.loopexit69 ], [ %535, %532 ]
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %710, label %681

681:                                              ; preds = %678
  %682 = load i32, ptr %454, align 4, !tbaa !17
  %683 = icmp ne i32 %682, 0
  %684 = icmp ult i32 %679, 4
  %685 = and i1 %684, %683
  br i1 %685, label %710, label %686

686:                                              ; preds = %681
  %687 = icmp ugt i32 %679, 3
  %688 = load ptr, ptr %452, align 8, !tbaa !35
  br i1 %687, label %689, label %706

689:                                              ; preds = %686
  %690 = load i8, ptr %688, align 1, !tbaa !36
  %691 = icmp eq i8 %690, 31
  br i1 %691, label %692, label %706

692:                                              ; preds = %689
  %693 = getelementptr inbounds nuw i8, ptr %688, i64 1
  %694 = load i8, ptr %693, align 1, !tbaa !36
  %695 = icmp eq i8 %694, -117
  br i1 %695, label %696, label %706

696:                                              ; preds = %692
  %697 = getelementptr inbounds nuw i8, ptr %688, i64 2
  %698 = load i8, ptr %697, align 1, !tbaa !36
  %699 = icmp eq i8 %698, 8
  br i1 %699, label %700, label %706

700:                                              ; preds = %696
  %701 = getelementptr inbounds nuw i8, ptr %688, i64 3
  %702 = load i8, ptr %701, align 1, !tbaa !36
  %703 = icmp ult i8 %702, 32
  br i1 %703, label %704, label %706

704:                                              ; preds = %700
  %705 = call i32 @inflateReset(ptr noundef nonnull %452) #13
  store i32 2, ptr %448, align 8, !tbaa !26
  store i32 1, ptr %456, align 4, !tbaa !33
  store i32 0, ptr %462, align 8, !tbaa !32
  br label %842

706:                                              ; preds = %700, %696, %692, %689, %686
  %707 = load ptr, ptr %459, align 8, !tbaa !30
  store ptr %707, ptr %445, align 8, !tbaa !20
  %708 = zext i32 %679 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %707, ptr align 1 %688, i64 %708, i1 false)
  %709 = load i32, ptr %447, align 8, !tbaa !34
  store i32 %709, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %447, align 8, !tbaa !34
  store i32 1, ptr %448, align 8, !tbaa !26
  br label %844

710:                                              ; preds = %681, %678, %525
  %711 = load i32, ptr %448, align 8, !tbaa !26
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %.loopexit79, label %842

713:                                              ; preds = %495
  %714 = load ptr, ptr %459, align 8, !tbaa !30
  %715 = load i32, ptr %449, align 8, !tbaa !27
  %716 = shl i32 %715, 1
  store i32 0, ptr %454, align 4, !tbaa !17
  %717 = tail call ptr @__errno_location() #16
  store i32 0, ptr %717, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %718

718:                                              ; preds = %729, %713
  %719 = phi i32 [ %731, %729 ], [ 0, %713 ]
  %720 = sub i32 %716, %719
  %721 = call i32 @llvm.umin.i32(i32 %720, i32 1073741824)
  %722 = load i32, ptr %455, align 4, !tbaa !46
  %723 = zext i32 %719 to i64
  %724 = getelementptr inbounds nuw i8, ptr %714, i64 %723
  %725 = zext nneg i32 %721 to i64
  %726 = call i64 @read(i32 noundef %722, ptr noundef %724, i64 noundef %725) #13
  %727 = trunc i64 %726 to i32
  %728 = icmp slt i32 %727, 1
  br i1 %728, label %733, label %729

729:                                              ; preds = %718
  %730 = load i32, ptr %0, align 4, !tbaa !4
  %731 = add i32 %730, %727
  store i32 %731, ptr %0, align 4, !tbaa !4
  %732 = icmp ult i32 %731, %716
  br i1 %732, label %718, label %.loopexit76, !llvm.loop !47

733:                                              ; preds = %718
  %734 = icmp slt i32 %727, 0
  br i1 %734, label %735, label %743

735:                                              ; preds = %733
  %736 = load i32, ptr %717, align 4, !tbaa !4
  %737 = icmp eq i32 %736, 11
  br i1 %737, label %738, label %744

738:                                              ; preds = %735
  store i32 1, ptr %454, align 4, !tbaa !17
  %739 = load i32, ptr %0, align 4, !tbaa !4
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %.loopexit76

741:                                              ; preds = %738
  %742 = load i32, ptr %717, align 4, !tbaa !4
  br label %744

743:                                              ; preds = %733
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %.loopexit76

744:                                              ; preds = %741, %735
  %745 = phi i32 [ %742, %741 ], [ %736, %735 ]
  %746 = call ptr @strerror(i32 noundef %745) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %746) #13
  br label %.loopexit77

.loopexit76:                                      ; preds = %729, %743, %738
  %747 = load ptr, ptr %459, align 8, !tbaa !30
  store ptr %747, ptr %445, align 8, !tbaa !20
  br label %.loopexit79

748:                                              ; preds = %495
  %749 = load i32, ptr %449, align 8, !tbaa !27
  %750 = shl i32 %749, 1
  store i32 %750, ptr %450, align 8, !tbaa !48
  %751 = load ptr, ptr %459, align 8, !tbaa !30
  store ptr %751, ptr %451, align 8, !tbaa !49
  br label %752

752:                                              ; preds = %822, %748
  %753 = phi i32 [ 0, %748 ], [ %802, %822 ]
  %754 = load i32, ptr %447, align 8, !tbaa !34
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %801

756:                                              ; preds = %752
  %757 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %757, label %.loopexit73 [
    i32 0, label %758
    i32 -5, label %758
  ]

758:                                              ; preds = %756, %756
  %759 = load i32, ptr %446, align 8, !tbaa !24
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %797

761:                                              ; preds = %758
  %762 = load ptr, ptr %453, align 8, !tbaa !29
  %763 = load i32, ptr %449, align 8, !tbaa !27
  store i32 0, ptr %454, align 4, !tbaa !17
  %764 = tail call ptr @__errno_location() #16
  store i32 0, ptr %764, align 4, !tbaa !4
  br label %765

765:                                              ; preds = %776, %761
  %766 = phi i32 [ 0, %761 ], [ %777, %776 ]
  %767 = sub i32 %763, %766
  %768 = call i32 @llvm.umin.i32(i32 %767, i32 1073741824)
  %769 = load i32, ptr %455, align 4, !tbaa !46
  %770 = zext i32 %766 to i64
  %771 = getelementptr inbounds nuw i8, ptr %762, i64 %770
  %772 = zext nneg i32 %768 to i64
  %773 = call i64 @read(i32 noundef %769, ptr noundef %771, i64 noundef %772) #13
  %774 = trunc i64 %773 to i32
  %775 = icmp slt i32 %774, 1
  br i1 %775, label %779, label %776

776:                                              ; preds = %765
  %777 = add i32 %766, %774
  %778 = icmp ult i32 %777, %763
  br i1 %778, label %765, label %.loopexit, !llvm.loop !47

779:                                              ; preds = %765
  %780 = icmp slt i32 %774, 0
  br i1 %780, label %781, label %788

781:                                              ; preds = %779
  %782 = load i32, ptr %764, align 4, !tbaa !4
  %783 = icmp eq i32 %782, 11
  br i1 %783, label %784, label %.loopexit74

784:                                              ; preds = %781
  store i32 1, ptr %454, align 4, !tbaa !17
  %785 = icmp eq i32 %766, 0
  br i1 %785, label %786, label %.loopexit

786:                                              ; preds = %784
  %787 = load i32, ptr %764, align 4, !tbaa !4
  br label %.loopexit74

788:                                              ; preds = %779
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %.loopexit

.loopexit74:                                      ; preds = %781, %786
  %789 = phi i32 [ %787, %786 ], [ %782, %781 ]
  %790 = call ptr @strerror(i32 noundef %789) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %790) #13
  %791 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit73

.loopexit:                                        ; preds = %776, %788, %784
  %792 = phi i32 [ %766, %784 ], [ %766, %788 ], [ %777, %776 ]
  %793 = load i32, ptr %447, align 8, !tbaa !34
  %794 = add i32 %793, %792
  store i32 %794, ptr %447, align 8, !tbaa !34
  %795 = load ptr, ptr %453, align 8, !tbaa !29
  store ptr %795, ptr %452, align 8, !tbaa !35
  %796 = icmp eq i32 %794, 0
  br i1 %796, label %797, label %801

797:                                              ; preds = %.loopexit, %758
  %798 = load i32, ptr %454, align 4, !tbaa !17
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %800, label %.loopexit73

800:                                              ; preds = %797
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit73

801:                                              ; preds = %.loopexit, %752
  %802 = call i32 @inflate(ptr noundef nonnull %452, i32 noundef 0) #13
  %803 = load i32, ptr %450, align 8, !tbaa !48
  %804 = icmp ult i32 %803, %750
  br i1 %804, label %805, label %806

805:                                              ; preds = %801
  store i32 0, ptr %456, align 4, !tbaa !33
  br label %806

806:                                              ; preds = %805, %801
  switch i32 %802, label %822 [
    i32 -2, label %807
    i32 2, label %807
    i32 -4, label %808
    i32 -3, label %809
  ]

807:                                              ; preds = %806, %806
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit73

808:                                              ; preds = %806
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %826

809:                                              ; preds = %806
  %810 = load i32, ptr %456, align 4, !tbaa !33
  %811 = icmp eq i32 %810, 1
  br i1 %811, label %812, label %818

812:                                              ; preds = %809
  store i32 0, ptr %447, align 8, !tbaa !34
  store i32 1, ptr %446, align 8, !tbaa !24
  store i32 0, ptr %448, align 8, !tbaa !26
  %813 = sub i32 %750, %803
  store i32 %813, ptr %0, align 8, !tbaa !19
  %814 = load ptr, ptr %451, align 8, !tbaa !49
  %815 = zext i32 %813 to i64
  %816 = sub nsw i64 0, %815
  %817 = getelementptr inbounds i8, ptr %814, i64 %816
  store ptr %817, ptr %445, align 8, !tbaa !20
  br label %842

818:                                              ; preds = %809
  %819 = load ptr, ptr %457, align 8, !tbaa !50
  %820 = icmp eq ptr %819, null
  %821 = select i1 %820, ptr @.str.6, ptr %819
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %821) #13
  br label %826

822:                                              ; preds = %806
  %823 = icmp ne i32 %803, 0
  %824 = icmp ne i32 %802, 1
  %825 = select i1 %823, i1 %824, i1 false
  br i1 %825, label %752, label %.loopexit73, !llvm.loop !51

826:                                              ; preds = %818, %808
  %827 = load i32, ptr %450, align 8, !tbaa !48
  %828 = sub i32 %750, %827
  store i32 %828, ptr %0, align 8, !tbaa !19
  %829 = load ptr, ptr %451, align 8, !tbaa !49
  %830 = zext i32 %828 to i64
  %831 = sub nsw i64 0, %830
  %832 = getelementptr inbounds i8, ptr %829, i64 %831
  store ptr %832, ptr %445, align 8, !tbaa !20
  br label %.loopexit77

.loopexit73:                                      ; preds = %822, %756, %807, %800, %797, %.loopexit74
  %833 = phi i32 [ %791, %.loopexit74 ], [ %753, %797 ], [ %753, %800 ], [ %802, %807 ], [ %757, %756 ], [ %802, %822 ]
  %834 = load i32, ptr %450, align 8, !tbaa !48
  %835 = sub i32 %750, %834
  store i32 %835, ptr %0, align 8, !tbaa !19
  %836 = load ptr, ptr %451, align 8, !tbaa !49
  %837 = zext i32 %835 to i64
  %838 = sub nsw i64 0, %837
  %839 = getelementptr inbounds i8, ptr %836, i64 %838
  store ptr %839, ptr %445, align 8, !tbaa !20
  switch i32 %833, label %.loopexit77 [
    i32 1, label %840
    i32 0, label %842
  ]

840:                                              ; preds = %.loopexit73
  store i32 0, ptr %456, align 4, !tbaa !33
  store i32 0, ptr %448, align 8, !tbaa !26
  br label %842

841:                                              ; preds = %495
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit77

842:                                              ; preds = %840, %.loopexit73, %812, %710, %704
  %843 = load i32, ptr %0, align 8, !tbaa !19
  br label %844

844:                                              ; preds = %842, %706
  %845 = phi i32 [ %843, %842 ], [ %709, %706 ]
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %.loopexit79

847:                                              ; preds = %844
  %848 = load i32, ptr %446, align 8, !tbaa !24
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %853, label %850

850:                                              ; preds = %847
  %851 = load i32, ptr %447, align 8, !tbaa !34
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %.loopexit79, label %853

853:                                              ; preds = %850, %847
  %854 = load i32, ptr %448, align 8, !tbaa !26
  br label %495, !llvm.loop !52

.loopexit77:                                      ; preds = %.loopexit73, %530, %841, %826, %744, %.loopexit78, %516, %511
  %855 = load i32, ptr %0, align 8, !tbaa !19
  %856 = icmp eq i32 %855, 0
  %857 = sext i1 %856 to i32
  br label %.loopexit79

858:                                              ; preds = %491
  %859 = icmp eq i32 %489, 1
  br i1 %859, label %860, label %889

860:                                              ; preds = %858
  store i32 0, ptr %454, align 4, !tbaa !17
  %861 = tail call ptr @__errno_location() #16
  store i32 0, ptr %861, align 4, !tbaa !4
  br label %862

862:                                              ; preds = %873, %860
  %863 = phi i32 [ 0, %860 ], [ %874, %873 ]
  %864 = sub i32 %468, %863
  %865 = call i32 @llvm.umin.i32(i32 %864, i32 1073741824)
  %866 = load i32, ptr %455, align 4, !tbaa !46
  %867 = zext i32 %863 to i64
  %868 = getelementptr inbounds nuw i8, ptr %464, i64 %867
  %869 = zext nneg i32 %865 to i64
  %870 = call i64 @read(i32 noundef %866, ptr noundef %868, i64 noundef %869) #13
  %871 = trunc i64 %870 to i32
  %872 = icmp slt i32 %871, 1
  br i1 %872, label %876, label %873

873:                                              ; preds = %862
  %874 = add i32 %863, %871
  %875 = icmp ult i32 %874, %468
  br i1 %875, label %862, label %984, !llvm.loop !47

876:                                              ; preds = %862
  %877 = icmp slt i32 %871, 0
  br i1 %877, label %878, label %888

878:                                              ; preds = %876
  %879 = load i32, ptr %861, align 4, !tbaa !4
  %880 = icmp eq i32 %879, 11
  br i1 %880, label %881, label %885

881:                                              ; preds = %878
  store i32 1, ptr %454, align 4, !tbaa !17
  %882 = icmp eq i32 %863, 0
  br i1 %882, label %883, label %986

883:                                              ; preds = %881
  %884 = load i32, ptr %861, align 4, !tbaa !4
  br label %885

885:                                              ; preds = %883, %878
  %886 = phi i32 [ %884, %883 ], [ %879, %878 ]
  %887 = call ptr @strerror(i32 noundef %886) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %887) #13
  br label %986

888:                                              ; preds = %876
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %986

889:                                              ; preds = %858
  store i32 %468, ptr %450, align 8, !tbaa !58
  store ptr %464, ptr %451, align 8, !tbaa !59
  br label %890

890:                                              ; preds = %955, %889
  %891 = phi i32 [ 0, %889 ], [ %940, %955 ]
  %892 = load i32, ptr %447, align 8, !tbaa !34
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %939

894:                                              ; preds = %890
  %895 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %895, label %.loopexit80 [
    i32 0, label %896
    i32 -5, label %896
  ]

896:                                              ; preds = %894, %894
  %897 = load i32, ptr %446, align 8, !tbaa !24
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %899, label %935

899:                                              ; preds = %896
  %900 = load ptr, ptr %453, align 8, !tbaa !29
  %901 = load i32, ptr %449, align 8, !tbaa !27
  store i32 0, ptr %454, align 4, !tbaa !17
  %902 = tail call ptr @__errno_location() #16
  store i32 0, ptr %902, align 4, !tbaa !4
  br label %903

903:                                              ; preds = %914, %899
  %904 = phi i32 [ 0, %899 ], [ %915, %914 ]
  %905 = sub i32 %901, %904
  %906 = call i32 @llvm.umin.i32(i32 %905, i32 1073741824)
  %907 = load i32, ptr %455, align 4, !tbaa !46
  %908 = zext i32 %904 to i64
  %909 = getelementptr inbounds nuw i8, ptr %900, i64 %908
  %910 = zext nneg i32 %906 to i64
  %911 = call i64 @read(i32 noundef %907, ptr noundef %909, i64 noundef %910) #13
  %912 = trunc i64 %911 to i32
  %913 = icmp slt i32 %912, 1
  br i1 %913, label %917, label %914

914:                                              ; preds = %903
  %915 = add i32 %904, %912
  %916 = icmp ult i32 %915, %901
  br i1 %916, label %903, label %.loopexit75, !llvm.loop !47

917:                                              ; preds = %903
  %918 = icmp slt i32 %912, 0
  br i1 %918, label %919, label %926

919:                                              ; preds = %917
  %920 = load i32, ptr %902, align 4, !tbaa !4
  %921 = icmp eq i32 %920, 11
  br i1 %921, label %922, label %.loopexit82

922:                                              ; preds = %919
  store i32 1, ptr %454, align 4, !tbaa !17
  %923 = icmp eq i32 %904, 0
  br i1 %923, label %924, label %.loopexit75

924:                                              ; preds = %922
  %925 = load i32, ptr %902, align 4, !tbaa !4
  br label %.loopexit82

926:                                              ; preds = %917
  store i32 1, ptr %446, align 8, !tbaa !24
  br label %.loopexit75

.loopexit82:                                      ; preds = %919, %924
  %927 = phi i32 [ %925, %924 ], [ %920, %919 ]
  %928 = call ptr @strerror(i32 noundef %927) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %928) #13
  %929 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit80

.loopexit75:                                      ; preds = %914, %926, %922
  %930 = phi i32 [ %904, %922 ], [ %904, %926 ], [ %915, %914 ]
  %931 = load i32, ptr %447, align 8, !tbaa !34
  %932 = add i32 %931, %930
  store i32 %932, ptr %447, align 8, !tbaa !34
  %933 = load ptr, ptr %453, align 8, !tbaa !29
  store ptr %933, ptr %452, align 8, !tbaa !35
  %934 = icmp eq i32 %932, 0
  br i1 %934, label %935, label %939

935:                                              ; preds = %.loopexit75, %896
  %936 = load i32, ptr %454, align 4, !tbaa !17
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %938, label %.loopexit80

938:                                              ; preds = %935
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit80

939:                                              ; preds = %.loopexit75, %890
  %940 = call i32 @inflate(ptr noundef nonnull %452, i32 noundef 0) #13
  %941 = load i32, ptr %450, align 8, !tbaa !48
  %942 = icmp ult i32 %941, %468
  br i1 %942, label %943, label %944

943:                                              ; preds = %939
  store i32 0, ptr %456, align 4, !tbaa !33
  br label %944

944:                                              ; preds = %943, %939
  switch i32 %940, label %955 [
    i32 -2, label %945
    i32 2, label %945
    i32 -4, label %946
    i32 -3, label %947
  ]

945:                                              ; preds = %944, %944
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit80

946:                                              ; preds = %944
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %959

947:                                              ; preds = %944
  %948 = load i32, ptr %456, align 4, !tbaa !33
  %949 = icmp eq i32 %948, 1
  br i1 %949, label %950, label %951

950:                                              ; preds = %947
  store i32 0, ptr %447, align 8, !tbaa !34
  store i32 1, ptr %446, align 8, !tbaa !24
  store i32 0, ptr %448, align 8, !tbaa !26
  br label %959

951:                                              ; preds = %947
  %952 = load ptr, ptr %457, align 8, !tbaa !50
  %953 = icmp eq ptr %952, null
  %954 = select i1 %953, ptr @.str.6, ptr %952
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %954) #13
  br label %959

955:                                              ; preds = %944
  %956 = icmp ne i32 %941, 0
  %957 = icmp ne i32 %940, 1
  %958 = select i1 %956, i1 %957, i1 false
  br i1 %958, label %890, label %.loopexit80, !llvm.loop !51

959:                                              ; preds = %951, %950, %946
  %960 = phi i32 [ -3, %951 ], [ 0, %950 ], [ -4, %946 ]
  %961 = load i32, ptr %450, align 8, !tbaa !48
  %962 = sub i32 %468, %961
  %963 = load ptr, ptr %451, align 8, !tbaa !49
  %964 = zext i32 %962 to i64
  %965 = sub nsw i64 0, %964
  %966 = getelementptr inbounds i8, ptr %963, i64 %965
  store ptr %966, ptr %445, align 8, !tbaa !20
  br label %976

.loopexit80:                                      ; preds = %955, %894, %945, %938, %935, %.loopexit82
  %967 = phi i32 [ %929, %.loopexit82 ], [ %891, %935 ], [ %891, %938 ], [ %940, %945 ], [ %895, %894 ], [ %940, %955 ]
  %968 = load i32, ptr %450, align 8, !tbaa !48
  %969 = sub i32 %468, %968
  %970 = load ptr, ptr %451, align 8, !tbaa !49
  %971 = zext i32 %969 to i64
  %972 = sub nsw i64 0, %971
  %973 = getelementptr inbounds i8, ptr %970, i64 %972
  store ptr %973, ptr %445, align 8, !tbaa !20
  %974 = icmp eq i32 %967, 1
  br i1 %974, label %975, label %976

975:                                              ; preds = %.loopexit80
  store i32 0, ptr %456, align 4, !tbaa !33
  store i32 0, ptr %448, align 8, !tbaa !26
  br label %981

976:                                              ; preds = %.loopexit80, %959
  %977 = phi i64 [ %964, %959 ], [ %971, %.loopexit80 ]
  %978 = phi i32 [ %960, %959 ], [ %967, %.loopexit80 ]
  %979 = icmp ne i32 %978, 0
  %980 = sext i1 %979 to i32
  br label %981

981:                                              ; preds = %976, %975
  %982 = phi i64 [ %971, %975 ], [ %977, %976 ]
  %983 = phi i32 [ 0, %975 ], [ %980, %976 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %986

984:                                              ; preds = %873
  %985 = zext i32 %874 to i64
  br label %986

986:                                              ; preds = %984, %981, %888, %885, %881, %471
  %987 = phi i64 [ %985, %984 ], [ %867, %888 ], [ %867, %885 ], [ %867, %881 ], [ %474, %471 ], [ %982, %981 ]
  %988 = phi i32 [ 0, %984 ], [ 0, %888 ], [ -1, %885 ], [ 0, %881 ], [ %481, %471 ], [ %983, %981 ]
  %989 = load i64, ptr %458, align 8, !tbaa !21
  %990 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %989, i64 %987), !nosanitize !22
  %991 = extractvalue { i64, i1 } %990, 1, !nosanitize !22
  br i1 %991, label %992, label %993, !prof !23, !nosanitize !22

992:                                              ; preds = %986
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

993:                                              ; preds = %986
  %994 = extractvalue { i64, i1 } %990, 0, !nosanitize !22
  %995 = add i64 %987, %466
  %996 = getelementptr inbounds nuw i8, ptr %464, i64 %987
  %997 = sub i64 %465, %987
  store i64 %994, ptr %458, align 8, !tbaa !21
  %998 = icmp eq i64 %997, 0
  br i1 %998, label %.loopexit84, label %.loopexit79

.loopexit79:                                      ; preds = %850, %844, %710, %993, %.loopexit77, %.loopexit76
  %999 = phi i32 [ %988, %993 ], [ %857, %.loopexit77 ], [ 0, %.loopexit76 ], [ 0, %710 ], [ 0, %844 ], [ 0, %850 ]
  %1000 = phi i64 [ %995, %993 ], [ %466, %.loopexit77 ], [ %466, %.loopexit76 ], [ %466, %710 ], [ %466, %844 ], [ %466, %850 ]
  %1001 = phi i64 [ %997, %993 ], [ %465, %.loopexit77 ], [ %465, %.loopexit76 ], [ %465, %710 ], [ %465, %844 ], [ %465, %850 ]
  %1002 = phi ptr [ %996, %993 ], [ %464, %.loopexit77 ], [ %464, %.loopexit76 ], [ %464, %710 ], [ %464, %844 ], [ %464, %850 ]
  %1003 = icmp eq i32 %999, 0
  br i1 %1003, label %463, label %1004, !llvm.loop !60

1004:                                             ; preds = %.loopexit79
  %1005 = load i32, ptr %446, align 8, !tbaa !24
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %.loopexit84, label %.loopexit83

.loopexit83:                                      ; preds = %485, %1004
  %1007 = phi i64 [ %1000, %1004 ], [ %466, %485 ]
  %1008 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1008, align 4, !tbaa !61
  br label %.loopexit84

.loopexit84:                                      ; preds = %993, %.loopexit83, %1004
  %1009 = phi i64 [ %1000, %1004 ], [ %1007, %.loopexit83 ], [ %995, %993 ]
  %1010 = freeze i64 %1009
  %1011 = icmp eq i64 %1010, 0
  %1012 = load i8, ptr %2, align 1
  %1013 = zext i8 %1012 to i32
  br i1 %1011, label %.loopexit95, label %1014

.loopexit95:                                      ; preds = %.loopexit91, %118, %.loopexit84, %429, %414, %.loopexit99, %.loopexit96, %104, %99
  br label %1014

1014:                                             ; preds = %.loopexit95, %.loopexit84, %25, %11, %4, %1
  %1015 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %31, %25 ], [ -1, %11 ], [ -1, %.loopexit95 ], [ %1013, %.loopexit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1015
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
  br i1 %258, label %669, label %259

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

276:                                              ; preds = %664, %259
  %277 = phi i64 [ %665, %664 ], [ %257, %259 ]
  %278 = load i32, ptr %1, align 8, !tbaa !19
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %299, label %280

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
  %294 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %277, i64 %286), !nosanitize !22
  %295 = extractvalue { i64, i1 } %294, 1, !nosanitize !22
  br i1 %295, label %296, label %297, !prof !23, !nosanitize !22

296:                                              ; preds = %292
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

297:                                              ; preds = %292
  %298 = extractvalue { i64, i1 } %294, 0, !nosanitize !22
  store i64 %298, ptr %256, align 8, !tbaa !18
  br label %664

299:                                              ; preds = %276
  %300 = load i32, ptr %262, align 8, !tbaa !24
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %.preheader320, label %302

302:                                              ; preds = %299
  %303 = load i32, ptr %263, align 8, !tbaa !25
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %667, label %.preheader320

.preheader320:                                    ; preds = %302, %299
  br label %305

305:                                              ; preds = %.backedge, %.preheader320
  %306 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %306, label %651 [
    i32 0, label %307
    i32 1, label %523
    i32 2, label %557
  ]

307:                                              ; preds = %305
  %308 = load i32, ptr %264, align 8, !tbaa !27
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %329

310:                                              ; preds = %307
  %311 = load i32, ptr %273, align 4, !tbaa !28
  %312 = zext i32 %311 to i64
  %313 = tail call noalias ptr @malloc(i64 noundef %312) #15
  store ptr %313, ptr %269, align 8, !tbaa !29
  %314 = load i32, ptr %273, align 4, !tbaa !28
  %315 = shl i32 %314, 1
  %316 = zext i32 %315 to i64
  %317 = tail call noalias ptr @malloc(i64 noundef %316) #15
  store ptr %317, ptr %266, align 8, !tbaa !30
  %318 = icmp eq ptr %313, null
  %319 = icmp eq ptr %317, null
  %320 = or i1 %318, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %310
  tail call void @free(ptr noundef %317) #13
  tail call void @free(ptr noundef %313) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit53

322:                                              ; preds = %310
  %323 = load i32, ptr %273, align 4, !tbaa !28
  store i32 %323, ptr %264, align 8, !tbaa !27
  store i32 0, ptr %263, align 8, !tbaa !25
  store ptr null, ptr %268, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %274, i8 0, i64 24, i1 false)
  %324 = tail call i32 @inflateInit2_(ptr noundef nonnull %268, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %322
  %327 = load ptr, ptr %266, align 8, !tbaa !30
  tail call void @free(ptr noundef %327) #13
  %328 = load ptr, ptr %269, align 8, !tbaa !29
  tail call void @free(ptr noundef %328) #13
  store i32 0, ptr %264, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit53

329:                                              ; preds = %322, %307
  %330 = load i32, ptr %275, align 8, !tbaa !32
  %331 = icmp eq i32 %330, -1
  br i1 %331, label %335, label %332

332:                                              ; preds = %329
  %333 = load i32, ptr %272, align 4, !tbaa !33
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %332, %329
  %336 = tail call i32 @inflateReset(ptr noundef nonnull %268) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %337 = load i32, ptr %272, align 4, !tbaa !33
  %338 = icmp ne i32 %337, -1
  %339 = zext i1 %338 to i32
  store i32 %339, ptr %272, align 4, !tbaa !33
  store i32 0, ptr %275, align 8, !tbaa !32
  br label %520

340:                                              ; preds = %332
  %341 = load i32, ptr %249, align 8, !tbaa !16
  switch i32 %341, label %.loopexit53 [
    i32 0, label %342
    i32 -5, label %342
  ]

342:                                              ; preds = %340, %340
  %343 = load i32, ptr %262, align 8, !tbaa !24
  %344 = icmp eq i32 %343, 0
  %345 = load i32, ptr %263, align 8, !tbaa !34
  br i1 %344, label %346, label %488

346:                                              ; preds = %342
  %347 = icmp eq i32 %345, 0
  %348 = load ptr, ptr %269, align 8, !tbaa !29
  %349 = ptrtoaddr ptr %348 to i64
  br i1 %347, label %450, label %350

350:                                              ; preds = %346
  %351 = load ptr, ptr %268, align 8, !tbaa !35
  %352 = icmp eq ptr %351, %348
  br i1 %352, label %450, label %353

353:                                              ; preds = %350
  %354 = ptrtoaddr ptr %351 to i64
  %355 = zext i32 %345 to i64
  %356 = icmp ult i32 %345, 4
  %357 = sub i64 %349, %354
  %358 = icmp ult i64 %357, 32
  %359 = select i1 %356, i1 true, i1 %358
  br i1 %359, label %399, label %360

360:                                              ; preds = %353
  %361 = icmp ult i32 %345, 32
  br i1 %361, label %383, label %362

362:                                              ; preds = %360
  %363 = and i64 %355, 4294967264
  br label %364

364:                                              ; preds = %364, %362
  %365 = phi i64 [ 0, %362 ], [ %372, %364 ]
  %366 = getelementptr i8, ptr %348, i64 %365
  %367 = getelementptr i8, ptr %351, i64 %365
  %368 = getelementptr i8, ptr %367, i64 16
  %369 = load <16 x i8>, ptr %367, align 1, !tbaa !36
  %370 = load <16 x i8>, ptr %368, align 1, !tbaa !36
  %371 = getelementptr i8, ptr %366, i64 16
  store <16 x i8> %369, ptr %366, align 1, !tbaa !36
  store <16 x i8> %370, ptr %371, align 1, !tbaa !36
  %372 = add nuw nsw i64 %365, 32
  %373 = icmp eq i64 %372, %363
  br i1 %373, label %374, label %364, !llvm.loop !90

374:                                              ; preds = %364
  %375 = icmp eq i64 %363, %355
  br i1 %375, label %.loopexit47, label %376

376:                                              ; preds = %374
  %377 = trunc nuw i64 %363 to i32
  %378 = sub i32 %345, %377
  %379 = getelementptr i8, ptr %351, i64 %363
  %380 = getelementptr i8, ptr %348, i64 %363
  %381 = and i64 %355, 28
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %399, label %383, !prof !41

383:                                              ; preds = %376, %360
  %384 = phi i64 [ %363, %376 ], [ 0, %360 ]
  %385 = and i64 %355, 4294967292
  br label %386

386:                                              ; preds = %386, %383
  %387 = phi i64 [ %384, %383 ], [ %391, %386 ]
  %388 = getelementptr i8, ptr %348, i64 %387
  %389 = getelementptr i8, ptr %351, i64 %387
  %390 = load <4 x i8>, ptr %389, align 1, !tbaa !36
  store <4 x i8> %390, ptr %388, align 1, !tbaa !36
  %391 = add nuw i64 %387, 4
  %392 = icmp eq i64 %391, %385
  br i1 %392, label %393, label %386, !llvm.loop !91

393:                                              ; preds = %386
  %394 = getelementptr i8, ptr %348, i64 %385
  %395 = getelementptr i8, ptr %351, i64 %385
  %396 = trunc nuw i64 %385 to i32
  %397 = sub i32 %345, %396
  %398 = icmp eq i64 %385, %355
  br i1 %398, label %.loopexit47, label %399

399:                                              ; preds = %393, %376, %353
  %400 = phi ptr [ %348, %353 ], [ %380, %376 ], [ %394, %393 ]
  %401 = phi ptr [ %351, %353 ], [ %379, %376 ], [ %395, %393 ]
  %402 = phi i32 [ %345, %353 ], [ %378, %376 ], [ %397, %393 ]
  %403 = add i32 %402, -1
  %404 = and i32 %402, 7
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %.loopexit49, label %.preheader48

.preheader48:                                     ; preds = %399, %.preheader48
  %406 = phi ptr [ %411, %.preheader48 ], [ %400, %399 ]
  %407 = phi ptr [ %409, %.preheader48 ], [ %401, %399 ]
  %408 = phi i32 [ %412, %.preheader48 ], [ 0, %399 ]
  %409 = getelementptr inbounds nuw i8, ptr %407, i64 1
  %410 = load i8, ptr %407, align 1, !tbaa !36
  %411 = getelementptr inbounds nuw i8, ptr %406, i64 1
  store i8 %410, ptr %406, align 1, !tbaa !36
  %412 = add nuw nsw i32 %408, 1
  %413 = icmp eq i32 %412, %404
  br i1 %413, label %.loopexit49.loopexit, label %.preheader48, !llvm.loop !92

.loopexit49.loopexit:                             ; preds = %.preheader48
  %414 = and i32 %402, -8
  br label %.loopexit49

.loopexit49:                                      ; preds = %.loopexit49.loopexit, %399
  %415 = phi ptr [ %400, %399 ], [ %411, %.loopexit49.loopexit ]
  %416 = phi ptr [ %401, %399 ], [ %409, %.loopexit49.loopexit ]
  %417 = phi i32 [ %402, %399 ], [ %414, %.loopexit49.loopexit ]
  %418 = icmp ult i32 %403, 7
  br i1 %418, label %.loopexit47, label %.preheader46

.preheader46:                                     ; preds = %.loopexit49, %.preheader46
  %419 = phi ptr [ %445, %.preheader46 ], [ %415, %.loopexit49 ]
  %420 = phi ptr [ %443, %.preheader46 ], [ %416, %.loopexit49 ]
  %421 = phi i32 [ %446, %.preheader46 ], [ %417, %.loopexit49 ]
  %422 = getelementptr inbounds nuw i8, ptr %420, i64 1
  %423 = load i8, ptr %420, align 1, !tbaa !36
  %424 = getelementptr inbounds nuw i8, ptr %419, i64 1
  store i8 %423, ptr %419, align 1, !tbaa !36
  %425 = getelementptr inbounds nuw i8, ptr %420, i64 2
  %426 = load i8, ptr %422, align 1, !tbaa !36
  %427 = getelementptr inbounds nuw i8, ptr %419, i64 2
  store i8 %426, ptr %424, align 1, !tbaa !36
  %428 = getelementptr inbounds nuw i8, ptr %420, i64 3
  %429 = load i8, ptr %425, align 1, !tbaa !36
  %430 = getelementptr inbounds nuw i8, ptr %419, i64 3
  store i8 %429, ptr %427, align 1, !tbaa !36
  %431 = getelementptr inbounds nuw i8, ptr %420, i64 4
  %432 = load i8, ptr %428, align 1, !tbaa !36
  %433 = getelementptr inbounds nuw i8, ptr %419, i64 4
  store i8 %432, ptr %430, align 1, !tbaa !36
  %434 = getelementptr inbounds nuw i8, ptr %420, i64 5
  %435 = load i8, ptr %431, align 1, !tbaa !36
  %436 = getelementptr inbounds nuw i8, ptr %419, i64 5
  store i8 %435, ptr %433, align 1, !tbaa !36
  %437 = getelementptr inbounds nuw i8, ptr %420, i64 6
  %438 = load i8, ptr %434, align 1, !tbaa !36
  %439 = getelementptr inbounds nuw i8, ptr %419, i64 6
  store i8 %438, ptr %436, align 1, !tbaa !36
  %440 = getelementptr inbounds nuw i8, ptr %420, i64 7
  %441 = load i8, ptr %437, align 1, !tbaa !36
  %442 = getelementptr inbounds nuw i8, ptr %419, i64 7
  store i8 %441, ptr %439, align 1, !tbaa !36
  %443 = getelementptr inbounds nuw i8, ptr %420, i64 8
  %444 = load i8, ptr %440, align 1, !tbaa !36
  %445 = getelementptr inbounds nuw i8, ptr %419, i64 8
  store i8 %444, ptr %442, align 1, !tbaa !36
  %446 = add i32 %421, -8
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %.loopexit47, label %.preheader46, !llvm.loop !93

.loopexit47:                                      ; preds = %.preheader46, %.loopexit49, %393, %374
  %448 = load i32, ptr %263, align 8, !tbaa !34
  %449 = load ptr, ptr %269, align 8, !tbaa !29
  br label %450

450:                                              ; preds = %.loopexit47, %350, %346
  %451 = phi ptr [ %449, %.loopexit47 ], [ %348, %350 ], [ %348, %346 ]
  %452 = phi i32 [ %448, %.loopexit47 ], [ %345, %350 ], [ 0, %346 ]
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds nuw i8, ptr %451, i64 %453
  %455 = load i32, ptr %264, align 8, !tbaa !27
  %456 = sub i32 %455, %452
  store i32 0, ptr %270, align 4, !tbaa !17
  %457 = tail call ptr @__errno_location() #16
  store i32 0, ptr %457, align 4, !tbaa !4
  br label %458

458:                                              ; preds = %469, %450
  %459 = phi i32 [ 0, %450 ], [ %470, %469 ]
  %460 = sub i32 %456, %459
  %461 = tail call i32 @llvm.umin.i32(i32 %460, i32 1073741824)
  %462 = load i32, ptr %271, align 4, !tbaa !46
  %463 = zext i32 %459 to i64
  %464 = getelementptr inbounds nuw i8, ptr %454, i64 %463
  %465 = zext nneg i32 %461 to i64
  %466 = tail call i64 @read(i32 noundef %462, ptr noundef %464, i64 noundef %465) #13
  %467 = trunc i64 %466 to i32
  %468 = icmp slt i32 %467, 1
  br i1 %468, label %472, label %469

469:                                              ; preds = %458
  %470 = add i32 %459, %467
  %471 = icmp ult i32 %470, %456
  br i1 %471, label %458, label %.loopexit45, !llvm.loop !47

472:                                              ; preds = %458
  %473 = icmp slt i32 %467, 0
  br i1 %473, label %474, label %481

474:                                              ; preds = %472
  %475 = load i32, ptr %457, align 4, !tbaa !4
  %476 = icmp eq i32 %475, 11
  br i1 %476, label %477, label %.loopexit54

477:                                              ; preds = %474
  store i32 1, ptr %270, align 4, !tbaa !17
  %478 = icmp eq i32 %459, 0
  br i1 %478, label %479, label %.loopexit45

479:                                              ; preds = %477
  %480 = load i32, ptr %457, align 4, !tbaa !4
  br label %.loopexit54

481:                                              ; preds = %472
  store i32 1, ptr %262, align 8, !tbaa !24
  br label %.loopexit45

.loopexit54:                                      ; preds = %474, %479
  %482 = phi i32 [ %480, %479 ], [ %475, %474 ]
  %483 = tail call ptr @strerror(i32 noundef %482) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %483) #13
  br label %.loopexit53

.loopexit45:                                      ; preds = %469, %481, %477
  %484 = phi i32 [ %459, %477 ], [ %459, %481 ], [ %470, %469 ]
  %485 = load i32, ptr %263, align 8, !tbaa !34
  %486 = add i32 %485, %484
  store i32 %486, ptr %263, align 8, !tbaa !34
  %487 = load ptr, ptr %269, align 8, !tbaa !29
  store ptr %487, ptr %268, align 8, !tbaa !35
  br label %488

488:                                              ; preds = %.loopexit45, %342
  %489 = phi i32 [ %486, %.loopexit45 ], [ %345, %342 ]
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %520, label %491

491:                                              ; preds = %488
  %492 = load i32, ptr %270, align 4, !tbaa !17
  %493 = icmp ne i32 %492, 0
  %494 = icmp ult i32 %489, 4
  %495 = and i1 %494, %493
  br i1 %495, label %520, label %496

496:                                              ; preds = %491
  %497 = icmp ugt i32 %489, 3
  %498 = load ptr, ptr %268, align 8, !tbaa !35
  br i1 %497, label %499, label %516

499:                                              ; preds = %496
  %500 = load i8, ptr %498, align 1, !tbaa !36
  %501 = icmp eq i8 %500, 31
  br i1 %501, label %502, label %516

502:                                              ; preds = %499
  %503 = getelementptr inbounds nuw i8, ptr %498, i64 1
  %504 = load i8, ptr %503, align 1, !tbaa !36
  %505 = icmp eq i8 %504, -117
  br i1 %505, label %506, label %516

506:                                              ; preds = %502
  %507 = getelementptr inbounds nuw i8, ptr %498, i64 2
  %508 = load i8, ptr %507, align 1, !tbaa !36
  %509 = icmp eq i8 %508, 8
  br i1 %509, label %510, label %516

510:                                              ; preds = %506
  %511 = getelementptr inbounds nuw i8, ptr %498, i64 3
  %512 = load i8, ptr %511, align 1, !tbaa !36
  %513 = icmp ult i8 %512, 32
  br i1 %513, label %514, label %516

514:                                              ; preds = %510
  %515 = tail call i32 @inflateReset(ptr noundef nonnull %268) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %272, align 4, !tbaa !33
  store i32 0, ptr %275, align 8, !tbaa !32
  br label %652

516:                                              ; preds = %510, %506, %502, %499, %496
  %517 = load ptr, ptr %266, align 8, !tbaa !30
  store ptr %517, ptr %260, align 8, !tbaa !20
  %518 = zext i32 %489 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %517, ptr align 1 %498, i64 %518, i1 false)
  %519 = load i32, ptr %263, align 8, !tbaa !34
  store i32 %519, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %263, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %654

520:                                              ; preds = %491, %488, %335
  %521 = load i32, ptr %9, align 8, !tbaa !26
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %.loopexit55, label %652

523:                                              ; preds = %305
  %524 = load ptr, ptr %266, align 8, !tbaa !30
  %525 = load i32, ptr %264, align 8, !tbaa !27
  %526 = shl i32 %525, 1
  store i32 0, ptr %270, align 4, !tbaa !17
  %527 = tail call ptr @__errno_location() #16
  store i32 0, ptr %527, align 4, !tbaa !4
  store i32 0, ptr %1, align 8, !tbaa !4
  br label %528

528:                                              ; preds = %539, %523
  %529 = phi i32 [ %541, %539 ], [ 0, %523 ]
  %530 = sub i32 %526, %529
  %531 = tail call i32 @llvm.umin.i32(i32 %530, i32 1073741824)
  %532 = load i32, ptr %271, align 4, !tbaa !46
  %533 = zext i32 %529 to i64
  %534 = getelementptr inbounds nuw i8, ptr %524, i64 %533
  %535 = zext nneg i32 %531 to i64
  %536 = tail call i64 @read(i32 noundef %532, ptr noundef %534, i64 noundef %535) #13
  %537 = trunc i64 %536 to i32
  %538 = icmp slt i32 %537, 1
  br i1 %538, label %543, label %539

539:                                              ; preds = %528
  %540 = load i32, ptr %1, align 4, !tbaa !4
  %541 = add i32 %540, %537
  store i32 %541, ptr %1, align 4, !tbaa !4
  %542 = icmp ult i32 %541, %526
  br i1 %542, label %528, label %.loopexit52, !llvm.loop !47

543:                                              ; preds = %528
  %544 = icmp slt i32 %537, 0
  br i1 %544, label %545, label %553

545:                                              ; preds = %543
  %546 = load i32, ptr %527, align 4, !tbaa !4
  %547 = icmp eq i32 %546, 11
  br i1 %547, label %548, label %.loopexit56

548:                                              ; preds = %545
  store i32 1, ptr %270, align 4, !tbaa !17
  %549 = load i32, ptr %1, align 4, !tbaa !4
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %.loopexit52

551:                                              ; preds = %548
  %552 = load i32, ptr %527, align 4, !tbaa !4
  br label %.loopexit56

553:                                              ; preds = %543
  store i32 1, ptr %262, align 8, !tbaa !24
  br label %.loopexit52

.loopexit56:                                      ; preds = %545, %551
  %554 = phi i32 [ %552, %551 ], [ %546, %545 ]
  %555 = tail call ptr @strerror(i32 noundef %554) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %555) #13
  br label %.loopexit53

.loopexit52:                                      ; preds = %539, %553, %548
  %556 = load ptr, ptr %266, align 8, !tbaa !30
  store ptr %556, ptr %260, align 8, !tbaa !20
  br label %.loopexit55

557:                                              ; preds = %305
  %558 = load i32, ptr %264, align 8, !tbaa !27
  %559 = shl i32 %558, 1
  store i32 %559, ptr %265, align 8, !tbaa !48
  %560 = load ptr, ptr %266, align 8, !tbaa !30
  store ptr %560, ptr %267, align 8, !tbaa !49
  br label %561

561:                                              ; preds = %632, %557
  %562 = phi i32 [ 0, %557 ], [ %611, %632 ]
  %563 = load i32, ptr %263, align 8, !tbaa !34
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %610

565:                                              ; preds = %561
  %566 = load i32, ptr %249, align 8, !tbaa !16
  switch i32 %566, label %.loopexit50 [
    i32 0, label %567
    i32 -5, label %567
  ]

567:                                              ; preds = %565, %565
  %568 = load i32, ptr %262, align 8, !tbaa !24
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %606

570:                                              ; preds = %567
  %571 = load ptr, ptr %269, align 8, !tbaa !29
  %572 = load i32, ptr %264, align 8, !tbaa !27
  store i32 0, ptr %270, align 4, !tbaa !17
  %573 = tail call ptr @__errno_location() #16
  store i32 0, ptr %573, align 4, !tbaa !4
  br label %574

574:                                              ; preds = %585, %570
  %575 = phi i32 [ 0, %570 ], [ %586, %585 ]
  %576 = sub i32 %572, %575
  %577 = tail call i32 @llvm.umin.i32(i32 %576, i32 1073741824)
  %578 = load i32, ptr %271, align 4, !tbaa !46
  %579 = zext i32 %575 to i64
  %580 = getelementptr inbounds nuw i8, ptr %571, i64 %579
  %581 = zext nneg i32 %577 to i64
  %582 = tail call i64 @read(i32 noundef %578, ptr noundef %580, i64 noundef %581) #13
  %583 = trunc i64 %582 to i32
  %584 = icmp slt i32 %583, 1
  br i1 %584, label %588, label %585

585:                                              ; preds = %574
  %586 = add i32 %575, %583
  %587 = icmp ult i32 %586, %572
  br i1 %587, label %574, label %.loopexit, !llvm.loop !47

588:                                              ; preds = %574
  %589 = icmp slt i32 %583, 0
  br i1 %589, label %590, label %597

590:                                              ; preds = %588
  %591 = load i32, ptr %573, align 4, !tbaa !4
  %592 = icmp eq i32 %591, 11
  br i1 %592, label %593, label %.loopexit51

593:                                              ; preds = %590
  store i32 1, ptr %270, align 4, !tbaa !17
  %594 = icmp eq i32 %575, 0
  br i1 %594, label %595, label %.loopexit

595:                                              ; preds = %593
  %596 = load i32, ptr %573, align 4, !tbaa !4
  br label %.loopexit51

597:                                              ; preds = %588
  store i32 1, ptr %262, align 8, !tbaa !24
  br label %.loopexit

.loopexit51:                                      ; preds = %590, %595
  %598 = phi i32 [ %596, %595 ], [ %591, %590 ]
  %599 = tail call ptr @strerror(i32 noundef %598) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %599) #13
  %600 = load i32, ptr %249, align 8, !tbaa !16
  br label %.loopexit50

.loopexit:                                        ; preds = %585, %597, %593
  %601 = phi i32 [ %575, %593 ], [ %575, %597 ], [ %586, %585 ]
  %602 = load i32, ptr %263, align 8, !tbaa !34
  %603 = add i32 %602, %601
  store i32 %603, ptr %263, align 8, !tbaa !34
  %604 = load ptr, ptr %269, align 8, !tbaa !29
  store ptr %604, ptr %268, align 8, !tbaa !35
  %605 = icmp eq i32 %603, 0
  br i1 %605, label %606, label %610

606:                                              ; preds = %.loopexit, %567
  %607 = load i32, ptr %270, align 4, !tbaa !17
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %.loopexit50

609:                                              ; preds = %606
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit50

610:                                              ; preds = %.loopexit, %561
  %611 = tail call i32 @inflate(ptr noundef nonnull %268, i32 noundef 0) #13
  %612 = load i32, ptr %265, align 8, !tbaa !48
  %613 = icmp ult i32 %612, %559
  br i1 %613, label %614, label %615

614:                                              ; preds = %610
  store i32 0, ptr %272, align 4, !tbaa !33
  br label %615

615:                                              ; preds = %614, %610
  switch i32 %611, label %632 [
    i32 -2, label %616
    i32 2, label %616
    i32 -4, label %617
    i32 -3, label %618
  ]

616:                                              ; preds = %615, %615
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit50

617:                                              ; preds = %615
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %636

618:                                              ; preds = %615
  %619 = load i32, ptr %272, align 4, !tbaa !33
  %620 = icmp eq i32 %619, 1
  br i1 %620, label %621, label %627

621:                                              ; preds = %618
  store i32 0, ptr %263, align 8, !tbaa !34
  store i32 1, ptr %262, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  %622 = sub i32 %559, %612
  store i32 %622, ptr %1, align 8, !tbaa !19
  %623 = load ptr, ptr %267, align 8, !tbaa !49
  %624 = zext i32 %622 to i64
  %625 = sub nsw i64 0, %624
  %626 = getelementptr inbounds i8, ptr %623, i64 %625
  store ptr %626, ptr %260, align 8, !tbaa !20
  br label %652

627:                                              ; preds = %618
  %628 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %629 = load ptr, ptr %628, align 8, !tbaa !50
  %630 = icmp eq ptr %629, null
  %631 = select i1 %630, ptr @.str.6, ptr %629
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %631) #13
  br label %636

632:                                              ; preds = %615
  %633 = icmp ne i32 %612, 0
  %634 = icmp ne i32 %611, 1
  %635 = select i1 %633, i1 %634, i1 false
  br i1 %635, label %561, label %.loopexit50, !llvm.loop !51

636:                                              ; preds = %627, %617
  %637 = load i32, ptr %265, align 8, !tbaa !48
  %638 = sub i32 %559, %637
  store i32 %638, ptr %1, align 8, !tbaa !19
  %639 = load ptr, ptr %267, align 8, !tbaa !49
  %640 = zext i32 %638 to i64
  %641 = sub nsw i64 0, %640
  %642 = getelementptr inbounds i8, ptr %639, i64 %641
  store ptr %642, ptr %260, align 8, !tbaa !20
  br label %.loopexit53

.loopexit50:                                      ; preds = %632, %565, %616, %609, %606, %.loopexit51
  %643 = phi i32 [ %600, %.loopexit51 ], [ %562, %606 ], [ %562, %609 ], [ %611, %616 ], [ %611, %632 ], [ %566, %565 ]
  %644 = load i32, ptr %265, align 8, !tbaa !48
  %645 = sub i32 %559, %644
  store i32 %645, ptr %1, align 8, !tbaa !19
  %646 = load ptr, ptr %267, align 8, !tbaa !49
  %647 = zext i32 %645 to i64
  %648 = sub nsw i64 0, %647
  %649 = getelementptr inbounds i8, ptr %646, i64 %648
  store ptr %649, ptr %260, align 8, !tbaa !20
  switch i32 %643, label %.loopexit53 [
    i32 1, label %650
    i32 0, label %652
  ]

650:                                              ; preds = %.loopexit50
  store i32 0, ptr %272, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %652

651:                                              ; preds = %305
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit53

652:                                              ; preds = %650, %.loopexit50, %621, %520, %514
  %653 = load i32, ptr %1, align 8, !tbaa !19
  br label %654

654:                                              ; preds = %652, %516
  %655 = phi i32 [ %653, %652 ], [ %519, %516 ]
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %.loopexit55

657:                                              ; preds = %654
  %658 = load i32, ptr %262, align 8, !tbaa !24
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %.backedge, label %660

660:                                              ; preds = %657
  %661 = load i32, ptr %263, align 8, !tbaa !34
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %.loopexit55, label %.backedge

.backedge:                                        ; preds = %660, %657
  br label %305, !llvm.loop !52

.loopexit55:                                      ; preds = %660, %654, %520, %.loopexit52
  %663 = load i64, ptr %256, align 8, !tbaa !18
  br label %664

664:                                              ; preds = %.loopexit55, %297
  %665 = phi i64 [ %663, %.loopexit55 ], [ %298, %297 ]
  %666 = icmp eq i64 %665, 0
  br i1 %666, label %667, label %276, !llvm.loop !53

667:                                              ; preds = %664, %302
  %668 = icmp slt i32 %0, 0
  br i1 %668, label %.loopexit53, label %671

669:                                              ; preds = %255
  %670 = icmp slt i32 %0, 0
  br i1 %670, label %.loopexit53, label %671

671:                                              ; preds = %669, %667
  %672 = load i32, ptr %1, align 8, !tbaa !19
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %693

674:                                              ; preds = %671
  store i32 1, ptr %1, align 8, !tbaa !19
  %675 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %676 = load ptr, ptr %675, align 8, !tbaa !30
  %677 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %678 = load i32, ptr %677, align 8, !tbaa !27
  %679 = shl i32 %678, 1
  %680 = zext i32 %679 to i64
  %681 = getelementptr inbounds nuw i8, ptr %676, i64 %680
  %682 = getelementptr inbounds i8, ptr %681, i64 -1
  %683 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %682, ptr %683, align 8, !tbaa !20
  %684 = trunc i32 %0 to i8
  store i8 %684, ptr %682, align 1, !tbaa !36
  %685 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %686 = load i64, ptr %685, align 8, !tbaa !21
  %687 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %686, i64 -1)
  %688 = extractvalue { i64, i1 } %687, 1, !nosanitize !22
  br i1 %688, label %689, label %690, !prof !23, !nosanitize !22

689:                                              ; preds = %719, %674
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !22
  unreachable, !nosanitize !22

690:                                              ; preds = %674
  %691 = extractvalue { i64, i1 } %687, 0, !nosanitize !22
  store i64 %691, ptr %685, align 8, !tbaa !21
  %692 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %692, align 4, !tbaa !61
  br label %.loopexit53

693:                                              ; preds = %671
  %694 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %695 = load i32, ptr %694, align 8, !tbaa !27
  %696 = shl i32 %695, 1
  %697 = icmp eq i32 %672, %696
  br i1 %697, label %698, label %699

698:                                              ; preds = %693
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %.loopexit53

699:                                              ; preds = %693
  %700 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %701 = load ptr, ptr %700, align 8, !tbaa !20
  %702 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %703 = load ptr, ptr %702, align 8, !tbaa !30
  %704 = icmp eq ptr %701, %703
  br i1 %704, label %.preheader, label %719

.preheader:                                       ; preds = %699
  %705 = zext i32 %672 to i64
  %706 = getelementptr inbounds nuw i8, ptr %703, i64 %705
  %707 = zext i32 %696 to i64
  %708 = getelementptr inbounds nuw i8, ptr %703, i64 %707
  br label %709

709:                                              ; preds = %.preheader, %709
  %710 = phi ptr [ %714, %709 ], [ %708, %.preheader ]
  %711 = phi ptr [ %712, %709 ], [ %706, %.preheader ]
  %712 = getelementptr inbounds i8, ptr %711, i64 -1
  %713 = load i8, ptr %712, align 1, !tbaa !36
  %714 = getelementptr inbounds i8, ptr %710, i64 -1
  store i8 %713, ptr %714, align 1, !tbaa !36
  %715 = load ptr, ptr %702, align 8, !tbaa !30
  %716 = icmp ugt ptr %712, %715
  br i1 %716, label %709, label %717, !llvm.loop !94

717:                                              ; preds = %709
  %718 = load i32, ptr %1, align 8, !tbaa !19
  br label %719

719:                                              ; preds = %717, %699
  %720 = phi ptr [ %701, %699 ], [ %714, %717 ]
  %721 = phi i32 [ %672, %699 ], [ %718, %717 ]
  %722 = add i32 %721, 1
  store i32 %722, ptr %1, align 8, !tbaa !19
  %723 = getelementptr inbounds i8, ptr %720, i64 -1
  store ptr %723, ptr %700, align 8, !tbaa !20
  %724 = trunc i32 %0 to i8
  store i8 %724, ptr %723, align 1, !tbaa !36
  %725 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %726 = load i64, ptr %725, align 8, !tbaa !21
  %727 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %726, i64 -1)
  %728 = extractvalue { i64, i1 } %727, 1, !nosanitize !22
  br i1 %728, label %689, label %729, !prof !23, !nosanitize !22

729:                                              ; preds = %719
  %730 = extractvalue { i64, i1 } %727, 0, !nosanitize !22
  store i64 %730, ptr %725, align 8, !tbaa !21
  %731 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %731, align 4, !tbaa !61
  br label %.loopexit53

.loopexit53:                                      ; preds = %.loopexit50, %340, %729, %698, %690, %669, %667, %651, %636, %.loopexit56, %.loopexit54, %326, %321, %251, %4, %2
  %732 = phi i32 [ -1, %4 ], [ -1, %2 ], [ -1, %251 ], [ -1, %667 ], [ %0, %690 ], [ -1, %698 ], [ %0, %729 ], [ -1, %669 ], [ -1, %636 ], [ -1, %326 ], [ -1, %651 ], [ -1, %.loopexit56 ], [ -1, %.loopexit54 ], [ -1, %321 ], [ -1, %340 ], [ -1, %.loopexit50 ]
  ret i32 %732
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #5

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

42:                                               ; preds = %430, %24
  %43 = phi i64 [ %431, %430 ], [ %22, %24 ]
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
  br label %430

65:                                               ; preds = %42
  %66 = load i32, ptr %27, align 8, !tbaa !24
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %.preheader629, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %28, align 8, !tbaa !25
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %.loopexit84, label %.preheader629

.preheader629:                                    ; preds = %68, %65
  br label %71

71:                                               ; preds = %.backedge, %.preheader629
  %72 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %72, label %417 [
    i32 0, label %73
    i32 1, label %289
    i32 2, label %323
  ]

73:                                               ; preds = %71
  %74 = load i32, ptr %30, align 8, !tbaa !27
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %73
  %77 = load i32, ptr %39, align 4, !tbaa !28
  %78 = zext i32 %77 to i64
  %79 = tail call noalias ptr @malloc(i64 noundef %78) #15
  store ptr %79, ptr %35, align 8, !tbaa !29
  %80 = load i32, ptr %39, align 4, !tbaa !28
  %81 = shl i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = tail call noalias ptr @malloc(i64 noundef %82) #15
  store ptr %83, ptr %32, align 8, !tbaa !30
  %84 = icmp eq ptr %79, null
  %85 = icmp eq ptr %83, null
  %86 = or i1 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  tail call void @free(ptr noundef %83) #13
  tail call void @free(ptr noundef %79) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit81

88:                                               ; preds = %76
  %89 = load i32, ptr %39, align 4, !tbaa !28
  store i32 %89, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, i8 0, i64 24, i1 false)
  %90 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %93) #13
  %94 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %94) #13
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit81

95:                                               ; preds = %88, %73
  %96 = load i32, ptr %41, align 8, !tbaa !32
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, ptr %38, align 4, !tbaa !33
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98, %95
  %102 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  %103 = load i32, ptr %38, align 4, !tbaa !33
  %104 = icmp ne i32 %103, -1
  %105 = zext i1 %104 to i32
  store i32 %105, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !32
  br label %286

106:                                              ; preds = %98
  %107 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %107, label %.loopexit81 [
    i32 0, label %108
    i32 -5, label %108
  ]

108:                                              ; preds = %106, %106
  %109 = load i32, ptr %27, align 8, !tbaa !24
  %110 = icmp eq i32 %109, 0
  %111 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %110, label %112, label %254

112:                                              ; preds = %108
  %113 = icmp eq i32 %111, 0
  %114 = load ptr, ptr %35, align 8, !tbaa !29
  %115 = ptrtoaddr ptr %114 to i64
  br i1 %113, label %216, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %34, align 8, !tbaa !35
  %118 = icmp eq ptr %117, %114
  br i1 %118, label %216, label %119

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
  %129 = and i64 %121, 4294967264
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi i64 [ 0, %128 ], [ %138, %130 ]
  %132 = getelementptr i8, ptr %114, i64 %131
  %133 = getelementptr i8, ptr %117, i64 %131
  %134 = getelementptr i8, ptr %133, i64 16
  %135 = load <16 x i8>, ptr %133, align 1, !tbaa !36
  %136 = load <16 x i8>, ptr %134, align 1, !tbaa !36
  %137 = getelementptr i8, ptr %132, i64 16
  store <16 x i8> %135, ptr %132, align 1, !tbaa !36
  store <16 x i8> %136, ptr %137, align 1, !tbaa !36
  %138 = add nuw nsw i64 %131, 32
  %139 = icmp eq i64 %138, %129
  br i1 %139, label %140, label %130, !llvm.loop !95

140:                                              ; preds = %130
  %141 = icmp eq i64 %129, %121
  br i1 %141, label %.loopexit74, label %142

142:                                              ; preds = %140
  %143 = trunc nuw i64 %129 to i32
  %144 = sub i32 %111, %143
  %145 = getelementptr i8, ptr %117, i64 %129
  %146 = getelementptr i8, ptr %114, i64 %129
  %147 = and i64 %121, 28
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %165, label %149, !prof !41

149:                                              ; preds = %142, %126
  %150 = phi i64 [ %129, %142 ], [ 0, %126 ]
  %151 = and i64 %121, 4294967292
  br label %152

152:                                              ; preds = %152, %149
  %153 = phi i64 [ %150, %149 ], [ %157, %152 ]
  %154 = getelementptr i8, ptr %114, i64 %153
  %155 = getelementptr i8, ptr %117, i64 %153
  %156 = load <4 x i8>, ptr %155, align 1, !tbaa !36
  store <4 x i8> %156, ptr %154, align 1, !tbaa !36
  %157 = add nuw i64 %153, 4
  %158 = icmp eq i64 %157, %151
  br i1 %158, label %159, label %152, !llvm.loop !96

159:                                              ; preds = %152
  %160 = getelementptr i8, ptr %114, i64 %151
  %161 = getelementptr i8, ptr %117, i64 %151
  %162 = trunc nuw i64 %151 to i32
  %163 = sub i32 %111, %162
  %164 = icmp eq i64 %151, %121
  br i1 %164, label %.loopexit74, label %165

165:                                              ; preds = %159, %142, %119
  %166 = phi ptr [ %114, %119 ], [ %146, %142 ], [ %160, %159 ]
  %167 = phi ptr [ %117, %119 ], [ %145, %142 ], [ %161, %159 ]
  %168 = phi i32 [ %111, %119 ], [ %144, %142 ], [ %163, %159 ]
  %169 = add i32 %168, -1
  %170 = and i32 %168, 7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %.loopexit76, label %.preheader75

.preheader75:                                     ; preds = %165, %.preheader75
  %172 = phi ptr [ %177, %.preheader75 ], [ %166, %165 ]
  %173 = phi ptr [ %175, %.preheader75 ], [ %167, %165 ]
  %174 = phi i32 [ %178, %.preheader75 ], [ 0, %165 ]
  %175 = getelementptr inbounds nuw i8, ptr %173, i64 1
  %176 = load i8, ptr %173, align 1, !tbaa !36
  %177 = getelementptr inbounds nuw i8, ptr %172, i64 1
  store i8 %176, ptr %172, align 1, !tbaa !36
  %178 = add nuw nsw i32 %174, 1
  %179 = icmp eq i32 %178, %170
  br i1 %179, label %.loopexit76.loopexit, label %.preheader75, !llvm.loop !97

.loopexit76.loopexit:                             ; preds = %.preheader75
  %180 = and i32 %168, -8
  br label %.loopexit76

.loopexit76:                                      ; preds = %.loopexit76.loopexit, %165
  %181 = phi ptr [ %166, %165 ], [ %177, %.loopexit76.loopexit ]
  %182 = phi ptr [ %167, %165 ], [ %175, %.loopexit76.loopexit ]
  %183 = phi i32 [ %168, %165 ], [ %180, %.loopexit76.loopexit ]
  %184 = icmp ult i32 %169, 7
  br i1 %184, label %.loopexit74, label %.preheader73

.preheader73:                                     ; preds = %.loopexit76, %.preheader73
  %185 = phi ptr [ %211, %.preheader73 ], [ %181, %.loopexit76 ]
  %186 = phi ptr [ %209, %.preheader73 ], [ %182, %.loopexit76 ]
  %187 = phi i32 [ %212, %.preheader73 ], [ %183, %.loopexit76 ]
  %188 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %189 = load i8, ptr %186, align 1, !tbaa !36
  %190 = getelementptr inbounds nuw i8, ptr %185, i64 1
  store i8 %189, ptr %185, align 1, !tbaa !36
  %191 = getelementptr inbounds nuw i8, ptr %186, i64 2
  %192 = load i8, ptr %188, align 1, !tbaa !36
  %193 = getelementptr inbounds nuw i8, ptr %185, i64 2
  store i8 %192, ptr %190, align 1, !tbaa !36
  %194 = getelementptr inbounds nuw i8, ptr %186, i64 3
  %195 = load i8, ptr %191, align 1, !tbaa !36
  %196 = getelementptr inbounds nuw i8, ptr %185, i64 3
  store i8 %195, ptr %193, align 1, !tbaa !36
  %197 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %198 = load i8, ptr %194, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %185, i64 4
  store i8 %198, ptr %196, align 1, !tbaa !36
  %200 = getelementptr inbounds nuw i8, ptr %186, i64 5
  %201 = load i8, ptr %197, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %185, i64 5
  store i8 %201, ptr %199, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %186, i64 6
  %204 = load i8, ptr %200, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %185, i64 6
  store i8 %204, ptr %202, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %186, i64 7
  %207 = load i8, ptr %203, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %185, i64 7
  store i8 %207, ptr %205, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %186, i64 8
  %210 = load i8, ptr %206, align 1, !tbaa !36
  %211 = getelementptr inbounds nuw i8, ptr %185, i64 8
  store i8 %210, ptr %208, align 1, !tbaa !36
  %212 = add i32 %187, -8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %.loopexit74, label %.preheader73, !llvm.loop !98

.loopexit74:                                      ; preds = %.preheader73, %.loopexit76, %159, %140
  %214 = load i32, ptr %28, align 8, !tbaa !34
  %215 = load ptr, ptr %35, align 8, !tbaa !29
  br label %216

216:                                              ; preds = %.loopexit74, %116, %112
  %217 = phi ptr [ %215, %.loopexit74 ], [ %114, %116 ], [ %114, %112 ]
  %218 = phi i32 [ %214, %.loopexit74 ], [ %111, %116 ], [ 0, %112 ]
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds nuw i8, ptr %217, i64 %219
  %221 = load i32, ptr %30, align 8, !tbaa !27
  %222 = sub i32 %221, %218
  store i32 0, ptr %36, align 4, !tbaa !17
  %223 = tail call ptr @__errno_location() #16
  store i32 0, ptr %223, align 4, !tbaa !4
  br label %224

224:                                              ; preds = %235, %216
  %225 = phi i32 [ 0, %216 ], [ %236, %235 ]
  %226 = sub i32 %222, %225
  %227 = tail call i32 @llvm.umin.i32(i32 %226, i32 1073741824)
  %228 = load i32, ptr %37, align 4, !tbaa !46
  %229 = zext i32 %225 to i64
  %230 = getelementptr inbounds nuw i8, ptr %220, i64 %229
  %231 = zext nneg i32 %227 to i64
  %232 = tail call i64 @read(i32 noundef %228, ptr noundef %230, i64 noundef %231) #13
  %233 = trunc i64 %232 to i32
  %234 = icmp slt i32 %233, 1
  br i1 %234, label %238, label %235

235:                                              ; preds = %224
  %236 = add i32 %225, %233
  %237 = icmp ult i32 %236, %222
  br i1 %237, label %224, label %.loopexit72, !llvm.loop !47

238:                                              ; preds = %224
  %239 = icmp slt i32 %233, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %238
  %241 = load i32, ptr %223, align 4, !tbaa !4
  %242 = icmp eq i32 %241, 11
  br i1 %242, label %243, label %.loopexit82

243:                                              ; preds = %240
  store i32 1, ptr %36, align 4, !tbaa !17
  %244 = icmp eq i32 %225, 0
  br i1 %244, label %245, label %.loopexit72

245:                                              ; preds = %243
  %246 = load i32, ptr %223, align 4, !tbaa !4
  br label %.loopexit82

247:                                              ; preds = %238
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit72

.loopexit82:                                      ; preds = %240, %245
  %248 = phi i32 [ %246, %245 ], [ %241, %240 ]
  %249 = tail call ptr @strerror(i32 noundef %248) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %249) #13
  br label %.loopexit81

.loopexit72:                                      ; preds = %235, %247, %243
  %250 = phi i32 [ %225, %243 ], [ %225, %247 ], [ %236, %235 ]
  %251 = load i32, ptr %28, align 8, !tbaa !34
  %252 = add i32 %251, %250
  store i32 %252, ptr %28, align 8, !tbaa !34
  %253 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %253, ptr %34, align 8, !tbaa !35
  br label %254

254:                                              ; preds = %.loopexit72, %108
  %255 = phi i32 [ %252, %.loopexit72 ], [ %111, %108 ]
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %286, label %257

257:                                              ; preds = %254
  %258 = load i32, ptr %36, align 4, !tbaa !17
  %259 = icmp ne i32 %258, 0
  %260 = icmp ult i32 %255, 4
  %261 = and i1 %260, %259
  br i1 %261, label %286, label %262

262:                                              ; preds = %257
  %263 = icmp ugt i32 %255, 3
  %264 = load ptr, ptr %34, align 8, !tbaa !35
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
  %281 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !32
  br label %418

282:                                              ; preds = %276, %272, %268, %265, %262
  %283 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %283, ptr %25, align 8, !tbaa !20
  %284 = zext i32 %255 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %283, ptr align 1 %264, i64 %284, i1 false)
  %285 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %285, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %420

286:                                              ; preds = %257, %254, %101
  %287 = load i32, ptr %29, align 8, !tbaa !26
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %.loopexit83, label %418

289:                                              ; preds = %71
  %290 = load ptr, ptr %32, align 8, !tbaa !30
  %291 = load i32, ptr %30, align 8, !tbaa !27
  %292 = shl i32 %291, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %293 = tail call ptr @__errno_location() #16
  store i32 0, ptr %293, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %294

294:                                              ; preds = %305, %289
  %295 = phi i32 [ %307, %305 ], [ 0, %289 ]
  %296 = sub i32 %292, %295
  %297 = tail call i32 @llvm.umin.i32(i32 %296, i32 1073741824)
  %298 = load i32, ptr %37, align 4, !tbaa !46
  %299 = zext i32 %295 to i64
  %300 = getelementptr inbounds nuw i8, ptr %290, i64 %299
  %301 = zext nneg i32 %297 to i64
  %302 = tail call i64 @read(i32 noundef %298, ptr noundef %300, i64 noundef %301) #13
  %303 = trunc i64 %302 to i32
  %304 = icmp slt i32 %303, 1
  br i1 %304, label %309, label %305

305:                                              ; preds = %294
  %306 = load i32, ptr %0, align 4, !tbaa !4
  %307 = add i32 %306, %303
  store i32 %307, ptr %0, align 4, !tbaa !4
  %308 = icmp ult i32 %307, %292
  br i1 %308, label %294, label %.loopexit80, !llvm.loop !47

309:                                              ; preds = %294
  %310 = icmp slt i32 %303, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %309
  %312 = load i32, ptr %293, align 4, !tbaa !4
  %313 = icmp eq i32 %312, 11
  br i1 %313, label %314, label %.loopexit85

314:                                              ; preds = %311
  store i32 1, ptr %36, align 4, !tbaa !17
  %315 = load i32, ptr %0, align 4, !tbaa !4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %.loopexit80

317:                                              ; preds = %314
  %318 = load i32, ptr %293, align 4, !tbaa !4
  br label %.loopexit85

319:                                              ; preds = %309
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit80

.loopexit85:                                      ; preds = %311, %317
  %320 = phi i32 [ %318, %317 ], [ %312, %311 ]
  %321 = tail call ptr @strerror(i32 noundef %320) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %321) #13
  br label %.loopexit81

.loopexit80:                                      ; preds = %305, %319, %314
  %322 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %322, ptr %25, align 8, !tbaa !20
  br label %.loopexit83

323:                                              ; preds = %71
  %324 = load i32, ptr %30, align 8, !tbaa !27
  %325 = shl i32 %324, 1
  store i32 %325, ptr %31, align 8, !tbaa !48
  %326 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %326, ptr %33, align 8, !tbaa !49
  br label %327

327:                                              ; preds = %398, %323
  %328 = phi i32 [ 0, %323 ], [ %377, %398 ]
  %329 = load i32, ptr %28, align 8, !tbaa !34
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %376

331:                                              ; preds = %327
  %332 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %332, label %.loopexit77 [
    i32 0, label %333
    i32 -5, label %333
  ]

333:                                              ; preds = %331, %331
  %334 = load i32, ptr %27, align 8, !tbaa !24
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %372

336:                                              ; preds = %333
  %337 = load ptr, ptr %35, align 8, !tbaa !29
  %338 = load i32, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %36, align 4, !tbaa !17
  %339 = tail call ptr @__errno_location() #16
  store i32 0, ptr %339, align 4, !tbaa !4
  br label %340

340:                                              ; preds = %351, %336
  %341 = phi i32 [ 0, %336 ], [ %352, %351 ]
  %342 = sub i32 %338, %341
  %343 = tail call i32 @llvm.umin.i32(i32 %342, i32 1073741824)
  %344 = load i32, ptr %37, align 4, !tbaa !46
  %345 = zext i32 %341 to i64
  %346 = getelementptr inbounds nuw i8, ptr %337, i64 %345
  %347 = zext nneg i32 %343 to i64
  %348 = tail call i64 @read(i32 noundef %344, ptr noundef %346, i64 noundef %347) #13
  %349 = trunc i64 %348 to i32
  %350 = icmp slt i32 %349, 1
  br i1 %350, label %354, label %351

351:                                              ; preds = %340
  %352 = add i32 %341, %349
  %353 = icmp ult i32 %352, %338
  br i1 %353, label %340, label %.loopexit71, !llvm.loop !47

354:                                              ; preds = %340
  %355 = icmp slt i32 %349, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %354
  %357 = load i32, ptr %339, align 4, !tbaa !4
  %358 = icmp eq i32 %357, 11
  br i1 %358, label %359, label %.loopexit79

359:                                              ; preds = %356
  store i32 1, ptr %36, align 4, !tbaa !17
  %360 = icmp eq i32 %341, 0
  br i1 %360, label %361, label %.loopexit71

361:                                              ; preds = %359
  %362 = load i32, ptr %339, align 4, !tbaa !4
  br label %.loopexit79

363:                                              ; preds = %354
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit71

.loopexit79:                                      ; preds = %356, %361
  %364 = phi i32 [ %362, %361 ], [ %357, %356 ]
  %365 = tail call ptr @strerror(i32 noundef %364) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %365) #13
  %366 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit77

.loopexit71:                                      ; preds = %351, %363, %359
  %367 = phi i32 [ %341, %359 ], [ %341, %363 ], [ %352, %351 ]
  %368 = load i32, ptr %28, align 8, !tbaa !34
  %369 = add i32 %368, %367
  store i32 %369, ptr %28, align 8, !tbaa !34
  %370 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %370, ptr %34, align 8, !tbaa !35
  %371 = icmp eq i32 %369, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %.loopexit71, %333
  %373 = load i32, ptr %36, align 4, !tbaa !17
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %.loopexit77

375:                                              ; preds = %372
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit77

376:                                              ; preds = %.loopexit71, %327
  %377 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %378 = load i32, ptr %31, align 8, !tbaa !48
  %379 = icmp ult i32 %378, %325
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  store i32 0, ptr %38, align 4, !tbaa !33
  br label %381

381:                                              ; preds = %380, %376
  switch i32 %377, label %398 [
    i32 -2, label %382
    i32 2, label %382
    i32 -4, label %383
    i32 -3, label %384
  ]

382:                                              ; preds = %381, %381
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit77

383:                                              ; preds = %381
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %402

384:                                              ; preds = %381
  %385 = load i32, ptr %38, align 4, !tbaa !33
  %386 = icmp eq i32 %385, 1
  br i1 %386, label %387, label %393

387:                                              ; preds = %384
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  %388 = sub i32 %325, %378
  store i32 %388, ptr %0, align 8, !tbaa !19
  %389 = load ptr, ptr %33, align 8, !tbaa !49
  %390 = zext i32 %388 to i64
  %391 = sub nsw i64 0, %390
  %392 = getelementptr inbounds i8, ptr %389, i64 %391
  store ptr %392, ptr %25, align 8, !tbaa !20
  br label %418

393:                                              ; preds = %384
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %395 = load ptr, ptr %394, align 8, !tbaa !50
  %396 = icmp eq ptr %395, null
  %397 = select i1 %396, ptr @.str.6, ptr %395
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %397) #13
  br label %402

398:                                              ; preds = %381
  %399 = icmp ne i32 %378, 0
  %400 = icmp ne i32 %377, 1
  %401 = select i1 %399, i1 %400, i1 false
  br i1 %401, label %327, label %.loopexit77, !llvm.loop !51

402:                                              ; preds = %393, %383
  %403 = load i32, ptr %31, align 8, !tbaa !48
  %404 = sub i32 %325, %403
  store i32 %404, ptr %0, align 8, !tbaa !19
  %405 = load ptr, ptr %33, align 8, !tbaa !49
  %406 = zext i32 %404 to i64
  %407 = sub nsw i64 0, %406
  %408 = getelementptr inbounds i8, ptr %405, i64 %407
  store ptr %408, ptr %25, align 8, !tbaa !20
  br label %.loopexit81

.loopexit77:                                      ; preds = %398, %331, %382, %375, %372, %.loopexit79
  %409 = phi i32 [ %366, %.loopexit79 ], [ %328, %372 ], [ %328, %375 ], [ %377, %382 ], [ %377, %398 ], [ %332, %331 ]
  %410 = load i32, ptr %31, align 8, !tbaa !48
  %411 = sub i32 %325, %410
  store i32 %411, ptr %0, align 8, !tbaa !19
  %412 = load ptr, ptr %33, align 8, !tbaa !49
  %413 = zext i32 %411 to i64
  %414 = sub nsw i64 0, %413
  %415 = getelementptr inbounds i8, ptr %412, i64 %414
  store ptr %415, ptr %25, align 8, !tbaa !20
  switch i32 %409, label %.loopexit81 [
    i32 1, label %416
    i32 0, label %418
  ]

416:                                              ; preds = %.loopexit77
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %418

417:                                              ; preds = %71
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit81

418:                                              ; preds = %416, %.loopexit77, %387, %286, %280
  %419 = load i32, ptr %0, align 8, !tbaa !19
  br label %420

420:                                              ; preds = %418, %282
  %421 = phi i32 [ %419, %418 ], [ %285, %282 ]
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %.loopexit83

423:                                              ; preds = %420
  %424 = load i32, ptr %27, align 8, !tbaa !24
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %.backedge, label %426

426:                                              ; preds = %423
  %427 = load i32, ptr %28, align 8, !tbaa !34
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %.loopexit83, label %.backedge

.backedge:                                        ; preds = %426, %423
  br label %71, !llvm.loop !52

.loopexit83:                                      ; preds = %426, %420, %286, %.loopexit80
  %429 = load i64, ptr %21, align 8, !tbaa !18
  br label %430

430:                                              ; preds = %.loopexit83, %63
  %431 = phi i64 [ %429, %.loopexit83 ], [ %64, %63 ]
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %.loopexit84, label %42, !llvm.loop !53

.loopexit84:                                      ; preds = %430, %68, %20
  %433 = add nsw i32 %2, -1
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %.loopexit81, label %435

435:                                              ; preds = %.loopexit84
  %436 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %437 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %438 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %439 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %440 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %441 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %442 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %444 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %445 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %446 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %447 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %448 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %449 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %450 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %451 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %453 = load i32, ptr %0, align 8, !tbaa !19
  br label %454

454:                                              ; preds = %842, %435
  %455 = phi i32 [ %835, %842 ], [ %453, %435 ]
  %456 = phi i32 [ %844, %842 ], [ %433, %435 ]
  %457 = phi ptr [ %845, %842 ], [ %1, %435 ]
  %458 = icmp eq i32 %455, 0
  br i1 %458, label %.preheader65, label %820

.preheader65:                                     ; preds = %454, %.preheader65.backedge
  %459 = load i32, ptr %436, align 8, !tbaa !26
  switch i32 %459, label %804 [
    i32 0, label %460
    i32 1, label %676
    i32 2, label %710
  ]

460:                                              ; preds = %.preheader65
  %461 = load i32, ptr %437, align 8, !tbaa !27
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %482

463:                                              ; preds = %460
  %464 = load i32, ptr %449, align 4, !tbaa !28
  %465 = zext i32 %464 to i64
  %466 = tail call noalias ptr @malloc(i64 noundef %465) #15
  store ptr %466, ptr %444, align 8, !tbaa !29
  %467 = load i32, ptr %449, align 4, !tbaa !28
  %468 = shl i32 %467, 1
  %469 = zext i32 %468 to i64
  %470 = tail call noalias ptr @malloc(i64 noundef %469) #15
  store ptr %470, ptr %439, align 8, !tbaa !30
  %471 = icmp eq ptr %466, null
  %472 = icmp eq ptr %470, null
  %473 = or i1 %471, %472
  br i1 %473, label %474, label %475

474:                                              ; preds = %463
  tail call void @free(ptr noundef %470) #13
  tail call void @free(ptr noundef %466) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit66

475:                                              ; preds = %463
  %476 = load i32, ptr %449, align 4, !tbaa !28
  store i32 %476, ptr %437, align 8, !tbaa !27
  store i32 0, ptr %442, align 8, !tbaa !25
  store ptr null, ptr %441, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %450, i8 0, i64 24, i1 false)
  %477 = tail call i32 @inflateInit2_(ptr noundef nonnull %441, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %475
  %480 = load ptr, ptr %439, align 8, !tbaa !30
  tail call void @free(ptr noundef %480) #13
  %481 = load ptr, ptr %444, align 8, !tbaa !29
  tail call void @free(ptr noundef %481) #13
  store i32 0, ptr %437, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit66

482:                                              ; preds = %475, %460
  %483 = load i32, ptr %451, align 8, !tbaa !32
  %484 = icmp eq i32 %483, -1
  br i1 %484, label %488, label %485

485:                                              ; preds = %482
  %486 = load i32, ptr %447, align 4, !tbaa !33
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %493

488:                                              ; preds = %485, %482
  %489 = tail call i32 @inflateReset(ptr noundef nonnull %441) #13
  store i32 2, ptr %436, align 8, !tbaa !26
  %490 = load i32, ptr %447, align 4, !tbaa !33
  %491 = icmp ne i32 %490, -1
  %492 = zext i1 %491 to i32
  store i32 %492, ptr %447, align 4, !tbaa !33
  store i32 0, ptr %451, align 8, !tbaa !32
  br label %673

493:                                              ; preds = %485
  %494 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %494, label %.loopexit66 [
    i32 0, label %495
    i32 -5, label %495
  ]

495:                                              ; preds = %493, %493
  %496 = load i32, ptr %443, align 8, !tbaa !24
  %497 = icmp eq i32 %496, 0
  %498 = load i32, ptr %442, align 8, !tbaa !34
  br i1 %497, label %499, label %641

499:                                              ; preds = %495
  %500 = icmp eq i32 %498, 0
  %501 = load ptr, ptr %444, align 8, !tbaa !29
  %502 = ptrtoaddr ptr %501 to i64
  br i1 %500, label %603, label %503

503:                                              ; preds = %499
  %504 = load ptr, ptr %441, align 8, !tbaa !35
  %505 = icmp eq ptr %504, %501
  br i1 %505, label %603, label %506

506:                                              ; preds = %503
  %507 = ptrtoaddr ptr %504 to i64
  %508 = zext i32 %498 to i64
  %509 = icmp ult i32 %498, 4
  %510 = sub i64 %502, %507
  %511 = icmp ult i64 %510, 32
  %512 = select i1 %509, i1 true, i1 %511
  br i1 %512, label %552, label %513

513:                                              ; preds = %506
  %514 = icmp ult i32 %498, 32
  br i1 %514, label %536, label %515

515:                                              ; preds = %513
  %516 = and i64 %508, 4294967264
  br label %517

517:                                              ; preds = %517, %515
  %518 = phi i64 [ 0, %515 ], [ %525, %517 ]
  %519 = getelementptr i8, ptr %501, i64 %518
  %520 = getelementptr i8, ptr %504, i64 %518
  %521 = getelementptr i8, ptr %520, i64 16
  %522 = load <16 x i8>, ptr %520, align 1, !tbaa !36
  %523 = load <16 x i8>, ptr %521, align 1, !tbaa !36
  %524 = getelementptr i8, ptr %519, i64 16
  store <16 x i8> %522, ptr %519, align 1, !tbaa !36
  store <16 x i8> %523, ptr %524, align 1, !tbaa !36
  %525 = add nuw nsw i64 %518, 32
  %526 = icmp eq i64 %525, %516
  br i1 %526, label %527, label %517, !llvm.loop !99

527:                                              ; preds = %517
  %528 = icmp eq i64 %516, %508
  br i1 %528, label %.loopexit59, label %529

529:                                              ; preds = %527
  %530 = trunc nuw i64 %516 to i32
  %531 = sub i32 %498, %530
  %532 = getelementptr i8, ptr %504, i64 %516
  %533 = getelementptr i8, ptr %501, i64 %516
  %534 = and i64 %508, 28
  %535 = icmp eq i64 %534, 0
  br i1 %535, label %552, label %536, !prof !41

536:                                              ; preds = %529, %513
  %537 = phi i64 [ %516, %529 ], [ 0, %513 ]
  %538 = and i64 %508, 4294967292
  br label %539

539:                                              ; preds = %539, %536
  %540 = phi i64 [ %537, %536 ], [ %544, %539 ]
  %541 = getelementptr i8, ptr %501, i64 %540
  %542 = getelementptr i8, ptr %504, i64 %540
  %543 = load <4 x i8>, ptr %542, align 1, !tbaa !36
  store <4 x i8> %543, ptr %541, align 1, !tbaa !36
  %544 = add nuw i64 %540, 4
  %545 = icmp eq i64 %544, %538
  br i1 %545, label %546, label %539, !llvm.loop !100

546:                                              ; preds = %539
  %547 = getelementptr i8, ptr %501, i64 %538
  %548 = getelementptr i8, ptr %504, i64 %538
  %549 = trunc nuw i64 %538 to i32
  %550 = sub i32 %498, %549
  %551 = icmp eq i64 %538, %508
  br i1 %551, label %.loopexit59, label %552

552:                                              ; preds = %546, %529, %506
  %553 = phi ptr [ %501, %506 ], [ %533, %529 ], [ %547, %546 ]
  %554 = phi ptr [ %504, %506 ], [ %532, %529 ], [ %548, %546 ]
  %555 = phi i32 [ %498, %506 ], [ %531, %529 ], [ %550, %546 ]
  %556 = add i32 %555, -1
  %557 = and i32 %555, 7
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %.loopexit61, label %.preheader60

.preheader60:                                     ; preds = %552, %.preheader60
  %559 = phi ptr [ %564, %.preheader60 ], [ %553, %552 ]
  %560 = phi ptr [ %562, %.preheader60 ], [ %554, %552 ]
  %561 = phi i32 [ %565, %.preheader60 ], [ 0, %552 ]
  %562 = getelementptr inbounds nuw i8, ptr %560, i64 1
  %563 = load i8, ptr %560, align 1, !tbaa !36
  %564 = getelementptr inbounds nuw i8, ptr %559, i64 1
  store i8 %563, ptr %559, align 1, !tbaa !36
  %565 = add nuw nsw i32 %561, 1
  %566 = icmp eq i32 %565, %557
  br i1 %566, label %.loopexit61.loopexit, label %.preheader60, !llvm.loop !101

.loopexit61.loopexit:                             ; preds = %.preheader60
  %567 = and i32 %555, -8
  br label %.loopexit61

.loopexit61:                                      ; preds = %.loopexit61.loopexit, %552
  %568 = phi ptr [ %553, %552 ], [ %564, %.loopexit61.loopexit ]
  %569 = phi ptr [ %554, %552 ], [ %562, %.loopexit61.loopexit ]
  %570 = phi i32 [ %555, %552 ], [ %567, %.loopexit61.loopexit ]
  %571 = icmp ult i32 %556, 7
  br i1 %571, label %.loopexit59, label %.preheader

.preheader:                                       ; preds = %.loopexit61, %.preheader
  %572 = phi ptr [ %598, %.preheader ], [ %568, %.loopexit61 ]
  %573 = phi ptr [ %596, %.preheader ], [ %569, %.loopexit61 ]
  %574 = phi i32 [ %599, %.preheader ], [ %570, %.loopexit61 ]
  %575 = getelementptr inbounds nuw i8, ptr %573, i64 1
  %576 = load i8, ptr %573, align 1, !tbaa !36
  %577 = getelementptr inbounds nuw i8, ptr %572, i64 1
  store i8 %576, ptr %572, align 1, !tbaa !36
  %578 = getelementptr inbounds nuw i8, ptr %573, i64 2
  %579 = load i8, ptr %575, align 1, !tbaa !36
  %580 = getelementptr inbounds nuw i8, ptr %572, i64 2
  store i8 %579, ptr %577, align 1, !tbaa !36
  %581 = getelementptr inbounds nuw i8, ptr %573, i64 3
  %582 = load i8, ptr %578, align 1, !tbaa !36
  %583 = getelementptr inbounds nuw i8, ptr %572, i64 3
  store i8 %582, ptr %580, align 1, !tbaa !36
  %584 = getelementptr inbounds nuw i8, ptr %573, i64 4
  %585 = load i8, ptr %581, align 1, !tbaa !36
  %586 = getelementptr inbounds nuw i8, ptr %572, i64 4
  store i8 %585, ptr %583, align 1, !tbaa !36
  %587 = getelementptr inbounds nuw i8, ptr %573, i64 5
  %588 = load i8, ptr %584, align 1, !tbaa !36
  %589 = getelementptr inbounds nuw i8, ptr %572, i64 5
  store i8 %588, ptr %586, align 1, !tbaa !36
  %590 = getelementptr inbounds nuw i8, ptr %573, i64 6
  %591 = load i8, ptr %587, align 1, !tbaa !36
  %592 = getelementptr inbounds nuw i8, ptr %572, i64 6
  store i8 %591, ptr %589, align 1, !tbaa !36
  %593 = getelementptr inbounds nuw i8, ptr %573, i64 7
  %594 = load i8, ptr %590, align 1, !tbaa !36
  %595 = getelementptr inbounds nuw i8, ptr %572, i64 7
  store i8 %594, ptr %592, align 1, !tbaa !36
  %596 = getelementptr inbounds nuw i8, ptr %573, i64 8
  %597 = load i8, ptr %593, align 1, !tbaa !36
  %598 = getelementptr inbounds nuw i8, ptr %572, i64 8
  store i8 %597, ptr %595, align 1, !tbaa !36
  %599 = add i32 %574, -8
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %.loopexit59, label %.preheader, !llvm.loop !102

.loopexit59:                                      ; preds = %.preheader, %.loopexit61, %546, %527
  %601 = load i32, ptr %442, align 8, !tbaa !34
  %602 = load ptr, ptr %444, align 8, !tbaa !29
  br label %603

603:                                              ; preds = %.loopexit59, %503, %499
  %604 = phi ptr [ %602, %.loopexit59 ], [ %501, %503 ], [ %501, %499 ]
  %605 = phi i32 [ %601, %.loopexit59 ], [ %498, %503 ], [ 0, %499 ]
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds nuw i8, ptr %604, i64 %606
  %608 = load i32, ptr %437, align 8, !tbaa !27
  %609 = sub i32 %608, %605
  store i32 0, ptr %445, align 4, !tbaa !17
  %610 = tail call ptr @__errno_location() #16
  store i32 0, ptr %610, align 4, !tbaa !4
  br label %611

611:                                              ; preds = %622, %603
  %612 = phi i32 [ 0, %603 ], [ %623, %622 ]
  %613 = sub i32 %609, %612
  %614 = tail call i32 @llvm.umin.i32(i32 %613, i32 1073741824)
  %615 = load i32, ptr %446, align 4, !tbaa !46
  %616 = zext i32 %612 to i64
  %617 = getelementptr inbounds nuw i8, ptr %607, i64 %616
  %618 = zext nneg i32 %614 to i64
  %619 = tail call i64 @read(i32 noundef %615, ptr noundef %617, i64 noundef %618) #13
  %620 = trunc i64 %619 to i32
  %621 = icmp slt i32 %620, 1
  br i1 %621, label %625, label %622

622:                                              ; preds = %611
  %623 = add i32 %612, %620
  %624 = icmp ult i32 %623, %609
  br i1 %624, label %611, label %.loopexit58, !llvm.loop !47

625:                                              ; preds = %611
  %626 = icmp slt i32 %620, 0
  br i1 %626, label %627, label %634

627:                                              ; preds = %625
  %628 = load i32, ptr %610, align 4, !tbaa !4
  %629 = icmp eq i32 %628, 11
  br i1 %629, label %630, label %.loopexit67

630:                                              ; preds = %627
  store i32 1, ptr %445, align 4, !tbaa !17
  %631 = icmp eq i32 %612, 0
  br i1 %631, label %632, label %.loopexit58

632:                                              ; preds = %630
  %633 = load i32, ptr %610, align 4, !tbaa !4
  br label %.loopexit67

634:                                              ; preds = %625
  store i32 1, ptr %443, align 8, !tbaa !24
  br label %.loopexit58

.loopexit67:                                      ; preds = %627, %632
  %635 = phi i32 [ %633, %632 ], [ %628, %627 ]
  %636 = tail call ptr @strerror(i32 noundef %635) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %636) #13
  br label %.loopexit66

.loopexit58:                                      ; preds = %622, %634, %630
  %637 = phi i32 [ %612, %630 ], [ %612, %634 ], [ %623, %622 ]
  %638 = load i32, ptr %442, align 8, !tbaa !34
  %639 = add i32 %638, %637
  store i32 %639, ptr %442, align 8, !tbaa !34
  %640 = load ptr, ptr %444, align 8, !tbaa !29
  store ptr %640, ptr %441, align 8, !tbaa !35
  br label %641

641:                                              ; preds = %.loopexit58, %495
  %642 = phi i32 [ %639, %.loopexit58 ], [ %498, %495 ]
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %673, label %644

644:                                              ; preds = %641
  %645 = load i32, ptr %445, align 4, !tbaa !17
  %646 = icmp ne i32 %645, 0
  %647 = icmp ult i32 %642, 4
  %648 = and i1 %647, %646
  br i1 %648, label %673, label %649

649:                                              ; preds = %644
  %650 = icmp ugt i32 %642, 3
  %651 = load ptr, ptr %441, align 8, !tbaa !35
  br i1 %650, label %652, label %669

652:                                              ; preds = %649
  %653 = load i8, ptr %651, align 1, !tbaa !36
  %654 = icmp eq i8 %653, 31
  br i1 %654, label %655, label %669

655:                                              ; preds = %652
  %656 = getelementptr inbounds nuw i8, ptr %651, i64 1
  %657 = load i8, ptr %656, align 1, !tbaa !36
  %658 = icmp eq i8 %657, -117
  br i1 %658, label %659, label %669

659:                                              ; preds = %655
  %660 = getelementptr inbounds nuw i8, ptr %651, i64 2
  %661 = load i8, ptr %660, align 1, !tbaa !36
  %662 = icmp eq i8 %661, 8
  br i1 %662, label %663, label %669

663:                                              ; preds = %659
  %664 = getelementptr inbounds nuw i8, ptr %651, i64 3
  %665 = load i8, ptr %664, align 1, !tbaa !36
  %666 = icmp ult i8 %665, 32
  br i1 %666, label %667, label %669

667:                                              ; preds = %663
  %668 = tail call i32 @inflateReset(ptr noundef nonnull %441) #13
  store i32 2, ptr %436, align 8, !tbaa !26
  store i32 1, ptr %447, align 4, !tbaa !33
  store i32 0, ptr %451, align 8, !tbaa !32
  br label %805

669:                                              ; preds = %663, %659, %655, %652, %649
  %670 = load ptr, ptr %439, align 8, !tbaa !30
  store ptr %670, ptr %448, align 8, !tbaa !20
  %671 = zext i32 %642 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %670, ptr align 1 %651, i64 %671, i1 false)
  %672 = load i32, ptr %442, align 8, !tbaa !34
  store i32 %672, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %442, align 8, !tbaa !34
  store i32 1, ptr %436, align 8, !tbaa !26
  br label %807

673:                                              ; preds = %644, %641, %488
  %674 = load i32, ptr %436, align 8, !tbaa !26
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %.loopexit68, label %805

676:                                              ; preds = %.preheader65
  %677 = load ptr, ptr %439, align 8, !tbaa !30
  %678 = load i32, ptr %437, align 8, !tbaa !27
  %679 = shl i32 %678, 1
  store i32 0, ptr %445, align 4, !tbaa !17
  %680 = tail call ptr @__errno_location() #16
  store i32 0, ptr %680, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %681

681:                                              ; preds = %692, %676
  %682 = phi i32 [ %694, %692 ], [ 0, %676 ]
  %683 = sub i32 %679, %682
  %684 = tail call i32 @llvm.umin.i32(i32 %683, i32 1073741824)
  %685 = load i32, ptr %446, align 4, !tbaa !46
  %686 = zext i32 %682 to i64
  %687 = getelementptr inbounds nuw i8, ptr %677, i64 %686
  %688 = zext nneg i32 %684 to i64
  %689 = tail call i64 @read(i32 noundef %685, ptr noundef %687, i64 noundef %688) #13
  %690 = trunc i64 %689 to i32
  %691 = icmp slt i32 %690, 1
  br i1 %691, label %696, label %692

692:                                              ; preds = %681
  %693 = load i32, ptr %0, align 4, !tbaa !4
  %694 = add i32 %693, %690
  store i32 %694, ptr %0, align 4, !tbaa !4
  %695 = icmp ult i32 %694, %679
  br i1 %695, label %681, label %.loopexit64, !llvm.loop !47

696:                                              ; preds = %681
  %697 = icmp slt i32 %690, 0
  br i1 %697, label %698, label %706

698:                                              ; preds = %696
  %699 = load i32, ptr %680, align 4, !tbaa !4
  %700 = icmp eq i32 %699, 11
  br i1 %700, label %701, label %.loopexit69

701:                                              ; preds = %698
  store i32 1, ptr %445, align 4, !tbaa !17
  %702 = load i32, ptr %0, align 4, !tbaa !4
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %704, label %.loopexit64

704:                                              ; preds = %701
  %705 = load i32, ptr %680, align 4, !tbaa !4
  br label %.loopexit69

706:                                              ; preds = %696
  store i32 1, ptr %443, align 8, !tbaa !24
  br label %.loopexit64

.loopexit69:                                      ; preds = %698, %704
  %707 = phi i32 [ %705, %704 ], [ %699, %698 ]
  %708 = tail call ptr @strerror(i32 noundef %707) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %708) #13
  br label %.loopexit66

.loopexit64:                                      ; preds = %692, %706, %701
  %709 = load ptr, ptr %439, align 8, !tbaa !30
  store ptr %709, ptr %448, align 8, !tbaa !20
  br label %.loopexit68

710:                                              ; preds = %.preheader65
  %711 = load i32, ptr %437, align 8, !tbaa !27
  %712 = shl i32 %711, 1
  store i32 %712, ptr %438, align 8, !tbaa !48
  %713 = load ptr, ptr %439, align 8, !tbaa !30
  store ptr %713, ptr %440, align 8, !tbaa !49
  br label %714

714:                                              ; preds = %785, %710
  %715 = phi i32 [ 0, %710 ], [ %764, %785 ]
  %716 = load i32, ptr %442, align 8, !tbaa !34
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %718, label %763

718:                                              ; preds = %714
  %719 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %719, label %.loopexit62 [
    i32 0, label %720
    i32 -5, label %720
  ]

720:                                              ; preds = %718, %718
  %721 = load i32, ptr %443, align 8, !tbaa !24
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %759

723:                                              ; preds = %720
  %724 = load ptr, ptr %444, align 8, !tbaa !29
  %725 = load i32, ptr %437, align 8, !tbaa !27
  store i32 0, ptr %445, align 4, !tbaa !17
  %726 = tail call ptr @__errno_location() #16
  store i32 0, ptr %726, align 4, !tbaa !4
  br label %727

727:                                              ; preds = %738, %723
  %728 = phi i32 [ 0, %723 ], [ %739, %738 ]
  %729 = sub i32 %725, %728
  %730 = tail call i32 @llvm.umin.i32(i32 %729, i32 1073741824)
  %731 = load i32, ptr %446, align 4, !tbaa !46
  %732 = zext i32 %728 to i64
  %733 = getelementptr inbounds nuw i8, ptr %724, i64 %732
  %734 = zext nneg i32 %730 to i64
  %735 = tail call i64 @read(i32 noundef %731, ptr noundef %733, i64 noundef %734) #13
  %736 = trunc i64 %735 to i32
  %737 = icmp slt i32 %736, 1
  br i1 %737, label %741, label %738

738:                                              ; preds = %727
  %739 = add i32 %728, %736
  %740 = icmp ult i32 %739, %725
  br i1 %740, label %727, label %.loopexit, !llvm.loop !47

741:                                              ; preds = %727
  %742 = icmp slt i32 %736, 0
  br i1 %742, label %743, label %750

743:                                              ; preds = %741
  %744 = load i32, ptr %726, align 4, !tbaa !4
  %745 = icmp eq i32 %744, 11
  br i1 %745, label %746, label %.loopexit63

746:                                              ; preds = %743
  store i32 1, ptr %445, align 4, !tbaa !17
  %747 = icmp eq i32 %728, 0
  br i1 %747, label %748, label %.loopexit

748:                                              ; preds = %746
  %749 = load i32, ptr %726, align 4, !tbaa !4
  br label %.loopexit63

750:                                              ; preds = %741
  store i32 1, ptr %443, align 8, !tbaa !24
  br label %.loopexit

.loopexit63:                                      ; preds = %743, %748
  %751 = phi i32 [ %749, %748 ], [ %744, %743 ]
  %752 = tail call ptr @strerror(i32 noundef %751) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %752) #13
  %753 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit62

.loopexit:                                        ; preds = %738, %750, %746
  %754 = phi i32 [ %728, %746 ], [ %728, %750 ], [ %739, %738 ]
  %755 = load i32, ptr %442, align 8, !tbaa !34
  %756 = add i32 %755, %754
  store i32 %756, ptr %442, align 8, !tbaa !34
  %757 = load ptr, ptr %444, align 8, !tbaa !29
  store ptr %757, ptr %441, align 8, !tbaa !35
  %758 = icmp eq i32 %756, 0
  br i1 %758, label %759, label %763

759:                                              ; preds = %.loopexit, %720
  %760 = load i32, ptr %445, align 4, !tbaa !17
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %.loopexit62

762:                                              ; preds = %759
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit62

763:                                              ; preds = %.loopexit, %714
  %764 = tail call i32 @inflate(ptr noundef nonnull %441, i32 noundef 0) #13
  %765 = load i32, ptr %438, align 8, !tbaa !48
  %766 = icmp ult i32 %765, %712
  br i1 %766, label %767, label %768

767:                                              ; preds = %763
  store i32 0, ptr %447, align 4, !tbaa !33
  br label %768

768:                                              ; preds = %767, %763
  switch i32 %764, label %785 [
    i32 -2, label %769
    i32 2, label %769
    i32 -4, label %770
    i32 -3, label %771
  ]

769:                                              ; preds = %768, %768
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit62

770:                                              ; preds = %768
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %789

771:                                              ; preds = %768
  %772 = load i32, ptr %447, align 4, !tbaa !33
  %773 = icmp eq i32 %772, 1
  br i1 %773, label %774, label %780

774:                                              ; preds = %771
  store i32 0, ptr %442, align 8, !tbaa !34
  store i32 1, ptr %443, align 8, !tbaa !24
  store i32 0, ptr %436, align 8, !tbaa !26
  %775 = sub i32 %712, %765
  store i32 %775, ptr %0, align 8, !tbaa !19
  %776 = load ptr, ptr %440, align 8, !tbaa !49
  %777 = zext i32 %775 to i64
  %778 = sub nsw i64 0, %777
  %779 = getelementptr inbounds i8, ptr %776, i64 %778
  store ptr %779, ptr %448, align 8, !tbaa !20
  br label %805

780:                                              ; preds = %771
  %781 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %782 = load ptr, ptr %781, align 8, !tbaa !50
  %783 = icmp eq ptr %782, null
  %784 = select i1 %783, ptr @.str.6, ptr %782
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %784) #13
  br label %789

785:                                              ; preds = %768
  %786 = icmp ne i32 %765, 0
  %787 = icmp ne i32 %764, 1
  %788 = select i1 %786, i1 %787, i1 false
  br i1 %788, label %714, label %.loopexit62, !llvm.loop !51

789:                                              ; preds = %780, %770
  %790 = load i32, ptr %438, align 8, !tbaa !48
  %791 = sub i32 %712, %790
  store i32 %791, ptr %0, align 8, !tbaa !19
  %792 = load ptr, ptr %440, align 8, !tbaa !49
  %793 = zext i32 %791 to i64
  %794 = sub nsw i64 0, %793
  %795 = getelementptr inbounds i8, ptr %792, i64 %794
  store ptr %795, ptr %448, align 8, !tbaa !20
  br label %.loopexit66

.loopexit62:                                      ; preds = %785, %718, %769, %762, %759, %.loopexit63
  %796 = phi i32 [ %753, %.loopexit63 ], [ %715, %759 ], [ %715, %762 ], [ %764, %769 ], [ %719, %718 ], [ %764, %785 ]
  %797 = load i32, ptr %438, align 8, !tbaa !48
  %798 = sub i32 %712, %797
  store i32 %798, ptr %0, align 8, !tbaa !19
  %799 = load ptr, ptr %440, align 8, !tbaa !49
  %800 = zext i32 %798 to i64
  %801 = sub nsw i64 0, %800
  %802 = getelementptr inbounds i8, ptr %799, i64 %801
  store ptr %802, ptr %448, align 8, !tbaa !20
  switch i32 %796, label %.loopexit66 [
    i32 1, label %803
    i32 0, label %805
  ]

803:                                              ; preds = %.loopexit62
  store i32 0, ptr %447, align 4, !tbaa !33
  store i32 0, ptr %436, align 8, !tbaa !26
  br label %805

804:                                              ; preds = %.preheader65
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit66

805:                                              ; preds = %803, %.loopexit62, %774, %673, %667
  %806 = load i32, ptr %0, align 8, !tbaa !19
  br label %807

807:                                              ; preds = %805, %669
  %808 = phi i32 [ %806, %805 ], [ %672, %669 ]
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %810, label %.loopexit68

810:                                              ; preds = %807
  %811 = load i32, ptr %443, align 8, !tbaa !24
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %.preheader65.backedge, label %813

813:                                              ; preds = %810
  %814 = load i32, ptr %442, align 8, !tbaa !34
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %.loopexit68, label %.preheader65.backedge

.preheader65.backedge:                            ; preds = %813, %810
  br label %.preheader65, !llvm.loop !52

.loopexit68:                                      ; preds = %813, %807, %673, %.loopexit64
  %816 = load i32, ptr %0, align 8, !tbaa !19
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %818, label %820

818:                                              ; preds = %.loopexit68
  %819 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %819, align 4, !tbaa !61
  br label %.loopexit66

820:                                              ; preds = %.loopexit68, %454
  %821 = phi i32 [ %816, %.loopexit68 ], [ %455, %454 ]
  %822 = tail call i32 @llvm.umin.i32(i32 %821, i32 %456)
  %823 = load ptr, ptr %448, align 8, !tbaa !20
  %824 = zext i32 %822 to i64
  %825 = tail call ptr @memchr(ptr noundef %823, i32 noundef 10, i64 noundef %824) #17
  %826 = icmp eq ptr %825, null
  %827 = ptrtoint ptr %825 to i64
  %828 = ptrtoint ptr %823 to i64
  %829 = sub i64 %827, %828
  %830 = trunc i64 %829 to i32
  %831 = add i32 %830, 1
  %832 = select i1 %826, i32 %822, i32 %831
  %833 = zext i32 %832 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %457, ptr align 1 %823, i64 %833, i1 false)
  %834 = load i32, ptr %0, align 8, !tbaa !19
  %835 = sub i32 %834, %832
  store i32 %835, ptr %0, align 8, !tbaa !19
  %836 = load ptr, ptr %448, align 8, !tbaa !20
  %837 = getelementptr inbounds nuw i8, ptr %836, i64 %833
  store ptr %837, ptr %448, align 8, !tbaa !20
  %838 = load i64, ptr %452, align 8, !tbaa !21
  %839 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %838, i64 %833), !nosanitize !22
  %840 = extractvalue { i64, i1 } %839, 1, !nosanitize !22
  br i1 %840, label %841, label %842, !prof !23, !nosanitize !22

841:                                              ; preds = %820
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !22
  unreachable, !nosanitize !22

842:                                              ; preds = %820
  %843 = extractvalue { i64, i1 } %839, 0, !nosanitize !22
  store i64 %843, ptr %452, align 8, !tbaa !21
  %844 = sub i32 %456, %832
  %845 = getelementptr inbounds nuw i8, ptr %457, i64 %833
  %846 = icmp ne i32 %844, 0
  %847 = and i1 %826, %846
  br i1 %847, label %454, label %.loopexit66, !llvm.loop !103

.loopexit66:                                      ; preds = %842, %.loopexit62, %493, %818, %804, %789, %.loopexit69, %.loopexit67, %479, %474
  %848 = phi ptr [ %457, %.loopexit62 ], [ %457, %818 ], [ %457, %804 ], [ %457, %.loopexit69 ], [ %457, %.loopexit67 ], [ %457, %474 ], [ %457, %479 ], [ %457, %789 ], [ %457, %493 ], [ %845, %842 ]
  %849 = icmp eq ptr %848, %1
  br i1 %849, label %.loopexit81, label %850

850:                                              ; preds = %.loopexit66
  store i8 0, ptr %848, align 1, !tbaa !36
  br label %.loopexit81

.loopexit81:                                      ; preds = %.loopexit77, %106, %850, %.loopexit66, %.loopexit84, %417, %402, %.loopexit85, %.loopexit82, %92, %87, %16, %9, %3
  %851 = phi ptr [ null, %9 ], [ null, %3 ], [ null, %16 ], [ null, %92 ], [ %1, %850 ], [ null, %.loopexit66 ], [ null, %402 ], [ null, %.loopexit84 ], [ null, %417 ], [ null, %.loopexit85 ], [ null, %.loopexit82 ], [ null, %87 ], [ null, %106 ], [ null, %.loopexit77 ]
  ret ptr %851
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
