; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.gzread.or.ll'
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
  br i1 %4, label %1084, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !8
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1084

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
  br i1 %15, label %1084, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1084

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %.loopexit94, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %.loopexit98, label %26

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

45:                                               ; preds = %455, %26
  %46 = phi i64 [ %456, %455 ], [ %24, %26 ]
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
  %62 = add nsw i64 %61, %59
  store i64 %62, ptr %28, align 8, !tbaa !23
  %63 = sub nsw i64 %46, %59
  store i64 %63, ptr %23, align 8, !tbaa !18
  br label %455

64:                                               ; preds = %45
  %65 = load i32, ptr %29, align 8, !tbaa !24
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %.preheader1009, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %30, align 8, !tbaa !25
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %.loopexit98, label %.preheader1009

.preheader1009:                                   ; preds = %67, %64
  br label %70

70:                                               ; preds = %.backedge, %.preheader1009
  %71 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %71, label %442 [
    i32 0, label %72
    i32 1, label %303
    i32 2, label %345
  ]

72:                                               ; preds = %70
  %73 = load i32, ptr %32, align 8, !tbaa !27
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load i32, ptr %42, align 4, !tbaa !28
  %77 = zext i32 %76 to i64
  %78 = tail call noalias ptr @malloc(i64 noundef %77) #15
  store ptr %78, ptr %37, align 8, !tbaa !29
  %79 = load i32, ptr %42, align 4, !tbaa !28
  %80 = shl i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = tail call noalias ptr @malloc(i64 noundef %81) #15
  store ptr %82, ptr %34, align 8, !tbaa !30
  %83 = icmp eq ptr %78, null
  %84 = icmp eq ptr %82, null
  %85 = or i1 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  tail call void @free(ptr noundef %82) #13
  tail call void @free(ptr noundef %78) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

87:                                               ; preds = %75
  %88 = load i32, ptr %42, align 4, !tbaa !28
  store i32 %88, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %89 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %92) #13
  %93 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %93) #13
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

94:                                               ; preds = %87, %72
  %95 = load i32, ptr %44, align 8, !tbaa !32
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %40, align 4, !tbaa !33
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97, %94
  %101 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  %102 = load i32, ptr %40, align 4, !tbaa !33
  %103 = icmp ne i32 %102, -1
  %104 = zext i1 %103 to i32
  store i32 %104, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %300

105:                                              ; preds = %97
  %106 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %106, label %.loopexit95 [
    i32 0, label %107
    i32 -5, label %107
  ]

107:                                              ; preds = %105, %105
  %108 = load i32, ptr %29, align 8, !tbaa !24
  %109 = icmp eq i32 %108, 0
  %110 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %109, label %111, label %268

111:                                              ; preds = %107
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %214, label %113

113:                                              ; preds = %111
  %114 = load ptr, ptr %37, align 8, !tbaa !29
  %115 = load ptr, ptr %36, align 8, !tbaa !35
  %116 = icmp eq ptr %115, %114
  br i1 %116, label %214, label %117

117:                                              ; preds = %113
  %118 = ptrtoaddr ptr %115 to i64
  %119 = ptrtoaddr ptr %114 to i64
  %120 = zext i32 %110 to i64
  %121 = icmp ult i32 %110, 4
  %122 = sub i64 %119, %118
  %123 = icmp ult i64 %122, 32
  %124 = or i1 %121, %123
  br i1 %124, label %164, label %125

125:                                              ; preds = %117
  %126 = icmp ult i32 %110, 32
  br i1 %126, label %148, label %127

127:                                              ; preds = %125
  %128 = and i64 %120, 4294967264
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi i64 [ 0, %127 ], [ %137, %129 ]
  %131 = getelementptr i8, ptr %114, i64 %130
  %132 = getelementptr i8, ptr %115, i64 %130
  %133 = getelementptr i8, ptr %132, i64 16
  %134 = load <16 x i8>, ptr %132, align 1, !tbaa !36
  %135 = load <16 x i8>, ptr %133, align 1, !tbaa !36
  %136 = getelementptr i8, ptr %131, i64 16
  store <16 x i8> %134, ptr %131, align 1, !tbaa !36
  store <16 x i8> %135, ptr %136, align 1, !tbaa !36
  %137 = add nuw nsw i64 %130, 32
  %138 = icmp eq i64 %137, %128
  br i1 %138, label %139, label %129, !llvm.loop !37

139:                                              ; preds = %129
  %140 = icmp eq i64 %128, %120
  br i1 %140, label %.loopexit87, label %141

141:                                              ; preds = %139
  %142 = trunc nuw i64 %128 to i32
  %143 = sub i32 %110, %142
  %144 = getelementptr i8, ptr %115, i64 %128
  %145 = getelementptr i8, ptr %114, i64 %128
  %146 = and i64 %120, 28
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %164, label %148, !prof !41

148:                                              ; preds = %141, %125
  %149 = phi i64 [ %128, %141 ], [ 0, %125 ]
  %150 = and i64 %120, 4294967292
  br label %151

151:                                              ; preds = %151, %148
  %152 = phi i64 [ %149, %148 ], [ %156, %151 ]
  %153 = getelementptr i8, ptr %114, i64 %152
  %154 = getelementptr i8, ptr %115, i64 %152
  %155 = load <4 x i8>, ptr %154, align 1, !tbaa !36
  store <4 x i8> %155, ptr %153, align 1, !tbaa !36
  %156 = add nuw i64 %152, 4
  %157 = icmp eq i64 %156, %150
  br i1 %157, label %158, label %151, !llvm.loop !42

158:                                              ; preds = %151
  %159 = getelementptr i8, ptr %114, i64 %150
  %160 = getelementptr i8, ptr %115, i64 %150
  %161 = trunc nuw i64 %150 to i32
  %162 = sub i32 %110, %161
  %163 = icmp eq i64 %150, %120
  br i1 %163, label %.loopexit87, label %164

164:                                              ; preds = %158, %141, %117
  %165 = phi ptr [ %114, %117 ], [ %145, %141 ], [ %159, %158 ]
  %166 = phi ptr [ %115, %117 ], [ %144, %141 ], [ %160, %158 ]
  %167 = phi i32 [ %110, %117 ], [ %143, %141 ], [ %162, %158 ]
  %168 = add i32 %167, -1
  %169 = and i32 %167, 7
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %164, %.preheader88
  %171 = phi ptr [ %175, %.preheader88 ], [ %165, %164 ]
  %172 = phi ptr [ %176, %.preheader88 ], [ %166, %164 ]
  %173 = phi i32 [ %177, %.preheader88 ], [ 0, %164 ]
  %174 = load i8, ptr %172, align 1, !tbaa !36
  store i8 %174, ptr %171, align 1, !tbaa !36
  %175 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %176 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %177 = add nuw nsw i32 %173, 1
  %178 = icmp eq i32 %177, %169
  br i1 %178, label %.loopexit89.loopexit, label %.preheader88, !llvm.loop !43

.loopexit89.loopexit:                             ; preds = %.preheader88
  %179 = and i32 %167, -8
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %164
  %180 = phi ptr [ %165, %164 ], [ %175, %.loopexit89.loopexit ]
  %181 = phi ptr [ %166, %164 ], [ %176, %.loopexit89.loopexit ]
  %182 = phi i32 [ %167, %164 ], [ %179, %.loopexit89.loopexit ]
  %183 = icmp ult i32 %168, 7
  br i1 %183, label %.loopexit87, label %.preheader86

.preheader86:                                     ; preds = %.loopexit89, %.preheader86
  %184 = phi ptr [ %210, %.preheader86 ], [ %180, %.loopexit89 ]
  %185 = phi ptr [ %211, %.preheader86 ], [ %181, %.loopexit89 ]
  %186 = phi i32 [ %209, %.preheader86 ], [ %182, %.loopexit89 ]
  %187 = load i8, ptr %185, align 1, !tbaa !36
  store i8 %187, ptr %184, align 1, !tbaa !36
  %188 = getelementptr inbounds nuw i8, ptr %184, i64 1
  %189 = getelementptr inbounds nuw i8, ptr %185, i64 1
  %190 = load i8, ptr %189, align 1, !tbaa !36
  store i8 %190, ptr %188, align 1, !tbaa !36
  %191 = getelementptr inbounds nuw i8, ptr %184, i64 2
  %192 = getelementptr inbounds nuw i8, ptr %185, i64 2
  %193 = load i8, ptr %192, align 1, !tbaa !36
  store i8 %193, ptr %191, align 1, !tbaa !36
  %194 = getelementptr inbounds nuw i8, ptr %184, i64 3
  %195 = getelementptr inbounds nuw i8, ptr %185, i64 3
  %196 = load i8, ptr %195, align 1, !tbaa !36
  store i8 %196, ptr %194, align 1, !tbaa !36
  %197 = getelementptr inbounds nuw i8, ptr %184, i64 4
  %198 = getelementptr inbounds nuw i8, ptr %185, i64 4
  %199 = load i8, ptr %198, align 1, !tbaa !36
  store i8 %199, ptr %197, align 1, !tbaa !36
  %200 = getelementptr inbounds nuw i8, ptr %184, i64 5
  %201 = getelementptr inbounds nuw i8, ptr %185, i64 5
  %202 = load i8, ptr %201, align 1, !tbaa !36
  store i8 %202, ptr %200, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %184, i64 6
  %204 = getelementptr inbounds nuw i8, ptr %185, i64 6
  %205 = load i8, ptr %204, align 1, !tbaa !36
  store i8 %205, ptr %203, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %184, i64 7
  %207 = getelementptr inbounds nuw i8, ptr %185, i64 7
  %208 = load i8, ptr %207, align 1, !tbaa !36
  store i8 %208, ptr %206, align 1, !tbaa !36
  %209 = add i32 %186, -8
  %210 = getelementptr inbounds nuw i8, ptr %184, i64 8
  %211 = getelementptr inbounds nuw i8, ptr %185, i64 8
  %212 = icmp eq i32 %209, 0
  br i1 %212, label %.loopexit87, label %.preheader86, !llvm.loop !45

.loopexit87:                                      ; preds = %.preheader86, %.loopexit89, %158, %139
  %213 = load i32, ptr %30, align 8, !tbaa !34
  br label %214

214:                                              ; preds = %.loopexit87, %113, %111
  %215 = phi i32 [ %213, %.loopexit87 ], [ %110, %113 ], [ 0, %111 ]
  %216 = load i32, ptr %32, align 8, !tbaa !27
  %217 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %216, i32 %215), !nosanitize !20
  %218 = extractvalue { i32, i1 } %217, 1, !nosanitize !20
  br i1 %218, label %219, label %220, !prof !21, !nosanitize !20

219:                                              ; preds = %214
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

220:                                              ; preds = %214
  %221 = extractvalue { i32, i1 } %217, 0, !nosanitize !20
  %222 = load ptr, ptr %37, align 8, !tbaa !29
  %223 = zext i32 %215 to i64
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 %223
  store i32 0, ptr %38, align 4, !tbaa !17
  %225 = tail call ptr @__errno_location() #16
  store i32 0, ptr %225, align 4, !tbaa !4
  br label %226

226:                                              ; preds = %245, %220
  %227 = phi i32 [ 0, %220 ], [ %246, %245 ]
  %228 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %221, i32 %227), !nosanitize !20
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !20
  br i1 %229, label %230, label %231, !prof !21, !nosanitize !20

230:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

231:                                              ; preds = %226
  %232 = extractvalue { i32, i1 } %228, 0, !nosanitize !20
  %233 = tail call i32 @llvm.umin.i32(i32 %232, i32 1073741824)
  %234 = load i32, ptr %39, align 4, !tbaa !46
  %235 = zext i32 %227 to i64
  %236 = getelementptr inbounds nuw i8, ptr %224, i64 %235
  %237 = zext nneg i32 %233 to i64
  %238 = tail call i64 @read(i32 noundef %234, ptr noundef %236, i64 noundef %237) #13
  %239 = trunc i64 %238 to i32
  %240 = icmp slt i32 %239, 1
  br i1 %240, label %248, label %241

241:                                              ; preds = %231
  %242 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %239), !nosanitize !20
  %243 = extractvalue { i32, i1 } %242, 1, !nosanitize !20
  br i1 %243, label %244, label %245, !prof !21, !nosanitize !20

244:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

245:                                              ; preds = %241
  %246 = extractvalue { i32, i1 } %242, 0, !nosanitize !20
  %247 = icmp ult i32 %246, %221
  br i1 %247, label %226, label %.loopexit85, !llvm.loop !47

248:                                              ; preds = %231
  %249 = icmp slt i32 %239, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %248
  %251 = load i32, ptr %225, align 4, !tbaa !4
  %252 = icmp eq i32 %251, 11
  br i1 %252, label %253, label %.loopexit96

253:                                              ; preds = %250
  store i32 1, ptr %38, align 4, !tbaa !17
  %254 = icmp eq i32 %227, 0
  br i1 %254, label %255, label %.loopexit85

255:                                              ; preds = %253
  %256 = load i32, ptr %225, align 4, !tbaa !4
  br label %.loopexit96

257:                                              ; preds = %248
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit85

.loopexit96:                                      ; preds = %250, %255
  %258 = phi i32 [ %256, %255 ], [ %251, %250 ]
  %259 = tail call ptr @strerror(i32 noundef %258) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %259) #13
  br label %.loopexit94

.loopexit85:                                      ; preds = %245, %257, %253
  %260 = phi i32 [ %227, %253 ], [ %227, %257 ], [ %246, %245 ]
  %261 = load i32, ptr %30, align 8, !tbaa !34
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 %260), !nosanitize !20
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !20
  br i1 %263, label %264, label %265, !prof !21, !nosanitize !20

264:                                              ; preds = %.loopexit85
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

265:                                              ; preds = %.loopexit85
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !20
  store i32 %266, ptr %30, align 8, !tbaa !34
  %267 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %267, ptr %36, align 8, !tbaa !35
  br label %268

268:                                              ; preds = %265, %107
  %269 = phi i32 [ %266, %265 ], [ %110, %107 ]
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %300, label %271

271:                                              ; preds = %268
  %272 = load i32, ptr %38, align 4, !tbaa !17
  %273 = icmp ne i32 %272, 0
  %274 = icmp ult i32 %269, 4
  %275 = and i1 %274, %273
  br i1 %275, label %300, label %276

276:                                              ; preds = %271
  %277 = icmp ugt i32 %269, 3
  %278 = load ptr, ptr %36, align 8, !tbaa !35
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
  %295 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %443

296:                                              ; preds = %290, %286, %282, %279, %276
  %297 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %297, ptr %27, align 8, !tbaa !22
  %298 = zext i32 %269 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %297, ptr align 1 %278, i64 %298, i1 false)
  %299 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %299, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %445

300:                                              ; preds = %271, %268, %100
  %301 = load i32, ptr %31, align 8, !tbaa !26
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %.loopexit97, label %443

303:                                              ; preds = %70
  %304 = load ptr, ptr %34, align 8, !tbaa !30
  %305 = load i32, ptr %32, align 8, !tbaa !27
  %306 = shl i32 %305, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %307 = tail call ptr @__errno_location() #16
  store i32 0, ptr %307, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %308

308:                                              ; preds = %328, %303
  %309 = phi i32 [ %329, %328 ], [ 0, %303 ]
  %310 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %306, i32 %309), !nosanitize !20
  %311 = extractvalue { i32, i1 } %310, 1, !nosanitize !20
  br i1 %311, label %312, label %313, !prof !21, !nosanitize !20

312:                                              ; preds = %308
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

313:                                              ; preds = %308
  %314 = extractvalue { i32, i1 } %310, 0, !nosanitize !20
  %315 = tail call i32 @llvm.umin.i32(i32 %314, i32 1073741824)
  %316 = load i32, ptr %39, align 4, !tbaa !46
  %317 = zext i32 %309 to i64
  %318 = getelementptr inbounds nuw i8, ptr %304, i64 %317
  %319 = zext nneg i32 %315 to i64
  %320 = tail call i64 @read(i32 noundef %316, ptr noundef %318, i64 noundef %319) #13
  %321 = trunc i64 %320 to i32
  %322 = icmp slt i32 %321, 1
  br i1 %322, label %331, label %323

323:                                              ; preds = %313
  %324 = load i32, ptr %0, align 4, !tbaa !4
  %325 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %324, i32 %321), !nosanitize !20
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !20
  br i1 %326, label %327, label %328, !prof !21, !nosanitize !20

327:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

328:                                              ; preds = %323
  %329 = extractvalue { i32, i1 } %325, 0, !nosanitize !20
  store i32 %329, ptr %0, align 4, !tbaa !4
  %330 = icmp ult i32 %329, %306
  br i1 %330, label %308, label %.loopexit93, !llvm.loop !47

331:                                              ; preds = %313
  %332 = icmp slt i32 %321, 0
  br i1 %332, label %333, label %341

333:                                              ; preds = %331
  %334 = load i32, ptr %307, align 4, !tbaa !4
  %335 = icmp eq i32 %334, 11
  br i1 %335, label %336, label %.loopexit99

336:                                              ; preds = %333
  store i32 1, ptr %38, align 4, !tbaa !17
  %337 = load i32, ptr %0, align 4, !tbaa !4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %.loopexit93

339:                                              ; preds = %336
  %340 = load i32, ptr %307, align 4, !tbaa !4
  br label %.loopexit99

341:                                              ; preds = %331
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit93

.loopexit99:                                      ; preds = %333, %339
  %342 = phi i32 [ %340, %339 ], [ %334, %333 ]
  %343 = tail call ptr @strerror(i32 noundef %342) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %343) #13
  br label %.loopexit94

.loopexit93:                                      ; preds = %328, %341, %336
  %344 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %344, ptr %27, align 8, !tbaa !22
  br label %.loopexit97

345:                                              ; preds = %70
  %346 = load i32, ptr %32, align 8, !tbaa !27
  %347 = shl i32 %346, 1
  store i32 %347, ptr %33, align 8, !tbaa !48
  %348 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %348, ptr %35, align 8, !tbaa !49
  br label %349

349:                                              ; preds = %426, %345
  %350 = phi i32 [ 0, %345 ], [ %411, %426 ]
  %351 = load i32, ptr %30, align 8, !tbaa !34
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %410

353:                                              ; preds = %349
  %354 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %354, label %.loopexit90 [
    i32 0, label %355
    i32 -5, label %355
  ]

355:                                              ; preds = %353, %353
  %356 = load i32, ptr %29, align 8, !tbaa !24
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %406

358:                                              ; preds = %355
  %359 = load i32, ptr %32, align 8, !tbaa !27
  %360 = load ptr, ptr %37, align 8, !tbaa !29
  store i32 0, ptr %38, align 4, !tbaa !17
  %361 = tail call ptr @__errno_location() #16
  store i32 0, ptr %361, align 4, !tbaa !4
  br label %362

362:                                              ; preds = %381, %358
  %363 = phi i32 [ 0, %358 ], [ %382, %381 ]
  %364 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %359, i32 %363), !nosanitize !20
  %365 = extractvalue { i32, i1 } %364, 1, !nosanitize !20
  br i1 %365, label %366, label %367, !prof !21, !nosanitize !20

366:                                              ; preds = %362
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

367:                                              ; preds = %362
  %368 = extractvalue { i32, i1 } %364, 0, !nosanitize !20
  %369 = tail call i32 @llvm.umin.i32(i32 %368, i32 1073741824)
  %370 = load i32, ptr %39, align 4, !tbaa !46
  %371 = zext i32 %363 to i64
  %372 = getelementptr inbounds nuw i8, ptr %360, i64 %371
  %373 = zext nneg i32 %369 to i64
  %374 = tail call i64 @read(i32 noundef %370, ptr noundef %372, i64 noundef %373) #13
  %375 = trunc i64 %374 to i32
  %376 = icmp slt i32 %375, 1
  br i1 %376, label %384, label %377

377:                                              ; preds = %367
  %378 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %363, i32 %375), !nosanitize !20
  %379 = extractvalue { i32, i1 } %378, 1, !nosanitize !20
  br i1 %379, label %380, label %381, !prof !21, !nosanitize !20

380:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

381:                                              ; preds = %377
  %382 = extractvalue { i32, i1 } %378, 0, !nosanitize !20
  %383 = icmp ult i32 %382, %359
  br i1 %383, label %362, label %.loopexit84, !llvm.loop !47

384:                                              ; preds = %367
  %385 = icmp slt i32 %375, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %384
  %387 = load i32, ptr %361, align 4, !tbaa !4
  %388 = icmp eq i32 %387, 11
  br i1 %388, label %389, label %.loopexit92

389:                                              ; preds = %386
  store i32 1, ptr %38, align 4, !tbaa !17
  %390 = icmp eq i32 %363, 0
  br i1 %390, label %391, label %.loopexit84

391:                                              ; preds = %389
  %392 = load i32, ptr %361, align 4, !tbaa !4
  br label %.loopexit92

393:                                              ; preds = %384
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit84

.loopexit92:                                      ; preds = %386, %391
  %394 = phi i32 [ %392, %391 ], [ %387, %386 ]
  %395 = tail call ptr @strerror(i32 noundef %394) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %395) #13
  %396 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit90

.loopexit84:                                      ; preds = %381, %393, %389
  %397 = phi i32 [ %363, %389 ], [ %363, %393 ], [ %382, %381 ]
  %398 = load i32, ptr %30, align 8, !tbaa !34
  %399 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %398, i32 %397), !nosanitize !20
  %400 = extractvalue { i32, i1 } %399, 1, !nosanitize !20
  br i1 %400, label %401, label %402, !prof !21, !nosanitize !20

401:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

402:                                              ; preds = %.loopexit84
  %403 = extractvalue { i32, i1 } %399, 0, !nosanitize !20
  store i32 %403, ptr %30, align 8, !tbaa !34
  %404 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %404, ptr %36, align 8, !tbaa !35
  %405 = icmp eq i32 %403, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %402, %355
  %407 = load i32, ptr %38, align 4, !tbaa !17
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %.loopexit90

409:                                              ; preds = %406
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit90

410:                                              ; preds = %402, %349
  %411 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %412 = load i32, ptr %33, align 8, !tbaa !48
  %413 = icmp ult i32 %412, %347
  br i1 %413, label %414, label %415

414:                                              ; preds = %410
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %415

415:                                              ; preds = %414, %410
  switch i32 %411, label %426 [
    i32 -2, label %416
    i32 2, label %416
    i32 -4, label %417
    i32 -3, label %418
  ]

416:                                              ; preds = %415, %415
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit90

417:                                              ; preds = %415
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit90

418:                                              ; preds = %415
  %419 = load i32, ptr %40, align 4, !tbaa !33
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %421, label %422

421:                                              ; preds = %418
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %.loopexit90

422:                                              ; preds = %418
  %423 = load ptr, ptr %41, align 8, !tbaa !50
  %424 = icmp eq ptr %423, null
  %425 = select i1 %424, ptr @.str.6, ptr %423
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %425) #13
  br label %.loopexit90

426:                                              ; preds = %415
  %427 = icmp ne i32 %412, 0
  %428 = icmp ne i32 %411, 1
  %429 = select i1 %427, i1 %428, i1 false
  br i1 %429, label %349, label %.loopexit90, !llvm.loop !51

.loopexit90:                                      ; preds = %426, %353, %422, %421, %417, %416, %409, %406, %.loopexit92
  %430 = phi i32 [ %396, %.loopexit92 ], [ %350, %406 ], [ %350, %409 ], [ %411, %416 ], [ -4, %417 ], [ 0, %421 ], [ -3, %422 ], [ %354, %353 ], [ %411, %426 ]
  %431 = load i32, ptr %33, align 8, !tbaa !48
  %432 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %347, i32 %431), !nosanitize !20
  %433 = extractvalue { i32, i1 } %432, 1, !nosanitize !20
  br i1 %433, label %434, label %435, !prof !21, !nosanitize !20

434:                                              ; preds = %.loopexit90
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

435:                                              ; preds = %.loopexit90
  %436 = extractvalue { i32, i1 } %432, 0, !nosanitize !20
  store i32 %436, ptr %0, align 8, !tbaa !19
  %437 = load ptr, ptr %35, align 8, !tbaa !49
  %438 = zext i32 %436 to i64
  %439 = sub nsw i64 0, %438
  %440 = getelementptr inbounds i8, ptr %437, i64 %439
  store ptr %440, ptr %27, align 8, !tbaa !22
  switch i32 %430, label %.loopexit94 [
    i32 1, label %441
    i32 0, label %443
  ]

441:                                              ; preds = %435
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %443

442:                                              ; preds = %70
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit94

443:                                              ; preds = %441, %435, %300, %294
  %444 = load i32, ptr %0, align 8, !tbaa !19
  br label %445

445:                                              ; preds = %443, %296
  %446 = phi i32 [ %444, %443 ], [ %299, %296 ]
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %.loopexit97

448:                                              ; preds = %445
  %449 = load i32, ptr %29, align 8, !tbaa !24
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %.backedge, label %451

451:                                              ; preds = %448
  %452 = load i32, ptr %30, align 8, !tbaa !34
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %.loopexit97, label %.backedge

.backedge:                                        ; preds = %451, %448
  br label %70, !llvm.loop !52

.loopexit97:                                      ; preds = %451, %445, %300, %.loopexit93
  %454 = load i64, ptr %23, align 8, !tbaa !18
  br label %455

455:                                              ; preds = %.loopexit97, %56
  %456 = phi i64 [ %454, %.loopexit97 ], [ %63, %56 ]
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %.loopexit98, label %45, !llvm.loop !53

.loopexit98:                                      ; preds = %455, %67, %22
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

476:                                              ; preds = %1064, %.loopexit98
  %477 = phi ptr [ %1, %.loopexit98 ], [ %1059, %1064 ]
  %478 = phi i64 [ %20, %.loopexit98 ], [ %1060, %1064 ]
  %479 = phi i64 [ 0, %.loopexit98 ], [ %1061, %1064 ]
  %480 = tail call i64 @llvm.umin.i64(i64 %478, i64 4294967295)
  %481 = trunc nuw i64 %480 to i32
  %482 = load i32, ptr %0, align 8, !tbaa !19
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %499, label %484

484:                                              ; preds = %476
  %485 = tail call i32 @llvm.umin.i32(i32 %482, i32 %481)
  %486 = load ptr, ptr %458, align 8, !tbaa !22
  %487 = zext i32 %485 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %477, ptr align 1 %486, i64 %487, i1 false)
  %488 = load ptr, ptr %458, align 8, !tbaa !22
  %489 = getelementptr inbounds nuw i8, ptr %488, i64 %487
  store ptr %489, ptr %458, align 8, !tbaa !22
  %490 = load i32, ptr %0, align 8, !tbaa !19
  %491 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %490, i32 %485), !nosanitize !20
  %492 = extractvalue { i32, i1 } %491, 1, !nosanitize !20
  br i1 %492, label %493, label %494, !prof !21, !nosanitize !20

493:                                              ; preds = %484
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

494:                                              ; preds = %484
  %495 = extractvalue { i32, i1 } %491, 0, !nosanitize !20
  store i32 %495, ptr %0, align 8, !tbaa !19
  %496 = load i32, ptr %10, align 8, !tbaa !16
  %497 = icmp ne i32 %496, 0
  %498 = sext i1 %497 to i32
  br label %1043

499:                                              ; preds = %476
  %500 = load i32, ptr %459, align 8, !tbaa !24
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %499
  %503 = load i32, ptr %460, align 8, !tbaa !25
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %.loopexit82, label %505

505:                                              ; preds = %502, %499
  %506 = load i32, ptr %461, align 8, !tbaa !26
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %.preheader893, label %508

508:                                              ; preds = %505
  %509 = load i32, ptr %462, align 8, !tbaa !27
  %510 = shl i32 %509, 1
  %511 = icmp ugt i32 %510, %481
  br i1 %511, label %.preheader893, label %902

.preheader893:                                    ; preds = %508, %505
  br label %512

512:                                              ; preds = %.preheader893, %897
  %513 = phi i32 [ %898, %897 ], [ %506, %.preheader893 ]
  switch i32 %513, label %885 [
    i32 0, label %514
    i32 1, label %745
    i32 2, label %788
  ]

514:                                              ; preds = %512
  %515 = load i32, ptr %462, align 8, !tbaa !27
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %536

517:                                              ; preds = %514
  %518 = load i32, ptr %473, align 4, !tbaa !28
  %519 = zext i32 %518 to i64
  %520 = tail call noalias ptr @malloc(i64 noundef %519) #15
  store ptr %520, ptr %466, align 8, !tbaa !29
  %521 = load i32, ptr %473, align 4, !tbaa !28
  %522 = shl i32 %521, 1
  %523 = zext i32 %522 to i64
  %524 = tail call noalias ptr @malloc(i64 noundef %523) #15
  store ptr %524, ptr %472, align 8, !tbaa !30
  %525 = icmp eq ptr %520, null
  %526 = icmp eq ptr %524, null
  %527 = or i1 %525, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %517
  tail call void @free(ptr noundef %524) #13
  tail call void @free(ptr noundef %520) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit76

529:                                              ; preds = %517
  %530 = load i32, ptr %473, align 4, !tbaa !28
  store i32 %530, ptr %462, align 8, !tbaa !27
  store i32 0, ptr %460, align 8, !tbaa !25
  store ptr null, ptr %465, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %474, i8 0, i64 24, i1 false)
  %531 = tail call i32 @inflateInit2_(ptr noundef nonnull %465, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %529
  %534 = load ptr, ptr %472, align 8, !tbaa !30
  tail call void @free(ptr noundef %534) #13
  %535 = load ptr, ptr %466, align 8, !tbaa !29
  tail call void @free(ptr noundef %535) #13
  store i32 0, ptr %462, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit76

536:                                              ; preds = %529, %514
  %537 = load i32, ptr %475, align 8, !tbaa !32
  %538 = icmp eq i32 %537, -1
  br i1 %538, label %542, label %539

539:                                              ; preds = %536
  %540 = load i32, ptr %469, align 4, !tbaa !33
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %547

542:                                              ; preds = %539, %536
  %543 = tail call i32 @inflateReset(ptr noundef nonnull %465) #13
  store i32 2, ptr %461, align 8, !tbaa !26
  %544 = load i32, ptr %469, align 4, !tbaa !33
  %545 = icmp ne i32 %544, -1
  %546 = zext i1 %545 to i32
  store i32 %546, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %475, align 8, !tbaa !32
  br label %742

547:                                              ; preds = %539
  %548 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %548, label %.loopexit76 [
    i32 0, label %549
    i32 -5, label %549
  ]

549:                                              ; preds = %547, %547
  %550 = load i32, ptr %459, align 8, !tbaa !24
  %551 = icmp eq i32 %550, 0
  %552 = load i32, ptr %460, align 8, !tbaa !34
  br i1 %551, label %553, label %710

553:                                              ; preds = %549
  %554 = icmp eq i32 %552, 0
  br i1 %554, label %656, label %555

555:                                              ; preds = %553
  %556 = load ptr, ptr %466, align 8, !tbaa !29
  %557 = load ptr, ptr %465, align 8, !tbaa !35
  %558 = icmp eq ptr %557, %556
  br i1 %558, label %656, label %559

559:                                              ; preds = %555
  %560 = ptrtoaddr ptr %557 to i64
  %561 = ptrtoaddr ptr %556 to i64
  %562 = zext i32 %552 to i64
  %563 = icmp ult i32 %552, 4
  %564 = sub i64 %561, %560
  %565 = icmp ult i64 %564, 32
  %566 = or i1 %563, %565
  br i1 %566, label %606, label %567

567:                                              ; preds = %559
  %568 = icmp ult i32 %552, 32
  br i1 %568, label %590, label %569

569:                                              ; preds = %567
  %570 = and i64 %562, 4294967264
  br label %571

571:                                              ; preds = %571, %569
  %572 = phi i64 [ 0, %569 ], [ %579, %571 ]
  %573 = getelementptr i8, ptr %556, i64 %572
  %574 = getelementptr i8, ptr %557, i64 %572
  %575 = getelementptr i8, ptr %574, i64 16
  %576 = load <16 x i8>, ptr %574, align 1, !tbaa !36
  %577 = load <16 x i8>, ptr %575, align 1, !tbaa !36
  %578 = getelementptr i8, ptr %573, i64 16
  store <16 x i8> %576, ptr %573, align 1, !tbaa !36
  store <16 x i8> %577, ptr %578, align 1, !tbaa !36
  %579 = add nuw nsw i64 %572, 32
  %580 = icmp eq i64 %579, %570
  br i1 %580, label %581, label %571, !llvm.loop !54

581:                                              ; preds = %571
  %582 = icmp eq i64 %570, %562
  br i1 %582, label %.loopexit69, label %583

583:                                              ; preds = %581
  %584 = trunc nuw i64 %570 to i32
  %585 = sub i32 %552, %584
  %586 = getelementptr i8, ptr %557, i64 %570
  %587 = getelementptr i8, ptr %556, i64 %570
  %588 = and i64 %562, 28
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %606, label %590, !prof !41

590:                                              ; preds = %583, %567
  %591 = phi i64 [ %570, %583 ], [ 0, %567 ]
  %592 = and i64 %562, 4294967292
  br label %593

593:                                              ; preds = %593, %590
  %594 = phi i64 [ %591, %590 ], [ %598, %593 ]
  %595 = getelementptr i8, ptr %556, i64 %594
  %596 = getelementptr i8, ptr %557, i64 %594
  %597 = load <4 x i8>, ptr %596, align 1, !tbaa !36
  store <4 x i8> %597, ptr %595, align 1, !tbaa !36
  %598 = add nuw i64 %594, 4
  %599 = icmp eq i64 %598, %592
  br i1 %599, label %600, label %593, !llvm.loop !55

600:                                              ; preds = %593
  %601 = getelementptr i8, ptr %556, i64 %592
  %602 = getelementptr i8, ptr %557, i64 %592
  %603 = trunc nuw i64 %592 to i32
  %604 = sub i32 %552, %603
  %605 = icmp eq i64 %592, %562
  br i1 %605, label %.loopexit69, label %606

606:                                              ; preds = %600, %583, %559
  %607 = phi ptr [ %556, %559 ], [ %587, %583 ], [ %601, %600 ]
  %608 = phi ptr [ %557, %559 ], [ %586, %583 ], [ %602, %600 ]
  %609 = phi i32 [ %552, %559 ], [ %585, %583 ], [ %604, %600 ]
  %610 = add i32 %609, -1
  %611 = and i32 %609, 7
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %.loopexit71, label %.preheader70

.preheader70:                                     ; preds = %606, %.preheader70
  %613 = phi ptr [ %617, %.preheader70 ], [ %607, %606 ]
  %614 = phi ptr [ %618, %.preheader70 ], [ %608, %606 ]
  %615 = phi i32 [ %619, %.preheader70 ], [ 0, %606 ]
  %616 = load i8, ptr %614, align 1, !tbaa !36
  store i8 %616, ptr %613, align 1, !tbaa !36
  %617 = getelementptr inbounds nuw i8, ptr %613, i64 1
  %618 = getelementptr inbounds nuw i8, ptr %614, i64 1
  %619 = add nuw nsw i32 %615, 1
  %620 = icmp eq i32 %619, %611
  br i1 %620, label %.loopexit71.loopexit, label %.preheader70, !llvm.loop !56

.loopexit71.loopexit:                             ; preds = %.preheader70
  %621 = and i32 %609, -8
  br label %.loopexit71

.loopexit71:                                      ; preds = %.loopexit71.loopexit, %606
  %622 = phi ptr [ %607, %606 ], [ %617, %.loopexit71.loopexit ]
  %623 = phi ptr [ %608, %606 ], [ %618, %.loopexit71.loopexit ]
  %624 = phi i32 [ %609, %606 ], [ %621, %.loopexit71.loopexit ]
  %625 = icmp ult i32 %610, 7
  br i1 %625, label %.loopexit69, label %.preheader

.preheader:                                       ; preds = %.loopexit71, %.preheader
  %626 = phi ptr [ %652, %.preheader ], [ %622, %.loopexit71 ]
  %627 = phi ptr [ %653, %.preheader ], [ %623, %.loopexit71 ]
  %628 = phi i32 [ %651, %.preheader ], [ %624, %.loopexit71 ]
  %629 = load i8, ptr %627, align 1, !tbaa !36
  store i8 %629, ptr %626, align 1, !tbaa !36
  %630 = getelementptr inbounds nuw i8, ptr %626, i64 1
  %631 = getelementptr inbounds nuw i8, ptr %627, i64 1
  %632 = load i8, ptr %631, align 1, !tbaa !36
  store i8 %632, ptr %630, align 1, !tbaa !36
  %633 = getelementptr inbounds nuw i8, ptr %626, i64 2
  %634 = getelementptr inbounds nuw i8, ptr %627, i64 2
  %635 = load i8, ptr %634, align 1, !tbaa !36
  store i8 %635, ptr %633, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %626, i64 3
  %637 = getelementptr inbounds nuw i8, ptr %627, i64 3
  %638 = load i8, ptr %637, align 1, !tbaa !36
  store i8 %638, ptr %636, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %626, i64 4
  %640 = getelementptr inbounds nuw i8, ptr %627, i64 4
  %641 = load i8, ptr %640, align 1, !tbaa !36
  store i8 %641, ptr %639, align 1, !tbaa !36
  %642 = getelementptr inbounds nuw i8, ptr %626, i64 5
  %643 = getelementptr inbounds nuw i8, ptr %627, i64 5
  %644 = load i8, ptr %643, align 1, !tbaa !36
  store i8 %644, ptr %642, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %626, i64 6
  %646 = getelementptr inbounds nuw i8, ptr %627, i64 6
  %647 = load i8, ptr %646, align 1, !tbaa !36
  store i8 %647, ptr %645, align 1, !tbaa !36
  %648 = getelementptr inbounds nuw i8, ptr %626, i64 7
  %649 = getelementptr inbounds nuw i8, ptr %627, i64 7
  %650 = load i8, ptr %649, align 1, !tbaa !36
  store i8 %650, ptr %648, align 1, !tbaa !36
  %651 = add i32 %628, -8
  %652 = getelementptr inbounds nuw i8, ptr %626, i64 8
  %653 = getelementptr inbounds nuw i8, ptr %627, i64 8
  %654 = icmp eq i32 %651, 0
  br i1 %654, label %.loopexit69, label %.preheader, !llvm.loop !57

.loopexit69:                                      ; preds = %.preheader, %.loopexit71, %600, %581
  %655 = load i32, ptr %460, align 8, !tbaa !34
  br label %656

656:                                              ; preds = %.loopexit69, %555, %553
  %657 = phi i32 [ %655, %.loopexit69 ], [ %552, %555 ], [ 0, %553 ]
  %658 = load i32, ptr %462, align 8, !tbaa !27
  %659 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %658, i32 %657), !nosanitize !20
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !20
  br i1 %660, label %661, label %662, !prof !21, !nosanitize !20

661:                                              ; preds = %656
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

662:                                              ; preds = %656
  %663 = extractvalue { i32, i1 } %659, 0, !nosanitize !20
  %664 = load ptr, ptr %466, align 8, !tbaa !29
  %665 = zext i32 %657 to i64
  %666 = getelementptr inbounds nuw i8, ptr %664, i64 %665
  store i32 0, ptr %467, align 4, !tbaa !17
  %667 = tail call ptr @__errno_location() #16
  store i32 0, ptr %667, align 4, !tbaa !4
  br label %668

668:                                              ; preds = %687, %662
  %669 = phi i32 [ 0, %662 ], [ %688, %687 ]
  %670 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %663, i32 %669), !nosanitize !20
  %671 = extractvalue { i32, i1 } %670, 1, !nosanitize !20
  br i1 %671, label %672, label %673, !prof !21, !nosanitize !20

672:                                              ; preds = %668
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

673:                                              ; preds = %668
  %674 = extractvalue { i32, i1 } %670, 0, !nosanitize !20
  %675 = tail call i32 @llvm.umin.i32(i32 %674, i32 1073741824)
  %676 = load i32, ptr %468, align 4, !tbaa !46
  %677 = zext i32 %669 to i64
  %678 = getelementptr inbounds nuw i8, ptr %666, i64 %677
  %679 = zext nneg i32 %675 to i64
  %680 = tail call i64 @read(i32 noundef %676, ptr noundef %678, i64 noundef %679) #13
  %681 = trunc i64 %680 to i32
  %682 = icmp slt i32 %681, 1
  br i1 %682, label %690, label %683

683:                                              ; preds = %673
  %684 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %669, i32 %681), !nosanitize !20
  %685 = extractvalue { i32, i1 } %684, 1, !nosanitize !20
  br i1 %685, label %686, label %687, !prof !21, !nosanitize !20

686:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

687:                                              ; preds = %683
  %688 = extractvalue { i32, i1 } %684, 0, !nosanitize !20
  %689 = icmp ult i32 %688, %663
  br i1 %689, label %668, label %.loopexit68, !llvm.loop !47

690:                                              ; preds = %673
  %691 = icmp slt i32 %681, 0
  br i1 %691, label %692, label %699

692:                                              ; preds = %690
  %693 = load i32, ptr %667, align 4, !tbaa !4
  %694 = icmp eq i32 %693, 11
  br i1 %694, label %695, label %.loopexit77

695:                                              ; preds = %692
  store i32 1, ptr %467, align 4, !tbaa !17
  %696 = icmp eq i32 %669, 0
  br i1 %696, label %697, label %.loopexit68

697:                                              ; preds = %695
  %698 = load i32, ptr %667, align 4, !tbaa !4
  br label %.loopexit77

699:                                              ; preds = %690
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %.loopexit68

.loopexit77:                                      ; preds = %692, %697
  %700 = phi i32 [ %698, %697 ], [ %693, %692 ]
  %701 = tail call ptr @strerror(i32 noundef %700) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %701) #13
  br label %.loopexit76

.loopexit68:                                      ; preds = %687, %699, %695
  %702 = phi i32 [ %669, %695 ], [ %669, %699 ], [ %688, %687 ]
  %703 = load i32, ptr %460, align 8, !tbaa !34
  %704 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %703, i32 %702), !nosanitize !20
  %705 = extractvalue { i32, i1 } %704, 1, !nosanitize !20
  br i1 %705, label %706, label %707, !prof !21, !nosanitize !20

706:                                              ; preds = %.loopexit68
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

707:                                              ; preds = %.loopexit68
  %708 = extractvalue { i32, i1 } %704, 0, !nosanitize !20
  store i32 %708, ptr %460, align 8, !tbaa !34
  %709 = load ptr, ptr %466, align 8, !tbaa !29
  store ptr %709, ptr %465, align 8, !tbaa !35
  br label %710

710:                                              ; preds = %707, %549
  %711 = phi i32 [ %708, %707 ], [ %552, %549 ]
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %742, label %713

713:                                              ; preds = %710
  %714 = load i32, ptr %467, align 4, !tbaa !17
  %715 = icmp ne i32 %714, 0
  %716 = icmp ult i32 %711, 4
  %717 = and i1 %716, %715
  br i1 %717, label %742, label %718

718:                                              ; preds = %713
  %719 = icmp ugt i32 %711, 3
  %720 = load ptr, ptr %465, align 8, !tbaa !35
  br i1 %719, label %721, label %738

721:                                              ; preds = %718
  %722 = load i8, ptr %720, align 1, !tbaa !36
  %723 = icmp eq i8 %722, 31
  br i1 %723, label %724, label %738

724:                                              ; preds = %721
  %725 = getelementptr inbounds nuw i8, ptr %720, i64 1
  %726 = load i8, ptr %725, align 1, !tbaa !36
  %727 = icmp eq i8 %726, -117
  br i1 %727, label %728, label %738

728:                                              ; preds = %724
  %729 = getelementptr inbounds nuw i8, ptr %720, i64 2
  %730 = load i8, ptr %729, align 1, !tbaa !36
  %731 = icmp eq i8 %730, 8
  br i1 %731, label %732, label %738

732:                                              ; preds = %728
  %733 = getelementptr inbounds nuw i8, ptr %720, i64 3
  %734 = load i8, ptr %733, align 1, !tbaa !36
  %735 = icmp ult i8 %734, 32
  br i1 %735, label %736, label %738

736:                                              ; preds = %732
  %737 = tail call i32 @inflateReset(ptr noundef nonnull %465) #13
  store i32 2, ptr %461, align 8, !tbaa !26
  store i32 1, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %475, align 8, !tbaa !32
  br label %886

738:                                              ; preds = %732, %728, %724, %721, %718
  %739 = load ptr, ptr %472, align 8, !tbaa !30
  store ptr %739, ptr %458, align 8, !tbaa !22
  %740 = zext i32 %711 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %739, ptr align 1 %720, i64 %740, i1 false)
  %741 = load i32, ptr %460, align 8, !tbaa !34
  store i32 %741, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %460, align 8, !tbaa !34
  store i32 1, ptr %461, align 8, !tbaa !26
  br label %888

742:                                              ; preds = %713, %710, %542
  %743 = load i32, ptr %461, align 8, !tbaa !26
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %.loopexit78, label %886

745:                                              ; preds = %512
  %746 = load ptr, ptr %472, align 8, !tbaa !30
  %747 = load i32, ptr %462, align 8, !tbaa !27
  %748 = shl i32 %747, 1
  store i32 0, ptr %467, align 4, !tbaa !17
  %749 = tail call ptr @__errno_location() #16
  store i32 0, ptr %749, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %750

750:                                              ; preds = %770, %745
  %751 = phi i32 [ %771, %770 ], [ 0, %745 ]
  %752 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %748, i32 %751), !nosanitize !20
  %753 = extractvalue { i32, i1 } %752, 1, !nosanitize !20
  br i1 %753, label %754, label %755, !prof !21, !nosanitize !20

754:                                              ; preds = %750
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

755:                                              ; preds = %750
  %756 = extractvalue { i32, i1 } %752, 0, !nosanitize !20
  %757 = tail call i32 @llvm.umin.i32(i32 %756, i32 1073741824)
  %758 = load i32, ptr %468, align 4, !tbaa !46
  %759 = zext i32 %751 to i64
  %760 = getelementptr inbounds nuw i8, ptr %746, i64 %759
  %761 = zext nneg i32 %757 to i64
  %762 = tail call i64 @read(i32 noundef %758, ptr noundef %760, i64 noundef %761) #13
  %763 = trunc i64 %762 to i32
  %764 = icmp slt i32 %763, 1
  br i1 %764, label %773, label %765

765:                                              ; preds = %755
  %766 = load i32, ptr %0, align 4, !tbaa !4
  %767 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %766, i32 %763), !nosanitize !20
  %768 = extractvalue { i32, i1 } %767, 1, !nosanitize !20
  br i1 %768, label %769, label %770, !prof !21, !nosanitize !20

769:                                              ; preds = %765
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

770:                                              ; preds = %765
  %771 = extractvalue { i32, i1 } %767, 0, !nosanitize !20
  store i32 %771, ptr %0, align 4, !tbaa !4
  %772 = icmp ult i32 %771, %748
  br i1 %772, label %750, label %.loopexit75, !llvm.loop !47

773:                                              ; preds = %755
  %774 = icmp slt i32 %763, 0
  br i1 %774, label %775, label %783

775:                                              ; preds = %773
  %776 = load i32, ptr %749, align 4, !tbaa !4
  %777 = icmp eq i32 %776, 11
  br i1 %777, label %778, label %784

778:                                              ; preds = %775
  store i32 1, ptr %467, align 4, !tbaa !17
  %779 = load i32, ptr %0, align 4, !tbaa !4
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %.loopexit75

781:                                              ; preds = %778
  %782 = load i32, ptr %749, align 4, !tbaa !4
  br label %784

783:                                              ; preds = %773
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %.loopexit75

784:                                              ; preds = %781, %775
  %785 = phi i32 [ %782, %781 ], [ %776, %775 ]
  %786 = tail call ptr @strerror(i32 noundef %785) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %786) #13
  br label %.loopexit76

.loopexit75:                                      ; preds = %770, %783, %778
  %787 = load ptr, ptr %472, align 8, !tbaa !30
  store ptr %787, ptr %458, align 8, !tbaa !22
  br label %.loopexit78

788:                                              ; preds = %512
  %789 = load i32, ptr %462, align 8, !tbaa !27
  %790 = shl i32 %789, 1
  store i32 %790, ptr %463, align 8, !tbaa !48
  %791 = load ptr, ptr %472, align 8, !tbaa !30
  store ptr %791, ptr %464, align 8, !tbaa !49
  br label %792

792:                                              ; preds = %869, %788
  %793 = phi i32 [ 0, %788 ], [ %854, %869 ]
  %794 = load i32, ptr %460, align 8, !tbaa !34
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %796, label %853

796:                                              ; preds = %792
  %797 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %797, label %.loopexit72 [
    i32 0, label %798
    i32 -5, label %798
  ]

798:                                              ; preds = %796, %796
  %799 = load i32, ptr %459, align 8, !tbaa !24
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %849

801:                                              ; preds = %798
  %802 = load i32, ptr %462, align 8, !tbaa !27
  %803 = load ptr, ptr %466, align 8, !tbaa !29
  store i32 0, ptr %467, align 4, !tbaa !17
  %804 = tail call ptr @__errno_location() #16
  store i32 0, ptr %804, align 4, !tbaa !4
  br label %805

805:                                              ; preds = %824, %801
  %806 = phi i32 [ 0, %801 ], [ %825, %824 ]
  %807 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %802, i32 %806), !nosanitize !20
  %808 = extractvalue { i32, i1 } %807, 1, !nosanitize !20
  br i1 %808, label %809, label %810, !prof !21, !nosanitize !20

809:                                              ; preds = %805
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

810:                                              ; preds = %805
  %811 = extractvalue { i32, i1 } %807, 0, !nosanitize !20
  %812 = tail call i32 @llvm.umin.i32(i32 %811, i32 1073741824)
  %813 = load i32, ptr %468, align 4, !tbaa !46
  %814 = zext i32 %806 to i64
  %815 = getelementptr inbounds nuw i8, ptr %803, i64 %814
  %816 = zext nneg i32 %812 to i64
  %817 = tail call i64 @read(i32 noundef %813, ptr noundef %815, i64 noundef %816) #13
  %818 = trunc i64 %817 to i32
  %819 = icmp slt i32 %818, 1
  br i1 %819, label %827, label %820

820:                                              ; preds = %810
  %821 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %806, i32 %818), !nosanitize !20
  %822 = extractvalue { i32, i1 } %821, 1, !nosanitize !20
  br i1 %822, label %823, label %824, !prof !21, !nosanitize !20

823:                                              ; preds = %820
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

824:                                              ; preds = %820
  %825 = extractvalue { i32, i1 } %821, 0, !nosanitize !20
  %826 = icmp ult i32 %825, %802
  br i1 %826, label %805, label %.loopexit, !llvm.loop !47

827:                                              ; preds = %810
  %828 = icmp slt i32 %818, 0
  br i1 %828, label %829, label %836

829:                                              ; preds = %827
  %830 = load i32, ptr %804, align 4, !tbaa !4
  %831 = icmp eq i32 %830, 11
  br i1 %831, label %832, label %.loopexit73

832:                                              ; preds = %829
  store i32 1, ptr %467, align 4, !tbaa !17
  %833 = icmp eq i32 %806, 0
  br i1 %833, label %834, label %.loopexit

834:                                              ; preds = %832
  %835 = load i32, ptr %804, align 4, !tbaa !4
  br label %.loopexit73

836:                                              ; preds = %827
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %.loopexit

.loopexit73:                                      ; preds = %829, %834
  %837 = phi i32 [ %835, %834 ], [ %830, %829 ]
  %838 = tail call ptr @strerror(i32 noundef %837) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %838) #13
  %839 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit72

.loopexit:                                        ; preds = %824, %836, %832
  %840 = phi i32 [ %806, %832 ], [ %806, %836 ], [ %825, %824 ]
  %841 = load i32, ptr %460, align 8, !tbaa !34
  %842 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %841, i32 %840), !nosanitize !20
  %843 = extractvalue { i32, i1 } %842, 1, !nosanitize !20
  br i1 %843, label %844, label %845, !prof !21, !nosanitize !20

844:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

845:                                              ; preds = %.loopexit
  %846 = extractvalue { i32, i1 } %842, 0, !nosanitize !20
  store i32 %846, ptr %460, align 8, !tbaa !34
  %847 = load ptr, ptr %466, align 8, !tbaa !29
  store ptr %847, ptr %465, align 8, !tbaa !35
  %848 = icmp eq i32 %846, 0
  br i1 %848, label %849, label %853

849:                                              ; preds = %845, %798
  %850 = load i32, ptr %467, align 4, !tbaa !17
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %852, label %.loopexit72

852:                                              ; preds = %849
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit72

853:                                              ; preds = %845, %792
  %854 = tail call i32 @inflate(ptr noundef nonnull %465, i32 noundef 0) #13
  %855 = load i32, ptr %463, align 8, !tbaa !48
  %856 = icmp ult i32 %855, %790
  br i1 %856, label %857, label %858

857:                                              ; preds = %853
  store i32 0, ptr %469, align 4, !tbaa !33
  br label %858

858:                                              ; preds = %857, %853
  switch i32 %854, label %869 [
    i32 -2, label %859
    i32 2, label %859
    i32 -4, label %860
    i32 -3, label %861
  ]

859:                                              ; preds = %858, %858
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit72

860:                                              ; preds = %858
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit72

861:                                              ; preds = %858
  %862 = load i32, ptr %469, align 4, !tbaa !33
  %863 = icmp eq i32 %862, 1
  br i1 %863, label %864, label %865

864:                                              ; preds = %861
  store i32 0, ptr %460, align 8, !tbaa !34
  store i32 1, ptr %459, align 8, !tbaa !24
  store i32 0, ptr %461, align 8, !tbaa !26
  br label %.loopexit72

865:                                              ; preds = %861
  %866 = load ptr, ptr %470, align 8, !tbaa !50
  %867 = icmp eq ptr %866, null
  %868 = select i1 %867, ptr @.str.6, ptr %866
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %868) #13
  br label %.loopexit72

869:                                              ; preds = %858
  %870 = icmp ne i32 %855, 0
  %871 = icmp ne i32 %854, 1
  %872 = select i1 %870, i1 %871, i1 false
  br i1 %872, label %792, label %.loopexit72, !llvm.loop !51

.loopexit72:                                      ; preds = %869, %796, %865, %864, %860, %859, %852, %849, %.loopexit73
  %873 = phi i32 [ %839, %.loopexit73 ], [ %793, %849 ], [ %793, %852 ], [ %854, %859 ], [ -4, %860 ], [ 0, %864 ], [ -3, %865 ], [ %854, %869 ], [ %797, %796 ]
  %874 = load i32, ptr %463, align 8, !tbaa !48
  %875 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %790, i32 %874), !nosanitize !20
  %876 = extractvalue { i32, i1 } %875, 1, !nosanitize !20
  br i1 %876, label %877, label %878, !prof !21, !nosanitize !20

877:                                              ; preds = %.loopexit72
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

878:                                              ; preds = %.loopexit72
  %879 = extractvalue { i32, i1 } %875, 0, !nosanitize !20
  store i32 %879, ptr %0, align 8, !tbaa !19
  %880 = load ptr, ptr %464, align 8, !tbaa !49
  %881 = zext i32 %879 to i64
  %882 = sub nsw i64 0, %881
  %883 = getelementptr inbounds i8, ptr %880, i64 %882
  store ptr %883, ptr %458, align 8, !tbaa !22
  switch i32 %873, label %.loopexit76 [
    i32 1, label %884
    i32 0, label %886
  ]

884:                                              ; preds = %878
  store i32 0, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %461, align 8, !tbaa !26
  br label %886

885:                                              ; preds = %512
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit76

886:                                              ; preds = %884, %878, %742, %736
  %887 = load i32, ptr %0, align 8, !tbaa !19
  br label %888

888:                                              ; preds = %886, %738
  %889 = phi i32 [ %887, %886 ], [ %741, %738 ]
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %891, label %.loopexit78

891:                                              ; preds = %888
  %892 = load i32, ptr %459, align 8, !tbaa !24
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %897, label %894

894:                                              ; preds = %891
  %895 = load i32, ptr %460, align 8, !tbaa !34
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %.loopexit78, label %897

897:                                              ; preds = %894, %891
  %898 = load i32, ptr %461, align 8, !tbaa !26
  br label %512, !llvm.loop !52

.loopexit76:                                      ; preds = %878, %547, %885, %784, %.loopexit77, %533, %528
  %899 = load i32, ptr %0, align 8, !tbaa !19
  %900 = icmp eq i32 %899, 0
  %901 = sext i1 %900 to i32
  br label %.loopexit78

902:                                              ; preds = %508
  %903 = icmp eq i32 %506, 1
  br i1 %903, label %904, label %941

904:                                              ; preds = %902
  store i32 0, ptr %467, align 4, !tbaa !17
  %905 = tail call ptr @__errno_location() #16
  store i32 0, ptr %905, align 4, !tbaa !4
  br label %906

906:                                              ; preds = %925, %904
  %907 = phi i32 [ 0, %904 ], [ %926, %925 ]
  %908 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %481, i32 %907), !nosanitize !20
  %909 = extractvalue { i32, i1 } %908, 1, !nosanitize !20
  br i1 %909, label %910, label %911, !prof !21, !nosanitize !20

910:                                              ; preds = %906
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

911:                                              ; preds = %906
  %912 = extractvalue { i32, i1 } %908, 0, !nosanitize !20
  %913 = tail call i32 @llvm.umin.i32(i32 %912, i32 1073741824)
  %914 = load i32, ptr %468, align 4, !tbaa !46
  %915 = zext i32 %907 to i64
  %916 = getelementptr inbounds nuw i8, ptr %477, i64 %915
  %917 = zext nneg i32 %913 to i64
  %918 = tail call i64 @read(i32 noundef %914, ptr noundef %916, i64 noundef %917) #13
  %919 = trunc i64 %918 to i32
  %920 = icmp slt i32 %919, 1
  br i1 %920, label %928, label %921

921:                                              ; preds = %911
  %922 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %907, i32 %919), !nosanitize !20
  %923 = extractvalue { i32, i1 } %922, 1, !nosanitize !20
  br i1 %923, label %924, label %925, !prof !21, !nosanitize !20

924:                                              ; preds = %921
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

925:                                              ; preds = %921
  %926 = extractvalue { i32, i1 } %922, 0, !nosanitize !20
  %927 = icmp ult i32 %926, %481
  br i1 %927, label %906, label %1041, !llvm.loop !47

928:                                              ; preds = %911
  %929 = icmp slt i32 %919, 0
  br i1 %929, label %930, label %940

930:                                              ; preds = %928
  %931 = load i32, ptr %905, align 4, !tbaa !4
  %932 = icmp eq i32 %931, 11
  br i1 %932, label %933, label %937

933:                                              ; preds = %930
  store i32 1, ptr %467, align 4, !tbaa !17
  %934 = icmp eq i32 %907, 0
  br i1 %934, label %935, label %1043

935:                                              ; preds = %933
  %936 = load i32, ptr %905, align 4, !tbaa !4
  br label %937

937:                                              ; preds = %935, %930
  %938 = phi i32 [ %936, %935 ], [ %931, %930 ]
  %939 = tail call ptr @strerror(i32 noundef %938) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %939) #13
  br label %1043

940:                                              ; preds = %928
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %1043

941:                                              ; preds = %902
  store i32 %481, ptr %463, align 8, !tbaa !58
  store ptr %477, ptr %464, align 8, !tbaa !59
  br label %942

942:                                              ; preds = %1019, %941
  %943 = phi i32 [ 0, %941 ], [ %1004, %1019 ]
  %944 = load i32, ptr %460, align 8, !tbaa !34
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %946, label %1003

946:                                              ; preds = %942
  %947 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %947, label %.loopexit79 [
    i32 0, label %948
    i32 -5, label %948
  ]

948:                                              ; preds = %946, %946
  %949 = load i32, ptr %459, align 8, !tbaa !24
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %999

951:                                              ; preds = %948
  %952 = load i32, ptr %462, align 8, !tbaa !27
  %953 = load ptr, ptr %466, align 8, !tbaa !29
  store i32 0, ptr %467, align 4, !tbaa !17
  %954 = tail call ptr @__errno_location() #16
  store i32 0, ptr %954, align 4, !tbaa !4
  br label %955

955:                                              ; preds = %974, %951
  %956 = phi i32 [ 0, %951 ], [ %975, %974 ]
  %957 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %952, i32 %956), !nosanitize !20
  %958 = extractvalue { i32, i1 } %957, 1, !nosanitize !20
  br i1 %958, label %959, label %960, !prof !21, !nosanitize !20

959:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

960:                                              ; preds = %955
  %961 = extractvalue { i32, i1 } %957, 0, !nosanitize !20
  %962 = tail call i32 @llvm.umin.i32(i32 %961, i32 1073741824)
  %963 = load i32, ptr %468, align 4, !tbaa !46
  %964 = zext i32 %956 to i64
  %965 = getelementptr inbounds nuw i8, ptr %953, i64 %964
  %966 = zext nneg i32 %962 to i64
  %967 = tail call i64 @read(i32 noundef %963, ptr noundef %965, i64 noundef %966) #13
  %968 = trunc i64 %967 to i32
  %969 = icmp slt i32 %968, 1
  br i1 %969, label %977, label %970

970:                                              ; preds = %960
  %971 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %956, i32 %968), !nosanitize !20
  %972 = extractvalue { i32, i1 } %971, 1, !nosanitize !20
  br i1 %972, label %973, label %974, !prof !21, !nosanitize !20

973:                                              ; preds = %970
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

974:                                              ; preds = %970
  %975 = extractvalue { i32, i1 } %971, 0, !nosanitize !20
  %976 = icmp ult i32 %975, %952
  br i1 %976, label %955, label %.loopexit74, !llvm.loop !47

977:                                              ; preds = %960
  %978 = icmp slt i32 %968, 0
  br i1 %978, label %979, label %986

979:                                              ; preds = %977
  %980 = load i32, ptr %954, align 4, !tbaa !4
  %981 = icmp eq i32 %980, 11
  br i1 %981, label %982, label %.loopexit81

982:                                              ; preds = %979
  store i32 1, ptr %467, align 4, !tbaa !17
  %983 = icmp eq i32 %956, 0
  br i1 %983, label %984, label %.loopexit74

984:                                              ; preds = %982
  %985 = load i32, ptr %954, align 4, !tbaa !4
  br label %.loopexit81

986:                                              ; preds = %977
  store i32 1, ptr %459, align 8, !tbaa !24
  br label %.loopexit74

.loopexit81:                                      ; preds = %979, %984
  %987 = phi i32 [ %985, %984 ], [ %980, %979 ]
  %988 = tail call ptr @strerror(i32 noundef %987) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %988) #13
  %989 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit79

.loopexit74:                                      ; preds = %974, %986, %982
  %990 = phi i32 [ %956, %982 ], [ %956, %986 ], [ %975, %974 ]
  %991 = load i32, ptr %460, align 8, !tbaa !34
  %992 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %991, i32 %990), !nosanitize !20
  %993 = extractvalue { i32, i1 } %992, 1, !nosanitize !20
  br i1 %993, label %994, label %995, !prof !21, !nosanitize !20

994:                                              ; preds = %.loopexit74
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

995:                                              ; preds = %.loopexit74
  %996 = extractvalue { i32, i1 } %992, 0, !nosanitize !20
  store i32 %996, ptr %460, align 8, !tbaa !34
  %997 = load ptr, ptr %466, align 8, !tbaa !29
  store ptr %997, ptr %465, align 8, !tbaa !35
  %998 = icmp eq i32 %996, 0
  br i1 %998, label %999, label %1003

999:                                              ; preds = %995, %948
  %1000 = load i32, ptr %467, align 4, !tbaa !17
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1002, label %.loopexit79

1002:                                             ; preds = %999
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit79

1003:                                             ; preds = %995, %942
  %1004 = tail call i32 @inflate(ptr noundef nonnull %465, i32 noundef 0) #13
  %1005 = load i32, ptr %463, align 8, !tbaa !48
  %1006 = icmp ult i32 %1005, %481
  br i1 %1006, label %1007, label %1008

1007:                                             ; preds = %1003
  store i32 0, ptr %469, align 4, !tbaa !33
  br label %1008

1008:                                             ; preds = %1007, %1003
  switch i32 %1004, label %1019 [
    i32 -2, label %1009
    i32 2, label %1009
    i32 -4, label %1010
    i32 -3, label %1011
  ]

1009:                                             ; preds = %1008, %1008
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit79

1010:                                             ; preds = %1008
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit79

1011:                                             ; preds = %1008
  %1012 = load i32, ptr %469, align 4, !tbaa !33
  %1013 = icmp eq i32 %1012, 1
  br i1 %1013, label %1014, label %1015

1014:                                             ; preds = %1011
  store i32 0, ptr %460, align 8, !tbaa !34
  store i32 1, ptr %459, align 8, !tbaa !24
  store i32 0, ptr %461, align 8, !tbaa !26
  br label %.loopexit79

1015:                                             ; preds = %1011
  %1016 = load ptr, ptr %470, align 8, !tbaa !50
  %1017 = icmp eq ptr %1016, null
  %1018 = select i1 %1017, ptr @.str.6, ptr %1016
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1018) #13
  br label %.loopexit79

1019:                                             ; preds = %1008
  %1020 = icmp ne i32 %1005, 0
  %1021 = icmp ne i32 %1004, 1
  %1022 = select i1 %1020, i1 %1021, i1 false
  br i1 %1022, label %942, label %.loopexit79, !llvm.loop !51

.loopexit79:                                      ; preds = %1019, %946, %1015, %1014, %1010, %1009, %1002, %999, %.loopexit81
  %1023 = phi i32 [ %989, %.loopexit81 ], [ %943, %999 ], [ %943, %1002 ], [ %1004, %1009 ], [ -4, %1010 ], [ 0, %1014 ], [ -3, %1015 ], [ %947, %946 ], [ %1004, %1019 ]
  %1024 = load i32, ptr %463, align 8, !tbaa !48
  %1025 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %481, i32 %1024), !nosanitize !20
  %1026 = extractvalue { i32, i1 } %1025, 1, !nosanitize !20
  br i1 %1026, label %1027, label %1028, !prof !21, !nosanitize !20

1027:                                             ; preds = %.loopexit79
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1028:                                             ; preds = %.loopexit79
  %1029 = extractvalue { i32, i1 } %1025, 0, !nosanitize !20
  %1030 = load ptr, ptr %464, align 8, !tbaa !49
  %1031 = zext i32 %1029 to i64
  %1032 = sub nsw i64 0, %1031
  %1033 = getelementptr inbounds i8, ptr %1030, i64 %1032
  store ptr %1033, ptr %458, align 8, !tbaa !22
  %1034 = icmp eq i32 %1023, 1
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1028
  store i32 0, ptr %469, align 4, !tbaa !33
  store i32 0, ptr %461, align 8, !tbaa !26
  br label %1039

1036:                                             ; preds = %1028
  %1037 = icmp ne i32 %1023, 0
  %1038 = sext i1 %1037 to i32
  br label %1039

1039:                                             ; preds = %1036, %1035
  %1040 = phi i32 [ 0, %1035 ], [ %1038, %1036 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1043

1041:                                             ; preds = %925
  %1042 = zext i32 %926 to i64
  br label %1043

1043:                                             ; preds = %1041, %1039, %940, %937, %933, %494
  %1044 = phi i64 [ %1042, %1041 ], [ %915, %940 ], [ %915, %937 ], [ %915, %933 ], [ %487, %494 ], [ %1031, %1039 ]
  %1045 = phi i32 [ 0, %1041 ], [ 0, %940 ], [ -1, %937 ], [ 0, %933 ], [ %498, %494 ], [ %1040, %1039 ]
  %1046 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %478, i64 %1044), !nosanitize !20
  %1047 = extractvalue { i64, i1 } %1046, 0, !nosanitize !20
  %1048 = extractvalue { i64, i1 } %1046, 1, !nosanitize !20
  br i1 %1048, label %1049, label %1050, !prof !21, !nosanitize !20

1049:                                             ; preds = %1043
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1050:                                             ; preds = %1043
  %1051 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %479, i64 %1044), !nosanitize !20
  %1052 = extractvalue { i64, i1 } %1051, 1, !nosanitize !20
  br i1 %1052, label %1053, label %1054, !prof !21, !nosanitize !20

1053:                                             ; preds = %1050
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1054:                                             ; preds = %1050
  %1055 = extractvalue { i64, i1 } %1051, 0, !nosanitize !20
  %1056 = getelementptr inbounds nuw i8, ptr %477, i64 %1044
  %1057 = load i64, ptr %471, align 8, !tbaa !23
  %1058 = add nsw i64 %1057, %1044
  store i64 %1058, ptr %471, align 8, !tbaa !23
  br label %.loopexit78

.loopexit78:                                      ; preds = %894, %888, %742, %1054, %.loopexit76, %.loopexit75
  %1059 = phi ptr [ %1056, %1054 ], [ %477, %.loopexit76 ], [ %477, %.loopexit75 ], [ %477, %742 ], [ %477, %888 ], [ %477, %894 ]
  %1060 = phi i64 [ %1047, %1054 ], [ %478, %.loopexit76 ], [ %478, %.loopexit75 ], [ %478, %742 ], [ %478, %888 ], [ %478, %894 ]
  %1061 = phi i64 [ %1055, %1054 ], [ %479, %.loopexit76 ], [ %479, %.loopexit75 ], [ %479, %742 ], [ %479, %888 ], [ %479, %894 ]
  %1062 = phi i32 [ %1045, %1054 ], [ %901, %.loopexit76 ], [ 0, %.loopexit75 ], [ 0, %742 ], [ 0, %888 ], [ 0, %894 ]
  %1063 = icmp eq i64 %1060, 0
  br i1 %1063, label %.loopexit83, label %1064

1064:                                             ; preds = %.loopexit78
  %1065 = icmp eq i32 %1062, 0
  br i1 %1065, label %476, label %1066, !llvm.loop !60

1066:                                             ; preds = %1064
  %1067 = load i32, ptr %459, align 8, !tbaa !24
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %.loopexit83, label %.loopexit82

.loopexit82:                                      ; preds = %502, %1066
  %1069 = phi i64 [ %1061, %1066 ], [ %479, %502 ]
  %1070 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1070, align 4, !tbaa !61
  br label %.loopexit83

.loopexit83:                                      ; preds = %.loopexit78, %.loopexit82, %1066
  %1071 = phi i64 [ %1061, %1066 ], [ %1069, %.loopexit82 ], [ %1061, %.loopexit78 ]
  %1072 = trunc i64 %1071 to i32
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %.loopexit94, label %1084

.loopexit94:                                      ; preds = %435, %.loopexit83, %442, %.loopexit99, %.loopexit96, %91, %86, %19
  %1074 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit95

.loopexit95:                                      ; preds = %105, %.loopexit94
  %1075 = phi i32 [ %1074, %.loopexit94 ], [ %106, %105 ]
  switch i32 %1075, label %1084 [
    i32 0, label %1076
    i32 -5, label %1076
  ]

1076:                                             ; preds = %.loopexit95, %.loopexit95
  %1077 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1078 = load i32, ptr %1077, align 4, !tbaa !17
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1084, label %1080

1080:                                             ; preds = %1076
  %1081 = tail call ptr @__errno_location() #16
  %1082 = load i32, ptr %1081, align 4, !tbaa !4
  %1083 = tail call ptr @strerror(i32 noundef %1082) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1083) #13
  br label %1084

1084:                                             ; preds = %1080, %1076, %.loopexit95, %.loopexit83, %18, %12, %5, %3
  %1085 = phi i32 [ -1, %5 ], [ -1, %3 ], [ -1, %18 ], [ -1, %12 ], [ -1, %1080 ], [ -1, %.loopexit95 ], [ 0, %1076 ], [ %1072, %.loopexit83 ]
  ret i32 %1085
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
  br i1 %5, label %1081, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1081

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
  br i1 %16, label %1081, label %17

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
  br label %1081

28:                                               ; preds = %24, %22
  %29 = icmp eq i64 %19, 0
  br i1 %29, label %1081, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !18
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %.loopexit97, label %34

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

53:                                               ; preds = %463, %34
  %54 = phi i64 [ %464, %463 ], [ %32, %34 ]
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
  %70 = add nsw i64 %69, %67
  store i64 %70, ptr %36, align 8, !tbaa !23
  %71 = sub nsw i64 %54, %67
  store i64 %71, ptr %31, align 8, !tbaa !18
  br label %463

72:                                               ; preds = %53
  %73 = load i32, ptr %37, align 8, !tbaa !24
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %.preheader983, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %38, align 8, !tbaa !25
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %.loopexit97, label %.preheader983

.preheader983:                                    ; preds = %75, %72
  br label %78

78:                                               ; preds = %.backedge, %.preheader983
  %79 = load i32, ptr %39, align 8, !tbaa !26
  switch i32 %79, label %450 [
    i32 0, label %80
    i32 1, label %311
    i32 2, label %353
  ]

80:                                               ; preds = %78
  %81 = load i32, ptr %40, align 8, !tbaa !27
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load i32, ptr %50, align 4, !tbaa !28
  %85 = zext i32 %84 to i64
  %86 = tail call noalias ptr @malloc(i64 noundef %85) #15
  store ptr %86, ptr %45, align 8, !tbaa !29
  %87 = load i32, ptr %50, align 4, !tbaa !28
  %88 = shl i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #15
  store ptr %90, ptr %42, align 8, !tbaa !30
  %91 = icmp eq ptr %86, null
  %92 = icmp eq ptr %90, null
  %93 = or i1 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  tail call void @free(ptr noundef %90) #13
  tail call void @free(ptr noundef %86) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit83

95:                                               ; preds = %83
  %96 = load i32, ptr %50, align 4, !tbaa !28
  store i32 %96, ptr %40, align 8, !tbaa !27
  store i32 0, ptr %38, align 8, !tbaa !25
  store ptr null, ptr %44, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %97 = tail call i32 @inflateInit2_(ptr noundef nonnull %44, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %42, align 8, !tbaa !30
  tail call void @free(ptr noundef %100) #13
  %101 = load ptr, ptr %45, align 8, !tbaa !29
  tail call void @free(ptr noundef %101) #13
  store i32 0, ptr %40, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit83

102:                                              ; preds = %95, %80
  %103 = load i32, ptr %52, align 8, !tbaa !32
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %48, align 4, !tbaa !33
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105, %102
  %109 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  %110 = load i32, ptr %48, align 4, !tbaa !33
  %111 = icmp ne i32 %110, -1
  %112 = zext i1 %111 to i32
  store i32 %112, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %308

113:                                              ; preds = %105
  %114 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %114, label %.loopexit83 [
    i32 0, label %115
    i32 -5, label %115
  ]

115:                                              ; preds = %113, %113
  %116 = load i32, ptr %37, align 8, !tbaa !24
  %117 = icmp eq i32 %116, 0
  %118 = load i32, ptr %38, align 8, !tbaa !34
  br i1 %117, label %119, label %276

119:                                              ; preds = %115
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %222, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr %45, align 8, !tbaa !29
  %123 = load ptr, ptr %44, align 8, !tbaa !35
  %124 = icmp eq ptr %123, %122
  br i1 %124, label %222, label %125

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
  %136 = and i64 %128, 4294967264
  br label %137

137:                                              ; preds = %137, %135
  %138 = phi i64 [ 0, %135 ], [ %145, %137 ]
  %139 = getelementptr i8, ptr %122, i64 %138
  %140 = getelementptr i8, ptr %123, i64 %138
  %141 = getelementptr i8, ptr %140, i64 16
  %142 = load <16 x i8>, ptr %140, align 1, !tbaa !36
  %143 = load <16 x i8>, ptr %141, align 1, !tbaa !36
  %144 = getelementptr i8, ptr %139, i64 16
  store <16 x i8> %142, ptr %139, align 1, !tbaa !36
  store <16 x i8> %143, ptr %144, align 1, !tbaa !36
  %145 = add nuw nsw i64 %138, 32
  %146 = icmp eq i64 %145, %136
  br i1 %146, label %147, label %137, !llvm.loop !62

147:                                              ; preds = %137
  %148 = icmp eq i64 %136, %128
  br i1 %148, label %.loopexit87, label %149

149:                                              ; preds = %147
  %150 = trunc nuw i64 %136 to i32
  %151 = sub i32 %118, %150
  %152 = getelementptr i8, ptr %123, i64 %136
  %153 = getelementptr i8, ptr %122, i64 %136
  %154 = and i64 %128, 28
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %172, label %156, !prof !41

156:                                              ; preds = %149, %133
  %157 = phi i64 [ %136, %149 ], [ 0, %133 ]
  %158 = and i64 %128, 4294967292
  br label %159

159:                                              ; preds = %159, %156
  %160 = phi i64 [ %157, %156 ], [ %164, %159 ]
  %161 = getelementptr i8, ptr %122, i64 %160
  %162 = getelementptr i8, ptr %123, i64 %160
  %163 = load <4 x i8>, ptr %162, align 1, !tbaa !36
  store <4 x i8> %163, ptr %161, align 1, !tbaa !36
  %164 = add nuw i64 %160, 4
  %165 = icmp eq i64 %164, %158
  br i1 %165, label %166, label %159, !llvm.loop !63

166:                                              ; preds = %159
  %167 = getelementptr i8, ptr %122, i64 %158
  %168 = getelementptr i8, ptr %123, i64 %158
  %169 = trunc nuw i64 %158 to i32
  %170 = sub i32 %118, %169
  %171 = icmp eq i64 %158, %128
  br i1 %171, label %.loopexit87, label %172

172:                                              ; preds = %166, %149, %125
  %173 = phi ptr [ %122, %125 ], [ %153, %149 ], [ %167, %166 ]
  %174 = phi ptr [ %123, %125 ], [ %152, %149 ], [ %168, %166 ]
  %175 = phi i32 [ %118, %125 ], [ %151, %149 ], [ %170, %166 ]
  %176 = add i32 %175, -1
  %177 = and i32 %175, 7
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %172, %.preheader88
  %179 = phi ptr [ %183, %.preheader88 ], [ %173, %172 ]
  %180 = phi ptr [ %184, %.preheader88 ], [ %174, %172 ]
  %181 = phi i32 [ %185, %.preheader88 ], [ 0, %172 ]
  %182 = load i8, ptr %180, align 1, !tbaa !36
  store i8 %182, ptr %179, align 1, !tbaa !36
  %183 = getelementptr inbounds nuw i8, ptr %179, i64 1
  %184 = getelementptr inbounds nuw i8, ptr %180, i64 1
  %185 = add nuw nsw i32 %181, 1
  %186 = icmp eq i32 %185, %177
  br i1 %186, label %.loopexit89.loopexit, label %.preheader88, !llvm.loop !64

.loopexit89.loopexit:                             ; preds = %.preheader88
  %187 = and i32 %175, -8
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %172
  %188 = phi ptr [ %173, %172 ], [ %183, %.loopexit89.loopexit ]
  %189 = phi ptr [ %174, %172 ], [ %184, %.loopexit89.loopexit ]
  %190 = phi i32 [ %175, %172 ], [ %187, %.loopexit89.loopexit ]
  %191 = icmp ult i32 %176, 7
  br i1 %191, label %.loopexit87, label %.preheader86

.preheader86:                                     ; preds = %.loopexit89, %.preheader86
  %192 = phi ptr [ %218, %.preheader86 ], [ %188, %.loopexit89 ]
  %193 = phi ptr [ %219, %.preheader86 ], [ %189, %.loopexit89 ]
  %194 = phi i32 [ %217, %.preheader86 ], [ %190, %.loopexit89 ]
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
  br i1 %220, label %.loopexit87, label %.preheader86, !llvm.loop !65

.loopexit87:                                      ; preds = %.preheader86, %.loopexit89, %166, %147
  %221 = load i32, ptr %38, align 8, !tbaa !34
  br label %222

222:                                              ; preds = %.loopexit87, %121, %119
  %223 = phi i32 [ %221, %.loopexit87 ], [ %118, %121 ], [ 0, %119 ]
  %224 = load i32, ptr %40, align 8, !tbaa !27
  %225 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %224, i32 %223), !nosanitize !20
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !20
  br i1 %226, label %227, label %228, !prof !21, !nosanitize !20

227:                                              ; preds = %222
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

228:                                              ; preds = %222
  %229 = extractvalue { i32, i1 } %225, 0, !nosanitize !20
  %230 = load ptr, ptr %45, align 8, !tbaa !29
  %231 = zext i32 %223 to i64
  %232 = getelementptr inbounds nuw i8, ptr %230, i64 %231
  store i32 0, ptr %46, align 4, !tbaa !17
  %233 = tail call ptr @__errno_location() #16
  store i32 0, ptr %233, align 4, !tbaa !4
  br label %234

234:                                              ; preds = %253, %228
  %235 = phi i32 [ 0, %228 ], [ %254, %253 ]
  %236 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %229, i32 %235), !nosanitize !20
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !20
  br i1 %237, label %238, label %239, !prof !21, !nosanitize !20

238:                                              ; preds = %234
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

239:                                              ; preds = %234
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !20
  %241 = tail call i32 @llvm.umin.i32(i32 %240, i32 1073741824)
  %242 = load i32, ptr %47, align 4, !tbaa !46
  %243 = zext i32 %235 to i64
  %244 = getelementptr inbounds nuw i8, ptr %232, i64 %243
  %245 = zext nneg i32 %241 to i64
  %246 = tail call i64 @read(i32 noundef %242, ptr noundef %244, i64 noundef %245) #13
  %247 = trunc i64 %246 to i32
  %248 = icmp slt i32 %247, 1
  br i1 %248, label %256, label %249

249:                                              ; preds = %239
  %250 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %235, i32 %247), !nosanitize !20
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !20
  br i1 %251, label %252, label %253, !prof !21, !nosanitize !20

252:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

253:                                              ; preds = %249
  %254 = extractvalue { i32, i1 } %250, 0, !nosanitize !20
  %255 = icmp ult i32 %254, %229
  br i1 %255, label %234, label %.loopexit85, !llvm.loop !47

256:                                              ; preds = %239
  %257 = icmp slt i32 %247, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %256
  %259 = load i32, ptr %233, align 4, !tbaa !4
  %260 = icmp eq i32 %259, 11
  br i1 %260, label %261, label %.loopexit95

261:                                              ; preds = %258
  store i32 1, ptr %46, align 4, !tbaa !17
  %262 = icmp eq i32 %235, 0
  br i1 %262, label %263, label %.loopexit85

263:                                              ; preds = %261
  %264 = load i32, ptr %233, align 4, !tbaa !4
  br label %.loopexit95

265:                                              ; preds = %256
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit85

.loopexit95:                                      ; preds = %258, %263
  %266 = phi i32 [ %264, %263 ], [ %259, %258 ]
  %267 = tail call ptr @strerror(i32 noundef %266) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %267) #13
  br label %.loopexit83

.loopexit85:                                      ; preds = %253, %265, %261
  %268 = phi i32 [ %235, %261 ], [ %235, %265 ], [ %254, %253 ]
  %269 = load i32, ptr %38, align 8, !tbaa !34
  %270 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %269, i32 %268), !nosanitize !20
  %271 = extractvalue { i32, i1 } %270, 1, !nosanitize !20
  br i1 %271, label %272, label %273, !prof !21, !nosanitize !20

272:                                              ; preds = %.loopexit85
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

273:                                              ; preds = %.loopexit85
  %274 = extractvalue { i32, i1 } %270, 0, !nosanitize !20
  store i32 %274, ptr %38, align 8, !tbaa !34
  %275 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %275, ptr %44, align 8, !tbaa !35
  br label %276

276:                                              ; preds = %273, %115
  %277 = phi i32 [ %274, %273 ], [ %118, %115 ]
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %308, label %279

279:                                              ; preds = %276
  %280 = load i32, ptr %46, align 4, !tbaa !17
  %281 = icmp ne i32 %280, 0
  %282 = icmp ult i32 %277, 4
  %283 = and i1 %282, %281
  br i1 %283, label %308, label %284

284:                                              ; preds = %279
  %285 = icmp ugt i32 %277, 3
  %286 = load ptr, ptr %44, align 8, !tbaa !35
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
  %303 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %451

304:                                              ; preds = %298, %294, %290, %287, %284
  %305 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %305, ptr %35, align 8, !tbaa !22
  %306 = zext i32 %277 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %305, ptr align 1 %286, i64 %306, i1 false)
  %307 = load i32, ptr %38, align 8, !tbaa !34
  store i32 %307, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !26
  br label %453

308:                                              ; preds = %279, %276, %108
  %309 = load i32, ptr %39, align 8, !tbaa !26
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %.loopexit96, label %451

311:                                              ; preds = %78
  %312 = load ptr, ptr %42, align 8, !tbaa !30
  %313 = load i32, ptr %40, align 8, !tbaa !27
  %314 = shl i32 %313, 1
  store i32 0, ptr %46, align 4, !tbaa !17
  %315 = tail call ptr @__errno_location() #16
  store i32 0, ptr %315, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %316

316:                                              ; preds = %336, %311
  %317 = phi i32 [ %337, %336 ], [ 0, %311 ]
  %318 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %314, i32 %317), !nosanitize !20
  %319 = extractvalue { i32, i1 } %318, 1, !nosanitize !20
  br i1 %319, label %320, label %321, !prof !21, !nosanitize !20

320:                                              ; preds = %316
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

321:                                              ; preds = %316
  %322 = extractvalue { i32, i1 } %318, 0, !nosanitize !20
  %323 = tail call i32 @llvm.umin.i32(i32 %322, i32 1073741824)
  %324 = load i32, ptr %47, align 4, !tbaa !46
  %325 = zext i32 %317 to i64
  %326 = getelementptr inbounds nuw i8, ptr %312, i64 %325
  %327 = zext nneg i32 %323 to i64
  %328 = tail call i64 @read(i32 noundef %324, ptr noundef %326, i64 noundef %327) #13
  %329 = trunc i64 %328 to i32
  %330 = icmp slt i32 %329, 1
  br i1 %330, label %339, label %331

331:                                              ; preds = %321
  %332 = load i32, ptr %3, align 4, !tbaa !4
  %333 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %332, i32 %329), !nosanitize !20
  %334 = extractvalue { i32, i1 } %333, 1, !nosanitize !20
  br i1 %334, label %335, label %336, !prof !21, !nosanitize !20

335:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

336:                                              ; preds = %331
  %337 = extractvalue { i32, i1 } %333, 0, !nosanitize !20
  store i32 %337, ptr %3, align 4, !tbaa !4
  %338 = icmp ult i32 %337, %314
  br i1 %338, label %316, label %.loopexit93, !llvm.loop !47

339:                                              ; preds = %321
  %340 = icmp slt i32 %329, 0
  br i1 %340, label %341, label %349

341:                                              ; preds = %339
  %342 = load i32, ptr %315, align 4, !tbaa !4
  %343 = icmp eq i32 %342, 11
  br i1 %343, label %344, label %.loopexit98

344:                                              ; preds = %341
  store i32 1, ptr %46, align 4, !tbaa !17
  %345 = load i32, ptr %3, align 4, !tbaa !4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %.loopexit93

347:                                              ; preds = %344
  %348 = load i32, ptr %315, align 4, !tbaa !4
  br label %.loopexit98

349:                                              ; preds = %339
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit93

.loopexit98:                                      ; preds = %341, %347
  %350 = phi i32 [ %348, %347 ], [ %342, %341 ]
  %351 = tail call ptr @strerror(i32 noundef %350) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %351) #13
  br label %.loopexit83

.loopexit93:                                      ; preds = %336, %349, %344
  %352 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %352, ptr %35, align 8, !tbaa !22
  br label %.loopexit96

353:                                              ; preds = %78
  %354 = load i32, ptr %40, align 8, !tbaa !27
  %355 = shl i32 %354, 1
  store i32 %355, ptr %41, align 8, !tbaa !48
  %356 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %356, ptr %43, align 8, !tbaa !49
  br label %357

357:                                              ; preds = %434, %353
  %358 = phi i32 [ 0, %353 ], [ %419, %434 ]
  %359 = load i32, ptr %38, align 8, !tbaa !34
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %418

361:                                              ; preds = %357
  %362 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %362, label %.loopexit90 [
    i32 0, label %363
    i32 -5, label %363
  ]

363:                                              ; preds = %361, %361
  %364 = load i32, ptr %37, align 8, !tbaa !24
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %414

366:                                              ; preds = %363
  %367 = load i32, ptr %40, align 8, !tbaa !27
  %368 = load ptr, ptr %45, align 8, !tbaa !29
  store i32 0, ptr %46, align 4, !tbaa !17
  %369 = tail call ptr @__errno_location() #16
  store i32 0, ptr %369, align 4, !tbaa !4
  br label %370

370:                                              ; preds = %389, %366
  %371 = phi i32 [ 0, %366 ], [ %390, %389 ]
  %372 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %367, i32 %371), !nosanitize !20
  %373 = extractvalue { i32, i1 } %372, 1, !nosanitize !20
  br i1 %373, label %374, label %375, !prof !21, !nosanitize !20

374:                                              ; preds = %370
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

375:                                              ; preds = %370
  %376 = extractvalue { i32, i1 } %372, 0, !nosanitize !20
  %377 = tail call i32 @llvm.umin.i32(i32 %376, i32 1073741824)
  %378 = load i32, ptr %47, align 4, !tbaa !46
  %379 = zext i32 %371 to i64
  %380 = getelementptr inbounds nuw i8, ptr %368, i64 %379
  %381 = zext nneg i32 %377 to i64
  %382 = tail call i64 @read(i32 noundef %378, ptr noundef %380, i64 noundef %381) #13
  %383 = trunc i64 %382 to i32
  %384 = icmp slt i32 %383, 1
  br i1 %384, label %392, label %385

385:                                              ; preds = %375
  %386 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %371, i32 %383), !nosanitize !20
  %387 = extractvalue { i32, i1 } %386, 1, !nosanitize !20
  br i1 %387, label %388, label %389, !prof !21, !nosanitize !20

388:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

389:                                              ; preds = %385
  %390 = extractvalue { i32, i1 } %386, 0, !nosanitize !20
  %391 = icmp ult i32 %390, %367
  br i1 %391, label %370, label %.loopexit84, !llvm.loop !47

392:                                              ; preds = %375
  %393 = icmp slt i32 %383, 0
  br i1 %393, label %394, label %401

394:                                              ; preds = %392
  %395 = load i32, ptr %369, align 4, !tbaa !4
  %396 = icmp eq i32 %395, 11
  br i1 %396, label %397, label %.loopexit92

397:                                              ; preds = %394
  store i32 1, ptr %46, align 4, !tbaa !17
  %398 = icmp eq i32 %371, 0
  br i1 %398, label %399, label %.loopexit84

399:                                              ; preds = %397
  %400 = load i32, ptr %369, align 4, !tbaa !4
  br label %.loopexit92

401:                                              ; preds = %392
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit84

.loopexit92:                                      ; preds = %394, %399
  %402 = phi i32 [ %400, %399 ], [ %395, %394 ]
  %403 = tail call ptr @strerror(i32 noundef %402) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %403) #13
  %404 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit90

.loopexit84:                                      ; preds = %389, %401, %397
  %405 = phi i32 [ %371, %397 ], [ %371, %401 ], [ %390, %389 ]
  %406 = load i32, ptr %38, align 8, !tbaa !34
  %407 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %406, i32 %405), !nosanitize !20
  %408 = extractvalue { i32, i1 } %407, 1, !nosanitize !20
  br i1 %408, label %409, label %410, !prof !21, !nosanitize !20

409:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

410:                                              ; preds = %.loopexit84
  %411 = extractvalue { i32, i1 } %407, 0, !nosanitize !20
  store i32 %411, ptr %38, align 8, !tbaa !34
  %412 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %412, ptr %44, align 8, !tbaa !35
  %413 = icmp eq i32 %411, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %410, %363
  %415 = load i32, ptr %46, align 4, !tbaa !17
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %.loopexit90

417:                                              ; preds = %414
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit90

418:                                              ; preds = %410, %357
  %419 = tail call i32 @inflate(ptr noundef nonnull %44, i32 noundef 0) #13
  %420 = load i32, ptr %41, align 8, !tbaa !48
  %421 = icmp ult i32 %420, %355
  br i1 %421, label %422, label %423

422:                                              ; preds = %418
  store i32 0, ptr %48, align 4, !tbaa !33
  br label %423

423:                                              ; preds = %422, %418
  switch i32 %419, label %434 [
    i32 -2, label %424
    i32 2, label %424
    i32 -4, label %425
    i32 -3, label %426
  ]

424:                                              ; preds = %423, %423
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit90

425:                                              ; preds = %423
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit90

426:                                              ; preds = %423
  %427 = load i32, ptr %48, align 4, !tbaa !33
  %428 = icmp eq i32 %427, 1
  br i1 %428, label %429, label %430

429:                                              ; preds = %426
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !24
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %.loopexit90

430:                                              ; preds = %426
  %431 = load ptr, ptr %49, align 8, !tbaa !50
  %432 = icmp eq ptr %431, null
  %433 = select i1 %432, ptr @.str.6, ptr %431
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %433) #13
  br label %.loopexit90

434:                                              ; preds = %423
  %435 = icmp ne i32 %420, 0
  %436 = icmp ne i32 %419, 1
  %437 = select i1 %435, i1 %436, i1 false
  br i1 %437, label %357, label %.loopexit90, !llvm.loop !51

.loopexit90:                                      ; preds = %434, %361, %430, %429, %425, %424, %417, %414, %.loopexit92
  %438 = phi i32 [ %404, %.loopexit92 ], [ %358, %414 ], [ %358, %417 ], [ %419, %424 ], [ -4, %425 ], [ 0, %429 ], [ -3, %430 ], [ %362, %361 ], [ %419, %434 ]
  %439 = load i32, ptr %41, align 8, !tbaa !48
  %440 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %355, i32 %439), !nosanitize !20
  %441 = extractvalue { i32, i1 } %440, 1, !nosanitize !20
  br i1 %441, label %442, label %443, !prof !21, !nosanitize !20

442:                                              ; preds = %.loopexit90
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

443:                                              ; preds = %.loopexit90
  %444 = extractvalue { i32, i1 } %440, 0, !nosanitize !20
  store i32 %444, ptr %3, align 8, !tbaa !19
  %445 = load ptr, ptr %43, align 8, !tbaa !49
  %446 = zext i32 %444 to i64
  %447 = sub nsw i64 0, %446
  %448 = getelementptr inbounds i8, ptr %445, i64 %447
  store ptr %448, ptr %35, align 8, !tbaa !22
  switch i32 %438, label %.loopexit83 [
    i32 1, label %449
    i32 0, label %451
  ]

449:                                              ; preds = %443
  store i32 0, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %451

450:                                              ; preds = %78
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit83

451:                                              ; preds = %449, %443, %308, %302
  %452 = load i32, ptr %3, align 8, !tbaa !19
  br label %453

453:                                              ; preds = %451, %304
  %454 = phi i32 [ %452, %451 ], [ %307, %304 ]
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %.loopexit96

456:                                              ; preds = %453
  %457 = load i32, ptr %37, align 8, !tbaa !24
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %.backedge, label %459

459:                                              ; preds = %456
  %460 = load i32, ptr %38, align 8, !tbaa !34
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %.loopexit96, label %.backedge

.backedge:                                        ; preds = %459, %456
  br label %78, !llvm.loop !52

.loopexit96:                                      ; preds = %459, %453, %308, %.loopexit93
  %462 = load i64, ptr %31, align 8, !tbaa !18
  br label %463

463:                                              ; preds = %.loopexit96, %64
  %464 = phi i64 [ %462, %.loopexit96 ], [ %71, %64 ]
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %.loopexit97, label %53, !llvm.loop !53

.loopexit97:                                      ; preds = %463, %75, %30
  %466 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %467 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %468 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %469 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %470 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %471 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %472 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %473 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %474 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %475 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %476 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %477 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %478 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %479 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %480 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %481 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %482 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %483 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %484

484:                                              ; preds = %1072, %.loopexit97
  %485 = phi ptr [ %0, %.loopexit97 ], [ %1067, %1072 ]
  %486 = phi i64 [ %19, %.loopexit97 ], [ %1068, %1072 ]
  %487 = phi i64 [ 0, %.loopexit97 ], [ %1069, %1072 ]
  %488 = tail call i64 @llvm.umin.i64(i64 %486, i64 4294967295)
  %489 = trunc nuw i64 %488 to i32
  %490 = load i32, ptr %3, align 8, !tbaa !19
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %507, label %492

492:                                              ; preds = %484
  %493 = tail call i32 @llvm.umin.i32(i32 %490, i32 %489)
  %494 = load ptr, ptr %466, align 8, !tbaa !22
  %495 = zext i32 %493 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %485, ptr align 1 %494, i64 %495, i1 false)
  %496 = load ptr, ptr %466, align 8, !tbaa !22
  %497 = getelementptr inbounds nuw i8, ptr %496, i64 %495
  store ptr %497, ptr %466, align 8, !tbaa !22
  %498 = load i32, ptr %3, align 8, !tbaa !19
  %499 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 %493), !nosanitize !20
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !20
  br i1 %500, label %501, label %502, !prof !21, !nosanitize !20

501:                                              ; preds = %492
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

502:                                              ; preds = %492
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !20
  store i32 %503, ptr %3, align 8, !tbaa !19
  %504 = load i32, ptr %11, align 8, !tbaa !16
  %505 = icmp ne i32 %504, 0
  %506 = sext i1 %505 to i32
  br label %1051

507:                                              ; preds = %484
  %508 = load i32, ptr %467, align 8, !tbaa !24
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %513, label %510

510:                                              ; preds = %507
  %511 = load i32, ptr %468, align 8, !tbaa !25
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %.loopexit82, label %513

513:                                              ; preds = %510, %507
  %514 = load i32, ptr %469, align 8, !tbaa !26
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %.preheader867, label %516

516:                                              ; preds = %513
  %517 = load i32, ptr %470, align 8, !tbaa !27
  %518 = shl i32 %517, 1
  %519 = icmp ugt i32 %518, %489
  br i1 %519, label %.preheader867, label %910

.preheader867:                                    ; preds = %516, %513
  br label %520

520:                                              ; preds = %.preheader867, %905
  %521 = phi i32 [ %906, %905 ], [ %514, %.preheader867 ]
  switch i32 %521, label %893 [
    i32 0, label %522
    i32 1, label %753
    i32 2, label %796
  ]

522:                                              ; preds = %520
  %523 = load i32, ptr %470, align 8, !tbaa !27
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %544

525:                                              ; preds = %522
  %526 = load i32, ptr %481, align 4, !tbaa !28
  %527 = zext i32 %526 to i64
  %528 = tail call noalias ptr @malloc(i64 noundef %527) #15
  store ptr %528, ptr %474, align 8, !tbaa !29
  %529 = load i32, ptr %481, align 4, !tbaa !28
  %530 = shl i32 %529, 1
  %531 = zext i32 %530 to i64
  %532 = tail call noalias ptr @malloc(i64 noundef %531) #15
  store ptr %532, ptr %480, align 8, !tbaa !30
  %533 = icmp eq ptr %528, null
  %534 = icmp eq ptr %532, null
  %535 = or i1 %533, %534
  br i1 %535, label %536, label %537

536:                                              ; preds = %525
  tail call void @free(ptr noundef %532) #13
  tail call void @free(ptr noundef %528) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit76

537:                                              ; preds = %525
  %538 = load i32, ptr %481, align 4, !tbaa !28
  store i32 %538, ptr %470, align 8, !tbaa !27
  store i32 0, ptr %468, align 8, !tbaa !25
  store ptr null, ptr %473, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %482, i8 0, i64 24, i1 false)
  %539 = tail call i32 @inflateInit2_(ptr noundef nonnull %473, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %544, label %541

541:                                              ; preds = %537
  %542 = load ptr, ptr %480, align 8, !tbaa !30
  tail call void @free(ptr noundef %542) #13
  %543 = load ptr, ptr %474, align 8, !tbaa !29
  tail call void @free(ptr noundef %543) #13
  store i32 0, ptr %470, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit76

544:                                              ; preds = %537, %522
  %545 = load i32, ptr %483, align 8, !tbaa !32
  %546 = icmp eq i32 %545, -1
  br i1 %546, label %550, label %547

547:                                              ; preds = %544
  %548 = load i32, ptr %477, align 4, !tbaa !33
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %555

550:                                              ; preds = %547, %544
  %551 = tail call i32 @inflateReset(ptr noundef nonnull %473) #13
  store i32 2, ptr %469, align 8, !tbaa !26
  %552 = load i32, ptr %477, align 4, !tbaa !33
  %553 = icmp ne i32 %552, -1
  %554 = zext i1 %553 to i32
  store i32 %554, ptr %477, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !32
  br label %750

555:                                              ; preds = %547
  %556 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %556, label %.loopexit76 [
    i32 0, label %557
    i32 -5, label %557
  ]

557:                                              ; preds = %555, %555
  %558 = load i32, ptr %467, align 8, !tbaa !24
  %559 = icmp eq i32 %558, 0
  %560 = load i32, ptr %468, align 8, !tbaa !34
  br i1 %559, label %561, label %718

561:                                              ; preds = %557
  %562 = icmp eq i32 %560, 0
  br i1 %562, label %664, label %563

563:                                              ; preds = %561
  %564 = load ptr, ptr %474, align 8, !tbaa !29
  %565 = load ptr, ptr %473, align 8, !tbaa !35
  %566 = icmp eq ptr %565, %564
  br i1 %566, label %664, label %567

567:                                              ; preds = %563
  %568 = ptrtoaddr ptr %565 to i64
  %569 = ptrtoaddr ptr %564 to i64
  %570 = zext i32 %560 to i64
  %571 = icmp ult i32 %560, 4
  %572 = sub i64 %569, %568
  %573 = icmp ult i64 %572, 32
  %574 = or i1 %571, %573
  br i1 %574, label %614, label %575

575:                                              ; preds = %567
  %576 = icmp ult i32 %560, 32
  br i1 %576, label %598, label %577

577:                                              ; preds = %575
  %578 = and i64 %570, 4294967264
  br label %579

579:                                              ; preds = %579, %577
  %580 = phi i64 [ 0, %577 ], [ %587, %579 ]
  %581 = getelementptr i8, ptr %564, i64 %580
  %582 = getelementptr i8, ptr %565, i64 %580
  %583 = getelementptr i8, ptr %582, i64 16
  %584 = load <16 x i8>, ptr %582, align 1, !tbaa !36
  %585 = load <16 x i8>, ptr %583, align 1, !tbaa !36
  %586 = getelementptr i8, ptr %581, i64 16
  store <16 x i8> %584, ptr %581, align 1, !tbaa !36
  store <16 x i8> %585, ptr %586, align 1, !tbaa !36
  %587 = add nuw nsw i64 %580, 32
  %588 = icmp eq i64 %587, %578
  br i1 %588, label %589, label %579, !llvm.loop !66

589:                                              ; preds = %579
  %590 = icmp eq i64 %578, %570
  br i1 %590, label %.loopexit69, label %591

591:                                              ; preds = %589
  %592 = trunc nuw i64 %578 to i32
  %593 = sub i32 %560, %592
  %594 = getelementptr i8, ptr %565, i64 %578
  %595 = getelementptr i8, ptr %564, i64 %578
  %596 = and i64 %570, 28
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %614, label %598, !prof !41

598:                                              ; preds = %591, %575
  %599 = phi i64 [ %578, %591 ], [ 0, %575 ]
  %600 = and i64 %570, 4294967292
  br label %601

601:                                              ; preds = %601, %598
  %602 = phi i64 [ %599, %598 ], [ %606, %601 ]
  %603 = getelementptr i8, ptr %564, i64 %602
  %604 = getelementptr i8, ptr %565, i64 %602
  %605 = load <4 x i8>, ptr %604, align 1, !tbaa !36
  store <4 x i8> %605, ptr %603, align 1, !tbaa !36
  %606 = add nuw i64 %602, 4
  %607 = icmp eq i64 %606, %600
  br i1 %607, label %608, label %601, !llvm.loop !67

608:                                              ; preds = %601
  %609 = getelementptr i8, ptr %564, i64 %600
  %610 = getelementptr i8, ptr %565, i64 %600
  %611 = trunc nuw i64 %600 to i32
  %612 = sub i32 %560, %611
  %613 = icmp eq i64 %600, %570
  br i1 %613, label %.loopexit69, label %614

614:                                              ; preds = %608, %591, %567
  %615 = phi ptr [ %564, %567 ], [ %595, %591 ], [ %609, %608 ]
  %616 = phi ptr [ %565, %567 ], [ %594, %591 ], [ %610, %608 ]
  %617 = phi i32 [ %560, %567 ], [ %593, %591 ], [ %612, %608 ]
  %618 = add i32 %617, -1
  %619 = and i32 %617, 7
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %.loopexit71, label %.preheader70

.preheader70:                                     ; preds = %614, %.preheader70
  %621 = phi ptr [ %625, %.preheader70 ], [ %615, %614 ]
  %622 = phi ptr [ %626, %.preheader70 ], [ %616, %614 ]
  %623 = phi i32 [ %627, %.preheader70 ], [ 0, %614 ]
  %624 = load i8, ptr %622, align 1, !tbaa !36
  store i8 %624, ptr %621, align 1, !tbaa !36
  %625 = getelementptr inbounds nuw i8, ptr %621, i64 1
  %626 = getelementptr inbounds nuw i8, ptr %622, i64 1
  %627 = add nuw nsw i32 %623, 1
  %628 = icmp eq i32 %627, %619
  br i1 %628, label %.loopexit71.loopexit, label %.preheader70, !llvm.loop !68

.loopexit71.loopexit:                             ; preds = %.preheader70
  %629 = and i32 %617, -8
  br label %.loopexit71

.loopexit71:                                      ; preds = %.loopexit71.loopexit, %614
  %630 = phi ptr [ %615, %614 ], [ %625, %.loopexit71.loopexit ]
  %631 = phi ptr [ %616, %614 ], [ %626, %.loopexit71.loopexit ]
  %632 = phi i32 [ %617, %614 ], [ %629, %.loopexit71.loopexit ]
  %633 = icmp ult i32 %618, 7
  br i1 %633, label %.loopexit69, label %.preheader

.preheader:                                       ; preds = %.loopexit71, %.preheader
  %634 = phi ptr [ %660, %.preheader ], [ %630, %.loopexit71 ]
  %635 = phi ptr [ %661, %.preheader ], [ %631, %.loopexit71 ]
  %636 = phi i32 [ %659, %.preheader ], [ %632, %.loopexit71 ]
  %637 = load i8, ptr %635, align 1, !tbaa !36
  store i8 %637, ptr %634, align 1, !tbaa !36
  %638 = getelementptr inbounds nuw i8, ptr %634, i64 1
  %639 = getelementptr inbounds nuw i8, ptr %635, i64 1
  %640 = load i8, ptr %639, align 1, !tbaa !36
  store i8 %640, ptr %638, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %634, i64 2
  %642 = getelementptr inbounds nuw i8, ptr %635, i64 2
  %643 = load i8, ptr %642, align 1, !tbaa !36
  store i8 %643, ptr %641, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %634, i64 3
  %645 = getelementptr inbounds nuw i8, ptr %635, i64 3
  %646 = load i8, ptr %645, align 1, !tbaa !36
  store i8 %646, ptr %644, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %634, i64 4
  %648 = getelementptr inbounds nuw i8, ptr %635, i64 4
  %649 = load i8, ptr %648, align 1, !tbaa !36
  store i8 %649, ptr %647, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %634, i64 5
  %651 = getelementptr inbounds nuw i8, ptr %635, i64 5
  %652 = load i8, ptr %651, align 1, !tbaa !36
  store i8 %652, ptr %650, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %634, i64 6
  %654 = getelementptr inbounds nuw i8, ptr %635, i64 6
  %655 = load i8, ptr %654, align 1, !tbaa !36
  store i8 %655, ptr %653, align 1, !tbaa !36
  %656 = getelementptr inbounds nuw i8, ptr %634, i64 7
  %657 = getelementptr inbounds nuw i8, ptr %635, i64 7
  %658 = load i8, ptr %657, align 1, !tbaa !36
  store i8 %658, ptr %656, align 1, !tbaa !36
  %659 = add i32 %636, -8
  %660 = getelementptr inbounds nuw i8, ptr %634, i64 8
  %661 = getelementptr inbounds nuw i8, ptr %635, i64 8
  %662 = icmp eq i32 %659, 0
  br i1 %662, label %.loopexit69, label %.preheader, !llvm.loop !69

.loopexit69:                                      ; preds = %.preheader, %.loopexit71, %608, %589
  %663 = load i32, ptr %468, align 8, !tbaa !34
  br label %664

664:                                              ; preds = %.loopexit69, %563, %561
  %665 = phi i32 [ %663, %.loopexit69 ], [ %560, %563 ], [ 0, %561 ]
  %666 = load i32, ptr %470, align 8, !tbaa !27
  %667 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %666, i32 %665), !nosanitize !20
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !20
  br i1 %668, label %669, label %670, !prof !21, !nosanitize !20

669:                                              ; preds = %664
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

670:                                              ; preds = %664
  %671 = extractvalue { i32, i1 } %667, 0, !nosanitize !20
  %672 = load ptr, ptr %474, align 8, !tbaa !29
  %673 = zext i32 %665 to i64
  %674 = getelementptr inbounds nuw i8, ptr %672, i64 %673
  store i32 0, ptr %475, align 4, !tbaa !17
  %675 = tail call ptr @__errno_location() #16
  store i32 0, ptr %675, align 4, !tbaa !4
  br label %676

676:                                              ; preds = %695, %670
  %677 = phi i32 [ 0, %670 ], [ %696, %695 ]
  %678 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %671, i32 %677), !nosanitize !20
  %679 = extractvalue { i32, i1 } %678, 1, !nosanitize !20
  br i1 %679, label %680, label %681, !prof !21, !nosanitize !20

680:                                              ; preds = %676
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

681:                                              ; preds = %676
  %682 = extractvalue { i32, i1 } %678, 0, !nosanitize !20
  %683 = tail call i32 @llvm.umin.i32(i32 %682, i32 1073741824)
  %684 = load i32, ptr %476, align 4, !tbaa !46
  %685 = zext i32 %677 to i64
  %686 = getelementptr inbounds nuw i8, ptr %674, i64 %685
  %687 = zext nneg i32 %683 to i64
  %688 = tail call i64 @read(i32 noundef %684, ptr noundef %686, i64 noundef %687) #13
  %689 = trunc i64 %688 to i32
  %690 = icmp slt i32 %689, 1
  br i1 %690, label %698, label %691

691:                                              ; preds = %681
  %692 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %677, i32 %689), !nosanitize !20
  %693 = extractvalue { i32, i1 } %692, 1, !nosanitize !20
  br i1 %693, label %694, label %695, !prof !21, !nosanitize !20

694:                                              ; preds = %691
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

695:                                              ; preds = %691
  %696 = extractvalue { i32, i1 } %692, 0, !nosanitize !20
  %697 = icmp ult i32 %696, %671
  br i1 %697, label %676, label %.loopexit68, !llvm.loop !47

698:                                              ; preds = %681
  %699 = icmp slt i32 %689, 0
  br i1 %699, label %700, label %707

700:                                              ; preds = %698
  %701 = load i32, ptr %675, align 4, !tbaa !4
  %702 = icmp eq i32 %701, 11
  br i1 %702, label %703, label %.loopexit77

703:                                              ; preds = %700
  store i32 1, ptr %475, align 4, !tbaa !17
  %704 = icmp eq i32 %677, 0
  br i1 %704, label %705, label %.loopexit68

705:                                              ; preds = %703
  %706 = load i32, ptr %675, align 4, !tbaa !4
  br label %.loopexit77

707:                                              ; preds = %698
  store i32 1, ptr %467, align 8, !tbaa !24
  br label %.loopexit68

.loopexit77:                                      ; preds = %700, %705
  %708 = phi i32 [ %706, %705 ], [ %701, %700 ]
  %709 = tail call ptr @strerror(i32 noundef %708) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %709) #13
  br label %.loopexit76

.loopexit68:                                      ; preds = %695, %707, %703
  %710 = phi i32 [ %677, %703 ], [ %677, %707 ], [ %696, %695 ]
  %711 = load i32, ptr %468, align 8, !tbaa !34
  %712 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %711, i32 %710), !nosanitize !20
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !20
  br i1 %713, label %714, label %715, !prof !21, !nosanitize !20

714:                                              ; preds = %.loopexit68
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

715:                                              ; preds = %.loopexit68
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !20
  store i32 %716, ptr %468, align 8, !tbaa !34
  %717 = load ptr, ptr %474, align 8, !tbaa !29
  store ptr %717, ptr %473, align 8, !tbaa !35
  br label %718

718:                                              ; preds = %715, %557
  %719 = phi i32 [ %716, %715 ], [ %560, %557 ]
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %750, label %721

721:                                              ; preds = %718
  %722 = load i32, ptr %475, align 4, !tbaa !17
  %723 = icmp ne i32 %722, 0
  %724 = icmp ult i32 %719, 4
  %725 = and i1 %724, %723
  br i1 %725, label %750, label %726

726:                                              ; preds = %721
  %727 = icmp ugt i32 %719, 3
  %728 = load ptr, ptr %473, align 8, !tbaa !35
  br i1 %727, label %729, label %746

729:                                              ; preds = %726
  %730 = load i8, ptr %728, align 1, !tbaa !36
  %731 = icmp eq i8 %730, 31
  br i1 %731, label %732, label %746

732:                                              ; preds = %729
  %733 = getelementptr inbounds nuw i8, ptr %728, i64 1
  %734 = load i8, ptr %733, align 1, !tbaa !36
  %735 = icmp eq i8 %734, -117
  br i1 %735, label %736, label %746

736:                                              ; preds = %732
  %737 = getelementptr inbounds nuw i8, ptr %728, i64 2
  %738 = load i8, ptr %737, align 1, !tbaa !36
  %739 = icmp eq i8 %738, 8
  br i1 %739, label %740, label %746

740:                                              ; preds = %736
  %741 = getelementptr inbounds nuw i8, ptr %728, i64 3
  %742 = load i8, ptr %741, align 1, !tbaa !36
  %743 = icmp ult i8 %742, 32
  br i1 %743, label %744, label %746

744:                                              ; preds = %740
  %745 = tail call i32 @inflateReset(ptr noundef nonnull %473) #13
  store i32 2, ptr %469, align 8, !tbaa !26
  store i32 1, ptr %477, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !32
  br label %894

746:                                              ; preds = %740, %736, %732, %729, %726
  %747 = load ptr, ptr %480, align 8, !tbaa !30
  store ptr %747, ptr %466, align 8, !tbaa !22
  %748 = zext i32 %719 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %747, ptr align 1 %728, i64 %748, i1 false)
  %749 = load i32, ptr %468, align 8, !tbaa !34
  store i32 %749, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %468, align 8, !tbaa !34
  store i32 1, ptr %469, align 8, !tbaa !26
  br label %896

750:                                              ; preds = %721, %718, %550
  %751 = load i32, ptr %469, align 8, !tbaa !26
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %.loopexit78, label %894

753:                                              ; preds = %520
  %754 = load ptr, ptr %480, align 8, !tbaa !30
  %755 = load i32, ptr %470, align 8, !tbaa !27
  %756 = shl i32 %755, 1
  store i32 0, ptr %475, align 4, !tbaa !17
  %757 = tail call ptr @__errno_location() #16
  store i32 0, ptr %757, align 4, !tbaa !4
  store i32 0, ptr %3, align 8, !tbaa !4
  br label %758

758:                                              ; preds = %778, %753
  %759 = phi i32 [ %779, %778 ], [ 0, %753 ]
  %760 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %756, i32 %759), !nosanitize !20
  %761 = extractvalue { i32, i1 } %760, 1, !nosanitize !20
  br i1 %761, label %762, label %763, !prof !21, !nosanitize !20

762:                                              ; preds = %758
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

763:                                              ; preds = %758
  %764 = extractvalue { i32, i1 } %760, 0, !nosanitize !20
  %765 = tail call i32 @llvm.umin.i32(i32 %764, i32 1073741824)
  %766 = load i32, ptr %476, align 4, !tbaa !46
  %767 = zext i32 %759 to i64
  %768 = getelementptr inbounds nuw i8, ptr %754, i64 %767
  %769 = zext nneg i32 %765 to i64
  %770 = tail call i64 @read(i32 noundef %766, ptr noundef %768, i64 noundef %769) #13
  %771 = trunc i64 %770 to i32
  %772 = icmp slt i32 %771, 1
  br i1 %772, label %781, label %773

773:                                              ; preds = %763
  %774 = load i32, ptr %3, align 4, !tbaa !4
  %775 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %774, i32 %771), !nosanitize !20
  %776 = extractvalue { i32, i1 } %775, 1, !nosanitize !20
  br i1 %776, label %777, label %778, !prof !21, !nosanitize !20

777:                                              ; preds = %773
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

778:                                              ; preds = %773
  %779 = extractvalue { i32, i1 } %775, 0, !nosanitize !20
  store i32 %779, ptr %3, align 4, !tbaa !4
  %780 = icmp ult i32 %779, %756
  br i1 %780, label %758, label %.loopexit75, !llvm.loop !47

781:                                              ; preds = %763
  %782 = icmp slt i32 %771, 0
  br i1 %782, label %783, label %791

783:                                              ; preds = %781
  %784 = load i32, ptr %757, align 4, !tbaa !4
  %785 = icmp eq i32 %784, 11
  br i1 %785, label %786, label %792

786:                                              ; preds = %783
  store i32 1, ptr %475, align 4, !tbaa !17
  %787 = load i32, ptr %3, align 4, !tbaa !4
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %.loopexit75

789:                                              ; preds = %786
  %790 = load i32, ptr %757, align 4, !tbaa !4
  br label %792

791:                                              ; preds = %781
  store i32 1, ptr %467, align 8, !tbaa !24
  br label %.loopexit75

792:                                              ; preds = %789, %783
  %793 = phi i32 [ %790, %789 ], [ %784, %783 ]
  %794 = tail call ptr @strerror(i32 noundef %793) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %794) #13
  br label %.loopexit76

.loopexit75:                                      ; preds = %778, %791, %786
  %795 = load ptr, ptr %480, align 8, !tbaa !30
  store ptr %795, ptr %466, align 8, !tbaa !22
  br label %.loopexit78

796:                                              ; preds = %520
  %797 = load i32, ptr %470, align 8, !tbaa !27
  %798 = shl i32 %797, 1
  store i32 %798, ptr %471, align 8, !tbaa !48
  %799 = load ptr, ptr %480, align 8, !tbaa !30
  store ptr %799, ptr %472, align 8, !tbaa !49
  br label %800

800:                                              ; preds = %877, %796
  %801 = phi i32 [ 0, %796 ], [ %862, %877 ]
  %802 = load i32, ptr %468, align 8, !tbaa !34
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %861

804:                                              ; preds = %800
  %805 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %805, label %.loopexit72 [
    i32 0, label %806
    i32 -5, label %806
  ]

806:                                              ; preds = %804, %804
  %807 = load i32, ptr %467, align 8, !tbaa !24
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %857

809:                                              ; preds = %806
  %810 = load i32, ptr %470, align 8, !tbaa !27
  %811 = load ptr, ptr %474, align 8, !tbaa !29
  store i32 0, ptr %475, align 4, !tbaa !17
  %812 = tail call ptr @__errno_location() #16
  store i32 0, ptr %812, align 4, !tbaa !4
  br label %813

813:                                              ; preds = %832, %809
  %814 = phi i32 [ 0, %809 ], [ %833, %832 ]
  %815 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %810, i32 %814), !nosanitize !20
  %816 = extractvalue { i32, i1 } %815, 1, !nosanitize !20
  br i1 %816, label %817, label %818, !prof !21, !nosanitize !20

817:                                              ; preds = %813
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

818:                                              ; preds = %813
  %819 = extractvalue { i32, i1 } %815, 0, !nosanitize !20
  %820 = tail call i32 @llvm.umin.i32(i32 %819, i32 1073741824)
  %821 = load i32, ptr %476, align 4, !tbaa !46
  %822 = zext i32 %814 to i64
  %823 = getelementptr inbounds nuw i8, ptr %811, i64 %822
  %824 = zext nneg i32 %820 to i64
  %825 = tail call i64 @read(i32 noundef %821, ptr noundef %823, i64 noundef %824) #13
  %826 = trunc i64 %825 to i32
  %827 = icmp slt i32 %826, 1
  br i1 %827, label %835, label %828

828:                                              ; preds = %818
  %829 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %814, i32 %826), !nosanitize !20
  %830 = extractvalue { i32, i1 } %829, 1, !nosanitize !20
  br i1 %830, label %831, label %832, !prof !21, !nosanitize !20

831:                                              ; preds = %828
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

832:                                              ; preds = %828
  %833 = extractvalue { i32, i1 } %829, 0, !nosanitize !20
  %834 = icmp ult i32 %833, %810
  br i1 %834, label %813, label %.loopexit, !llvm.loop !47

835:                                              ; preds = %818
  %836 = icmp slt i32 %826, 0
  br i1 %836, label %837, label %844

837:                                              ; preds = %835
  %838 = load i32, ptr %812, align 4, !tbaa !4
  %839 = icmp eq i32 %838, 11
  br i1 %839, label %840, label %.loopexit73

840:                                              ; preds = %837
  store i32 1, ptr %475, align 4, !tbaa !17
  %841 = icmp eq i32 %814, 0
  br i1 %841, label %842, label %.loopexit

842:                                              ; preds = %840
  %843 = load i32, ptr %812, align 4, !tbaa !4
  br label %.loopexit73

844:                                              ; preds = %835
  store i32 1, ptr %467, align 8, !tbaa !24
  br label %.loopexit

.loopexit73:                                      ; preds = %837, %842
  %845 = phi i32 [ %843, %842 ], [ %838, %837 ]
  %846 = tail call ptr @strerror(i32 noundef %845) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %846) #13
  %847 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit72

.loopexit:                                        ; preds = %832, %844, %840
  %848 = phi i32 [ %814, %840 ], [ %814, %844 ], [ %833, %832 ]
  %849 = load i32, ptr %468, align 8, !tbaa !34
  %850 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %849, i32 %848), !nosanitize !20
  %851 = extractvalue { i32, i1 } %850, 1, !nosanitize !20
  br i1 %851, label %852, label %853, !prof !21, !nosanitize !20

852:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

853:                                              ; preds = %.loopexit
  %854 = extractvalue { i32, i1 } %850, 0, !nosanitize !20
  store i32 %854, ptr %468, align 8, !tbaa !34
  %855 = load ptr, ptr %474, align 8, !tbaa !29
  store ptr %855, ptr %473, align 8, !tbaa !35
  %856 = icmp eq i32 %854, 0
  br i1 %856, label %857, label %861

857:                                              ; preds = %853, %806
  %858 = load i32, ptr %475, align 4, !tbaa !17
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %.loopexit72

860:                                              ; preds = %857
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit72

861:                                              ; preds = %853, %800
  %862 = tail call i32 @inflate(ptr noundef nonnull %473, i32 noundef 0) #13
  %863 = load i32, ptr %471, align 8, !tbaa !48
  %864 = icmp ult i32 %863, %798
  br i1 %864, label %865, label %866

865:                                              ; preds = %861
  store i32 0, ptr %477, align 4, !tbaa !33
  br label %866

866:                                              ; preds = %865, %861
  switch i32 %862, label %877 [
    i32 -2, label %867
    i32 2, label %867
    i32 -4, label %868
    i32 -3, label %869
  ]

867:                                              ; preds = %866, %866
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit72

868:                                              ; preds = %866
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit72

869:                                              ; preds = %866
  %870 = load i32, ptr %477, align 4, !tbaa !33
  %871 = icmp eq i32 %870, 1
  br i1 %871, label %872, label %873

872:                                              ; preds = %869
  store i32 0, ptr %468, align 8, !tbaa !34
  store i32 1, ptr %467, align 8, !tbaa !24
  store i32 0, ptr %469, align 8, !tbaa !26
  br label %.loopexit72

873:                                              ; preds = %869
  %874 = load ptr, ptr %478, align 8, !tbaa !50
  %875 = icmp eq ptr %874, null
  %876 = select i1 %875, ptr @.str.6, ptr %874
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %876) #13
  br label %.loopexit72

877:                                              ; preds = %866
  %878 = icmp ne i32 %863, 0
  %879 = icmp ne i32 %862, 1
  %880 = select i1 %878, i1 %879, i1 false
  br i1 %880, label %800, label %.loopexit72, !llvm.loop !51

.loopexit72:                                      ; preds = %877, %804, %873, %872, %868, %867, %860, %857, %.loopexit73
  %881 = phi i32 [ %847, %.loopexit73 ], [ %801, %857 ], [ %801, %860 ], [ %862, %867 ], [ -4, %868 ], [ 0, %872 ], [ -3, %873 ], [ %862, %877 ], [ %805, %804 ]
  %882 = load i32, ptr %471, align 8, !tbaa !48
  %883 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %798, i32 %882), !nosanitize !20
  %884 = extractvalue { i32, i1 } %883, 1, !nosanitize !20
  br i1 %884, label %885, label %886, !prof !21, !nosanitize !20

885:                                              ; preds = %.loopexit72
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

886:                                              ; preds = %.loopexit72
  %887 = extractvalue { i32, i1 } %883, 0, !nosanitize !20
  store i32 %887, ptr %3, align 8, !tbaa !19
  %888 = load ptr, ptr %472, align 8, !tbaa !49
  %889 = zext i32 %887 to i64
  %890 = sub nsw i64 0, %889
  %891 = getelementptr inbounds i8, ptr %888, i64 %890
  store ptr %891, ptr %466, align 8, !tbaa !22
  switch i32 %881, label %.loopexit76 [
    i32 1, label %892
    i32 0, label %894
  ]

892:                                              ; preds = %886
  store i32 0, ptr %477, align 4, !tbaa !33
  store i32 0, ptr %469, align 8, !tbaa !26
  br label %894

893:                                              ; preds = %520
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit76

894:                                              ; preds = %892, %886, %750, %744
  %895 = load i32, ptr %3, align 8, !tbaa !19
  br label %896

896:                                              ; preds = %894, %746
  %897 = phi i32 [ %895, %894 ], [ %749, %746 ]
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %899, label %.loopexit78

899:                                              ; preds = %896
  %900 = load i32, ptr %467, align 8, !tbaa !24
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %905, label %902

902:                                              ; preds = %899
  %903 = load i32, ptr %468, align 8, !tbaa !34
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %.loopexit78, label %905

905:                                              ; preds = %902, %899
  %906 = load i32, ptr %469, align 8, !tbaa !26
  br label %520, !llvm.loop !52

.loopexit76:                                      ; preds = %886, %555, %893, %792, %.loopexit77, %541, %536
  %907 = load i32, ptr %3, align 8, !tbaa !19
  %908 = icmp eq i32 %907, 0
  %909 = sext i1 %908 to i32
  br label %.loopexit78

910:                                              ; preds = %516
  %911 = icmp eq i32 %514, 1
  br i1 %911, label %912, label %949

912:                                              ; preds = %910
  store i32 0, ptr %475, align 4, !tbaa !17
  %913 = tail call ptr @__errno_location() #16
  store i32 0, ptr %913, align 4, !tbaa !4
  br label %914

914:                                              ; preds = %933, %912
  %915 = phi i32 [ 0, %912 ], [ %934, %933 ]
  %916 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %489, i32 %915), !nosanitize !20
  %917 = extractvalue { i32, i1 } %916, 1, !nosanitize !20
  br i1 %917, label %918, label %919, !prof !21, !nosanitize !20

918:                                              ; preds = %914
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

919:                                              ; preds = %914
  %920 = extractvalue { i32, i1 } %916, 0, !nosanitize !20
  %921 = tail call i32 @llvm.umin.i32(i32 %920, i32 1073741824)
  %922 = load i32, ptr %476, align 4, !tbaa !46
  %923 = zext i32 %915 to i64
  %924 = getelementptr inbounds nuw i8, ptr %485, i64 %923
  %925 = zext nneg i32 %921 to i64
  %926 = tail call i64 @read(i32 noundef %922, ptr noundef %924, i64 noundef %925) #13
  %927 = trunc i64 %926 to i32
  %928 = icmp slt i32 %927, 1
  br i1 %928, label %936, label %929

929:                                              ; preds = %919
  %930 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %915, i32 %927), !nosanitize !20
  %931 = extractvalue { i32, i1 } %930, 1, !nosanitize !20
  br i1 %931, label %932, label %933, !prof !21, !nosanitize !20

932:                                              ; preds = %929
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

933:                                              ; preds = %929
  %934 = extractvalue { i32, i1 } %930, 0, !nosanitize !20
  %935 = icmp ult i32 %934, %489
  br i1 %935, label %914, label %1049, !llvm.loop !47

936:                                              ; preds = %919
  %937 = icmp slt i32 %927, 0
  br i1 %937, label %938, label %948

938:                                              ; preds = %936
  %939 = load i32, ptr %913, align 4, !tbaa !4
  %940 = icmp eq i32 %939, 11
  br i1 %940, label %941, label %945

941:                                              ; preds = %938
  store i32 1, ptr %475, align 4, !tbaa !17
  %942 = icmp eq i32 %915, 0
  br i1 %942, label %943, label %1051

943:                                              ; preds = %941
  %944 = load i32, ptr %913, align 4, !tbaa !4
  br label %945

945:                                              ; preds = %943, %938
  %946 = phi i32 [ %944, %943 ], [ %939, %938 ]
  %947 = tail call ptr @strerror(i32 noundef %946) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %947) #13
  br label %1051

948:                                              ; preds = %936
  store i32 1, ptr %467, align 8, !tbaa !24
  br label %1051

949:                                              ; preds = %910
  store i32 %489, ptr %471, align 8, !tbaa !58
  store ptr %485, ptr %472, align 8, !tbaa !59
  br label %950

950:                                              ; preds = %1027, %949
  %951 = phi i32 [ 0, %949 ], [ %1012, %1027 ]
  %952 = load i32, ptr %468, align 8, !tbaa !34
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %1011

954:                                              ; preds = %950
  %955 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %955, label %.loopexit79 [
    i32 0, label %956
    i32 -5, label %956
  ]

956:                                              ; preds = %954, %954
  %957 = load i32, ptr %467, align 8, !tbaa !24
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %1007

959:                                              ; preds = %956
  %960 = load i32, ptr %470, align 8, !tbaa !27
  %961 = load ptr, ptr %474, align 8, !tbaa !29
  store i32 0, ptr %475, align 4, !tbaa !17
  %962 = tail call ptr @__errno_location() #16
  store i32 0, ptr %962, align 4, !tbaa !4
  br label %963

963:                                              ; preds = %982, %959
  %964 = phi i32 [ 0, %959 ], [ %983, %982 ]
  %965 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %960, i32 %964), !nosanitize !20
  %966 = extractvalue { i32, i1 } %965, 1, !nosanitize !20
  br i1 %966, label %967, label %968, !prof !21, !nosanitize !20

967:                                              ; preds = %963
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

968:                                              ; preds = %963
  %969 = extractvalue { i32, i1 } %965, 0, !nosanitize !20
  %970 = tail call i32 @llvm.umin.i32(i32 %969, i32 1073741824)
  %971 = load i32, ptr %476, align 4, !tbaa !46
  %972 = zext i32 %964 to i64
  %973 = getelementptr inbounds nuw i8, ptr %961, i64 %972
  %974 = zext nneg i32 %970 to i64
  %975 = tail call i64 @read(i32 noundef %971, ptr noundef %973, i64 noundef %974) #13
  %976 = trunc i64 %975 to i32
  %977 = icmp slt i32 %976, 1
  br i1 %977, label %985, label %978

978:                                              ; preds = %968
  %979 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %964, i32 %976), !nosanitize !20
  %980 = extractvalue { i32, i1 } %979, 1, !nosanitize !20
  br i1 %980, label %981, label %982, !prof !21, !nosanitize !20

981:                                              ; preds = %978
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

982:                                              ; preds = %978
  %983 = extractvalue { i32, i1 } %979, 0, !nosanitize !20
  %984 = icmp ult i32 %983, %960
  br i1 %984, label %963, label %.loopexit74, !llvm.loop !47

985:                                              ; preds = %968
  %986 = icmp slt i32 %976, 0
  br i1 %986, label %987, label %994

987:                                              ; preds = %985
  %988 = load i32, ptr %962, align 4, !tbaa !4
  %989 = icmp eq i32 %988, 11
  br i1 %989, label %990, label %.loopexit81

990:                                              ; preds = %987
  store i32 1, ptr %475, align 4, !tbaa !17
  %991 = icmp eq i32 %964, 0
  br i1 %991, label %992, label %.loopexit74

992:                                              ; preds = %990
  %993 = load i32, ptr %962, align 4, !tbaa !4
  br label %.loopexit81

994:                                              ; preds = %985
  store i32 1, ptr %467, align 8, !tbaa !24
  br label %.loopexit74

.loopexit81:                                      ; preds = %987, %992
  %995 = phi i32 [ %993, %992 ], [ %988, %987 ]
  %996 = tail call ptr @strerror(i32 noundef %995) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %996) #13
  %997 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit79

.loopexit74:                                      ; preds = %982, %994, %990
  %998 = phi i32 [ %964, %990 ], [ %964, %994 ], [ %983, %982 ]
  %999 = load i32, ptr %468, align 8, !tbaa !34
  %1000 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %999, i32 %998), !nosanitize !20
  %1001 = extractvalue { i32, i1 } %1000, 1, !nosanitize !20
  br i1 %1001, label %1002, label %1003, !prof !21, !nosanitize !20

1002:                                             ; preds = %.loopexit74
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1003:                                             ; preds = %.loopexit74
  %1004 = extractvalue { i32, i1 } %1000, 0, !nosanitize !20
  store i32 %1004, ptr %468, align 8, !tbaa !34
  %1005 = load ptr, ptr %474, align 8, !tbaa !29
  store ptr %1005, ptr %473, align 8, !tbaa !35
  %1006 = icmp eq i32 %1004, 0
  br i1 %1006, label %1007, label %1011

1007:                                             ; preds = %1003, %956
  %1008 = load i32, ptr %475, align 4, !tbaa !17
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1010, label %.loopexit79

1010:                                             ; preds = %1007
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit79

1011:                                             ; preds = %1003, %950
  %1012 = tail call i32 @inflate(ptr noundef nonnull %473, i32 noundef 0) #13
  %1013 = load i32, ptr %471, align 8, !tbaa !48
  %1014 = icmp ult i32 %1013, %489
  br i1 %1014, label %1015, label %1016

1015:                                             ; preds = %1011
  store i32 0, ptr %477, align 4, !tbaa !33
  br label %1016

1016:                                             ; preds = %1015, %1011
  switch i32 %1012, label %1027 [
    i32 -2, label %1017
    i32 2, label %1017
    i32 -4, label %1018
    i32 -3, label %1019
  ]

1017:                                             ; preds = %1016, %1016
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit79

1018:                                             ; preds = %1016
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit79

1019:                                             ; preds = %1016
  %1020 = load i32, ptr %477, align 4, !tbaa !33
  %1021 = icmp eq i32 %1020, 1
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %1019
  store i32 0, ptr %468, align 8, !tbaa !34
  store i32 1, ptr %467, align 8, !tbaa !24
  store i32 0, ptr %469, align 8, !tbaa !26
  br label %.loopexit79

1023:                                             ; preds = %1019
  %1024 = load ptr, ptr %478, align 8, !tbaa !50
  %1025 = icmp eq ptr %1024, null
  %1026 = select i1 %1025, ptr @.str.6, ptr %1024
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %1026) #13
  br label %.loopexit79

1027:                                             ; preds = %1016
  %1028 = icmp ne i32 %1013, 0
  %1029 = icmp ne i32 %1012, 1
  %1030 = select i1 %1028, i1 %1029, i1 false
  br i1 %1030, label %950, label %.loopexit79, !llvm.loop !51

.loopexit79:                                      ; preds = %1027, %954, %1023, %1022, %1018, %1017, %1010, %1007, %.loopexit81
  %1031 = phi i32 [ %997, %.loopexit81 ], [ %951, %1007 ], [ %951, %1010 ], [ %1012, %1017 ], [ -4, %1018 ], [ 0, %1022 ], [ -3, %1023 ], [ %955, %954 ], [ %1012, %1027 ]
  %1032 = load i32, ptr %471, align 8, !tbaa !48
  %1033 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %489, i32 %1032), !nosanitize !20
  %1034 = extractvalue { i32, i1 } %1033, 1, !nosanitize !20
  br i1 %1034, label %1035, label %1036, !prof !21, !nosanitize !20

1035:                                             ; preds = %.loopexit79
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1036:                                             ; preds = %.loopexit79
  %1037 = extractvalue { i32, i1 } %1033, 0, !nosanitize !20
  %1038 = load ptr, ptr %472, align 8, !tbaa !49
  %1039 = zext i32 %1037 to i64
  %1040 = sub nsw i64 0, %1039
  %1041 = getelementptr inbounds i8, ptr %1038, i64 %1040
  store ptr %1041, ptr %466, align 8, !tbaa !22
  %1042 = icmp eq i32 %1031, 1
  br i1 %1042, label %1043, label %1044

1043:                                             ; preds = %1036
  store i32 0, ptr %477, align 4, !tbaa !33
  store i32 0, ptr %469, align 8, !tbaa !26
  br label %1047

1044:                                             ; preds = %1036
  %1045 = icmp ne i32 %1031, 0
  %1046 = sext i1 %1045 to i32
  br label %1047

1047:                                             ; preds = %1044, %1043
  %1048 = phi i32 [ 0, %1043 ], [ %1046, %1044 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1051

1049:                                             ; preds = %933
  %1050 = zext i32 %934 to i64
  br label %1051

1051:                                             ; preds = %1049, %1047, %948, %945, %941, %502
  %1052 = phi i64 [ %1050, %1049 ], [ %923, %948 ], [ %923, %945 ], [ %923, %941 ], [ %495, %502 ], [ %1039, %1047 ]
  %1053 = phi i32 [ 0, %1049 ], [ 0, %948 ], [ -1, %945 ], [ 0, %941 ], [ %506, %502 ], [ %1048, %1047 ]
  %1054 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %486, i64 %1052), !nosanitize !20
  %1055 = extractvalue { i64, i1 } %1054, 0, !nosanitize !20
  %1056 = extractvalue { i64, i1 } %1054, 1, !nosanitize !20
  br i1 %1056, label %1057, label %1058, !prof !21, !nosanitize !20

1057:                                             ; preds = %1051
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1058:                                             ; preds = %1051
  %1059 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %487, i64 %1052), !nosanitize !20
  %1060 = extractvalue { i64, i1 } %1059, 1, !nosanitize !20
  br i1 %1060, label %1061, label %1062, !prof !21, !nosanitize !20

1061:                                             ; preds = %1058
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1062:                                             ; preds = %1058
  %1063 = extractvalue { i64, i1 } %1059, 0, !nosanitize !20
  %1064 = getelementptr inbounds nuw i8, ptr %485, i64 %1052
  %1065 = load i64, ptr %479, align 8, !tbaa !23
  %1066 = add nsw i64 %1065, %1052
  store i64 %1066, ptr %479, align 8, !tbaa !23
  br label %.loopexit78

.loopexit78:                                      ; preds = %902, %896, %750, %1062, %.loopexit76, %.loopexit75
  %1067 = phi ptr [ %1064, %1062 ], [ %485, %.loopexit76 ], [ %485, %.loopexit75 ], [ %485, %750 ], [ %485, %896 ], [ %485, %902 ]
  %1068 = phi i64 [ %1055, %1062 ], [ %486, %.loopexit76 ], [ %486, %.loopexit75 ], [ %486, %750 ], [ %486, %896 ], [ %486, %902 ]
  %1069 = phi i64 [ %1063, %1062 ], [ %487, %.loopexit76 ], [ %487, %.loopexit75 ], [ %487, %750 ], [ %487, %896 ], [ %487, %902 ]
  %1070 = phi i32 [ %1053, %1062 ], [ %909, %.loopexit76 ], [ 0, %.loopexit75 ], [ 0, %750 ], [ 0, %896 ], [ 0, %902 ]
  %1071 = icmp eq i64 %1068, 0
  br i1 %1071, label %.loopexit83, label %1072

1072:                                             ; preds = %.loopexit78
  %1073 = icmp eq i32 %1070, 0
  br i1 %1073, label %484, label %1074, !llvm.loop !60

1074:                                             ; preds = %1072
  %1075 = load i32, ptr %467, align 8, !tbaa !24
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %.loopexit83, label %.loopexit82

.loopexit82:                                      ; preds = %510, %1074
  %1077 = phi i64 [ %1069, %1074 ], [ %487, %510 ]
  %1078 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1078, align 4, !tbaa !61
  br label %.loopexit83

.loopexit83:                                      ; preds = %443, %113, %.loopexit78, %.loopexit82, %1074, %450, %.loopexit98, %.loopexit95, %99, %94
  %1079 = phi i64 [ 0, %94 ], [ 0, %.loopexit95 ], [ %1077, %.loopexit82 ], [ %1069, %1074 ], [ 0, %99 ], [ %1069, %.loopexit78 ], [ 0, %450 ], [ 0, %.loopexit98 ], [ 0, %113 ], [ 0, %443 ]
  %1080 = udiv i64 %1079, %1
  br label %1081

1081:                                             ; preds = %.loopexit83, %28, %27, %13, %6, %4
  %1082 = phi i64 [ 0, %6 ], [ 0, %4 ], [ 0, %27 ], [ 0, %13 ], [ %1080, %.loopexit83 ], [ 0, %28 ]
  ret i64 %1082
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1081, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1081

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
  br i1 %14, label %1081, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
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
  br label %1081

28:                                               ; preds = %15
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %30 = load i64, ptr %29, align 8, !tbaa !18
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %.loopexit96, label %32

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

51:                                               ; preds = %461, %32
  %52 = phi i64 [ %462, %461 ], [ %30, %32 ]
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
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
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
  br label %461

70:                                               ; preds = %51
  %71 = load i32, ptr %35, align 8, !tbaa !24
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %.preheader978, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %36, align 8, !tbaa !25
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %.loopexit96, label %.preheader978

.preheader978:                                    ; preds = %73, %70
  br label %76

76:                                               ; preds = %.backedge, %.preheader978
  %77 = load i32, ptr %37, align 8, !tbaa !26
  switch i32 %77, label %448 [
    i32 0, label %78
    i32 1, label %309
    i32 2, label %351
  ]

78:                                               ; preds = %76
  %79 = load i32, ptr %38, align 8, !tbaa !27
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load i32, ptr %48, align 4, !tbaa !28
  %83 = zext i32 %82 to i64
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #15
  store ptr %84, ptr %43, align 8, !tbaa !29
  %85 = load i32, ptr %48, align 4, !tbaa !28
  %86 = shl i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = tail call noalias ptr @malloc(i64 noundef %87) #15
  store ptr %88, ptr %40, align 8, !tbaa !30
  %89 = icmp eq ptr %84, null
  %90 = icmp eq ptr %88, null
  %91 = or i1 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  tail call void @free(ptr noundef %88) #13
  tail call void @free(ptr noundef %84) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit93

93:                                               ; preds = %81
  %94 = load i32, ptr %48, align 4, !tbaa !28
  store i32 %94, ptr %38, align 8, !tbaa !27
  store i32 0, ptr %36, align 8, !tbaa !25
  store ptr null, ptr %42, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %95 = tail call i32 @inflateInit2_(ptr noundef nonnull %42, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %40, align 8, !tbaa !30
  tail call void @free(ptr noundef %98) #13
  %99 = load ptr, ptr %43, align 8, !tbaa !29
  tail call void @free(ptr noundef %99) #13
  store i32 0, ptr %38, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit93

100:                                              ; preds = %93, %78
  %101 = load i32, ptr %50, align 8, !tbaa !32
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, ptr %46, align 4, !tbaa !33
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103, %100
  %107 = tail call i32 @inflateReset(ptr noundef nonnull %42) #13
  store i32 2, ptr %37, align 8, !tbaa !26
  %108 = load i32, ptr %46, align 4, !tbaa !33
  %109 = icmp ne i32 %108, -1
  %110 = zext i1 %109 to i32
  store i32 %110, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %50, align 8, !tbaa !32
  br label %306

111:                                              ; preds = %103
  %112 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %112, label %.loopexit93 [
    i32 0, label %113
    i32 -5, label %113
  ]

113:                                              ; preds = %111, %111
  %114 = load i32, ptr %35, align 8, !tbaa !24
  %115 = icmp eq i32 %114, 0
  %116 = load i32, ptr %36, align 8, !tbaa !34
  br i1 %115, label %117, label %274

117:                                              ; preds = %113
  %118 = icmp eq i32 %116, 0
  br i1 %118, label %220, label %119

119:                                              ; preds = %117
  %120 = load ptr, ptr %43, align 8, !tbaa !29
  %121 = load ptr, ptr %42, align 8, !tbaa !35
  %122 = icmp eq ptr %121, %120
  br i1 %122, label %220, label %123

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
  %143 = add nuw nsw i64 %136, 32
  %144 = icmp eq i64 %143, %134
  br i1 %144, label %145, label %135, !llvm.loop !70

145:                                              ; preds = %135
  %146 = icmp eq i64 %134, %126
  br i1 %146, label %.loopexit86, label %147

147:                                              ; preds = %145
  %148 = trunc nuw i64 %134 to i32
  %149 = sub i32 %116, %148
  %150 = getelementptr i8, ptr %121, i64 %134
  %151 = getelementptr i8, ptr %120, i64 %134
  %152 = and i64 %126, 28
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %170, label %154, !prof !41

154:                                              ; preds = %147, %131
  %155 = phi i64 [ %134, %147 ], [ 0, %131 ]
  %156 = and i64 %126, 4294967292
  br label %157

157:                                              ; preds = %157, %154
  %158 = phi i64 [ %155, %154 ], [ %162, %157 ]
  %159 = getelementptr i8, ptr %120, i64 %158
  %160 = getelementptr i8, ptr %121, i64 %158
  %161 = load <4 x i8>, ptr %160, align 1, !tbaa !36
  store <4 x i8> %161, ptr %159, align 1, !tbaa !36
  %162 = add nuw i64 %158, 4
  %163 = icmp eq i64 %162, %156
  br i1 %163, label %164, label %157, !llvm.loop !71

164:                                              ; preds = %157
  %165 = getelementptr i8, ptr %120, i64 %156
  %166 = getelementptr i8, ptr %121, i64 %156
  %167 = trunc nuw i64 %156 to i32
  %168 = sub i32 %116, %167
  %169 = icmp eq i64 %156, %126
  br i1 %169, label %.loopexit86, label %170

170:                                              ; preds = %164, %147, %123
  %171 = phi ptr [ %120, %123 ], [ %151, %147 ], [ %165, %164 ]
  %172 = phi ptr [ %121, %123 ], [ %150, %147 ], [ %166, %164 ]
  %173 = phi i32 [ %116, %123 ], [ %149, %147 ], [ %168, %164 ]
  %174 = add i32 %173, -1
  %175 = and i32 %173, 7
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %170, %.preheader87
  %177 = phi ptr [ %181, %.preheader87 ], [ %171, %170 ]
  %178 = phi ptr [ %182, %.preheader87 ], [ %172, %170 ]
  %179 = phi i32 [ %183, %.preheader87 ], [ 0, %170 ]
  %180 = load i8, ptr %178, align 1, !tbaa !36
  store i8 %180, ptr %177, align 1, !tbaa !36
  %181 = getelementptr inbounds nuw i8, ptr %177, i64 1
  %182 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %183 = add nuw nsw i32 %179, 1
  %184 = icmp eq i32 %183, %175
  br i1 %184, label %.loopexit88.loopexit, label %.preheader87, !llvm.loop !72

.loopexit88.loopexit:                             ; preds = %.preheader87
  %185 = and i32 %173, -8
  br label %.loopexit88

.loopexit88:                                      ; preds = %.loopexit88.loopexit, %170
  %186 = phi ptr [ %171, %170 ], [ %181, %.loopexit88.loopexit ]
  %187 = phi ptr [ %172, %170 ], [ %182, %.loopexit88.loopexit ]
  %188 = phi i32 [ %173, %170 ], [ %185, %.loopexit88.loopexit ]
  %189 = icmp ult i32 %174, 7
  br i1 %189, label %.loopexit86, label %.preheader85

.preheader85:                                     ; preds = %.loopexit88, %.preheader85
  %190 = phi ptr [ %216, %.preheader85 ], [ %186, %.loopexit88 ]
  %191 = phi ptr [ %217, %.preheader85 ], [ %187, %.loopexit88 ]
  %192 = phi i32 [ %215, %.preheader85 ], [ %188, %.loopexit88 ]
  %193 = load i8, ptr %191, align 1, !tbaa !36
  store i8 %193, ptr %190, align 1, !tbaa !36
  %194 = getelementptr inbounds nuw i8, ptr %190, i64 1
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %196 = load i8, ptr %195, align 1, !tbaa !36
  store i8 %196, ptr %194, align 1, !tbaa !36
  %197 = getelementptr inbounds nuw i8, ptr %190, i64 2
  %198 = getelementptr inbounds nuw i8, ptr %191, i64 2
  %199 = load i8, ptr %198, align 1, !tbaa !36
  store i8 %199, ptr %197, align 1, !tbaa !36
  %200 = getelementptr inbounds nuw i8, ptr %190, i64 3
  %201 = getelementptr inbounds nuw i8, ptr %191, i64 3
  %202 = load i8, ptr %201, align 1, !tbaa !36
  store i8 %202, ptr %200, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %190, i64 4
  %204 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %205 = load i8, ptr %204, align 1, !tbaa !36
  store i8 %205, ptr %203, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %190, i64 5
  %207 = getelementptr inbounds nuw i8, ptr %191, i64 5
  %208 = load i8, ptr %207, align 1, !tbaa !36
  store i8 %208, ptr %206, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %190, i64 6
  %210 = getelementptr inbounds nuw i8, ptr %191, i64 6
  %211 = load i8, ptr %210, align 1, !tbaa !36
  store i8 %211, ptr %209, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %190, i64 7
  %213 = getelementptr inbounds nuw i8, ptr %191, i64 7
  %214 = load i8, ptr %213, align 1, !tbaa !36
  store i8 %214, ptr %212, align 1, !tbaa !36
  %215 = add i32 %192, -8
  %216 = getelementptr inbounds nuw i8, ptr %190, i64 8
  %217 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %218 = icmp eq i32 %215, 0
  br i1 %218, label %.loopexit86, label %.preheader85, !llvm.loop !73

.loopexit86:                                      ; preds = %.preheader85, %.loopexit88, %164, %145
  %219 = load i32, ptr %36, align 8, !tbaa !34
  br label %220

220:                                              ; preds = %.loopexit86, %119, %117
  %221 = phi i32 [ %219, %.loopexit86 ], [ %116, %119 ], [ 0, %117 ]
  %222 = load i32, ptr %38, align 8, !tbaa !27
  %223 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %222, i32 %221), !nosanitize !20
  %224 = extractvalue { i32, i1 } %223, 1, !nosanitize !20
  br i1 %224, label %225, label %226, !prof !21, !nosanitize !20

225:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

226:                                              ; preds = %220
  %227 = extractvalue { i32, i1 } %223, 0, !nosanitize !20
  %228 = load ptr, ptr %43, align 8, !tbaa !29
  %229 = zext i32 %221 to i64
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 %229
  store i32 0, ptr %44, align 4, !tbaa !17
  %231 = tail call ptr @__errno_location() #16
  store i32 0, ptr %231, align 4, !tbaa !4
  br label %232

232:                                              ; preds = %251, %226
  %233 = phi i32 [ 0, %226 ], [ %252, %251 ]
  %234 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %227, i32 %233), !nosanitize !20
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !20
  br i1 %235, label %236, label %237, !prof !21, !nosanitize !20

236:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

237:                                              ; preds = %232
  %238 = extractvalue { i32, i1 } %234, 0, !nosanitize !20
  %239 = tail call i32 @llvm.umin.i32(i32 %238, i32 1073741824)
  %240 = load i32, ptr %45, align 4, !tbaa !46
  %241 = zext i32 %233 to i64
  %242 = getelementptr inbounds nuw i8, ptr %230, i64 %241
  %243 = zext nneg i32 %239 to i64
  %244 = tail call i64 @read(i32 noundef %240, ptr noundef %242, i64 noundef %243) #13
  %245 = trunc i64 %244 to i32
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %254, label %247

247:                                              ; preds = %237
  %248 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 %245), !nosanitize !20
  %249 = extractvalue { i32, i1 } %248, 1, !nosanitize !20
  br i1 %249, label %250, label %251, !prof !21, !nosanitize !20

250:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

251:                                              ; preds = %247
  %252 = extractvalue { i32, i1 } %248, 0, !nosanitize !20
  %253 = icmp ult i32 %252, %227
  br i1 %253, label %232, label %.loopexit84, !llvm.loop !47

254:                                              ; preds = %237
  %255 = icmp slt i32 %245, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %254
  %257 = load i32, ptr %231, align 4, !tbaa !4
  %258 = icmp eq i32 %257, 11
  br i1 %258, label %259, label %.loopexit94

259:                                              ; preds = %256
  store i32 1, ptr %44, align 4, !tbaa !17
  %260 = icmp eq i32 %233, 0
  br i1 %260, label %261, label %.loopexit84

261:                                              ; preds = %259
  %262 = load i32, ptr %231, align 4, !tbaa !4
  br label %.loopexit94

263:                                              ; preds = %254
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %.loopexit84

.loopexit94:                                      ; preds = %256, %261
  %264 = phi i32 [ %262, %261 ], [ %257, %256 ]
  %265 = tail call ptr @strerror(i32 noundef %264) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %265) #13
  br label %.loopexit93

.loopexit84:                                      ; preds = %251, %263, %259
  %266 = phi i32 [ %233, %259 ], [ %233, %263 ], [ %252, %251 ]
  %267 = load i32, ptr %36, align 8, !tbaa !34
  %268 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %267, i32 %266), !nosanitize !20
  %269 = extractvalue { i32, i1 } %268, 1, !nosanitize !20
  br i1 %269, label %270, label %271, !prof !21, !nosanitize !20

270:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

271:                                              ; preds = %.loopexit84
  %272 = extractvalue { i32, i1 } %268, 0, !nosanitize !20
  store i32 %272, ptr %36, align 8, !tbaa !34
  %273 = load ptr, ptr %43, align 8, !tbaa !29
  store ptr %273, ptr %42, align 8, !tbaa !35
  br label %274

274:                                              ; preds = %271, %113
  %275 = phi i32 [ %272, %271 ], [ %116, %113 ]
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %306, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %44, align 4, !tbaa !17
  %279 = icmp ne i32 %278, 0
  %280 = icmp ult i32 %275, 4
  %281 = and i1 %280, %279
  br i1 %281, label %306, label %282

282:                                              ; preds = %277
  %283 = icmp ugt i32 %275, 3
  %284 = load ptr, ptr %42, align 8, !tbaa !35
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
  %301 = tail call i32 @inflateReset(ptr noundef nonnull %42) #13
  store i32 2, ptr %37, align 8, !tbaa !26
  store i32 1, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %50, align 8, !tbaa !32
  br label %449

302:                                              ; preds = %296, %292, %288, %285, %282
  %303 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %303, ptr %33, align 8, !tbaa !22
  %304 = zext i32 %275 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %303, ptr align 1 %284, i64 %304, i1 false)
  %305 = load i32, ptr %36, align 8, !tbaa !34
  store i32 %305, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %36, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !26
  br label %451

306:                                              ; preds = %277, %274, %106
  %307 = load i32, ptr %37, align 8, !tbaa !26
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %.loopexit95, label %449

309:                                              ; preds = %76
  %310 = load ptr, ptr %40, align 8, !tbaa !30
  %311 = load i32, ptr %38, align 8, !tbaa !27
  %312 = shl i32 %311, 1
  store i32 0, ptr %44, align 4, !tbaa !17
  %313 = tail call ptr @__errno_location() #16
  store i32 0, ptr %313, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %314

314:                                              ; preds = %334, %309
  %315 = phi i32 [ %335, %334 ], [ 0, %309 ]
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %312, i32 %315), !nosanitize !20
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !20
  br i1 %317, label %318, label %319, !prof !21, !nosanitize !20

318:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

319:                                              ; preds = %314
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !20
  %321 = tail call i32 @llvm.umin.i32(i32 %320, i32 1073741824)
  %322 = load i32, ptr %45, align 4, !tbaa !46
  %323 = zext i32 %315 to i64
  %324 = getelementptr inbounds nuw i8, ptr %310, i64 %323
  %325 = zext nneg i32 %321 to i64
  %326 = tail call i64 @read(i32 noundef %322, ptr noundef %324, i64 noundef %325) #13
  %327 = trunc i64 %326 to i32
  %328 = icmp slt i32 %327, 1
  br i1 %328, label %337, label %329

329:                                              ; preds = %319
  %330 = load i32, ptr %0, align 4, !tbaa !4
  %331 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %330, i32 %327), !nosanitize !20
  %332 = extractvalue { i32, i1 } %331, 1, !nosanitize !20
  br i1 %332, label %333, label %334, !prof !21, !nosanitize !20

333:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

334:                                              ; preds = %329
  %335 = extractvalue { i32, i1 } %331, 0, !nosanitize !20
  store i32 %335, ptr %0, align 4, !tbaa !4
  %336 = icmp ult i32 %335, %312
  br i1 %336, label %314, label %.loopexit92, !llvm.loop !47

337:                                              ; preds = %319
  %338 = icmp slt i32 %327, 0
  br i1 %338, label %339, label %347

339:                                              ; preds = %337
  %340 = load i32, ptr %313, align 4, !tbaa !4
  %341 = icmp eq i32 %340, 11
  br i1 %341, label %342, label %.loopexit97

342:                                              ; preds = %339
  store i32 1, ptr %44, align 4, !tbaa !17
  %343 = load i32, ptr %0, align 4, !tbaa !4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %.loopexit92

345:                                              ; preds = %342
  %346 = load i32, ptr %313, align 4, !tbaa !4
  br label %.loopexit97

347:                                              ; preds = %337
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %.loopexit92

.loopexit97:                                      ; preds = %339, %345
  %348 = phi i32 [ %346, %345 ], [ %340, %339 ]
  %349 = tail call ptr @strerror(i32 noundef %348) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %349) #13
  br label %.loopexit93

.loopexit92:                                      ; preds = %334, %347, %342
  %350 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %350, ptr %33, align 8, !tbaa !22
  br label %.loopexit95

351:                                              ; preds = %76
  %352 = load i32, ptr %38, align 8, !tbaa !27
  %353 = shl i32 %352, 1
  store i32 %353, ptr %39, align 8, !tbaa !48
  %354 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %354, ptr %41, align 8, !tbaa !49
  br label %355

355:                                              ; preds = %432, %351
  %356 = phi i32 [ 0, %351 ], [ %417, %432 ]
  %357 = load i32, ptr %36, align 8, !tbaa !34
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %416

359:                                              ; preds = %355
  %360 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %360, label %.loopexit89 [
    i32 0, label %361
    i32 -5, label %361
  ]

361:                                              ; preds = %359, %359
  %362 = load i32, ptr %35, align 8, !tbaa !24
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %412

364:                                              ; preds = %361
  %365 = load i32, ptr %38, align 8, !tbaa !27
  %366 = load ptr, ptr %43, align 8, !tbaa !29
  store i32 0, ptr %44, align 4, !tbaa !17
  %367 = tail call ptr @__errno_location() #16
  store i32 0, ptr %367, align 4, !tbaa !4
  br label %368

368:                                              ; preds = %387, %364
  %369 = phi i32 [ 0, %364 ], [ %388, %387 ]
  %370 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %365, i32 %369), !nosanitize !20
  %371 = extractvalue { i32, i1 } %370, 1, !nosanitize !20
  br i1 %371, label %372, label %373, !prof !21, !nosanitize !20

372:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

373:                                              ; preds = %368
  %374 = extractvalue { i32, i1 } %370, 0, !nosanitize !20
  %375 = tail call i32 @llvm.umin.i32(i32 %374, i32 1073741824)
  %376 = load i32, ptr %45, align 4, !tbaa !46
  %377 = zext i32 %369 to i64
  %378 = getelementptr inbounds nuw i8, ptr %366, i64 %377
  %379 = zext nneg i32 %375 to i64
  %380 = tail call i64 @read(i32 noundef %376, ptr noundef %378, i64 noundef %379) #13
  %381 = trunc i64 %380 to i32
  %382 = icmp slt i32 %381, 1
  br i1 %382, label %390, label %383

383:                                              ; preds = %373
  %384 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %369, i32 %381), !nosanitize !20
  %385 = extractvalue { i32, i1 } %384, 1, !nosanitize !20
  br i1 %385, label %386, label %387, !prof !21, !nosanitize !20

386:                                              ; preds = %383
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

387:                                              ; preds = %383
  %388 = extractvalue { i32, i1 } %384, 0, !nosanitize !20
  %389 = icmp ult i32 %388, %365
  br i1 %389, label %368, label %.loopexit83, !llvm.loop !47

390:                                              ; preds = %373
  %391 = icmp slt i32 %381, 0
  br i1 %391, label %392, label %399

392:                                              ; preds = %390
  %393 = load i32, ptr %367, align 4, !tbaa !4
  %394 = icmp eq i32 %393, 11
  br i1 %394, label %395, label %.loopexit91

395:                                              ; preds = %392
  store i32 1, ptr %44, align 4, !tbaa !17
  %396 = icmp eq i32 %369, 0
  br i1 %396, label %397, label %.loopexit83

397:                                              ; preds = %395
  %398 = load i32, ptr %367, align 4, !tbaa !4
  br label %.loopexit91

399:                                              ; preds = %390
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %.loopexit83

.loopexit91:                                      ; preds = %392, %397
  %400 = phi i32 [ %398, %397 ], [ %393, %392 ]
  %401 = tail call ptr @strerror(i32 noundef %400) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %401) #13
  %402 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit89

.loopexit83:                                      ; preds = %387, %399, %395
  %403 = phi i32 [ %369, %395 ], [ %369, %399 ], [ %388, %387 ]
  %404 = load i32, ptr %36, align 8, !tbaa !34
  %405 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %404, i32 %403), !nosanitize !20
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !20
  br i1 %406, label %407, label %408, !prof !21, !nosanitize !20

407:                                              ; preds = %.loopexit83
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

408:                                              ; preds = %.loopexit83
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !20
  store i32 %409, ptr %36, align 8, !tbaa !34
  %410 = load ptr, ptr %43, align 8, !tbaa !29
  store ptr %410, ptr %42, align 8, !tbaa !35
  %411 = icmp eq i32 %409, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %408, %361
  %413 = load i32, ptr %44, align 4, !tbaa !17
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %.loopexit89

415:                                              ; preds = %412
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit89

416:                                              ; preds = %408, %355
  %417 = tail call i32 @inflate(ptr noundef nonnull %42, i32 noundef 0) #13
  %418 = load i32, ptr %39, align 8, !tbaa !48
  %419 = icmp ult i32 %418, %353
  br i1 %419, label %420, label %421

420:                                              ; preds = %416
  store i32 0, ptr %46, align 4, !tbaa !33
  br label %421

421:                                              ; preds = %420, %416
  switch i32 %417, label %432 [
    i32 -2, label %422
    i32 2, label %422
    i32 -4, label %423
    i32 -3, label %424
  ]

422:                                              ; preds = %421, %421
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit89

423:                                              ; preds = %421
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit89

424:                                              ; preds = %421
  %425 = load i32, ptr %46, align 4, !tbaa !33
  %426 = icmp eq i32 %425, 1
  br i1 %426, label %427, label %428

427:                                              ; preds = %424
  store i32 0, ptr %36, align 8, !tbaa !34
  store i32 1, ptr %35, align 8, !tbaa !24
  store i32 0, ptr %37, align 8, !tbaa !26
  br label %.loopexit89

428:                                              ; preds = %424
  %429 = load ptr, ptr %47, align 8, !tbaa !50
  %430 = icmp eq ptr %429, null
  %431 = select i1 %430, ptr @.str.6, ptr %429
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %431) #13
  br label %.loopexit89

432:                                              ; preds = %421
  %433 = icmp ne i32 %418, 0
  %434 = icmp ne i32 %417, 1
  %435 = select i1 %433, i1 %434, i1 false
  br i1 %435, label %355, label %.loopexit89, !llvm.loop !51

.loopexit89:                                      ; preds = %432, %359, %428, %427, %423, %422, %415, %412, %.loopexit91
  %436 = phi i32 [ %402, %.loopexit91 ], [ %356, %412 ], [ %356, %415 ], [ %417, %422 ], [ -4, %423 ], [ 0, %427 ], [ -3, %428 ], [ %360, %359 ], [ %417, %432 ]
  %437 = load i32, ptr %39, align 8, !tbaa !48
  %438 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %353, i32 %437), !nosanitize !20
  %439 = extractvalue { i32, i1 } %438, 1, !nosanitize !20
  br i1 %439, label %440, label %441, !prof !21, !nosanitize !20

440:                                              ; preds = %.loopexit89
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

441:                                              ; preds = %.loopexit89
  %442 = extractvalue { i32, i1 } %438, 0, !nosanitize !20
  store i32 %442, ptr %0, align 8, !tbaa !19
  %443 = load ptr, ptr %41, align 8, !tbaa !49
  %444 = zext i32 %442 to i64
  %445 = sub nsw i64 0, %444
  %446 = getelementptr inbounds i8, ptr %443, i64 %445
  store ptr %446, ptr %33, align 8, !tbaa !22
  switch i32 %436, label %.loopexit93 [
    i32 1, label %447
    i32 0, label %449
  ]

447:                                              ; preds = %441
  store i32 0, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %37, align 8, !tbaa !26
  br label %449

448:                                              ; preds = %76
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit93

449:                                              ; preds = %447, %441, %306, %300
  %450 = load i32, ptr %0, align 8, !tbaa !19
  br label %451

451:                                              ; preds = %449, %302
  %452 = phi i32 [ %450, %449 ], [ %305, %302 ]
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %.loopexit95

454:                                              ; preds = %451
  %455 = load i32, ptr %35, align 8, !tbaa !24
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %.backedge, label %457

457:                                              ; preds = %454
  %458 = load i32, ptr %36, align 8, !tbaa !34
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %.loopexit95, label %.backedge

.backedge:                                        ; preds = %457, %454
  br label %76, !llvm.loop !52

.loopexit95:                                      ; preds = %457, %451, %306, %.loopexit92
  %460 = load i64, ptr %29, align 8, !tbaa !18
  br label %461

461:                                              ; preds = %.loopexit95, %62
  %462 = phi i64 [ %460, %.loopexit95 ], [ %69, %62 ]
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %.loopexit96, label %51, !llvm.loop !53

.loopexit96:                                      ; preds = %461, %73, %28
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %482

482:                                              ; preds = %.loopexit77, %.loopexit96
  %483 = phi ptr [ %2, %.loopexit96 ], [ %1069, %.loopexit77 ]
  %484 = phi i64 [ 1, %.loopexit96 ], [ %1068, %.loopexit77 ]
  %485 = phi i64 [ 0, %.loopexit96 ], [ %1067, %.loopexit77 ]
  %486 = call i64 @llvm.umin.i64(i64 %484, i64 4294967295)
  %487 = trunc nuw i64 %486 to i32
  %488 = load i32, ptr %0, align 8, !tbaa !19
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %505, label %490

490:                                              ; preds = %482
  %491 = call i32 @llvm.umin.i32(i32 %488, i32 %487)
  %492 = load ptr, ptr %464, align 8, !tbaa !22
  %493 = zext i32 %491 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %483, ptr align 1 %492, i64 %493, i1 false)
  %494 = load ptr, ptr %464, align 8, !tbaa !22
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 %493
  store ptr %495, ptr %464, align 8, !tbaa !22
  %496 = load i32, ptr %0, align 8, !tbaa !19
  %497 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %491), !nosanitize !20
  %498 = extractvalue { i32, i1 } %497, 1, !nosanitize !20
  br i1 %498, label %499, label %500, !prof !21, !nosanitize !20

499:                                              ; preds = %490
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

500:                                              ; preds = %490
  %501 = extractvalue { i32, i1 } %497, 0, !nosanitize !20
  store i32 %501, ptr %0, align 8, !tbaa !19
  %502 = load i32, ptr %9, align 8, !tbaa !16
  %503 = icmp ne i32 %502, 0
  %504 = sext i1 %503 to i32
  br label %1049

505:                                              ; preds = %482
  %506 = load i32, ptr %465, align 8, !tbaa !24
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %511, label %508

508:                                              ; preds = %505
  %509 = load i32, ptr %466, align 8, !tbaa !25
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %.loopexit81, label %511

511:                                              ; preds = %508, %505
  %512 = load i32, ptr %467, align 8, !tbaa !26
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %.preheader862, label %514

514:                                              ; preds = %511
  %515 = load i32, ptr %468, align 8, !tbaa !27
  %516 = shl i32 %515, 1
  %517 = icmp ugt i32 %516, %487
  br i1 %517, label %.preheader862, label %908

.preheader862:                                    ; preds = %514, %511
  br label %518

518:                                              ; preds = %.preheader862, %903
  %519 = phi i32 [ %904, %903 ], [ %512, %.preheader862 ]
  switch i32 %519, label %891 [
    i32 0, label %520
    i32 1, label %751
    i32 2, label %794
  ]

520:                                              ; preds = %518
  %521 = load i32, ptr %468, align 8, !tbaa !27
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %542

523:                                              ; preds = %520
  %524 = load i32, ptr %479, align 4, !tbaa !28
  %525 = zext i32 %524 to i64
  %526 = call noalias ptr @malloc(i64 noundef %525) #15
  store ptr %526, ptr %472, align 8, !tbaa !29
  %527 = load i32, ptr %479, align 4, !tbaa !28
  %528 = shl i32 %527, 1
  %529 = zext i32 %528 to i64
  %530 = call noalias ptr @malloc(i64 noundef %529) #15
  store ptr %530, ptr %478, align 8, !tbaa !30
  %531 = icmp eq ptr %526, null
  %532 = icmp eq ptr %530, null
  %533 = or i1 %531, %532
  br i1 %533, label %534, label %535

534:                                              ; preds = %523
  call void @free(ptr noundef %530) #13
  call void @free(ptr noundef %526) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit75

535:                                              ; preds = %523
  %536 = load i32, ptr %479, align 4, !tbaa !28
  store i32 %536, ptr %468, align 8, !tbaa !27
  store i32 0, ptr %466, align 8, !tbaa !25
  store ptr null, ptr %471, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %480, i8 0, i64 24, i1 false)
  %537 = call i32 @inflateInit2_(ptr noundef nonnull %471, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %542, label %539

539:                                              ; preds = %535
  %540 = load ptr, ptr %478, align 8, !tbaa !30
  call void @free(ptr noundef %540) #13
  %541 = load ptr, ptr %472, align 8, !tbaa !29
  call void @free(ptr noundef %541) #13
  store i32 0, ptr %468, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit75

542:                                              ; preds = %535, %520
  %543 = load i32, ptr %481, align 8, !tbaa !32
  %544 = icmp eq i32 %543, -1
  br i1 %544, label %548, label %545

545:                                              ; preds = %542
  %546 = load i32, ptr %475, align 4, !tbaa !33
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %553

548:                                              ; preds = %545, %542
  %549 = call i32 @inflateReset(ptr noundef nonnull %471) #13
  store i32 2, ptr %467, align 8, !tbaa !26
  %550 = load i32, ptr %475, align 4, !tbaa !33
  %551 = icmp ne i32 %550, -1
  %552 = zext i1 %551 to i32
  store i32 %552, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %481, align 8, !tbaa !32
  br label %748

553:                                              ; preds = %545
  %554 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %554, label %.loopexit75 [
    i32 0, label %555
    i32 -5, label %555
  ]

555:                                              ; preds = %553, %553
  %556 = load i32, ptr %465, align 8, !tbaa !24
  %557 = icmp eq i32 %556, 0
  %558 = load i32, ptr %466, align 8, !tbaa !34
  br i1 %557, label %559, label %716

559:                                              ; preds = %555
  %560 = icmp eq i32 %558, 0
  br i1 %560, label %662, label %561

561:                                              ; preds = %559
  %562 = load ptr, ptr %472, align 8, !tbaa !29
  %563 = load ptr, ptr %471, align 8, !tbaa !35
  %564 = icmp eq ptr %563, %562
  br i1 %564, label %662, label %565

565:                                              ; preds = %561
  %566 = ptrtoaddr ptr %563 to i64
  %567 = ptrtoaddr ptr %562 to i64
  %568 = zext i32 %558 to i64
  %569 = icmp ult i32 %558, 4
  %570 = sub i64 %567, %566
  %571 = icmp ult i64 %570, 32
  %572 = or i1 %569, %571
  br i1 %572, label %612, label %573

573:                                              ; preds = %565
  %574 = icmp ult i32 %558, 32
  br i1 %574, label %596, label %575

575:                                              ; preds = %573
  %576 = and i64 %568, 4294967264
  br label %577

577:                                              ; preds = %577, %575
  %578 = phi i64 [ 0, %575 ], [ %585, %577 ]
  %579 = getelementptr i8, ptr %562, i64 %578
  %580 = getelementptr i8, ptr %563, i64 %578
  %581 = getelementptr i8, ptr %580, i64 16
  %582 = load <16 x i8>, ptr %580, align 1, !tbaa !36
  %583 = load <16 x i8>, ptr %581, align 1, !tbaa !36
  %584 = getelementptr i8, ptr %579, i64 16
  store <16 x i8> %582, ptr %579, align 1, !tbaa !36
  store <16 x i8> %583, ptr %584, align 1, !tbaa !36
  %585 = add nuw nsw i64 %578, 32
  %586 = icmp eq i64 %585, %576
  br i1 %586, label %587, label %577, !llvm.loop !74

587:                                              ; preds = %577
  %588 = icmp eq i64 %576, %568
  br i1 %588, label %.loopexit68, label %589

589:                                              ; preds = %587
  %590 = trunc nuw i64 %576 to i32
  %591 = sub i32 %558, %590
  %592 = getelementptr i8, ptr %563, i64 %576
  %593 = getelementptr i8, ptr %562, i64 %576
  %594 = and i64 %568, 28
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %612, label %596, !prof !41

596:                                              ; preds = %589, %573
  %597 = phi i64 [ %576, %589 ], [ 0, %573 ]
  %598 = and i64 %568, 4294967292
  br label %599

599:                                              ; preds = %599, %596
  %600 = phi i64 [ %597, %596 ], [ %604, %599 ]
  %601 = getelementptr i8, ptr %562, i64 %600
  %602 = getelementptr i8, ptr %563, i64 %600
  %603 = load <4 x i8>, ptr %602, align 1, !tbaa !36
  store <4 x i8> %603, ptr %601, align 1, !tbaa !36
  %604 = add nuw i64 %600, 4
  %605 = icmp eq i64 %604, %598
  br i1 %605, label %606, label %599, !llvm.loop !75

606:                                              ; preds = %599
  %607 = getelementptr i8, ptr %562, i64 %598
  %608 = getelementptr i8, ptr %563, i64 %598
  %609 = trunc nuw i64 %598 to i32
  %610 = sub i32 %558, %609
  %611 = icmp eq i64 %598, %568
  br i1 %611, label %.loopexit68, label %612

612:                                              ; preds = %606, %589, %565
  %613 = phi ptr [ %562, %565 ], [ %593, %589 ], [ %607, %606 ]
  %614 = phi ptr [ %563, %565 ], [ %592, %589 ], [ %608, %606 ]
  %615 = phi i32 [ %558, %565 ], [ %591, %589 ], [ %610, %606 ]
  %616 = add i32 %615, -1
  %617 = and i32 %615, 7
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %.loopexit70, label %.preheader69

.preheader69:                                     ; preds = %612, %.preheader69
  %619 = phi ptr [ %623, %.preheader69 ], [ %613, %612 ]
  %620 = phi ptr [ %624, %.preheader69 ], [ %614, %612 ]
  %621 = phi i32 [ %625, %.preheader69 ], [ 0, %612 ]
  %622 = load i8, ptr %620, align 1, !tbaa !36
  store i8 %622, ptr %619, align 1, !tbaa !36
  %623 = getelementptr inbounds nuw i8, ptr %619, i64 1
  %624 = getelementptr inbounds nuw i8, ptr %620, i64 1
  %625 = add nuw nsw i32 %621, 1
  %626 = icmp eq i32 %625, %617
  br i1 %626, label %.loopexit70.loopexit, label %.preheader69, !llvm.loop !76

.loopexit70.loopexit:                             ; preds = %.preheader69
  %627 = and i32 %615, -8
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70.loopexit, %612
  %628 = phi ptr [ %613, %612 ], [ %623, %.loopexit70.loopexit ]
  %629 = phi ptr [ %614, %612 ], [ %624, %.loopexit70.loopexit ]
  %630 = phi i32 [ %615, %612 ], [ %627, %.loopexit70.loopexit ]
  %631 = icmp ult i32 %616, 7
  br i1 %631, label %.loopexit68, label %.preheader

.preheader:                                       ; preds = %.loopexit70, %.preheader
  %632 = phi ptr [ %658, %.preheader ], [ %628, %.loopexit70 ]
  %633 = phi ptr [ %659, %.preheader ], [ %629, %.loopexit70 ]
  %634 = phi i32 [ %657, %.preheader ], [ %630, %.loopexit70 ]
  %635 = load i8, ptr %633, align 1, !tbaa !36
  store i8 %635, ptr %632, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %632, i64 1
  %637 = getelementptr inbounds nuw i8, ptr %633, i64 1
  %638 = load i8, ptr %637, align 1, !tbaa !36
  store i8 %638, ptr %636, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %632, i64 2
  %640 = getelementptr inbounds nuw i8, ptr %633, i64 2
  %641 = load i8, ptr %640, align 1, !tbaa !36
  store i8 %641, ptr %639, align 1, !tbaa !36
  %642 = getelementptr inbounds nuw i8, ptr %632, i64 3
  %643 = getelementptr inbounds nuw i8, ptr %633, i64 3
  %644 = load i8, ptr %643, align 1, !tbaa !36
  store i8 %644, ptr %642, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %632, i64 4
  %646 = getelementptr inbounds nuw i8, ptr %633, i64 4
  %647 = load i8, ptr %646, align 1, !tbaa !36
  store i8 %647, ptr %645, align 1, !tbaa !36
  %648 = getelementptr inbounds nuw i8, ptr %632, i64 5
  %649 = getelementptr inbounds nuw i8, ptr %633, i64 5
  %650 = load i8, ptr %649, align 1, !tbaa !36
  store i8 %650, ptr %648, align 1, !tbaa !36
  %651 = getelementptr inbounds nuw i8, ptr %632, i64 6
  %652 = getelementptr inbounds nuw i8, ptr %633, i64 6
  %653 = load i8, ptr %652, align 1, !tbaa !36
  store i8 %653, ptr %651, align 1, !tbaa !36
  %654 = getelementptr inbounds nuw i8, ptr %632, i64 7
  %655 = getelementptr inbounds nuw i8, ptr %633, i64 7
  %656 = load i8, ptr %655, align 1, !tbaa !36
  store i8 %656, ptr %654, align 1, !tbaa !36
  %657 = add i32 %634, -8
  %658 = getelementptr inbounds nuw i8, ptr %632, i64 8
  %659 = getelementptr inbounds nuw i8, ptr %633, i64 8
  %660 = icmp eq i32 %657, 0
  br i1 %660, label %.loopexit68, label %.preheader, !llvm.loop !77

.loopexit68:                                      ; preds = %.preheader, %.loopexit70, %606, %587
  %661 = load i32, ptr %466, align 8, !tbaa !34
  br label %662

662:                                              ; preds = %.loopexit68, %561, %559
  %663 = phi i32 [ %661, %.loopexit68 ], [ %558, %561 ], [ 0, %559 ]
  %664 = load i32, ptr %468, align 8, !tbaa !27
  %665 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %664, i32 %663), !nosanitize !20
  %666 = extractvalue { i32, i1 } %665, 1, !nosanitize !20
  br i1 %666, label %667, label %668, !prof !21, !nosanitize !20

667:                                              ; preds = %662
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

668:                                              ; preds = %662
  %669 = extractvalue { i32, i1 } %665, 0, !nosanitize !20
  %670 = load ptr, ptr %472, align 8, !tbaa !29
  %671 = zext i32 %663 to i64
  %672 = getelementptr inbounds nuw i8, ptr %670, i64 %671
  store i32 0, ptr %473, align 4, !tbaa !17
  %673 = tail call ptr @__errno_location() #16
  store i32 0, ptr %673, align 4, !tbaa !4
  br label %674

674:                                              ; preds = %693, %668
  %675 = phi i32 [ 0, %668 ], [ %694, %693 ]
  %676 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %669, i32 %675), !nosanitize !20
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !20
  br i1 %677, label %678, label %679, !prof !21, !nosanitize !20

678:                                              ; preds = %674
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

679:                                              ; preds = %674
  %680 = extractvalue { i32, i1 } %676, 0, !nosanitize !20
  %681 = call i32 @llvm.umin.i32(i32 %680, i32 1073741824)
  %682 = load i32, ptr %474, align 4, !tbaa !46
  %683 = zext i32 %675 to i64
  %684 = getelementptr inbounds nuw i8, ptr %672, i64 %683
  %685 = zext nneg i32 %681 to i64
  %686 = call i64 @read(i32 noundef %682, ptr noundef %684, i64 noundef %685) #13
  %687 = trunc i64 %686 to i32
  %688 = icmp slt i32 %687, 1
  br i1 %688, label %696, label %689

689:                                              ; preds = %679
  %690 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %675, i32 %687), !nosanitize !20
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !20
  br i1 %691, label %692, label %693, !prof !21, !nosanitize !20

692:                                              ; preds = %689
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

693:                                              ; preds = %689
  %694 = extractvalue { i32, i1 } %690, 0, !nosanitize !20
  %695 = icmp ult i32 %694, %669
  br i1 %695, label %674, label %.loopexit67, !llvm.loop !47

696:                                              ; preds = %679
  %697 = icmp slt i32 %687, 0
  br i1 %697, label %698, label %705

698:                                              ; preds = %696
  %699 = load i32, ptr %673, align 4, !tbaa !4
  %700 = icmp eq i32 %699, 11
  br i1 %700, label %701, label %.loopexit76

701:                                              ; preds = %698
  store i32 1, ptr %473, align 4, !tbaa !17
  %702 = icmp eq i32 %675, 0
  br i1 %702, label %703, label %.loopexit67

703:                                              ; preds = %701
  %704 = load i32, ptr %673, align 4, !tbaa !4
  br label %.loopexit76

705:                                              ; preds = %696
  store i32 1, ptr %465, align 8, !tbaa !24
  br label %.loopexit67

.loopexit76:                                      ; preds = %698, %703
  %706 = phi i32 [ %704, %703 ], [ %699, %698 ]
  %707 = call ptr @strerror(i32 noundef %706) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %707) #13
  br label %.loopexit75

.loopexit67:                                      ; preds = %693, %705, %701
  %708 = phi i32 [ %675, %701 ], [ %675, %705 ], [ %694, %693 ]
  %709 = load i32, ptr %466, align 8, !tbaa !34
  %710 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %709, i32 %708), !nosanitize !20
  %711 = extractvalue { i32, i1 } %710, 1, !nosanitize !20
  br i1 %711, label %712, label %713, !prof !21, !nosanitize !20

712:                                              ; preds = %.loopexit67
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

713:                                              ; preds = %.loopexit67
  %714 = extractvalue { i32, i1 } %710, 0, !nosanitize !20
  store i32 %714, ptr %466, align 8, !tbaa !34
  %715 = load ptr, ptr %472, align 8, !tbaa !29
  store ptr %715, ptr %471, align 8, !tbaa !35
  br label %716

716:                                              ; preds = %713, %555
  %717 = phi i32 [ %714, %713 ], [ %558, %555 ]
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %748, label %719

719:                                              ; preds = %716
  %720 = load i32, ptr %473, align 4, !tbaa !17
  %721 = icmp ne i32 %720, 0
  %722 = icmp ult i32 %717, 4
  %723 = and i1 %722, %721
  br i1 %723, label %748, label %724

724:                                              ; preds = %719
  %725 = icmp ugt i32 %717, 3
  %726 = load ptr, ptr %471, align 8, !tbaa !35
  br i1 %725, label %727, label %744

727:                                              ; preds = %724
  %728 = load i8, ptr %726, align 1, !tbaa !36
  %729 = icmp eq i8 %728, 31
  br i1 %729, label %730, label %744

730:                                              ; preds = %727
  %731 = getelementptr inbounds nuw i8, ptr %726, i64 1
  %732 = load i8, ptr %731, align 1, !tbaa !36
  %733 = icmp eq i8 %732, -117
  br i1 %733, label %734, label %744

734:                                              ; preds = %730
  %735 = getelementptr inbounds nuw i8, ptr %726, i64 2
  %736 = load i8, ptr %735, align 1, !tbaa !36
  %737 = icmp eq i8 %736, 8
  br i1 %737, label %738, label %744

738:                                              ; preds = %734
  %739 = getelementptr inbounds nuw i8, ptr %726, i64 3
  %740 = load i8, ptr %739, align 1, !tbaa !36
  %741 = icmp ult i8 %740, 32
  br i1 %741, label %742, label %744

742:                                              ; preds = %738
  %743 = call i32 @inflateReset(ptr noundef nonnull %471) #13
  store i32 2, ptr %467, align 8, !tbaa !26
  store i32 1, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %481, align 8, !tbaa !32
  br label %892

744:                                              ; preds = %738, %734, %730, %727, %724
  %745 = load ptr, ptr %478, align 8, !tbaa !30
  store ptr %745, ptr %464, align 8, !tbaa !22
  %746 = zext i32 %717 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %745, ptr align 1 %726, i64 %746, i1 false)
  %747 = load i32, ptr %466, align 8, !tbaa !34
  store i32 %747, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %466, align 8, !tbaa !34
  store i32 1, ptr %467, align 8, !tbaa !26
  br label %894

748:                                              ; preds = %719, %716, %548
  %749 = load i32, ptr %467, align 8, !tbaa !26
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %.loopexit77, label %892

751:                                              ; preds = %518
  %752 = load ptr, ptr %478, align 8, !tbaa !30
  %753 = load i32, ptr %468, align 8, !tbaa !27
  %754 = shl i32 %753, 1
  store i32 0, ptr %473, align 4, !tbaa !17
  %755 = tail call ptr @__errno_location() #16
  store i32 0, ptr %755, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %756

756:                                              ; preds = %776, %751
  %757 = phi i32 [ %777, %776 ], [ 0, %751 ]
  %758 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %754, i32 %757), !nosanitize !20
  %759 = extractvalue { i32, i1 } %758, 1, !nosanitize !20
  br i1 %759, label %760, label %761, !prof !21, !nosanitize !20

760:                                              ; preds = %756
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

761:                                              ; preds = %756
  %762 = extractvalue { i32, i1 } %758, 0, !nosanitize !20
  %763 = call i32 @llvm.umin.i32(i32 %762, i32 1073741824)
  %764 = load i32, ptr %474, align 4, !tbaa !46
  %765 = zext i32 %757 to i64
  %766 = getelementptr inbounds nuw i8, ptr %752, i64 %765
  %767 = zext nneg i32 %763 to i64
  %768 = call i64 @read(i32 noundef %764, ptr noundef %766, i64 noundef %767) #13
  %769 = trunc i64 %768 to i32
  %770 = icmp slt i32 %769, 1
  br i1 %770, label %779, label %771

771:                                              ; preds = %761
  %772 = load i32, ptr %0, align 4, !tbaa !4
  %773 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %772, i32 %769), !nosanitize !20
  %774 = extractvalue { i32, i1 } %773, 1, !nosanitize !20
  br i1 %774, label %775, label %776, !prof !21, !nosanitize !20

775:                                              ; preds = %771
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

776:                                              ; preds = %771
  %777 = extractvalue { i32, i1 } %773, 0, !nosanitize !20
  store i32 %777, ptr %0, align 4, !tbaa !4
  %778 = icmp ult i32 %777, %754
  br i1 %778, label %756, label %.loopexit74, !llvm.loop !47

779:                                              ; preds = %761
  %780 = icmp slt i32 %769, 0
  br i1 %780, label %781, label %789

781:                                              ; preds = %779
  %782 = load i32, ptr %755, align 4, !tbaa !4
  %783 = icmp eq i32 %782, 11
  br i1 %783, label %784, label %790

784:                                              ; preds = %781
  store i32 1, ptr %473, align 4, !tbaa !17
  %785 = load i32, ptr %0, align 4, !tbaa !4
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %787, label %.loopexit74

787:                                              ; preds = %784
  %788 = load i32, ptr %755, align 4, !tbaa !4
  br label %790

789:                                              ; preds = %779
  store i32 1, ptr %465, align 8, !tbaa !24
  br label %.loopexit74

790:                                              ; preds = %787, %781
  %791 = phi i32 [ %788, %787 ], [ %782, %781 ]
  %792 = call ptr @strerror(i32 noundef %791) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %792) #13
  br label %.loopexit75

.loopexit74:                                      ; preds = %776, %789, %784
  %793 = load ptr, ptr %478, align 8, !tbaa !30
  store ptr %793, ptr %464, align 8, !tbaa !22
  br label %.loopexit77

794:                                              ; preds = %518
  %795 = load i32, ptr %468, align 8, !tbaa !27
  %796 = shl i32 %795, 1
  store i32 %796, ptr %469, align 8, !tbaa !48
  %797 = load ptr, ptr %478, align 8, !tbaa !30
  store ptr %797, ptr %470, align 8, !tbaa !49
  br label %798

798:                                              ; preds = %875, %794
  %799 = phi i32 [ 0, %794 ], [ %860, %875 ]
  %800 = load i32, ptr %466, align 8, !tbaa !34
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %859

802:                                              ; preds = %798
  %803 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %803, label %.loopexit71 [
    i32 0, label %804
    i32 -5, label %804
  ]

804:                                              ; preds = %802, %802
  %805 = load i32, ptr %465, align 8, !tbaa !24
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %855

807:                                              ; preds = %804
  %808 = load i32, ptr %468, align 8, !tbaa !27
  %809 = load ptr, ptr %472, align 8, !tbaa !29
  store i32 0, ptr %473, align 4, !tbaa !17
  %810 = tail call ptr @__errno_location() #16
  store i32 0, ptr %810, align 4, !tbaa !4
  br label %811

811:                                              ; preds = %830, %807
  %812 = phi i32 [ 0, %807 ], [ %831, %830 ]
  %813 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %808, i32 %812), !nosanitize !20
  %814 = extractvalue { i32, i1 } %813, 1, !nosanitize !20
  br i1 %814, label %815, label %816, !prof !21, !nosanitize !20

815:                                              ; preds = %811
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

816:                                              ; preds = %811
  %817 = extractvalue { i32, i1 } %813, 0, !nosanitize !20
  %818 = call i32 @llvm.umin.i32(i32 %817, i32 1073741824)
  %819 = load i32, ptr %474, align 4, !tbaa !46
  %820 = zext i32 %812 to i64
  %821 = getelementptr inbounds nuw i8, ptr %809, i64 %820
  %822 = zext nneg i32 %818 to i64
  %823 = call i64 @read(i32 noundef %819, ptr noundef %821, i64 noundef %822) #13
  %824 = trunc i64 %823 to i32
  %825 = icmp slt i32 %824, 1
  br i1 %825, label %833, label %826

826:                                              ; preds = %816
  %827 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %812, i32 %824), !nosanitize !20
  %828 = extractvalue { i32, i1 } %827, 1, !nosanitize !20
  br i1 %828, label %829, label %830, !prof !21, !nosanitize !20

829:                                              ; preds = %826
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

830:                                              ; preds = %826
  %831 = extractvalue { i32, i1 } %827, 0, !nosanitize !20
  %832 = icmp ult i32 %831, %808
  br i1 %832, label %811, label %.loopexit, !llvm.loop !47

833:                                              ; preds = %816
  %834 = icmp slt i32 %824, 0
  br i1 %834, label %835, label %842

835:                                              ; preds = %833
  %836 = load i32, ptr %810, align 4, !tbaa !4
  %837 = icmp eq i32 %836, 11
  br i1 %837, label %838, label %.loopexit72

838:                                              ; preds = %835
  store i32 1, ptr %473, align 4, !tbaa !17
  %839 = icmp eq i32 %812, 0
  br i1 %839, label %840, label %.loopexit

840:                                              ; preds = %838
  %841 = load i32, ptr %810, align 4, !tbaa !4
  br label %.loopexit72

842:                                              ; preds = %833
  store i32 1, ptr %465, align 8, !tbaa !24
  br label %.loopexit

.loopexit72:                                      ; preds = %835, %840
  %843 = phi i32 [ %841, %840 ], [ %836, %835 ]
  %844 = call ptr @strerror(i32 noundef %843) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %844) #13
  %845 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit71

.loopexit:                                        ; preds = %830, %842, %838
  %846 = phi i32 [ %812, %838 ], [ %812, %842 ], [ %831, %830 ]
  %847 = load i32, ptr %466, align 8, !tbaa !34
  %848 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %847, i32 %846), !nosanitize !20
  %849 = extractvalue { i32, i1 } %848, 1, !nosanitize !20
  br i1 %849, label %850, label %851, !prof !21, !nosanitize !20

850:                                              ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

851:                                              ; preds = %.loopexit
  %852 = extractvalue { i32, i1 } %848, 0, !nosanitize !20
  store i32 %852, ptr %466, align 8, !tbaa !34
  %853 = load ptr, ptr %472, align 8, !tbaa !29
  store ptr %853, ptr %471, align 8, !tbaa !35
  %854 = icmp eq i32 %852, 0
  br i1 %854, label %855, label %859

855:                                              ; preds = %851, %804
  %856 = load i32, ptr %473, align 4, !tbaa !17
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %.loopexit71

858:                                              ; preds = %855
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit71

859:                                              ; preds = %851, %798
  %860 = call i32 @inflate(ptr noundef nonnull %471, i32 noundef 0) #13
  %861 = load i32, ptr %469, align 8, !tbaa !48
  %862 = icmp ult i32 %861, %796
  br i1 %862, label %863, label %864

863:                                              ; preds = %859
  store i32 0, ptr %475, align 4, !tbaa !33
  br label %864

864:                                              ; preds = %863, %859
  switch i32 %860, label %875 [
    i32 -2, label %865
    i32 2, label %865
    i32 -4, label %866
    i32 -3, label %867
  ]

865:                                              ; preds = %864, %864
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit71

866:                                              ; preds = %864
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit71

867:                                              ; preds = %864
  %868 = load i32, ptr %475, align 4, !tbaa !33
  %869 = icmp eq i32 %868, 1
  br i1 %869, label %870, label %871

870:                                              ; preds = %867
  store i32 0, ptr %466, align 8, !tbaa !34
  store i32 1, ptr %465, align 8, !tbaa !24
  store i32 0, ptr %467, align 8, !tbaa !26
  br label %.loopexit71

871:                                              ; preds = %867
  %872 = load ptr, ptr %476, align 8, !tbaa !50
  %873 = icmp eq ptr %872, null
  %874 = select i1 %873, ptr @.str.6, ptr %872
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %874) #13
  br label %.loopexit71

875:                                              ; preds = %864
  %876 = icmp ne i32 %861, 0
  %877 = icmp ne i32 %860, 1
  %878 = select i1 %876, i1 %877, i1 false
  br i1 %878, label %798, label %.loopexit71, !llvm.loop !51

.loopexit71:                                      ; preds = %875, %802, %871, %870, %866, %865, %858, %855, %.loopexit72
  %879 = phi i32 [ %845, %.loopexit72 ], [ %799, %855 ], [ %799, %858 ], [ %860, %865 ], [ -4, %866 ], [ 0, %870 ], [ -3, %871 ], [ %860, %875 ], [ %803, %802 ]
  %880 = load i32, ptr %469, align 8, !tbaa !48
  %881 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %796, i32 %880), !nosanitize !20
  %882 = extractvalue { i32, i1 } %881, 1, !nosanitize !20
  br i1 %882, label %883, label %884, !prof !21, !nosanitize !20

883:                                              ; preds = %.loopexit71
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

884:                                              ; preds = %.loopexit71
  %885 = extractvalue { i32, i1 } %881, 0, !nosanitize !20
  store i32 %885, ptr %0, align 8, !tbaa !19
  %886 = load ptr, ptr %470, align 8, !tbaa !49
  %887 = zext i32 %885 to i64
  %888 = sub nsw i64 0, %887
  %889 = getelementptr inbounds i8, ptr %886, i64 %888
  store ptr %889, ptr %464, align 8, !tbaa !22
  switch i32 %879, label %.loopexit75 [
    i32 1, label %890
    i32 0, label %892
  ]

890:                                              ; preds = %884
  store i32 0, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %467, align 8, !tbaa !26
  br label %892

891:                                              ; preds = %518
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit75

892:                                              ; preds = %890, %884, %748, %742
  %893 = load i32, ptr %0, align 8, !tbaa !19
  br label %894

894:                                              ; preds = %892, %744
  %895 = phi i32 [ %893, %892 ], [ %747, %744 ]
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %897, label %.loopexit77

897:                                              ; preds = %894
  %898 = load i32, ptr %465, align 8, !tbaa !24
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %903, label %900

900:                                              ; preds = %897
  %901 = load i32, ptr %466, align 8, !tbaa !34
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %.loopexit77, label %903

903:                                              ; preds = %900, %897
  %904 = load i32, ptr %467, align 8, !tbaa !26
  br label %518, !llvm.loop !52

.loopexit75:                                      ; preds = %884, %553, %891, %790, %.loopexit76, %539, %534
  %905 = load i32, ptr %0, align 8, !tbaa !19
  %906 = icmp eq i32 %905, 0
  %907 = sext i1 %906 to i32
  br label %.loopexit77

908:                                              ; preds = %514
  %909 = icmp eq i32 %512, 1
  br i1 %909, label %910, label %947

910:                                              ; preds = %908
  store i32 0, ptr %473, align 4, !tbaa !17
  %911 = tail call ptr @__errno_location() #16
  store i32 0, ptr %911, align 4, !tbaa !4
  br label %912

912:                                              ; preds = %931, %910
  %913 = phi i32 [ 0, %910 ], [ %932, %931 ]
  %914 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %487, i32 %913), !nosanitize !20
  %915 = extractvalue { i32, i1 } %914, 1, !nosanitize !20
  br i1 %915, label %916, label %917, !prof !21, !nosanitize !20

916:                                              ; preds = %912
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

917:                                              ; preds = %912
  %918 = extractvalue { i32, i1 } %914, 0, !nosanitize !20
  %919 = call i32 @llvm.umin.i32(i32 %918, i32 1073741824)
  %920 = load i32, ptr %474, align 4, !tbaa !46
  %921 = zext i32 %913 to i64
  %922 = getelementptr inbounds nuw i8, ptr %483, i64 %921
  %923 = zext nneg i32 %919 to i64
  %924 = call i64 @read(i32 noundef %920, ptr noundef %922, i64 noundef %923) #13
  %925 = trunc i64 %924 to i32
  %926 = icmp slt i32 %925, 1
  br i1 %926, label %934, label %927

927:                                              ; preds = %917
  %928 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %913, i32 %925), !nosanitize !20
  %929 = extractvalue { i32, i1 } %928, 1, !nosanitize !20
  br i1 %929, label %930, label %931, !prof !21, !nosanitize !20

930:                                              ; preds = %927
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

931:                                              ; preds = %927
  %932 = extractvalue { i32, i1 } %928, 0, !nosanitize !20
  %933 = icmp ult i32 %932, %487
  br i1 %933, label %912, label %1047, !llvm.loop !47

934:                                              ; preds = %917
  %935 = icmp slt i32 %925, 0
  br i1 %935, label %936, label %946

936:                                              ; preds = %934
  %937 = load i32, ptr %911, align 4, !tbaa !4
  %938 = icmp eq i32 %937, 11
  br i1 %938, label %939, label %943

939:                                              ; preds = %936
  store i32 1, ptr %473, align 4, !tbaa !17
  %940 = icmp eq i32 %913, 0
  br i1 %940, label %941, label %1049

941:                                              ; preds = %939
  %942 = load i32, ptr %911, align 4, !tbaa !4
  br label %943

943:                                              ; preds = %941, %936
  %944 = phi i32 [ %942, %941 ], [ %937, %936 ]
  %945 = call ptr @strerror(i32 noundef %944) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %945) #13
  br label %1049

946:                                              ; preds = %934
  store i32 1, ptr %465, align 8, !tbaa !24
  br label %1049

947:                                              ; preds = %908
  store i32 %487, ptr %469, align 8, !tbaa !58
  store ptr %483, ptr %470, align 8, !tbaa !59
  br label %948

948:                                              ; preds = %1025, %947
  %949 = phi i32 [ 0, %947 ], [ %1010, %1025 ]
  %950 = load i32, ptr %466, align 8, !tbaa !34
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %952, label %1009

952:                                              ; preds = %948
  %953 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %953, label %.loopexit78 [
    i32 0, label %954
    i32 -5, label %954
  ]

954:                                              ; preds = %952, %952
  %955 = load i32, ptr %465, align 8, !tbaa !24
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %1005

957:                                              ; preds = %954
  %958 = load i32, ptr %468, align 8, !tbaa !27
  %959 = load ptr, ptr %472, align 8, !tbaa !29
  store i32 0, ptr %473, align 4, !tbaa !17
  %960 = tail call ptr @__errno_location() #16
  store i32 0, ptr %960, align 4, !tbaa !4
  br label %961

961:                                              ; preds = %980, %957
  %962 = phi i32 [ 0, %957 ], [ %981, %980 ]
  %963 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %958, i32 %962), !nosanitize !20
  %964 = extractvalue { i32, i1 } %963, 1, !nosanitize !20
  br i1 %964, label %965, label %966, !prof !21, !nosanitize !20

965:                                              ; preds = %961
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

966:                                              ; preds = %961
  %967 = extractvalue { i32, i1 } %963, 0, !nosanitize !20
  %968 = call i32 @llvm.umin.i32(i32 %967, i32 1073741824)
  %969 = load i32, ptr %474, align 4, !tbaa !46
  %970 = zext i32 %962 to i64
  %971 = getelementptr inbounds nuw i8, ptr %959, i64 %970
  %972 = zext nneg i32 %968 to i64
  %973 = call i64 @read(i32 noundef %969, ptr noundef %971, i64 noundef %972) #13
  %974 = trunc i64 %973 to i32
  %975 = icmp slt i32 %974, 1
  br i1 %975, label %983, label %976

976:                                              ; preds = %966
  %977 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %962, i32 %974), !nosanitize !20
  %978 = extractvalue { i32, i1 } %977, 1, !nosanitize !20
  br i1 %978, label %979, label %980, !prof !21, !nosanitize !20

979:                                              ; preds = %976
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

980:                                              ; preds = %976
  %981 = extractvalue { i32, i1 } %977, 0, !nosanitize !20
  %982 = icmp ult i32 %981, %958
  br i1 %982, label %961, label %.loopexit73, !llvm.loop !47

983:                                              ; preds = %966
  %984 = icmp slt i32 %974, 0
  br i1 %984, label %985, label %992

985:                                              ; preds = %983
  %986 = load i32, ptr %960, align 4, !tbaa !4
  %987 = icmp eq i32 %986, 11
  br i1 %987, label %988, label %.loopexit80

988:                                              ; preds = %985
  store i32 1, ptr %473, align 4, !tbaa !17
  %989 = icmp eq i32 %962, 0
  br i1 %989, label %990, label %.loopexit73

990:                                              ; preds = %988
  %991 = load i32, ptr %960, align 4, !tbaa !4
  br label %.loopexit80

992:                                              ; preds = %983
  store i32 1, ptr %465, align 8, !tbaa !24
  br label %.loopexit73

.loopexit80:                                      ; preds = %985, %990
  %993 = phi i32 [ %991, %990 ], [ %986, %985 ]
  %994 = call ptr @strerror(i32 noundef %993) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %994) #13
  %995 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit78

.loopexit73:                                      ; preds = %980, %992, %988
  %996 = phi i32 [ %962, %988 ], [ %962, %992 ], [ %981, %980 ]
  %997 = load i32, ptr %466, align 8, !tbaa !34
  %998 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %997, i32 %996), !nosanitize !20
  %999 = extractvalue { i32, i1 } %998, 1, !nosanitize !20
  br i1 %999, label %1000, label %1001, !prof !21, !nosanitize !20

1000:                                             ; preds = %.loopexit73
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1001:                                             ; preds = %.loopexit73
  %1002 = extractvalue { i32, i1 } %998, 0, !nosanitize !20
  store i32 %1002, ptr %466, align 8, !tbaa !34
  %1003 = load ptr, ptr %472, align 8, !tbaa !29
  store ptr %1003, ptr %471, align 8, !tbaa !35
  %1004 = icmp eq i32 %1002, 0
  br i1 %1004, label %1005, label %1009

1005:                                             ; preds = %1001, %954
  %1006 = load i32, ptr %473, align 4, !tbaa !17
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %.loopexit78

1008:                                             ; preds = %1005
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit78

1009:                                             ; preds = %1001, %948
  %1010 = call i32 @inflate(ptr noundef nonnull %471, i32 noundef 0) #13
  %1011 = load i32, ptr %469, align 8, !tbaa !48
  %1012 = icmp ult i32 %1011, %487
  br i1 %1012, label %1013, label %1014

1013:                                             ; preds = %1009
  store i32 0, ptr %475, align 4, !tbaa !33
  br label %1014

1014:                                             ; preds = %1013, %1009
  switch i32 %1010, label %1025 [
    i32 -2, label %1015
    i32 2, label %1015
    i32 -4, label %1016
    i32 -3, label %1017
  ]

1015:                                             ; preds = %1014, %1014
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit78

1016:                                             ; preds = %1014
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

1017:                                             ; preds = %1014
  %1018 = load i32, ptr %475, align 4, !tbaa !33
  %1019 = icmp eq i32 %1018, 1
  br i1 %1019, label %1020, label %1021

1020:                                             ; preds = %1017
  store i32 0, ptr %466, align 8, !tbaa !34
  store i32 1, ptr %465, align 8, !tbaa !24
  store i32 0, ptr %467, align 8, !tbaa !26
  br label %.loopexit78

1021:                                             ; preds = %1017
  %1022 = load ptr, ptr %476, align 8, !tbaa !50
  %1023 = icmp eq ptr %1022, null
  %1024 = select i1 %1023, ptr @.str.6, ptr %1022
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1024) #13
  br label %.loopexit78

1025:                                             ; preds = %1014
  %1026 = icmp ne i32 %1011, 0
  %1027 = icmp ne i32 %1010, 1
  %1028 = select i1 %1026, i1 %1027, i1 false
  br i1 %1028, label %948, label %.loopexit78, !llvm.loop !51

.loopexit78:                                      ; preds = %1025, %952, %1021, %1020, %1016, %1015, %1008, %1005, %.loopexit80
  %1029 = phi i32 [ %995, %.loopexit80 ], [ %949, %1005 ], [ %949, %1008 ], [ %1010, %1015 ], [ -4, %1016 ], [ 0, %1020 ], [ -3, %1021 ], [ %953, %952 ], [ %1010, %1025 ]
  %1030 = load i32, ptr %469, align 8, !tbaa !48
  %1031 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %487, i32 %1030), !nosanitize !20
  %1032 = extractvalue { i32, i1 } %1031, 1, !nosanitize !20
  br i1 %1032, label %1033, label %1034, !prof !21, !nosanitize !20

1033:                                             ; preds = %.loopexit78
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1034:                                             ; preds = %.loopexit78
  %1035 = extractvalue { i32, i1 } %1031, 0, !nosanitize !20
  %1036 = load ptr, ptr %470, align 8, !tbaa !49
  %1037 = zext i32 %1035 to i64
  %1038 = sub nsw i64 0, %1037
  %1039 = getelementptr inbounds i8, ptr %1036, i64 %1038
  store ptr %1039, ptr %464, align 8, !tbaa !22
  %1040 = icmp eq i32 %1029, 1
  br i1 %1040, label %1041, label %1042

1041:                                             ; preds = %1034
  store i32 0, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %467, align 8, !tbaa !26
  br label %1045

1042:                                             ; preds = %1034
  %1043 = icmp ne i32 %1029, 0
  %1044 = sext i1 %1043 to i32
  br label %1045

1045:                                             ; preds = %1042, %1041
  %1046 = phi i32 [ 0, %1041 ], [ %1044, %1042 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1049

1047:                                             ; preds = %931
  %1048 = zext i32 %932 to i64
  br label %1049

1049:                                             ; preds = %1047, %1045, %946, %943, %939, %500
  %1050 = phi i64 [ %1048, %1047 ], [ %921, %946 ], [ %921, %943 ], [ %921, %939 ], [ %493, %500 ], [ %1037, %1045 ]
  %1051 = phi i32 [ 0, %1047 ], [ 0, %946 ], [ -1, %943 ], [ 0, %939 ], [ %504, %500 ], [ %1046, %1045 ]
  %1052 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %484, i64 %1050), !nosanitize !20
  %1053 = extractvalue { i64, i1 } %1052, 0, !nosanitize !20
  %1054 = extractvalue { i64, i1 } %1052, 1, !nosanitize !20
  br i1 %1054, label %1055, label %1056, !prof !21, !nosanitize !20

1055:                                             ; preds = %1049
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1056:                                             ; preds = %1049
  %1057 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %485, i64 %1050), !nosanitize !20
  %1058 = extractvalue { i64, i1 } %1057, 1, !nosanitize !20
  br i1 %1058, label %1059, label %1060, !prof !21, !nosanitize !20

1059:                                             ; preds = %1056
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1060:                                             ; preds = %1056
  %1061 = extractvalue { i64, i1 } %1057, 0, !nosanitize !20
  %1062 = getelementptr inbounds nuw i8, ptr %483, i64 %1050
  %1063 = load i64, ptr %477, align 8, !tbaa !23
  %1064 = add nsw i64 %1063, %1050
  store i64 %1064, ptr %477, align 8, !tbaa !23
  %1065 = icmp eq i64 %1053, 0
  br i1 %1065, label %.loopexit82, label %.loopexit77

.loopexit77:                                      ; preds = %900, %894, %748, %1060, %.loopexit75, %.loopexit74
  %1066 = phi i32 [ %1051, %1060 ], [ %907, %.loopexit75 ], [ 0, %.loopexit74 ], [ 0, %748 ], [ 0, %894 ], [ 0, %900 ]
  %1067 = phi i64 [ %1061, %1060 ], [ %485, %.loopexit75 ], [ %485, %.loopexit74 ], [ %485, %748 ], [ %485, %894 ], [ %485, %900 ]
  %1068 = phi i64 [ %1053, %1060 ], [ %484, %.loopexit75 ], [ %484, %.loopexit74 ], [ %484, %748 ], [ %484, %894 ], [ %484, %900 ]
  %1069 = phi ptr [ %1062, %1060 ], [ %483, %.loopexit75 ], [ %483, %.loopexit74 ], [ %483, %748 ], [ %483, %894 ], [ %483, %900 ]
  %1070 = icmp eq i32 %1066, 0
  br i1 %1070, label %482, label %1071, !llvm.loop !60

1071:                                             ; preds = %.loopexit77
  %1072 = load i32, ptr %465, align 8, !tbaa !24
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %.loopexit82, label %.loopexit81

.loopexit81:                                      ; preds = %508, %1071
  %1074 = phi i64 [ %1067, %1071 ], [ %485, %508 ]
  %1075 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1075, align 4, !tbaa !61
  br label %.loopexit82

.loopexit82:                                      ; preds = %1060, %.loopexit81, %1071
  %1076 = phi i64 [ %1067, %1071 ], [ %1074, %.loopexit81 ], [ %1061, %1060 ]
  %1077 = freeze i64 %1076
  %1078 = icmp eq i64 %1077, 0
  %1079 = load i8, ptr %2, align 1
  %1080 = zext i8 %1079 to i32
  br i1 %1078, label %.loopexit93, label %1081

.loopexit93:                                      ; preds = %441, %111, %.loopexit82, %448, %.loopexit97, %.loopexit94, %97, %92
  br label %1081

1081:                                             ; preds = %.loopexit93, %.loopexit82, %18, %11, %4, %1
  %1082 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %27, %18 ], [ -1, %11 ], [ -1, %.loopexit93 ], [ %1080, %.loopexit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1082
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1081, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1081

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
  br i1 %14, label %1081, label %15

15:                                               ; preds = %11, %8, %8
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
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
  br label %1081

28:                                               ; preds = %15
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %30 = load i64, ptr %29, align 8, !tbaa !18
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %.loopexit96, label %32

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

51:                                               ; preds = %461, %32
  %52 = phi i64 [ %462, %461 ], [ %30, %32 ]
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
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
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
  br label %461

70:                                               ; preds = %51
  %71 = load i32, ptr %35, align 8, !tbaa !24
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %.preheader978, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %36, align 8, !tbaa !25
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %.loopexit96, label %.preheader978

.preheader978:                                    ; preds = %73, %70
  br label %76

76:                                               ; preds = %.backedge, %.preheader978
  %77 = load i32, ptr %37, align 8, !tbaa !26
  switch i32 %77, label %448 [
    i32 0, label %78
    i32 1, label %309
    i32 2, label %351
  ]

78:                                               ; preds = %76
  %79 = load i32, ptr %38, align 8, !tbaa !27
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load i32, ptr %48, align 4, !tbaa !28
  %83 = zext i32 %82 to i64
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #15
  store ptr %84, ptr %43, align 8, !tbaa !29
  %85 = load i32, ptr %48, align 4, !tbaa !28
  %86 = shl i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = tail call noalias ptr @malloc(i64 noundef %87) #15
  store ptr %88, ptr %40, align 8, !tbaa !30
  %89 = icmp eq ptr %84, null
  %90 = icmp eq ptr %88, null
  %91 = or i1 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  tail call void @free(ptr noundef %88) #13
  tail call void @free(ptr noundef %84) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit93

93:                                               ; preds = %81
  %94 = load i32, ptr %48, align 4, !tbaa !28
  store i32 %94, ptr %38, align 8, !tbaa !27
  store i32 0, ptr %36, align 8, !tbaa !25
  store ptr null, ptr %42, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %95 = tail call i32 @inflateInit2_(ptr noundef nonnull %42, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %40, align 8, !tbaa !30
  tail call void @free(ptr noundef %98) #13
  %99 = load ptr, ptr %43, align 8, !tbaa !29
  tail call void @free(ptr noundef %99) #13
  store i32 0, ptr %38, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit93

100:                                              ; preds = %93, %78
  %101 = load i32, ptr %50, align 8, !tbaa !32
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, ptr %46, align 4, !tbaa !33
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103, %100
  %107 = tail call i32 @inflateReset(ptr noundef nonnull %42) #13
  store i32 2, ptr %37, align 8, !tbaa !26
  %108 = load i32, ptr %46, align 4, !tbaa !33
  %109 = icmp ne i32 %108, -1
  %110 = zext i1 %109 to i32
  store i32 %110, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %50, align 8, !tbaa !32
  br label %306

111:                                              ; preds = %103
  %112 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %112, label %.loopexit93 [
    i32 0, label %113
    i32 -5, label %113
  ]

113:                                              ; preds = %111, %111
  %114 = load i32, ptr %35, align 8, !tbaa !24
  %115 = icmp eq i32 %114, 0
  %116 = load i32, ptr %36, align 8, !tbaa !34
  br i1 %115, label %117, label %274

117:                                              ; preds = %113
  %118 = icmp eq i32 %116, 0
  br i1 %118, label %220, label %119

119:                                              ; preds = %117
  %120 = load ptr, ptr %43, align 8, !tbaa !29
  %121 = load ptr, ptr %42, align 8, !tbaa !35
  %122 = icmp eq ptr %121, %120
  br i1 %122, label %220, label %123

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
  %143 = add nuw nsw i64 %136, 32
  %144 = icmp eq i64 %143, %134
  br i1 %144, label %145, label %135, !llvm.loop !78

145:                                              ; preds = %135
  %146 = icmp eq i64 %134, %126
  br i1 %146, label %.loopexit86, label %147

147:                                              ; preds = %145
  %148 = trunc nuw i64 %134 to i32
  %149 = sub i32 %116, %148
  %150 = getelementptr i8, ptr %121, i64 %134
  %151 = getelementptr i8, ptr %120, i64 %134
  %152 = and i64 %126, 28
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %170, label %154, !prof !41

154:                                              ; preds = %147, %131
  %155 = phi i64 [ %134, %147 ], [ 0, %131 ]
  %156 = and i64 %126, 4294967292
  br label %157

157:                                              ; preds = %157, %154
  %158 = phi i64 [ %155, %154 ], [ %162, %157 ]
  %159 = getelementptr i8, ptr %120, i64 %158
  %160 = getelementptr i8, ptr %121, i64 %158
  %161 = load <4 x i8>, ptr %160, align 1, !tbaa !36
  store <4 x i8> %161, ptr %159, align 1, !tbaa !36
  %162 = add nuw i64 %158, 4
  %163 = icmp eq i64 %162, %156
  br i1 %163, label %164, label %157, !llvm.loop !79

164:                                              ; preds = %157
  %165 = getelementptr i8, ptr %120, i64 %156
  %166 = getelementptr i8, ptr %121, i64 %156
  %167 = trunc nuw i64 %156 to i32
  %168 = sub i32 %116, %167
  %169 = icmp eq i64 %156, %126
  br i1 %169, label %.loopexit86, label %170

170:                                              ; preds = %164, %147, %123
  %171 = phi ptr [ %120, %123 ], [ %151, %147 ], [ %165, %164 ]
  %172 = phi ptr [ %121, %123 ], [ %150, %147 ], [ %166, %164 ]
  %173 = phi i32 [ %116, %123 ], [ %149, %147 ], [ %168, %164 ]
  %174 = add i32 %173, -1
  %175 = and i32 %173, 7
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %.loopexit88, label %.preheader87

.preheader87:                                     ; preds = %170, %.preheader87
  %177 = phi ptr [ %181, %.preheader87 ], [ %171, %170 ]
  %178 = phi ptr [ %182, %.preheader87 ], [ %172, %170 ]
  %179 = phi i32 [ %183, %.preheader87 ], [ 0, %170 ]
  %180 = load i8, ptr %178, align 1, !tbaa !36
  store i8 %180, ptr %177, align 1, !tbaa !36
  %181 = getelementptr inbounds nuw i8, ptr %177, i64 1
  %182 = getelementptr inbounds nuw i8, ptr %178, i64 1
  %183 = add nuw nsw i32 %179, 1
  %184 = icmp eq i32 %183, %175
  br i1 %184, label %.loopexit88.loopexit, label %.preheader87, !llvm.loop !80

.loopexit88.loopexit:                             ; preds = %.preheader87
  %185 = and i32 %173, -8
  br label %.loopexit88

.loopexit88:                                      ; preds = %.loopexit88.loopexit, %170
  %186 = phi ptr [ %171, %170 ], [ %181, %.loopexit88.loopexit ]
  %187 = phi ptr [ %172, %170 ], [ %182, %.loopexit88.loopexit ]
  %188 = phi i32 [ %173, %170 ], [ %185, %.loopexit88.loopexit ]
  %189 = icmp ult i32 %174, 7
  br i1 %189, label %.loopexit86, label %.preheader85

.preheader85:                                     ; preds = %.loopexit88, %.preheader85
  %190 = phi ptr [ %216, %.preheader85 ], [ %186, %.loopexit88 ]
  %191 = phi ptr [ %217, %.preheader85 ], [ %187, %.loopexit88 ]
  %192 = phi i32 [ %215, %.preheader85 ], [ %188, %.loopexit88 ]
  %193 = load i8, ptr %191, align 1, !tbaa !36
  store i8 %193, ptr %190, align 1, !tbaa !36
  %194 = getelementptr inbounds nuw i8, ptr %190, i64 1
  %195 = getelementptr inbounds nuw i8, ptr %191, i64 1
  %196 = load i8, ptr %195, align 1, !tbaa !36
  store i8 %196, ptr %194, align 1, !tbaa !36
  %197 = getelementptr inbounds nuw i8, ptr %190, i64 2
  %198 = getelementptr inbounds nuw i8, ptr %191, i64 2
  %199 = load i8, ptr %198, align 1, !tbaa !36
  store i8 %199, ptr %197, align 1, !tbaa !36
  %200 = getelementptr inbounds nuw i8, ptr %190, i64 3
  %201 = getelementptr inbounds nuw i8, ptr %191, i64 3
  %202 = load i8, ptr %201, align 1, !tbaa !36
  store i8 %202, ptr %200, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %190, i64 4
  %204 = getelementptr inbounds nuw i8, ptr %191, i64 4
  %205 = load i8, ptr %204, align 1, !tbaa !36
  store i8 %205, ptr %203, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %190, i64 5
  %207 = getelementptr inbounds nuw i8, ptr %191, i64 5
  %208 = load i8, ptr %207, align 1, !tbaa !36
  store i8 %208, ptr %206, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %190, i64 6
  %210 = getelementptr inbounds nuw i8, ptr %191, i64 6
  %211 = load i8, ptr %210, align 1, !tbaa !36
  store i8 %211, ptr %209, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %190, i64 7
  %213 = getelementptr inbounds nuw i8, ptr %191, i64 7
  %214 = load i8, ptr %213, align 1, !tbaa !36
  store i8 %214, ptr %212, align 1, !tbaa !36
  %215 = add i32 %192, -8
  %216 = getelementptr inbounds nuw i8, ptr %190, i64 8
  %217 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %218 = icmp eq i32 %215, 0
  br i1 %218, label %.loopexit86, label %.preheader85, !llvm.loop !81

.loopexit86:                                      ; preds = %.preheader85, %.loopexit88, %164, %145
  %219 = load i32, ptr %36, align 8, !tbaa !34
  br label %220

220:                                              ; preds = %.loopexit86, %119, %117
  %221 = phi i32 [ %219, %.loopexit86 ], [ %116, %119 ], [ 0, %117 ]
  %222 = load i32, ptr %38, align 8, !tbaa !27
  %223 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %222, i32 %221), !nosanitize !20
  %224 = extractvalue { i32, i1 } %223, 1, !nosanitize !20
  br i1 %224, label %225, label %226, !prof !21, !nosanitize !20

225:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

226:                                              ; preds = %220
  %227 = extractvalue { i32, i1 } %223, 0, !nosanitize !20
  %228 = load ptr, ptr %43, align 8, !tbaa !29
  %229 = zext i32 %221 to i64
  %230 = getelementptr inbounds nuw i8, ptr %228, i64 %229
  store i32 0, ptr %44, align 4, !tbaa !17
  %231 = tail call ptr @__errno_location() #16
  store i32 0, ptr %231, align 4, !tbaa !4
  br label %232

232:                                              ; preds = %251, %226
  %233 = phi i32 [ 0, %226 ], [ %252, %251 ]
  %234 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %227, i32 %233), !nosanitize !20
  %235 = extractvalue { i32, i1 } %234, 1, !nosanitize !20
  br i1 %235, label %236, label %237, !prof !21, !nosanitize !20

236:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

237:                                              ; preds = %232
  %238 = extractvalue { i32, i1 } %234, 0, !nosanitize !20
  %239 = tail call i32 @llvm.umin.i32(i32 %238, i32 1073741824)
  %240 = load i32, ptr %45, align 4, !tbaa !46
  %241 = zext i32 %233 to i64
  %242 = getelementptr inbounds nuw i8, ptr %230, i64 %241
  %243 = zext nneg i32 %239 to i64
  %244 = tail call i64 @read(i32 noundef %240, ptr noundef %242, i64 noundef %243) #13
  %245 = trunc i64 %244 to i32
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %254, label %247

247:                                              ; preds = %237
  %248 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %233, i32 %245), !nosanitize !20
  %249 = extractvalue { i32, i1 } %248, 1, !nosanitize !20
  br i1 %249, label %250, label %251, !prof !21, !nosanitize !20

250:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

251:                                              ; preds = %247
  %252 = extractvalue { i32, i1 } %248, 0, !nosanitize !20
  %253 = icmp ult i32 %252, %227
  br i1 %253, label %232, label %.loopexit84, !llvm.loop !47

254:                                              ; preds = %237
  %255 = icmp slt i32 %245, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %254
  %257 = load i32, ptr %231, align 4, !tbaa !4
  %258 = icmp eq i32 %257, 11
  br i1 %258, label %259, label %.loopexit94

259:                                              ; preds = %256
  store i32 1, ptr %44, align 4, !tbaa !17
  %260 = icmp eq i32 %233, 0
  br i1 %260, label %261, label %.loopexit84

261:                                              ; preds = %259
  %262 = load i32, ptr %231, align 4, !tbaa !4
  br label %.loopexit94

263:                                              ; preds = %254
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %.loopexit84

.loopexit94:                                      ; preds = %256, %261
  %264 = phi i32 [ %262, %261 ], [ %257, %256 ]
  %265 = tail call ptr @strerror(i32 noundef %264) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %265) #13
  br label %.loopexit93

.loopexit84:                                      ; preds = %251, %263, %259
  %266 = phi i32 [ %233, %259 ], [ %233, %263 ], [ %252, %251 ]
  %267 = load i32, ptr %36, align 8, !tbaa !34
  %268 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %267, i32 %266), !nosanitize !20
  %269 = extractvalue { i32, i1 } %268, 1, !nosanitize !20
  br i1 %269, label %270, label %271, !prof !21, !nosanitize !20

270:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

271:                                              ; preds = %.loopexit84
  %272 = extractvalue { i32, i1 } %268, 0, !nosanitize !20
  store i32 %272, ptr %36, align 8, !tbaa !34
  %273 = load ptr, ptr %43, align 8, !tbaa !29
  store ptr %273, ptr %42, align 8, !tbaa !35
  br label %274

274:                                              ; preds = %271, %113
  %275 = phi i32 [ %272, %271 ], [ %116, %113 ]
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %306, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %44, align 4, !tbaa !17
  %279 = icmp ne i32 %278, 0
  %280 = icmp ult i32 %275, 4
  %281 = and i1 %280, %279
  br i1 %281, label %306, label %282

282:                                              ; preds = %277
  %283 = icmp ugt i32 %275, 3
  %284 = load ptr, ptr %42, align 8, !tbaa !35
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
  %301 = tail call i32 @inflateReset(ptr noundef nonnull %42) #13
  store i32 2, ptr %37, align 8, !tbaa !26
  store i32 1, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %50, align 8, !tbaa !32
  br label %449

302:                                              ; preds = %296, %292, %288, %285, %282
  %303 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %303, ptr %33, align 8, !tbaa !22
  %304 = zext i32 %275 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %303, ptr align 1 %284, i64 %304, i1 false)
  %305 = load i32, ptr %36, align 8, !tbaa !34
  store i32 %305, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %36, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !26
  br label %451

306:                                              ; preds = %277, %274, %106
  %307 = load i32, ptr %37, align 8, !tbaa !26
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %.loopexit95, label %449

309:                                              ; preds = %76
  %310 = load ptr, ptr %40, align 8, !tbaa !30
  %311 = load i32, ptr %38, align 8, !tbaa !27
  %312 = shl i32 %311, 1
  store i32 0, ptr %44, align 4, !tbaa !17
  %313 = tail call ptr @__errno_location() #16
  store i32 0, ptr %313, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %314

314:                                              ; preds = %334, %309
  %315 = phi i32 [ %335, %334 ], [ 0, %309 ]
  %316 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %312, i32 %315), !nosanitize !20
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !20
  br i1 %317, label %318, label %319, !prof !21, !nosanitize !20

318:                                              ; preds = %314
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

319:                                              ; preds = %314
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !20
  %321 = tail call i32 @llvm.umin.i32(i32 %320, i32 1073741824)
  %322 = load i32, ptr %45, align 4, !tbaa !46
  %323 = zext i32 %315 to i64
  %324 = getelementptr inbounds nuw i8, ptr %310, i64 %323
  %325 = zext nneg i32 %321 to i64
  %326 = tail call i64 @read(i32 noundef %322, ptr noundef %324, i64 noundef %325) #13
  %327 = trunc i64 %326 to i32
  %328 = icmp slt i32 %327, 1
  br i1 %328, label %337, label %329

329:                                              ; preds = %319
  %330 = load i32, ptr %0, align 4, !tbaa !4
  %331 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %330, i32 %327), !nosanitize !20
  %332 = extractvalue { i32, i1 } %331, 1, !nosanitize !20
  br i1 %332, label %333, label %334, !prof !21, !nosanitize !20

333:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

334:                                              ; preds = %329
  %335 = extractvalue { i32, i1 } %331, 0, !nosanitize !20
  store i32 %335, ptr %0, align 4, !tbaa !4
  %336 = icmp ult i32 %335, %312
  br i1 %336, label %314, label %.loopexit92, !llvm.loop !47

337:                                              ; preds = %319
  %338 = icmp slt i32 %327, 0
  br i1 %338, label %339, label %347

339:                                              ; preds = %337
  %340 = load i32, ptr %313, align 4, !tbaa !4
  %341 = icmp eq i32 %340, 11
  br i1 %341, label %342, label %.loopexit97

342:                                              ; preds = %339
  store i32 1, ptr %44, align 4, !tbaa !17
  %343 = load i32, ptr %0, align 4, !tbaa !4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %.loopexit92

345:                                              ; preds = %342
  %346 = load i32, ptr %313, align 4, !tbaa !4
  br label %.loopexit97

347:                                              ; preds = %337
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %.loopexit92

.loopexit97:                                      ; preds = %339, %345
  %348 = phi i32 [ %346, %345 ], [ %340, %339 ]
  %349 = tail call ptr @strerror(i32 noundef %348) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %349) #13
  br label %.loopexit93

.loopexit92:                                      ; preds = %334, %347, %342
  %350 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %350, ptr %33, align 8, !tbaa !22
  br label %.loopexit95

351:                                              ; preds = %76
  %352 = load i32, ptr %38, align 8, !tbaa !27
  %353 = shl i32 %352, 1
  store i32 %353, ptr %39, align 8, !tbaa !48
  %354 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %354, ptr %41, align 8, !tbaa !49
  br label %355

355:                                              ; preds = %432, %351
  %356 = phi i32 [ 0, %351 ], [ %417, %432 ]
  %357 = load i32, ptr %36, align 8, !tbaa !34
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %416

359:                                              ; preds = %355
  %360 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %360, label %.loopexit89 [
    i32 0, label %361
    i32 -5, label %361
  ]

361:                                              ; preds = %359, %359
  %362 = load i32, ptr %35, align 8, !tbaa !24
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %412

364:                                              ; preds = %361
  %365 = load i32, ptr %38, align 8, !tbaa !27
  %366 = load ptr, ptr %43, align 8, !tbaa !29
  store i32 0, ptr %44, align 4, !tbaa !17
  %367 = tail call ptr @__errno_location() #16
  store i32 0, ptr %367, align 4, !tbaa !4
  br label %368

368:                                              ; preds = %387, %364
  %369 = phi i32 [ 0, %364 ], [ %388, %387 ]
  %370 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %365, i32 %369), !nosanitize !20
  %371 = extractvalue { i32, i1 } %370, 1, !nosanitize !20
  br i1 %371, label %372, label %373, !prof !21, !nosanitize !20

372:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

373:                                              ; preds = %368
  %374 = extractvalue { i32, i1 } %370, 0, !nosanitize !20
  %375 = tail call i32 @llvm.umin.i32(i32 %374, i32 1073741824)
  %376 = load i32, ptr %45, align 4, !tbaa !46
  %377 = zext i32 %369 to i64
  %378 = getelementptr inbounds nuw i8, ptr %366, i64 %377
  %379 = zext nneg i32 %375 to i64
  %380 = tail call i64 @read(i32 noundef %376, ptr noundef %378, i64 noundef %379) #13
  %381 = trunc i64 %380 to i32
  %382 = icmp slt i32 %381, 1
  br i1 %382, label %390, label %383

383:                                              ; preds = %373
  %384 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %369, i32 %381), !nosanitize !20
  %385 = extractvalue { i32, i1 } %384, 1, !nosanitize !20
  br i1 %385, label %386, label %387, !prof !21, !nosanitize !20

386:                                              ; preds = %383
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

387:                                              ; preds = %383
  %388 = extractvalue { i32, i1 } %384, 0, !nosanitize !20
  %389 = icmp ult i32 %388, %365
  br i1 %389, label %368, label %.loopexit83, !llvm.loop !47

390:                                              ; preds = %373
  %391 = icmp slt i32 %381, 0
  br i1 %391, label %392, label %399

392:                                              ; preds = %390
  %393 = load i32, ptr %367, align 4, !tbaa !4
  %394 = icmp eq i32 %393, 11
  br i1 %394, label %395, label %.loopexit91

395:                                              ; preds = %392
  store i32 1, ptr %44, align 4, !tbaa !17
  %396 = icmp eq i32 %369, 0
  br i1 %396, label %397, label %.loopexit83

397:                                              ; preds = %395
  %398 = load i32, ptr %367, align 4, !tbaa !4
  br label %.loopexit91

399:                                              ; preds = %390
  store i32 1, ptr %35, align 8, !tbaa !24
  br label %.loopexit83

.loopexit91:                                      ; preds = %392, %397
  %400 = phi i32 [ %398, %397 ], [ %393, %392 ]
  %401 = tail call ptr @strerror(i32 noundef %400) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %401) #13
  %402 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit89

.loopexit83:                                      ; preds = %387, %399, %395
  %403 = phi i32 [ %369, %395 ], [ %369, %399 ], [ %388, %387 ]
  %404 = load i32, ptr %36, align 8, !tbaa !34
  %405 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %404, i32 %403), !nosanitize !20
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !20
  br i1 %406, label %407, label %408, !prof !21, !nosanitize !20

407:                                              ; preds = %.loopexit83
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

408:                                              ; preds = %.loopexit83
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !20
  store i32 %409, ptr %36, align 8, !tbaa !34
  %410 = load ptr, ptr %43, align 8, !tbaa !29
  store ptr %410, ptr %42, align 8, !tbaa !35
  %411 = icmp eq i32 %409, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %408, %361
  %413 = load i32, ptr %44, align 4, !tbaa !17
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %.loopexit89

415:                                              ; preds = %412
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit89

416:                                              ; preds = %408, %355
  %417 = tail call i32 @inflate(ptr noundef nonnull %42, i32 noundef 0) #13
  %418 = load i32, ptr %39, align 8, !tbaa !48
  %419 = icmp ult i32 %418, %353
  br i1 %419, label %420, label %421

420:                                              ; preds = %416
  store i32 0, ptr %46, align 4, !tbaa !33
  br label %421

421:                                              ; preds = %420, %416
  switch i32 %417, label %432 [
    i32 -2, label %422
    i32 2, label %422
    i32 -4, label %423
    i32 -3, label %424
  ]

422:                                              ; preds = %421, %421
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit89

423:                                              ; preds = %421
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit89

424:                                              ; preds = %421
  %425 = load i32, ptr %46, align 4, !tbaa !33
  %426 = icmp eq i32 %425, 1
  br i1 %426, label %427, label %428

427:                                              ; preds = %424
  store i32 0, ptr %36, align 8, !tbaa !34
  store i32 1, ptr %35, align 8, !tbaa !24
  store i32 0, ptr %37, align 8, !tbaa !26
  br label %.loopexit89

428:                                              ; preds = %424
  %429 = load ptr, ptr %47, align 8, !tbaa !50
  %430 = icmp eq ptr %429, null
  %431 = select i1 %430, ptr @.str.6, ptr %429
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %431) #13
  br label %.loopexit89

432:                                              ; preds = %421
  %433 = icmp ne i32 %418, 0
  %434 = icmp ne i32 %417, 1
  %435 = select i1 %433, i1 %434, i1 false
  br i1 %435, label %355, label %.loopexit89, !llvm.loop !51

.loopexit89:                                      ; preds = %432, %359, %428, %427, %423, %422, %415, %412, %.loopexit91
  %436 = phi i32 [ %402, %.loopexit91 ], [ %356, %412 ], [ %356, %415 ], [ %417, %422 ], [ -4, %423 ], [ 0, %427 ], [ -3, %428 ], [ %417, %432 ], [ %360, %359 ]
  %437 = load i32, ptr %39, align 8, !tbaa !48
  %438 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %353, i32 %437), !nosanitize !20
  %439 = extractvalue { i32, i1 } %438, 1, !nosanitize !20
  br i1 %439, label %440, label %441, !prof !21, !nosanitize !20

440:                                              ; preds = %.loopexit89
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

441:                                              ; preds = %.loopexit89
  %442 = extractvalue { i32, i1 } %438, 0, !nosanitize !20
  store i32 %442, ptr %0, align 8, !tbaa !19
  %443 = load ptr, ptr %41, align 8, !tbaa !49
  %444 = zext i32 %442 to i64
  %445 = sub nsw i64 0, %444
  %446 = getelementptr inbounds i8, ptr %443, i64 %445
  store ptr %446, ptr %33, align 8, !tbaa !22
  switch i32 %436, label %.loopexit93 [
    i32 1, label %447
    i32 0, label %449
  ]

447:                                              ; preds = %441
  store i32 0, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %37, align 8, !tbaa !26
  br label %449

448:                                              ; preds = %76
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit93

449:                                              ; preds = %447, %441, %306, %300
  %450 = load i32, ptr %0, align 8, !tbaa !19
  br label %451

451:                                              ; preds = %449, %302
  %452 = phi i32 [ %450, %449 ], [ %305, %302 ]
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %.loopexit95

454:                                              ; preds = %451
  %455 = load i32, ptr %35, align 8, !tbaa !24
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %.backedge, label %457

457:                                              ; preds = %454
  %458 = load i32, ptr %36, align 8, !tbaa !34
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %.loopexit95, label %.backedge

.backedge:                                        ; preds = %457, %454
  br label %76, !llvm.loop !52

.loopexit95:                                      ; preds = %457, %451, %306, %.loopexit92
  %460 = load i64, ptr %29, align 8, !tbaa !18
  br label %461

461:                                              ; preds = %.loopexit95, %62
  %462 = phi i64 [ %460, %.loopexit95 ], [ %69, %62 ]
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %.loopexit96, label %51, !llvm.loop !53

.loopexit96:                                      ; preds = %461, %73, %28
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %482

482:                                              ; preds = %.loopexit77, %.loopexit96
  %483 = phi ptr [ %2, %.loopexit96 ], [ %1069, %.loopexit77 ]
  %484 = phi i64 [ 1, %.loopexit96 ], [ %1068, %.loopexit77 ]
  %485 = phi i64 [ 0, %.loopexit96 ], [ %1067, %.loopexit77 ]
  %486 = call i64 @llvm.umin.i64(i64 %484, i64 4294967295)
  %487 = trunc nuw i64 %486 to i32
  %488 = load i32, ptr %0, align 8, !tbaa !19
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %505, label %490

490:                                              ; preds = %482
  %491 = call i32 @llvm.umin.i32(i32 %488, i32 %487)
  %492 = load ptr, ptr %464, align 8, !tbaa !22
  %493 = zext i32 %491 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %483, ptr align 1 %492, i64 %493, i1 false)
  %494 = load ptr, ptr %464, align 8, !tbaa !22
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 %493
  store ptr %495, ptr %464, align 8, !tbaa !22
  %496 = load i32, ptr %0, align 8, !tbaa !19
  %497 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %491), !nosanitize !20
  %498 = extractvalue { i32, i1 } %497, 1, !nosanitize !20
  br i1 %498, label %499, label %500, !prof !21, !nosanitize !20

499:                                              ; preds = %490
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

500:                                              ; preds = %490
  %501 = extractvalue { i32, i1 } %497, 0, !nosanitize !20
  store i32 %501, ptr %0, align 8, !tbaa !19
  %502 = load i32, ptr %9, align 8, !tbaa !16
  %503 = icmp ne i32 %502, 0
  %504 = sext i1 %503 to i32
  br label %1049

505:                                              ; preds = %482
  %506 = load i32, ptr %465, align 8, !tbaa !24
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %511, label %508

508:                                              ; preds = %505
  %509 = load i32, ptr %466, align 8, !tbaa !25
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %.loopexit81, label %511

511:                                              ; preds = %508, %505
  %512 = load i32, ptr %467, align 8, !tbaa !26
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %.preheader862, label %514

514:                                              ; preds = %511
  %515 = load i32, ptr %468, align 8, !tbaa !27
  %516 = shl i32 %515, 1
  %517 = icmp ugt i32 %516, %487
  br i1 %517, label %.preheader862, label %908

.preheader862:                                    ; preds = %514, %511
  br label %518

518:                                              ; preds = %.preheader862, %903
  %519 = phi i32 [ %904, %903 ], [ %512, %.preheader862 ]
  switch i32 %519, label %891 [
    i32 0, label %520
    i32 1, label %751
    i32 2, label %794
  ]

520:                                              ; preds = %518
  %521 = load i32, ptr %468, align 8, !tbaa !27
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %542

523:                                              ; preds = %520
  %524 = load i32, ptr %479, align 4, !tbaa !28
  %525 = zext i32 %524 to i64
  %526 = call noalias ptr @malloc(i64 noundef %525) #15
  store ptr %526, ptr %472, align 8, !tbaa !29
  %527 = load i32, ptr %479, align 4, !tbaa !28
  %528 = shl i32 %527, 1
  %529 = zext i32 %528 to i64
  %530 = call noalias ptr @malloc(i64 noundef %529) #15
  store ptr %530, ptr %478, align 8, !tbaa !30
  %531 = icmp eq ptr %526, null
  %532 = icmp eq ptr %530, null
  %533 = or i1 %531, %532
  br i1 %533, label %534, label %535

534:                                              ; preds = %523
  call void @free(ptr noundef %530) #13
  call void @free(ptr noundef %526) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit75

535:                                              ; preds = %523
  %536 = load i32, ptr %479, align 4, !tbaa !28
  store i32 %536, ptr %468, align 8, !tbaa !27
  store i32 0, ptr %466, align 8, !tbaa !25
  store ptr null, ptr %471, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %480, i8 0, i64 24, i1 false)
  %537 = call i32 @inflateInit2_(ptr noundef nonnull %471, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %542, label %539

539:                                              ; preds = %535
  %540 = load ptr, ptr %478, align 8, !tbaa !30
  call void @free(ptr noundef %540) #13
  %541 = load ptr, ptr %472, align 8, !tbaa !29
  call void @free(ptr noundef %541) #13
  store i32 0, ptr %468, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit75

542:                                              ; preds = %535, %520
  %543 = load i32, ptr %481, align 8, !tbaa !32
  %544 = icmp eq i32 %543, -1
  br i1 %544, label %548, label %545

545:                                              ; preds = %542
  %546 = load i32, ptr %475, align 4, !tbaa !33
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %553

548:                                              ; preds = %545, %542
  %549 = call i32 @inflateReset(ptr noundef nonnull %471) #13
  store i32 2, ptr %467, align 8, !tbaa !26
  %550 = load i32, ptr %475, align 4, !tbaa !33
  %551 = icmp ne i32 %550, -1
  %552 = zext i1 %551 to i32
  store i32 %552, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %481, align 8, !tbaa !32
  br label %748

553:                                              ; preds = %545
  %554 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %554, label %.loopexit75 [
    i32 0, label %555
    i32 -5, label %555
  ]

555:                                              ; preds = %553, %553
  %556 = load i32, ptr %465, align 8, !tbaa !24
  %557 = icmp eq i32 %556, 0
  %558 = load i32, ptr %466, align 8, !tbaa !34
  br i1 %557, label %559, label %716

559:                                              ; preds = %555
  %560 = icmp eq i32 %558, 0
  br i1 %560, label %662, label %561

561:                                              ; preds = %559
  %562 = load ptr, ptr %472, align 8, !tbaa !29
  %563 = load ptr, ptr %471, align 8, !tbaa !35
  %564 = icmp eq ptr %563, %562
  br i1 %564, label %662, label %565

565:                                              ; preds = %561
  %566 = ptrtoaddr ptr %563 to i64
  %567 = ptrtoaddr ptr %562 to i64
  %568 = zext i32 %558 to i64
  %569 = icmp ult i32 %558, 4
  %570 = sub i64 %567, %566
  %571 = icmp ult i64 %570, 32
  %572 = or i1 %569, %571
  br i1 %572, label %612, label %573

573:                                              ; preds = %565
  %574 = icmp ult i32 %558, 32
  br i1 %574, label %596, label %575

575:                                              ; preds = %573
  %576 = and i64 %568, 4294967264
  br label %577

577:                                              ; preds = %577, %575
  %578 = phi i64 [ 0, %575 ], [ %585, %577 ]
  %579 = getelementptr i8, ptr %562, i64 %578
  %580 = getelementptr i8, ptr %563, i64 %578
  %581 = getelementptr i8, ptr %580, i64 16
  %582 = load <16 x i8>, ptr %580, align 1, !tbaa !36
  %583 = load <16 x i8>, ptr %581, align 1, !tbaa !36
  %584 = getelementptr i8, ptr %579, i64 16
  store <16 x i8> %582, ptr %579, align 1, !tbaa !36
  store <16 x i8> %583, ptr %584, align 1, !tbaa !36
  %585 = add nuw nsw i64 %578, 32
  %586 = icmp eq i64 %585, %576
  br i1 %586, label %587, label %577, !llvm.loop !82

587:                                              ; preds = %577
  %588 = icmp eq i64 %576, %568
  br i1 %588, label %.loopexit68, label %589

589:                                              ; preds = %587
  %590 = trunc nuw i64 %576 to i32
  %591 = sub i32 %558, %590
  %592 = getelementptr i8, ptr %563, i64 %576
  %593 = getelementptr i8, ptr %562, i64 %576
  %594 = and i64 %568, 28
  %595 = icmp eq i64 %594, 0
  br i1 %595, label %612, label %596, !prof !41

596:                                              ; preds = %589, %573
  %597 = phi i64 [ %576, %589 ], [ 0, %573 ]
  %598 = and i64 %568, 4294967292
  br label %599

599:                                              ; preds = %599, %596
  %600 = phi i64 [ %597, %596 ], [ %604, %599 ]
  %601 = getelementptr i8, ptr %562, i64 %600
  %602 = getelementptr i8, ptr %563, i64 %600
  %603 = load <4 x i8>, ptr %602, align 1, !tbaa !36
  store <4 x i8> %603, ptr %601, align 1, !tbaa !36
  %604 = add nuw i64 %600, 4
  %605 = icmp eq i64 %604, %598
  br i1 %605, label %606, label %599, !llvm.loop !83

606:                                              ; preds = %599
  %607 = getelementptr i8, ptr %562, i64 %598
  %608 = getelementptr i8, ptr %563, i64 %598
  %609 = trunc nuw i64 %598 to i32
  %610 = sub i32 %558, %609
  %611 = icmp eq i64 %598, %568
  br i1 %611, label %.loopexit68, label %612

612:                                              ; preds = %606, %589, %565
  %613 = phi ptr [ %562, %565 ], [ %593, %589 ], [ %607, %606 ]
  %614 = phi ptr [ %563, %565 ], [ %592, %589 ], [ %608, %606 ]
  %615 = phi i32 [ %558, %565 ], [ %591, %589 ], [ %610, %606 ]
  %616 = add i32 %615, -1
  %617 = and i32 %615, 7
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %.loopexit70, label %.preheader69

.preheader69:                                     ; preds = %612, %.preheader69
  %619 = phi ptr [ %623, %.preheader69 ], [ %613, %612 ]
  %620 = phi ptr [ %624, %.preheader69 ], [ %614, %612 ]
  %621 = phi i32 [ %625, %.preheader69 ], [ 0, %612 ]
  %622 = load i8, ptr %620, align 1, !tbaa !36
  store i8 %622, ptr %619, align 1, !tbaa !36
  %623 = getelementptr inbounds nuw i8, ptr %619, i64 1
  %624 = getelementptr inbounds nuw i8, ptr %620, i64 1
  %625 = add nuw nsw i32 %621, 1
  %626 = icmp eq i32 %625, %617
  br i1 %626, label %.loopexit70.loopexit, label %.preheader69, !llvm.loop !84

.loopexit70.loopexit:                             ; preds = %.preheader69
  %627 = and i32 %615, -8
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70.loopexit, %612
  %628 = phi ptr [ %613, %612 ], [ %623, %.loopexit70.loopexit ]
  %629 = phi ptr [ %614, %612 ], [ %624, %.loopexit70.loopexit ]
  %630 = phi i32 [ %615, %612 ], [ %627, %.loopexit70.loopexit ]
  %631 = icmp ult i32 %616, 7
  br i1 %631, label %.loopexit68, label %.preheader

.preheader:                                       ; preds = %.loopexit70, %.preheader
  %632 = phi ptr [ %658, %.preheader ], [ %628, %.loopexit70 ]
  %633 = phi ptr [ %659, %.preheader ], [ %629, %.loopexit70 ]
  %634 = phi i32 [ %657, %.preheader ], [ %630, %.loopexit70 ]
  %635 = load i8, ptr %633, align 1, !tbaa !36
  store i8 %635, ptr %632, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %632, i64 1
  %637 = getelementptr inbounds nuw i8, ptr %633, i64 1
  %638 = load i8, ptr %637, align 1, !tbaa !36
  store i8 %638, ptr %636, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %632, i64 2
  %640 = getelementptr inbounds nuw i8, ptr %633, i64 2
  %641 = load i8, ptr %640, align 1, !tbaa !36
  store i8 %641, ptr %639, align 1, !tbaa !36
  %642 = getelementptr inbounds nuw i8, ptr %632, i64 3
  %643 = getelementptr inbounds nuw i8, ptr %633, i64 3
  %644 = load i8, ptr %643, align 1, !tbaa !36
  store i8 %644, ptr %642, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %632, i64 4
  %646 = getelementptr inbounds nuw i8, ptr %633, i64 4
  %647 = load i8, ptr %646, align 1, !tbaa !36
  store i8 %647, ptr %645, align 1, !tbaa !36
  %648 = getelementptr inbounds nuw i8, ptr %632, i64 5
  %649 = getelementptr inbounds nuw i8, ptr %633, i64 5
  %650 = load i8, ptr %649, align 1, !tbaa !36
  store i8 %650, ptr %648, align 1, !tbaa !36
  %651 = getelementptr inbounds nuw i8, ptr %632, i64 6
  %652 = getelementptr inbounds nuw i8, ptr %633, i64 6
  %653 = load i8, ptr %652, align 1, !tbaa !36
  store i8 %653, ptr %651, align 1, !tbaa !36
  %654 = getelementptr inbounds nuw i8, ptr %632, i64 7
  %655 = getelementptr inbounds nuw i8, ptr %633, i64 7
  %656 = load i8, ptr %655, align 1, !tbaa !36
  store i8 %656, ptr %654, align 1, !tbaa !36
  %657 = add i32 %634, -8
  %658 = getelementptr inbounds nuw i8, ptr %632, i64 8
  %659 = getelementptr inbounds nuw i8, ptr %633, i64 8
  %660 = icmp eq i32 %657, 0
  br i1 %660, label %.loopexit68, label %.preheader, !llvm.loop !85

.loopexit68:                                      ; preds = %.preheader, %.loopexit70, %606, %587
  %661 = load i32, ptr %466, align 8, !tbaa !34
  br label %662

662:                                              ; preds = %.loopexit68, %561, %559
  %663 = phi i32 [ %661, %.loopexit68 ], [ %558, %561 ], [ 0, %559 ]
  %664 = load i32, ptr %468, align 8, !tbaa !27
  %665 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %664, i32 %663), !nosanitize !20
  %666 = extractvalue { i32, i1 } %665, 1, !nosanitize !20
  br i1 %666, label %667, label %668, !prof !21, !nosanitize !20

667:                                              ; preds = %662
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

668:                                              ; preds = %662
  %669 = extractvalue { i32, i1 } %665, 0, !nosanitize !20
  %670 = load ptr, ptr %472, align 8, !tbaa !29
  %671 = zext i32 %663 to i64
  %672 = getelementptr inbounds nuw i8, ptr %670, i64 %671
  store i32 0, ptr %473, align 4, !tbaa !17
  %673 = tail call ptr @__errno_location() #16
  store i32 0, ptr %673, align 4, !tbaa !4
  br label %674

674:                                              ; preds = %693, %668
  %675 = phi i32 [ 0, %668 ], [ %694, %693 ]
  %676 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %669, i32 %675), !nosanitize !20
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !20
  br i1 %677, label %678, label %679, !prof !21, !nosanitize !20

678:                                              ; preds = %674
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

679:                                              ; preds = %674
  %680 = extractvalue { i32, i1 } %676, 0, !nosanitize !20
  %681 = call i32 @llvm.umin.i32(i32 %680, i32 1073741824)
  %682 = load i32, ptr %474, align 4, !tbaa !46
  %683 = zext i32 %675 to i64
  %684 = getelementptr inbounds nuw i8, ptr %672, i64 %683
  %685 = zext nneg i32 %681 to i64
  %686 = call i64 @read(i32 noundef %682, ptr noundef %684, i64 noundef %685) #13
  %687 = trunc i64 %686 to i32
  %688 = icmp slt i32 %687, 1
  br i1 %688, label %696, label %689

689:                                              ; preds = %679
  %690 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %675, i32 %687), !nosanitize !20
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !20
  br i1 %691, label %692, label %693, !prof !21, !nosanitize !20

692:                                              ; preds = %689
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

693:                                              ; preds = %689
  %694 = extractvalue { i32, i1 } %690, 0, !nosanitize !20
  %695 = icmp ult i32 %694, %669
  br i1 %695, label %674, label %.loopexit67, !llvm.loop !47

696:                                              ; preds = %679
  %697 = icmp slt i32 %687, 0
  br i1 %697, label %698, label %705

698:                                              ; preds = %696
  %699 = load i32, ptr %673, align 4, !tbaa !4
  %700 = icmp eq i32 %699, 11
  br i1 %700, label %701, label %.loopexit76

701:                                              ; preds = %698
  store i32 1, ptr %473, align 4, !tbaa !17
  %702 = icmp eq i32 %675, 0
  br i1 %702, label %703, label %.loopexit67

703:                                              ; preds = %701
  %704 = load i32, ptr %673, align 4, !tbaa !4
  br label %.loopexit76

705:                                              ; preds = %696
  store i32 1, ptr %465, align 8, !tbaa !24
  br label %.loopexit67

.loopexit76:                                      ; preds = %698, %703
  %706 = phi i32 [ %704, %703 ], [ %699, %698 ]
  %707 = call ptr @strerror(i32 noundef %706) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %707) #13
  br label %.loopexit75

.loopexit67:                                      ; preds = %693, %705, %701
  %708 = phi i32 [ %675, %701 ], [ %675, %705 ], [ %694, %693 ]
  %709 = load i32, ptr %466, align 8, !tbaa !34
  %710 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %709, i32 %708), !nosanitize !20
  %711 = extractvalue { i32, i1 } %710, 1, !nosanitize !20
  br i1 %711, label %712, label %713, !prof !21, !nosanitize !20

712:                                              ; preds = %.loopexit67
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

713:                                              ; preds = %.loopexit67
  %714 = extractvalue { i32, i1 } %710, 0, !nosanitize !20
  store i32 %714, ptr %466, align 8, !tbaa !34
  %715 = load ptr, ptr %472, align 8, !tbaa !29
  store ptr %715, ptr %471, align 8, !tbaa !35
  br label %716

716:                                              ; preds = %713, %555
  %717 = phi i32 [ %714, %713 ], [ %558, %555 ]
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %748, label %719

719:                                              ; preds = %716
  %720 = load i32, ptr %473, align 4, !tbaa !17
  %721 = icmp ne i32 %720, 0
  %722 = icmp ult i32 %717, 4
  %723 = and i1 %722, %721
  br i1 %723, label %748, label %724

724:                                              ; preds = %719
  %725 = icmp ugt i32 %717, 3
  %726 = load ptr, ptr %471, align 8, !tbaa !35
  br i1 %725, label %727, label %744

727:                                              ; preds = %724
  %728 = load i8, ptr %726, align 1, !tbaa !36
  %729 = icmp eq i8 %728, 31
  br i1 %729, label %730, label %744

730:                                              ; preds = %727
  %731 = getelementptr inbounds nuw i8, ptr %726, i64 1
  %732 = load i8, ptr %731, align 1, !tbaa !36
  %733 = icmp eq i8 %732, -117
  br i1 %733, label %734, label %744

734:                                              ; preds = %730
  %735 = getelementptr inbounds nuw i8, ptr %726, i64 2
  %736 = load i8, ptr %735, align 1, !tbaa !36
  %737 = icmp eq i8 %736, 8
  br i1 %737, label %738, label %744

738:                                              ; preds = %734
  %739 = getelementptr inbounds nuw i8, ptr %726, i64 3
  %740 = load i8, ptr %739, align 1, !tbaa !36
  %741 = icmp ult i8 %740, 32
  br i1 %741, label %742, label %744

742:                                              ; preds = %738
  %743 = call i32 @inflateReset(ptr noundef nonnull %471) #13
  store i32 2, ptr %467, align 8, !tbaa !26
  store i32 1, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %481, align 8, !tbaa !32
  br label %892

744:                                              ; preds = %738, %734, %730, %727, %724
  %745 = load ptr, ptr %478, align 8, !tbaa !30
  store ptr %745, ptr %464, align 8, !tbaa !22
  %746 = zext i32 %717 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %745, ptr align 1 %726, i64 %746, i1 false)
  %747 = load i32, ptr %466, align 8, !tbaa !34
  store i32 %747, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %466, align 8, !tbaa !34
  store i32 1, ptr %467, align 8, !tbaa !26
  br label %894

748:                                              ; preds = %719, %716, %548
  %749 = load i32, ptr %467, align 8, !tbaa !26
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %.loopexit77, label %892

751:                                              ; preds = %518
  %752 = load ptr, ptr %478, align 8, !tbaa !30
  %753 = load i32, ptr %468, align 8, !tbaa !27
  %754 = shl i32 %753, 1
  store i32 0, ptr %473, align 4, !tbaa !17
  %755 = tail call ptr @__errno_location() #16
  store i32 0, ptr %755, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %756

756:                                              ; preds = %776, %751
  %757 = phi i32 [ %777, %776 ], [ 0, %751 ]
  %758 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %754, i32 %757), !nosanitize !20
  %759 = extractvalue { i32, i1 } %758, 1, !nosanitize !20
  br i1 %759, label %760, label %761, !prof !21, !nosanitize !20

760:                                              ; preds = %756
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

761:                                              ; preds = %756
  %762 = extractvalue { i32, i1 } %758, 0, !nosanitize !20
  %763 = call i32 @llvm.umin.i32(i32 %762, i32 1073741824)
  %764 = load i32, ptr %474, align 4, !tbaa !46
  %765 = zext i32 %757 to i64
  %766 = getelementptr inbounds nuw i8, ptr %752, i64 %765
  %767 = zext nneg i32 %763 to i64
  %768 = call i64 @read(i32 noundef %764, ptr noundef %766, i64 noundef %767) #13
  %769 = trunc i64 %768 to i32
  %770 = icmp slt i32 %769, 1
  br i1 %770, label %779, label %771

771:                                              ; preds = %761
  %772 = load i32, ptr %0, align 4, !tbaa !4
  %773 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %772, i32 %769), !nosanitize !20
  %774 = extractvalue { i32, i1 } %773, 1, !nosanitize !20
  br i1 %774, label %775, label %776, !prof !21, !nosanitize !20

775:                                              ; preds = %771
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

776:                                              ; preds = %771
  %777 = extractvalue { i32, i1 } %773, 0, !nosanitize !20
  store i32 %777, ptr %0, align 4, !tbaa !4
  %778 = icmp ult i32 %777, %754
  br i1 %778, label %756, label %.loopexit74, !llvm.loop !47

779:                                              ; preds = %761
  %780 = icmp slt i32 %769, 0
  br i1 %780, label %781, label %789

781:                                              ; preds = %779
  %782 = load i32, ptr %755, align 4, !tbaa !4
  %783 = icmp eq i32 %782, 11
  br i1 %783, label %784, label %790

784:                                              ; preds = %781
  store i32 1, ptr %473, align 4, !tbaa !17
  %785 = load i32, ptr %0, align 4, !tbaa !4
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %787, label %.loopexit74

787:                                              ; preds = %784
  %788 = load i32, ptr %755, align 4, !tbaa !4
  br label %790

789:                                              ; preds = %779
  store i32 1, ptr %465, align 8, !tbaa !24
  br label %.loopexit74

790:                                              ; preds = %787, %781
  %791 = phi i32 [ %788, %787 ], [ %782, %781 ]
  %792 = call ptr @strerror(i32 noundef %791) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %792) #13
  br label %.loopexit75

.loopexit74:                                      ; preds = %776, %789, %784
  %793 = load ptr, ptr %478, align 8, !tbaa !30
  store ptr %793, ptr %464, align 8, !tbaa !22
  br label %.loopexit77

794:                                              ; preds = %518
  %795 = load i32, ptr %468, align 8, !tbaa !27
  %796 = shl i32 %795, 1
  store i32 %796, ptr %469, align 8, !tbaa !48
  %797 = load ptr, ptr %478, align 8, !tbaa !30
  store ptr %797, ptr %470, align 8, !tbaa !49
  br label %798

798:                                              ; preds = %875, %794
  %799 = phi i32 [ 0, %794 ], [ %860, %875 ]
  %800 = load i32, ptr %466, align 8, !tbaa !34
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %859

802:                                              ; preds = %798
  %803 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %803, label %.loopexit71 [
    i32 0, label %804
    i32 -5, label %804
  ]

804:                                              ; preds = %802, %802
  %805 = load i32, ptr %465, align 8, !tbaa !24
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %855

807:                                              ; preds = %804
  %808 = load i32, ptr %468, align 8, !tbaa !27
  %809 = load ptr, ptr %472, align 8, !tbaa !29
  store i32 0, ptr %473, align 4, !tbaa !17
  %810 = tail call ptr @__errno_location() #16
  store i32 0, ptr %810, align 4, !tbaa !4
  br label %811

811:                                              ; preds = %830, %807
  %812 = phi i32 [ 0, %807 ], [ %831, %830 ]
  %813 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %808, i32 %812), !nosanitize !20
  %814 = extractvalue { i32, i1 } %813, 1, !nosanitize !20
  br i1 %814, label %815, label %816, !prof !21, !nosanitize !20

815:                                              ; preds = %811
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

816:                                              ; preds = %811
  %817 = extractvalue { i32, i1 } %813, 0, !nosanitize !20
  %818 = call i32 @llvm.umin.i32(i32 %817, i32 1073741824)
  %819 = load i32, ptr %474, align 4, !tbaa !46
  %820 = zext i32 %812 to i64
  %821 = getelementptr inbounds nuw i8, ptr %809, i64 %820
  %822 = zext nneg i32 %818 to i64
  %823 = call i64 @read(i32 noundef %819, ptr noundef %821, i64 noundef %822) #13
  %824 = trunc i64 %823 to i32
  %825 = icmp slt i32 %824, 1
  br i1 %825, label %833, label %826

826:                                              ; preds = %816
  %827 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %812, i32 %824), !nosanitize !20
  %828 = extractvalue { i32, i1 } %827, 1, !nosanitize !20
  br i1 %828, label %829, label %830, !prof !21, !nosanitize !20

829:                                              ; preds = %826
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

830:                                              ; preds = %826
  %831 = extractvalue { i32, i1 } %827, 0, !nosanitize !20
  %832 = icmp ult i32 %831, %808
  br i1 %832, label %811, label %.loopexit, !llvm.loop !47

833:                                              ; preds = %816
  %834 = icmp slt i32 %824, 0
  br i1 %834, label %835, label %842

835:                                              ; preds = %833
  %836 = load i32, ptr %810, align 4, !tbaa !4
  %837 = icmp eq i32 %836, 11
  br i1 %837, label %838, label %.loopexit72

838:                                              ; preds = %835
  store i32 1, ptr %473, align 4, !tbaa !17
  %839 = icmp eq i32 %812, 0
  br i1 %839, label %840, label %.loopexit

840:                                              ; preds = %838
  %841 = load i32, ptr %810, align 4, !tbaa !4
  br label %.loopexit72

842:                                              ; preds = %833
  store i32 1, ptr %465, align 8, !tbaa !24
  br label %.loopexit

.loopexit72:                                      ; preds = %835, %840
  %843 = phi i32 [ %841, %840 ], [ %836, %835 ]
  %844 = call ptr @strerror(i32 noundef %843) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %844) #13
  %845 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit71

.loopexit:                                        ; preds = %830, %842, %838
  %846 = phi i32 [ %812, %838 ], [ %812, %842 ], [ %831, %830 ]
  %847 = load i32, ptr %466, align 8, !tbaa !34
  %848 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %847, i32 %846), !nosanitize !20
  %849 = extractvalue { i32, i1 } %848, 1, !nosanitize !20
  br i1 %849, label %850, label %851, !prof !21, !nosanitize !20

850:                                              ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

851:                                              ; preds = %.loopexit
  %852 = extractvalue { i32, i1 } %848, 0, !nosanitize !20
  store i32 %852, ptr %466, align 8, !tbaa !34
  %853 = load ptr, ptr %472, align 8, !tbaa !29
  store ptr %853, ptr %471, align 8, !tbaa !35
  %854 = icmp eq i32 %852, 0
  br i1 %854, label %855, label %859

855:                                              ; preds = %851, %804
  %856 = load i32, ptr %473, align 4, !tbaa !17
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %.loopexit71

858:                                              ; preds = %855
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit71

859:                                              ; preds = %851, %798
  %860 = call i32 @inflate(ptr noundef nonnull %471, i32 noundef 0) #13
  %861 = load i32, ptr %469, align 8, !tbaa !48
  %862 = icmp ult i32 %861, %796
  br i1 %862, label %863, label %864

863:                                              ; preds = %859
  store i32 0, ptr %475, align 4, !tbaa !33
  br label %864

864:                                              ; preds = %863, %859
  switch i32 %860, label %875 [
    i32 -2, label %865
    i32 2, label %865
    i32 -4, label %866
    i32 -3, label %867
  ]

865:                                              ; preds = %864, %864
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit71

866:                                              ; preds = %864
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit71

867:                                              ; preds = %864
  %868 = load i32, ptr %475, align 4, !tbaa !33
  %869 = icmp eq i32 %868, 1
  br i1 %869, label %870, label %871

870:                                              ; preds = %867
  store i32 0, ptr %466, align 8, !tbaa !34
  store i32 1, ptr %465, align 8, !tbaa !24
  store i32 0, ptr %467, align 8, !tbaa !26
  br label %.loopexit71

871:                                              ; preds = %867
  %872 = load ptr, ptr %476, align 8, !tbaa !50
  %873 = icmp eq ptr %872, null
  %874 = select i1 %873, ptr @.str.6, ptr %872
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %874) #13
  br label %.loopexit71

875:                                              ; preds = %864
  %876 = icmp ne i32 %861, 0
  %877 = icmp ne i32 %860, 1
  %878 = select i1 %876, i1 %877, i1 false
  br i1 %878, label %798, label %.loopexit71, !llvm.loop !51

.loopexit71:                                      ; preds = %875, %802, %871, %870, %866, %865, %858, %855, %.loopexit72
  %879 = phi i32 [ %845, %.loopexit72 ], [ %799, %855 ], [ %799, %858 ], [ %860, %865 ], [ -4, %866 ], [ 0, %870 ], [ -3, %871 ], [ %803, %802 ], [ %860, %875 ]
  %880 = load i32, ptr %469, align 8, !tbaa !48
  %881 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %796, i32 %880), !nosanitize !20
  %882 = extractvalue { i32, i1 } %881, 1, !nosanitize !20
  br i1 %882, label %883, label %884, !prof !21, !nosanitize !20

883:                                              ; preds = %.loopexit71
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

884:                                              ; preds = %.loopexit71
  %885 = extractvalue { i32, i1 } %881, 0, !nosanitize !20
  store i32 %885, ptr %0, align 8, !tbaa !19
  %886 = load ptr, ptr %470, align 8, !tbaa !49
  %887 = zext i32 %885 to i64
  %888 = sub nsw i64 0, %887
  %889 = getelementptr inbounds i8, ptr %886, i64 %888
  store ptr %889, ptr %464, align 8, !tbaa !22
  switch i32 %879, label %.loopexit75 [
    i32 1, label %890
    i32 0, label %892
  ]

890:                                              ; preds = %884
  store i32 0, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %467, align 8, !tbaa !26
  br label %892

891:                                              ; preds = %518
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit75

892:                                              ; preds = %890, %884, %748, %742
  %893 = load i32, ptr %0, align 8, !tbaa !19
  br label %894

894:                                              ; preds = %892, %744
  %895 = phi i32 [ %893, %892 ], [ %747, %744 ]
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %897, label %.loopexit77

897:                                              ; preds = %894
  %898 = load i32, ptr %465, align 8, !tbaa !24
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %903, label %900

900:                                              ; preds = %897
  %901 = load i32, ptr %466, align 8, !tbaa !34
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %.loopexit77, label %903

903:                                              ; preds = %900, %897
  %904 = load i32, ptr %467, align 8, !tbaa !26
  br label %518, !llvm.loop !52

.loopexit75:                                      ; preds = %884, %553, %891, %790, %.loopexit76, %539, %534
  %905 = load i32, ptr %0, align 8, !tbaa !19
  %906 = icmp eq i32 %905, 0
  %907 = sext i1 %906 to i32
  br label %.loopexit77

908:                                              ; preds = %514
  %909 = icmp eq i32 %512, 1
  br i1 %909, label %910, label %947

910:                                              ; preds = %908
  store i32 0, ptr %473, align 4, !tbaa !17
  %911 = tail call ptr @__errno_location() #16
  store i32 0, ptr %911, align 4, !tbaa !4
  br label %912

912:                                              ; preds = %931, %910
  %913 = phi i32 [ 0, %910 ], [ %932, %931 ]
  %914 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %487, i32 %913), !nosanitize !20
  %915 = extractvalue { i32, i1 } %914, 1, !nosanitize !20
  br i1 %915, label %916, label %917, !prof !21, !nosanitize !20

916:                                              ; preds = %912
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

917:                                              ; preds = %912
  %918 = extractvalue { i32, i1 } %914, 0, !nosanitize !20
  %919 = call i32 @llvm.umin.i32(i32 %918, i32 1073741824)
  %920 = load i32, ptr %474, align 4, !tbaa !46
  %921 = zext i32 %913 to i64
  %922 = getelementptr inbounds nuw i8, ptr %483, i64 %921
  %923 = zext nneg i32 %919 to i64
  %924 = call i64 @read(i32 noundef %920, ptr noundef %922, i64 noundef %923) #13
  %925 = trunc i64 %924 to i32
  %926 = icmp slt i32 %925, 1
  br i1 %926, label %934, label %927

927:                                              ; preds = %917
  %928 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %913, i32 %925), !nosanitize !20
  %929 = extractvalue { i32, i1 } %928, 1, !nosanitize !20
  br i1 %929, label %930, label %931, !prof !21, !nosanitize !20

930:                                              ; preds = %927
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

931:                                              ; preds = %927
  %932 = extractvalue { i32, i1 } %928, 0, !nosanitize !20
  %933 = icmp ult i32 %932, %487
  br i1 %933, label %912, label %1047, !llvm.loop !47

934:                                              ; preds = %917
  %935 = icmp slt i32 %925, 0
  br i1 %935, label %936, label %946

936:                                              ; preds = %934
  %937 = load i32, ptr %911, align 4, !tbaa !4
  %938 = icmp eq i32 %937, 11
  br i1 %938, label %939, label %943

939:                                              ; preds = %936
  store i32 1, ptr %473, align 4, !tbaa !17
  %940 = icmp eq i32 %913, 0
  br i1 %940, label %941, label %1049

941:                                              ; preds = %939
  %942 = load i32, ptr %911, align 4, !tbaa !4
  br label %943

943:                                              ; preds = %941, %936
  %944 = phi i32 [ %942, %941 ], [ %937, %936 ]
  %945 = call ptr @strerror(i32 noundef %944) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %945) #13
  br label %1049

946:                                              ; preds = %934
  store i32 1, ptr %465, align 8, !tbaa !24
  br label %1049

947:                                              ; preds = %908
  store i32 %487, ptr %469, align 8, !tbaa !58
  store ptr %483, ptr %470, align 8, !tbaa !59
  br label %948

948:                                              ; preds = %1025, %947
  %949 = phi i32 [ 0, %947 ], [ %1010, %1025 ]
  %950 = load i32, ptr %466, align 8, !tbaa !34
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %952, label %1009

952:                                              ; preds = %948
  %953 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %953, label %.loopexit78 [
    i32 0, label %954
    i32 -5, label %954
  ]

954:                                              ; preds = %952, %952
  %955 = load i32, ptr %465, align 8, !tbaa !24
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %1005

957:                                              ; preds = %954
  %958 = load i32, ptr %468, align 8, !tbaa !27
  %959 = load ptr, ptr %472, align 8, !tbaa !29
  store i32 0, ptr %473, align 4, !tbaa !17
  %960 = tail call ptr @__errno_location() #16
  store i32 0, ptr %960, align 4, !tbaa !4
  br label %961

961:                                              ; preds = %980, %957
  %962 = phi i32 [ 0, %957 ], [ %981, %980 ]
  %963 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %958, i32 %962), !nosanitize !20
  %964 = extractvalue { i32, i1 } %963, 1, !nosanitize !20
  br i1 %964, label %965, label %966, !prof !21, !nosanitize !20

965:                                              ; preds = %961
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

966:                                              ; preds = %961
  %967 = extractvalue { i32, i1 } %963, 0, !nosanitize !20
  %968 = call i32 @llvm.umin.i32(i32 %967, i32 1073741824)
  %969 = load i32, ptr %474, align 4, !tbaa !46
  %970 = zext i32 %962 to i64
  %971 = getelementptr inbounds nuw i8, ptr %959, i64 %970
  %972 = zext nneg i32 %968 to i64
  %973 = call i64 @read(i32 noundef %969, ptr noundef %971, i64 noundef %972) #13
  %974 = trunc i64 %973 to i32
  %975 = icmp slt i32 %974, 1
  br i1 %975, label %983, label %976

976:                                              ; preds = %966
  %977 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %962, i32 %974), !nosanitize !20
  %978 = extractvalue { i32, i1 } %977, 1, !nosanitize !20
  br i1 %978, label %979, label %980, !prof !21, !nosanitize !20

979:                                              ; preds = %976
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

980:                                              ; preds = %976
  %981 = extractvalue { i32, i1 } %977, 0, !nosanitize !20
  %982 = icmp ult i32 %981, %958
  br i1 %982, label %961, label %.loopexit73, !llvm.loop !47

983:                                              ; preds = %966
  %984 = icmp slt i32 %974, 0
  br i1 %984, label %985, label %992

985:                                              ; preds = %983
  %986 = load i32, ptr %960, align 4, !tbaa !4
  %987 = icmp eq i32 %986, 11
  br i1 %987, label %988, label %.loopexit80

988:                                              ; preds = %985
  store i32 1, ptr %473, align 4, !tbaa !17
  %989 = icmp eq i32 %962, 0
  br i1 %989, label %990, label %.loopexit73

990:                                              ; preds = %988
  %991 = load i32, ptr %960, align 4, !tbaa !4
  br label %.loopexit80

992:                                              ; preds = %983
  store i32 1, ptr %465, align 8, !tbaa !24
  br label %.loopexit73

.loopexit80:                                      ; preds = %985, %990
  %993 = phi i32 [ %991, %990 ], [ %986, %985 ]
  %994 = call ptr @strerror(i32 noundef %993) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %994) #13
  %995 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit78

.loopexit73:                                      ; preds = %980, %992, %988
  %996 = phi i32 [ %962, %988 ], [ %962, %992 ], [ %981, %980 ]
  %997 = load i32, ptr %466, align 8, !tbaa !34
  %998 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %997, i32 %996), !nosanitize !20
  %999 = extractvalue { i32, i1 } %998, 1, !nosanitize !20
  br i1 %999, label %1000, label %1001, !prof !21, !nosanitize !20

1000:                                             ; preds = %.loopexit73
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1001:                                             ; preds = %.loopexit73
  %1002 = extractvalue { i32, i1 } %998, 0, !nosanitize !20
  store i32 %1002, ptr %466, align 8, !tbaa !34
  %1003 = load ptr, ptr %472, align 8, !tbaa !29
  store ptr %1003, ptr %471, align 8, !tbaa !35
  %1004 = icmp eq i32 %1002, 0
  br i1 %1004, label %1005, label %1009

1005:                                             ; preds = %1001, %954
  %1006 = load i32, ptr %473, align 4, !tbaa !17
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %.loopexit78

1008:                                             ; preds = %1005
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit78

1009:                                             ; preds = %1001, %948
  %1010 = call i32 @inflate(ptr noundef nonnull %471, i32 noundef 0) #13
  %1011 = load i32, ptr %469, align 8, !tbaa !48
  %1012 = icmp ult i32 %1011, %487
  br i1 %1012, label %1013, label %1014

1013:                                             ; preds = %1009
  store i32 0, ptr %475, align 4, !tbaa !33
  br label %1014

1014:                                             ; preds = %1013, %1009
  switch i32 %1010, label %1025 [
    i32 -2, label %1015
    i32 2, label %1015
    i32 -4, label %1016
    i32 -3, label %1017
  ]

1015:                                             ; preds = %1014, %1014
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit78

1016:                                             ; preds = %1014
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

1017:                                             ; preds = %1014
  %1018 = load i32, ptr %475, align 4, !tbaa !33
  %1019 = icmp eq i32 %1018, 1
  br i1 %1019, label %1020, label %1021

1020:                                             ; preds = %1017
  store i32 0, ptr %466, align 8, !tbaa !34
  store i32 1, ptr %465, align 8, !tbaa !24
  store i32 0, ptr %467, align 8, !tbaa !26
  br label %.loopexit78

1021:                                             ; preds = %1017
  %1022 = load ptr, ptr %476, align 8, !tbaa !50
  %1023 = icmp eq ptr %1022, null
  %1024 = select i1 %1023, ptr @.str.6, ptr %1022
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1024) #13
  br label %.loopexit78

1025:                                             ; preds = %1014
  %1026 = icmp ne i32 %1011, 0
  %1027 = icmp ne i32 %1010, 1
  %1028 = select i1 %1026, i1 %1027, i1 false
  br i1 %1028, label %948, label %.loopexit78, !llvm.loop !51

.loopexit78:                                      ; preds = %1025, %952, %1021, %1020, %1016, %1015, %1008, %1005, %.loopexit80
  %1029 = phi i32 [ %995, %.loopexit80 ], [ %949, %1005 ], [ %949, %1008 ], [ %1010, %1015 ], [ -4, %1016 ], [ 0, %1020 ], [ -3, %1021 ], [ %1010, %1025 ], [ %953, %952 ]
  %1030 = load i32, ptr %469, align 8, !tbaa !48
  %1031 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %487, i32 %1030), !nosanitize !20
  %1032 = extractvalue { i32, i1 } %1031, 1, !nosanitize !20
  br i1 %1032, label %1033, label %1034, !prof !21, !nosanitize !20

1033:                                             ; preds = %.loopexit78
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1034:                                             ; preds = %.loopexit78
  %1035 = extractvalue { i32, i1 } %1031, 0, !nosanitize !20
  %1036 = load ptr, ptr %470, align 8, !tbaa !49
  %1037 = zext i32 %1035 to i64
  %1038 = sub nsw i64 0, %1037
  %1039 = getelementptr inbounds i8, ptr %1036, i64 %1038
  store ptr %1039, ptr %464, align 8, !tbaa !22
  %1040 = icmp eq i32 %1029, 1
  br i1 %1040, label %1041, label %1042

1041:                                             ; preds = %1034
  store i32 0, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %467, align 8, !tbaa !26
  br label %1045

1042:                                             ; preds = %1034
  %1043 = icmp ne i32 %1029, 0
  %1044 = sext i1 %1043 to i32
  br label %1045

1045:                                             ; preds = %1042, %1041
  %1046 = phi i32 [ 0, %1041 ], [ %1044, %1042 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1049

1047:                                             ; preds = %931
  %1048 = zext i32 %932 to i64
  br label %1049

1049:                                             ; preds = %1047, %1045, %946, %943, %939, %500
  %1050 = phi i64 [ %1048, %1047 ], [ %921, %946 ], [ %921, %943 ], [ %921, %939 ], [ %493, %500 ], [ %1037, %1045 ]
  %1051 = phi i32 [ 0, %1047 ], [ 0, %946 ], [ -1, %943 ], [ 0, %939 ], [ %504, %500 ], [ %1046, %1045 ]
  %1052 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %484, i64 %1050), !nosanitize !20
  %1053 = extractvalue { i64, i1 } %1052, 0, !nosanitize !20
  %1054 = extractvalue { i64, i1 } %1052, 1, !nosanitize !20
  br i1 %1054, label %1055, label %1056, !prof !21, !nosanitize !20

1055:                                             ; preds = %1049
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1056:                                             ; preds = %1049
  %1057 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %485, i64 %1050), !nosanitize !20
  %1058 = extractvalue { i64, i1 } %1057, 1, !nosanitize !20
  br i1 %1058, label %1059, label %1060, !prof !21, !nosanitize !20

1059:                                             ; preds = %1056
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1060:                                             ; preds = %1056
  %1061 = extractvalue { i64, i1 } %1057, 0, !nosanitize !20
  %1062 = getelementptr inbounds nuw i8, ptr %483, i64 %1050
  %1063 = load i64, ptr %477, align 8, !tbaa !23
  %1064 = add nsw i64 %1063, %1050
  store i64 %1064, ptr %477, align 8, !tbaa !23
  %1065 = icmp eq i64 %1053, 0
  br i1 %1065, label %.loopexit82, label %.loopexit77

.loopexit77:                                      ; preds = %900, %894, %748, %1060, %.loopexit75, %.loopexit74
  %1066 = phi i32 [ %1051, %1060 ], [ %907, %.loopexit75 ], [ 0, %.loopexit74 ], [ 0, %748 ], [ 0, %894 ], [ 0, %900 ]
  %1067 = phi i64 [ %1061, %1060 ], [ %485, %.loopexit75 ], [ %485, %.loopexit74 ], [ %485, %748 ], [ %485, %894 ], [ %485, %900 ]
  %1068 = phi i64 [ %1053, %1060 ], [ %484, %.loopexit75 ], [ %484, %.loopexit74 ], [ %484, %748 ], [ %484, %894 ], [ %484, %900 ]
  %1069 = phi ptr [ %1062, %1060 ], [ %483, %.loopexit75 ], [ %483, %.loopexit74 ], [ %483, %748 ], [ %483, %894 ], [ %483, %900 ]
  %1070 = icmp eq i32 %1066, 0
  br i1 %1070, label %482, label %1071, !llvm.loop !60

1071:                                             ; preds = %.loopexit77
  %1072 = load i32, ptr %465, align 8, !tbaa !24
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %.loopexit82, label %.loopexit81

.loopexit81:                                      ; preds = %508, %1071
  %1074 = phi i64 [ %1067, %1071 ], [ %485, %508 ]
  %1075 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1075, align 4, !tbaa !61
  br label %.loopexit82

.loopexit82:                                      ; preds = %1060, %.loopexit81, %1071
  %1076 = phi i64 [ %1067, %1071 ], [ %1074, %.loopexit81 ], [ %1061, %1060 ]
  %1077 = freeze i64 %1076
  %1078 = icmp eq i64 %1077, 0
  %1079 = load i8, ptr %2, align 1
  %1080 = zext i8 %1079 to i32
  br i1 %1078, label %.loopexit93, label %1081

.loopexit93:                                      ; preds = %441, %111, %.loopexit82, %448, %.loopexit97, %.loopexit94, %97, %92
  br label %1081

1081:                                             ; preds = %.loopexit93, %.loopexit82, %18, %11, %4, %1
  %1082 = phi i32 [ -1, %4 ], [ -1, %1 ], [ %27, %18 ], [ -1, %11 ], [ -1, %.loopexit93 ], [ %1080, %.loopexit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %1082
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %.loopexit52, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %.loopexit52

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %264

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %264

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
  br label %264

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
  br label %264

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
  br label %264

58:                                               ; preds = %48
  %59 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %60 = load i32, ptr %59, align 8, !tbaa !16
  switch i32 %60, label %264 [
    i32 0, label %61
    i32 -5, label %61
  ]

61:                                               ; preds = %58, %58
  %62 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %63 = load i32, ptr %62, align 8, !tbaa !24
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %66 = load i32, ptr %65, align 8, !tbaa !34
  br i1 %64, label %67, label %229

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
  br i1 %97, label %.loopexit58, label %98

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
  br i1 %120, label %.loopexit58, label %121

121:                                              ; preds = %115, %98, %74
  %122 = phi ptr [ %71, %74 ], [ %102, %98 ], [ %116, %115 ]
  %123 = phi ptr [ %72, %74 ], [ %101, %98 ], [ %117, %115 ]
  %124 = phi i32 [ %66, %74 ], [ %100, %98 ], [ %119, %115 ]
  %125 = add i32 %124, -1
  %126 = and i32 %124, 7
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %.loopexit60, label %.preheader59

.preheader59:                                     ; preds = %121, %.preheader59
  %128 = phi ptr [ %132, %.preheader59 ], [ %122, %121 ]
  %129 = phi ptr [ %133, %.preheader59 ], [ %123, %121 ]
  %130 = phi i32 [ %134, %.preheader59 ], [ 0, %121 ]
  %131 = load i8, ptr %129, align 1, !tbaa !36
  store i8 %131, ptr %128, align 1, !tbaa !36
  %132 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %133 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %134 = add nuw nsw i32 %130, 1
  %135 = icmp eq i32 %134, %126
  br i1 %135, label %.loopexit60.loopexit, label %.preheader59, !llvm.loop !88

.loopexit60.loopexit:                             ; preds = %.preheader59
  %136 = and i32 %124, -8
  br label %.loopexit60

.loopexit60:                                      ; preds = %.loopexit60.loopexit, %121
  %137 = phi ptr [ %122, %121 ], [ %132, %.loopexit60.loopexit ]
  %138 = phi ptr [ %123, %121 ], [ %133, %.loopexit60.loopexit ]
  %139 = phi i32 [ %124, %121 ], [ %136, %.loopexit60.loopexit ]
  %140 = icmp ult i32 %125, 7
  br i1 %140, label %.loopexit58, label %.preheader57

.preheader57:                                     ; preds = %.loopexit60, %.preheader57
  %141 = phi ptr [ %167, %.preheader57 ], [ %137, %.loopexit60 ]
  %142 = phi ptr [ %168, %.preheader57 ], [ %138, %.loopexit60 ]
  %143 = phi i32 [ %166, %.preheader57 ], [ %139, %.loopexit60 ]
  %144 = load i8, ptr %142, align 1, !tbaa !36
  store i8 %144, ptr %141, align 1, !tbaa !36
  %145 = getelementptr inbounds nuw i8, ptr %141, i64 1
  %146 = getelementptr inbounds nuw i8, ptr %142, i64 1
  %147 = load i8, ptr %146, align 1, !tbaa !36
  store i8 %147, ptr %145, align 1, !tbaa !36
  %148 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %149 = getelementptr inbounds nuw i8, ptr %142, i64 2
  %150 = load i8, ptr %149, align 1, !tbaa !36
  store i8 %150, ptr %148, align 1, !tbaa !36
  %151 = getelementptr inbounds nuw i8, ptr %141, i64 3
  %152 = getelementptr inbounds nuw i8, ptr %142, i64 3
  %153 = load i8, ptr %152, align 1, !tbaa !36
  store i8 %153, ptr %151, align 1, !tbaa !36
  %154 = getelementptr inbounds nuw i8, ptr %141, i64 4
  %155 = getelementptr inbounds nuw i8, ptr %142, i64 4
  %156 = load i8, ptr %155, align 1, !tbaa !36
  store i8 %156, ptr %154, align 1, !tbaa !36
  %157 = getelementptr inbounds nuw i8, ptr %141, i64 5
  %158 = getelementptr inbounds nuw i8, ptr %142, i64 5
  %159 = load i8, ptr %158, align 1, !tbaa !36
  store i8 %159, ptr %157, align 1, !tbaa !36
  %160 = getelementptr inbounds nuw i8, ptr %141, i64 6
  %161 = getelementptr inbounds nuw i8, ptr %142, i64 6
  %162 = load i8, ptr %161, align 1, !tbaa !36
  store i8 %162, ptr %160, align 1, !tbaa !36
  %163 = getelementptr inbounds nuw i8, ptr %141, i64 7
  %164 = getelementptr inbounds nuw i8, ptr %142, i64 7
  %165 = load i8, ptr %164, align 1, !tbaa !36
  store i8 %165, ptr %163, align 1, !tbaa !36
  %166 = add i32 %143, -8
  %167 = getelementptr inbounds nuw i8, ptr %141, i64 8
  %168 = getelementptr inbounds nuw i8, ptr %142, i64 8
  %169 = icmp eq i32 %166, 0
  br i1 %169, label %.loopexit58, label %.preheader57, !llvm.loop !89

.loopexit58:                                      ; preds = %.preheader57, %.loopexit60, %115, %96
  %170 = load i32, ptr %65, align 8, !tbaa !34
  br label %171

171:                                              ; preds = %.loopexit58, %69, %67
  %172 = phi i32 [ %170, %.loopexit58 ], [ %66, %69 ], [ 0, %67 ]
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %174 = load i32, ptr %17, align 8, !tbaa !27
  %175 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %174, i32 %172), !nosanitize !20
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !20
  br i1 %176, label %177, label %178, !prof !21, !nosanitize !20

177:                                              ; preds = %171
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

178:                                              ; preds = %171
  %179 = extractvalue { i32, i1 } %175, 0, !nosanitize !20
  %180 = load ptr, ptr %173, align 8, !tbaa !29
  %181 = zext i32 %172 to i64
  %182 = getelementptr inbounds nuw i8, ptr %180, i64 %181
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %183, align 4, !tbaa !17
  %184 = tail call ptr @__errno_location() #16
  store i32 0, ptr %184, align 4, !tbaa !4
  %185 = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %186

186:                                              ; preds = %205, %178
  %187 = phi i32 [ 0, %178 ], [ %206, %205 ]
  %188 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %179, i32 %187), !nosanitize !20
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !20
  br i1 %189, label %190, label %191, !prof !21, !nosanitize !20

190:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

191:                                              ; preds = %186
  %192 = extractvalue { i32, i1 } %188, 0, !nosanitize !20
  %193 = tail call i32 @llvm.umin.i32(i32 %192, i32 1073741824)
  %194 = load i32, ptr %185, align 4, !tbaa !46
  %195 = zext i32 %187 to i64
  %196 = getelementptr inbounds nuw i8, ptr %182, i64 %195
  %197 = zext nneg i32 %193 to i64
  %198 = tail call i64 @read(i32 noundef %194, ptr noundef %196, i64 noundef %197) #13
  %199 = trunc i64 %198 to i32
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %208, label %201

201:                                              ; preds = %191
  %202 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %199), !nosanitize !20
  %203 = extractvalue { i32, i1 } %202, 1, !nosanitize !20
  br i1 %203, label %204, label %205, !prof !21, !nosanitize !20

204:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

205:                                              ; preds = %201
  %206 = extractvalue { i32, i1 } %202, 0, !nosanitize !20
  %207 = icmp ult i32 %206, %179
  br i1 %207, label %186, label %.loopexit56, !llvm.loop !47

208:                                              ; preds = %191
  %209 = icmp slt i32 %199, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %208
  %211 = load i32, ptr %184, align 4, !tbaa !4
  %212 = icmp eq i32 %211, 11
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  store i32 1, ptr %183, align 4, !tbaa !17
  %214 = icmp eq i32 %187, 0
  br i1 %214, label %215, label %.loopexit56

215:                                              ; preds = %213
  %216 = load i32, ptr %184, align 4, !tbaa !4
  br label %218

217:                                              ; preds = %208
  store i32 1, ptr %62, align 8, !tbaa !24
  br label %.loopexit56

218:                                              ; preds = %215, %210
  %219 = phi i32 [ %216, %215 ], [ %211, %210 ]
  %220 = tail call ptr @strerror(i32 noundef %219) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %220) #13
  br label %264

.loopexit56:                                      ; preds = %205, %217, %213
  %221 = phi i32 [ %187, %213 ], [ %187, %217 ], [ %206, %205 ]
  %222 = load i32, ptr %65, align 8, !tbaa !34
  %223 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %222, i32 %221), !nosanitize !20
  %224 = extractvalue { i32, i1 } %223, 1, !nosanitize !20
  br i1 %224, label %225, label %226, !prof !21, !nosanitize !20

225:                                              ; preds = %.loopexit56
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

226:                                              ; preds = %.loopexit56
  %227 = extractvalue { i32, i1 } %223, 0, !nosanitize !20
  store i32 %227, ptr %65, align 8, !tbaa !34
  %228 = load ptr, ptr %173, align 8, !tbaa !29
  store ptr %228, ptr %16, align 8, !tbaa !35
  br label %229

229:                                              ; preds = %226, %61
  %230 = phi i32 [ %227, %226 ], [ %66, %61 ]
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %264, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %234 = load i32, ptr %233, align 4, !tbaa !17
  %235 = icmp ne i32 %234, 0
  %236 = icmp ult i32 %230, 4
  %237 = and i1 %236, %235
  br i1 %237, label %264, label %238

238:                                              ; preds = %232
  %239 = icmp ugt i32 %230, 3
  %240 = load ptr, ptr %16, align 8, !tbaa !35
  br i1 %239, label %241, label %258

241:                                              ; preds = %238
  %242 = load i8, ptr %240, align 1, !tbaa !36
  %243 = icmp eq i8 %242, 31
  br i1 %243, label %244, label %258

244:                                              ; preds = %241
  %245 = getelementptr inbounds nuw i8, ptr %240, i64 1
  %246 = load i8, ptr %245, align 1, !tbaa !36
  %247 = icmp eq i8 %246, -117
  br i1 %247, label %248, label %258

248:                                              ; preds = %244
  %249 = getelementptr inbounds nuw i8, ptr %240, i64 2
  %250 = load i8, ptr %249, align 1, !tbaa !36
  %251 = icmp eq i8 %250, 8
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = getelementptr inbounds nuw i8, ptr %240, i64 3
  %254 = load i8, ptr %253, align 1, !tbaa !36
  %255 = icmp ult i8 %254, 32
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %49, align 4, !tbaa !33
  store i32 0, ptr %45, align 8, !tbaa !32
  br label %264

258:                                              ; preds = %252, %248, %244, %241, %238
  %259 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %260 = load ptr, ptr %259, align 8, !tbaa !30
  %261 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %260, ptr %261, align 8, !tbaa !22
  %262 = zext i32 %230 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %260, ptr align 1 %240, i64 %262, i1 false)
  %263 = load i32, ptr %65, align 8, !tbaa !34
  store i32 %263, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %65, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %264

264:                                              ; preds = %258, %256, %232, %229, %218, %58, %52, %41, %34, %12, %8
  %265 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %266 = load i32, ptr %265, align 8, !tbaa !16
  switch i32 %266, label %267 [
    i32 0, label %271
    i32 -5, label %271
  ]

267:                                              ; preds = %264
  %268 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %269 = load i32, ptr %268, align 4, !tbaa !17
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %.loopexit52, label %271

271:                                              ; preds = %267, %264, %264
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %272 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %273 = load i64, ptr %272, align 8, !tbaa !18
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %708, label %275

275:                                              ; preds = %271
  %276 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %277 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %279 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %280 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %282 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %284 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %285 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %286 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %287 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %288 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %291 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %293

293:                                              ; preds = %703, %275
  %294 = phi i64 [ %704, %703 ], [ %273, %275 ]
  %295 = load i32, ptr %1, align 8, !tbaa !19
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %312, label %297

297:                                              ; preds = %293
  %298 = zext i32 %295 to i64
  %299 = tail call i64 @llvm.smin.i64(i64 %294, i64 %298)
  %300 = trunc i64 %299 to i32
  %301 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %295, i32 %300), !nosanitize !20
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !20
  br i1 %302, label %303, label %304, !prof !21, !nosanitize !20

303:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

304:                                              ; preds = %297
  %305 = extractvalue { i32, i1 } %301, 0, !nosanitize !20
  store i32 %305, ptr %1, align 8, !tbaa !19
  %306 = load ptr, ptr %276, align 8, !tbaa !22
  %307 = and i64 %299, 4294967295
  %308 = getelementptr inbounds nuw i8, ptr %306, i64 %307
  store ptr %308, ptr %276, align 8, !tbaa !22
  %309 = load i64, ptr %277, align 8, !tbaa !23
  %310 = add nsw i64 %309, %307
  store i64 %310, ptr %277, align 8, !tbaa !23
  %311 = sub nsw i64 %294, %307
  store i64 %311, ptr %272, align 8, !tbaa !18
  br label %703

312:                                              ; preds = %293
  %313 = load i32, ptr %278, align 8, !tbaa !24
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %.preheader382, label %315

315:                                              ; preds = %312
  %316 = load i32, ptr %279, align 8, !tbaa !25
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %706, label %.preheader382

.preheader382:                                    ; preds = %315, %312
  br label %318

318:                                              ; preds = %.backedge, %.preheader382
  %319 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %319, label %690 [
    i32 0, label %320
    i32 1, label %551
    i32 2, label %593
  ]

320:                                              ; preds = %318
  %321 = load i32, ptr %280, align 8, !tbaa !27
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %342

323:                                              ; preds = %320
  %324 = load i32, ptr %290, align 4, !tbaa !28
  %325 = zext i32 %324 to i64
  %326 = tail call noalias ptr @malloc(i64 noundef %325) #15
  store ptr %326, ptr %285, align 8, !tbaa !29
  %327 = load i32, ptr %290, align 4, !tbaa !28
  %328 = shl i32 %327, 1
  %329 = zext i32 %328 to i64
  %330 = tail call noalias ptr @malloc(i64 noundef %329) #15
  store ptr %330, ptr %282, align 8, !tbaa !30
  %331 = icmp eq ptr %326, null
  %332 = icmp eq ptr %330, null
  %333 = or i1 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %323
  tail call void @free(ptr noundef %330) #13
  tail call void @free(ptr noundef %326) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit52

335:                                              ; preds = %323
  %336 = load i32, ptr %290, align 4, !tbaa !28
  store i32 %336, ptr %280, align 8, !tbaa !27
  store i32 0, ptr %279, align 8, !tbaa !25
  store ptr null, ptr %284, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %291, i8 0, i64 24, i1 false)
  %337 = tail call i32 @inflateInit2_(ptr noundef nonnull %284, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %335
  %340 = load ptr, ptr %282, align 8, !tbaa !30
  tail call void @free(ptr noundef %340) #13
  %341 = load ptr, ptr %285, align 8, !tbaa !29
  tail call void @free(ptr noundef %341) #13
  store i32 0, ptr %280, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit52

342:                                              ; preds = %335, %320
  %343 = load i32, ptr %292, align 8, !tbaa !32
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %348, label %345

345:                                              ; preds = %342
  %346 = load i32, ptr %288, align 4, !tbaa !33
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %345, %342
  %349 = tail call i32 @inflateReset(ptr noundef nonnull %284) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %350 = load i32, ptr %288, align 4, !tbaa !33
  %351 = icmp ne i32 %350, -1
  %352 = zext i1 %351 to i32
  store i32 %352, ptr %288, align 4, !tbaa !33
  store i32 0, ptr %292, align 8, !tbaa !32
  br label %548

353:                                              ; preds = %345
  %354 = load i32, ptr %265, align 8, !tbaa !16
  switch i32 %354, label %.loopexit52 [
    i32 0, label %355
    i32 -5, label %355
  ]

355:                                              ; preds = %353, %353
  %356 = load i32, ptr %278, align 8, !tbaa !24
  %357 = icmp eq i32 %356, 0
  %358 = load i32, ptr %279, align 8, !tbaa !34
  br i1 %357, label %359, label %516

359:                                              ; preds = %355
  %360 = icmp eq i32 %358, 0
  br i1 %360, label %462, label %361

361:                                              ; preds = %359
  %362 = load ptr, ptr %285, align 8, !tbaa !29
  %363 = load ptr, ptr %284, align 8, !tbaa !35
  %364 = icmp eq ptr %363, %362
  br i1 %364, label %462, label %365

365:                                              ; preds = %361
  %366 = ptrtoaddr ptr %363 to i64
  %367 = ptrtoaddr ptr %362 to i64
  %368 = zext i32 %358 to i64
  %369 = icmp ult i32 %358, 4
  %370 = sub i64 %367, %366
  %371 = icmp ult i64 %370, 32
  %372 = or i1 %369, %371
  br i1 %372, label %412, label %373

373:                                              ; preds = %365
  %374 = icmp ult i32 %358, 32
  br i1 %374, label %396, label %375

375:                                              ; preds = %373
  %376 = and i64 %368, 4294967264
  br label %377

377:                                              ; preds = %377, %375
  %378 = phi i64 [ 0, %375 ], [ %385, %377 ]
  %379 = getelementptr i8, ptr %362, i64 %378
  %380 = getelementptr i8, ptr %363, i64 %378
  %381 = getelementptr i8, ptr %380, i64 16
  %382 = load <16 x i8>, ptr %380, align 1, !tbaa !36
  %383 = load <16 x i8>, ptr %381, align 1, !tbaa !36
  %384 = getelementptr i8, ptr %379, i64 16
  store <16 x i8> %382, ptr %379, align 1, !tbaa !36
  store <16 x i8> %383, ptr %384, align 1, !tbaa !36
  %385 = add nuw nsw i64 %378, 32
  %386 = icmp eq i64 %385, %376
  br i1 %386, label %387, label %377, !llvm.loop !90

387:                                              ; preds = %377
  %388 = icmp eq i64 %376, %368
  br i1 %388, label %.loopexit46, label %389

389:                                              ; preds = %387
  %390 = trunc nuw i64 %376 to i32
  %391 = sub i32 %358, %390
  %392 = getelementptr i8, ptr %363, i64 %376
  %393 = getelementptr i8, ptr %362, i64 %376
  %394 = and i64 %368, 28
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %412, label %396, !prof !41

396:                                              ; preds = %389, %373
  %397 = phi i64 [ %376, %389 ], [ 0, %373 ]
  %398 = and i64 %368, 4294967292
  br label %399

399:                                              ; preds = %399, %396
  %400 = phi i64 [ %397, %396 ], [ %404, %399 ]
  %401 = getelementptr i8, ptr %362, i64 %400
  %402 = getelementptr i8, ptr %363, i64 %400
  %403 = load <4 x i8>, ptr %402, align 1, !tbaa !36
  store <4 x i8> %403, ptr %401, align 1, !tbaa !36
  %404 = add nuw i64 %400, 4
  %405 = icmp eq i64 %404, %398
  br i1 %405, label %406, label %399, !llvm.loop !91

406:                                              ; preds = %399
  %407 = getelementptr i8, ptr %362, i64 %398
  %408 = getelementptr i8, ptr %363, i64 %398
  %409 = trunc nuw i64 %398 to i32
  %410 = sub i32 %358, %409
  %411 = icmp eq i64 %398, %368
  br i1 %411, label %.loopexit46, label %412

412:                                              ; preds = %406, %389, %365
  %413 = phi ptr [ %362, %365 ], [ %393, %389 ], [ %407, %406 ]
  %414 = phi ptr [ %363, %365 ], [ %392, %389 ], [ %408, %406 ]
  %415 = phi i32 [ %358, %365 ], [ %391, %389 ], [ %410, %406 ]
  %416 = add i32 %415, -1
  %417 = and i32 %415, 7
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %.loopexit48, label %.preheader47

.preheader47:                                     ; preds = %412, %.preheader47
  %419 = phi ptr [ %423, %.preheader47 ], [ %413, %412 ]
  %420 = phi ptr [ %424, %.preheader47 ], [ %414, %412 ]
  %421 = phi i32 [ %425, %.preheader47 ], [ 0, %412 ]
  %422 = load i8, ptr %420, align 1, !tbaa !36
  store i8 %422, ptr %419, align 1, !tbaa !36
  %423 = getelementptr inbounds nuw i8, ptr %419, i64 1
  %424 = getelementptr inbounds nuw i8, ptr %420, i64 1
  %425 = add nuw nsw i32 %421, 1
  %426 = icmp eq i32 %425, %417
  br i1 %426, label %.loopexit48.loopexit, label %.preheader47, !llvm.loop !92

.loopexit48.loopexit:                             ; preds = %.preheader47
  %427 = and i32 %415, -8
  br label %.loopexit48

.loopexit48:                                      ; preds = %.loopexit48.loopexit, %412
  %428 = phi ptr [ %413, %412 ], [ %423, %.loopexit48.loopexit ]
  %429 = phi ptr [ %414, %412 ], [ %424, %.loopexit48.loopexit ]
  %430 = phi i32 [ %415, %412 ], [ %427, %.loopexit48.loopexit ]
  %431 = icmp ult i32 %416, 7
  br i1 %431, label %.loopexit46, label %.preheader45

.preheader45:                                     ; preds = %.loopexit48, %.preheader45
  %432 = phi ptr [ %458, %.preheader45 ], [ %428, %.loopexit48 ]
  %433 = phi ptr [ %459, %.preheader45 ], [ %429, %.loopexit48 ]
  %434 = phi i32 [ %457, %.preheader45 ], [ %430, %.loopexit48 ]
  %435 = load i8, ptr %433, align 1, !tbaa !36
  store i8 %435, ptr %432, align 1, !tbaa !36
  %436 = getelementptr inbounds nuw i8, ptr %432, i64 1
  %437 = getelementptr inbounds nuw i8, ptr %433, i64 1
  %438 = load i8, ptr %437, align 1, !tbaa !36
  store i8 %438, ptr %436, align 1, !tbaa !36
  %439 = getelementptr inbounds nuw i8, ptr %432, i64 2
  %440 = getelementptr inbounds nuw i8, ptr %433, i64 2
  %441 = load i8, ptr %440, align 1, !tbaa !36
  store i8 %441, ptr %439, align 1, !tbaa !36
  %442 = getelementptr inbounds nuw i8, ptr %432, i64 3
  %443 = getelementptr inbounds nuw i8, ptr %433, i64 3
  %444 = load i8, ptr %443, align 1, !tbaa !36
  store i8 %444, ptr %442, align 1, !tbaa !36
  %445 = getelementptr inbounds nuw i8, ptr %432, i64 4
  %446 = getelementptr inbounds nuw i8, ptr %433, i64 4
  %447 = load i8, ptr %446, align 1, !tbaa !36
  store i8 %447, ptr %445, align 1, !tbaa !36
  %448 = getelementptr inbounds nuw i8, ptr %432, i64 5
  %449 = getelementptr inbounds nuw i8, ptr %433, i64 5
  %450 = load i8, ptr %449, align 1, !tbaa !36
  store i8 %450, ptr %448, align 1, !tbaa !36
  %451 = getelementptr inbounds nuw i8, ptr %432, i64 6
  %452 = getelementptr inbounds nuw i8, ptr %433, i64 6
  %453 = load i8, ptr %452, align 1, !tbaa !36
  store i8 %453, ptr %451, align 1, !tbaa !36
  %454 = getelementptr inbounds nuw i8, ptr %432, i64 7
  %455 = getelementptr inbounds nuw i8, ptr %433, i64 7
  %456 = load i8, ptr %455, align 1, !tbaa !36
  store i8 %456, ptr %454, align 1, !tbaa !36
  %457 = add i32 %434, -8
  %458 = getelementptr inbounds nuw i8, ptr %432, i64 8
  %459 = getelementptr inbounds nuw i8, ptr %433, i64 8
  %460 = icmp eq i32 %457, 0
  br i1 %460, label %.loopexit46, label %.preheader45, !llvm.loop !93

.loopexit46:                                      ; preds = %.preheader45, %.loopexit48, %406, %387
  %461 = load i32, ptr %279, align 8, !tbaa !34
  br label %462

462:                                              ; preds = %.loopexit46, %361, %359
  %463 = phi i32 [ %461, %.loopexit46 ], [ %358, %361 ], [ 0, %359 ]
  %464 = load i32, ptr %280, align 8, !tbaa !27
  %465 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %464, i32 %463), !nosanitize !20
  %466 = extractvalue { i32, i1 } %465, 1, !nosanitize !20
  br i1 %466, label %467, label %468, !prof !21, !nosanitize !20

467:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

468:                                              ; preds = %462
  %469 = extractvalue { i32, i1 } %465, 0, !nosanitize !20
  %470 = load ptr, ptr %285, align 8, !tbaa !29
  %471 = zext i32 %463 to i64
  %472 = getelementptr inbounds nuw i8, ptr %470, i64 %471
  store i32 0, ptr %286, align 4, !tbaa !17
  %473 = tail call ptr @__errno_location() #16
  store i32 0, ptr %473, align 4, !tbaa !4
  br label %474

474:                                              ; preds = %493, %468
  %475 = phi i32 [ 0, %468 ], [ %494, %493 ]
  %476 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %469, i32 %475), !nosanitize !20
  %477 = extractvalue { i32, i1 } %476, 1, !nosanitize !20
  br i1 %477, label %478, label %479, !prof !21, !nosanitize !20

478:                                              ; preds = %474
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

479:                                              ; preds = %474
  %480 = extractvalue { i32, i1 } %476, 0, !nosanitize !20
  %481 = tail call i32 @llvm.umin.i32(i32 %480, i32 1073741824)
  %482 = load i32, ptr %287, align 4, !tbaa !46
  %483 = zext i32 %475 to i64
  %484 = getelementptr inbounds nuw i8, ptr %472, i64 %483
  %485 = zext nneg i32 %481 to i64
  %486 = tail call i64 @read(i32 noundef %482, ptr noundef %484, i64 noundef %485) #13
  %487 = trunc i64 %486 to i32
  %488 = icmp slt i32 %487, 1
  br i1 %488, label %496, label %489

489:                                              ; preds = %479
  %490 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %475, i32 %487), !nosanitize !20
  %491 = extractvalue { i32, i1 } %490, 1, !nosanitize !20
  br i1 %491, label %492, label %493, !prof !21, !nosanitize !20

492:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

493:                                              ; preds = %489
  %494 = extractvalue { i32, i1 } %490, 0, !nosanitize !20
  %495 = icmp ult i32 %494, %469
  br i1 %495, label %474, label %.loopexit44, !llvm.loop !47

496:                                              ; preds = %479
  %497 = icmp slt i32 %487, 0
  br i1 %497, label %498, label %505

498:                                              ; preds = %496
  %499 = load i32, ptr %473, align 4, !tbaa !4
  %500 = icmp eq i32 %499, 11
  br i1 %500, label %501, label %.loopexit53

501:                                              ; preds = %498
  store i32 1, ptr %286, align 4, !tbaa !17
  %502 = icmp eq i32 %475, 0
  br i1 %502, label %503, label %.loopexit44

503:                                              ; preds = %501
  %504 = load i32, ptr %473, align 4, !tbaa !4
  br label %.loopexit53

505:                                              ; preds = %496
  store i32 1, ptr %278, align 8, !tbaa !24
  br label %.loopexit44

.loopexit53:                                      ; preds = %498, %503
  %506 = phi i32 [ %504, %503 ], [ %499, %498 ]
  %507 = tail call ptr @strerror(i32 noundef %506) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %507) #13
  br label %.loopexit52

.loopexit44:                                      ; preds = %493, %505, %501
  %508 = phi i32 [ %475, %501 ], [ %475, %505 ], [ %494, %493 ]
  %509 = load i32, ptr %279, align 8, !tbaa !34
  %510 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %509, i32 %508), !nosanitize !20
  %511 = extractvalue { i32, i1 } %510, 1, !nosanitize !20
  br i1 %511, label %512, label %513, !prof !21, !nosanitize !20

512:                                              ; preds = %.loopexit44
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

513:                                              ; preds = %.loopexit44
  %514 = extractvalue { i32, i1 } %510, 0, !nosanitize !20
  store i32 %514, ptr %279, align 8, !tbaa !34
  %515 = load ptr, ptr %285, align 8, !tbaa !29
  store ptr %515, ptr %284, align 8, !tbaa !35
  br label %516

516:                                              ; preds = %513, %355
  %517 = phi i32 [ %514, %513 ], [ %358, %355 ]
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %548, label %519

519:                                              ; preds = %516
  %520 = load i32, ptr %286, align 4, !tbaa !17
  %521 = icmp ne i32 %520, 0
  %522 = icmp ult i32 %517, 4
  %523 = and i1 %522, %521
  br i1 %523, label %548, label %524

524:                                              ; preds = %519
  %525 = icmp ugt i32 %517, 3
  %526 = load ptr, ptr %284, align 8, !tbaa !35
  br i1 %525, label %527, label %544

527:                                              ; preds = %524
  %528 = load i8, ptr %526, align 1, !tbaa !36
  %529 = icmp eq i8 %528, 31
  br i1 %529, label %530, label %544

530:                                              ; preds = %527
  %531 = getelementptr inbounds nuw i8, ptr %526, i64 1
  %532 = load i8, ptr %531, align 1, !tbaa !36
  %533 = icmp eq i8 %532, -117
  br i1 %533, label %534, label %544

534:                                              ; preds = %530
  %535 = getelementptr inbounds nuw i8, ptr %526, i64 2
  %536 = load i8, ptr %535, align 1, !tbaa !36
  %537 = icmp eq i8 %536, 8
  br i1 %537, label %538, label %544

538:                                              ; preds = %534
  %539 = getelementptr inbounds nuw i8, ptr %526, i64 3
  %540 = load i8, ptr %539, align 1, !tbaa !36
  %541 = icmp ult i8 %540, 32
  br i1 %541, label %542, label %544

542:                                              ; preds = %538
  %543 = tail call i32 @inflateReset(ptr noundef nonnull %284) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %288, align 4, !tbaa !33
  store i32 0, ptr %292, align 8, !tbaa !32
  br label %691

544:                                              ; preds = %538, %534, %530, %527, %524
  %545 = load ptr, ptr %282, align 8, !tbaa !30
  store ptr %545, ptr %276, align 8, !tbaa !22
  %546 = zext i32 %517 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %545, ptr align 1 %526, i64 %546, i1 false)
  %547 = load i32, ptr %279, align 8, !tbaa !34
  store i32 %547, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %279, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %693

548:                                              ; preds = %519, %516, %348
  %549 = load i32, ptr %9, align 8, !tbaa !26
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %.loopexit54, label %691

551:                                              ; preds = %318
  %552 = load ptr, ptr %282, align 8, !tbaa !30
  %553 = load i32, ptr %280, align 8, !tbaa !27
  %554 = shl i32 %553, 1
  store i32 0, ptr %286, align 4, !tbaa !17
  %555 = tail call ptr @__errno_location() #16
  store i32 0, ptr %555, align 4, !tbaa !4
  store i32 0, ptr %1, align 8, !tbaa !4
  br label %556

556:                                              ; preds = %576, %551
  %557 = phi i32 [ %577, %576 ], [ 0, %551 ]
  %558 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %554, i32 %557), !nosanitize !20
  %559 = extractvalue { i32, i1 } %558, 1, !nosanitize !20
  br i1 %559, label %560, label %561, !prof !21, !nosanitize !20

560:                                              ; preds = %556
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

561:                                              ; preds = %556
  %562 = extractvalue { i32, i1 } %558, 0, !nosanitize !20
  %563 = tail call i32 @llvm.umin.i32(i32 %562, i32 1073741824)
  %564 = load i32, ptr %287, align 4, !tbaa !46
  %565 = zext i32 %557 to i64
  %566 = getelementptr inbounds nuw i8, ptr %552, i64 %565
  %567 = zext nneg i32 %563 to i64
  %568 = tail call i64 @read(i32 noundef %564, ptr noundef %566, i64 noundef %567) #13
  %569 = trunc i64 %568 to i32
  %570 = icmp slt i32 %569, 1
  br i1 %570, label %579, label %571

571:                                              ; preds = %561
  %572 = load i32, ptr %1, align 4, !tbaa !4
  %573 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %572, i32 %569), !nosanitize !20
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !20
  br i1 %574, label %575, label %576, !prof !21, !nosanitize !20

575:                                              ; preds = %571
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

576:                                              ; preds = %571
  %577 = extractvalue { i32, i1 } %573, 0, !nosanitize !20
  store i32 %577, ptr %1, align 4, !tbaa !4
  %578 = icmp ult i32 %577, %554
  br i1 %578, label %556, label %.loopexit51, !llvm.loop !47

579:                                              ; preds = %561
  %580 = icmp slt i32 %569, 0
  br i1 %580, label %581, label %589

581:                                              ; preds = %579
  %582 = load i32, ptr %555, align 4, !tbaa !4
  %583 = icmp eq i32 %582, 11
  br i1 %583, label %584, label %.loopexit55

584:                                              ; preds = %581
  store i32 1, ptr %286, align 4, !tbaa !17
  %585 = load i32, ptr %1, align 4, !tbaa !4
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %.loopexit51

587:                                              ; preds = %584
  %588 = load i32, ptr %555, align 4, !tbaa !4
  br label %.loopexit55

589:                                              ; preds = %579
  store i32 1, ptr %278, align 8, !tbaa !24
  br label %.loopexit51

.loopexit55:                                      ; preds = %581, %587
  %590 = phi i32 [ %588, %587 ], [ %582, %581 ]
  %591 = tail call ptr @strerror(i32 noundef %590) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %591) #13
  br label %.loopexit52

.loopexit51:                                      ; preds = %576, %589, %584
  %592 = load ptr, ptr %282, align 8, !tbaa !30
  store ptr %592, ptr %276, align 8, !tbaa !22
  br label %.loopexit54

593:                                              ; preds = %318
  %594 = load i32, ptr %280, align 8, !tbaa !27
  %595 = shl i32 %594, 1
  store i32 %595, ptr %281, align 8, !tbaa !48
  %596 = load ptr, ptr %282, align 8, !tbaa !30
  store ptr %596, ptr %283, align 8, !tbaa !49
  br label %597

597:                                              ; preds = %674, %593
  %598 = phi i32 [ 0, %593 ], [ %659, %674 ]
  %599 = load i32, ptr %279, align 8, !tbaa !34
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %658

601:                                              ; preds = %597
  %602 = load i32, ptr %265, align 8, !tbaa !16
  switch i32 %602, label %.loopexit49 [
    i32 0, label %603
    i32 -5, label %603
  ]

603:                                              ; preds = %601, %601
  %604 = load i32, ptr %278, align 8, !tbaa !24
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %654

606:                                              ; preds = %603
  %607 = load i32, ptr %280, align 8, !tbaa !27
  %608 = load ptr, ptr %285, align 8, !tbaa !29
  store i32 0, ptr %286, align 4, !tbaa !17
  %609 = tail call ptr @__errno_location() #16
  store i32 0, ptr %609, align 4, !tbaa !4
  br label %610

610:                                              ; preds = %629, %606
  %611 = phi i32 [ 0, %606 ], [ %630, %629 ]
  %612 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %607, i32 %611), !nosanitize !20
  %613 = extractvalue { i32, i1 } %612, 1, !nosanitize !20
  br i1 %613, label %614, label %615, !prof !21, !nosanitize !20

614:                                              ; preds = %610
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

615:                                              ; preds = %610
  %616 = extractvalue { i32, i1 } %612, 0, !nosanitize !20
  %617 = tail call i32 @llvm.umin.i32(i32 %616, i32 1073741824)
  %618 = load i32, ptr %287, align 4, !tbaa !46
  %619 = zext i32 %611 to i64
  %620 = getelementptr inbounds nuw i8, ptr %608, i64 %619
  %621 = zext nneg i32 %617 to i64
  %622 = tail call i64 @read(i32 noundef %618, ptr noundef %620, i64 noundef %621) #13
  %623 = trunc i64 %622 to i32
  %624 = icmp slt i32 %623, 1
  br i1 %624, label %632, label %625

625:                                              ; preds = %615
  %626 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %611, i32 %623), !nosanitize !20
  %627 = extractvalue { i32, i1 } %626, 1, !nosanitize !20
  br i1 %627, label %628, label %629, !prof !21, !nosanitize !20

628:                                              ; preds = %625
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

629:                                              ; preds = %625
  %630 = extractvalue { i32, i1 } %626, 0, !nosanitize !20
  %631 = icmp ult i32 %630, %607
  br i1 %631, label %610, label %.loopexit, !llvm.loop !47

632:                                              ; preds = %615
  %633 = icmp slt i32 %623, 0
  br i1 %633, label %634, label %641

634:                                              ; preds = %632
  %635 = load i32, ptr %609, align 4, !tbaa !4
  %636 = icmp eq i32 %635, 11
  br i1 %636, label %637, label %.loopexit50

637:                                              ; preds = %634
  store i32 1, ptr %286, align 4, !tbaa !17
  %638 = icmp eq i32 %611, 0
  br i1 %638, label %639, label %.loopexit

639:                                              ; preds = %637
  %640 = load i32, ptr %609, align 4, !tbaa !4
  br label %.loopexit50

641:                                              ; preds = %632
  store i32 1, ptr %278, align 8, !tbaa !24
  br label %.loopexit

.loopexit50:                                      ; preds = %634, %639
  %642 = phi i32 [ %640, %639 ], [ %635, %634 ]
  %643 = tail call ptr @strerror(i32 noundef %642) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %643) #13
  %644 = load i32, ptr %265, align 8, !tbaa !16
  br label %.loopexit49

.loopexit:                                        ; preds = %629, %641, %637
  %645 = phi i32 [ %611, %637 ], [ %611, %641 ], [ %630, %629 ]
  %646 = load i32, ptr %279, align 8, !tbaa !34
  %647 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %646, i32 %645), !nosanitize !20
  %648 = extractvalue { i32, i1 } %647, 1, !nosanitize !20
  br i1 %648, label %649, label %650, !prof !21, !nosanitize !20

649:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

650:                                              ; preds = %.loopexit
  %651 = extractvalue { i32, i1 } %647, 0, !nosanitize !20
  store i32 %651, ptr %279, align 8, !tbaa !34
  %652 = load ptr, ptr %285, align 8, !tbaa !29
  store ptr %652, ptr %284, align 8, !tbaa !35
  %653 = icmp eq i32 %651, 0
  br i1 %653, label %654, label %658

654:                                              ; preds = %650, %603
  %655 = load i32, ptr %286, align 4, !tbaa !17
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %.loopexit49

657:                                              ; preds = %654
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit49

658:                                              ; preds = %650, %597
  %659 = tail call i32 @inflate(ptr noundef nonnull %284, i32 noundef 0) #13
  %660 = load i32, ptr %281, align 8, !tbaa !48
  %661 = icmp ult i32 %660, %595
  br i1 %661, label %662, label %663

662:                                              ; preds = %658
  store i32 0, ptr %288, align 4, !tbaa !33
  br label %663

663:                                              ; preds = %662, %658
  switch i32 %659, label %674 [
    i32 -2, label %664
    i32 2, label %664
    i32 -4, label %665
    i32 -3, label %666
  ]

664:                                              ; preds = %663, %663
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit49

665:                                              ; preds = %663
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit49

666:                                              ; preds = %663
  %667 = load i32, ptr %288, align 4, !tbaa !33
  %668 = icmp eq i32 %667, 1
  br i1 %668, label %669, label %670

669:                                              ; preds = %666
  store i32 0, ptr %279, align 8, !tbaa !34
  store i32 1, ptr %278, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %.loopexit49

670:                                              ; preds = %666
  %671 = load ptr, ptr %289, align 8, !tbaa !50
  %672 = icmp eq ptr %671, null
  %673 = select i1 %672, ptr @.str.6, ptr %671
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %673) #13
  br label %.loopexit49

674:                                              ; preds = %663
  %675 = icmp ne i32 %660, 0
  %676 = icmp ne i32 %659, 1
  %677 = select i1 %675, i1 %676, i1 false
  br i1 %677, label %597, label %.loopexit49, !llvm.loop !51

.loopexit49:                                      ; preds = %674, %601, %670, %669, %665, %664, %657, %654, %.loopexit50
  %678 = phi i32 [ %644, %.loopexit50 ], [ %598, %654 ], [ %598, %657 ], [ %659, %664 ], [ -4, %665 ], [ 0, %669 ], [ -3, %670 ], [ %659, %674 ], [ %602, %601 ]
  %679 = load i32, ptr %281, align 8, !tbaa !48
  %680 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %595, i32 %679), !nosanitize !20
  %681 = extractvalue { i32, i1 } %680, 1, !nosanitize !20
  br i1 %681, label %682, label %683, !prof !21, !nosanitize !20

682:                                              ; preds = %.loopexit49
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

683:                                              ; preds = %.loopexit49
  %684 = extractvalue { i32, i1 } %680, 0, !nosanitize !20
  store i32 %684, ptr %1, align 8, !tbaa !19
  %685 = load ptr, ptr %283, align 8, !tbaa !49
  %686 = zext i32 %684 to i64
  %687 = sub nsw i64 0, %686
  %688 = getelementptr inbounds i8, ptr %685, i64 %687
  store ptr %688, ptr %276, align 8, !tbaa !22
  switch i32 %678, label %.loopexit52 [
    i32 1, label %689
    i32 0, label %691
  ]

689:                                              ; preds = %683
  store i32 0, ptr %288, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %691

690:                                              ; preds = %318
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit52

691:                                              ; preds = %689, %683, %548, %542
  %692 = load i32, ptr %1, align 8, !tbaa !19
  br label %693

693:                                              ; preds = %691, %544
  %694 = phi i32 [ %692, %691 ], [ %547, %544 ]
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %.loopexit54

696:                                              ; preds = %693
  %697 = load i32, ptr %278, align 8, !tbaa !24
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %.backedge, label %699

699:                                              ; preds = %696
  %700 = load i32, ptr %279, align 8, !tbaa !34
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %.loopexit54, label %.backedge

.backedge:                                        ; preds = %699, %696
  br label %318, !llvm.loop !52

.loopexit54:                                      ; preds = %699, %693, %548, %.loopexit51
  %702 = load i64, ptr %272, align 8, !tbaa !18
  br label %703

703:                                              ; preds = %.loopexit54, %304
  %704 = phi i64 [ %702, %.loopexit54 ], [ %311, %304 ]
  %705 = icmp eq i64 %704, 0
  br i1 %705, label %706, label %293, !llvm.loop !53

706:                                              ; preds = %703, %315
  %707 = icmp slt i32 %0, 0
  br i1 %707, label %.loopexit52, label %710

708:                                              ; preds = %271
  %709 = icmp slt i32 %0, 0
  br i1 %709, label %.loopexit52, label %710

710:                                              ; preds = %708, %706
  %711 = load i32, ptr %1, align 8, !tbaa !19
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %728

713:                                              ; preds = %710
  store i32 1, ptr %1, align 8, !tbaa !19
  %714 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %715 = load ptr, ptr %714, align 8, !tbaa !30
  %716 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %717 = load i32, ptr %716, align 8, !tbaa !27
  %718 = shl i32 %717, 1
  %719 = zext i32 %718 to i64
  %720 = getelementptr inbounds nuw i8, ptr %715, i64 %719
  %721 = getelementptr inbounds i8, ptr %720, i64 -1
  %722 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %721, ptr %722, align 8, !tbaa !22
  %723 = trunc i32 %0 to i8
  store i8 %723, ptr %721, align 1, !tbaa !36
  %724 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %725 = load i64, ptr %724, align 8, !tbaa !23
  %726 = add nsw i64 %725, -1
  store i64 %726, ptr %724, align 8, !tbaa !23
  %727 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %727, align 4, !tbaa !61
  br label %.loopexit52

728:                                              ; preds = %710
  %729 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %730 = load i32, ptr %729, align 8, !tbaa !27
  %731 = shl i32 %730, 1
  %732 = icmp eq i32 %711, %731
  br i1 %732, label %733, label %734

733:                                              ; preds = %728
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %.loopexit52

734:                                              ; preds = %728
  %735 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %736 = load ptr, ptr %735, align 8, !tbaa !22
  %737 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %738 = load ptr, ptr %737, align 8, !tbaa !30
  %739 = icmp eq ptr %736, %738
  br i1 %739, label %.preheader, label %754

.preheader:                                       ; preds = %734
  %740 = zext i32 %711 to i64
  %741 = getelementptr inbounds nuw i8, ptr %738, i64 %740
  %742 = zext i32 %731 to i64
  %743 = getelementptr inbounds nuw i8, ptr %738, i64 %742
  br label %744

744:                                              ; preds = %.preheader, %744
  %745 = phi ptr [ %749, %744 ], [ %743, %.preheader ]
  %746 = phi ptr [ %747, %744 ], [ %741, %.preheader ]
  %747 = getelementptr inbounds i8, ptr %746, i64 -1
  %748 = load i8, ptr %747, align 1, !tbaa !36
  %749 = getelementptr inbounds i8, ptr %745, i64 -1
  store i8 %748, ptr %749, align 1, !tbaa !36
  %750 = load ptr, ptr %737, align 8, !tbaa !30
  %751 = icmp ugt ptr %747, %750
  br i1 %751, label %744, label %752, !llvm.loop !94

752:                                              ; preds = %744
  %753 = load i32, ptr %1, align 8, !tbaa !19
  store ptr %749, ptr %735, align 8, !tbaa !22
  br label %754

754:                                              ; preds = %752, %734
  %755 = phi ptr [ %749, %752 ], [ %736, %734 ]
  %756 = phi i32 [ %753, %752 ], [ %711, %734 ]
  %757 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %756, i32 1), !nosanitize !20
  %758 = extractvalue { i32, i1 } %757, 1, !nosanitize !20
  br i1 %758, label %759, label %760, !prof !21, !nosanitize !20

759:                                              ; preds = %754
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

760:                                              ; preds = %754
  %761 = extractvalue { i32, i1 } %757, 0, !nosanitize !20
  store i32 %761, ptr %1, align 8, !tbaa !19
  %762 = getelementptr inbounds i8, ptr %755, i64 -1
  store ptr %762, ptr %735, align 8, !tbaa !22
  %763 = trunc i32 %0 to i8
  store i8 %763, ptr %762, align 1, !tbaa !36
  %764 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %765 = load i64, ptr %764, align 8, !tbaa !23
  %766 = add nsw i64 %765, -1
  store i64 %766, ptr %764, align 8, !tbaa !23
  %767 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %767, align 4, !tbaa !61
  br label %.loopexit52

.loopexit52:                                      ; preds = %683, %353, %760, %733, %713, %708, %706, %690, %.loopexit55, %.loopexit53, %339, %334, %267, %4, %2
  %768 = phi i32 [ -1, %4 ], [ -1, %2 ], [ -1, %267 ], [ -1, %706 ], [ %0, %713 ], [ -1, %733 ], [ %0, %760 ], [ -1, %708 ], [ -1, %339 ], [ -1, %334 ], [ -1, %690 ], [ -1, %.loopexit55 ], [ -1, %.loopexit53 ], [ -1, %353 ], [ -1, %683 ]
  ret i32 %768
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
  br i1 %8, label %.loopexit80, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !8
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %.loopexit80

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
  br i1 %19, label %.loopexit80, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %.loopexit83, label %24

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

43:                                               ; preds = %453, %24
  %44 = phi i64 [ %454, %453 ], [ %22, %24 ]
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
  %60 = add nsw i64 %59, %57
  store i64 %60, ptr %26, align 8, !tbaa !23
  %61 = sub nsw i64 %44, %57
  store i64 %61, ptr %21, align 8, !tbaa !18
  br label %453

62:                                               ; preds = %43
  %63 = load i32, ptr %27, align 8, !tbaa !24
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %.preheader789, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %28, align 8, !tbaa !25
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %.loopexit83, label %.preheader789

.preheader789:                                    ; preds = %65, %62
  br label %68

68:                                               ; preds = %.backedge, %.preheader789
  %69 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %69, label %440 [
    i32 0, label %70
    i32 1, label %301
    i32 2, label %343
  ]

70:                                               ; preds = %68
  %71 = load i32, ptr %30, align 8, !tbaa !27
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = load i32, ptr %40, align 4, !tbaa !28
  %75 = zext i32 %74 to i64
  %76 = tail call noalias ptr @malloc(i64 noundef %75) #15
  store ptr %76, ptr %35, align 8, !tbaa !29
  %77 = load i32, ptr %40, align 4, !tbaa !28
  %78 = shl i32 %77, 1
  %79 = zext i32 %78 to i64
  %80 = tail call noalias ptr @malloc(i64 noundef %79) #15
  store ptr %80, ptr %32, align 8, !tbaa !30
  %81 = icmp eq ptr %76, null
  %82 = icmp eq ptr %80, null
  %83 = or i1 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  tail call void @free(ptr noundef %80) #13
  tail call void @free(ptr noundef %76) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit80

85:                                               ; preds = %73
  %86 = load i32, ptr %40, align 4, !tbaa !28
  store i32 %86, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %87 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %90) #13
  %91 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %91) #13
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit80

92:                                               ; preds = %85, %70
  %93 = load i32, ptr %42, align 8, !tbaa !32
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %38, align 4, !tbaa !33
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95, %92
  %99 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  %100 = load i32, ptr %38, align 4, !tbaa !33
  %101 = icmp ne i32 %100, -1
  %102 = zext i1 %101 to i32
  store i32 %102, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %298

103:                                              ; preds = %95
  %104 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %104, label %.loopexit80 [
    i32 0, label %105
    i32 -5, label %105
  ]

105:                                              ; preds = %103, %103
  %106 = load i32, ptr %27, align 8, !tbaa !24
  %107 = icmp eq i32 %106, 0
  %108 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %107, label %109, label %266

109:                                              ; preds = %105
  %110 = icmp eq i32 %108, 0
  br i1 %110, label %212, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr %35, align 8, !tbaa !29
  %113 = load ptr, ptr %34, align 8, !tbaa !35
  %114 = icmp eq ptr %113, %112
  br i1 %114, label %212, label %115

115:                                              ; preds = %111
  %116 = ptrtoaddr ptr %113 to i64
  %117 = ptrtoaddr ptr %112 to i64
  %118 = zext i32 %108 to i64
  %119 = icmp ult i32 %108, 4
  %120 = sub i64 %117, %116
  %121 = icmp ult i64 %120, 32
  %122 = or i1 %119, %121
  br i1 %122, label %162, label %123

123:                                              ; preds = %115
  %124 = icmp ult i32 %108, 32
  br i1 %124, label %146, label %125

125:                                              ; preds = %123
  %126 = and i64 %118, 4294967264
  br label %127

127:                                              ; preds = %127, %125
  %128 = phi i64 [ 0, %125 ], [ %135, %127 ]
  %129 = getelementptr i8, ptr %112, i64 %128
  %130 = getelementptr i8, ptr %113, i64 %128
  %131 = getelementptr i8, ptr %130, i64 16
  %132 = load <16 x i8>, ptr %130, align 1, !tbaa !36
  %133 = load <16 x i8>, ptr %131, align 1, !tbaa !36
  %134 = getelementptr i8, ptr %129, i64 16
  store <16 x i8> %132, ptr %129, align 1, !tbaa !36
  store <16 x i8> %133, ptr %134, align 1, !tbaa !36
  %135 = add nuw nsw i64 %128, 32
  %136 = icmp eq i64 %135, %126
  br i1 %136, label %137, label %127, !llvm.loop !95

137:                                              ; preds = %127
  %138 = icmp eq i64 %126, %118
  br i1 %138, label %.loopexit73, label %139

139:                                              ; preds = %137
  %140 = trunc nuw i64 %126 to i32
  %141 = sub i32 %108, %140
  %142 = getelementptr i8, ptr %113, i64 %126
  %143 = getelementptr i8, ptr %112, i64 %126
  %144 = and i64 %118, 28
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %162, label %146, !prof !41

146:                                              ; preds = %139, %123
  %147 = phi i64 [ %126, %139 ], [ 0, %123 ]
  %148 = and i64 %118, 4294967292
  br label %149

149:                                              ; preds = %149, %146
  %150 = phi i64 [ %147, %146 ], [ %154, %149 ]
  %151 = getelementptr i8, ptr %112, i64 %150
  %152 = getelementptr i8, ptr %113, i64 %150
  %153 = load <4 x i8>, ptr %152, align 1, !tbaa !36
  store <4 x i8> %153, ptr %151, align 1, !tbaa !36
  %154 = add nuw i64 %150, 4
  %155 = icmp eq i64 %154, %148
  br i1 %155, label %156, label %149, !llvm.loop !96

156:                                              ; preds = %149
  %157 = getelementptr i8, ptr %112, i64 %148
  %158 = getelementptr i8, ptr %113, i64 %148
  %159 = trunc nuw i64 %148 to i32
  %160 = sub i32 %108, %159
  %161 = icmp eq i64 %148, %118
  br i1 %161, label %.loopexit73, label %162

162:                                              ; preds = %156, %139, %115
  %163 = phi ptr [ %112, %115 ], [ %143, %139 ], [ %157, %156 ]
  %164 = phi ptr [ %113, %115 ], [ %142, %139 ], [ %158, %156 ]
  %165 = phi i32 [ %108, %115 ], [ %141, %139 ], [ %160, %156 ]
  %166 = add i32 %165, -1
  %167 = and i32 %165, 7
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %.loopexit75, label %.preheader74

.preheader74:                                     ; preds = %162, %.preheader74
  %169 = phi ptr [ %173, %.preheader74 ], [ %163, %162 ]
  %170 = phi ptr [ %174, %.preheader74 ], [ %164, %162 ]
  %171 = phi i32 [ %175, %.preheader74 ], [ 0, %162 ]
  %172 = load i8, ptr %170, align 1, !tbaa !36
  store i8 %172, ptr %169, align 1, !tbaa !36
  %173 = getelementptr inbounds nuw i8, ptr %169, i64 1
  %174 = getelementptr inbounds nuw i8, ptr %170, i64 1
  %175 = add nuw nsw i32 %171, 1
  %176 = icmp eq i32 %175, %167
  br i1 %176, label %.loopexit75.loopexit, label %.preheader74, !llvm.loop !97

.loopexit75.loopexit:                             ; preds = %.preheader74
  %177 = and i32 %165, -8
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit, %162
  %178 = phi ptr [ %163, %162 ], [ %173, %.loopexit75.loopexit ]
  %179 = phi ptr [ %164, %162 ], [ %174, %.loopexit75.loopexit ]
  %180 = phi i32 [ %165, %162 ], [ %177, %.loopexit75.loopexit ]
  %181 = icmp ult i32 %166, 7
  br i1 %181, label %.loopexit73, label %.preheader72

.preheader72:                                     ; preds = %.loopexit75, %.preheader72
  %182 = phi ptr [ %208, %.preheader72 ], [ %178, %.loopexit75 ]
  %183 = phi ptr [ %209, %.preheader72 ], [ %179, %.loopexit75 ]
  %184 = phi i32 [ %207, %.preheader72 ], [ %180, %.loopexit75 ]
  %185 = load i8, ptr %183, align 1, !tbaa !36
  store i8 %185, ptr %182, align 1, !tbaa !36
  %186 = getelementptr inbounds nuw i8, ptr %182, i64 1
  %187 = getelementptr inbounds nuw i8, ptr %183, i64 1
  %188 = load i8, ptr %187, align 1, !tbaa !36
  store i8 %188, ptr %186, align 1, !tbaa !36
  %189 = getelementptr inbounds nuw i8, ptr %182, i64 2
  %190 = getelementptr inbounds nuw i8, ptr %183, i64 2
  %191 = load i8, ptr %190, align 1, !tbaa !36
  store i8 %191, ptr %189, align 1, !tbaa !36
  %192 = getelementptr inbounds nuw i8, ptr %182, i64 3
  %193 = getelementptr inbounds nuw i8, ptr %183, i64 3
  %194 = load i8, ptr %193, align 1, !tbaa !36
  store i8 %194, ptr %192, align 1, !tbaa !36
  %195 = getelementptr inbounds nuw i8, ptr %182, i64 4
  %196 = getelementptr inbounds nuw i8, ptr %183, i64 4
  %197 = load i8, ptr %196, align 1, !tbaa !36
  store i8 %197, ptr %195, align 1, !tbaa !36
  %198 = getelementptr inbounds nuw i8, ptr %182, i64 5
  %199 = getelementptr inbounds nuw i8, ptr %183, i64 5
  %200 = load i8, ptr %199, align 1, !tbaa !36
  store i8 %200, ptr %198, align 1, !tbaa !36
  %201 = getelementptr inbounds nuw i8, ptr %182, i64 6
  %202 = getelementptr inbounds nuw i8, ptr %183, i64 6
  %203 = load i8, ptr %202, align 1, !tbaa !36
  store i8 %203, ptr %201, align 1, !tbaa !36
  %204 = getelementptr inbounds nuw i8, ptr %182, i64 7
  %205 = getelementptr inbounds nuw i8, ptr %183, i64 7
  %206 = load i8, ptr %205, align 1, !tbaa !36
  store i8 %206, ptr %204, align 1, !tbaa !36
  %207 = add i32 %184, -8
  %208 = getelementptr inbounds nuw i8, ptr %182, i64 8
  %209 = getelementptr inbounds nuw i8, ptr %183, i64 8
  %210 = icmp eq i32 %207, 0
  br i1 %210, label %.loopexit73, label %.preheader72, !llvm.loop !98

.loopexit73:                                      ; preds = %.preheader72, %.loopexit75, %156, %137
  %211 = load i32, ptr %28, align 8, !tbaa !34
  br label %212

212:                                              ; preds = %.loopexit73, %111, %109
  %213 = phi i32 [ %211, %.loopexit73 ], [ %108, %111 ], [ 0, %109 ]
  %214 = load i32, ptr %30, align 8, !tbaa !27
  %215 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %214, i32 %213), !nosanitize !20
  %216 = extractvalue { i32, i1 } %215, 1, !nosanitize !20
  br i1 %216, label %217, label %218, !prof !21, !nosanitize !20

217:                                              ; preds = %212
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

218:                                              ; preds = %212
  %219 = extractvalue { i32, i1 } %215, 0, !nosanitize !20
  %220 = load ptr, ptr %35, align 8, !tbaa !29
  %221 = zext i32 %213 to i64
  %222 = getelementptr inbounds nuw i8, ptr %220, i64 %221
  store i32 0, ptr %36, align 4, !tbaa !17
  %223 = tail call ptr @__errno_location() #16
  store i32 0, ptr %223, align 4, !tbaa !4
  br label %224

224:                                              ; preds = %243, %218
  %225 = phi i32 [ 0, %218 ], [ %244, %243 ]
  %226 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %219, i32 %225), !nosanitize !20
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !20
  br i1 %227, label %228, label %229, !prof !21, !nosanitize !20

228:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

229:                                              ; preds = %224
  %230 = extractvalue { i32, i1 } %226, 0, !nosanitize !20
  %231 = tail call i32 @llvm.umin.i32(i32 %230, i32 1073741824)
  %232 = load i32, ptr %37, align 4, !tbaa !46
  %233 = zext i32 %225 to i64
  %234 = getelementptr inbounds nuw i8, ptr %222, i64 %233
  %235 = zext nneg i32 %231 to i64
  %236 = tail call i64 @read(i32 noundef %232, ptr noundef %234, i64 noundef %235) #13
  %237 = trunc i64 %236 to i32
  %238 = icmp slt i32 %237, 1
  br i1 %238, label %246, label %239

239:                                              ; preds = %229
  %240 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %237), !nosanitize !20
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !20
  br i1 %241, label %242, label %243, !prof !21, !nosanitize !20

242:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

243:                                              ; preds = %239
  %244 = extractvalue { i32, i1 } %240, 0, !nosanitize !20
  %245 = icmp ult i32 %244, %219
  br i1 %245, label %224, label %.loopexit71, !llvm.loop !47

246:                                              ; preds = %229
  %247 = icmp slt i32 %237, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %246
  %249 = load i32, ptr %223, align 4, !tbaa !4
  %250 = icmp eq i32 %249, 11
  br i1 %250, label %251, label %.loopexit81

251:                                              ; preds = %248
  store i32 1, ptr %36, align 4, !tbaa !17
  %252 = icmp eq i32 %225, 0
  br i1 %252, label %253, label %.loopexit71

253:                                              ; preds = %251
  %254 = load i32, ptr %223, align 4, !tbaa !4
  br label %.loopexit81

255:                                              ; preds = %246
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit71

.loopexit81:                                      ; preds = %248, %253
  %256 = phi i32 [ %254, %253 ], [ %249, %248 ]
  %257 = tail call ptr @strerror(i32 noundef %256) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %257) #13
  br label %.loopexit80

.loopexit71:                                      ; preds = %243, %255, %251
  %258 = phi i32 [ %225, %251 ], [ %225, %255 ], [ %244, %243 ]
  %259 = load i32, ptr %28, align 8, !tbaa !34
  %260 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %259, i32 %258), !nosanitize !20
  %261 = extractvalue { i32, i1 } %260, 1, !nosanitize !20
  br i1 %261, label %262, label %263, !prof !21, !nosanitize !20

262:                                              ; preds = %.loopexit71
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

263:                                              ; preds = %.loopexit71
  %264 = extractvalue { i32, i1 } %260, 0, !nosanitize !20
  store i32 %264, ptr %28, align 8, !tbaa !34
  %265 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %265, ptr %34, align 8, !tbaa !35
  br label %266

266:                                              ; preds = %263, %105
  %267 = phi i32 [ %264, %263 ], [ %108, %105 ]
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %298, label %269

269:                                              ; preds = %266
  %270 = load i32, ptr %36, align 4, !tbaa !17
  %271 = icmp ne i32 %270, 0
  %272 = icmp ult i32 %267, 4
  %273 = and i1 %272, %271
  br i1 %273, label %298, label %274

274:                                              ; preds = %269
  %275 = icmp ugt i32 %267, 3
  %276 = load ptr, ptr %34, align 8, !tbaa !35
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
  %293 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %441

294:                                              ; preds = %288, %284, %280, %277, %274
  %295 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %295, ptr %25, align 8, !tbaa !22
  %296 = zext i32 %267 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %295, ptr align 1 %276, i64 %296, i1 false)
  %297 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %297, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %443

298:                                              ; preds = %269, %266, %98
  %299 = load i32, ptr %29, align 8, !tbaa !26
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %.loopexit82, label %441

301:                                              ; preds = %68
  %302 = load ptr, ptr %32, align 8, !tbaa !30
  %303 = load i32, ptr %30, align 8, !tbaa !27
  %304 = shl i32 %303, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %305 = tail call ptr @__errno_location() #16
  store i32 0, ptr %305, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %306

306:                                              ; preds = %326, %301
  %307 = phi i32 [ %327, %326 ], [ 0, %301 ]
  %308 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %304, i32 %307), !nosanitize !20
  %309 = extractvalue { i32, i1 } %308, 1, !nosanitize !20
  br i1 %309, label %310, label %311, !prof !21, !nosanitize !20

310:                                              ; preds = %306
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

311:                                              ; preds = %306
  %312 = extractvalue { i32, i1 } %308, 0, !nosanitize !20
  %313 = tail call i32 @llvm.umin.i32(i32 %312, i32 1073741824)
  %314 = load i32, ptr %37, align 4, !tbaa !46
  %315 = zext i32 %307 to i64
  %316 = getelementptr inbounds nuw i8, ptr %302, i64 %315
  %317 = zext nneg i32 %313 to i64
  %318 = tail call i64 @read(i32 noundef %314, ptr noundef %316, i64 noundef %317) #13
  %319 = trunc i64 %318 to i32
  %320 = icmp slt i32 %319, 1
  br i1 %320, label %329, label %321

321:                                              ; preds = %311
  %322 = load i32, ptr %0, align 4, !tbaa !4
  %323 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %322, i32 %319), !nosanitize !20
  %324 = extractvalue { i32, i1 } %323, 1, !nosanitize !20
  br i1 %324, label %325, label %326, !prof !21, !nosanitize !20

325:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

326:                                              ; preds = %321
  %327 = extractvalue { i32, i1 } %323, 0, !nosanitize !20
  store i32 %327, ptr %0, align 4, !tbaa !4
  %328 = icmp ult i32 %327, %304
  br i1 %328, label %306, label %.loopexit79, !llvm.loop !47

329:                                              ; preds = %311
  %330 = icmp slt i32 %319, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %329
  %332 = load i32, ptr %305, align 4, !tbaa !4
  %333 = icmp eq i32 %332, 11
  br i1 %333, label %334, label %.loopexit84

334:                                              ; preds = %331
  store i32 1, ptr %36, align 4, !tbaa !17
  %335 = load i32, ptr %0, align 4, !tbaa !4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %.loopexit79

337:                                              ; preds = %334
  %338 = load i32, ptr %305, align 4, !tbaa !4
  br label %.loopexit84

339:                                              ; preds = %329
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit79

.loopexit84:                                      ; preds = %331, %337
  %340 = phi i32 [ %338, %337 ], [ %332, %331 ]
  %341 = tail call ptr @strerror(i32 noundef %340) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %341) #13
  br label %.loopexit80

.loopexit79:                                      ; preds = %326, %339, %334
  %342 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %342, ptr %25, align 8, !tbaa !22
  br label %.loopexit82

343:                                              ; preds = %68
  %344 = load i32, ptr %30, align 8, !tbaa !27
  %345 = shl i32 %344, 1
  store i32 %345, ptr %31, align 8, !tbaa !48
  %346 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %346, ptr %33, align 8, !tbaa !49
  br label %347

347:                                              ; preds = %424, %343
  %348 = phi i32 [ 0, %343 ], [ %409, %424 ]
  %349 = load i32, ptr %28, align 8, !tbaa !34
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %408

351:                                              ; preds = %347
  %352 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %352, label %.loopexit76 [
    i32 0, label %353
    i32 -5, label %353
  ]

353:                                              ; preds = %351, %351
  %354 = load i32, ptr %27, align 8, !tbaa !24
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %404

356:                                              ; preds = %353
  %357 = load i32, ptr %30, align 8, !tbaa !27
  %358 = load ptr, ptr %35, align 8, !tbaa !29
  store i32 0, ptr %36, align 4, !tbaa !17
  %359 = tail call ptr @__errno_location() #16
  store i32 0, ptr %359, align 4, !tbaa !4
  br label %360

360:                                              ; preds = %379, %356
  %361 = phi i32 [ 0, %356 ], [ %380, %379 ]
  %362 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %357, i32 %361), !nosanitize !20
  %363 = extractvalue { i32, i1 } %362, 1, !nosanitize !20
  br i1 %363, label %364, label %365, !prof !21, !nosanitize !20

364:                                              ; preds = %360
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

365:                                              ; preds = %360
  %366 = extractvalue { i32, i1 } %362, 0, !nosanitize !20
  %367 = tail call i32 @llvm.umin.i32(i32 %366, i32 1073741824)
  %368 = load i32, ptr %37, align 4, !tbaa !46
  %369 = zext i32 %361 to i64
  %370 = getelementptr inbounds nuw i8, ptr %358, i64 %369
  %371 = zext nneg i32 %367 to i64
  %372 = tail call i64 @read(i32 noundef %368, ptr noundef %370, i64 noundef %371) #13
  %373 = trunc i64 %372 to i32
  %374 = icmp slt i32 %373, 1
  br i1 %374, label %382, label %375

375:                                              ; preds = %365
  %376 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %361, i32 %373), !nosanitize !20
  %377 = extractvalue { i32, i1 } %376, 1, !nosanitize !20
  br i1 %377, label %378, label %379, !prof !21, !nosanitize !20

378:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

379:                                              ; preds = %375
  %380 = extractvalue { i32, i1 } %376, 0, !nosanitize !20
  %381 = icmp ult i32 %380, %357
  br i1 %381, label %360, label %.loopexit70, !llvm.loop !47

382:                                              ; preds = %365
  %383 = icmp slt i32 %373, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %382
  %385 = load i32, ptr %359, align 4, !tbaa !4
  %386 = icmp eq i32 %385, 11
  br i1 %386, label %387, label %.loopexit78

387:                                              ; preds = %384
  store i32 1, ptr %36, align 4, !tbaa !17
  %388 = icmp eq i32 %361, 0
  br i1 %388, label %389, label %.loopexit70

389:                                              ; preds = %387
  %390 = load i32, ptr %359, align 4, !tbaa !4
  br label %.loopexit78

391:                                              ; preds = %382
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit70

.loopexit78:                                      ; preds = %384, %389
  %392 = phi i32 [ %390, %389 ], [ %385, %384 ]
  %393 = tail call ptr @strerror(i32 noundef %392) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %393) #13
  %394 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit76

.loopexit70:                                      ; preds = %379, %391, %387
  %395 = phi i32 [ %361, %387 ], [ %361, %391 ], [ %380, %379 ]
  %396 = load i32, ptr %28, align 8, !tbaa !34
  %397 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %396, i32 %395), !nosanitize !20
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !20
  br i1 %398, label %399, label %400, !prof !21, !nosanitize !20

399:                                              ; preds = %.loopexit70
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

400:                                              ; preds = %.loopexit70
  %401 = extractvalue { i32, i1 } %397, 0, !nosanitize !20
  store i32 %401, ptr %28, align 8, !tbaa !34
  %402 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %402, ptr %34, align 8, !tbaa !35
  %403 = icmp eq i32 %401, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %400, %353
  %405 = load i32, ptr %36, align 4, !tbaa !17
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %.loopexit76

407:                                              ; preds = %404
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit76

408:                                              ; preds = %400, %347
  %409 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %410 = load i32, ptr %31, align 8, !tbaa !48
  %411 = icmp ult i32 %410, %345
  br i1 %411, label %412, label %413

412:                                              ; preds = %408
  store i32 0, ptr %38, align 4, !tbaa !33
  br label %413

413:                                              ; preds = %412, %408
  switch i32 %409, label %424 [
    i32 -2, label %414
    i32 2, label %414
    i32 -4, label %415
    i32 -3, label %416
  ]

414:                                              ; preds = %413, %413
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit76

415:                                              ; preds = %413
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit76

416:                                              ; preds = %413
  %417 = load i32, ptr %38, align 4, !tbaa !33
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %419, label %420

419:                                              ; preds = %416
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %.loopexit76

420:                                              ; preds = %416
  %421 = load ptr, ptr %39, align 8, !tbaa !50
  %422 = icmp eq ptr %421, null
  %423 = select i1 %422, ptr @.str.6, ptr %421
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %423) #13
  br label %.loopexit76

424:                                              ; preds = %413
  %425 = icmp ne i32 %410, 0
  %426 = icmp ne i32 %409, 1
  %427 = select i1 %425, i1 %426, i1 false
  br i1 %427, label %347, label %.loopexit76, !llvm.loop !51

.loopexit76:                                      ; preds = %424, %351, %420, %419, %415, %414, %407, %404, %.loopexit78
  %428 = phi i32 [ %394, %.loopexit78 ], [ %348, %404 ], [ %348, %407 ], [ %409, %414 ], [ -4, %415 ], [ 0, %419 ], [ -3, %420 ], [ %409, %424 ], [ %352, %351 ]
  %429 = load i32, ptr %31, align 8, !tbaa !48
  %430 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %345, i32 %429), !nosanitize !20
  %431 = extractvalue { i32, i1 } %430, 1, !nosanitize !20
  br i1 %431, label %432, label %433, !prof !21, !nosanitize !20

432:                                              ; preds = %.loopexit76
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

433:                                              ; preds = %.loopexit76
  %434 = extractvalue { i32, i1 } %430, 0, !nosanitize !20
  store i32 %434, ptr %0, align 8, !tbaa !19
  %435 = load ptr, ptr %33, align 8, !tbaa !49
  %436 = zext i32 %434 to i64
  %437 = sub nsw i64 0, %436
  %438 = getelementptr inbounds i8, ptr %435, i64 %437
  store ptr %438, ptr %25, align 8, !tbaa !22
  switch i32 %428, label %.loopexit80 [
    i32 1, label %439
    i32 0, label %441
  ]

439:                                              ; preds = %433
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %441

440:                                              ; preds = %68
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit80

441:                                              ; preds = %439, %433, %298, %292
  %442 = load i32, ptr %0, align 8, !tbaa !19
  br label %443

443:                                              ; preds = %441, %294
  %444 = phi i32 [ %442, %441 ], [ %297, %294 ]
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %.loopexit82

446:                                              ; preds = %443
  %447 = load i32, ptr %27, align 8, !tbaa !24
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %.backedge, label %449

449:                                              ; preds = %446
  %450 = load i32, ptr %28, align 8, !tbaa !34
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %.loopexit82, label %.backedge

.backedge:                                        ; preds = %449, %446
  br label %68, !llvm.loop !52

.loopexit82:                                      ; preds = %449, %443, %298, %.loopexit79
  %452 = load i64, ptr %21, align 8, !tbaa !18
  br label %453

453:                                              ; preds = %.loopexit82, %54
  %454 = phi i64 [ %452, %.loopexit82 ], [ %61, %54 ]
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %.loopexit83, label %43, !llvm.loop !53

.loopexit83:                                      ; preds = %453, %65, %20
  %456 = add nsw i32 %2, -1
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %.loopexit80, label %458

458:                                              ; preds = %.loopexit83
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %477 = load i32, ptr %0, align 8, !tbaa !19
  br label %478

478:                                              ; preds = %904, %458
  %479 = phi i32 [ %896, %904 ], [ %477, %458 ]
  %480 = phi i32 [ %905, %904 ], [ %456, %458 ]
  %481 = phi ptr [ %906, %904 ], [ %1, %458 ]
  %482 = icmp eq i32 %479, 0
  br i1 %482, label %.preheader64, label %870

.preheader64:                                     ; preds = %478, %.preheader64.backedge
  %483 = load i32, ptr %459, align 8, !tbaa !26
  switch i32 %483, label %854 [
    i32 0, label %484
    i32 1, label %715
    i32 2, label %757
  ]

484:                                              ; preds = %.preheader64
  %485 = load i32, ptr %460, align 8, !tbaa !27
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %506

487:                                              ; preds = %484
  %488 = load i32, ptr %473, align 4, !tbaa !28
  %489 = zext i32 %488 to i64
  %490 = tail call noalias ptr @malloc(i64 noundef %489) #15
  store ptr %490, ptr %467, align 8, !tbaa !29
  %491 = load i32, ptr %473, align 4, !tbaa !28
  %492 = shl i32 %491, 1
  %493 = zext i32 %492 to i64
  %494 = tail call noalias ptr @malloc(i64 noundef %493) #15
  store ptr %494, ptr %462, align 8, !tbaa !30
  %495 = icmp eq ptr %490, null
  %496 = icmp eq ptr %494, null
  %497 = or i1 %495, %496
  br i1 %497, label %498, label %499

498:                                              ; preds = %487
  tail call void @free(ptr noundef %494) #13
  tail call void @free(ptr noundef %490) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit65

499:                                              ; preds = %487
  %500 = load i32, ptr %473, align 4, !tbaa !28
  store i32 %500, ptr %460, align 8, !tbaa !27
  store i32 0, ptr %465, align 8, !tbaa !25
  store ptr null, ptr %464, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %474, i8 0, i64 24, i1 false)
  %501 = tail call i32 @inflateInit2_(ptr noundef nonnull %464, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %506, label %503

503:                                              ; preds = %499
  %504 = load ptr, ptr %462, align 8, !tbaa !30
  tail call void @free(ptr noundef %504) #13
  %505 = load ptr, ptr %467, align 8, !tbaa !29
  tail call void @free(ptr noundef %505) #13
  store i32 0, ptr %460, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit65

506:                                              ; preds = %499, %484
  %507 = load i32, ptr %475, align 8, !tbaa !32
  %508 = icmp eq i32 %507, -1
  br i1 %508, label %512, label %509

509:                                              ; preds = %506
  %510 = load i32, ptr %470, align 4, !tbaa !33
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %517

512:                                              ; preds = %509, %506
  %513 = tail call i32 @inflateReset(ptr noundef nonnull %464) #13
  store i32 2, ptr %459, align 8, !tbaa !26
  %514 = load i32, ptr %470, align 4, !tbaa !33
  %515 = icmp ne i32 %514, -1
  %516 = zext i1 %515 to i32
  store i32 %516, ptr %470, align 4, !tbaa !33
  store i32 0, ptr %475, align 8, !tbaa !32
  br label %712

517:                                              ; preds = %509
  %518 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %518, label %.loopexit65 [
    i32 0, label %519
    i32 -5, label %519
  ]

519:                                              ; preds = %517, %517
  %520 = load i32, ptr %466, align 8, !tbaa !24
  %521 = icmp eq i32 %520, 0
  %522 = load i32, ptr %465, align 8, !tbaa !34
  br i1 %521, label %523, label %680

523:                                              ; preds = %519
  %524 = icmp eq i32 %522, 0
  br i1 %524, label %626, label %525

525:                                              ; preds = %523
  %526 = load ptr, ptr %467, align 8, !tbaa !29
  %527 = load ptr, ptr %464, align 8, !tbaa !35
  %528 = icmp eq ptr %527, %526
  br i1 %528, label %626, label %529

529:                                              ; preds = %525
  %530 = ptrtoaddr ptr %527 to i64
  %531 = ptrtoaddr ptr %526 to i64
  %532 = zext i32 %522 to i64
  %533 = icmp ult i32 %522, 4
  %534 = sub i64 %531, %530
  %535 = icmp ult i64 %534, 32
  %536 = or i1 %533, %535
  br i1 %536, label %576, label %537

537:                                              ; preds = %529
  %538 = icmp ult i32 %522, 32
  br i1 %538, label %560, label %539

539:                                              ; preds = %537
  %540 = and i64 %532, 4294967264
  br label %541

541:                                              ; preds = %541, %539
  %542 = phi i64 [ 0, %539 ], [ %549, %541 ]
  %543 = getelementptr i8, ptr %526, i64 %542
  %544 = getelementptr i8, ptr %527, i64 %542
  %545 = getelementptr i8, ptr %544, i64 16
  %546 = load <16 x i8>, ptr %544, align 1, !tbaa !36
  %547 = load <16 x i8>, ptr %545, align 1, !tbaa !36
  %548 = getelementptr i8, ptr %543, i64 16
  store <16 x i8> %546, ptr %543, align 1, !tbaa !36
  store <16 x i8> %547, ptr %548, align 1, !tbaa !36
  %549 = add nuw nsw i64 %542, 32
  %550 = icmp eq i64 %549, %540
  br i1 %550, label %551, label %541, !llvm.loop !99

551:                                              ; preds = %541
  %552 = icmp eq i64 %540, %532
  br i1 %552, label %.loopexit58, label %553

553:                                              ; preds = %551
  %554 = trunc nuw i64 %540 to i32
  %555 = sub i32 %522, %554
  %556 = getelementptr i8, ptr %527, i64 %540
  %557 = getelementptr i8, ptr %526, i64 %540
  %558 = and i64 %532, 28
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %576, label %560, !prof !41

560:                                              ; preds = %553, %537
  %561 = phi i64 [ %540, %553 ], [ 0, %537 ]
  %562 = and i64 %532, 4294967292
  br label %563

563:                                              ; preds = %563, %560
  %564 = phi i64 [ %561, %560 ], [ %568, %563 ]
  %565 = getelementptr i8, ptr %526, i64 %564
  %566 = getelementptr i8, ptr %527, i64 %564
  %567 = load <4 x i8>, ptr %566, align 1, !tbaa !36
  store <4 x i8> %567, ptr %565, align 1, !tbaa !36
  %568 = add nuw i64 %564, 4
  %569 = icmp eq i64 %568, %562
  br i1 %569, label %570, label %563, !llvm.loop !100

570:                                              ; preds = %563
  %571 = getelementptr i8, ptr %526, i64 %562
  %572 = getelementptr i8, ptr %527, i64 %562
  %573 = trunc nuw i64 %562 to i32
  %574 = sub i32 %522, %573
  %575 = icmp eq i64 %562, %532
  br i1 %575, label %.loopexit58, label %576

576:                                              ; preds = %570, %553, %529
  %577 = phi ptr [ %526, %529 ], [ %557, %553 ], [ %571, %570 ]
  %578 = phi ptr [ %527, %529 ], [ %556, %553 ], [ %572, %570 ]
  %579 = phi i32 [ %522, %529 ], [ %555, %553 ], [ %574, %570 ]
  %580 = add i32 %579, -1
  %581 = and i32 %579, 7
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %.loopexit60, label %.preheader59

.preheader59:                                     ; preds = %576, %.preheader59
  %583 = phi ptr [ %587, %.preheader59 ], [ %577, %576 ]
  %584 = phi ptr [ %588, %.preheader59 ], [ %578, %576 ]
  %585 = phi i32 [ %589, %.preheader59 ], [ 0, %576 ]
  %586 = load i8, ptr %584, align 1, !tbaa !36
  store i8 %586, ptr %583, align 1, !tbaa !36
  %587 = getelementptr inbounds nuw i8, ptr %583, i64 1
  %588 = getelementptr inbounds nuw i8, ptr %584, i64 1
  %589 = add nuw nsw i32 %585, 1
  %590 = icmp eq i32 %589, %581
  br i1 %590, label %.loopexit60.loopexit, label %.preheader59, !llvm.loop !101

.loopexit60.loopexit:                             ; preds = %.preheader59
  %591 = and i32 %579, -8
  br label %.loopexit60

.loopexit60:                                      ; preds = %.loopexit60.loopexit, %576
  %592 = phi ptr [ %577, %576 ], [ %587, %.loopexit60.loopexit ]
  %593 = phi ptr [ %578, %576 ], [ %588, %.loopexit60.loopexit ]
  %594 = phi i32 [ %579, %576 ], [ %591, %.loopexit60.loopexit ]
  %595 = icmp ult i32 %580, 7
  br i1 %595, label %.loopexit58, label %.preheader

.preheader:                                       ; preds = %.loopexit60, %.preheader
  %596 = phi ptr [ %622, %.preheader ], [ %592, %.loopexit60 ]
  %597 = phi ptr [ %623, %.preheader ], [ %593, %.loopexit60 ]
  %598 = phi i32 [ %621, %.preheader ], [ %594, %.loopexit60 ]
  %599 = load i8, ptr %597, align 1, !tbaa !36
  store i8 %599, ptr %596, align 1, !tbaa !36
  %600 = getelementptr inbounds nuw i8, ptr %596, i64 1
  %601 = getelementptr inbounds nuw i8, ptr %597, i64 1
  %602 = load i8, ptr %601, align 1, !tbaa !36
  store i8 %602, ptr %600, align 1, !tbaa !36
  %603 = getelementptr inbounds nuw i8, ptr %596, i64 2
  %604 = getelementptr inbounds nuw i8, ptr %597, i64 2
  %605 = load i8, ptr %604, align 1, !tbaa !36
  store i8 %605, ptr %603, align 1, !tbaa !36
  %606 = getelementptr inbounds nuw i8, ptr %596, i64 3
  %607 = getelementptr inbounds nuw i8, ptr %597, i64 3
  %608 = load i8, ptr %607, align 1, !tbaa !36
  store i8 %608, ptr %606, align 1, !tbaa !36
  %609 = getelementptr inbounds nuw i8, ptr %596, i64 4
  %610 = getelementptr inbounds nuw i8, ptr %597, i64 4
  %611 = load i8, ptr %610, align 1, !tbaa !36
  store i8 %611, ptr %609, align 1, !tbaa !36
  %612 = getelementptr inbounds nuw i8, ptr %596, i64 5
  %613 = getelementptr inbounds nuw i8, ptr %597, i64 5
  %614 = load i8, ptr %613, align 1, !tbaa !36
  store i8 %614, ptr %612, align 1, !tbaa !36
  %615 = getelementptr inbounds nuw i8, ptr %596, i64 6
  %616 = getelementptr inbounds nuw i8, ptr %597, i64 6
  %617 = load i8, ptr %616, align 1, !tbaa !36
  store i8 %617, ptr %615, align 1, !tbaa !36
  %618 = getelementptr inbounds nuw i8, ptr %596, i64 7
  %619 = getelementptr inbounds nuw i8, ptr %597, i64 7
  %620 = load i8, ptr %619, align 1, !tbaa !36
  store i8 %620, ptr %618, align 1, !tbaa !36
  %621 = add i32 %598, -8
  %622 = getelementptr inbounds nuw i8, ptr %596, i64 8
  %623 = getelementptr inbounds nuw i8, ptr %597, i64 8
  %624 = icmp eq i32 %621, 0
  br i1 %624, label %.loopexit58, label %.preheader, !llvm.loop !102

.loopexit58:                                      ; preds = %.preheader, %.loopexit60, %570, %551
  %625 = load i32, ptr %465, align 8, !tbaa !34
  br label %626

626:                                              ; preds = %.loopexit58, %525, %523
  %627 = phi i32 [ %625, %.loopexit58 ], [ %522, %525 ], [ 0, %523 ]
  %628 = load i32, ptr %460, align 8, !tbaa !27
  %629 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %628, i32 %627), !nosanitize !20
  %630 = extractvalue { i32, i1 } %629, 1, !nosanitize !20
  br i1 %630, label %631, label %632, !prof !21, !nosanitize !20

631:                                              ; preds = %626
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

632:                                              ; preds = %626
  %633 = extractvalue { i32, i1 } %629, 0, !nosanitize !20
  %634 = load ptr, ptr %467, align 8, !tbaa !29
  %635 = zext i32 %627 to i64
  %636 = getelementptr inbounds nuw i8, ptr %634, i64 %635
  store i32 0, ptr %468, align 4, !tbaa !17
  %637 = tail call ptr @__errno_location() #16
  store i32 0, ptr %637, align 4, !tbaa !4
  br label %638

638:                                              ; preds = %657, %632
  %639 = phi i32 [ 0, %632 ], [ %658, %657 ]
  %640 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %633, i32 %639), !nosanitize !20
  %641 = extractvalue { i32, i1 } %640, 1, !nosanitize !20
  br i1 %641, label %642, label %643, !prof !21, !nosanitize !20

642:                                              ; preds = %638
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

643:                                              ; preds = %638
  %644 = extractvalue { i32, i1 } %640, 0, !nosanitize !20
  %645 = tail call i32 @llvm.umin.i32(i32 %644, i32 1073741824)
  %646 = load i32, ptr %469, align 4, !tbaa !46
  %647 = zext i32 %639 to i64
  %648 = getelementptr inbounds nuw i8, ptr %636, i64 %647
  %649 = zext nneg i32 %645 to i64
  %650 = tail call i64 @read(i32 noundef %646, ptr noundef %648, i64 noundef %649) #13
  %651 = trunc i64 %650 to i32
  %652 = icmp slt i32 %651, 1
  br i1 %652, label %660, label %653

653:                                              ; preds = %643
  %654 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %639, i32 %651), !nosanitize !20
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !20
  br i1 %655, label %656, label %657, !prof !21, !nosanitize !20

656:                                              ; preds = %653
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

657:                                              ; preds = %653
  %658 = extractvalue { i32, i1 } %654, 0, !nosanitize !20
  %659 = icmp ult i32 %658, %633
  br i1 %659, label %638, label %.loopexit57, !llvm.loop !47

660:                                              ; preds = %643
  %661 = icmp slt i32 %651, 0
  br i1 %661, label %662, label %669

662:                                              ; preds = %660
  %663 = load i32, ptr %637, align 4, !tbaa !4
  %664 = icmp eq i32 %663, 11
  br i1 %664, label %665, label %.loopexit66

665:                                              ; preds = %662
  store i32 1, ptr %468, align 4, !tbaa !17
  %666 = icmp eq i32 %639, 0
  br i1 %666, label %667, label %.loopexit57

667:                                              ; preds = %665
  %668 = load i32, ptr %637, align 4, !tbaa !4
  br label %.loopexit66

669:                                              ; preds = %660
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit57

.loopexit66:                                      ; preds = %662, %667
  %670 = phi i32 [ %668, %667 ], [ %663, %662 ]
  %671 = tail call ptr @strerror(i32 noundef %670) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %671) #13
  br label %.loopexit65

.loopexit57:                                      ; preds = %657, %669, %665
  %672 = phi i32 [ %639, %665 ], [ %639, %669 ], [ %658, %657 ]
  %673 = load i32, ptr %465, align 8, !tbaa !34
  %674 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %673, i32 %672), !nosanitize !20
  %675 = extractvalue { i32, i1 } %674, 1, !nosanitize !20
  br i1 %675, label %676, label %677, !prof !21, !nosanitize !20

676:                                              ; preds = %.loopexit57
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

677:                                              ; preds = %.loopexit57
  %678 = extractvalue { i32, i1 } %674, 0, !nosanitize !20
  store i32 %678, ptr %465, align 8, !tbaa !34
  %679 = load ptr, ptr %467, align 8, !tbaa !29
  store ptr %679, ptr %464, align 8, !tbaa !35
  br label %680

680:                                              ; preds = %677, %519
  %681 = phi i32 [ %678, %677 ], [ %522, %519 ]
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %712, label %683

683:                                              ; preds = %680
  %684 = load i32, ptr %468, align 4, !tbaa !17
  %685 = icmp ne i32 %684, 0
  %686 = icmp ult i32 %681, 4
  %687 = and i1 %686, %685
  br i1 %687, label %712, label %688

688:                                              ; preds = %683
  %689 = icmp ugt i32 %681, 3
  %690 = load ptr, ptr %464, align 8, !tbaa !35
  br i1 %689, label %691, label %708

691:                                              ; preds = %688
  %692 = load i8, ptr %690, align 1, !tbaa !36
  %693 = icmp eq i8 %692, 31
  br i1 %693, label %694, label %708

694:                                              ; preds = %691
  %695 = getelementptr inbounds nuw i8, ptr %690, i64 1
  %696 = load i8, ptr %695, align 1, !tbaa !36
  %697 = icmp eq i8 %696, -117
  br i1 %697, label %698, label %708

698:                                              ; preds = %694
  %699 = getelementptr inbounds nuw i8, ptr %690, i64 2
  %700 = load i8, ptr %699, align 1, !tbaa !36
  %701 = icmp eq i8 %700, 8
  br i1 %701, label %702, label %708

702:                                              ; preds = %698
  %703 = getelementptr inbounds nuw i8, ptr %690, i64 3
  %704 = load i8, ptr %703, align 1, !tbaa !36
  %705 = icmp ult i8 %704, 32
  br i1 %705, label %706, label %708

706:                                              ; preds = %702
  %707 = tail call i32 @inflateReset(ptr noundef nonnull %464) #13
  store i32 2, ptr %459, align 8, !tbaa !26
  store i32 1, ptr %470, align 4, !tbaa !33
  store i32 0, ptr %475, align 8, !tbaa !32
  br label %855

708:                                              ; preds = %702, %698, %694, %691, %688
  %709 = load ptr, ptr %462, align 8, !tbaa !30
  store ptr %709, ptr %472, align 8, !tbaa !22
  %710 = zext i32 %681 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %709, ptr align 1 %690, i64 %710, i1 false)
  %711 = load i32, ptr %465, align 8, !tbaa !34
  store i32 %711, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %465, align 8, !tbaa !34
  store i32 1, ptr %459, align 8, !tbaa !26
  br label %857

712:                                              ; preds = %683, %680, %512
  %713 = load i32, ptr %459, align 8, !tbaa !26
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %.loopexit67, label %855

715:                                              ; preds = %.preheader64
  %716 = load ptr, ptr %462, align 8, !tbaa !30
  %717 = load i32, ptr %460, align 8, !tbaa !27
  %718 = shl i32 %717, 1
  store i32 0, ptr %468, align 4, !tbaa !17
  %719 = tail call ptr @__errno_location() #16
  store i32 0, ptr %719, align 4, !tbaa !4
  store i32 0, ptr %0, align 8, !tbaa !4
  br label %720

720:                                              ; preds = %740, %715
  %721 = phi i32 [ %741, %740 ], [ 0, %715 ]
  %722 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %718, i32 %721), !nosanitize !20
  %723 = extractvalue { i32, i1 } %722, 1, !nosanitize !20
  br i1 %723, label %724, label %725, !prof !21, !nosanitize !20

724:                                              ; preds = %720
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

725:                                              ; preds = %720
  %726 = extractvalue { i32, i1 } %722, 0, !nosanitize !20
  %727 = tail call i32 @llvm.umin.i32(i32 %726, i32 1073741824)
  %728 = load i32, ptr %469, align 4, !tbaa !46
  %729 = zext i32 %721 to i64
  %730 = getelementptr inbounds nuw i8, ptr %716, i64 %729
  %731 = zext nneg i32 %727 to i64
  %732 = tail call i64 @read(i32 noundef %728, ptr noundef %730, i64 noundef %731) #13
  %733 = trunc i64 %732 to i32
  %734 = icmp slt i32 %733, 1
  br i1 %734, label %743, label %735

735:                                              ; preds = %725
  %736 = load i32, ptr %0, align 4, !tbaa !4
  %737 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %736, i32 %733), !nosanitize !20
  %738 = extractvalue { i32, i1 } %737, 1, !nosanitize !20
  br i1 %738, label %739, label %740, !prof !21, !nosanitize !20

739:                                              ; preds = %735
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

740:                                              ; preds = %735
  %741 = extractvalue { i32, i1 } %737, 0, !nosanitize !20
  store i32 %741, ptr %0, align 4, !tbaa !4
  %742 = icmp ult i32 %741, %718
  br i1 %742, label %720, label %.loopexit63, !llvm.loop !47

743:                                              ; preds = %725
  %744 = icmp slt i32 %733, 0
  br i1 %744, label %745, label %753

745:                                              ; preds = %743
  %746 = load i32, ptr %719, align 4, !tbaa !4
  %747 = icmp eq i32 %746, 11
  br i1 %747, label %748, label %.loopexit68

748:                                              ; preds = %745
  store i32 1, ptr %468, align 4, !tbaa !17
  %749 = load i32, ptr %0, align 4, !tbaa !4
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %751, label %.loopexit63

751:                                              ; preds = %748
  %752 = load i32, ptr %719, align 4, !tbaa !4
  br label %.loopexit68

753:                                              ; preds = %743
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit63

.loopexit68:                                      ; preds = %745, %751
  %754 = phi i32 [ %752, %751 ], [ %746, %745 ]
  %755 = tail call ptr @strerror(i32 noundef %754) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %755) #13
  br label %.loopexit65

.loopexit63:                                      ; preds = %740, %753, %748
  %756 = load ptr, ptr %462, align 8, !tbaa !30
  store ptr %756, ptr %472, align 8, !tbaa !22
  br label %.loopexit67

757:                                              ; preds = %.preheader64
  %758 = load i32, ptr %460, align 8, !tbaa !27
  %759 = shl i32 %758, 1
  store i32 %759, ptr %461, align 8, !tbaa !48
  %760 = load ptr, ptr %462, align 8, !tbaa !30
  store ptr %760, ptr %463, align 8, !tbaa !49
  br label %761

761:                                              ; preds = %838, %757
  %762 = phi i32 [ 0, %757 ], [ %823, %838 ]
  %763 = load i32, ptr %465, align 8, !tbaa !34
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %822

765:                                              ; preds = %761
  %766 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %766, label %.loopexit61 [
    i32 0, label %767
    i32 -5, label %767
  ]

767:                                              ; preds = %765, %765
  %768 = load i32, ptr %466, align 8, !tbaa !24
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %770, label %818

770:                                              ; preds = %767
  %771 = load i32, ptr %460, align 8, !tbaa !27
  %772 = load ptr, ptr %467, align 8, !tbaa !29
  store i32 0, ptr %468, align 4, !tbaa !17
  %773 = tail call ptr @__errno_location() #16
  store i32 0, ptr %773, align 4, !tbaa !4
  br label %774

774:                                              ; preds = %793, %770
  %775 = phi i32 [ 0, %770 ], [ %794, %793 ]
  %776 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %771, i32 %775), !nosanitize !20
  %777 = extractvalue { i32, i1 } %776, 1, !nosanitize !20
  br i1 %777, label %778, label %779, !prof !21, !nosanitize !20

778:                                              ; preds = %774
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

779:                                              ; preds = %774
  %780 = extractvalue { i32, i1 } %776, 0, !nosanitize !20
  %781 = tail call i32 @llvm.umin.i32(i32 %780, i32 1073741824)
  %782 = load i32, ptr %469, align 4, !tbaa !46
  %783 = zext i32 %775 to i64
  %784 = getelementptr inbounds nuw i8, ptr %772, i64 %783
  %785 = zext nneg i32 %781 to i64
  %786 = tail call i64 @read(i32 noundef %782, ptr noundef %784, i64 noundef %785) #13
  %787 = trunc i64 %786 to i32
  %788 = icmp slt i32 %787, 1
  br i1 %788, label %796, label %789

789:                                              ; preds = %779
  %790 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %775, i32 %787), !nosanitize !20
  %791 = extractvalue { i32, i1 } %790, 1, !nosanitize !20
  br i1 %791, label %792, label %793, !prof !21, !nosanitize !20

792:                                              ; preds = %789
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

793:                                              ; preds = %789
  %794 = extractvalue { i32, i1 } %790, 0, !nosanitize !20
  %795 = icmp ult i32 %794, %771
  br i1 %795, label %774, label %.loopexit, !llvm.loop !47

796:                                              ; preds = %779
  %797 = icmp slt i32 %787, 0
  br i1 %797, label %798, label %805

798:                                              ; preds = %796
  %799 = load i32, ptr %773, align 4, !tbaa !4
  %800 = icmp eq i32 %799, 11
  br i1 %800, label %801, label %.loopexit62

801:                                              ; preds = %798
  store i32 1, ptr %468, align 4, !tbaa !17
  %802 = icmp eq i32 %775, 0
  br i1 %802, label %803, label %.loopexit

803:                                              ; preds = %801
  %804 = load i32, ptr %773, align 4, !tbaa !4
  br label %.loopexit62

805:                                              ; preds = %796
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit

.loopexit62:                                      ; preds = %798, %803
  %806 = phi i32 [ %804, %803 ], [ %799, %798 ]
  %807 = tail call ptr @strerror(i32 noundef %806) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %807) #13
  %808 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit61

.loopexit:                                        ; preds = %793, %805, %801
  %809 = phi i32 [ %775, %801 ], [ %775, %805 ], [ %794, %793 ]
  %810 = load i32, ptr %465, align 8, !tbaa !34
  %811 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %810, i32 %809), !nosanitize !20
  %812 = extractvalue { i32, i1 } %811, 1, !nosanitize !20
  br i1 %812, label %813, label %814, !prof !21, !nosanitize !20

813:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

814:                                              ; preds = %.loopexit
  %815 = extractvalue { i32, i1 } %811, 0, !nosanitize !20
  store i32 %815, ptr %465, align 8, !tbaa !34
  %816 = load ptr, ptr %467, align 8, !tbaa !29
  store ptr %816, ptr %464, align 8, !tbaa !35
  %817 = icmp eq i32 %815, 0
  br i1 %817, label %818, label %822

818:                                              ; preds = %814, %767
  %819 = load i32, ptr %468, align 4, !tbaa !17
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %.loopexit61

821:                                              ; preds = %818
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit61

822:                                              ; preds = %814, %761
  %823 = tail call i32 @inflate(ptr noundef nonnull %464, i32 noundef 0) #13
  %824 = load i32, ptr %461, align 8, !tbaa !48
  %825 = icmp ult i32 %824, %759
  br i1 %825, label %826, label %827

826:                                              ; preds = %822
  store i32 0, ptr %470, align 4, !tbaa !33
  br label %827

827:                                              ; preds = %826, %822
  switch i32 %823, label %838 [
    i32 -2, label %828
    i32 2, label %828
    i32 -4, label %829
    i32 -3, label %830
  ]

828:                                              ; preds = %827, %827
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit61

829:                                              ; preds = %827
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit61

830:                                              ; preds = %827
  %831 = load i32, ptr %470, align 4, !tbaa !33
  %832 = icmp eq i32 %831, 1
  br i1 %832, label %833, label %834

833:                                              ; preds = %830
  store i32 0, ptr %465, align 8, !tbaa !34
  store i32 1, ptr %466, align 8, !tbaa !24
  store i32 0, ptr %459, align 8, !tbaa !26
  br label %.loopexit61

834:                                              ; preds = %830
  %835 = load ptr, ptr %471, align 8, !tbaa !50
  %836 = icmp eq ptr %835, null
  %837 = select i1 %836, ptr @.str.6, ptr %835
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %837) #13
  br label %.loopexit61

838:                                              ; preds = %827
  %839 = icmp ne i32 %824, 0
  %840 = icmp ne i32 %823, 1
  %841 = select i1 %839, i1 %840, i1 false
  br i1 %841, label %761, label %.loopexit61, !llvm.loop !51

.loopexit61:                                      ; preds = %838, %765, %834, %833, %829, %828, %821, %818, %.loopexit62
  %842 = phi i32 [ %808, %.loopexit62 ], [ %762, %818 ], [ %762, %821 ], [ %823, %828 ], [ -4, %829 ], [ 0, %833 ], [ -3, %834 ], [ %766, %765 ], [ %823, %838 ]
  %843 = load i32, ptr %461, align 8, !tbaa !48
  %844 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %759, i32 %843), !nosanitize !20
  %845 = extractvalue { i32, i1 } %844, 1, !nosanitize !20
  br i1 %845, label %846, label %847, !prof !21, !nosanitize !20

846:                                              ; preds = %.loopexit61
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

847:                                              ; preds = %.loopexit61
  %848 = extractvalue { i32, i1 } %844, 0, !nosanitize !20
  store i32 %848, ptr %0, align 8, !tbaa !19
  %849 = load ptr, ptr %463, align 8, !tbaa !49
  %850 = zext i32 %848 to i64
  %851 = sub nsw i64 0, %850
  %852 = getelementptr inbounds i8, ptr %849, i64 %851
  store ptr %852, ptr %472, align 8, !tbaa !22
  switch i32 %842, label %.loopexit65 [
    i32 1, label %853
    i32 0, label %855
  ]

853:                                              ; preds = %847
  store i32 0, ptr %470, align 4, !tbaa !33
  store i32 0, ptr %459, align 8, !tbaa !26
  br label %855

854:                                              ; preds = %.preheader64
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit65

855:                                              ; preds = %853, %847, %712, %706
  %856 = load i32, ptr %0, align 8, !tbaa !19
  br label %857

857:                                              ; preds = %855, %708
  %858 = phi i32 [ %856, %855 ], [ %711, %708 ]
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %.loopexit67

860:                                              ; preds = %857
  %861 = load i32, ptr %466, align 8, !tbaa !24
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %.preheader64.backedge, label %863

863:                                              ; preds = %860
  %864 = load i32, ptr %465, align 8, !tbaa !34
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %.loopexit67, label %.preheader64.backedge

.preheader64.backedge:                            ; preds = %863, %860
  br label %.preheader64, !llvm.loop !52

.loopexit67:                                      ; preds = %863, %857, %712, %.loopexit63
  %866 = load i32, ptr %0, align 8, !tbaa !19
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %868, label %870

868:                                              ; preds = %.loopexit67
  %869 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %869, align 4, !tbaa !61
  br label %.loopexit65

870:                                              ; preds = %.loopexit67, %478
  %871 = phi i32 [ %866, %.loopexit67 ], [ %479, %478 ]
  %872 = tail call i32 @llvm.umin.i32(i32 %871, i32 %480)
  %873 = load ptr, ptr %472, align 8, !tbaa !22
  %874 = zext i32 %872 to i64
  %875 = tail call ptr @memchr(ptr noundef %873, i32 noundef 10, i64 noundef %874) #17
  %876 = icmp eq ptr %875, null
  br i1 %876, label %888, label %877

877:                                              ; preds = %870
  %878 = ptrtoint ptr %875 to i64
  %879 = ptrtoint ptr %873 to i64
  %880 = sub i64 %878, %879
  %881 = trunc i64 %880 to i32
  %882 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %881, i32 1), !nosanitize !20
  %883 = extractvalue { i32, i1 } %882, 1, !nosanitize !20
  br i1 %883, label %884, label %885, !prof !21, !nosanitize !20

884:                                              ; preds = %877
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

885:                                              ; preds = %877
  %886 = extractvalue { i32, i1 } %882, 0, !nosanitize !20
  %887 = zext i32 %886 to i64
  br label %888

888:                                              ; preds = %885, %870
  %889 = phi i64 [ %887, %885 ], [ %874, %870 ]
  %890 = phi i32 [ %886, %885 ], [ %872, %870 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %481, ptr align 1 %873, i64 %889, i1 false)
  %891 = load i32, ptr %0, align 8, !tbaa !19
  %892 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %891, i32 %890), !nosanitize !20
  %893 = extractvalue { i32, i1 } %892, 1, !nosanitize !20
  br i1 %893, label %894, label %895, !prof !21, !nosanitize !20

894:                                              ; preds = %888
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

895:                                              ; preds = %888
  %896 = extractvalue { i32, i1 } %892, 0, !nosanitize !20
  store i32 %896, ptr %0, align 8, !tbaa !19
  %897 = load ptr, ptr %472, align 8, !tbaa !22
  %898 = getelementptr inbounds nuw i8, ptr %897, i64 %889
  store ptr %898, ptr %472, align 8, !tbaa !22
  %899 = load i64, ptr %476, align 8, !tbaa !23
  %900 = add nsw i64 %899, %889
  store i64 %900, ptr %476, align 8, !tbaa !23
  %901 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %480, i32 %890), !nosanitize !20
  %902 = extractvalue { i32, i1 } %901, 1, !nosanitize !20
  br i1 %902, label %903, label %904, !prof !21, !nosanitize !20

903:                                              ; preds = %895
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

904:                                              ; preds = %895
  %905 = extractvalue { i32, i1 } %901, 0, !nosanitize !20
  %906 = getelementptr inbounds nuw i8, ptr %481, i64 %889
  %907 = icmp ne i32 %905, 0
  %908 = and i1 %876, %907
  br i1 %908, label %478, label %.loopexit65, !llvm.loop !103

.loopexit65:                                      ; preds = %904, %847, %517, %868, %854, %.loopexit68, %.loopexit66, %503, %498
  %909 = phi ptr [ %481, %847 ], [ %481, %868 ], [ %481, %854 ], [ %481, %.loopexit68 ], [ %481, %.loopexit66 ], [ %481, %498 ], [ %481, %503 ], [ %481, %517 ], [ %906, %904 ]
  %910 = icmp eq ptr %909, %1
  br i1 %910, label %.loopexit80, label %911

911:                                              ; preds = %.loopexit65
  store i8 0, ptr %909, align 1, !tbaa !36
  br label %.loopexit80

.loopexit80:                                      ; preds = %433, %103, %911, %.loopexit65, %.loopexit83, %440, %.loopexit84, %.loopexit81, %89, %84, %16, %9, %3
  %912 = phi ptr [ null, %9 ], [ null, %3 ], [ null, %16 ], [ null, %84 ], [ %1, %911 ], [ null, %.loopexit65 ], [ null, %89 ], [ null, %.loopexit83 ], [ null, %440 ], [ null, %.loopexit84 ], [ null, %.loopexit81 ], [ null, %103 ], [ null, %433 ]
  ret ptr %912
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %268, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %263

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %263

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %263

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
  br label %263

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
  br label %263

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
  br label %263

57:                                               ; preds = %47
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %59 = load i32, ptr %58, align 8, !tbaa !16
  switch i32 %59, label %263 [
    i32 0, label %60
    i32 -5, label %60
  ]

60:                                               ; preds = %57, %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %62 = load i32, ptr %61, align 8, !tbaa !24
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %65 = load i32, ptr %64, align 8, !tbaa !34
  br i1 %63, label %66, label %228

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
  %127 = phi ptr [ %131, %.preheader13 ], [ %121, %120 ]
  %128 = phi ptr [ %132, %.preheader13 ], [ %122, %120 ]
  %129 = phi i32 [ %133, %.preheader13 ], [ 0, %120 ]
  %130 = load i8, ptr %128, align 1, !tbaa !36
  store i8 %130, ptr %127, align 1, !tbaa !36
  %131 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %132 = getelementptr inbounds nuw i8, ptr %128, i64 1
  %133 = add nuw nsw i32 %129, 1
  %134 = icmp eq i32 %133, %125
  br i1 %134, label %.loopexit14.loopexit, label %.preheader13, !llvm.loop !106

.loopexit14.loopexit:                             ; preds = %.preheader13
  %135 = and i32 %123, -8
  br label %.loopexit14

.loopexit14:                                      ; preds = %.loopexit14.loopexit, %120
  %136 = phi ptr [ %121, %120 ], [ %131, %.loopexit14.loopexit ]
  %137 = phi ptr [ %122, %120 ], [ %132, %.loopexit14.loopexit ]
  %138 = phi i32 [ %123, %120 ], [ %135, %.loopexit14.loopexit ]
  %139 = icmp ult i32 %124, 7
  br i1 %139, label %.loopexit12, label %.preheader

.preheader:                                       ; preds = %.loopexit14, %.preheader
  %140 = phi ptr [ %166, %.preheader ], [ %136, %.loopexit14 ]
  %141 = phi ptr [ %167, %.preheader ], [ %137, %.loopexit14 ]
  %142 = phi i32 [ %165, %.preheader ], [ %138, %.loopexit14 ]
  %143 = load i8, ptr %141, align 1, !tbaa !36
  store i8 %143, ptr %140, align 1, !tbaa !36
  %144 = getelementptr inbounds nuw i8, ptr %140, i64 1
  %145 = getelementptr inbounds nuw i8, ptr %141, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !36
  store i8 %146, ptr %144, align 1, !tbaa !36
  %147 = getelementptr inbounds nuw i8, ptr %140, i64 2
  %148 = getelementptr inbounds nuw i8, ptr %141, i64 2
  %149 = load i8, ptr %148, align 1, !tbaa !36
  store i8 %149, ptr %147, align 1, !tbaa !36
  %150 = getelementptr inbounds nuw i8, ptr %140, i64 3
  %151 = getelementptr inbounds nuw i8, ptr %141, i64 3
  %152 = load i8, ptr %151, align 1, !tbaa !36
  store i8 %152, ptr %150, align 1, !tbaa !36
  %153 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %154 = getelementptr inbounds nuw i8, ptr %141, i64 4
  %155 = load i8, ptr %154, align 1, !tbaa !36
  store i8 %155, ptr %153, align 1, !tbaa !36
  %156 = getelementptr inbounds nuw i8, ptr %140, i64 5
  %157 = getelementptr inbounds nuw i8, ptr %141, i64 5
  %158 = load i8, ptr %157, align 1, !tbaa !36
  store i8 %158, ptr %156, align 1, !tbaa !36
  %159 = getelementptr inbounds nuw i8, ptr %140, i64 6
  %160 = getelementptr inbounds nuw i8, ptr %141, i64 6
  %161 = load i8, ptr %160, align 1, !tbaa !36
  store i8 %161, ptr %159, align 1, !tbaa !36
  %162 = getelementptr inbounds nuw i8, ptr %140, i64 7
  %163 = getelementptr inbounds nuw i8, ptr %141, i64 7
  %164 = load i8, ptr %163, align 1, !tbaa !36
  store i8 %164, ptr %162, align 1, !tbaa !36
  %165 = add i32 %142, -8
  %166 = getelementptr inbounds nuw i8, ptr %140, i64 8
  %167 = getelementptr inbounds nuw i8, ptr %141, i64 8
  %168 = icmp eq i32 %165, 0
  br i1 %168, label %.loopexit12, label %.preheader, !llvm.loop !107

.loopexit12:                                      ; preds = %.preheader, %.loopexit14, %114, %95
  %169 = load i32, ptr %64, align 8, !tbaa !34
  br label %170

170:                                              ; preds = %.loopexit12, %68, %66
  %171 = phi i32 [ %169, %.loopexit12 ], [ %65, %68 ], [ 0, %66 ]
  %172 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %173 = load i32, ptr %16, align 8, !tbaa !27
  %174 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %173, i32 %171), !nosanitize !20
  %175 = extractvalue { i32, i1 } %174, 1, !nosanitize !20
  br i1 %175, label %176, label %177, !prof !21, !nosanitize !20

176:                                              ; preds = %170
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

177:                                              ; preds = %170
  %178 = extractvalue { i32, i1 } %174, 0, !nosanitize !20
  %179 = load ptr, ptr %172, align 8, !tbaa !29
  %180 = zext i32 %171 to i64
  %181 = getelementptr inbounds nuw i8, ptr %179, i64 %180
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %182, align 4, !tbaa !17
  %183 = tail call ptr @__errno_location() #16
  store i32 0, ptr %183, align 4, !tbaa !4
  %184 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %185

185:                                              ; preds = %204, %177
  %186 = phi i32 [ 0, %177 ], [ %205, %204 ]
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %178, i32 %186), !nosanitize !20
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !20
  br i1 %188, label %189, label %190, !prof !21, !nosanitize !20

189:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

190:                                              ; preds = %185
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !20
  %192 = tail call i32 @llvm.umin.i32(i32 %191, i32 1073741824)
  %193 = load i32, ptr %184, align 4, !tbaa !46
  %194 = zext i32 %186 to i64
  %195 = getelementptr inbounds nuw i8, ptr %181, i64 %194
  %196 = zext nneg i32 %192 to i64
  %197 = tail call i64 @read(i32 noundef %193, ptr noundef %195, i64 noundef %196) #13
  %198 = trunc i64 %197 to i32
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %207, label %200

200:                                              ; preds = %190
  %201 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %186, i32 %198), !nosanitize !20
  %202 = extractvalue { i32, i1 } %201, 1, !nosanitize !20
  br i1 %202, label %203, label %204, !prof !21, !nosanitize !20

203:                                              ; preds = %200
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

204:                                              ; preds = %200
  %205 = extractvalue { i32, i1 } %201, 0, !nosanitize !20
  %206 = icmp ult i32 %205, %178
  br i1 %206, label %185, label %.loopexit, !llvm.loop !47

207:                                              ; preds = %190
  %208 = icmp slt i32 %198, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %207
  %210 = load i32, ptr %183, align 4, !tbaa !4
  %211 = icmp eq i32 %210, 11
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  store i32 1, ptr %182, align 4, !tbaa !17
  %213 = icmp eq i32 %186, 0
  br i1 %213, label %214, label %.loopexit

214:                                              ; preds = %212
  %215 = load i32, ptr %183, align 4, !tbaa !4
  br label %217

216:                                              ; preds = %207
  store i32 1, ptr %61, align 8, !tbaa !24
  br label %.loopexit

217:                                              ; preds = %214, %209
  %218 = phi i32 [ %215, %214 ], [ %210, %209 ]
  %219 = tail call ptr @strerror(i32 noundef %218) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %219) #13
  br label %263

.loopexit:                                        ; preds = %204, %216, %212
  %220 = phi i32 [ %186, %212 ], [ %186, %216 ], [ %205, %204 ]
  %221 = load i32, ptr %64, align 8, !tbaa !34
  %222 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %221, i32 %220), !nosanitize !20
  %223 = extractvalue { i32, i1 } %222, 1, !nosanitize !20
  br i1 %223, label %224, label %225, !prof !21, !nosanitize !20

224:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

225:                                              ; preds = %.loopexit
  %226 = extractvalue { i32, i1 } %222, 0, !nosanitize !20
  store i32 %226, ptr %64, align 8, !tbaa !34
  %227 = load ptr, ptr %172, align 8, !tbaa !29
  store ptr %227, ptr %15, align 8, !tbaa !35
  br label %228

228:                                              ; preds = %225, %60
  %229 = phi i32 [ %226, %225 ], [ %65, %60 ]
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %263, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %233 = load i32, ptr %232, align 4, !tbaa !17
  %234 = icmp ne i32 %233, 0
  %235 = icmp ult i32 %229, 4
  %236 = and i1 %235, %234
  br i1 %236, label %263, label %237

237:                                              ; preds = %231
  %238 = icmp ugt i32 %229, 3
  %239 = load ptr, ptr %15, align 8, !tbaa !35
  br i1 %238, label %240, label %257

240:                                              ; preds = %237
  %241 = load i8, ptr %239, align 1, !tbaa !36
  %242 = icmp eq i8 %241, 31
  br i1 %242, label %243, label %257

243:                                              ; preds = %240
  %244 = getelementptr inbounds nuw i8, ptr %239, i64 1
  %245 = load i8, ptr %244, align 1, !tbaa !36
  %246 = icmp eq i8 %245, -117
  br i1 %246, label %247, label %257

247:                                              ; preds = %243
  %248 = getelementptr inbounds nuw i8, ptr %239, i64 2
  %249 = load i8, ptr %248, align 1, !tbaa !36
  %250 = icmp eq i8 %249, 8
  br i1 %250, label %251, label %257

251:                                              ; preds = %247
  %252 = getelementptr inbounds nuw i8, ptr %239, i64 3
  %253 = load i8, ptr %252, align 1, !tbaa !36
  %254 = icmp ult i8 %253, 32
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %263

257:                                              ; preds = %251, %247, %243, %240, %237
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %259 = load ptr, ptr %258, align 8, !tbaa !30
  %260 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %259, ptr %260, align 8, !tbaa !22
  %261 = zext i32 %229 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %259, ptr align 1 %239, i64 %261, i1 false)
  %262 = load i32, ptr %64, align 8, !tbaa !34
  store i32 %262, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %64, align 8, !tbaa !34
  store i32 1, ptr %8, align 8, !tbaa !26
  br label %263

263:                                              ; preds = %257, %255, %231, %228, %217, %57, %51, %40, %33, %11, %7, %3
  %264 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %265 = load i32, ptr %264, align 8, !tbaa !32
  %266 = icmp eq i32 %265, 1
  %267 = zext i1 %266 to i32
  br label %268

268:                                              ; preds = %263, %1
  %269 = phi i32 [ %267, %263 ], [ 0, %1 ]
  ret i32 %269
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
attributes #14 = { nomerge noreturn nounwind }
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
