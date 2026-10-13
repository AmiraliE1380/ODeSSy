; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_gzread.fast.mid.ll'
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
  br i1 %4, label %1081, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1081

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
  br i1 %15, label %1081, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1081

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %.loopexit102, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %.loopexit106, label %26

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

45:                                               ; preds = %449, %26
  %46 = phi i64 [ %450, %449 ], [ %24, %26 ]
  %47 = load i32, ptr %0, align 8, !tbaa !19
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %68, label %49

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
  %62 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %61, i64 %59), !nosanitize !20
  %63 = extractvalue { i64, i1 } %62, 1, !nosanitize !20
  br i1 %63, label %64, label %65, !prof !21, !nosanitize !20

64:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

65:                                               ; preds = %56
  %66 = extractvalue { i64, i1 } %62, 0, !nosanitize !20
  store i64 %66, ptr %28, align 8, !tbaa !23
  %67 = sub i64 %46, %59
  store i64 %67, ptr %23, align 8, !tbaa !18
  br label %449

68:                                               ; preds = %45
  %69 = load i32, ptr %29, align 8, !tbaa !24
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %.preheader910, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %30, align 8, !tbaa !25
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %.loopexit106, label %.preheader910

.preheader910:                                    ; preds = %71, %68
  br label %74

74:                                               ; preds = %.backedge, %.preheader910
  %75 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %75, label %436 [
    i32 0, label %76
    i32 1, label %305
    i32 2, label %343
  ]

76:                                               ; preds = %74
  %77 = load i32, ptr %32, align 8, !tbaa !27
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load i32, ptr %42, align 4, !tbaa !28
  %81 = zext i32 %80 to i64
  %82 = tail call noalias ptr @malloc(i64 noundef %81) #16
  store ptr %82, ptr %37, align 8, !tbaa !29
  %83 = shl i32 %80, 1
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #16
  store ptr %85, ptr %34, align 8, !tbaa !30
  %86 = icmp eq ptr %82, null
  %87 = icmp eq ptr %85, null
  %88 = or i1 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  tail call void @free(ptr noundef %85) #13
  tail call void @free(ptr noundef %82) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit102

90:                                               ; preds = %79
  store i32 %80, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %91 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %94) #13
  %95 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %95) #13
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit102

96:                                               ; preds = %90, %76
  %97 = load i32, ptr %44, align 8, !tbaa !32
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, ptr %40, align 4, !tbaa !33
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99, %96
  %103 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  %104 = load i32, ptr %40, align 4, !tbaa !33
  %105 = icmp ne i32 %104, -1
  %106 = zext i1 %105 to i32
  store i32 %106, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %302

107:                                              ; preds = %99
  %108 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %108, label %.loopexit103 [
    i32 0, label %109
    i32 -5, label %109
  ]

109:                                              ; preds = %107, %107
  %110 = load i32, ptr %29, align 8, !tbaa !24
  %111 = icmp eq i32 %110, 0
  %112 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %111, label %113, label %270

113:                                              ; preds = %109
  %114 = icmp eq i32 %112, 0
  br i1 %114, label %216, label %115

115:                                              ; preds = %113
  %116 = load ptr, ptr %37, align 8, !tbaa !29
  %117 = load ptr, ptr %36, align 8, !tbaa !35
  %118 = icmp eq ptr %117, %116
  br i1 %118, label %216, label %119

119:                                              ; preds = %115
  %120 = ptrtoint ptr %117 to i64
  %121 = ptrtoint ptr %116 to i64
  %122 = zext i32 %112 to i64
  %123 = icmp ult i32 %112, 4
  %124 = sub i64 %121, %120
  %125 = icmp ult i64 %124, 32
  %126 = or i1 %123, %125
  br i1 %126, label %166, label %127

127:                                              ; preds = %119
  %128 = icmp ult i32 %112, 32
  br i1 %128, label %150, label %129

129:                                              ; preds = %127
  %130 = and i64 %122, 4294967264
  br label %131

131:                                              ; preds = %131, %129
  %132 = phi i64 [ 0, %129 ], [ %139, %131 ]
  %133 = getelementptr i8, ptr %116, i64 %132
  %134 = getelementptr i8, ptr %117, i64 %132
  %135 = getelementptr i8, ptr %134, i64 16
  %136 = load <16 x i8>, ptr %134, align 1, !tbaa !36
  %137 = load <16 x i8>, ptr %135, align 1, !tbaa !36
  %138 = getelementptr i8, ptr %133, i64 16
  store <16 x i8> %136, ptr %133, align 1, !tbaa !36
  store <16 x i8> %137, ptr %138, align 1, !tbaa !36
  %139 = add nuw nsw i64 %132, 32
  %140 = icmp eq i64 %139, %130
  br i1 %140, label %141, label %131, !llvm.loop !37

141:                                              ; preds = %131
  %142 = icmp eq i64 %130, %122
  br i1 %142, label %.loopexit95, label %143

143:                                              ; preds = %141
  %144 = getelementptr i8, ptr %116, i64 %130
  %145 = getelementptr i8, ptr %117, i64 %130
  %146 = trunc nuw i64 %130 to i32
  %147 = sub i32 %112, %146
  %148 = and i64 %122, 28
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %166, label %150

150:                                              ; preds = %143, %127
  %151 = phi i64 [ %130, %143 ], [ 0, %127 ]
  %152 = and i64 %122, 4294967292
  br label %153

153:                                              ; preds = %153, %150
  %154 = phi i64 [ %151, %150 ], [ %158, %153 ]
  %155 = getelementptr i8, ptr %116, i64 %154
  %156 = getelementptr i8, ptr %117, i64 %154
  %157 = load <4 x i8>, ptr %156, align 1, !tbaa !36
  store <4 x i8> %157, ptr %155, align 1, !tbaa !36
  %158 = add nuw i64 %154, 4
  %159 = icmp eq i64 %158, %152
  br i1 %159, label %160, label %153, !llvm.loop !41

160:                                              ; preds = %153
  %161 = getelementptr i8, ptr %116, i64 %152
  %162 = getelementptr i8, ptr %117, i64 %152
  %163 = trunc nuw i64 %152 to i32
  %164 = sub i32 %112, %163
  %165 = icmp eq i64 %152, %122
  br i1 %165, label %.loopexit95, label %166

166:                                              ; preds = %160, %143, %119
  %167 = phi ptr [ %116, %119 ], [ %144, %143 ], [ %161, %160 ]
  %168 = phi ptr [ %117, %119 ], [ %145, %143 ], [ %162, %160 ]
  %169 = phi i32 [ %112, %119 ], [ %147, %143 ], [ %164, %160 ]
  %170 = add i32 %169, -1
  %171 = and i32 %169, 7
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %.loopexit97, label %.preheader96

.preheader96:                                     ; preds = %166, %.preheader96
  %173 = phi ptr [ %177, %.preheader96 ], [ %167, %166 ]
  %174 = phi ptr [ %178, %.preheader96 ], [ %168, %166 ]
  %175 = phi i32 [ %179, %.preheader96 ], [ 0, %166 ]
  %176 = load i8, ptr %174, align 1, !tbaa !36
  store i8 %176, ptr %173, align 1, !tbaa !36
  %177 = getelementptr inbounds nuw i8, ptr %173, i64 1
  %178 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %179 = add nuw nsw i32 %175, 1
  %180 = icmp eq i32 %179, %171
  br i1 %180, label %.loopexit97.loopexit, label %.preheader96, !llvm.loop !42

.loopexit97.loopexit:                             ; preds = %.preheader96
  %181 = and i32 %169, -8
  br label %.loopexit97

.loopexit97:                                      ; preds = %.loopexit97.loopexit, %166
  %182 = phi ptr [ %167, %166 ], [ %177, %.loopexit97.loopexit ]
  %183 = phi ptr [ %168, %166 ], [ %178, %.loopexit97.loopexit ]
  %184 = phi i32 [ %169, %166 ], [ %181, %.loopexit97.loopexit ]
  %185 = icmp ult i32 %170, 7
  br i1 %185, label %.loopexit95, label %.preheader94

.preheader94:                                     ; preds = %.loopexit97, %.preheader94
  %186 = phi ptr [ %212, %.preheader94 ], [ %182, %.loopexit97 ]
  %187 = phi ptr [ %213, %.preheader94 ], [ %183, %.loopexit97 ]
  %188 = phi i32 [ %211, %.preheader94 ], [ %184, %.loopexit97 ]
  %189 = load i8, ptr %187, align 1, !tbaa !36
  store i8 %189, ptr %186, align 1, !tbaa !36
  %190 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %191 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %192 = load i8, ptr %191, align 1, !tbaa !36
  store i8 %192, ptr %190, align 1, !tbaa !36
  %193 = getelementptr inbounds nuw i8, ptr %186, i64 2
  %194 = getelementptr inbounds nuw i8, ptr %187, i64 2
  %195 = load i8, ptr %194, align 1, !tbaa !36
  store i8 %195, ptr %193, align 1, !tbaa !36
  %196 = getelementptr inbounds nuw i8, ptr %186, i64 3
  %197 = getelementptr inbounds nuw i8, ptr %187, i64 3
  %198 = load i8, ptr %197, align 1, !tbaa !36
  store i8 %198, ptr %196, align 1, !tbaa !36
  %199 = getelementptr inbounds nuw i8, ptr %186, i64 4
  %200 = getelementptr inbounds nuw i8, ptr %187, i64 4
  %201 = load i8, ptr %200, align 1, !tbaa !36
  store i8 %201, ptr %199, align 1, !tbaa !36
  %202 = getelementptr inbounds nuw i8, ptr %186, i64 5
  %203 = getelementptr inbounds nuw i8, ptr %187, i64 5
  %204 = load i8, ptr %203, align 1, !tbaa !36
  store i8 %204, ptr %202, align 1, !tbaa !36
  %205 = getelementptr inbounds nuw i8, ptr %186, i64 6
  %206 = getelementptr inbounds nuw i8, ptr %187, i64 6
  %207 = load i8, ptr %206, align 1, !tbaa !36
  store i8 %207, ptr %205, align 1, !tbaa !36
  %208 = getelementptr inbounds nuw i8, ptr %186, i64 7
  %209 = getelementptr inbounds nuw i8, ptr %187, i64 7
  %210 = load i8, ptr %209, align 1, !tbaa !36
  store i8 %210, ptr %208, align 1, !tbaa !36
  %211 = add i32 %188, -8
  %212 = getelementptr inbounds nuw i8, ptr %186, i64 8
  %213 = getelementptr inbounds nuw i8, ptr %187, i64 8
  %214 = icmp eq i32 %211, 0
  br i1 %214, label %.loopexit95, label %.preheader94, !llvm.loop !44

.loopexit95:                                      ; preds = %.preheader94, %.loopexit97, %160, %141
  %215 = load i32, ptr %30, align 8, !tbaa !34
  br label %216

216:                                              ; preds = %.loopexit95, %115, %113
  %217 = phi i32 [ %215, %.loopexit95 ], [ %112, %115 ], [ 0, %113 ]
  %218 = load i32, ptr %32, align 8, !tbaa !27
  %219 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %218, i32 %217), !nosanitize !20
  %220 = extractvalue { i32, i1 } %219, 1, !nosanitize !20
  br i1 %220, label %221, label %222, !prof !21, !nosanitize !20

221:                                              ; preds = %216
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

222:                                              ; preds = %216
  %223 = extractvalue { i32, i1 } %219, 0, !nosanitize !20
  %224 = load ptr, ptr %37, align 8, !tbaa !29
  %225 = zext i32 %217 to i64
  %226 = getelementptr inbounds nuw i8, ptr %224, i64 %225
  store i32 0, ptr %38, align 4, !tbaa !17
  %227 = tail call ptr @__errno_location() #17
  store i32 0, ptr %227, align 4, !tbaa !45
  br label %228

228:                                              ; preds = %247, %222
  %229 = phi i32 [ 0, %222 ], [ %248, %247 ]
  %230 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %223, i32 %229), !nosanitize !20
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !20
  br i1 %231, label %232, label %233, !prof !21, !nosanitize !20

232:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

233:                                              ; preds = %228
  %234 = extractvalue { i32, i1 } %230, 0, !nosanitize !20
  %235 = tail call i32 @llvm.umin.i32(i32 %234, i32 1073741824)
  %236 = load i32, ptr %39, align 4, !tbaa !46
  %237 = zext i32 %229 to i64
  %238 = getelementptr inbounds nuw i8, ptr %226, i64 %237
  %239 = zext nneg i32 %235 to i64
  %240 = tail call i64 @read(i32 noundef %236, ptr noundef %238, i64 noundef %239) #13
  %241 = trunc i64 %240 to i32
  %242 = icmp slt i32 %241, 1
  br i1 %242, label %250, label %243

243:                                              ; preds = %233
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %229, i32 %241), !nosanitize !20
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !20
  br i1 %245, label %246, label %247, !prof !21, !nosanitize !20

246:                                              ; preds = %243
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

247:                                              ; preds = %243
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !20
  %249 = icmp ult i32 %248, %223
  br i1 %249, label %228, label %.loopexit93, !llvm.loop !47

250:                                              ; preds = %233
  %251 = icmp slt i32 %241, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %250
  %253 = load i32, ptr %227, align 4, !tbaa !45
  %254 = icmp eq i32 %253, 11
  br i1 %254, label %255, label %.loopexit104

255:                                              ; preds = %252
  store i32 1, ptr %38, align 4, !tbaa !17
  %256 = icmp eq i32 %229, 0
  br i1 %256, label %257, label %.loopexit93

257:                                              ; preds = %255
  %258 = load i32, ptr %227, align 4, !tbaa !45
  br label %.loopexit104

259:                                              ; preds = %250
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit93

.loopexit104:                                     ; preds = %252, %257
  %260 = phi i32 [ %258, %257 ], [ %253, %252 ]
  %261 = tail call ptr @strerror(i32 noundef %260) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %261) #13
  br label %.loopexit102

.loopexit93:                                      ; preds = %247, %259, %255
  %262 = phi i32 [ %229, %259 ], [ %229, %255 ], [ %248, %247 ]
  %263 = load i32, ptr %30, align 8, !tbaa !34
  %264 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %263, i32 %262), !nosanitize !20
  %265 = extractvalue { i32, i1 } %264, 1, !nosanitize !20
  br i1 %265, label %266, label %267, !prof !21, !nosanitize !20

266:                                              ; preds = %.loopexit93
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

267:                                              ; preds = %.loopexit93
  %268 = extractvalue { i32, i1 } %264, 0, !nosanitize !20
  store i32 %268, ptr %30, align 8, !tbaa !34
  %269 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %269, ptr %36, align 8, !tbaa !35
  br label %270

270:                                              ; preds = %267, %109
  %271 = phi i32 [ %268, %267 ], [ %112, %109 ]
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %302, label %273

273:                                              ; preds = %270
  %274 = load i32, ptr %38, align 4, !tbaa !17
  %275 = icmp ne i32 %274, 0
  %276 = icmp ult i32 %271, 4
  %277 = and i1 %276, %275
  br i1 %277, label %302, label %278

278:                                              ; preds = %273
  %279 = icmp ugt i32 %271, 3
  %280 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %279, label %281, label %298

281:                                              ; preds = %278
  %282 = load i8, ptr %280, align 1, !tbaa !36
  %283 = icmp eq i8 %282, 31
  br i1 %283, label %284, label %298

284:                                              ; preds = %281
  %285 = getelementptr inbounds nuw i8, ptr %280, i64 1
  %286 = load i8, ptr %285, align 1, !tbaa !36
  %287 = icmp eq i8 %286, -117
  br i1 %287, label %288, label %298

288:                                              ; preds = %284
  %289 = getelementptr inbounds nuw i8, ptr %280, i64 2
  %290 = load i8, ptr %289, align 1, !tbaa !36
  %291 = icmp eq i8 %290, 8
  br i1 %291, label %292, label %298

292:                                              ; preds = %288
  %293 = getelementptr inbounds nuw i8, ptr %280, i64 3
  %294 = load i8, ptr %293, align 1, !tbaa !36
  %295 = icmp ult i8 %294, 32
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %437

298:                                              ; preds = %292, %288, %284, %281, %278
  %299 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %299, ptr %27, align 8, !tbaa !22
  %300 = zext i32 %271 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %299, ptr align 1 %280, i64 %300, i1 false)
  %301 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %301, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %439

302:                                              ; preds = %273, %270, %102
  %303 = load i32, ptr %31, align 8, !tbaa !26
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %.loopexit105, label %437

305:                                              ; preds = %74
  %306 = load ptr, ptr %34, align 8, !tbaa !30
  %307 = load i32, ptr %32, align 8, !tbaa !27
  %308 = shl i32 %307, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %309 = tail call ptr @__errno_location() #17
  store i32 0, ptr %309, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %310

310:                                              ; preds = %326, %305
  %311 = phi i32 [ %327, %326 ], [ 0, %305 ]
  %312 = sub i32 %308, %311
  %313 = tail call i32 @llvm.umin.i32(i32 %312, i32 1073741824)
  %314 = load i32, ptr %39, align 4, !tbaa !46
  %315 = zext i32 %311 to i64
  %316 = getelementptr inbounds nuw i8, ptr %306, i64 %315
  %317 = zext nneg i32 %313 to i64
  %318 = tail call i64 @read(i32 noundef %314, ptr noundef %316, i64 noundef %317) #13
  %319 = trunc i64 %318 to i32
  %320 = icmp slt i32 %319, 1
  br i1 %320, label %329, label %321

321:                                              ; preds = %310
  %322 = load i32, ptr %0, align 4, !tbaa !45
  %323 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %322, i32 %319), !nosanitize !20
  %324 = extractvalue { i32, i1 } %323, 1, !nosanitize !20
  br i1 %324, label %325, label %326, !prof !21, !nosanitize !20

325:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

326:                                              ; preds = %321
  %327 = extractvalue { i32, i1 } %323, 0, !nosanitize !20
  store i32 %327, ptr %0, align 4, !tbaa !45
  %328 = icmp ult i32 %327, %308
  br i1 %328, label %310, label %.loopexit101, !llvm.loop !47

329:                                              ; preds = %310
  %330 = icmp slt i32 %319, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %329
  %332 = load i32, ptr %309, align 4, !tbaa !45
  %333 = icmp eq i32 %332, 11
  br i1 %333, label %334, label %.loopexit107

334:                                              ; preds = %331
  store i32 1, ptr %38, align 4, !tbaa !17
  %335 = load i32, ptr %0, align 4, !tbaa !45
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %.loopexit101

337:                                              ; preds = %334
  %338 = load i32, ptr %309, align 4, !tbaa !45
  br label %.loopexit107

339:                                              ; preds = %329
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit101

.loopexit107:                                     ; preds = %331, %337
  %340 = phi i32 [ %338, %337 ], [ %332, %331 ]
  %341 = tail call ptr @strerror(i32 noundef %340) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %341) #13
  br label %.loopexit102

.loopexit101:                                     ; preds = %326, %339, %334
  %342 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %342, ptr %27, align 8, !tbaa !22
  br label %.loopexit105

343:                                              ; preds = %74
  %344 = load i32, ptr %32, align 8, !tbaa !27
  %345 = shl i32 %344, 1
  store i32 %345, ptr %33, align 8, !tbaa !48
  %346 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %346, ptr %35, align 8, !tbaa !49
  br label %347

347:                                              ; preds = %420, %343
  %348 = phi i32 [ 0, %343 ], [ %405, %420 ]
  %349 = load i32, ptr %30, align 8, !tbaa !34
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %404

351:                                              ; preds = %347
  %352 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %352, label %.loopexit98 [
    i32 0, label %353
    i32 -5, label %353
  ]

353:                                              ; preds = %351, %351
  %354 = load i32, ptr %29, align 8, !tbaa !24
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %400

356:                                              ; preds = %353
  %357 = load i32, ptr %32, align 8, !tbaa !27
  %358 = load ptr, ptr %37, align 8, !tbaa !29
  store i32 0, ptr %38, align 4, !tbaa !17
  %359 = tail call ptr @__errno_location() #17
  store i32 0, ptr %359, align 4, !tbaa !45
  br label %360

360:                                              ; preds = %375, %356
  %361 = phi i32 [ 0, %356 ], [ %376, %375 ]
  %362 = sub i32 %357, %361
  %363 = tail call i32 @llvm.umin.i32(i32 %362, i32 1073741824)
  %364 = load i32, ptr %39, align 4, !tbaa !46
  %365 = zext i32 %361 to i64
  %366 = getelementptr inbounds nuw i8, ptr %358, i64 %365
  %367 = zext nneg i32 %363 to i64
  %368 = tail call i64 @read(i32 noundef %364, ptr noundef %366, i64 noundef %367) #13
  %369 = trunc i64 %368 to i32
  %370 = icmp slt i32 %369, 1
  br i1 %370, label %378, label %371

371:                                              ; preds = %360
  %372 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %361, i32 %369), !nosanitize !20
  %373 = extractvalue { i32, i1 } %372, 1, !nosanitize !20
  br i1 %373, label %374, label %375, !prof !21, !nosanitize !20

374:                                              ; preds = %371
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

375:                                              ; preds = %371
  %376 = extractvalue { i32, i1 } %372, 0, !nosanitize !20
  %377 = icmp ult i32 %376, %357
  br i1 %377, label %360, label %.loopexit92, !llvm.loop !47

378:                                              ; preds = %360
  %379 = icmp slt i32 %369, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %378
  %381 = load i32, ptr %359, align 4, !tbaa !45
  %382 = icmp eq i32 %381, 11
  br i1 %382, label %383, label %.loopexit100

383:                                              ; preds = %380
  store i32 1, ptr %38, align 4, !tbaa !17
  %384 = icmp eq i32 %361, 0
  br i1 %384, label %385, label %.loopexit92

385:                                              ; preds = %383
  %386 = load i32, ptr %359, align 4, !tbaa !45
  br label %.loopexit100

387:                                              ; preds = %378
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit92

.loopexit100:                                     ; preds = %380, %385
  %388 = phi i32 [ %386, %385 ], [ %381, %380 ]
  %389 = tail call ptr @strerror(i32 noundef %388) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %389) #13
  %390 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit98

.loopexit92:                                      ; preds = %375, %387, %383
  %391 = phi i32 [ %361, %387 ], [ %361, %383 ], [ %376, %375 ]
  %392 = load i32, ptr %30, align 8, !tbaa !34
  %393 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %392, i32 %391), !nosanitize !20
  %394 = extractvalue { i32, i1 } %393, 1, !nosanitize !20
  br i1 %394, label %395, label %396, !prof !21, !nosanitize !20

395:                                              ; preds = %.loopexit92
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

396:                                              ; preds = %.loopexit92
  %397 = extractvalue { i32, i1 } %393, 0, !nosanitize !20
  store i32 %397, ptr %30, align 8, !tbaa !34
  %398 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %398, ptr %36, align 8, !tbaa !35
  %399 = icmp eq i32 %397, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %396, %353
  %401 = load i32, ptr %38, align 4, !tbaa !17
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %.loopexit98

403:                                              ; preds = %400
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit98

404:                                              ; preds = %396, %347
  %405 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %406 = load i32, ptr %33, align 8, !tbaa !48
  %407 = icmp ult i32 %406, %345
  br i1 %407, label %408, label %409

408:                                              ; preds = %404
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %409

409:                                              ; preds = %408, %404
  switch i32 %405, label %420 [
    i32 -2, label %410
    i32 2, label %410
    i32 -4, label %411
    i32 -3, label %412
  ]

410:                                              ; preds = %409, %409
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit98

411:                                              ; preds = %409
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit98

412:                                              ; preds = %409
  %413 = load i32, ptr %40, align 4, !tbaa !33
  %414 = icmp eq i32 %413, 1
  br i1 %414, label %415, label %416

415:                                              ; preds = %412
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %.loopexit98

416:                                              ; preds = %412
  %417 = load ptr, ptr %41, align 8, !tbaa !50
  %418 = icmp eq ptr %417, null
  %419 = select i1 %418, ptr @.str.6, ptr %417
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %419) #13
  br label %.loopexit98

420:                                              ; preds = %409
  %421 = icmp ne i32 %406, 0
  %422 = icmp ne i32 %405, 1
  %423 = select i1 %421, i1 %422, i1 false
  br i1 %423, label %347, label %.loopexit98, !llvm.loop !51

.loopexit98:                                      ; preds = %420, %351, %416, %415, %411, %410, %403, %400, %.loopexit100
  %424 = phi i32 [ %348, %400 ], [ %348, %403 ], [ %405, %410 ], [ -4, %411 ], [ 0, %415 ], [ -3, %416 ], [ %390, %.loopexit100 ], [ %352, %351 ], [ %405, %420 ]
  %425 = load i32, ptr %33, align 8, !tbaa !48
  %426 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %345, i32 %425), !nosanitize !20
  %427 = extractvalue { i32, i1 } %426, 1, !nosanitize !20
  br i1 %427, label %428, label %429, !prof !21, !nosanitize !20

428:                                              ; preds = %.loopexit98
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

429:                                              ; preds = %.loopexit98
  %430 = extractvalue { i32, i1 } %426, 0, !nosanitize !20
  store i32 %430, ptr %0, align 8, !tbaa !19
  %431 = load ptr, ptr %35, align 8, !tbaa !49
  %432 = zext i32 %430 to i64
  %433 = sub nsw i64 0, %432
  %434 = getelementptr inbounds i8, ptr %431, i64 %433
  store ptr %434, ptr %27, align 8, !tbaa !22
  switch i32 %424, label %.loopexit102 [
    i32 1, label %435
    i32 0, label %437
  ]

435:                                              ; preds = %429
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %437

436:                                              ; preds = %74
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit102

437:                                              ; preds = %435, %429, %302, %296
  %438 = load i32, ptr %0, align 8, !tbaa !19
  br label %439

439:                                              ; preds = %437, %298
  %440 = phi i32 [ %438, %437 ], [ %301, %298 ]
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %.loopexit105

442:                                              ; preds = %439
  %443 = load i32, ptr %29, align 8, !tbaa !24
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %.backedge, label %445

445:                                              ; preds = %442
  %446 = load i32, ptr %30, align 8, !tbaa !34
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %.loopexit105, label %.backedge

.backedge:                                        ; preds = %445, %442
  br label %74, !llvm.loop !52

.loopexit105:                                     ; preds = %445, %439, %302, %.loopexit101
  %448 = load i64, ptr %23, align 8, !tbaa !18
  br label %449

449:                                              ; preds = %.loopexit105, %65
  %450 = phi i64 [ %448, %.loopexit105 ], [ %67, %65 ]
  %451 = icmp eq i64 %450, 0
  br i1 %451, label %.loopexit106, label %45, !llvm.loop !53

.loopexit106:                                     ; preds = %449, %71, %22
  %452 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %454 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %455 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %456 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %457 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %458 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %459 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %460 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %461 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %462 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %470

470:                                              ; preds = %.loopexit84, %.loopexit106
  %471 = phi ptr [ %1, %.loopexit106 ], [ %1052, %.loopexit84 ]
  %472 = phi i64 [ %20, %.loopexit106 ], [ %1053, %.loopexit84 ]
  %473 = phi i64 [ 0, %.loopexit106 ], [ %1054, %.loopexit84 ]
  %.fr = freeze i64 %472
  %474 = tail call i64 @llvm.umin.i64(i64 %.fr, i64 4294967295)
  %475 = trunc nuw i64 %474 to i32
  %476 = load i32, ptr %0, align 8, !tbaa !19
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %493, label %478

478:                                              ; preds = %470
  %479 = tail call i32 @llvm.umin.i32(i32 %476, i32 %475)
  %480 = load ptr, ptr %452, align 8, !tbaa !22
  %481 = zext i32 %479 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %471, ptr align 1 %480, i64 %481, i1 false)
  %482 = load ptr, ptr %452, align 8, !tbaa !22
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 %481
  store ptr %483, ptr %452, align 8, !tbaa !22
  %484 = load i32, ptr %0, align 8, !tbaa !19
  %485 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %484, i32 %479), !nosanitize !20
  %486 = extractvalue { i32, i1 } %485, 1, !nosanitize !20
  br i1 %486, label %487, label %488, !prof !21, !nosanitize !20

487:                                              ; preds = %478
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

488:                                              ; preds = %478
  %489 = extractvalue { i32, i1 } %485, 0, !nosanitize !20
  store i32 %489, ptr %0, align 8, !tbaa !19
  %490 = load i32, ptr %10, align 8, !tbaa !16
  %491 = icmp ne i32 %490, 0
  %492 = sext i1 %491 to i32
  br label %1033

493:                                              ; preds = %470
  %494 = load i32, ptr %453, align 8, !tbaa !24
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %493
  %497 = load i32, ptr %454, align 8, !tbaa !25
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %1059, label %499

499:                                              ; preds = %496, %493
  %500 = load i32, ptr %455, align 8, !tbaa !26
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %.preheader813, label %502

502:                                              ; preds = %499
  %503 = load i32, ptr %456, align 8, !tbaa !27
  %504 = shl i32 %503, 1
  %505 = icmp ugt i32 %504, %475
  br i1 %505, label %.preheader813, label %886

.preheader813:                                    ; preds = %502, %499
  br label %506

506:                                              ; preds = %.preheader813, %881
  %507 = phi i32 [ %882, %881 ], [ %500, %.preheader813 ]
  switch i32 %507, label %869 [
    i32 0, label %508
    i32 1, label %737
    i32 2, label %776
  ]

508:                                              ; preds = %506
  %509 = load i32, ptr %456, align 8, !tbaa !27
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %528

511:                                              ; preds = %508
  %512 = load i32, ptr %467, align 4, !tbaa !28
  %513 = zext i32 %512 to i64
  %514 = tail call noalias ptr @malloc(i64 noundef %513) #16
  store ptr %514, ptr %460, align 8, !tbaa !29
  %515 = shl i32 %512, 1
  %516 = zext i32 %515 to i64
  %517 = tail call noalias ptr @malloc(i64 noundef %516) #16
  store ptr %517, ptr %466, align 8, !tbaa !30
  %518 = icmp eq ptr %514, null
  %519 = icmp eq ptr %517, null
  %520 = or i1 %518, %519
  br i1 %520, label %521, label %522

521:                                              ; preds = %511
  tail call void @free(ptr noundef %517) #13
  tail call void @free(ptr noundef %514) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit82

522:                                              ; preds = %511
  store i32 %512, ptr %456, align 8, !tbaa !27
  store i32 0, ptr %454, align 8, !tbaa !25
  store ptr null, ptr %459, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %468, i8 0, i64 24, i1 false)
  %523 = tail call i32 @inflateInit2_(ptr noundef nonnull %459, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %528, label %525

525:                                              ; preds = %522
  %526 = load ptr, ptr %466, align 8, !tbaa !30
  tail call void @free(ptr noundef %526) #13
  %527 = load ptr, ptr %460, align 8, !tbaa !29
  tail call void @free(ptr noundef %527) #13
  store i32 0, ptr %456, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit82

528:                                              ; preds = %522, %508
  %529 = load i32, ptr %469, align 8, !tbaa !32
  %530 = icmp eq i32 %529, -1
  br i1 %530, label %534, label %531

531:                                              ; preds = %528
  %532 = load i32, ptr %463, align 4, !tbaa !33
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %539

534:                                              ; preds = %531, %528
  %535 = tail call i32 @inflateReset(ptr noundef nonnull %459) #13
  store i32 2, ptr %455, align 8, !tbaa !26
  %536 = load i32, ptr %463, align 4, !tbaa !33
  %537 = icmp ne i32 %536, -1
  %538 = zext i1 %537 to i32
  store i32 %538, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %469, align 8, !tbaa !32
  br label %734

539:                                              ; preds = %531
  %540 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %540, label %.loopexit82 [
    i32 0, label %541
    i32 -5, label %541
  ]

541:                                              ; preds = %539, %539
  %542 = load i32, ptr %453, align 8, !tbaa !24
  %543 = icmp eq i32 %542, 0
  %544 = load i32, ptr %454, align 8, !tbaa !34
  br i1 %543, label %545, label %702

545:                                              ; preds = %541
  %546 = icmp eq i32 %544, 0
  br i1 %546, label %648, label %547

547:                                              ; preds = %545
  %548 = load ptr, ptr %460, align 8, !tbaa !29
  %549 = load ptr, ptr %459, align 8, !tbaa !35
  %550 = icmp eq ptr %549, %548
  br i1 %550, label %648, label %551

551:                                              ; preds = %547
  %552 = ptrtoint ptr %549 to i64
  %553 = ptrtoint ptr %548 to i64
  %554 = zext i32 %544 to i64
  %555 = icmp ult i32 %544, 4
  %556 = sub i64 %553, %552
  %557 = icmp ult i64 %556, 32
  %558 = or i1 %555, %557
  br i1 %558, label %598, label %559

559:                                              ; preds = %551
  %560 = icmp ult i32 %544, 32
  br i1 %560, label %582, label %561

561:                                              ; preds = %559
  %562 = and i64 %554, 4294967264
  br label %563

563:                                              ; preds = %563, %561
  %564 = phi i64 [ 0, %561 ], [ %571, %563 ]
  %565 = getelementptr i8, ptr %548, i64 %564
  %566 = getelementptr i8, ptr %549, i64 %564
  %567 = getelementptr i8, ptr %566, i64 16
  %568 = load <16 x i8>, ptr %566, align 1, !tbaa !36
  %569 = load <16 x i8>, ptr %567, align 1, !tbaa !36
  %570 = getelementptr i8, ptr %565, i64 16
  store <16 x i8> %568, ptr %565, align 1, !tbaa !36
  store <16 x i8> %569, ptr %570, align 1, !tbaa !36
  %571 = add nuw nsw i64 %564, 32
  %572 = icmp eq i64 %571, %562
  br i1 %572, label %573, label %563, !llvm.loop !54

573:                                              ; preds = %563
  %574 = icmp eq i64 %562, %554
  br i1 %574, label %.loopexit75, label %575

575:                                              ; preds = %573
  %576 = getelementptr i8, ptr %548, i64 %562
  %577 = getelementptr i8, ptr %549, i64 %562
  %578 = trunc nuw i64 %562 to i32
  %579 = sub i32 %544, %578
  %580 = and i64 %554, 28
  %581 = icmp eq i64 %580, 0
  br i1 %581, label %598, label %582

582:                                              ; preds = %575, %559
  %583 = phi i64 [ %562, %575 ], [ 0, %559 ]
  %584 = and i64 %554, 4294967292
  br label %585

585:                                              ; preds = %585, %582
  %586 = phi i64 [ %583, %582 ], [ %590, %585 ]
  %587 = getelementptr i8, ptr %548, i64 %586
  %588 = getelementptr i8, ptr %549, i64 %586
  %589 = load <4 x i8>, ptr %588, align 1, !tbaa !36
  store <4 x i8> %589, ptr %587, align 1, !tbaa !36
  %590 = add nuw i64 %586, 4
  %591 = icmp eq i64 %590, %584
  br i1 %591, label %592, label %585, !llvm.loop !55

592:                                              ; preds = %585
  %593 = getelementptr i8, ptr %548, i64 %584
  %594 = getelementptr i8, ptr %549, i64 %584
  %595 = trunc nuw i64 %584 to i32
  %596 = sub i32 %544, %595
  %597 = icmp eq i64 %584, %554
  br i1 %597, label %.loopexit75, label %598

598:                                              ; preds = %592, %575, %551
  %599 = phi ptr [ %548, %551 ], [ %576, %575 ], [ %593, %592 ]
  %600 = phi ptr [ %549, %551 ], [ %577, %575 ], [ %594, %592 ]
  %601 = phi i32 [ %544, %551 ], [ %579, %575 ], [ %596, %592 ]
  %602 = add i32 %601, -1
  %603 = and i32 %601, 7
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %.loopexit77, label %.preheader76

.preheader76:                                     ; preds = %598, %.preheader76
  %605 = phi ptr [ %609, %.preheader76 ], [ %599, %598 ]
  %606 = phi ptr [ %610, %.preheader76 ], [ %600, %598 ]
  %607 = phi i32 [ %611, %.preheader76 ], [ 0, %598 ]
  %608 = load i8, ptr %606, align 1, !tbaa !36
  store i8 %608, ptr %605, align 1, !tbaa !36
  %609 = getelementptr inbounds nuw i8, ptr %605, i64 1
  %610 = getelementptr inbounds nuw i8, ptr %606, i64 1
  %611 = add nuw nsw i32 %607, 1
  %612 = icmp eq i32 %611, %603
  br i1 %612, label %.loopexit77.loopexit, label %.preheader76, !llvm.loop !56

.loopexit77.loopexit:                             ; preds = %.preheader76
  %613 = and i32 %601, -8
  br label %.loopexit77

.loopexit77:                                      ; preds = %.loopexit77.loopexit, %598
  %614 = phi ptr [ %599, %598 ], [ %609, %.loopexit77.loopexit ]
  %615 = phi ptr [ %600, %598 ], [ %610, %.loopexit77.loopexit ]
  %616 = phi i32 [ %601, %598 ], [ %613, %.loopexit77.loopexit ]
  %617 = icmp ult i32 %602, 7
  br i1 %617, label %.loopexit75, label %.preheader

.preheader:                                       ; preds = %.loopexit77, %.preheader
  %618 = phi ptr [ %644, %.preheader ], [ %614, %.loopexit77 ]
  %619 = phi ptr [ %645, %.preheader ], [ %615, %.loopexit77 ]
  %620 = phi i32 [ %643, %.preheader ], [ %616, %.loopexit77 ]
  %621 = load i8, ptr %619, align 1, !tbaa !36
  store i8 %621, ptr %618, align 1, !tbaa !36
  %622 = getelementptr inbounds nuw i8, ptr %618, i64 1
  %623 = getelementptr inbounds nuw i8, ptr %619, i64 1
  %624 = load i8, ptr %623, align 1, !tbaa !36
  store i8 %624, ptr %622, align 1, !tbaa !36
  %625 = getelementptr inbounds nuw i8, ptr %618, i64 2
  %626 = getelementptr inbounds nuw i8, ptr %619, i64 2
  %627 = load i8, ptr %626, align 1, !tbaa !36
  store i8 %627, ptr %625, align 1, !tbaa !36
  %628 = getelementptr inbounds nuw i8, ptr %618, i64 3
  %629 = getelementptr inbounds nuw i8, ptr %619, i64 3
  %630 = load i8, ptr %629, align 1, !tbaa !36
  store i8 %630, ptr %628, align 1, !tbaa !36
  %631 = getelementptr inbounds nuw i8, ptr %618, i64 4
  %632 = getelementptr inbounds nuw i8, ptr %619, i64 4
  %633 = load i8, ptr %632, align 1, !tbaa !36
  store i8 %633, ptr %631, align 1, !tbaa !36
  %634 = getelementptr inbounds nuw i8, ptr %618, i64 5
  %635 = getelementptr inbounds nuw i8, ptr %619, i64 5
  %636 = load i8, ptr %635, align 1, !tbaa !36
  store i8 %636, ptr %634, align 1, !tbaa !36
  %637 = getelementptr inbounds nuw i8, ptr %618, i64 6
  %638 = getelementptr inbounds nuw i8, ptr %619, i64 6
  %639 = load i8, ptr %638, align 1, !tbaa !36
  store i8 %639, ptr %637, align 1, !tbaa !36
  %640 = getelementptr inbounds nuw i8, ptr %618, i64 7
  %641 = getelementptr inbounds nuw i8, ptr %619, i64 7
  %642 = load i8, ptr %641, align 1, !tbaa !36
  store i8 %642, ptr %640, align 1, !tbaa !36
  %643 = add i32 %620, -8
  %644 = getelementptr inbounds nuw i8, ptr %618, i64 8
  %645 = getelementptr inbounds nuw i8, ptr %619, i64 8
  %646 = icmp eq i32 %643, 0
  br i1 %646, label %.loopexit75, label %.preheader, !llvm.loop !57

.loopexit75:                                      ; preds = %.preheader, %.loopexit77, %592, %573
  %647 = load i32, ptr %454, align 8, !tbaa !34
  br label %648

648:                                              ; preds = %.loopexit75, %547, %545
  %649 = phi i32 [ %647, %.loopexit75 ], [ %544, %547 ], [ 0, %545 ]
  %650 = load i32, ptr %456, align 8, !tbaa !27
  %651 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %650, i32 %649), !nosanitize !20
  %652 = extractvalue { i32, i1 } %651, 1, !nosanitize !20
  br i1 %652, label %653, label %654, !prof !21, !nosanitize !20

653:                                              ; preds = %648
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

654:                                              ; preds = %648
  %655 = extractvalue { i32, i1 } %651, 0, !nosanitize !20
  %656 = load ptr, ptr %460, align 8, !tbaa !29
  %657 = zext i32 %649 to i64
  %658 = getelementptr inbounds nuw i8, ptr %656, i64 %657
  store i32 0, ptr %461, align 4, !tbaa !17
  %659 = tail call ptr @__errno_location() #17
  store i32 0, ptr %659, align 4, !tbaa !45
  br label %660

660:                                              ; preds = %679, %654
  %661 = phi i32 [ 0, %654 ], [ %680, %679 ]
  %662 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %655, i32 %661), !nosanitize !20
  %663 = extractvalue { i32, i1 } %662, 1, !nosanitize !20
  br i1 %663, label %664, label %665, !prof !21, !nosanitize !20

664:                                              ; preds = %660
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

665:                                              ; preds = %660
  %666 = extractvalue { i32, i1 } %662, 0, !nosanitize !20
  %667 = tail call i32 @llvm.umin.i32(i32 %666, i32 1073741824)
  %668 = load i32, ptr %462, align 4, !tbaa !46
  %669 = zext i32 %661 to i64
  %670 = getelementptr inbounds nuw i8, ptr %658, i64 %669
  %671 = zext nneg i32 %667 to i64
  %672 = tail call i64 @read(i32 noundef %668, ptr noundef %670, i64 noundef %671) #13
  %673 = trunc i64 %672 to i32
  %674 = icmp slt i32 %673, 1
  br i1 %674, label %682, label %675

675:                                              ; preds = %665
  %676 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %661, i32 %673), !nosanitize !20
  %677 = extractvalue { i32, i1 } %676, 1, !nosanitize !20
  br i1 %677, label %678, label %679, !prof !21, !nosanitize !20

678:                                              ; preds = %675
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

679:                                              ; preds = %675
  %680 = extractvalue { i32, i1 } %676, 0, !nosanitize !20
  %681 = icmp ult i32 %680, %655
  br i1 %681, label %660, label %.loopexit74, !llvm.loop !47

682:                                              ; preds = %665
  %683 = icmp slt i32 %673, 0
  br i1 %683, label %684, label %691

684:                                              ; preds = %682
  %685 = load i32, ptr %659, align 4, !tbaa !45
  %686 = icmp eq i32 %685, 11
  br i1 %686, label %687, label %.loopexit83

687:                                              ; preds = %684
  store i32 1, ptr %461, align 4, !tbaa !17
  %688 = icmp eq i32 %661, 0
  br i1 %688, label %689, label %.loopexit74

689:                                              ; preds = %687
  %690 = load i32, ptr %659, align 4, !tbaa !45
  br label %.loopexit83

691:                                              ; preds = %682
  store i32 1, ptr %453, align 8, !tbaa !24
  br label %.loopexit74

.loopexit83:                                      ; preds = %684, %689
  %692 = phi i32 [ %690, %689 ], [ %685, %684 ]
  %693 = tail call ptr @strerror(i32 noundef %692) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %693) #13
  br label %.loopexit82

.loopexit74:                                      ; preds = %679, %691, %687
  %694 = phi i32 [ %661, %691 ], [ %661, %687 ], [ %680, %679 ]
  %695 = load i32, ptr %454, align 8, !tbaa !34
  %696 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %695, i32 %694), !nosanitize !20
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !20
  br i1 %697, label %698, label %699, !prof !21, !nosanitize !20

698:                                              ; preds = %.loopexit74
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

699:                                              ; preds = %.loopexit74
  %700 = extractvalue { i32, i1 } %696, 0, !nosanitize !20
  store i32 %700, ptr %454, align 8, !tbaa !34
  %701 = load ptr, ptr %460, align 8, !tbaa !29
  store ptr %701, ptr %459, align 8, !tbaa !35
  br label %702

702:                                              ; preds = %699, %541
  %703 = phi i32 [ %700, %699 ], [ %544, %541 ]
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %734, label %705

705:                                              ; preds = %702
  %706 = load i32, ptr %461, align 4, !tbaa !17
  %707 = icmp ne i32 %706, 0
  %708 = icmp ult i32 %703, 4
  %709 = and i1 %708, %707
  br i1 %709, label %734, label %710

710:                                              ; preds = %705
  %711 = icmp ugt i32 %703, 3
  %712 = load ptr, ptr %459, align 8, !tbaa !35
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
  %729 = tail call i32 @inflateReset(ptr noundef nonnull %459) #13
  store i32 2, ptr %455, align 8, !tbaa !26
  store i32 1, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %469, align 8, !tbaa !32
  br label %870

730:                                              ; preds = %724, %720, %716, %713, %710
  %731 = load ptr, ptr %466, align 8, !tbaa !30
  store ptr %731, ptr %452, align 8, !tbaa !22
  %732 = zext i32 %703 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %731, ptr align 1 %712, i64 %732, i1 false)
  %733 = load i32, ptr %454, align 8, !tbaa !34
  store i32 %733, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %454, align 8, !tbaa !34
  store i32 1, ptr %455, align 8, !tbaa !26
  br label %872

734:                                              ; preds = %705, %702, %534
  %735 = load i32, ptr %455, align 8, !tbaa !26
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %.loopexit84, label %870

737:                                              ; preds = %506
  %738 = load ptr, ptr %466, align 8, !tbaa !30
  %739 = load i32, ptr %456, align 8, !tbaa !27
  %740 = shl i32 %739, 1
  store i32 0, ptr %461, align 4, !tbaa !17
  %741 = tail call ptr @__errno_location() #17
  store i32 0, ptr %741, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %742

742:                                              ; preds = %758, %737
  %743 = phi i32 [ %759, %758 ], [ 0, %737 ]
  %744 = sub i32 %740, %743
  %745 = tail call i32 @llvm.umin.i32(i32 %744, i32 1073741824)
  %746 = load i32, ptr %462, align 4, !tbaa !46
  %747 = zext i32 %743 to i64
  %748 = getelementptr inbounds nuw i8, ptr %738, i64 %747
  %749 = zext nneg i32 %745 to i64
  %750 = tail call i64 @read(i32 noundef %746, ptr noundef %748, i64 noundef %749) #13
  %751 = trunc i64 %750 to i32
  %752 = icmp slt i32 %751, 1
  br i1 %752, label %761, label %753

753:                                              ; preds = %742
  %754 = load i32, ptr %0, align 4, !tbaa !45
  %755 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %754, i32 %751), !nosanitize !20
  %756 = extractvalue { i32, i1 } %755, 1, !nosanitize !20
  br i1 %756, label %757, label %758, !prof !21, !nosanitize !20

757:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

758:                                              ; preds = %753
  %759 = extractvalue { i32, i1 } %755, 0, !nosanitize !20
  store i32 %759, ptr %0, align 4, !tbaa !45
  %760 = icmp ult i32 %759, %740
  br i1 %760, label %742, label %.loopexit81, !llvm.loop !47

761:                                              ; preds = %742
  %762 = icmp slt i32 %751, 0
  br i1 %762, label %763, label %771

763:                                              ; preds = %761
  %764 = load i32, ptr %741, align 4, !tbaa !45
  %765 = icmp eq i32 %764, 11
  br i1 %765, label %766, label %772

766:                                              ; preds = %763
  store i32 1, ptr %461, align 4, !tbaa !17
  %767 = load i32, ptr %0, align 4, !tbaa !45
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %.loopexit81

769:                                              ; preds = %766
  %770 = load i32, ptr %741, align 4, !tbaa !45
  br label %772

771:                                              ; preds = %761
  store i32 1, ptr %453, align 8, !tbaa !24
  br label %.loopexit81

772:                                              ; preds = %769, %763
  %773 = phi i32 [ %770, %769 ], [ %764, %763 ]
  %774 = tail call ptr @strerror(i32 noundef %773) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %774) #13
  br label %.loopexit82

.loopexit81:                                      ; preds = %758, %771, %766
  %775 = load ptr, ptr %466, align 8, !tbaa !30
  store ptr %775, ptr %452, align 8, !tbaa !22
  br label %.loopexit84

776:                                              ; preds = %506
  %777 = load i32, ptr %456, align 8, !tbaa !27
  %778 = shl i32 %777, 1
  store i32 %778, ptr %457, align 8, !tbaa !48
  %779 = load ptr, ptr %466, align 8, !tbaa !30
  store ptr %779, ptr %458, align 8, !tbaa !49
  br label %780

780:                                              ; preds = %853, %776
  %781 = phi i32 [ 0, %776 ], [ %838, %853 ]
  %782 = load i32, ptr %454, align 8, !tbaa !34
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %837

784:                                              ; preds = %780
  %785 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %785, label %.loopexit78 [
    i32 0, label %786
    i32 -5, label %786
  ]

786:                                              ; preds = %784, %784
  %787 = load i32, ptr %453, align 8, !tbaa !24
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %833

789:                                              ; preds = %786
  %790 = load i32, ptr %456, align 8, !tbaa !27
  %791 = load ptr, ptr %460, align 8, !tbaa !29
  store i32 0, ptr %461, align 4, !tbaa !17
  %792 = tail call ptr @__errno_location() #17
  store i32 0, ptr %792, align 4, !tbaa !45
  br label %793

793:                                              ; preds = %808, %789
  %794 = phi i32 [ 0, %789 ], [ %809, %808 ]
  %795 = sub i32 %790, %794
  %796 = tail call i32 @llvm.umin.i32(i32 %795, i32 1073741824)
  %797 = load i32, ptr %462, align 4, !tbaa !46
  %798 = zext i32 %794 to i64
  %799 = getelementptr inbounds nuw i8, ptr %791, i64 %798
  %800 = zext nneg i32 %796 to i64
  %801 = tail call i64 @read(i32 noundef %797, ptr noundef %799, i64 noundef %800) #13
  %802 = trunc i64 %801 to i32
  %803 = icmp slt i32 %802, 1
  br i1 %803, label %811, label %804

804:                                              ; preds = %793
  %805 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %794, i32 %802), !nosanitize !20
  %806 = extractvalue { i32, i1 } %805, 1, !nosanitize !20
  br i1 %806, label %807, label %808, !prof !21, !nosanitize !20

807:                                              ; preds = %804
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

808:                                              ; preds = %804
  %809 = extractvalue { i32, i1 } %805, 0, !nosanitize !20
  %810 = icmp ult i32 %809, %790
  br i1 %810, label %793, label %.loopexit, !llvm.loop !47

811:                                              ; preds = %793
  %812 = icmp slt i32 %802, 0
  br i1 %812, label %813, label %820

813:                                              ; preds = %811
  %814 = load i32, ptr %792, align 4, !tbaa !45
  %815 = icmp eq i32 %814, 11
  br i1 %815, label %816, label %.loopexit79

816:                                              ; preds = %813
  store i32 1, ptr %461, align 4, !tbaa !17
  %817 = icmp eq i32 %794, 0
  br i1 %817, label %818, label %.loopexit

818:                                              ; preds = %816
  %819 = load i32, ptr %792, align 4, !tbaa !45
  br label %.loopexit79

820:                                              ; preds = %811
  store i32 1, ptr %453, align 8, !tbaa !24
  br label %.loopexit

.loopexit79:                                      ; preds = %813, %818
  %821 = phi i32 [ %819, %818 ], [ %814, %813 ]
  %822 = tail call ptr @strerror(i32 noundef %821) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %822) #13
  %823 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit78

.loopexit:                                        ; preds = %808, %820, %816
  %824 = phi i32 [ %794, %820 ], [ %794, %816 ], [ %809, %808 ]
  %825 = load i32, ptr %454, align 8, !tbaa !34
  %826 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %825, i32 %824), !nosanitize !20
  %827 = extractvalue { i32, i1 } %826, 1, !nosanitize !20
  br i1 %827, label %828, label %829, !prof !21, !nosanitize !20

828:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

829:                                              ; preds = %.loopexit
  %830 = extractvalue { i32, i1 } %826, 0, !nosanitize !20
  store i32 %830, ptr %454, align 8, !tbaa !34
  %831 = load ptr, ptr %460, align 8, !tbaa !29
  store ptr %831, ptr %459, align 8, !tbaa !35
  %832 = icmp eq i32 %830, 0
  br i1 %832, label %833, label %837

833:                                              ; preds = %829, %786
  %834 = load i32, ptr %461, align 4, !tbaa !17
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %.loopexit78

836:                                              ; preds = %833
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit78

837:                                              ; preds = %829, %780
  %838 = tail call i32 @inflate(ptr noundef nonnull %459, i32 noundef 0) #13
  %839 = load i32, ptr %457, align 8, !tbaa !48
  %840 = icmp ult i32 %839, %778
  br i1 %840, label %841, label %842

841:                                              ; preds = %837
  store i32 0, ptr %463, align 4, !tbaa !33
  br label %842

842:                                              ; preds = %841, %837
  switch i32 %838, label %853 [
    i32 -2, label %843
    i32 2, label %843
    i32 -4, label %844
    i32 -3, label %845
  ]

843:                                              ; preds = %842, %842
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit78

844:                                              ; preds = %842
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

845:                                              ; preds = %842
  %846 = load i32, ptr %463, align 4, !tbaa !33
  %847 = icmp eq i32 %846, 1
  br i1 %847, label %848, label %849

848:                                              ; preds = %845
  store i32 0, ptr %454, align 8, !tbaa !34
  store i32 1, ptr %453, align 8, !tbaa !24
  store i32 0, ptr %455, align 8, !tbaa !26
  br label %.loopexit78

849:                                              ; preds = %845
  %850 = load ptr, ptr %464, align 8, !tbaa !50
  %851 = icmp eq ptr %850, null
  %852 = select i1 %851, ptr @.str.6, ptr %850
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %852) #13
  br label %.loopexit78

853:                                              ; preds = %842
  %854 = icmp ne i32 %839, 0
  %855 = icmp ne i32 %838, 1
  %856 = select i1 %854, i1 %855, i1 false
  br i1 %856, label %780, label %.loopexit78, !llvm.loop !51

.loopexit78:                                      ; preds = %853, %784, %849, %848, %844, %843, %836, %833, %.loopexit79
  %857 = phi i32 [ %781, %833 ], [ %781, %836 ], [ %838, %843 ], [ -4, %844 ], [ 0, %848 ], [ -3, %849 ], [ %823, %.loopexit79 ], [ %838, %853 ], [ %785, %784 ]
  %858 = load i32, ptr %457, align 8, !tbaa !48
  %859 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %778, i32 %858), !nosanitize !20
  %860 = extractvalue { i32, i1 } %859, 1, !nosanitize !20
  br i1 %860, label %861, label %862, !prof !21, !nosanitize !20

861:                                              ; preds = %.loopexit78
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

862:                                              ; preds = %.loopexit78
  %863 = extractvalue { i32, i1 } %859, 0, !nosanitize !20
  store i32 %863, ptr %0, align 8, !tbaa !19
  %864 = load ptr, ptr %458, align 8, !tbaa !49
  %865 = zext i32 %863 to i64
  %866 = sub nsw i64 0, %865
  %867 = getelementptr inbounds i8, ptr %864, i64 %866
  store ptr %867, ptr %452, align 8, !tbaa !22
  switch i32 %857, label %.loopexit82 [
    i32 1, label %868
    i32 0, label %870
  ]

868:                                              ; preds = %862
  store i32 0, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %455, align 8, !tbaa !26
  br label %870

869:                                              ; preds = %506
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit82

870:                                              ; preds = %868, %862, %734, %728
  %871 = load i32, ptr %0, align 8, !tbaa !19
  br label %872

872:                                              ; preds = %870, %730
  %873 = phi i32 [ %871, %870 ], [ %733, %730 ]
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %875, label %.loopexit84

875:                                              ; preds = %872
  %876 = load i32, ptr %453, align 8, !tbaa !24
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %881, label %878

878:                                              ; preds = %875
  %879 = load i32, ptr %454, align 8, !tbaa !34
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %.loopexit84, label %881

881:                                              ; preds = %878, %875
  %882 = load i32, ptr %455, align 8, !tbaa !26
  br label %506, !llvm.loop !52

.loopexit82:                                      ; preds = %862, %539, %869, %772, %.loopexit83, %525, %521
  %883 = load i32, ptr %0, align 8, !tbaa !19
  %884 = icmp eq i32 %883, 0
  %885 = sext i1 %884 to i32
  br label %.loopexit84

886:                                              ; preds = %502
  %887 = icmp eq i32 %500, 1
  br i1 %887, label %888, label %932

888:                                              ; preds = %886
  store i32 0, ptr %461, align 4, !tbaa !17
  %889 = tail call ptr @__errno_location() #17
  store i32 0, ptr %889, align 4, !tbaa !45
  %mv.h12 = icmp ult i64 %.fr, 2147483649
  br i1 %mv.h12, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %888, %900
  %890 = phi i32 [ %901, %900 ], [ 0, %888 ]
  %891 = sub i32 %475, %890
  %892 = tail call i32 @llvm.umin.i32(i32 %891, i32 1073741824)
  %893 = load i32, ptr %462, align 4, !tbaa !46
  %894 = zext i32 %890 to i64
  %895 = getelementptr inbounds nuw i8, ptr %471, i64 %894
  %896 = zext nneg i32 %892 to i64
  %897 = tail call i64 @read(i32 noundef %893, ptr noundef %895, i64 noundef %896) #13
  %898 = trunc i64 %897 to i32
  %899 = icmp slt i32 %898, 1
  br i1 %899, label %.loopexit85, label %900

900:                                              ; preds = %.mv.ph.mv.fast
  %901 = add i32 %890, %898
  %902 = icmp ult i32 %901, %475
  br i1 %902, label %.mv.ph.mv.fast, label %.loopexit86, !llvm.loop !47

.mv.ph:                                           ; preds = %888, %917
  %903 = phi i32 [ %918, %917 ], [ 0, %888 ]
  %904 = sub i32 %475, %903
  %905 = tail call i32 @llvm.umin.i32(i32 %904, i32 1073741824)
  %906 = load i32, ptr %462, align 4, !tbaa !46
  %907 = zext i32 %903 to i64
  %908 = getelementptr inbounds nuw i8, ptr %471, i64 %907
  %909 = zext nneg i32 %905 to i64
  %910 = tail call i64 @read(i32 noundef %906, ptr noundef %908, i64 noundef %909) #13
  %911 = trunc i64 %910 to i32
  %912 = icmp slt i32 %911, 1
  br i1 %912, label %.loopexit85, label %913

913:                                              ; preds = %.mv.ph
  %914 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %903, i32 %911), !nosanitize !20
  %915 = extractvalue { i32, i1 } %914, 1, !nosanitize !20
  br i1 %915, label %916, label %917, !prof !21, !nosanitize !20

916:                                              ; preds = %913
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

917:                                              ; preds = %913
  %918 = extractvalue { i32, i1 } %914, 0, !nosanitize !20
  %919 = icmp ult i32 %918, %475
  br i1 %919, label %.mv.ph, label %.loopexit86, !llvm.loop !47

.loopexit85:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa7 = phi i64 [ %894, %.mv.ph.mv.fast ], [ %907, %.mv.ph ]
  %.lcssa4 = phi i32 [ %898, %.mv.ph.mv.fast ], [ %911, %.mv.ph ]
  %.lcssa1 = phi i32 [ %890, %.mv.ph.mv.fast ], [ %903, %.mv.ph ]
  %920 = icmp slt i32 %.lcssa4, 0
  br i1 %920, label %921, label %931

921:                                              ; preds = %.loopexit85
  %922 = load i32, ptr %889, align 4, !tbaa !45
  %923 = icmp eq i32 %922, 11
  br i1 %923, label %924, label %928

924:                                              ; preds = %921
  store i32 1, ptr %461, align 4, !tbaa !17
  %925 = icmp eq i32 %.lcssa1, 0
  br i1 %925, label %926, label %1033

926:                                              ; preds = %924
  %927 = load i32, ptr %889, align 4, !tbaa !45
  br label %928

928:                                              ; preds = %926, %921
  %929 = phi i32 [ %927, %926 ], [ %922, %921 ]
  %930 = tail call ptr @strerror(i32 noundef %929) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %930) #13
  br label %1033

931:                                              ; preds = %.loopexit85
  store i32 1, ptr %453, align 8, !tbaa !24
  br label %1033

932:                                              ; preds = %886
  store i32 %475, ptr %457, align 8, !tbaa !58
  store ptr %471, ptr %458, align 8, !tbaa !59
  br label %933

933:                                              ; preds = %1010, %932
  %934 = phi i32 [ 0, %932 ], [ %995, %1010 ]
  %935 = load i32, ptr %454, align 8, !tbaa !34
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %994

937:                                              ; preds = %933
  %938 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %938, label %.loopexit89 [
    i32 0, label %939
    i32 -5, label %939
  ]

939:                                              ; preds = %937, %937
  %940 = load i32, ptr %453, align 8, !tbaa !24
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %942, label %990

942:                                              ; preds = %939
  %943 = load i32, ptr %456, align 8, !tbaa !27
  %944 = load ptr, ptr %460, align 8, !tbaa !29
  store i32 0, ptr %461, align 4, !tbaa !17
  %945 = tail call ptr @__errno_location() #17
  store i32 0, ptr %945, align 4, !tbaa !45
  br label %946

946:                                              ; preds = %965, %942
  %947 = phi i32 [ 0, %942 ], [ %966, %965 ]
  %948 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %943, i32 %947), !nosanitize !20
  %949 = extractvalue { i32, i1 } %948, 1, !nosanitize !20
  br i1 %949, label %950, label %951, !prof !21, !nosanitize !20

950:                                              ; preds = %946
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

951:                                              ; preds = %946
  %952 = extractvalue { i32, i1 } %948, 0, !nosanitize !20
  %953 = tail call i32 @llvm.umin.i32(i32 %952, i32 1073741824)
  %954 = load i32, ptr %462, align 4, !tbaa !46
  %955 = zext i32 %947 to i64
  %956 = getelementptr inbounds nuw i8, ptr %944, i64 %955
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
  %967 = icmp ult i32 %966, %943
  br i1 %967, label %946, label %.loopexit80, !llvm.loop !47

968:                                              ; preds = %951
  %969 = icmp slt i32 %959, 0
  br i1 %969, label %970, label %977

970:                                              ; preds = %968
  %971 = load i32, ptr %945, align 4, !tbaa !45
  %972 = icmp eq i32 %971, 11
  br i1 %972, label %973, label %.loopexit91

973:                                              ; preds = %970
  store i32 1, ptr %461, align 4, !tbaa !17
  %974 = icmp eq i32 %947, 0
  br i1 %974, label %975, label %.loopexit80

975:                                              ; preds = %973
  %976 = load i32, ptr %945, align 4, !tbaa !45
  br label %.loopexit91

977:                                              ; preds = %968
  store i32 1, ptr %453, align 8, !tbaa !24
  br label %.loopexit80

.loopexit91:                                      ; preds = %970, %975
  %978 = phi i32 [ %976, %975 ], [ %971, %970 ]
  %979 = tail call ptr @strerror(i32 noundef %978) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %979) #13
  %980 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit89

.loopexit80:                                      ; preds = %965, %977, %973
  %981 = phi i32 [ %947, %977 ], [ %947, %973 ], [ %966, %965 ]
  %982 = load i32, ptr %454, align 8, !tbaa !34
  %983 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %982, i32 %981), !nosanitize !20
  %984 = extractvalue { i32, i1 } %983, 1, !nosanitize !20
  br i1 %984, label %985, label %986, !prof !21, !nosanitize !20

985:                                              ; preds = %.loopexit80
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

986:                                              ; preds = %.loopexit80
  %987 = extractvalue { i32, i1 } %983, 0, !nosanitize !20
  store i32 %987, ptr %454, align 8, !tbaa !34
  %988 = load ptr, ptr %460, align 8, !tbaa !29
  store ptr %988, ptr %459, align 8, !tbaa !35
  %989 = icmp eq i32 %987, 0
  br i1 %989, label %990, label %994

990:                                              ; preds = %986, %939
  %991 = load i32, ptr %461, align 4, !tbaa !17
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %.loopexit89

993:                                              ; preds = %990
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit89

994:                                              ; preds = %986, %933
  %995 = tail call i32 @inflate(ptr noundef nonnull %459, i32 noundef 0) #13
  %996 = load i32, ptr %457, align 8, !tbaa !48
  %997 = icmp ult i32 %996, %475
  br i1 %997, label %998, label %999

998:                                              ; preds = %994
  store i32 0, ptr %463, align 4, !tbaa !33
  br label %999

999:                                              ; preds = %998, %994
  switch i32 %995, label %1010 [
    i32 -2, label %1000
    i32 2, label %1000
    i32 -4, label %1001
    i32 -3, label %1002
  ]

1000:                                             ; preds = %999, %999
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit89

1001:                                             ; preds = %999
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit89

1002:                                             ; preds = %999
  %1003 = load i32, ptr %463, align 4, !tbaa !33
  %1004 = icmp eq i32 %1003, 1
  br i1 %1004, label %1005, label %1006

1005:                                             ; preds = %1002
  store i32 0, ptr %454, align 8, !tbaa !34
  store i32 1, ptr %453, align 8, !tbaa !24
  store i32 0, ptr %455, align 8, !tbaa !26
  br label %.loopexit89

1006:                                             ; preds = %1002
  %1007 = load ptr, ptr %464, align 8, !tbaa !50
  %1008 = icmp eq ptr %1007, null
  %1009 = select i1 %1008, ptr @.str.6, ptr %1007
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1009) #13
  br label %.loopexit89

1010:                                             ; preds = %999
  %1011 = icmp ne i32 %996, 0
  %1012 = icmp ne i32 %995, 1
  %1013 = select i1 %1011, i1 %1012, i1 false
  br i1 %1013, label %933, label %.loopexit89, !llvm.loop !51

.loopexit89:                                      ; preds = %1010, %937, %1006, %1005, %1001, %1000, %993, %990, %.loopexit91
  %1014 = phi i32 [ %934, %990 ], [ %934, %993 ], [ %995, %1000 ], [ -4, %1001 ], [ 0, %1005 ], [ -3, %1006 ], [ %980, %.loopexit91 ], [ %938, %937 ], [ %995, %1010 ]
  %1015 = load i32, ptr %457, align 8, !tbaa !48
  %1016 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %475, i32 %1015), !nosanitize !20
  %1017 = extractvalue { i32, i1 } %1016, 1, !nosanitize !20
  br i1 %1017, label %1018, label %1019, !prof !21, !nosanitize !20

1018:                                             ; preds = %.loopexit89
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1019:                                             ; preds = %.loopexit89
  %1020 = extractvalue { i32, i1 } %1016, 0, !nosanitize !20
  %1021 = load ptr, ptr %458, align 8, !tbaa !49
  %1022 = zext i32 %1020 to i64
  %1023 = sub nsw i64 0, %1022
  %1024 = getelementptr inbounds i8, ptr %1021, i64 %1023
  store ptr %1024, ptr %452, align 8, !tbaa !22
  %1025 = icmp eq i32 %1014, 1
  br i1 %1025, label %1026, label %1027

1026:                                             ; preds = %1019
  store i32 0, ptr %463, align 4, !tbaa !33
  store i32 0, ptr %455, align 8, !tbaa !26
  br label %1030

1027:                                             ; preds = %1019
  %1028 = icmp ne i32 %1014, 0
  %1029 = sext i1 %1028 to i32
  br label %1030

1030:                                             ; preds = %1027, %1026
  %1031 = phi i32 [ 0, %1026 ], [ %1029, %1027 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1033

.loopexit86:                                      ; preds = %917, %900
  %.lcssa10 = phi i32 [ %901, %900 ], [ %918, %917 ]
  %1032 = zext i32 %.lcssa10 to i64
  br label %1033

1033:                                             ; preds = %.loopexit86, %1030, %931, %928, %924, %488
  %1034 = phi i64 [ %1032, %.loopexit86 ], [ %.lcssa7, %931 ], [ %.lcssa7, %928 ], [ %.lcssa7, %924 ], [ %481, %488 ], [ %1022, %1030 ]
  %1035 = phi i32 [ 0, %.loopexit86 ], [ 0, %931 ], [ -1, %928 ], [ 0, %924 ], [ %492, %488 ], [ %1031, %1030 ]
  %1036 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.fr, i64 %1034), !nosanitize !20
  %1037 = extractvalue { i64, i1 } %1036, 0, !nosanitize !20
  %1038 = extractvalue { i64, i1 } %1036, 1, !nosanitize !20
  br i1 %1038, label %1039, label %1040, !prof !21, !nosanitize !20

1039:                                             ; preds = %1033
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1040:                                             ; preds = %1033
  %1041 = getelementptr inbounds nuw i8, ptr %471, i64 %1034
  %1042 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %473, i64 %1034), !nosanitize !20
  %1043 = extractvalue { i64, i1 } %1042, 0, !nosanitize !20
  %1044 = extractvalue { i64, i1 } %1042, 1, !nosanitize !20
  br i1 %1044, label %1045, label %1046, !prof !21, !nosanitize !20

1045:                                             ; preds = %1046, %1040
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1046:                                             ; preds = %1040
  %1047 = load i64, ptr %465, align 8, !tbaa !23
  %1048 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1047, i64 %1034), !nosanitize !20
  %1049 = extractvalue { i64, i1 } %1048, 1, !nosanitize !20
  br i1 %1049, label %1045, label %1050, !prof !21, !nosanitize !20

1050:                                             ; preds = %1046
  %1051 = extractvalue { i64, i1 } %1048, 0, !nosanitize !20
  store i64 %1051, ptr %465, align 8, !tbaa !23
  br label %.loopexit84

.loopexit84:                                      ; preds = %878, %872, %734, %1050, %.loopexit82, %.loopexit81
  %1052 = phi ptr [ %1041, %1050 ], [ %471, %.loopexit82 ], [ %471, %.loopexit81 ], [ %471, %734 ], [ %471, %872 ], [ %471, %878 ]
  %1053 = phi i64 [ %1037, %1050 ], [ %.fr, %.loopexit82 ], [ %.fr, %.loopexit81 ], [ %.fr, %734 ], [ %.fr, %872 ], [ %.fr, %878 ]
  %1054 = phi i64 [ %1043, %1050 ], [ %473, %.loopexit82 ], [ %473, %.loopexit81 ], [ %473, %734 ], [ %473, %872 ], [ %473, %878 ]
  %1055 = phi i32 [ %1035, %1050 ], [ %885, %.loopexit82 ], [ 0, %.loopexit81 ], [ 0, %734 ], [ 0, %872 ], [ 0, %878 ]
  %1056 = icmp ne i64 %1053, 0
  %1057 = icmp eq i32 %1055, 0
  %1058 = select i1 %1056, i1 %1057, i1 false
  br i1 %1058, label %470, label %1059, !llvm.loop !60

1059:                                             ; preds = %.loopexit84, %496
  %1060 = phi i64 [ %1053, %.loopexit84 ], [ %.fr, %496 ]
  %1061 = phi i64 [ %1054, %.loopexit84 ], [ %473, %496 ]
  %1062 = icmp eq i64 %1060, 0
  br i1 %1062, label %1068, label %1063

1063:                                             ; preds = %1059
  %1064 = load i32, ptr %453, align 8, !tbaa !24
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1068, label %1066

1066:                                             ; preds = %1063
  %1067 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1067, align 4, !tbaa !61
  br label %1068

1068:                                             ; preds = %1066, %1063, %1059
  %1069 = trunc i64 %1061 to i32
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %.loopexit102, label %1081

.loopexit102:                                     ; preds = %429, %1068, %436, %.loopexit107, %.loopexit104, %93, %89, %19
  %1071 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit103

.loopexit103:                                     ; preds = %107, %.loopexit102
  %1072 = phi i32 [ %1071, %.loopexit102 ], [ %108, %107 ]
  switch i32 %1072, label %1081 [
    i32 0, label %1073
    i32 -5, label %1073
  ]

1073:                                             ; preds = %.loopexit103, %.loopexit103
  %1074 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1075 = load i32, ptr %1074, align 4, !tbaa !17
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1081, label %1077

1077:                                             ; preds = %1073
  %1078 = tail call ptr @__errno_location() #17
  %1079 = load i32, ptr %1078, align 4, !tbaa !45
  %1080 = tail call ptr @strerror(i32 noundef %1079) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1080) #13
  br label %1081

1081:                                             ; preds = %1077, %1073, %.loopexit103, %1068, %18, %12, %5, %3
  %1082 = phi i32 [ -1, %18 ], [ -1, %1077 ], [ -1, %3 ], [ -1, %5 ], [ -1, %12 ], [ -1, %.loopexit103 ], [ 0, %1073 ], [ %1069, %1068 ]
  ret i32 %1082
}

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %1088, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1088

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
  br i1 %16, label %1088, label %17

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
  br label %1088

28:                                               ; preds = %24, %22
  %29 = icmp eq i64 %19, 0
  br i1 %29, label %1088, label %30

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

53:                                               ; preds = %465, %34
  %54 = phi i64 [ %466, %465 ], [ %32, %34 ]
  %55 = load i32, ptr %3, align 8, !tbaa !19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

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
  %70 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %69, i64 %67), !nosanitize !20
  %71 = extractvalue { i64, i1 } %70, 1, !nosanitize !20
  br i1 %71, label %72, label %73, !prof !21, !nosanitize !20

72:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

73:                                               ; preds = %64
  %74 = extractvalue { i64, i1 } %70, 0, !nosanitize !20
  store i64 %74, ptr %36, align 8, !tbaa !23
  %75 = sub i64 %54, %67
  store i64 %75, ptr %31, align 8, !tbaa !18
  br label %465

76:                                               ; preds = %53
  %77 = load i32, ptr %37, align 8, !tbaa !24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %.preheader862, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %38, align 8, !tbaa !25
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %.loopexit97, label %.preheader862

.preheader862:                                    ; preds = %79, %76
  br label %82

82:                                               ; preds = %.backedge, %.preheader862
  %83 = load i32, ptr %39, align 8, !tbaa !26
  switch i32 %83, label %452 [
    i32 0, label %84
    i32 1, label %313
    i32 2, label %355
  ]

84:                                               ; preds = %82
  %85 = load i32, ptr %40, align 8, !tbaa !27
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load i32, ptr %50, align 4, !tbaa !28
  %89 = zext i32 %88 to i64
  %90 = tail call noalias ptr @malloc(i64 noundef %89) #16
  store ptr %90, ptr %45, align 8, !tbaa !29
  %91 = shl i32 %88, 1
  %92 = zext i32 %91 to i64
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #16
  store ptr %93, ptr %42, align 8, !tbaa !30
  %94 = icmp eq ptr %90, null
  %95 = icmp eq ptr %93, null
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  tail call void @free(ptr noundef %93) #13
  tail call void @free(ptr noundef %90) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

98:                                               ; preds = %87
  store i32 %88, ptr %40, align 8, !tbaa !27
  store i32 0, ptr %38, align 8, !tbaa !25
  store ptr null, ptr %44, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %99 = tail call i32 @inflateInit2_(ptr noundef nonnull %44, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %42, align 8, !tbaa !30
  tail call void @free(ptr noundef %102) #13
  %103 = load ptr, ptr %45, align 8, !tbaa !29
  tail call void @free(ptr noundef %103) #13
  store i32 0, ptr %40, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

104:                                              ; preds = %98, %84
  %105 = load i32, ptr %52, align 8, !tbaa !32
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %48, align 4, !tbaa !33
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107, %104
  %111 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  %112 = load i32, ptr %48, align 4, !tbaa !33
  %113 = icmp ne i32 %112, -1
  %114 = zext i1 %113 to i32
  store i32 %114, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %310

115:                                              ; preds = %107
  %116 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %116, label %.loopexit94 [
    i32 0, label %117
    i32 -5, label %117
  ]

117:                                              ; preds = %115, %115
  %118 = load i32, ptr %37, align 8, !tbaa !24
  %119 = icmp eq i32 %118, 0
  %120 = load i32, ptr %38, align 8, !tbaa !34
  br i1 %119, label %121, label %278

121:                                              ; preds = %117
  %122 = icmp eq i32 %120, 0
  br i1 %122, label %224, label %123

123:                                              ; preds = %121
  %124 = load ptr, ptr %45, align 8, !tbaa !29
  %125 = load ptr, ptr %44, align 8, !tbaa !35
  %126 = icmp eq ptr %125, %124
  br i1 %126, label %224, label %127

127:                                              ; preds = %123
  %128 = ptrtoint ptr %125 to i64
  %129 = ptrtoint ptr %124 to i64
  %130 = zext i32 %120 to i64
  %131 = icmp ult i32 %120, 4
  %132 = sub i64 %129, %128
  %133 = icmp ult i64 %132, 32
  %134 = or i1 %131, %133
  br i1 %134, label %174, label %135

135:                                              ; preds = %127
  %136 = icmp ult i32 %120, 32
  br i1 %136, label %158, label %137

137:                                              ; preds = %135
  %138 = and i64 %130, 4294967264
  br label %139

139:                                              ; preds = %139, %137
  %140 = phi i64 [ 0, %137 ], [ %147, %139 ]
  %141 = getelementptr i8, ptr %124, i64 %140
  %142 = getelementptr i8, ptr %125, i64 %140
  %143 = getelementptr i8, ptr %142, i64 16
  %144 = load <16 x i8>, ptr %142, align 1, !tbaa !36
  %145 = load <16 x i8>, ptr %143, align 1, !tbaa !36
  %146 = getelementptr i8, ptr %141, i64 16
  store <16 x i8> %144, ptr %141, align 1, !tbaa !36
  store <16 x i8> %145, ptr %146, align 1, !tbaa !36
  %147 = add nuw nsw i64 %140, 32
  %148 = icmp eq i64 %147, %138
  br i1 %148, label %149, label %139, !llvm.loop !62

149:                                              ; preds = %139
  %150 = icmp eq i64 %138, %130
  br i1 %150, label %.loopexit87, label %151

151:                                              ; preds = %149
  %152 = getelementptr i8, ptr %124, i64 %138
  %153 = getelementptr i8, ptr %125, i64 %138
  %154 = trunc nuw i64 %138 to i32
  %155 = sub i32 %120, %154
  %156 = and i64 %130, 28
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %151, %135
  %159 = phi i64 [ %138, %151 ], [ 0, %135 ]
  %160 = and i64 %130, 4294967292
  br label %161

161:                                              ; preds = %161, %158
  %162 = phi i64 [ %159, %158 ], [ %166, %161 ]
  %163 = getelementptr i8, ptr %124, i64 %162
  %164 = getelementptr i8, ptr %125, i64 %162
  %165 = load <4 x i8>, ptr %164, align 1, !tbaa !36
  store <4 x i8> %165, ptr %163, align 1, !tbaa !36
  %166 = add nuw i64 %162, 4
  %167 = icmp eq i64 %166, %160
  br i1 %167, label %168, label %161, !llvm.loop !63

168:                                              ; preds = %161
  %169 = getelementptr i8, ptr %124, i64 %160
  %170 = getelementptr i8, ptr %125, i64 %160
  %171 = trunc nuw i64 %160 to i32
  %172 = sub i32 %120, %171
  %173 = icmp eq i64 %160, %130
  br i1 %173, label %.loopexit87, label %174

174:                                              ; preds = %168, %151, %127
  %175 = phi ptr [ %124, %127 ], [ %152, %151 ], [ %169, %168 ]
  %176 = phi ptr [ %125, %127 ], [ %153, %151 ], [ %170, %168 ]
  %177 = phi i32 [ %120, %127 ], [ %155, %151 ], [ %172, %168 ]
  %178 = add i32 %177, -1
  %179 = and i32 %177, 7
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %174, %.preheader88
  %181 = phi ptr [ %185, %.preheader88 ], [ %175, %174 ]
  %182 = phi ptr [ %186, %.preheader88 ], [ %176, %174 ]
  %183 = phi i32 [ %187, %.preheader88 ], [ 0, %174 ]
  %184 = load i8, ptr %182, align 1, !tbaa !36
  store i8 %184, ptr %181, align 1, !tbaa !36
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %186 = getelementptr inbounds nuw i8, ptr %182, i64 1
  %187 = add nuw nsw i32 %183, 1
  %188 = icmp eq i32 %187, %179
  br i1 %188, label %.loopexit89.loopexit, label %.preheader88, !llvm.loop !64

.loopexit89.loopexit:                             ; preds = %.preheader88
  %189 = and i32 %177, -8
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %174
  %190 = phi ptr [ %175, %174 ], [ %185, %.loopexit89.loopexit ]
  %191 = phi ptr [ %176, %174 ], [ %186, %.loopexit89.loopexit ]
  %192 = phi i32 [ %177, %174 ], [ %189, %.loopexit89.loopexit ]
  %193 = icmp ult i32 %178, 7
  br i1 %193, label %.loopexit87, label %.preheader86

.preheader86:                                     ; preds = %.loopexit89, %.preheader86
  %194 = phi ptr [ %220, %.preheader86 ], [ %190, %.loopexit89 ]
  %195 = phi ptr [ %221, %.preheader86 ], [ %191, %.loopexit89 ]
  %196 = phi i32 [ %219, %.preheader86 ], [ %192, %.loopexit89 ]
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
  br i1 %222, label %.loopexit87, label %.preheader86, !llvm.loop !65

.loopexit87:                                      ; preds = %.preheader86, %.loopexit89, %168, %149
  %223 = load i32, ptr %38, align 8, !tbaa !34
  br label %224

224:                                              ; preds = %.loopexit87, %123, %121
  %225 = phi i32 [ %223, %.loopexit87 ], [ %120, %123 ], [ 0, %121 ]
  %226 = load i32, ptr %40, align 8, !tbaa !27
  %227 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %226, i32 %225), !nosanitize !20
  %228 = extractvalue { i32, i1 } %227, 1, !nosanitize !20
  br i1 %228, label %229, label %230, !prof !21, !nosanitize !20

229:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

230:                                              ; preds = %224
  %231 = extractvalue { i32, i1 } %227, 0, !nosanitize !20
  %232 = load ptr, ptr %45, align 8, !tbaa !29
  %233 = zext i32 %225 to i64
  %234 = getelementptr inbounds nuw i8, ptr %232, i64 %233
  store i32 0, ptr %46, align 4, !tbaa !17
  %235 = tail call ptr @__errno_location() #17
  store i32 0, ptr %235, align 4, !tbaa !45
  br label %236

236:                                              ; preds = %255, %230
  %237 = phi i32 [ 0, %230 ], [ %256, %255 ]
  %238 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %231, i32 %237), !nosanitize !20
  %239 = extractvalue { i32, i1 } %238, 1, !nosanitize !20
  br i1 %239, label %240, label %241, !prof !21, !nosanitize !20

240:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

241:                                              ; preds = %236
  %242 = extractvalue { i32, i1 } %238, 0, !nosanitize !20
  %243 = tail call i32 @llvm.umin.i32(i32 %242, i32 1073741824)
  %244 = load i32, ptr %47, align 4, !tbaa !46
  %245 = zext i32 %237 to i64
  %246 = getelementptr inbounds nuw i8, ptr %234, i64 %245
  %247 = zext nneg i32 %243 to i64
  %248 = tail call i64 @read(i32 noundef %244, ptr noundef %246, i64 noundef %247) #13
  %249 = trunc i64 %248 to i32
  %250 = icmp slt i32 %249, 1
  br i1 %250, label %258, label %251

251:                                              ; preds = %241
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %249), !nosanitize !20
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !20
  br i1 %253, label %254, label %255, !prof !21, !nosanitize !20

254:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

255:                                              ; preds = %251
  %256 = extractvalue { i32, i1 } %252, 0, !nosanitize !20
  %257 = icmp ult i32 %256, %231
  br i1 %257, label %236, label %.loopexit85, !llvm.loop !47

258:                                              ; preds = %241
  %259 = icmp slt i32 %249, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %258
  %261 = load i32, ptr %235, align 4, !tbaa !45
  %262 = icmp eq i32 %261, 11
  br i1 %262, label %263, label %.loopexit95

263:                                              ; preds = %260
  store i32 1, ptr %46, align 4, !tbaa !17
  %264 = icmp eq i32 %237, 0
  br i1 %264, label %265, label %.loopexit85

265:                                              ; preds = %263
  %266 = load i32, ptr %235, align 4, !tbaa !45
  br label %.loopexit95

267:                                              ; preds = %258
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit85

.loopexit95:                                      ; preds = %260, %265
  %268 = phi i32 [ %266, %265 ], [ %261, %260 ]
  %269 = tail call ptr @strerror(i32 noundef %268) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %269) #13
  br label %.loopexit94

.loopexit85:                                      ; preds = %255, %267, %263
  %270 = phi i32 [ %237, %267 ], [ %237, %263 ], [ %256, %255 ]
  %271 = load i32, ptr %38, align 8, !tbaa !34
  %272 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %271, i32 %270), !nosanitize !20
  %273 = extractvalue { i32, i1 } %272, 1, !nosanitize !20
  br i1 %273, label %274, label %275, !prof !21, !nosanitize !20

274:                                              ; preds = %.loopexit85
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

275:                                              ; preds = %.loopexit85
  %276 = extractvalue { i32, i1 } %272, 0, !nosanitize !20
  store i32 %276, ptr %38, align 8, !tbaa !34
  %277 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %277, ptr %44, align 8, !tbaa !35
  br label %278

278:                                              ; preds = %275, %117
  %279 = phi i32 [ %276, %275 ], [ %120, %117 ]
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %310, label %281

281:                                              ; preds = %278
  %282 = load i32, ptr %46, align 4, !tbaa !17
  %283 = icmp ne i32 %282, 0
  %284 = icmp ult i32 %279, 4
  %285 = and i1 %284, %283
  br i1 %285, label %310, label %286

286:                                              ; preds = %281
  %287 = icmp ugt i32 %279, 3
  %288 = load ptr, ptr %44, align 8, !tbaa !35
  br i1 %287, label %289, label %306

289:                                              ; preds = %286
  %290 = load i8, ptr %288, align 1, !tbaa !36
  %291 = icmp eq i8 %290, 31
  br i1 %291, label %292, label %306

292:                                              ; preds = %289
  %293 = getelementptr inbounds nuw i8, ptr %288, i64 1
  %294 = load i8, ptr %293, align 1, !tbaa !36
  %295 = icmp eq i8 %294, -117
  br i1 %295, label %296, label %306

296:                                              ; preds = %292
  %297 = getelementptr inbounds nuw i8, ptr %288, i64 2
  %298 = load i8, ptr %297, align 1, !tbaa !36
  %299 = icmp eq i8 %298, 8
  br i1 %299, label %300, label %306

300:                                              ; preds = %296
  %301 = getelementptr inbounds nuw i8, ptr %288, i64 3
  %302 = load i8, ptr %301, align 1, !tbaa !36
  %303 = icmp ult i8 %302, 32
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %453

306:                                              ; preds = %300, %296, %292, %289, %286
  %307 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %307, ptr %35, align 8, !tbaa !22
  %308 = zext i32 %279 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %307, ptr align 1 %288, i64 %308, i1 false)
  %309 = load i32, ptr %38, align 8, !tbaa !34
  store i32 %309, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !26
  br label %455

310:                                              ; preds = %281, %278, %110
  %311 = load i32, ptr %39, align 8, !tbaa !26
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %.loopexit96, label %453

313:                                              ; preds = %82
  %314 = load ptr, ptr %42, align 8, !tbaa !30
  %315 = load i32, ptr %40, align 8, !tbaa !27
  %316 = shl i32 %315, 1
  store i32 0, ptr %46, align 4, !tbaa !17
  %317 = tail call ptr @__errno_location() #17
  store i32 0, ptr %317, align 4, !tbaa !45
  store i32 0, ptr %3, align 8, !tbaa !45
  br label %318

318:                                              ; preds = %338, %313
  %319 = phi i32 [ %339, %338 ], [ 0, %313 ]
  %320 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %316, i32 %319), !nosanitize !20
  %321 = extractvalue { i32, i1 } %320, 1, !nosanitize !20
  br i1 %321, label %322, label %323, !prof !21, !nosanitize !20

322:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

323:                                              ; preds = %318
  %324 = extractvalue { i32, i1 } %320, 0, !nosanitize !20
  %325 = tail call i32 @llvm.umin.i32(i32 %324, i32 1073741824)
  %326 = load i32, ptr %47, align 4, !tbaa !46
  %327 = zext i32 %319 to i64
  %328 = getelementptr inbounds nuw i8, ptr %314, i64 %327
  %329 = zext nneg i32 %325 to i64
  %330 = tail call i64 @read(i32 noundef %326, ptr noundef %328, i64 noundef %329) #13
  %331 = trunc i64 %330 to i32
  %332 = icmp slt i32 %331, 1
  br i1 %332, label %341, label %333

333:                                              ; preds = %323
  %334 = load i32, ptr %3, align 4, !tbaa !45
  %335 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %334, i32 %331), !nosanitize !20
  %336 = extractvalue { i32, i1 } %335, 1, !nosanitize !20
  br i1 %336, label %337, label %338, !prof !21, !nosanitize !20

337:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

338:                                              ; preds = %333
  %339 = extractvalue { i32, i1 } %335, 0, !nosanitize !20
  store i32 %339, ptr %3, align 4, !tbaa !45
  %340 = icmp ult i32 %339, %316
  br i1 %340, label %318, label %.loopexit93, !llvm.loop !47

341:                                              ; preds = %323
  %342 = icmp slt i32 %331, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %341
  %344 = load i32, ptr %317, align 4, !tbaa !45
  %345 = icmp eq i32 %344, 11
  br i1 %345, label %346, label %.loopexit98

346:                                              ; preds = %343
  store i32 1, ptr %46, align 4, !tbaa !17
  %347 = load i32, ptr %3, align 4, !tbaa !45
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %.loopexit93

349:                                              ; preds = %346
  %350 = load i32, ptr %317, align 4, !tbaa !45
  br label %.loopexit98

351:                                              ; preds = %341
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit93

.loopexit98:                                      ; preds = %343, %349
  %352 = phi i32 [ %350, %349 ], [ %344, %343 ]
  %353 = tail call ptr @strerror(i32 noundef %352) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %353) #13
  br label %.loopexit94

.loopexit93:                                      ; preds = %338, %351, %346
  %354 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %354, ptr %35, align 8, !tbaa !22
  br label %.loopexit96

355:                                              ; preds = %82
  %356 = load i32, ptr %40, align 8, !tbaa !27
  %357 = shl i32 %356, 1
  store i32 %357, ptr %41, align 8, !tbaa !48
  %358 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %358, ptr %43, align 8, !tbaa !49
  br label %359

359:                                              ; preds = %436, %355
  %360 = phi i32 [ 0, %355 ], [ %421, %436 ]
  %361 = load i32, ptr %38, align 8, !tbaa !34
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %420

363:                                              ; preds = %359
  %364 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %364, label %.loopexit90 [
    i32 0, label %365
    i32 -5, label %365
  ]

365:                                              ; preds = %363, %363
  %366 = load i32, ptr %37, align 8, !tbaa !24
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %416

368:                                              ; preds = %365
  %369 = load i32, ptr %40, align 8, !tbaa !27
  %370 = load ptr, ptr %45, align 8, !tbaa !29
  store i32 0, ptr %46, align 4, !tbaa !17
  %371 = tail call ptr @__errno_location() #17
  store i32 0, ptr %371, align 4, !tbaa !45
  br label %372

372:                                              ; preds = %391, %368
  %373 = phi i32 [ 0, %368 ], [ %392, %391 ]
  %374 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %369, i32 %373), !nosanitize !20
  %375 = extractvalue { i32, i1 } %374, 1, !nosanitize !20
  br i1 %375, label %376, label %377, !prof !21, !nosanitize !20

376:                                              ; preds = %372
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

377:                                              ; preds = %372
  %378 = extractvalue { i32, i1 } %374, 0, !nosanitize !20
  %379 = tail call i32 @llvm.umin.i32(i32 %378, i32 1073741824)
  %380 = load i32, ptr %47, align 4, !tbaa !46
  %381 = zext i32 %373 to i64
  %382 = getelementptr inbounds nuw i8, ptr %370, i64 %381
  %383 = zext nneg i32 %379 to i64
  %384 = tail call i64 @read(i32 noundef %380, ptr noundef %382, i64 noundef %383) #13
  %385 = trunc i64 %384 to i32
  %386 = icmp slt i32 %385, 1
  br i1 %386, label %394, label %387

387:                                              ; preds = %377
  %388 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %373, i32 %385), !nosanitize !20
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !20
  br i1 %389, label %390, label %391, !prof !21, !nosanitize !20

390:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

391:                                              ; preds = %387
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !20
  %393 = icmp ult i32 %392, %369
  br i1 %393, label %372, label %.loopexit84, !llvm.loop !47

394:                                              ; preds = %377
  %395 = icmp slt i32 %385, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %394
  %397 = load i32, ptr %371, align 4, !tbaa !45
  %398 = icmp eq i32 %397, 11
  br i1 %398, label %399, label %.loopexit92

399:                                              ; preds = %396
  store i32 1, ptr %46, align 4, !tbaa !17
  %400 = icmp eq i32 %373, 0
  br i1 %400, label %401, label %.loopexit84

401:                                              ; preds = %399
  %402 = load i32, ptr %371, align 4, !tbaa !45
  br label %.loopexit92

403:                                              ; preds = %394
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit84

.loopexit92:                                      ; preds = %396, %401
  %404 = phi i32 [ %402, %401 ], [ %397, %396 ]
  %405 = tail call ptr @strerror(i32 noundef %404) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %405) #13
  %406 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit90

.loopexit84:                                      ; preds = %391, %403, %399
  %407 = phi i32 [ %373, %403 ], [ %373, %399 ], [ %392, %391 ]
  %408 = load i32, ptr %38, align 8, !tbaa !34
  %409 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %408, i32 %407), !nosanitize !20
  %410 = extractvalue { i32, i1 } %409, 1, !nosanitize !20
  br i1 %410, label %411, label %412, !prof !21, !nosanitize !20

411:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

412:                                              ; preds = %.loopexit84
  %413 = extractvalue { i32, i1 } %409, 0, !nosanitize !20
  store i32 %413, ptr %38, align 8, !tbaa !34
  %414 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %414, ptr %44, align 8, !tbaa !35
  %415 = icmp eq i32 %413, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %412, %365
  %417 = load i32, ptr %46, align 4, !tbaa !17
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %.loopexit90

419:                                              ; preds = %416
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit90

420:                                              ; preds = %412, %359
  %421 = tail call i32 @inflate(ptr noundef nonnull %44, i32 noundef 0) #13
  %422 = load i32, ptr %41, align 8, !tbaa !48
  %423 = icmp ult i32 %422, %357
  br i1 %423, label %424, label %425

424:                                              ; preds = %420
  store i32 0, ptr %48, align 4, !tbaa !33
  br label %425

425:                                              ; preds = %424, %420
  switch i32 %421, label %436 [
    i32 -2, label %426
    i32 2, label %426
    i32 -4, label %427
    i32 -3, label %428
  ]

426:                                              ; preds = %425, %425
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit90

427:                                              ; preds = %425
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit90

428:                                              ; preds = %425
  %429 = load i32, ptr %48, align 4, !tbaa !33
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !24
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %.loopexit90

432:                                              ; preds = %428
  %433 = load ptr, ptr %49, align 8, !tbaa !50
  %434 = icmp eq ptr %433, null
  %435 = select i1 %434, ptr @.str.6, ptr %433
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %435) #13
  br label %.loopexit90

436:                                              ; preds = %425
  %437 = icmp ne i32 %422, 0
  %438 = icmp ne i32 %421, 1
  %439 = select i1 %437, i1 %438, i1 false
  br i1 %439, label %359, label %.loopexit90, !llvm.loop !51

.loopexit90:                                      ; preds = %436, %363, %432, %431, %427, %426, %419, %416, %.loopexit92
  %440 = phi i32 [ %360, %416 ], [ %360, %419 ], [ %421, %426 ], [ -4, %427 ], [ 0, %431 ], [ -3, %432 ], [ %406, %.loopexit92 ], [ %364, %363 ], [ %421, %436 ]
  %441 = load i32, ptr %41, align 8, !tbaa !48
  %442 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %357, i32 %441), !nosanitize !20
  %443 = extractvalue { i32, i1 } %442, 1, !nosanitize !20
  br i1 %443, label %444, label %445, !prof !21, !nosanitize !20

444:                                              ; preds = %.loopexit90
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

445:                                              ; preds = %.loopexit90
  %446 = extractvalue { i32, i1 } %442, 0, !nosanitize !20
  store i32 %446, ptr %3, align 8, !tbaa !19
  %447 = load ptr, ptr %43, align 8, !tbaa !49
  %448 = zext i32 %446 to i64
  %449 = sub nsw i64 0, %448
  %450 = getelementptr inbounds i8, ptr %447, i64 %449
  store ptr %450, ptr %35, align 8, !tbaa !22
  switch i32 %440, label %.loopexit94 [
    i32 1, label %451
    i32 0, label %453
  ]

451:                                              ; preds = %445
  store i32 0, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %453

452:                                              ; preds = %82
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit94

453:                                              ; preds = %451, %445, %310, %304
  %454 = load i32, ptr %3, align 8, !tbaa !19
  br label %455

455:                                              ; preds = %453, %306
  %456 = phi i32 [ %454, %453 ], [ %309, %306 ]
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %.loopexit96

458:                                              ; preds = %455
  %459 = load i32, ptr %37, align 8, !tbaa !24
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %.backedge, label %461

461:                                              ; preds = %458
  %462 = load i32, ptr %38, align 8, !tbaa !34
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %.loopexit96, label %.backedge

.backedge:                                        ; preds = %461, %458
  br label %82, !llvm.loop !52

.loopexit96:                                      ; preds = %461, %455, %310, %.loopexit93
  %464 = load i64, ptr %31, align 8, !tbaa !18
  br label %465

465:                                              ; preds = %.loopexit96, %73
  %466 = phi i64 [ %464, %.loopexit96 ], [ %75, %73 ]
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %.loopexit97, label %53, !llvm.loop !53

.loopexit97:                                      ; preds = %465, %79, %30
  %468 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %469 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %470 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %471 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %472 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %473 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %474 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %475 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %476 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %477 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %478 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %479 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %480 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %481 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %482 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %483 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %484 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %485 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %486

486:                                              ; preds = %.loopexit80, %.loopexit97
  %487 = phi ptr [ %0, %.loopexit97 ], [ %1070, %.loopexit80 ]
  %488 = phi i64 [ %19, %.loopexit97 ], [ %1071, %.loopexit80 ]
  %489 = phi i64 [ 0, %.loopexit97 ], [ %1072, %.loopexit80 ]
  %490 = tail call i64 @llvm.umin.i64(i64 %488, i64 4294967295)
  %491 = trunc nuw i64 %490 to i32
  %492 = load i32, ptr %3, align 8, !tbaa !19
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %509, label %494

494:                                              ; preds = %486
  %495 = tail call i32 @llvm.umin.i32(i32 %492, i32 %491)
  %496 = load ptr, ptr %468, align 8, !tbaa !22
  %497 = zext i32 %495 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %487, ptr align 1 %496, i64 %497, i1 false)
  %498 = load ptr, ptr %468, align 8, !tbaa !22
  %499 = getelementptr inbounds nuw i8, ptr %498, i64 %497
  store ptr %499, ptr %468, align 8, !tbaa !22
  %500 = load i32, ptr %3, align 8, !tbaa !19
  %501 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %500, i32 %495), !nosanitize !20
  %502 = extractvalue { i32, i1 } %501, 1, !nosanitize !20
  br i1 %502, label %503, label %504, !prof !21, !nosanitize !20

503:                                              ; preds = %494
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

504:                                              ; preds = %494
  %505 = extractvalue { i32, i1 } %501, 0, !nosanitize !20
  store i32 %505, ptr %3, align 8, !tbaa !19
  %506 = load i32, ptr %11, align 8, !tbaa !16
  %507 = icmp ne i32 %506, 0
  %508 = sext i1 %507 to i32
  br label %1051

509:                                              ; preds = %486
  %510 = load i32, ptr %469, align 8, !tbaa !24
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %515, label %512

512:                                              ; preds = %509
  %513 = load i32, ptr %470, align 8, !tbaa !25
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %1077, label %515

515:                                              ; preds = %512, %509
  %516 = load i32, ptr %471, align 8, !tbaa !26
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %.preheader770, label %518

518:                                              ; preds = %515
  %519 = load i32, ptr %472, align 8, !tbaa !27
  %520 = shl i32 %519, 1
  %521 = icmp ugt i32 %520, %491
  br i1 %521, label %.preheader770, label %910

.preheader770:                                    ; preds = %518, %515
  br label %522

522:                                              ; preds = %.preheader770, %905
  %523 = phi i32 [ %906, %905 ], [ %516, %.preheader770 ]
  switch i32 %523, label %893 [
    i32 0, label %524
    i32 1, label %753
    i32 2, label %796
  ]

524:                                              ; preds = %522
  %525 = load i32, ptr %472, align 8, !tbaa !27
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %544

527:                                              ; preds = %524
  %528 = load i32, ptr %483, align 4, !tbaa !28
  %529 = zext i32 %528 to i64
  %530 = tail call noalias ptr @malloc(i64 noundef %529) #16
  store ptr %530, ptr %476, align 8, !tbaa !29
  %531 = shl i32 %528, 1
  %532 = zext i32 %531 to i64
  %533 = tail call noalias ptr @malloc(i64 noundef %532) #16
  store ptr %533, ptr %482, align 8, !tbaa !30
  %534 = icmp eq ptr %530, null
  %535 = icmp eq ptr %533, null
  %536 = or i1 %534, %535
  br i1 %536, label %537, label %538

537:                                              ; preds = %527
  tail call void @free(ptr noundef %533) #13
  tail call void @free(ptr noundef %530) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

538:                                              ; preds = %527
  store i32 %528, ptr %472, align 8, !tbaa !27
  store i32 0, ptr %470, align 8, !tbaa !25
  store ptr null, ptr %475, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %484, i8 0, i64 24, i1 false)
  %539 = tail call i32 @inflateInit2_(ptr noundef nonnull %475, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %544, label %541

541:                                              ; preds = %538
  %542 = load ptr, ptr %482, align 8, !tbaa !30
  tail call void @free(ptr noundef %542) #13
  %543 = load ptr, ptr %476, align 8, !tbaa !29
  tail call void @free(ptr noundef %543) #13
  store i32 0, ptr %472, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

544:                                              ; preds = %538, %524
  %545 = load i32, ptr %485, align 8, !tbaa !32
  %546 = icmp eq i32 %545, -1
  br i1 %546, label %550, label %547

547:                                              ; preds = %544
  %548 = load i32, ptr %479, align 4, !tbaa !33
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %555

550:                                              ; preds = %547, %544
  %551 = tail call i32 @inflateReset(ptr noundef nonnull %475) #13
  store i32 2, ptr %471, align 8, !tbaa !26
  %552 = load i32, ptr %479, align 4, !tbaa !33
  %553 = icmp ne i32 %552, -1
  %554 = zext i1 %553 to i32
  store i32 %554, ptr %479, align 4, !tbaa !33
  store i32 0, ptr %485, align 8, !tbaa !32
  br label %750

555:                                              ; preds = %547
  %556 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %556, label %.loopexit78 [
    i32 0, label %557
    i32 -5, label %557
  ]

557:                                              ; preds = %555, %555
  %558 = load i32, ptr %469, align 8, !tbaa !24
  %559 = icmp eq i32 %558, 0
  %560 = load i32, ptr %470, align 8, !tbaa !34
  br i1 %559, label %561, label %718

561:                                              ; preds = %557
  %562 = icmp eq i32 %560, 0
  br i1 %562, label %664, label %563

563:                                              ; preds = %561
  %564 = load ptr, ptr %476, align 8, !tbaa !29
  %565 = load ptr, ptr %475, align 8, !tbaa !35
  %566 = icmp eq ptr %565, %564
  br i1 %566, label %664, label %567

567:                                              ; preds = %563
  %568 = ptrtoint ptr %565 to i64
  %569 = ptrtoint ptr %564 to i64
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
  br i1 %590, label %.loopexit71, label %591

591:                                              ; preds = %589
  %592 = getelementptr i8, ptr %564, i64 %578
  %593 = getelementptr i8, ptr %565, i64 %578
  %594 = trunc nuw i64 %578 to i32
  %595 = sub i32 %560, %594
  %596 = and i64 %570, 28
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %614, label %598

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
  br i1 %613, label %.loopexit71, label %614

614:                                              ; preds = %608, %591, %567
  %615 = phi ptr [ %564, %567 ], [ %592, %591 ], [ %609, %608 ]
  %616 = phi ptr [ %565, %567 ], [ %593, %591 ], [ %610, %608 ]
  %617 = phi i32 [ %560, %567 ], [ %595, %591 ], [ %612, %608 ]
  %618 = add i32 %617, -1
  %619 = and i32 %617, 7
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %.loopexit73, label %.preheader72

.preheader72:                                     ; preds = %614, %.preheader72
  %621 = phi ptr [ %625, %.preheader72 ], [ %615, %614 ]
  %622 = phi ptr [ %626, %.preheader72 ], [ %616, %614 ]
  %623 = phi i32 [ %627, %.preheader72 ], [ 0, %614 ]
  %624 = load i8, ptr %622, align 1, !tbaa !36
  store i8 %624, ptr %621, align 1, !tbaa !36
  %625 = getelementptr inbounds nuw i8, ptr %621, i64 1
  %626 = getelementptr inbounds nuw i8, ptr %622, i64 1
  %627 = add nuw nsw i32 %623, 1
  %628 = icmp eq i32 %627, %619
  br i1 %628, label %.loopexit73.loopexit, label %.preheader72, !llvm.loop !68

.loopexit73.loopexit:                             ; preds = %.preheader72
  %629 = and i32 %617, -8
  br label %.loopexit73

.loopexit73:                                      ; preds = %.loopexit73.loopexit, %614
  %630 = phi ptr [ %615, %614 ], [ %625, %.loopexit73.loopexit ]
  %631 = phi ptr [ %616, %614 ], [ %626, %.loopexit73.loopexit ]
  %632 = phi i32 [ %617, %614 ], [ %629, %.loopexit73.loopexit ]
  %633 = icmp ult i32 %618, 7
  br i1 %633, label %.loopexit71, label %.preheader

.preheader:                                       ; preds = %.loopexit73, %.preheader
  %634 = phi ptr [ %660, %.preheader ], [ %630, %.loopexit73 ]
  %635 = phi ptr [ %661, %.preheader ], [ %631, %.loopexit73 ]
  %636 = phi i32 [ %659, %.preheader ], [ %632, %.loopexit73 ]
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
  br i1 %662, label %.loopexit71, label %.preheader, !llvm.loop !69

.loopexit71:                                      ; preds = %.preheader, %.loopexit73, %608, %589
  %663 = load i32, ptr %470, align 8, !tbaa !34
  br label %664

664:                                              ; preds = %.loopexit71, %563, %561
  %665 = phi i32 [ %663, %.loopexit71 ], [ %560, %563 ], [ 0, %561 ]
  %666 = load i32, ptr %472, align 8, !tbaa !27
  %667 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %666, i32 %665), !nosanitize !20
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !20
  br i1 %668, label %669, label %670, !prof !21, !nosanitize !20

669:                                              ; preds = %664
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

670:                                              ; preds = %664
  %671 = extractvalue { i32, i1 } %667, 0, !nosanitize !20
  %672 = load ptr, ptr %476, align 8, !tbaa !29
  %673 = zext i32 %665 to i64
  %674 = getelementptr inbounds nuw i8, ptr %672, i64 %673
  store i32 0, ptr %477, align 4, !tbaa !17
  %675 = tail call ptr @__errno_location() #17
  store i32 0, ptr %675, align 4, !tbaa !45
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
  %684 = load i32, ptr %478, align 4, !tbaa !46
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
  br i1 %697, label %676, label %.loopexit70, !llvm.loop !47

698:                                              ; preds = %681
  %699 = icmp slt i32 %689, 0
  br i1 %699, label %700, label %707

700:                                              ; preds = %698
  %701 = load i32, ptr %675, align 4, !tbaa !45
  %702 = icmp eq i32 %701, 11
  br i1 %702, label %703, label %.loopexit79

703:                                              ; preds = %700
  store i32 1, ptr %477, align 4, !tbaa !17
  %704 = icmp eq i32 %677, 0
  br i1 %704, label %705, label %.loopexit70

705:                                              ; preds = %703
  %706 = load i32, ptr %675, align 4, !tbaa !45
  br label %.loopexit79

707:                                              ; preds = %698
  store i32 1, ptr %469, align 8, !tbaa !24
  br label %.loopexit70

.loopexit79:                                      ; preds = %700, %705
  %708 = phi i32 [ %706, %705 ], [ %701, %700 ]
  %709 = tail call ptr @strerror(i32 noundef %708) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %709) #13
  br label %.loopexit78

.loopexit70:                                      ; preds = %695, %707, %703
  %710 = phi i32 [ %677, %707 ], [ %677, %703 ], [ %696, %695 ]
  %711 = load i32, ptr %470, align 8, !tbaa !34
  %712 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %711, i32 %710), !nosanitize !20
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !20
  br i1 %713, label %714, label %715, !prof !21, !nosanitize !20

714:                                              ; preds = %.loopexit70
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

715:                                              ; preds = %.loopexit70
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !20
  store i32 %716, ptr %470, align 8, !tbaa !34
  %717 = load ptr, ptr %476, align 8, !tbaa !29
  store ptr %717, ptr %475, align 8, !tbaa !35
  br label %718

718:                                              ; preds = %715, %557
  %719 = phi i32 [ %716, %715 ], [ %560, %557 ]
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %750, label %721

721:                                              ; preds = %718
  %722 = load i32, ptr %477, align 4, !tbaa !17
  %723 = icmp ne i32 %722, 0
  %724 = icmp ult i32 %719, 4
  %725 = and i1 %724, %723
  br i1 %725, label %750, label %726

726:                                              ; preds = %721
  %727 = icmp ugt i32 %719, 3
  %728 = load ptr, ptr %475, align 8, !tbaa !35
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
  %745 = tail call i32 @inflateReset(ptr noundef nonnull %475) #13
  store i32 2, ptr %471, align 8, !tbaa !26
  store i32 1, ptr %479, align 4, !tbaa !33
  store i32 0, ptr %485, align 8, !tbaa !32
  br label %894

746:                                              ; preds = %740, %736, %732, %729, %726
  %747 = load ptr, ptr %482, align 8, !tbaa !30
  store ptr %747, ptr %468, align 8, !tbaa !22
  %748 = zext i32 %719 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %747, ptr align 1 %728, i64 %748, i1 false)
  %749 = load i32, ptr %470, align 8, !tbaa !34
  store i32 %749, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %470, align 8, !tbaa !34
  store i32 1, ptr %471, align 8, !tbaa !26
  br label %896

750:                                              ; preds = %721, %718, %550
  %751 = load i32, ptr %471, align 8, !tbaa !26
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %.loopexit80, label %894

753:                                              ; preds = %522
  %754 = load ptr, ptr %482, align 8, !tbaa !30
  %755 = load i32, ptr %472, align 8, !tbaa !27
  %756 = shl i32 %755, 1
  store i32 0, ptr %477, align 4, !tbaa !17
  %757 = tail call ptr @__errno_location() #17
  store i32 0, ptr %757, align 4, !tbaa !45
  store i32 0, ptr %3, align 8, !tbaa !45
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
  %766 = load i32, ptr %478, align 4, !tbaa !46
  %767 = zext i32 %759 to i64
  %768 = getelementptr inbounds nuw i8, ptr %754, i64 %767
  %769 = zext nneg i32 %765 to i64
  %770 = tail call i64 @read(i32 noundef %766, ptr noundef %768, i64 noundef %769) #13
  %771 = trunc i64 %770 to i32
  %772 = icmp slt i32 %771, 1
  br i1 %772, label %781, label %773

773:                                              ; preds = %763
  %774 = load i32, ptr %3, align 4, !tbaa !45
  %775 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %774, i32 %771), !nosanitize !20
  %776 = extractvalue { i32, i1 } %775, 1, !nosanitize !20
  br i1 %776, label %777, label %778, !prof !21, !nosanitize !20

777:                                              ; preds = %773
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

778:                                              ; preds = %773
  %779 = extractvalue { i32, i1 } %775, 0, !nosanitize !20
  store i32 %779, ptr %3, align 4, !tbaa !45
  %780 = icmp ult i32 %779, %756
  br i1 %780, label %758, label %.loopexit77, !llvm.loop !47

781:                                              ; preds = %763
  %782 = icmp slt i32 %771, 0
  br i1 %782, label %783, label %791

783:                                              ; preds = %781
  %784 = load i32, ptr %757, align 4, !tbaa !45
  %785 = icmp eq i32 %784, 11
  br i1 %785, label %786, label %792

786:                                              ; preds = %783
  store i32 1, ptr %477, align 4, !tbaa !17
  %787 = load i32, ptr %3, align 4, !tbaa !45
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %.loopexit77

789:                                              ; preds = %786
  %790 = load i32, ptr %757, align 4, !tbaa !45
  br label %792

791:                                              ; preds = %781
  store i32 1, ptr %469, align 8, !tbaa !24
  br label %.loopexit77

792:                                              ; preds = %789, %783
  %793 = phi i32 [ %790, %789 ], [ %784, %783 ]
  %794 = tail call ptr @strerror(i32 noundef %793) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %794) #13
  br label %.loopexit78

.loopexit77:                                      ; preds = %778, %791, %786
  %795 = load ptr, ptr %482, align 8, !tbaa !30
  store ptr %795, ptr %468, align 8, !tbaa !22
  br label %.loopexit80

796:                                              ; preds = %522
  %797 = load i32, ptr %472, align 8, !tbaa !27
  %798 = shl i32 %797, 1
  store i32 %798, ptr %473, align 8, !tbaa !48
  %799 = load ptr, ptr %482, align 8, !tbaa !30
  store ptr %799, ptr %474, align 8, !tbaa !49
  br label %800

800:                                              ; preds = %877, %796
  %801 = phi i32 [ 0, %796 ], [ %862, %877 ]
  %802 = load i32, ptr %470, align 8, !tbaa !34
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %861

804:                                              ; preds = %800
  %805 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %805, label %.loopexit74 [
    i32 0, label %806
    i32 -5, label %806
  ]

806:                                              ; preds = %804, %804
  %807 = load i32, ptr %469, align 8, !tbaa !24
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %857

809:                                              ; preds = %806
  %810 = load i32, ptr %472, align 8, !tbaa !27
  %811 = load ptr, ptr %476, align 8, !tbaa !29
  store i32 0, ptr %477, align 4, !tbaa !17
  %812 = tail call ptr @__errno_location() #17
  store i32 0, ptr %812, align 4, !tbaa !45
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
  %821 = load i32, ptr %478, align 4, !tbaa !46
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
  %838 = load i32, ptr %812, align 4, !tbaa !45
  %839 = icmp eq i32 %838, 11
  br i1 %839, label %840, label %.loopexit75

840:                                              ; preds = %837
  store i32 1, ptr %477, align 4, !tbaa !17
  %841 = icmp eq i32 %814, 0
  br i1 %841, label %842, label %.loopexit

842:                                              ; preds = %840
  %843 = load i32, ptr %812, align 4, !tbaa !45
  br label %.loopexit75

844:                                              ; preds = %835
  store i32 1, ptr %469, align 8, !tbaa !24
  br label %.loopexit

.loopexit75:                                      ; preds = %837, %842
  %845 = phi i32 [ %843, %842 ], [ %838, %837 ]
  %846 = tail call ptr @strerror(i32 noundef %845) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %846) #13
  %847 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit74

.loopexit:                                        ; preds = %832, %844, %840
  %848 = phi i32 [ %814, %844 ], [ %814, %840 ], [ %833, %832 ]
  %849 = load i32, ptr %470, align 8, !tbaa !34
  %850 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %849, i32 %848), !nosanitize !20
  %851 = extractvalue { i32, i1 } %850, 1, !nosanitize !20
  br i1 %851, label %852, label %853, !prof !21, !nosanitize !20

852:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

853:                                              ; preds = %.loopexit
  %854 = extractvalue { i32, i1 } %850, 0, !nosanitize !20
  store i32 %854, ptr %470, align 8, !tbaa !34
  %855 = load ptr, ptr %476, align 8, !tbaa !29
  store ptr %855, ptr %475, align 8, !tbaa !35
  %856 = icmp eq i32 %854, 0
  br i1 %856, label %857, label %861

857:                                              ; preds = %853, %806
  %858 = load i32, ptr %477, align 4, !tbaa !17
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %.loopexit74

860:                                              ; preds = %857
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit74

861:                                              ; preds = %853, %800
  %862 = tail call i32 @inflate(ptr noundef nonnull %475, i32 noundef 0) #13
  %863 = load i32, ptr %473, align 8, !tbaa !48
  %864 = icmp ult i32 %863, %798
  br i1 %864, label %865, label %866

865:                                              ; preds = %861
  store i32 0, ptr %479, align 4, !tbaa !33
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
  br label %.loopexit74

868:                                              ; preds = %866
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit74

869:                                              ; preds = %866
  %870 = load i32, ptr %479, align 4, !tbaa !33
  %871 = icmp eq i32 %870, 1
  br i1 %871, label %872, label %873

872:                                              ; preds = %869
  store i32 0, ptr %470, align 8, !tbaa !34
  store i32 1, ptr %469, align 8, !tbaa !24
  store i32 0, ptr %471, align 8, !tbaa !26
  br label %.loopexit74

873:                                              ; preds = %869
  %874 = load ptr, ptr %480, align 8, !tbaa !50
  %875 = icmp eq ptr %874, null
  %876 = select i1 %875, ptr @.str.6, ptr %874
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %876) #13
  br label %.loopexit74

877:                                              ; preds = %866
  %878 = icmp ne i32 %863, 0
  %879 = icmp ne i32 %862, 1
  %880 = select i1 %878, i1 %879, i1 false
  br i1 %880, label %800, label %.loopexit74, !llvm.loop !51

.loopexit74:                                      ; preds = %877, %804, %873, %872, %868, %867, %860, %857, %.loopexit75
  %881 = phi i32 [ %801, %857 ], [ %801, %860 ], [ %862, %867 ], [ -4, %868 ], [ 0, %872 ], [ -3, %873 ], [ %847, %.loopexit75 ], [ %862, %877 ], [ %805, %804 ]
  %882 = load i32, ptr %473, align 8, !tbaa !48
  %883 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %798, i32 %882), !nosanitize !20
  %884 = extractvalue { i32, i1 } %883, 1, !nosanitize !20
  br i1 %884, label %885, label %886, !prof !21, !nosanitize !20

885:                                              ; preds = %.loopexit74
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

886:                                              ; preds = %.loopexit74
  %887 = extractvalue { i32, i1 } %883, 0, !nosanitize !20
  store i32 %887, ptr %3, align 8, !tbaa !19
  %888 = load ptr, ptr %474, align 8, !tbaa !49
  %889 = zext i32 %887 to i64
  %890 = sub nsw i64 0, %889
  %891 = getelementptr inbounds i8, ptr %888, i64 %890
  store ptr %891, ptr %468, align 8, !tbaa !22
  switch i32 %881, label %.loopexit78 [
    i32 1, label %892
    i32 0, label %894
  ]

892:                                              ; preds = %886
  store i32 0, ptr %479, align 4, !tbaa !33
  store i32 0, ptr %471, align 8, !tbaa !26
  br label %894

893:                                              ; preds = %522
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit78

894:                                              ; preds = %892, %886, %750, %744
  %895 = load i32, ptr %3, align 8, !tbaa !19
  br label %896

896:                                              ; preds = %894, %746
  %897 = phi i32 [ %895, %894 ], [ %749, %746 ]
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %899, label %.loopexit80

899:                                              ; preds = %896
  %900 = load i32, ptr %469, align 8, !tbaa !24
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %905, label %902

902:                                              ; preds = %899
  %903 = load i32, ptr %470, align 8, !tbaa !34
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %.loopexit80, label %905

905:                                              ; preds = %902, %899
  %906 = load i32, ptr %471, align 8, !tbaa !26
  br label %522, !llvm.loop !52

.loopexit78:                                      ; preds = %886, %555, %893, %792, %.loopexit79, %541, %537
  %907 = load i32, ptr %3, align 8, !tbaa !19
  %908 = icmp eq i32 %907, 0
  %909 = sext i1 %908 to i32
  br label %.loopexit80

910:                                              ; preds = %518
  %911 = icmp eq i32 %516, 1
  br i1 %911, label %912, label %949

912:                                              ; preds = %910
  store i32 0, ptr %477, align 4, !tbaa !17
  %913 = tail call ptr @__errno_location() #17
  store i32 0, ptr %913, align 4, !tbaa !45
  br label %914

914:                                              ; preds = %933, %912
  %915 = phi i32 [ 0, %912 ], [ %934, %933 ]
  %916 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %491, i32 %915), !nosanitize !20
  %917 = extractvalue { i32, i1 } %916, 1, !nosanitize !20
  br i1 %917, label %918, label %919, !prof !21, !nosanitize !20

918:                                              ; preds = %914
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

919:                                              ; preds = %914
  %920 = extractvalue { i32, i1 } %916, 0, !nosanitize !20
  %921 = tail call i32 @llvm.umin.i32(i32 %920, i32 1073741824)
  %922 = load i32, ptr %478, align 4, !tbaa !46
  %923 = zext i32 %915 to i64
  %924 = getelementptr inbounds nuw i8, ptr %487, i64 %923
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
  %935 = icmp ult i32 %934, %491
  br i1 %935, label %914, label %1049, !llvm.loop !47

936:                                              ; preds = %919
  %937 = icmp slt i32 %927, 0
  br i1 %937, label %938, label %948

938:                                              ; preds = %936
  %939 = load i32, ptr %913, align 4, !tbaa !45
  %940 = icmp eq i32 %939, 11
  br i1 %940, label %941, label %945

941:                                              ; preds = %938
  store i32 1, ptr %477, align 4, !tbaa !17
  %942 = icmp eq i32 %915, 0
  br i1 %942, label %943, label %1051

943:                                              ; preds = %941
  %944 = load i32, ptr %913, align 4, !tbaa !45
  br label %945

945:                                              ; preds = %943, %938
  %946 = phi i32 [ %944, %943 ], [ %939, %938 ]
  %947 = tail call ptr @strerror(i32 noundef %946) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %947) #13
  br label %1051

948:                                              ; preds = %936
  store i32 1, ptr %469, align 8, !tbaa !24
  br label %1051

949:                                              ; preds = %910
  store i32 %491, ptr %473, align 8, !tbaa !58
  store ptr %487, ptr %474, align 8, !tbaa !59
  br label %950

950:                                              ; preds = %1027, %949
  %951 = phi i32 [ 0, %949 ], [ %1012, %1027 ]
  %952 = load i32, ptr %470, align 8, !tbaa !34
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %1011

954:                                              ; preds = %950
  %955 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %955, label %.loopexit81 [
    i32 0, label %956
    i32 -5, label %956
  ]

956:                                              ; preds = %954, %954
  %957 = load i32, ptr %469, align 8, !tbaa !24
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %1007

959:                                              ; preds = %956
  %960 = load i32, ptr %472, align 8, !tbaa !27
  %961 = load ptr, ptr %476, align 8, !tbaa !29
  store i32 0, ptr %477, align 4, !tbaa !17
  %962 = tail call ptr @__errno_location() #17
  store i32 0, ptr %962, align 4, !tbaa !45
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
  %971 = load i32, ptr %478, align 4, !tbaa !46
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
  br i1 %984, label %963, label %.loopexit76, !llvm.loop !47

985:                                              ; preds = %968
  %986 = icmp slt i32 %976, 0
  br i1 %986, label %987, label %994

987:                                              ; preds = %985
  %988 = load i32, ptr %962, align 4, !tbaa !45
  %989 = icmp eq i32 %988, 11
  br i1 %989, label %990, label %.loopexit83

990:                                              ; preds = %987
  store i32 1, ptr %477, align 4, !tbaa !17
  %991 = icmp eq i32 %964, 0
  br i1 %991, label %992, label %.loopexit76

992:                                              ; preds = %990
  %993 = load i32, ptr %962, align 4, !tbaa !45
  br label %.loopexit83

994:                                              ; preds = %985
  store i32 1, ptr %469, align 8, !tbaa !24
  br label %.loopexit76

.loopexit83:                                      ; preds = %987, %992
  %995 = phi i32 [ %993, %992 ], [ %988, %987 ]
  %996 = tail call ptr @strerror(i32 noundef %995) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %996) #13
  %997 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit81

.loopexit76:                                      ; preds = %982, %994, %990
  %998 = phi i32 [ %964, %994 ], [ %964, %990 ], [ %983, %982 ]
  %999 = load i32, ptr %470, align 8, !tbaa !34
  %1000 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %999, i32 %998), !nosanitize !20
  %1001 = extractvalue { i32, i1 } %1000, 1, !nosanitize !20
  br i1 %1001, label %1002, label %1003, !prof !21, !nosanitize !20

1002:                                             ; preds = %.loopexit76
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1003:                                             ; preds = %.loopexit76
  %1004 = extractvalue { i32, i1 } %1000, 0, !nosanitize !20
  store i32 %1004, ptr %470, align 8, !tbaa !34
  %1005 = load ptr, ptr %476, align 8, !tbaa !29
  store ptr %1005, ptr %475, align 8, !tbaa !35
  %1006 = icmp eq i32 %1004, 0
  br i1 %1006, label %1007, label %1011

1007:                                             ; preds = %1003, %956
  %1008 = load i32, ptr %477, align 4, !tbaa !17
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1010, label %.loopexit81

1010:                                             ; preds = %1007
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit81

1011:                                             ; preds = %1003, %950
  %1012 = tail call i32 @inflate(ptr noundef nonnull %475, i32 noundef 0) #13
  %1013 = load i32, ptr %473, align 8, !tbaa !48
  %1014 = icmp ult i32 %1013, %491
  br i1 %1014, label %1015, label %1016

1015:                                             ; preds = %1011
  store i32 0, ptr %479, align 4, !tbaa !33
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
  br label %.loopexit81

1018:                                             ; preds = %1016
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit81

1019:                                             ; preds = %1016
  %1020 = load i32, ptr %479, align 4, !tbaa !33
  %1021 = icmp eq i32 %1020, 1
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %1019
  store i32 0, ptr %470, align 8, !tbaa !34
  store i32 1, ptr %469, align 8, !tbaa !24
  store i32 0, ptr %471, align 8, !tbaa !26
  br label %.loopexit81

1023:                                             ; preds = %1019
  %1024 = load ptr, ptr %480, align 8, !tbaa !50
  %1025 = icmp eq ptr %1024, null
  %1026 = select i1 %1025, ptr @.str.6, ptr %1024
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %1026) #13
  br label %.loopexit81

1027:                                             ; preds = %1016
  %1028 = icmp ne i32 %1013, 0
  %1029 = icmp ne i32 %1012, 1
  %1030 = select i1 %1028, i1 %1029, i1 false
  br i1 %1030, label %950, label %.loopexit81, !llvm.loop !51

.loopexit81:                                      ; preds = %1027, %954, %1023, %1022, %1018, %1017, %1010, %1007, %.loopexit83
  %1031 = phi i32 [ %951, %1007 ], [ %951, %1010 ], [ %1012, %1017 ], [ -4, %1018 ], [ 0, %1022 ], [ -3, %1023 ], [ %997, %.loopexit83 ], [ %955, %954 ], [ %1012, %1027 ]
  %1032 = load i32, ptr %473, align 8, !tbaa !48
  %1033 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %491, i32 %1032), !nosanitize !20
  %1034 = extractvalue { i32, i1 } %1033, 1, !nosanitize !20
  br i1 %1034, label %1035, label %1036, !prof !21, !nosanitize !20

1035:                                             ; preds = %.loopexit81
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1036:                                             ; preds = %.loopexit81
  %1037 = extractvalue { i32, i1 } %1033, 0, !nosanitize !20
  %1038 = load ptr, ptr %474, align 8, !tbaa !49
  %1039 = zext i32 %1037 to i64
  %1040 = sub nsw i64 0, %1039
  %1041 = getelementptr inbounds i8, ptr %1038, i64 %1040
  store ptr %1041, ptr %468, align 8, !tbaa !22
  %1042 = icmp eq i32 %1031, 1
  br i1 %1042, label %1043, label %1044

1043:                                             ; preds = %1036
  store i32 0, ptr %479, align 4, !tbaa !33
  store i32 0, ptr %471, align 8, !tbaa !26
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

1051:                                             ; preds = %1049, %1047, %948, %945, %941, %504
  %1052 = phi i64 [ %1050, %1049 ], [ %923, %948 ], [ %923, %945 ], [ %923, %941 ], [ %497, %504 ], [ %1039, %1047 ]
  %1053 = phi i32 [ 0, %1049 ], [ 0, %948 ], [ -1, %945 ], [ 0, %941 ], [ %508, %504 ], [ %1048, %1047 ]
  %1054 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %488, i64 %1052), !nosanitize !20
  %1055 = extractvalue { i64, i1 } %1054, 0, !nosanitize !20
  %1056 = extractvalue { i64, i1 } %1054, 1, !nosanitize !20
  br i1 %1056, label %1057, label %1058, !prof !21, !nosanitize !20

1057:                                             ; preds = %1051
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1058:                                             ; preds = %1051
  %1059 = getelementptr inbounds nuw i8, ptr %487, i64 %1052
  %1060 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %489, i64 %1052), !nosanitize !20
  %1061 = extractvalue { i64, i1 } %1060, 0, !nosanitize !20
  %1062 = extractvalue { i64, i1 } %1060, 1, !nosanitize !20
  br i1 %1062, label %1063, label %1064, !prof !21, !nosanitize !20

1063:                                             ; preds = %1064, %1058
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1064:                                             ; preds = %1058
  %1065 = load i64, ptr %481, align 8, !tbaa !23
  %1066 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1065, i64 %1052), !nosanitize !20
  %1067 = extractvalue { i64, i1 } %1066, 1, !nosanitize !20
  br i1 %1067, label %1063, label %1068, !prof !21, !nosanitize !20

1068:                                             ; preds = %1064
  %1069 = extractvalue { i64, i1 } %1066, 0, !nosanitize !20
  store i64 %1069, ptr %481, align 8, !tbaa !23
  br label %.loopexit80

.loopexit80:                                      ; preds = %902, %896, %750, %1068, %.loopexit78, %.loopexit77
  %1070 = phi ptr [ %1059, %1068 ], [ %487, %.loopexit78 ], [ %487, %.loopexit77 ], [ %487, %750 ], [ %487, %896 ], [ %487, %902 ]
  %1071 = phi i64 [ %1055, %1068 ], [ %488, %.loopexit78 ], [ %488, %.loopexit77 ], [ %488, %750 ], [ %488, %896 ], [ %488, %902 ]
  %1072 = phi i64 [ %1061, %1068 ], [ %489, %.loopexit78 ], [ %489, %.loopexit77 ], [ %489, %750 ], [ %489, %896 ], [ %489, %902 ]
  %1073 = phi i32 [ %1053, %1068 ], [ %909, %.loopexit78 ], [ 0, %.loopexit77 ], [ 0, %750 ], [ 0, %896 ], [ 0, %902 ]
  %1074 = icmp ne i64 %1071, 0
  %1075 = icmp eq i32 %1073, 0
  %1076 = select i1 %1074, i1 %1075, i1 false
  br i1 %1076, label %486, label %1077, !llvm.loop !60

1077:                                             ; preds = %.loopexit80, %512
  %1078 = phi i64 [ %1071, %.loopexit80 ], [ %488, %512 ]
  %1079 = phi i64 [ %1072, %.loopexit80 ], [ %489, %512 ]
  %1080 = icmp eq i64 %1078, 0
  br i1 %1080, label %.loopexit94, label %1081

1081:                                             ; preds = %1077
  %1082 = load i32, ptr %469, align 8, !tbaa !24
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %.loopexit94, label %1084

1084:                                             ; preds = %1081
  %1085 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1085, align 4, !tbaa !61
  br label %.loopexit94

.loopexit94:                                      ; preds = %445, %115, %1084, %1081, %1077, %452, %.loopexit98, %.loopexit95, %101, %97
  %1086 = phi i64 [ %1079, %1084 ], [ %1079, %1081 ], [ %1079, %1077 ], [ 0, %452 ], [ 0, %.loopexit98 ], [ 0, %97 ], [ 0, %101 ], [ 0, %.loopexit95 ], [ 0, %115 ], [ 0, %445 ]
  %1087 = udiv i64 %1086, %1
  br label %1088

1088:                                             ; preds = %.loopexit94, %28, %27, %13, %6, %4
  %1089 = phi i64 [ 0, %27 ], [ 0, %4 ], [ 0, %6 ], [ 0, %13 ], [ %1087, %.loopexit94 ], [ 0, %28 ]
  ret i64 %1089
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1089, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1089

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
  br i1 %14, label %1089, label %15

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
  br label %1089

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %.loopexit112, label %36

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

55:                                               ; preds = %470, %36
  %56 = phi i64 [ %471, %470 ], [ %34, %36 ]
  %57 = load i32, ptr %0, align 8, !tbaa !19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %55
  %60 = zext i32 %57 to i64
  %61 = tail call i64 @llvm.smin.i64(i64 %56, i64 %60)
  %62 = trunc i64 %61 to i32
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 %62), !nosanitize !20
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !20
  br i1 %64, label %65, label %66, !prof !21, !nosanitize !20

65:                                               ; preds = %59
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
  %77 = sub i64 %56, %69
  store i64 %77, ptr %33, align 8, !tbaa !18
  br label %470

78:                                               ; preds = %55
  %79 = load i32, ptr %39, align 8, !tbaa !24
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %.preheader1003, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %40, align 8, !tbaa !25
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %.loopexit112, label %.preheader1003

.preheader1003:                                   ; preds = %81, %78
  br label %84

84:                                               ; preds = %.backedge, %.preheader1003
  %85 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %85, label %457 [
    i32 0, label %86
    i32 1, label %315
    i32 2, label %353
  ]

86:                                               ; preds = %84
  %87 = load i32, ptr %42, align 8, !tbaa !27
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load i32, ptr %52, align 4, !tbaa !28
  %91 = zext i32 %90 to i64
  %92 = tail call noalias ptr @malloc(i64 noundef %91) #16
  store ptr %92, ptr %47, align 8, !tbaa !29
  %93 = shl i32 %90, 1
  %94 = zext i32 %93 to i64
  %95 = tail call noalias ptr @malloc(i64 noundef %94) #16
  store ptr %95, ptr %44, align 8, !tbaa !30
  %96 = icmp eq ptr %92, null
  %97 = icmp eq ptr %95, null
  %98 = or i1 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  tail call void @free(ptr noundef %95) #13
  tail call void @free(ptr noundef %92) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit109

100:                                              ; preds = %89
  store i32 %90, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %101 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %104) #13
  %105 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %105) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit109

106:                                              ; preds = %100, %86
  %107 = load i32, ptr %54, align 8, !tbaa !32
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, ptr %50, align 4, !tbaa !33
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109, %106
  %113 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %114 = load i32, ptr %50, align 4, !tbaa !33
  %115 = icmp ne i32 %114, -1
  %116 = zext i1 %115 to i32
  store i32 %116, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %312

117:                                              ; preds = %109
  %118 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %118, label %.loopexit109 [
    i32 0, label %119
    i32 -5, label %119
  ]

119:                                              ; preds = %117, %117
  %120 = load i32, ptr %39, align 8, !tbaa !24
  %121 = icmp eq i32 %120, 0
  %122 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %121, label %123, label %280

123:                                              ; preds = %119
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %226, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr %47, align 8, !tbaa !29
  %127 = load ptr, ptr %46, align 8, !tbaa !35
  %128 = icmp eq ptr %127, %126
  br i1 %128, label %226, label %129

129:                                              ; preds = %125
  %130 = ptrtoint ptr %127 to i64
  %131 = ptrtoint ptr %126 to i64
  %132 = zext i32 %122 to i64
  %133 = icmp ult i32 %122, 4
  %134 = sub i64 %131, %130
  %135 = icmp ult i64 %134, 32
  %136 = or i1 %133, %135
  br i1 %136, label %176, label %137

137:                                              ; preds = %129
  %138 = icmp ult i32 %122, 32
  br i1 %138, label %160, label %139

139:                                              ; preds = %137
  %140 = and i64 %132, 4294967264
  br label %141

141:                                              ; preds = %141, %139
  %142 = phi i64 [ 0, %139 ], [ %149, %141 ]
  %143 = getelementptr i8, ptr %126, i64 %142
  %144 = getelementptr i8, ptr %127, i64 %142
  %145 = getelementptr i8, ptr %144, i64 16
  %146 = load <16 x i8>, ptr %144, align 1, !tbaa !36
  %147 = load <16 x i8>, ptr %145, align 1, !tbaa !36
  %148 = getelementptr i8, ptr %143, i64 16
  store <16 x i8> %146, ptr %143, align 1, !tbaa !36
  store <16 x i8> %147, ptr %148, align 1, !tbaa !36
  %149 = add nuw nsw i64 %142, 32
  %150 = icmp eq i64 %149, %140
  br i1 %150, label %151, label %141, !llvm.loop !70

151:                                              ; preds = %141
  %152 = icmp eq i64 %140, %132
  br i1 %152, label %.loopexit102, label %153

153:                                              ; preds = %151
  %154 = getelementptr i8, ptr %126, i64 %140
  %155 = getelementptr i8, ptr %127, i64 %140
  %156 = trunc nuw i64 %140 to i32
  %157 = sub i32 %122, %156
  %158 = and i64 %132, 28
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %176, label %160

160:                                              ; preds = %153, %137
  %161 = phi i64 [ %140, %153 ], [ 0, %137 ]
  %162 = and i64 %132, 4294967292
  br label %163

163:                                              ; preds = %163, %160
  %164 = phi i64 [ %161, %160 ], [ %168, %163 ]
  %165 = getelementptr i8, ptr %126, i64 %164
  %166 = getelementptr i8, ptr %127, i64 %164
  %167 = load <4 x i8>, ptr %166, align 1, !tbaa !36
  store <4 x i8> %167, ptr %165, align 1, !tbaa !36
  %168 = add nuw i64 %164, 4
  %169 = icmp eq i64 %168, %162
  br i1 %169, label %170, label %163, !llvm.loop !71

170:                                              ; preds = %163
  %171 = getelementptr i8, ptr %126, i64 %162
  %172 = getelementptr i8, ptr %127, i64 %162
  %173 = trunc nuw i64 %162 to i32
  %174 = sub i32 %122, %173
  %175 = icmp eq i64 %162, %132
  br i1 %175, label %.loopexit102, label %176

176:                                              ; preds = %170, %153, %129
  %177 = phi ptr [ %126, %129 ], [ %154, %153 ], [ %171, %170 ]
  %178 = phi ptr [ %127, %129 ], [ %155, %153 ], [ %172, %170 ]
  %179 = phi i32 [ %122, %129 ], [ %157, %153 ], [ %174, %170 ]
  %180 = add i32 %179, -1
  %181 = and i32 %179, 7
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %.loopexit104, label %.preheader103

.preheader103:                                    ; preds = %176, %.preheader103
  %183 = phi ptr [ %187, %.preheader103 ], [ %177, %176 ]
  %184 = phi ptr [ %188, %.preheader103 ], [ %178, %176 ]
  %185 = phi i32 [ %189, %.preheader103 ], [ 0, %176 ]
  %186 = load i8, ptr %184, align 1, !tbaa !36
  store i8 %186, ptr %183, align 1, !tbaa !36
  %187 = getelementptr inbounds nuw i8, ptr %183, i64 1
  %188 = getelementptr inbounds nuw i8, ptr %184, i64 1
  %189 = add nuw nsw i32 %185, 1
  %190 = icmp eq i32 %189, %181
  br i1 %190, label %.loopexit104.loopexit, label %.preheader103, !llvm.loop !72

.loopexit104.loopexit:                            ; preds = %.preheader103
  %191 = and i32 %179, -8
  br label %.loopexit104

.loopexit104:                                     ; preds = %.loopexit104.loopexit, %176
  %192 = phi ptr [ %177, %176 ], [ %187, %.loopexit104.loopexit ]
  %193 = phi ptr [ %178, %176 ], [ %188, %.loopexit104.loopexit ]
  %194 = phi i32 [ %179, %176 ], [ %191, %.loopexit104.loopexit ]
  %195 = icmp ult i32 %180, 7
  br i1 %195, label %.loopexit102, label %.preheader101

.preheader101:                                    ; preds = %.loopexit104, %.preheader101
  %196 = phi ptr [ %222, %.preheader101 ], [ %192, %.loopexit104 ]
  %197 = phi ptr [ %223, %.preheader101 ], [ %193, %.loopexit104 ]
  %198 = phi i32 [ %221, %.preheader101 ], [ %194, %.loopexit104 ]
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
  br i1 %224, label %.loopexit102, label %.preheader101, !llvm.loop !73

.loopexit102:                                     ; preds = %.preheader101, %.loopexit104, %170, %151
  %225 = load i32, ptr %40, align 8, !tbaa !34
  br label %226

226:                                              ; preds = %.loopexit102, %125, %123
  %227 = phi i32 [ %225, %.loopexit102 ], [ %122, %125 ], [ 0, %123 ]
  %228 = load i32, ptr %42, align 8, !tbaa !27
  %229 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %228, i32 %227), !nosanitize !20
  %230 = extractvalue { i32, i1 } %229, 1, !nosanitize !20
  br i1 %230, label %231, label %232, !prof !21, !nosanitize !20

231:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

232:                                              ; preds = %226
  %233 = extractvalue { i32, i1 } %229, 0, !nosanitize !20
  %234 = load ptr, ptr %47, align 8, !tbaa !29
  %235 = zext i32 %227 to i64
  %236 = getelementptr inbounds nuw i8, ptr %234, i64 %235
  store i32 0, ptr %48, align 4, !tbaa !17
  %237 = tail call ptr @__errno_location() #17
  store i32 0, ptr %237, align 4, !tbaa !45
  br label %238

238:                                              ; preds = %257, %232
  %239 = phi i32 [ 0, %232 ], [ %258, %257 ]
  %240 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %233, i32 %239), !nosanitize !20
  %241 = extractvalue { i32, i1 } %240, 1, !nosanitize !20
  br i1 %241, label %242, label %243, !prof !21, !nosanitize !20

242:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

243:                                              ; preds = %238
  %244 = extractvalue { i32, i1 } %240, 0, !nosanitize !20
  %245 = tail call i32 @llvm.umin.i32(i32 %244, i32 1073741824)
  %246 = load i32, ptr %49, align 4, !tbaa !46
  %247 = zext i32 %239 to i64
  %248 = getelementptr inbounds nuw i8, ptr %236, i64 %247
  %249 = zext nneg i32 %245 to i64
  %250 = tail call i64 @read(i32 noundef %246, ptr noundef %248, i64 noundef %249) #13
  %251 = trunc i64 %250 to i32
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %260, label %253

253:                                              ; preds = %243
  %254 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %251), !nosanitize !20
  %255 = extractvalue { i32, i1 } %254, 1, !nosanitize !20
  br i1 %255, label %256, label %257, !prof !21, !nosanitize !20

256:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

257:                                              ; preds = %253
  %258 = extractvalue { i32, i1 } %254, 0, !nosanitize !20
  %259 = icmp ult i32 %258, %233
  br i1 %259, label %238, label %.loopexit100, !llvm.loop !47

260:                                              ; preds = %243
  %261 = icmp slt i32 %251, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %260
  %263 = load i32, ptr %237, align 4, !tbaa !45
  %264 = icmp eq i32 %263, 11
  br i1 %264, label %265, label %.loopexit110

265:                                              ; preds = %262
  store i32 1, ptr %48, align 4, !tbaa !17
  %266 = icmp eq i32 %239, 0
  br i1 %266, label %267, label %.loopexit100

267:                                              ; preds = %265
  %268 = load i32, ptr %237, align 4, !tbaa !45
  br label %.loopexit110

269:                                              ; preds = %260
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit100

.loopexit110:                                     ; preds = %262, %267
  %270 = phi i32 [ %268, %267 ], [ %263, %262 ]
  %271 = tail call ptr @strerror(i32 noundef %270) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %271) #13
  br label %.loopexit109

.loopexit100:                                     ; preds = %257, %269, %265
  %272 = phi i32 [ %239, %269 ], [ %239, %265 ], [ %258, %257 ]
  %273 = load i32, ptr %40, align 8, !tbaa !34
  %274 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %273, i32 %272), !nosanitize !20
  %275 = extractvalue { i32, i1 } %274, 1, !nosanitize !20
  br i1 %275, label %276, label %277, !prof !21, !nosanitize !20

276:                                              ; preds = %.loopexit100
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

277:                                              ; preds = %.loopexit100
  %278 = extractvalue { i32, i1 } %274, 0, !nosanitize !20
  store i32 %278, ptr %40, align 8, !tbaa !34
  %279 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %279, ptr %46, align 8, !tbaa !35
  br label %280

280:                                              ; preds = %277, %119
  %281 = phi i32 [ %278, %277 ], [ %122, %119 ]
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %312, label %283

283:                                              ; preds = %280
  %284 = load i32, ptr %48, align 4, !tbaa !17
  %285 = icmp ne i32 %284, 0
  %286 = icmp ult i32 %281, 4
  %287 = and i1 %286, %285
  br i1 %287, label %312, label %288

288:                                              ; preds = %283
  %289 = icmp ugt i32 %281, 3
  %290 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %289, label %291, label %308

291:                                              ; preds = %288
  %292 = load i8, ptr %290, align 1, !tbaa !36
  %293 = icmp eq i8 %292, 31
  br i1 %293, label %294, label %308

294:                                              ; preds = %291
  %295 = getelementptr inbounds nuw i8, ptr %290, i64 1
  %296 = load i8, ptr %295, align 1, !tbaa !36
  %297 = icmp eq i8 %296, -117
  br i1 %297, label %298, label %308

298:                                              ; preds = %294
  %299 = getelementptr inbounds nuw i8, ptr %290, i64 2
  %300 = load i8, ptr %299, align 1, !tbaa !36
  %301 = icmp eq i8 %300, 8
  br i1 %301, label %302, label %308

302:                                              ; preds = %298
  %303 = getelementptr inbounds nuw i8, ptr %290, i64 3
  %304 = load i8, ptr %303, align 1, !tbaa !36
  %305 = icmp ult i8 %304, 32
  br i1 %305, label %306, label %308

306:                                              ; preds = %302
  %307 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %458

308:                                              ; preds = %302, %298, %294, %291, %288
  %309 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %309, ptr %37, align 8, !tbaa !22
  %310 = zext i32 %281 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %309, ptr align 1 %290, i64 %310, i1 false)
  %311 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %311, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %460

312:                                              ; preds = %283, %280, %112
  %313 = load i32, ptr %41, align 8, !tbaa !26
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %.loopexit111, label %458

315:                                              ; preds = %84
  %316 = load ptr, ptr %44, align 8, !tbaa !30
  %317 = load i32, ptr %42, align 8, !tbaa !27
  %318 = shl i32 %317, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %319 = tail call ptr @__errno_location() #17
  store i32 0, ptr %319, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %320

320:                                              ; preds = %336, %315
  %321 = phi i32 [ %337, %336 ], [ 0, %315 ]
  %322 = sub i32 %318, %321
  %323 = tail call i32 @llvm.umin.i32(i32 %322, i32 1073741824)
  %324 = load i32, ptr %49, align 4, !tbaa !46
  %325 = zext i32 %321 to i64
  %326 = getelementptr inbounds nuw i8, ptr %316, i64 %325
  %327 = zext nneg i32 %323 to i64
  %328 = tail call i64 @read(i32 noundef %324, ptr noundef %326, i64 noundef %327) #13
  %329 = trunc i64 %328 to i32
  %330 = icmp slt i32 %329, 1
  br i1 %330, label %339, label %331

331:                                              ; preds = %320
  %332 = load i32, ptr %0, align 4, !tbaa !45
  %333 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %332, i32 %329), !nosanitize !20
  %334 = extractvalue { i32, i1 } %333, 1, !nosanitize !20
  br i1 %334, label %335, label %336, !prof !21, !nosanitize !20

335:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

336:                                              ; preds = %331
  %337 = extractvalue { i32, i1 } %333, 0, !nosanitize !20
  store i32 %337, ptr %0, align 4, !tbaa !45
  %338 = icmp ult i32 %337, %318
  br i1 %338, label %320, label %.loopexit108, !llvm.loop !47

339:                                              ; preds = %320
  %340 = icmp slt i32 %329, 0
  br i1 %340, label %341, label %349

341:                                              ; preds = %339
  %342 = load i32, ptr %319, align 4, !tbaa !45
  %343 = icmp eq i32 %342, 11
  br i1 %343, label %344, label %.loopexit113

344:                                              ; preds = %341
  store i32 1, ptr %48, align 4, !tbaa !17
  %345 = load i32, ptr %0, align 4, !tbaa !45
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %.loopexit108

347:                                              ; preds = %344
  %348 = load i32, ptr %319, align 4, !tbaa !45
  br label %.loopexit113

349:                                              ; preds = %339
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit108

.loopexit113:                                     ; preds = %341, %347
  %350 = phi i32 [ %348, %347 ], [ %342, %341 ]
  %351 = tail call ptr @strerror(i32 noundef %350) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %351) #13
  br label %.loopexit109

.loopexit108:                                     ; preds = %336, %349, %344
  %352 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %352, ptr %37, align 8, !tbaa !22
  br label %.loopexit111

353:                                              ; preds = %84
  %354 = load i32, ptr %42, align 8, !tbaa !27
  %355 = shl i32 %354, 1
  store i32 %355, ptr %43, align 8, !tbaa !48
  %356 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %356, ptr %45, align 8, !tbaa !49
  br label %357

357:                                              ; preds = %441, %353
  %358 = phi i32 [ 0, %353 ], [ %426, %441 ]
  %359 = load i32, ptr %40, align 8, !tbaa !34
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %425

361:                                              ; preds = %357
  %362 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %362, label %.loopexit105 [
    i32 0, label %363
    i32 -5, label %363
  ]

363:                                              ; preds = %361, %361
  %364 = load i32, ptr %39, align 8, !tbaa !24
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %421

366:                                              ; preds = %363
  %367 = load i32, ptr %42, align 8, !tbaa !27
  %.fr = freeze i32 %367
  %368 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %369 = tail call ptr @__errno_location() #17
  store i32 0, ptr %369, align 4, !tbaa !45
  %mv.h = icmp sgt i32 %.fr, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %366, %380
  %370 = phi i32 [ %381, %380 ], [ 0, %366 ]
  %371 = sub nsw i32 %.fr, %370
  %372 = tail call i32 @llvm.umin.i32(i32 %371, i32 1073741824)
  %373 = load i32, ptr %49, align 4, !tbaa !46
  %374 = zext nneg i32 %370 to i64
  %375 = getelementptr inbounds nuw i8, ptr %368, i64 %374
  %376 = zext nneg i32 %372 to i64
  %377 = tail call i64 @read(i32 noundef %373, ptr noundef %375, i64 noundef %376) #13
  %378 = trunc i64 %377 to i32
  %379 = icmp slt i32 %378, 1
  br i1 %379, label %.loopexit97, label %380

380:                                              ; preds = %.mv.ph.mv.fast
  %381 = add nuw i32 %370, %378
  %382 = icmp ult i32 %381, %.fr
  br i1 %382, label %.mv.ph.mv.fast, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %366, %397
  %383 = phi i32 [ %398, %397 ], [ 0, %366 ]
  %384 = sub i32 %.fr, %383
  %385 = tail call i32 @llvm.umin.i32(i32 %384, i32 1073741824)
  %386 = load i32, ptr %49, align 4, !tbaa !46
  %387 = zext i32 %383 to i64
  %388 = getelementptr inbounds nuw i8, ptr %368, i64 %387
  %389 = zext nneg i32 %385 to i64
  %390 = tail call i64 @read(i32 noundef %386, ptr noundef %388, i64 noundef %389) #13
  %391 = trunc i64 %390 to i32
  %392 = icmp slt i32 %391, 1
  br i1 %392, label %.loopexit97, label %393

393:                                              ; preds = %.mv.ph
  %394 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %383, i32 %391), !nosanitize !20
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !20
  br i1 %395, label %396, label %397, !prof !21, !nosanitize !20

396:                                              ; preds = %393
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

397:                                              ; preds = %393
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !20
  %399 = icmp ult i32 %398, %.fr
  br i1 %399, label %.mv.ph, label %.loopexit, !llvm.loop !47

.loopexit97:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa4 = phi i32 [ %378, %.mv.ph.mv.fast ], [ %391, %.mv.ph ]
  %.lcssa1 = phi i32 [ %370, %.mv.ph.mv.fast ], [ %383, %.mv.ph ]
  %400 = icmp slt i32 %.lcssa4, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %.loopexit97
  %402 = load i32, ptr %369, align 4, !tbaa !45
  %403 = icmp eq i32 %402, 11
  br i1 %403, label %404, label %.loopexit107

404:                                              ; preds = %401
  store i32 1, ptr %48, align 4, !tbaa !17
  %405 = icmp eq i32 %.lcssa1, 0
  br i1 %405, label %406, label %.loopexit

406:                                              ; preds = %404
  %407 = load i32, ptr %369, align 4, !tbaa !45
  br label %.loopexit107

408:                                              ; preds = %.loopexit97
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit

.loopexit107:                                     ; preds = %401, %406
  %409 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %410 = tail call ptr @strerror(i32 noundef %409) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %410) #13
  %411 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit105

.loopexit:                                        ; preds = %397, %380, %408, %404
  %412 = phi i32 [ %.lcssa1, %408 ], [ %.lcssa1, %404 ], [ %381, %380 ], [ %398, %397 ]
  %413 = load i32, ptr %40, align 8, !tbaa !34
  %414 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %413, i32 %412), !nosanitize !20
  %415 = extractvalue { i32, i1 } %414, 1, !nosanitize !20
  br i1 %415, label %416, label %417, !prof !21, !nosanitize !20

416:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

417:                                              ; preds = %.loopexit
  %418 = extractvalue { i32, i1 } %414, 0, !nosanitize !20
  store i32 %418, ptr %40, align 8, !tbaa !34
  %419 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %419, ptr %46, align 8, !tbaa !35
  %420 = icmp eq i32 %418, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %417, %363
  %422 = load i32, ptr %48, align 4, !tbaa !17
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %.loopexit105

424:                                              ; preds = %421
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit105

425:                                              ; preds = %417, %357
  %426 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %427 = load i32, ptr %43, align 8, !tbaa !48
  %428 = icmp ult i32 %427, %355
  br i1 %428, label %429, label %430

429:                                              ; preds = %425
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %430

430:                                              ; preds = %429, %425
  switch i32 %426, label %441 [
    i32 -2, label %431
    i32 2, label %431
    i32 -4, label %432
    i32 -3, label %433
  ]

431:                                              ; preds = %430, %430
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit105

432:                                              ; preds = %430
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit105

433:                                              ; preds = %430
  %434 = load i32, ptr %50, align 4, !tbaa !33
  %435 = icmp eq i32 %434, 1
  br i1 %435, label %436, label %437

436:                                              ; preds = %433
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %.loopexit105

437:                                              ; preds = %433
  %438 = load ptr, ptr %51, align 8, !tbaa !50
  %439 = icmp eq ptr %438, null
  %440 = select i1 %439, ptr @.str.6, ptr %438
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %440) #13
  br label %.loopexit105

441:                                              ; preds = %430
  %442 = icmp ne i32 %427, 0
  %443 = icmp ne i32 %426, 1
  %444 = select i1 %442, i1 %443, i1 false
  br i1 %444, label %357, label %.loopexit105, !llvm.loop !51

.loopexit105:                                     ; preds = %441, %361, %437, %436, %432, %431, %424, %421, %.loopexit107
  %445 = phi i32 [ %358, %421 ], [ %358, %424 ], [ %426, %431 ], [ -4, %432 ], [ 0, %436 ], [ -3, %437 ], [ %411, %.loopexit107 ], [ %362, %361 ], [ %426, %441 ]
  %446 = load i32, ptr %43, align 8, !tbaa !48
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %355, i32 %446), !nosanitize !20
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !20
  br i1 %448, label %449, label %450, !prof !21, !nosanitize !20

449:                                              ; preds = %.loopexit105
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

450:                                              ; preds = %.loopexit105
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !20
  store i32 %451, ptr %0, align 8, !tbaa !19
  %452 = load ptr, ptr %45, align 8, !tbaa !49
  %453 = zext i32 %451 to i64
  %454 = sub nsw i64 0, %453
  %455 = getelementptr inbounds i8, ptr %452, i64 %454
  store ptr %455, ptr %37, align 8, !tbaa !22
  switch i32 %445, label %.loopexit109 [
    i32 1, label %456
    i32 0, label %458
  ]

456:                                              ; preds = %450
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %458

457:                                              ; preds = %84
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit109

458:                                              ; preds = %456, %450, %312, %306
  %459 = load i32, ptr %0, align 8, !tbaa !19
  br label %460

460:                                              ; preds = %458, %308
  %461 = phi i32 [ %459, %458 ], [ %311, %308 ]
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %.loopexit111

463:                                              ; preds = %460
  %464 = load i32, ptr %39, align 8, !tbaa !24
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %.backedge, label %466

466:                                              ; preds = %463
  %467 = load i32, ptr %40, align 8, !tbaa !34
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %.loopexit111, label %.backedge

.backedge:                                        ; preds = %466, %463
  br label %84, !llvm.loop !52

.loopexit111:                                     ; preds = %466, %460, %312, %.loopexit108
  %469 = load i64, ptr %33, align 8, !tbaa !18
  br label %470

470:                                              ; preds = %.loopexit111, %75
  %471 = phi i64 [ %469, %.loopexit111 ], [ %77, %75 ]
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %.loopexit112, label %55, !llvm.loop !53

.loopexit112:                                     ; preds = %470, %81, %32
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %490 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %491

491:                                              ; preds = %.loopexit88, %.loopexit112
  %492 = phi ptr [ %2, %.loopexit112 ], [ %1069, %.loopexit88 ]
  %493 = phi i64 [ 1, %.loopexit112 ], [ %1070, %.loopexit88 ]
  %494 = phi i64 [ 0, %.loopexit112 ], [ %1071, %.loopexit88 ]
  %.fr76 = freeze i64 %493
  %495 = call i64 @llvm.umin.i64(i64 %.fr76, i64 4294967295)
  %496 = trunc nuw i64 %495 to i32
  %497 = load i32, ptr %0, align 8, !tbaa !19
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %514, label %499

499:                                              ; preds = %491
  %500 = call i32 @llvm.umin.i32(i32 %497, i32 %496)
  %501 = load ptr, ptr %473, align 8, !tbaa !22
  %502 = zext i32 %500 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %492, ptr align 1 %501, i64 %502, i1 false)
  %503 = load ptr, ptr %473, align 8, !tbaa !22
  %504 = getelementptr inbounds nuw i8, ptr %503, i64 %502
  store ptr %504, ptr %473, align 8, !tbaa !22
  %505 = load i32, ptr %0, align 8, !tbaa !19
  %506 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %505, i32 %500), !nosanitize !20
  %507 = extractvalue { i32, i1 } %506, 1, !nosanitize !20
  br i1 %507, label %508, label %509, !prof !21, !nosanitize !20

508:                                              ; preds = %499
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

509:                                              ; preds = %499
  %510 = extractvalue { i32, i1 } %506, 0, !nosanitize !20
  store i32 %510, ptr %0, align 8, !tbaa !19
  %511 = load i32, ptr %9, align 8, !tbaa !16
  %512 = icmp ne i32 %511, 0
  %513 = sext i1 %512 to i32
  br label %1050

514:                                              ; preds = %491
  %515 = load i32, ptr %474, align 8, !tbaa !24
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %514
  %518 = load i32, ptr %475, align 8, !tbaa !25
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %.loopexit96, label %520

520:                                              ; preds = %517, %514
  %521 = load i32, ptr %476, align 8, !tbaa !26
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %.preheader887, label %523

523:                                              ; preds = %520
  %524 = load i32, ptr %477, align 8, !tbaa !27
  %525 = shl i32 %524, 1
  %526 = icmp ugt i32 %525, %496
  br i1 %526, label %.preheader887, label %907

.preheader887:                                    ; preds = %523, %520
  br label %527

527:                                              ; preds = %.preheader887, %902
  %528 = phi i32 [ %903, %902 ], [ %521, %.preheader887 ]
  switch i32 %528, label %890 [
    i32 0, label %529
    i32 1, label %758
    i32 2, label %797
  ]

529:                                              ; preds = %527
  %530 = load i32, ptr %477, align 8, !tbaa !27
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %549

532:                                              ; preds = %529
  %533 = load i32, ptr %488, align 4, !tbaa !28
  %534 = zext i32 %533 to i64
  %535 = call noalias ptr @malloc(i64 noundef %534) #16
  store ptr %535, ptr %481, align 8, !tbaa !29
  %536 = shl i32 %533, 1
  %537 = zext i32 %536 to i64
  %538 = call noalias ptr @malloc(i64 noundef %537) #16
  store ptr %538, ptr %487, align 8, !tbaa !30
  %539 = icmp eq ptr %535, null
  %540 = icmp eq ptr %538, null
  %541 = or i1 %539, %540
  br i1 %541, label %542, label %543

542:                                              ; preds = %532
  call void @free(ptr noundef %538) #13
  call void @free(ptr noundef %535) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit86

543:                                              ; preds = %532
  store i32 %533, ptr %477, align 8, !tbaa !27
  store i32 0, ptr %475, align 8, !tbaa !25
  store ptr null, ptr %480, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %489, i8 0, i64 24, i1 false)
  %544 = call i32 @inflateInit2_(ptr noundef nonnull %480, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %549, label %546

546:                                              ; preds = %543
  %547 = load ptr, ptr %487, align 8, !tbaa !30
  call void @free(ptr noundef %547) #13
  %548 = load ptr, ptr %481, align 8, !tbaa !29
  call void @free(ptr noundef %548) #13
  store i32 0, ptr %477, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit86

549:                                              ; preds = %543, %529
  %550 = load i32, ptr %490, align 8, !tbaa !32
  %551 = icmp eq i32 %550, -1
  br i1 %551, label %555, label %552

552:                                              ; preds = %549
  %553 = load i32, ptr %484, align 4, !tbaa !33
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %560

555:                                              ; preds = %552, %549
  %556 = call i32 @inflateReset(ptr noundef nonnull %480) #13
  store i32 2, ptr %476, align 8, !tbaa !26
  %557 = load i32, ptr %484, align 4, !tbaa !33
  %558 = icmp ne i32 %557, -1
  %559 = zext i1 %558 to i32
  store i32 %559, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %490, align 8, !tbaa !32
  br label %755

560:                                              ; preds = %552
  %561 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %561, label %.loopexit86 [
    i32 0, label %562
    i32 -5, label %562
  ]

562:                                              ; preds = %560, %560
  %563 = load i32, ptr %474, align 8, !tbaa !24
  %564 = icmp eq i32 %563, 0
  %565 = load i32, ptr %475, align 8, !tbaa !34
  br i1 %564, label %566, label %723

566:                                              ; preds = %562
  %567 = icmp eq i32 %565, 0
  br i1 %567, label %669, label %568

568:                                              ; preds = %566
  %569 = load ptr, ptr %481, align 8, !tbaa !29
  %570 = load ptr, ptr %480, align 8, !tbaa !35
  %571 = icmp eq ptr %570, %569
  br i1 %571, label %669, label %572

572:                                              ; preds = %568
  %573 = ptrtoint ptr %570 to i64
  %574 = ptrtoint ptr %569 to i64
  %575 = zext i32 %565 to i64
  %576 = icmp ult i32 %565, 4
  %577 = sub i64 %574, %573
  %578 = icmp ult i64 %577, 32
  %579 = or i1 %576, %578
  br i1 %579, label %619, label %580

580:                                              ; preds = %572
  %581 = icmp ult i32 %565, 32
  br i1 %581, label %603, label %582

582:                                              ; preds = %580
  %583 = and i64 %575, 4294967264
  br label %584

584:                                              ; preds = %584, %582
  %585 = phi i64 [ 0, %582 ], [ %592, %584 ]
  %586 = getelementptr i8, ptr %569, i64 %585
  %587 = getelementptr i8, ptr %570, i64 %585
  %588 = getelementptr i8, ptr %587, i64 16
  %589 = load <16 x i8>, ptr %587, align 1, !tbaa !36
  %590 = load <16 x i8>, ptr %588, align 1, !tbaa !36
  %591 = getelementptr i8, ptr %586, i64 16
  store <16 x i8> %589, ptr %586, align 1, !tbaa !36
  store <16 x i8> %590, ptr %591, align 1, !tbaa !36
  %592 = add nuw nsw i64 %585, 32
  %593 = icmp eq i64 %592, %583
  br i1 %593, label %594, label %584, !llvm.loop !74

594:                                              ; preds = %584
  %595 = icmp eq i64 %583, %575
  br i1 %595, label %.loopexit79, label %596

596:                                              ; preds = %594
  %597 = getelementptr i8, ptr %569, i64 %583
  %598 = getelementptr i8, ptr %570, i64 %583
  %599 = trunc nuw i64 %583 to i32
  %600 = sub i32 %565, %599
  %601 = and i64 %575, 28
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %619, label %603

603:                                              ; preds = %596, %580
  %604 = phi i64 [ %583, %596 ], [ 0, %580 ]
  %605 = and i64 %575, 4294967292
  br label %606

606:                                              ; preds = %606, %603
  %607 = phi i64 [ %604, %603 ], [ %611, %606 ]
  %608 = getelementptr i8, ptr %569, i64 %607
  %609 = getelementptr i8, ptr %570, i64 %607
  %610 = load <4 x i8>, ptr %609, align 1, !tbaa !36
  store <4 x i8> %610, ptr %608, align 1, !tbaa !36
  %611 = add nuw i64 %607, 4
  %612 = icmp eq i64 %611, %605
  br i1 %612, label %613, label %606, !llvm.loop !75

613:                                              ; preds = %606
  %614 = getelementptr i8, ptr %569, i64 %605
  %615 = getelementptr i8, ptr %570, i64 %605
  %616 = trunc nuw i64 %605 to i32
  %617 = sub i32 %565, %616
  %618 = icmp eq i64 %605, %575
  br i1 %618, label %.loopexit79, label %619

619:                                              ; preds = %613, %596, %572
  %620 = phi ptr [ %569, %572 ], [ %597, %596 ], [ %614, %613 ]
  %621 = phi ptr [ %570, %572 ], [ %598, %596 ], [ %615, %613 ]
  %622 = phi i32 [ %565, %572 ], [ %600, %596 ], [ %617, %613 ]
  %623 = add i32 %622, -1
  %624 = and i32 %622, 7
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %.loopexit81, label %.preheader80

.preheader80:                                     ; preds = %619, %.preheader80
  %626 = phi ptr [ %630, %.preheader80 ], [ %620, %619 ]
  %627 = phi ptr [ %631, %.preheader80 ], [ %621, %619 ]
  %628 = phi i32 [ %632, %.preheader80 ], [ 0, %619 ]
  %629 = load i8, ptr %627, align 1, !tbaa !36
  store i8 %629, ptr %626, align 1, !tbaa !36
  %630 = getelementptr inbounds nuw i8, ptr %626, i64 1
  %631 = getelementptr inbounds nuw i8, ptr %627, i64 1
  %632 = add nuw nsw i32 %628, 1
  %633 = icmp eq i32 %632, %624
  br i1 %633, label %.loopexit81.loopexit, label %.preheader80, !llvm.loop !76

.loopexit81.loopexit:                             ; preds = %.preheader80
  %634 = and i32 %622, -8
  br label %.loopexit81

.loopexit81:                                      ; preds = %.loopexit81.loopexit, %619
  %635 = phi ptr [ %620, %619 ], [ %630, %.loopexit81.loopexit ]
  %636 = phi ptr [ %621, %619 ], [ %631, %.loopexit81.loopexit ]
  %637 = phi i32 [ %622, %619 ], [ %634, %.loopexit81.loopexit ]
  %638 = icmp ult i32 %623, 7
  br i1 %638, label %.loopexit79, label %.preheader

.preheader:                                       ; preds = %.loopexit81, %.preheader
  %639 = phi ptr [ %665, %.preheader ], [ %635, %.loopexit81 ]
  %640 = phi ptr [ %666, %.preheader ], [ %636, %.loopexit81 ]
  %641 = phi i32 [ %664, %.preheader ], [ %637, %.loopexit81 ]
  %642 = load i8, ptr %640, align 1, !tbaa !36
  store i8 %642, ptr %639, align 1, !tbaa !36
  %643 = getelementptr inbounds nuw i8, ptr %639, i64 1
  %644 = getelementptr inbounds nuw i8, ptr %640, i64 1
  %645 = load i8, ptr %644, align 1, !tbaa !36
  store i8 %645, ptr %643, align 1, !tbaa !36
  %646 = getelementptr inbounds nuw i8, ptr %639, i64 2
  %647 = getelementptr inbounds nuw i8, ptr %640, i64 2
  %648 = load i8, ptr %647, align 1, !tbaa !36
  store i8 %648, ptr %646, align 1, !tbaa !36
  %649 = getelementptr inbounds nuw i8, ptr %639, i64 3
  %650 = getelementptr inbounds nuw i8, ptr %640, i64 3
  %651 = load i8, ptr %650, align 1, !tbaa !36
  store i8 %651, ptr %649, align 1, !tbaa !36
  %652 = getelementptr inbounds nuw i8, ptr %639, i64 4
  %653 = getelementptr inbounds nuw i8, ptr %640, i64 4
  %654 = load i8, ptr %653, align 1, !tbaa !36
  store i8 %654, ptr %652, align 1, !tbaa !36
  %655 = getelementptr inbounds nuw i8, ptr %639, i64 5
  %656 = getelementptr inbounds nuw i8, ptr %640, i64 5
  %657 = load i8, ptr %656, align 1, !tbaa !36
  store i8 %657, ptr %655, align 1, !tbaa !36
  %658 = getelementptr inbounds nuw i8, ptr %639, i64 6
  %659 = getelementptr inbounds nuw i8, ptr %640, i64 6
  %660 = load i8, ptr %659, align 1, !tbaa !36
  store i8 %660, ptr %658, align 1, !tbaa !36
  %661 = getelementptr inbounds nuw i8, ptr %639, i64 7
  %662 = getelementptr inbounds nuw i8, ptr %640, i64 7
  %663 = load i8, ptr %662, align 1, !tbaa !36
  store i8 %663, ptr %661, align 1, !tbaa !36
  %664 = add i32 %641, -8
  %665 = getelementptr inbounds nuw i8, ptr %639, i64 8
  %666 = getelementptr inbounds nuw i8, ptr %640, i64 8
  %667 = icmp eq i32 %664, 0
  br i1 %667, label %.loopexit79, label %.preheader, !llvm.loop !77

.loopexit79:                                      ; preds = %.preheader, %.loopexit81, %613, %594
  %668 = load i32, ptr %475, align 8, !tbaa !34
  br label %669

669:                                              ; preds = %.loopexit79, %568, %566
  %670 = phi i32 [ %668, %.loopexit79 ], [ %565, %568 ], [ 0, %566 ]
  %671 = load i32, ptr %477, align 8, !tbaa !27
  %672 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %671, i32 %670), !nosanitize !20
  %673 = extractvalue { i32, i1 } %672, 1, !nosanitize !20
  br i1 %673, label %674, label %675, !prof !21, !nosanitize !20

674:                                              ; preds = %669
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

675:                                              ; preds = %669
  %676 = extractvalue { i32, i1 } %672, 0, !nosanitize !20
  %677 = load ptr, ptr %481, align 8, !tbaa !29
  %678 = zext i32 %670 to i64
  %679 = getelementptr inbounds nuw i8, ptr %677, i64 %678
  store i32 0, ptr %482, align 4, !tbaa !17
  %680 = tail call ptr @__errno_location() #17
  store i32 0, ptr %680, align 4, !tbaa !45
  br label %681

681:                                              ; preds = %700, %675
  %682 = phi i32 [ 0, %675 ], [ %701, %700 ]
  %683 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %676, i32 %682), !nosanitize !20
  %684 = extractvalue { i32, i1 } %683, 1, !nosanitize !20
  br i1 %684, label %685, label %686, !prof !21, !nosanitize !20

685:                                              ; preds = %681
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

686:                                              ; preds = %681
  %687 = extractvalue { i32, i1 } %683, 0, !nosanitize !20
  %688 = call i32 @llvm.umin.i32(i32 %687, i32 1073741824)
  %689 = load i32, ptr %483, align 4, !tbaa !46
  %690 = zext i32 %682 to i64
  %691 = getelementptr inbounds nuw i8, ptr %679, i64 %690
  %692 = zext nneg i32 %688 to i64
  %693 = call i64 @read(i32 noundef %689, ptr noundef %691, i64 noundef %692) #13
  %694 = trunc i64 %693 to i32
  %695 = icmp slt i32 %694, 1
  br i1 %695, label %703, label %696

696:                                              ; preds = %686
  %697 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %682, i32 %694), !nosanitize !20
  %698 = extractvalue { i32, i1 } %697, 1, !nosanitize !20
  br i1 %698, label %699, label %700, !prof !21, !nosanitize !20

699:                                              ; preds = %696
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

700:                                              ; preds = %696
  %701 = extractvalue { i32, i1 } %697, 0, !nosanitize !20
  %702 = icmp ult i32 %701, %676
  br i1 %702, label %681, label %.loopexit78, !llvm.loop !47

703:                                              ; preds = %686
  %704 = icmp slt i32 %694, 0
  br i1 %704, label %705, label %712

705:                                              ; preds = %703
  %706 = load i32, ptr %680, align 4, !tbaa !45
  %707 = icmp eq i32 %706, 11
  br i1 %707, label %708, label %.loopexit87

708:                                              ; preds = %705
  store i32 1, ptr %482, align 4, !tbaa !17
  %709 = icmp eq i32 %682, 0
  br i1 %709, label %710, label %.loopexit78

710:                                              ; preds = %708
  %711 = load i32, ptr %680, align 4, !tbaa !45
  br label %.loopexit87

712:                                              ; preds = %703
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit78

.loopexit87:                                      ; preds = %705, %710
  %713 = phi i32 [ %711, %710 ], [ %706, %705 ]
  %714 = call ptr @strerror(i32 noundef %713) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %714) #13
  br label %.loopexit86

.loopexit78:                                      ; preds = %700, %712, %708
  %715 = phi i32 [ %682, %712 ], [ %682, %708 ], [ %701, %700 ]
  %716 = load i32, ptr %475, align 8, !tbaa !34
  %717 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %716, i32 %715), !nosanitize !20
  %718 = extractvalue { i32, i1 } %717, 1, !nosanitize !20
  br i1 %718, label %719, label %720, !prof !21, !nosanitize !20

719:                                              ; preds = %.loopexit78
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

720:                                              ; preds = %.loopexit78
  %721 = extractvalue { i32, i1 } %717, 0, !nosanitize !20
  store i32 %721, ptr %475, align 8, !tbaa !34
  %722 = load ptr, ptr %481, align 8, !tbaa !29
  store ptr %722, ptr %480, align 8, !tbaa !35
  br label %723

723:                                              ; preds = %720, %562
  %724 = phi i32 [ %721, %720 ], [ %565, %562 ]
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %755, label %726

726:                                              ; preds = %723
  %727 = load i32, ptr %482, align 4, !tbaa !17
  %728 = icmp ne i32 %727, 0
  %729 = icmp ult i32 %724, 4
  %730 = and i1 %729, %728
  br i1 %730, label %755, label %731

731:                                              ; preds = %726
  %732 = icmp ugt i32 %724, 3
  %733 = load ptr, ptr %480, align 8, !tbaa !35
  br i1 %732, label %734, label %751

734:                                              ; preds = %731
  %735 = load i8, ptr %733, align 1, !tbaa !36
  %736 = icmp eq i8 %735, 31
  br i1 %736, label %737, label %751

737:                                              ; preds = %734
  %738 = getelementptr inbounds nuw i8, ptr %733, i64 1
  %739 = load i8, ptr %738, align 1, !tbaa !36
  %740 = icmp eq i8 %739, -117
  br i1 %740, label %741, label %751

741:                                              ; preds = %737
  %742 = getelementptr inbounds nuw i8, ptr %733, i64 2
  %743 = load i8, ptr %742, align 1, !tbaa !36
  %744 = icmp eq i8 %743, 8
  br i1 %744, label %745, label %751

745:                                              ; preds = %741
  %746 = getelementptr inbounds nuw i8, ptr %733, i64 3
  %747 = load i8, ptr %746, align 1, !tbaa !36
  %748 = icmp ult i8 %747, 32
  br i1 %748, label %749, label %751

749:                                              ; preds = %745
  %750 = call i32 @inflateReset(ptr noundef nonnull %480) #13
  store i32 2, ptr %476, align 8, !tbaa !26
  store i32 1, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %490, align 8, !tbaa !32
  br label %891

751:                                              ; preds = %745, %741, %737, %734, %731
  %752 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %752, ptr %473, align 8, !tbaa !22
  %753 = zext i32 %724 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %752, ptr align 1 %733, i64 %753, i1 false)
  %754 = load i32, ptr %475, align 8, !tbaa !34
  store i32 %754, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %476, align 8, !tbaa !26
  br label %893

755:                                              ; preds = %726, %723, %555
  %756 = load i32, ptr %476, align 8, !tbaa !26
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %.loopexit88, label %891

758:                                              ; preds = %527
  %759 = load ptr, ptr %487, align 8, !tbaa !30
  %760 = load i32, ptr %477, align 8, !tbaa !27
  %761 = shl i32 %760, 1
  store i32 0, ptr %482, align 4, !tbaa !17
  %762 = tail call ptr @__errno_location() #17
  store i32 0, ptr %762, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %763

763:                                              ; preds = %779, %758
  %764 = phi i32 [ %780, %779 ], [ 0, %758 ]
  %765 = sub i32 %761, %764
  %766 = call i32 @llvm.umin.i32(i32 %765, i32 1073741824)
  %767 = load i32, ptr %483, align 4, !tbaa !46
  %768 = zext i32 %764 to i64
  %769 = getelementptr inbounds nuw i8, ptr %759, i64 %768
  %770 = zext nneg i32 %766 to i64
  %771 = call i64 @read(i32 noundef %767, ptr noundef %769, i64 noundef %770) #13
  %772 = trunc i64 %771 to i32
  %773 = icmp slt i32 %772, 1
  br i1 %773, label %782, label %774

774:                                              ; preds = %763
  %775 = load i32, ptr %0, align 4, !tbaa !45
  %776 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %775, i32 %772), !nosanitize !20
  %777 = extractvalue { i32, i1 } %776, 1, !nosanitize !20
  br i1 %777, label %778, label %779, !prof !21, !nosanitize !20

778:                                              ; preds = %774
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

779:                                              ; preds = %774
  %780 = extractvalue { i32, i1 } %776, 0, !nosanitize !20
  store i32 %780, ptr %0, align 4, !tbaa !45
  %781 = icmp ult i32 %780, %761
  br i1 %781, label %763, label %.loopexit85, !llvm.loop !47

782:                                              ; preds = %763
  %783 = icmp slt i32 %772, 0
  br i1 %783, label %784, label %792

784:                                              ; preds = %782
  %785 = load i32, ptr %762, align 4, !tbaa !45
  %786 = icmp eq i32 %785, 11
  br i1 %786, label %787, label %793

787:                                              ; preds = %784
  store i32 1, ptr %482, align 4, !tbaa !17
  %788 = load i32, ptr %0, align 4, !tbaa !45
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %.loopexit85

790:                                              ; preds = %787
  %791 = load i32, ptr %762, align 4, !tbaa !45
  br label %793

792:                                              ; preds = %782
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit85

793:                                              ; preds = %790, %784
  %794 = phi i32 [ %791, %790 ], [ %785, %784 ]
  %795 = call ptr @strerror(i32 noundef %794) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %795) #13
  br label %.loopexit86

.loopexit85:                                      ; preds = %779, %792, %787
  %796 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %796, ptr %473, align 8, !tbaa !22
  br label %.loopexit88

797:                                              ; preds = %527
  %798 = load i32, ptr %477, align 8, !tbaa !27
  %799 = shl i32 %798, 1
  store i32 %799, ptr %478, align 8, !tbaa !48
  %800 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %800, ptr %479, align 8, !tbaa !49
  br label %801

801:                                              ; preds = %874, %797
  %802 = phi i32 [ 0, %797 ], [ %859, %874 ]
  %803 = load i32, ptr %475, align 8, !tbaa !34
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %858

805:                                              ; preds = %801
  %806 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %806, label %.loopexit82 [
    i32 0, label %807
    i32 -5, label %807
  ]

807:                                              ; preds = %805, %805
  %808 = load i32, ptr %474, align 8, !tbaa !24
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %810, label %854

810:                                              ; preds = %807
  %811 = load i32, ptr %477, align 8, !tbaa !27
  %812 = load ptr, ptr %481, align 8, !tbaa !29
  store i32 0, ptr %482, align 4, !tbaa !17
  %813 = tail call ptr @__errno_location() #17
  store i32 0, ptr %813, align 4, !tbaa !45
  br label %814

814:                                              ; preds = %829, %810
  %815 = phi i32 [ 0, %810 ], [ %830, %829 ]
  %816 = sub i32 %811, %815
  %817 = call i32 @llvm.umin.i32(i32 %816, i32 1073741824)
  %818 = load i32, ptr %483, align 4, !tbaa !46
  %819 = zext i32 %815 to i64
  %820 = getelementptr inbounds nuw i8, ptr %812, i64 %819
  %821 = zext nneg i32 %817 to i64
  %822 = call i64 @read(i32 noundef %818, ptr noundef %820, i64 noundef %821) #13
  %823 = trunc i64 %822 to i32
  %824 = icmp slt i32 %823, 1
  br i1 %824, label %832, label %825

825:                                              ; preds = %814
  %826 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %815, i32 %823), !nosanitize !20
  %827 = extractvalue { i32, i1 } %826, 1, !nosanitize !20
  br i1 %827, label %828, label %829, !prof !21, !nosanitize !20

828:                                              ; preds = %825
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

829:                                              ; preds = %825
  %830 = extractvalue { i32, i1 } %826, 0, !nosanitize !20
  %831 = icmp ult i32 %830, %811
  br i1 %831, label %814, label %.loopexit77, !llvm.loop !47

832:                                              ; preds = %814
  %833 = icmp slt i32 %823, 0
  br i1 %833, label %834, label %841

834:                                              ; preds = %832
  %835 = load i32, ptr %813, align 4, !tbaa !45
  %836 = icmp eq i32 %835, 11
  br i1 %836, label %837, label %.loopexit83

837:                                              ; preds = %834
  store i32 1, ptr %482, align 4, !tbaa !17
  %838 = icmp eq i32 %815, 0
  br i1 %838, label %839, label %.loopexit77

839:                                              ; preds = %837
  %840 = load i32, ptr %813, align 4, !tbaa !45
  br label %.loopexit83

841:                                              ; preds = %832
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit77

.loopexit83:                                      ; preds = %834, %839
  %842 = phi i32 [ %840, %839 ], [ %835, %834 ]
  %843 = call ptr @strerror(i32 noundef %842) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %843) #13
  %844 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit82

.loopexit77:                                      ; preds = %829, %841, %837
  %845 = phi i32 [ %815, %841 ], [ %815, %837 ], [ %830, %829 ]
  %846 = load i32, ptr %475, align 8, !tbaa !34
  %847 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %846, i32 %845), !nosanitize !20
  %848 = extractvalue { i32, i1 } %847, 1, !nosanitize !20
  br i1 %848, label %849, label %850, !prof !21, !nosanitize !20

849:                                              ; preds = %.loopexit77
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

850:                                              ; preds = %.loopexit77
  %851 = extractvalue { i32, i1 } %847, 0, !nosanitize !20
  store i32 %851, ptr %475, align 8, !tbaa !34
  %852 = load ptr, ptr %481, align 8, !tbaa !29
  store ptr %852, ptr %480, align 8, !tbaa !35
  %853 = icmp eq i32 %851, 0
  br i1 %853, label %854, label %858

854:                                              ; preds = %850, %807
  %855 = load i32, ptr %482, align 4, !tbaa !17
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %857, label %.loopexit82

857:                                              ; preds = %854
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit82

858:                                              ; preds = %850, %801
  %859 = call i32 @inflate(ptr noundef nonnull %480, i32 noundef 0) #13
  %860 = load i32, ptr %478, align 8, !tbaa !48
  %861 = icmp ult i32 %860, %799
  br i1 %861, label %862, label %863

862:                                              ; preds = %858
  store i32 0, ptr %484, align 4, !tbaa !33
  br label %863

863:                                              ; preds = %862, %858
  switch i32 %859, label %874 [
    i32 -2, label %864
    i32 2, label %864
    i32 -4, label %865
    i32 -3, label %866
  ]

864:                                              ; preds = %863, %863
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit82

865:                                              ; preds = %863
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit82

866:                                              ; preds = %863
  %867 = load i32, ptr %484, align 4, !tbaa !33
  %868 = icmp eq i32 %867, 1
  br i1 %868, label %869, label %870

869:                                              ; preds = %866
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %474, align 8, !tbaa !24
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %.loopexit82

870:                                              ; preds = %866
  %871 = load ptr, ptr %485, align 8, !tbaa !50
  %872 = icmp eq ptr %871, null
  %873 = select i1 %872, ptr @.str.6, ptr %871
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %873) #13
  br label %.loopexit82

874:                                              ; preds = %863
  %875 = icmp ne i32 %860, 0
  %876 = icmp ne i32 %859, 1
  %877 = select i1 %875, i1 %876, i1 false
  br i1 %877, label %801, label %.loopexit82, !llvm.loop !51

.loopexit82:                                      ; preds = %874, %805, %870, %869, %865, %864, %857, %854, %.loopexit83
  %878 = phi i32 [ %802, %854 ], [ %802, %857 ], [ %859, %864 ], [ -4, %865 ], [ 0, %869 ], [ -3, %870 ], [ %844, %.loopexit83 ], [ %859, %874 ], [ %806, %805 ]
  %879 = load i32, ptr %478, align 8, !tbaa !48
  %880 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %799, i32 %879), !nosanitize !20
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !20
  br i1 %881, label %882, label %883, !prof !21, !nosanitize !20

882:                                              ; preds = %.loopexit82
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

883:                                              ; preds = %.loopexit82
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !20
  store i32 %884, ptr %0, align 8, !tbaa !19
  %885 = load ptr, ptr %479, align 8, !tbaa !49
  %886 = zext i32 %884 to i64
  %887 = sub nsw i64 0, %886
  %888 = getelementptr inbounds i8, ptr %885, i64 %887
  store ptr %888, ptr %473, align 8, !tbaa !22
  switch i32 %878, label %.loopexit86 [
    i32 1, label %889
    i32 0, label %891
  ]

889:                                              ; preds = %883
  store i32 0, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %891

890:                                              ; preds = %527
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit86

891:                                              ; preds = %889, %883, %755, %749
  %892 = load i32, ptr %0, align 8, !tbaa !19
  br label %893

893:                                              ; preds = %891, %751
  %894 = phi i32 [ %892, %891 ], [ %754, %751 ]
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %.loopexit88

896:                                              ; preds = %893
  %897 = load i32, ptr %474, align 8, !tbaa !24
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %902, label %899

899:                                              ; preds = %896
  %900 = load i32, ptr %475, align 8, !tbaa !34
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %.loopexit88, label %902

902:                                              ; preds = %899, %896
  %903 = load i32, ptr %476, align 8, !tbaa !26
  br label %527, !llvm.loop !52

.loopexit86:                                      ; preds = %883, %560, %890, %793, %.loopexit87, %546, %542
  %904 = load i32, ptr %0, align 8, !tbaa !19
  %905 = icmp eq i32 %904, 0
  %906 = sext i1 %905 to i32
  br label %.loopexit88

907:                                              ; preds = %523
  %908 = icmp eq i32 %521, 1
  br i1 %908, label %909, label %953

909:                                              ; preds = %907
  store i32 0, ptr %482, align 4, !tbaa !17
  %910 = tail call ptr @__errno_location() #17
  store i32 0, ptr %910, align 4, !tbaa !45
  %mv.h20 = icmp ult i64 %.fr76, 2147483649
  br i1 %mv.h20, label %.mv.ph22.mv.fast, label %.mv.ph22

.mv.ph22.mv.fast:                                 ; preds = %909, %921
  %911 = phi i32 [ %922, %921 ], [ 0, %909 ]
  %912 = sub i32 %496, %911
  %913 = call i32 @llvm.umin.i32(i32 %912, i32 1073741824)
  %914 = load i32, ptr %483, align 4, !tbaa !46
  %915 = zext i32 %911 to i64
  %916 = getelementptr inbounds nuw i8, ptr %492, i64 %915
  %917 = zext nneg i32 %913 to i64
  %918 = call i64 @read(i32 noundef %914, ptr noundef %916, i64 noundef %917) #13
  %919 = trunc i64 %918 to i32
  %920 = icmp slt i32 %919, 1
  br i1 %920, label %.loopexit89, label %921

921:                                              ; preds = %.mv.ph22.mv.fast
  %922 = add i32 %911, %919
  %923 = icmp ult i32 %922, %496
  br i1 %923, label %.mv.ph22.mv.fast, label %.loopexit90, !llvm.loop !47

.mv.ph22:                                         ; preds = %909, %938
  %924 = phi i32 [ %939, %938 ], [ 0, %909 ]
  %925 = sub i32 %496, %924
  %926 = call i32 @llvm.umin.i32(i32 %925, i32 1073741824)
  %927 = load i32, ptr %483, align 4, !tbaa !46
  %928 = zext i32 %924 to i64
  %929 = getelementptr inbounds nuw i8, ptr %492, i64 %928
  %930 = zext nneg i32 %926 to i64
  %931 = call i64 @read(i32 noundef %927, ptr noundef %929, i64 noundef %930) #13
  %932 = trunc i64 %931 to i32
  %933 = icmp slt i32 %932, 1
  br i1 %933, label %.loopexit89, label %934

934:                                              ; preds = %.mv.ph22
  %935 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %924, i32 %932), !nosanitize !20
  %936 = extractvalue { i32, i1 } %935, 1, !nosanitize !20
  br i1 %936, label %937, label %938, !prof !21, !nosanitize !20

937:                                              ; preds = %934
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

938:                                              ; preds = %934
  %939 = extractvalue { i32, i1 } %935, 0, !nosanitize !20
  %940 = icmp ult i32 %939, %496
  br i1 %940, label %.mv.ph22, label %.loopexit90, !llvm.loop !47

.loopexit89:                                      ; preds = %.mv.ph22, %.mv.ph22.mv.fast
  %.lcssa14 = phi i64 [ %915, %.mv.ph22.mv.fast ], [ %928, %.mv.ph22 ]
  %.lcssa11 = phi i32 [ %919, %.mv.ph22.mv.fast ], [ %932, %.mv.ph22 ]
  %.lcssa8 = phi i32 [ %911, %.mv.ph22.mv.fast ], [ %924, %.mv.ph22 ]
  %941 = icmp slt i32 %.lcssa11, 0
  br i1 %941, label %942, label %952

942:                                              ; preds = %.loopexit89
  %943 = load i32, ptr %910, align 4, !tbaa !45
  %944 = icmp eq i32 %943, 11
  br i1 %944, label %945, label %949

945:                                              ; preds = %942
  store i32 1, ptr %482, align 4, !tbaa !17
  %946 = icmp eq i32 %.lcssa8, 0
  br i1 %946, label %947, label %1050

947:                                              ; preds = %945
  %948 = load i32, ptr %910, align 4, !tbaa !45
  br label %949

949:                                              ; preds = %947, %942
  %950 = phi i32 [ %948, %947 ], [ %943, %942 ]
  %951 = call ptr @strerror(i32 noundef %950) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %951) #13
  br label %1050

952:                                              ; preds = %.loopexit89
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %1050

953:                                              ; preds = %907
  store i32 %496, ptr %478, align 8, !tbaa !58
  store ptr %492, ptr %479, align 8, !tbaa !59
  br label %954

954:                                              ; preds = %1027, %953
  %955 = phi i32 [ 0, %953 ], [ %1012, %1027 ]
  %956 = load i32, ptr %475, align 8, !tbaa !34
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %958, label %1011

958:                                              ; preds = %954
  %959 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %959, label %.loopexit93 [
    i32 0, label %960
    i32 -5, label %960
  ]

960:                                              ; preds = %958, %958
  %961 = load i32, ptr %474, align 8, !tbaa !24
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %1007

963:                                              ; preds = %960
  %964 = load i32, ptr %477, align 8, !tbaa !27
  %965 = load ptr, ptr %481, align 8, !tbaa !29
  store i32 0, ptr %482, align 4, !tbaa !17
  %966 = tail call ptr @__errno_location() #17
  store i32 0, ptr %966, align 4, !tbaa !45
  br label %967

967:                                              ; preds = %982, %963
  %968 = phi i32 [ 0, %963 ], [ %983, %982 ]
  %969 = sub i32 %964, %968
  %970 = call i32 @llvm.umin.i32(i32 %969, i32 1073741824)
  %971 = load i32, ptr %483, align 4, !tbaa !46
  %972 = zext i32 %968 to i64
  %973 = getelementptr inbounds nuw i8, ptr %965, i64 %972
  %974 = zext nneg i32 %970 to i64
  %975 = call i64 @read(i32 noundef %971, ptr noundef %973, i64 noundef %974) #13
  %976 = trunc i64 %975 to i32
  %977 = icmp slt i32 %976, 1
  br i1 %977, label %985, label %978

978:                                              ; preds = %967
  %979 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %968, i32 %976), !nosanitize !20
  %980 = extractvalue { i32, i1 } %979, 1, !nosanitize !20
  br i1 %980, label %981, label %982, !prof !21, !nosanitize !20

981:                                              ; preds = %978
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

982:                                              ; preds = %978
  %983 = extractvalue { i32, i1 } %979, 0, !nosanitize !20
  %984 = icmp ult i32 %983, %964
  br i1 %984, label %967, label %.loopexit84, !llvm.loop !47

985:                                              ; preds = %967
  %986 = icmp slt i32 %976, 0
  br i1 %986, label %987, label %994

987:                                              ; preds = %985
  %988 = load i32, ptr %966, align 4, !tbaa !45
  %989 = icmp eq i32 %988, 11
  br i1 %989, label %990, label %.loopexit95

990:                                              ; preds = %987
  store i32 1, ptr %482, align 4, !tbaa !17
  %991 = icmp eq i32 %968, 0
  br i1 %991, label %992, label %.loopexit84

992:                                              ; preds = %990
  %993 = load i32, ptr %966, align 4, !tbaa !45
  br label %.loopexit95

994:                                              ; preds = %985
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit84

.loopexit95:                                      ; preds = %987, %992
  %995 = phi i32 [ %993, %992 ], [ %988, %987 ]
  %996 = call ptr @strerror(i32 noundef %995) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %996) #13
  %997 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit93

.loopexit84:                                      ; preds = %982, %994, %990
  %998 = phi i32 [ %968, %994 ], [ %968, %990 ], [ %983, %982 ]
  %999 = load i32, ptr %475, align 8, !tbaa !34
  %1000 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %999, i32 %998), !nosanitize !20
  %1001 = extractvalue { i32, i1 } %1000, 1, !nosanitize !20
  br i1 %1001, label %1002, label %1003, !prof !21, !nosanitize !20

1002:                                             ; preds = %.loopexit84
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1003:                                             ; preds = %.loopexit84
  %1004 = extractvalue { i32, i1 } %1000, 0, !nosanitize !20
  store i32 %1004, ptr %475, align 8, !tbaa !34
  %1005 = load ptr, ptr %481, align 8, !tbaa !29
  store ptr %1005, ptr %480, align 8, !tbaa !35
  %1006 = icmp eq i32 %1004, 0
  br i1 %1006, label %1007, label %1011

1007:                                             ; preds = %1003, %960
  %1008 = load i32, ptr %482, align 4, !tbaa !17
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1010, label %.loopexit93

1010:                                             ; preds = %1007
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit93

1011:                                             ; preds = %1003, %954
  %1012 = call i32 @inflate(ptr noundef nonnull %480, i32 noundef 0) #13
  %1013 = load i32, ptr %478, align 8, !tbaa !48
  %1014 = icmp ult i32 %1013, %496
  br i1 %1014, label %1015, label %1016

1015:                                             ; preds = %1011
  store i32 0, ptr %484, align 4, !tbaa !33
  br label %1016

1016:                                             ; preds = %1015, %1011
  switch i32 %1012, label %1027 [
    i32 -2, label %1017
    i32 2, label %1017
    i32 -4, label %1018
    i32 -3, label %1019
  ]

1017:                                             ; preds = %1016, %1016
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit93

1018:                                             ; preds = %1016
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit93

1019:                                             ; preds = %1016
  %1020 = load i32, ptr %484, align 4, !tbaa !33
  %1021 = icmp eq i32 %1020, 1
  br i1 %1021, label %1022, label %1023

1022:                                             ; preds = %1019
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %474, align 8, !tbaa !24
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %.loopexit93

1023:                                             ; preds = %1019
  %1024 = load ptr, ptr %485, align 8, !tbaa !50
  %1025 = icmp eq ptr %1024, null
  %1026 = select i1 %1025, ptr @.str.6, ptr %1024
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1026) #13
  br label %.loopexit93

1027:                                             ; preds = %1016
  %1028 = icmp ne i32 %1013, 0
  %1029 = icmp ne i32 %1012, 1
  %1030 = select i1 %1028, i1 %1029, i1 false
  br i1 %1030, label %954, label %.loopexit93, !llvm.loop !51

.loopexit93:                                      ; preds = %1027, %958, %1023, %1022, %1018, %1017, %1010, %1007, %.loopexit95
  %1031 = phi i32 [ %955, %1007 ], [ %955, %1010 ], [ %1012, %1017 ], [ -4, %1018 ], [ 0, %1022 ], [ -3, %1023 ], [ %997, %.loopexit95 ], [ %959, %958 ], [ %1012, %1027 ]
  %1032 = load i32, ptr %478, align 8, !tbaa !48
  %1033 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %1032), !nosanitize !20
  %1034 = extractvalue { i32, i1 } %1033, 1, !nosanitize !20
  br i1 %1034, label %1035, label %1036, !prof !21, !nosanitize !20

1035:                                             ; preds = %.loopexit93
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1036:                                             ; preds = %.loopexit93
  %1037 = extractvalue { i32, i1 } %1033, 0, !nosanitize !20
  %1038 = load ptr, ptr %479, align 8, !tbaa !49
  %1039 = zext i32 %1037 to i64
  %1040 = sub nsw i64 0, %1039
  %1041 = getelementptr inbounds i8, ptr %1038, i64 %1040
  store ptr %1041, ptr %473, align 8, !tbaa !22
  %1042 = icmp eq i32 %1031, 1
  br i1 %1042, label %1043, label %1044

1043:                                             ; preds = %1036
  store i32 0, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %1047

1044:                                             ; preds = %1036
  %1045 = icmp ne i32 %1031, 0
  %1046 = sext i1 %1045 to i32
  br label %1047

1047:                                             ; preds = %1044, %1043
  %1048 = phi i32 [ 0, %1043 ], [ %1046, %1044 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1050

.loopexit90:                                      ; preds = %938, %921
  %.lcssa17 = phi i32 [ %922, %921 ], [ %939, %938 ]
  %1049 = zext i32 %.lcssa17 to i64
  br label %1050

1050:                                             ; preds = %.loopexit90, %1047, %952, %949, %945, %509
  %1051 = phi i64 [ %1049, %.loopexit90 ], [ %.lcssa14, %952 ], [ %.lcssa14, %949 ], [ %.lcssa14, %945 ], [ %502, %509 ], [ %1039, %1047 ]
  %1052 = phi i32 [ 0, %.loopexit90 ], [ 0, %952 ], [ -1, %949 ], [ 0, %945 ], [ %513, %509 ], [ %1048, %1047 ]
  %1053 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.fr76, i64 %1051), !nosanitize !20
  %1054 = extractvalue { i64, i1 } %1053, 0, !nosanitize !20
  %1055 = extractvalue { i64, i1 } %1053, 1, !nosanitize !20
  br i1 %1055, label %1056, label %1057, !prof !21, !nosanitize !20

1056:                                             ; preds = %1050
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1057:                                             ; preds = %1050
  %1058 = getelementptr inbounds nuw i8, ptr %492, i64 %1051
  %1059 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %494, i64 %1051), !nosanitize !20
  %1060 = extractvalue { i64, i1 } %1059, 0, !nosanitize !20
  %1061 = extractvalue { i64, i1 } %1059, 1, !nosanitize !20
  br i1 %1061, label %1062, label %1063, !prof !21, !nosanitize !20

1062:                                             ; preds = %1063, %1057
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1063:                                             ; preds = %1057
  %1064 = load i64, ptr %486, align 8, !tbaa !23
  %1065 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1064, i64 %1051), !nosanitize !20
  %1066 = extractvalue { i64, i1 } %1065, 1, !nosanitize !20
  br i1 %1066, label %1062, label %1067, !prof !21, !nosanitize !20

1067:                                             ; preds = %1063
  %1068 = extractvalue { i64, i1 } %1065, 0, !nosanitize !20
  store i64 %1068, ptr %486, align 8, !tbaa !23
  br label %.loopexit88

.loopexit88:                                      ; preds = %899, %893, %755, %1067, %.loopexit86, %.loopexit85
  %1069 = phi ptr [ %1058, %1067 ], [ %492, %.loopexit86 ], [ %492, %.loopexit85 ], [ %492, %755 ], [ %492, %893 ], [ %492, %899 ]
  %1070 = phi i64 [ %1054, %1067 ], [ %.fr76, %.loopexit86 ], [ %.fr76, %.loopexit85 ], [ %.fr76, %755 ], [ %.fr76, %893 ], [ %.fr76, %899 ]
  %1071 = phi i64 [ %1060, %1067 ], [ %494, %.loopexit86 ], [ %494, %.loopexit85 ], [ %494, %755 ], [ %494, %893 ], [ %494, %899 ]
  %1072 = phi i32 [ %1052, %1067 ], [ %906, %.loopexit86 ], [ 0, %.loopexit85 ], [ 0, %755 ], [ 0, %893 ], [ 0, %899 ]
  %1073 = icmp ne i64 %1070, 0
  %1074 = icmp eq i32 %1072, 0
  %1075 = select i1 %1073, i1 %1074, i1 false
  br i1 %1075, label %491, label %1076, !llvm.loop !60

1076:                                             ; preds = %.loopexit88
  %1077 = icmp eq i64 %1070, 0
  br i1 %1077, label %1083, label %1078

1078:                                             ; preds = %1076
  %1079 = load i32, ptr %474, align 8, !tbaa !24
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1083, label %.loopexit96

.loopexit96:                                      ; preds = %517, %1078
  %1081 = phi i64 [ %1071, %1078 ], [ %494, %517 ]
  %1082 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1082, align 4, !tbaa !61
  br label %1083

1083:                                             ; preds = %.loopexit96, %1078, %1076
  %1084 = phi i64 [ %1081, %.loopexit96 ], [ %1071, %1078 ], [ %1071, %1076 ]
  %1085 = freeze i64 %1084
  %1086 = icmp eq i64 %1085, 0
  %1087 = load i8, ptr %2, align 1
  %1088 = zext i8 %1087 to i32
  br i1 %1086, label %.loopexit109, label %1089

.loopexit109:                                     ; preds = %450, %117, %1083, %457, %.loopexit113, %.loopexit110, %103, %99
  br label %1089

1089:                                             ; preds = %.loopexit109, %1083, %25, %11, %4, %1
  %1090 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %.loopexit109 ], [ %1088, %1083 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %1090
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 256) i32 @gzgetc_(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1085, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1085

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
  br i1 %14, label %1085, label %15

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
  br label %1085

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %.loopexit105, label %36

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

55:                                               ; preds = %462, %36
  %56 = phi i64 [ %463, %462 ], [ %34, %36 ]
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
  br label %462

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %.preheader980, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %.loopexit105, label %.preheader980

.preheader980:                                    ; preds = %84, %81
  br label %87

87:                                               ; preds = %.backedge, %.preheader980
  %88 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %88, label %449 [
    i32 0, label %89
    i32 1, label %318
    i32 2, label %356
  ]

89:                                               ; preds = %87
  %90 = load i32, ptr %42, align 8, !tbaa !27
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load i32, ptr %52, align 4, !tbaa !28
  %94 = zext i32 %93 to i64
  %95 = tail call noalias ptr @malloc(i64 noundef %94) #16
  store ptr %95, ptr %47, align 8, !tbaa !29
  %96 = shl i32 %93, 1
  %97 = zext i32 %96 to i64
  %98 = tail call noalias ptr @malloc(i64 noundef %97) #16
  store ptr %98, ptr %44, align 8, !tbaa !30
  %99 = icmp eq ptr %95, null
  %100 = icmp eq ptr %98, null
  %101 = or i1 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  tail call void @free(ptr noundef %98) #13
  tail call void @free(ptr noundef %95) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit102

103:                                              ; preds = %92
  store i32 %93, ptr %42, align 8, !tbaa !27
  store i32 0, ptr %40, align 8, !tbaa !25
  store ptr null, ptr %46, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %104 = tail call i32 @inflateInit2_(ptr noundef nonnull %46, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %44, align 8, !tbaa !30
  tail call void @free(ptr noundef %107) #13
  %108 = load ptr, ptr %47, align 8, !tbaa !29
  tail call void @free(ptr noundef %108) #13
  store i32 0, ptr %42, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit102

109:                                              ; preds = %103, %89
  %110 = load i32, ptr %54, align 8, !tbaa !32
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %50, align 4, !tbaa !33
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112, %109
  %116 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  %117 = load i32, ptr %50, align 4, !tbaa !33
  %118 = icmp ne i32 %117, -1
  %119 = zext i1 %118 to i32
  store i32 %119, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %315

120:                                              ; preds = %112
  %121 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %121, label %.loopexit102 [
    i32 0, label %122
    i32 -5, label %122
  ]

122:                                              ; preds = %120, %120
  %123 = load i32, ptr %39, align 8, !tbaa !24
  %124 = icmp eq i32 %123, 0
  %125 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %124, label %126, label %283

126:                                              ; preds = %122
  %127 = icmp eq i32 %125, 0
  br i1 %127, label %229, label %128

128:                                              ; preds = %126
  %129 = load ptr, ptr %47, align 8, !tbaa !29
  %130 = load ptr, ptr %46, align 8, !tbaa !35
  %131 = icmp eq ptr %130, %129
  br i1 %131, label %229, label %132

132:                                              ; preds = %128
  %133 = ptrtoint ptr %130 to i64
  %134 = ptrtoint ptr %129 to i64
  %135 = zext i32 %125 to i64
  %136 = icmp ult i32 %125, 4
  %137 = sub i64 %134, %133
  %138 = icmp ult i64 %137, 32
  %139 = or i1 %136, %138
  br i1 %139, label %179, label %140

140:                                              ; preds = %132
  %141 = icmp ult i32 %125, 32
  br i1 %141, label %163, label %142

142:                                              ; preds = %140
  %143 = and i64 %135, 4294967264
  br label %144

144:                                              ; preds = %144, %142
  %145 = phi i64 [ 0, %142 ], [ %152, %144 ]
  %146 = getelementptr i8, ptr %129, i64 %145
  %147 = getelementptr i8, ptr %130, i64 %145
  %148 = getelementptr i8, ptr %147, i64 16
  %149 = load <16 x i8>, ptr %147, align 1, !tbaa !36
  %150 = load <16 x i8>, ptr %148, align 1, !tbaa !36
  %151 = getelementptr i8, ptr %146, i64 16
  store <16 x i8> %149, ptr %146, align 1, !tbaa !36
  store <16 x i8> %150, ptr %151, align 1, !tbaa !36
  %152 = add nuw nsw i64 %145, 32
  %153 = icmp eq i64 %152, %143
  br i1 %153, label %154, label %144, !llvm.loop !78

154:                                              ; preds = %144
  %155 = icmp eq i64 %143, %135
  br i1 %155, label %.loopexit95, label %156

156:                                              ; preds = %154
  %157 = getelementptr i8, ptr %129, i64 %143
  %158 = getelementptr i8, ptr %130, i64 %143
  %159 = trunc nuw i64 %143 to i32
  %160 = sub i32 %125, %159
  %161 = and i64 %135, 28
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %156, %140
  %164 = phi i64 [ %143, %156 ], [ 0, %140 ]
  %165 = and i64 %135, 4294967292
  br label %166

166:                                              ; preds = %166, %163
  %167 = phi i64 [ %164, %163 ], [ %171, %166 ]
  %168 = getelementptr i8, ptr %129, i64 %167
  %169 = getelementptr i8, ptr %130, i64 %167
  %170 = load <4 x i8>, ptr %169, align 1, !tbaa !36
  store <4 x i8> %170, ptr %168, align 1, !tbaa !36
  %171 = add nuw i64 %167, 4
  %172 = icmp eq i64 %171, %165
  br i1 %172, label %173, label %166, !llvm.loop !79

173:                                              ; preds = %166
  %174 = getelementptr i8, ptr %129, i64 %165
  %175 = getelementptr i8, ptr %130, i64 %165
  %176 = trunc nuw i64 %165 to i32
  %177 = sub i32 %125, %176
  %178 = icmp eq i64 %165, %135
  br i1 %178, label %.loopexit95, label %179

179:                                              ; preds = %173, %156, %132
  %180 = phi ptr [ %129, %132 ], [ %157, %156 ], [ %174, %173 ]
  %181 = phi ptr [ %130, %132 ], [ %158, %156 ], [ %175, %173 ]
  %182 = phi i32 [ %125, %132 ], [ %160, %156 ], [ %177, %173 ]
  %183 = add i32 %182, -1
  %184 = and i32 %182, 7
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %.loopexit97, label %.preheader96

.preheader96:                                     ; preds = %179, %.preheader96
  %186 = phi ptr [ %190, %.preheader96 ], [ %180, %179 ]
  %187 = phi ptr [ %191, %.preheader96 ], [ %181, %179 ]
  %188 = phi i32 [ %192, %.preheader96 ], [ 0, %179 ]
  %189 = load i8, ptr %187, align 1, !tbaa !36
  store i8 %189, ptr %186, align 1, !tbaa !36
  %190 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %191 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %192 = add nuw nsw i32 %188, 1
  %193 = icmp eq i32 %192, %184
  br i1 %193, label %.loopexit97.loopexit, label %.preheader96, !llvm.loop !80

.loopexit97.loopexit:                             ; preds = %.preheader96
  %194 = and i32 %182, -8
  br label %.loopexit97

.loopexit97:                                      ; preds = %.loopexit97.loopexit, %179
  %195 = phi ptr [ %180, %179 ], [ %190, %.loopexit97.loopexit ]
  %196 = phi ptr [ %181, %179 ], [ %191, %.loopexit97.loopexit ]
  %197 = phi i32 [ %182, %179 ], [ %194, %.loopexit97.loopexit ]
  %198 = icmp ult i32 %183, 7
  br i1 %198, label %.loopexit95, label %.preheader94

.preheader94:                                     ; preds = %.loopexit97, %.preheader94
  %199 = phi ptr [ %225, %.preheader94 ], [ %195, %.loopexit97 ]
  %200 = phi ptr [ %226, %.preheader94 ], [ %196, %.loopexit97 ]
  %201 = phi i32 [ %224, %.preheader94 ], [ %197, %.loopexit97 ]
  %202 = load i8, ptr %200, align 1, !tbaa !36
  store i8 %202, ptr %199, align 1, !tbaa !36
  %203 = getelementptr inbounds nuw i8, ptr %199, i64 1
  %204 = getelementptr inbounds nuw i8, ptr %200, i64 1
  %205 = load i8, ptr %204, align 1, !tbaa !36
  store i8 %205, ptr %203, align 1, !tbaa !36
  %206 = getelementptr inbounds nuw i8, ptr %199, i64 2
  %207 = getelementptr inbounds nuw i8, ptr %200, i64 2
  %208 = load i8, ptr %207, align 1, !tbaa !36
  store i8 %208, ptr %206, align 1, !tbaa !36
  %209 = getelementptr inbounds nuw i8, ptr %199, i64 3
  %210 = getelementptr inbounds nuw i8, ptr %200, i64 3
  %211 = load i8, ptr %210, align 1, !tbaa !36
  store i8 %211, ptr %209, align 1, !tbaa !36
  %212 = getelementptr inbounds nuw i8, ptr %199, i64 4
  %213 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %214 = load i8, ptr %213, align 1, !tbaa !36
  store i8 %214, ptr %212, align 1, !tbaa !36
  %215 = getelementptr inbounds nuw i8, ptr %199, i64 5
  %216 = getelementptr inbounds nuw i8, ptr %200, i64 5
  %217 = load i8, ptr %216, align 1, !tbaa !36
  store i8 %217, ptr %215, align 1, !tbaa !36
  %218 = getelementptr inbounds nuw i8, ptr %199, i64 6
  %219 = getelementptr inbounds nuw i8, ptr %200, i64 6
  %220 = load i8, ptr %219, align 1, !tbaa !36
  store i8 %220, ptr %218, align 1, !tbaa !36
  %221 = getelementptr inbounds nuw i8, ptr %199, i64 7
  %222 = getelementptr inbounds nuw i8, ptr %200, i64 7
  %223 = load i8, ptr %222, align 1, !tbaa !36
  store i8 %223, ptr %221, align 1, !tbaa !36
  %224 = add i32 %201, -8
  %225 = getelementptr inbounds nuw i8, ptr %199, i64 8
  %226 = getelementptr inbounds nuw i8, ptr %200, i64 8
  %227 = icmp eq i32 %224, 0
  br i1 %227, label %.loopexit95, label %.preheader94, !llvm.loop !81

.loopexit95:                                      ; preds = %.preheader94, %.loopexit97, %173, %154
  %228 = load i32, ptr %40, align 8, !tbaa !34
  br label %229

229:                                              ; preds = %.loopexit95, %128, %126
  %230 = phi i32 [ %228, %.loopexit95 ], [ %125, %128 ], [ 0, %126 ]
  %231 = load i32, ptr %42, align 8, !tbaa !27
  %232 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %231, i32 %230), !nosanitize !20
  %233 = extractvalue { i32, i1 } %232, 1, !nosanitize !20
  br i1 %233, label %234, label %235, !prof !21, !nosanitize !20

234:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

235:                                              ; preds = %229
  %236 = extractvalue { i32, i1 } %232, 0, !nosanitize !20
  %237 = load ptr, ptr %47, align 8, !tbaa !29
  %238 = zext i32 %230 to i64
  %239 = getelementptr inbounds nuw i8, ptr %237, i64 %238
  store i32 0, ptr %48, align 4, !tbaa !17
  %240 = tail call ptr @__errno_location() #17
  store i32 0, ptr %240, align 4, !tbaa !45
  br label %241

241:                                              ; preds = %260, %235
  %242 = phi i32 [ 0, %235 ], [ %261, %260 ]
  %243 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %236, i32 %242), !nosanitize !20
  %244 = extractvalue { i32, i1 } %243, 1, !nosanitize !20
  br i1 %244, label %245, label %246, !prof !21, !nosanitize !20

245:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

246:                                              ; preds = %241
  %247 = extractvalue { i32, i1 } %243, 0, !nosanitize !20
  %248 = tail call i32 @llvm.umin.i32(i32 %247, i32 1073741824)
  %249 = load i32, ptr %49, align 4, !tbaa !46
  %250 = zext i32 %242 to i64
  %251 = getelementptr inbounds nuw i8, ptr %239, i64 %250
  %252 = zext nneg i32 %248 to i64
  %253 = tail call i64 @read(i32 noundef %249, ptr noundef %251, i64 noundef %252) #13
  %254 = trunc i64 %253 to i32
  %255 = icmp slt i32 %254, 1
  br i1 %255, label %263, label %256

256:                                              ; preds = %246
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %242, i32 %254), !nosanitize !20
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !20
  br i1 %258, label %259, label %260, !prof !21, !nosanitize !20

259:                                              ; preds = %256
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

260:                                              ; preds = %256
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !20
  %262 = icmp ult i32 %261, %236
  br i1 %262, label %241, label %.loopexit93, !llvm.loop !47

263:                                              ; preds = %246
  %264 = icmp slt i32 %254, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %263
  %266 = load i32, ptr %240, align 4, !tbaa !45
  %267 = icmp eq i32 %266, 11
  br i1 %267, label %268, label %.loopexit103

268:                                              ; preds = %265
  store i32 1, ptr %48, align 4, !tbaa !17
  %269 = icmp eq i32 %242, 0
  br i1 %269, label %270, label %.loopexit93

270:                                              ; preds = %268
  %271 = load i32, ptr %240, align 4, !tbaa !45
  br label %.loopexit103

272:                                              ; preds = %263
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit93

.loopexit103:                                     ; preds = %265, %270
  %273 = phi i32 [ %271, %270 ], [ %266, %265 ]
  %274 = tail call ptr @strerror(i32 noundef %273) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %274) #13
  br label %.loopexit102

.loopexit93:                                      ; preds = %260, %272, %268
  %275 = phi i32 [ %242, %272 ], [ %242, %268 ], [ %261, %260 ]
  %276 = load i32, ptr %40, align 8, !tbaa !34
  %277 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 %275), !nosanitize !20
  %278 = extractvalue { i32, i1 } %277, 1, !nosanitize !20
  br i1 %278, label %279, label %280, !prof !21, !nosanitize !20

279:                                              ; preds = %.loopexit93
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

280:                                              ; preds = %.loopexit93
  %281 = extractvalue { i32, i1 } %277, 0, !nosanitize !20
  store i32 %281, ptr %40, align 8, !tbaa !34
  %282 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %282, ptr %46, align 8, !tbaa !35
  br label %283

283:                                              ; preds = %280, %122
  %284 = phi i32 [ %281, %280 ], [ %125, %122 ]
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %315, label %286

286:                                              ; preds = %283
  %287 = load i32, ptr %48, align 4, !tbaa !17
  %288 = icmp ne i32 %287, 0
  %289 = icmp ult i32 %284, 4
  %290 = and i1 %289, %288
  br i1 %290, label %315, label %291

291:                                              ; preds = %286
  %292 = icmp ugt i32 %284, 3
  %293 = load ptr, ptr %46, align 8, !tbaa !35
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
  %310 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %450

311:                                              ; preds = %305, %301, %297, %294, %291
  %312 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %312, ptr %37, align 8, !tbaa !22
  %313 = zext i32 %284 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %312, ptr align 1 %293, i64 %313, i1 false)
  %314 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %314, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %452

315:                                              ; preds = %286, %283, %115
  %316 = load i32, ptr %41, align 8, !tbaa !26
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %.loopexit104, label %450

318:                                              ; preds = %87
  %319 = load ptr, ptr %44, align 8, !tbaa !30
  %320 = load i32, ptr %42, align 8, !tbaa !27
  %321 = shl i32 %320, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %322 = tail call ptr @__errno_location() #17
  store i32 0, ptr %322, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %323

323:                                              ; preds = %339, %318
  %324 = phi i32 [ %340, %339 ], [ 0, %318 ]
  %325 = sub i32 %321, %324
  %326 = tail call i32 @llvm.umin.i32(i32 %325, i32 1073741824)
  %327 = load i32, ptr %49, align 4, !tbaa !46
  %328 = zext i32 %324 to i64
  %329 = getelementptr inbounds nuw i8, ptr %319, i64 %328
  %330 = zext nneg i32 %326 to i64
  %331 = tail call i64 @read(i32 noundef %327, ptr noundef %329, i64 noundef %330) #13
  %332 = trunc i64 %331 to i32
  %333 = icmp slt i32 %332, 1
  br i1 %333, label %342, label %334

334:                                              ; preds = %323
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
  %341 = icmp ult i32 %340, %321
  br i1 %341, label %323, label %.loopexit101, !llvm.loop !47

342:                                              ; preds = %323
  %343 = icmp slt i32 %332, 0
  br i1 %343, label %344, label %352

344:                                              ; preds = %342
  %345 = load i32, ptr %322, align 4, !tbaa !45
  %346 = icmp eq i32 %345, 11
  br i1 %346, label %347, label %.loopexit106

347:                                              ; preds = %344
  store i32 1, ptr %48, align 4, !tbaa !17
  %348 = load i32, ptr %0, align 4, !tbaa !45
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %.loopexit101

350:                                              ; preds = %347
  %351 = load i32, ptr %322, align 4, !tbaa !45
  br label %.loopexit106

352:                                              ; preds = %342
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit101

.loopexit106:                                     ; preds = %344, %350
  %353 = phi i32 [ %351, %350 ], [ %345, %344 ]
  %354 = tail call ptr @strerror(i32 noundef %353) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %354) #13
  br label %.loopexit102

.loopexit101:                                     ; preds = %339, %352, %347
  %355 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %355, ptr %37, align 8, !tbaa !22
  br label %.loopexit104

356:                                              ; preds = %87
  %357 = load i32, ptr %42, align 8, !tbaa !27
  %358 = shl i32 %357, 1
  store i32 %358, ptr %43, align 8, !tbaa !48
  %359 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %359, ptr %45, align 8, !tbaa !49
  br label %360

360:                                              ; preds = %433, %356
  %361 = phi i32 [ 0, %356 ], [ %418, %433 ]
  %362 = load i32, ptr %40, align 8, !tbaa !34
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %417

364:                                              ; preds = %360
  %365 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %365, label %.loopexit98 [
    i32 0, label %366
    i32 -5, label %366
  ]

366:                                              ; preds = %364, %364
  %367 = load i32, ptr %39, align 8, !tbaa !24
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %413

369:                                              ; preds = %366
  %370 = load i32, ptr %42, align 8, !tbaa !27
  %371 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %372 = tail call ptr @__errno_location() #17
  store i32 0, ptr %372, align 4, !tbaa !45
  br label %373

373:                                              ; preds = %388, %369
  %374 = phi i32 [ 0, %369 ], [ %389, %388 ]
  %375 = sub i32 %370, %374
  %376 = tail call i32 @llvm.umin.i32(i32 %375, i32 1073741824)
  %377 = load i32, ptr %49, align 4, !tbaa !46
  %378 = zext i32 %374 to i64
  %379 = getelementptr inbounds nuw i8, ptr %371, i64 %378
  %380 = zext nneg i32 %376 to i64
  %381 = tail call i64 @read(i32 noundef %377, ptr noundef %379, i64 noundef %380) #13
  %382 = trunc i64 %381 to i32
  %383 = icmp slt i32 %382, 1
  br i1 %383, label %391, label %384

384:                                              ; preds = %373
  %385 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %374, i32 %382), !nosanitize !20
  %386 = extractvalue { i32, i1 } %385, 1, !nosanitize !20
  br i1 %386, label %387, label %388, !prof !21, !nosanitize !20

387:                                              ; preds = %384
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

388:                                              ; preds = %384
  %389 = extractvalue { i32, i1 } %385, 0, !nosanitize !20
  %390 = icmp ult i32 %389, %370
  br i1 %390, label %373, label %.loopexit92, !llvm.loop !47

391:                                              ; preds = %373
  %392 = icmp slt i32 %382, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %391
  %394 = load i32, ptr %372, align 4, !tbaa !45
  %395 = icmp eq i32 %394, 11
  br i1 %395, label %396, label %.loopexit100

396:                                              ; preds = %393
  store i32 1, ptr %48, align 4, !tbaa !17
  %397 = icmp eq i32 %374, 0
  br i1 %397, label %398, label %.loopexit92

398:                                              ; preds = %396
  %399 = load i32, ptr %372, align 4, !tbaa !45
  br label %.loopexit100

400:                                              ; preds = %391
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit92

.loopexit100:                                     ; preds = %393, %398
  %401 = phi i32 [ %399, %398 ], [ %394, %393 ]
  %402 = tail call ptr @strerror(i32 noundef %401) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %402) #13
  %403 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit98

.loopexit92:                                      ; preds = %388, %400, %396
  %404 = phi i32 [ %374, %400 ], [ %374, %396 ], [ %389, %388 ]
  %405 = load i32, ptr %40, align 8, !tbaa !34
  %406 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %405, i32 %404), !nosanitize !20
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !20
  br i1 %407, label %408, label %409, !prof !21, !nosanitize !20

408:                                              ; preds = %.loopexit92
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

409:                                              ; preds = %.loopexit92
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !20
  store i32 %410, ptr %40, align 8, !tbaa !34
  %411 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %411, ptr %46, align 8, !tbaa !35
  %412 = icmp eq i32 %410, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %409, %366
  %414 = load i32, ptr %48, align 4, !tbaa !17
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %.loopexit98

416:                                              ; preds = %413
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit98

417:                                              ; preds = %409, %360
  %418 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %419 = load i32, ptr %43, align 8, !tbaa !48
  %420 = icmp ult i32 %419, %358
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %422

422:                                              ; preds = %421, %417
  switch i32 %418, label %433 [
    i32 -2, label %423
    i32 2, label %423
    i32 -4, label %424
    i32 -3, label %425
  ]

423:                                              ; preds = %422, %422
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit98

424:                                              ; preds = %422
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit98

425:                                              ; preds = %422
  %426 = load i32, ptr %50, align 4, !tbaa !33
  %427 = icmp eq i32 %426, 1
  br i1 %427, label %428, label %429

428:                                              ; preds = %425
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %.loopexit98

429:                                              ; preds = %425
  %430 = load ptr, ptr %51, align 8, !tbaa !50
  %431 = icmp eq ptr %430, null
  %432 = select i1 %431, ptr @.str.6, ptr %430
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %432) #13
  br label %.loopexit98

433:                                              ; preds = %422
  %434 = icmp ne i32 %419, 0
  %435 = icmp ne i32 %418, 1
  %436 = select i1 %434, i1 %435, i1 false
  br i1 %436, label %360, label %.loopexit98, !llvm.loop !51

.loopexit98:                                      ; preds = %433, %364, %429, %428, %424, %423, %416, %413, %.loopexit100
  %437 = phi i32 [ %361, %413 ], [ %361, %416 ], [ %418, %423 ], [ -4, %424 ], [ 0, %428 ], [ -3, %429 ], [ %403, %.loopexit100 ], [ %418, %433 ], [ %365, %364 ]
  %438 = load i32, ptr %43, align 8, !tbaa !48
  %439 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %358, i32 %438), !nosanitize !20
  %440 = extractvalue { i32, i1 } %439, 1, !nosanitize !20
  br i1 %440, label %441, label %442, !prof !21, !nosanitize !20

441:                                              ; preds = %.loopexit98
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

442:                                              ; preds = %.loopexit98
  %443 = extractvalue { i32, i1 } %439, 0, !nosanitize !20
  store i32 %443, ptr %0, align 8, !tbaa !19
  %444 = load ptr, ptr %45, align 8, !tbaa !49
  %445 = zext i32 %443 to i64
  %446 = sub nsw i64 0, %445
  %447 = getelementptr inbounds i8, ptr %444, i64 %446
  store ptr %447, ptr %37, align 8, !tbaa !22
  switch i32 %437, label %.loopexit102 [
    i32 1, label %448
    i32 0, label %450
  ]

448:                                              ; preds = %442
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %450

449:                                              ; preds = %87
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit102

450:                                              ; preds = %448, %442, %315, %309
  %451 = load i32, ptr %0, align 8, !tbaa !19
  br label %452

452:                                              ; preds = %450, %311
  %453 = phi i32 [ %451, %450 ], [ %314, %311 ]
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %.loopexit104

455:                                              ; preds = %452
  %456 = load i32, ptr %39, align 8, !tbaa !24
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %.backedge, label %458

458:                                              ; preds = %455
  %459 = load i32, ptr %40, align 8, !tbaa !34
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %.loopexit104, label %.backedge

.backedge:                                        ; preds = %458, %455
  br label %87, !llvm.loop !52

.loopexit104:                                     ; preds = %458, %452, %315, %.loopexit101
  %461 = load i64, ptr %33, align 8, !tbaa !18
  br label %462

462:                                              ; preds = %.loopexit104, %79
  %463 = phi i64 [ %461, %.loopexit104 ], [ %80, %79 ]
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %.loopexit105, label %55, !llvm.loop !53

.loopexit105:                                     ; preds = %462, %84, %32
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %483

483:                                              ; preds = %.loopexit83, %.loopexit105
  %484 = phi ptr [ %2, %.loopexit105 ], [ %1065, %.loopexit83 ]
  %485 = phi i64 [ 1, %.loopexit105 ], [ %1066, %.loopexit83 ]
  %486 = phi i64 [ 0, %.loopexit105 ], [ %1067, %.loopexit83 ]
  %.fr = freeze i64 %485
  %487 = call i64 @llvm.umin.i64(i64 %.fr, i64 4294967295)
  %488 = trunc nuw i64 %487 to i32
  %489 = load i32, ptr %0, align 8, !tbaa !19
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %506, label %491

491:                                              ; preds = %483
  %492 = call i32 @llvm.umin.i32(i32 %489, i32 %488)
  %493 = load ptr, ptr %465, align 8, !tbaa !22
  %494 = zext i32 %492 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %484, ptr align 1 %493, i64 %494, i1 false)
  %495 = load ptr, ptr %465, align 8, !tbaa !22
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 %494
  store ptr %496, ptr %465, align 8, !tbaa !22
  %497 = load i32, ptr %0, align 8, !tbaa !19
  %498 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %497, i32 %492), !nosanitize !20
  %499 = extractvalue { i32, i1 } %498, 1, !nosanitize !20
  br i1 %499, label %500, label %501, !prof !21, !nosanitize !20

500:                                              ; preds = %491
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

501:                                              ; preds = %491
  %502 = extractvalue { i32, i1 } %498, 0, !nosanitize !20
  store i32 %502, ptr %0, align 8, !tbaa !19
  %503 = load i32, ptr %9, align 8, !tbaa !16
  %504 = icmp ne i32 %503, 0
  %505 = sext i1 %504 to i32
  br label %1046

506:                                              ; preds = %483
  %507 = load i32, ptr %466, align 8, !tbaa !24
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %512, label %509

509:                                              ; preds = %506
  %510 = load i32, ptr %467, align 8, !tbaa !25
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %.loopexit91, label %512

512:                                              ; preds = %509, %506
  %513 = load i32, ptr %468, align 8, !tbaa !26
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %.preheader863, label %515

515:                                              ; preds = %512
  %516 = load i32, ptr %469, align 8, !tbaa !27
  %517 = shl i32 %516, 1
  %518 = icmp ugt i32 %517, %488
  br i1 %518, label %.preheader863, label %899

.preheader863:                                    ; preds = %515, %512
  br label %519

519:                                              ; preds = %.preheader863, %894
  %520 = phi i32 [ %895, %894 ], [ %513, %.preheader863 ]
  switch i32 %520, label %882 [
    i32 0, label %521
    i32 1, label %750
    i32 2, label %789
  ]

521:                                              ; preds = %519
  %522 = load i32, ptr %469, align 8, !tbaa !27
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %541

524:                                              ; preds = %521
  %525 = load i32, ptr %480, align 4, !tbaa !28
  %526 = zext i32 %525 to i64
  %527 = call noalias ptr @malloc(i64 noundef %526) #16
  store ptr %527, ptr %473, align 8, !tbaa !29
  %528 = shl i32 %525, 1
  %529 = zext i32 %528 to i64
  %530 = call noalias ptr @malloc(i64 noundef %529) #16
  store ptr %530, ptr %479, align 8, !tbaa !30
  %531 = icmp eq ptr %527, null
  %532 = icmp eq ptr %530, null
  %533 = or i1 %531, %532
  br i1 %533, label %534, label %535

534:                                              ; preds = %524
  call void @free(ptr noundef %530) #13
  call void @free(ptr noundef %527) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit81

535:                                              ; preds = %524
  store i32 %525, ptr %469, align 8, !tbaa !27
  store i32 0, ptr %467, align 8, !tbaa !25
  store ptr null, ptr %472, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %481, i8 0, i64 24, i1 false)
  %536 = call i32 @inflateInit2_(ptr noundef nonnull %472, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %541, label %538

538:                                              ; preds = %535
  %539 = load ptr, ptr %479, align 8, !tbaa !30
  call void @free(ptr noundef %539) #13
  %540 = load ptr, ptr %473, align 8, !tbaa !29
  call void @free(ptr noundef %540) #13
  store i32 0, ptr %469, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit81

541:                                              ; preds = %535, %521
  %542 = load i32, ptr %482, align 8, !tbaa !32
  %543 = icmp eq i32 %542, -1
  br i1 %543, label %547, label %544

544:                                              ; preds = %541
  %545 = load i32, ptr %476, align 4, !tbaa !33
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %552

547:                                              ; preds = %544, %541
  %548 = call i32 @inflateReset(ptr noundef nonnull %472) #13
  store i32 2, ptr %468, align 8, !tbaa !26
  %549 = load i32, ptr %476, align 4, !tbaa !33
  %550 = icmp ne i32 %549, -1
  %551 = zext i1 %550 to i32
  store i32 %551, ptr %476, align 4, !tbaa !33
  store i32 0, ptr %482, align 8, !tbaa !32
  br label %747

552:                                              ; preds = %544
  %553 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %553, label %.loopexit81 [
    i32 0, label %554
    i32 -5, label %554
  ]

554:                                              ; preds = %552, %552
  %555 = load i32, ptr %466, align 8, !tbaa !24
  %556 = icmp eq i32 %555, 0
  %557 = load i32, ptr %467, align 8, !tbaa !34
  br i1 %556, label %558, label %715

558:                                              ; preds = %554
  %559 = icmp eq i32 %557, 0
  br i1 %559, label %661, label %560

560:                                              ; preds = %558
  %561 = load ptr, ptr %473, align 8, !tbaa !29
  %562 = load ptr, ptr %472, align 8, !tbaa !35
  %563 = icmp eq ptr %562, %561
  br i1 %563, label %661, label %564

564:                                              ; preds = %560
  %565 = ptrtoint ptr %562 to i64
  %566 = ptrtoint ptr %561 to i64
  %567 = zext i32 %557 to i64
  %568 = icmp ult i32 %557, 4
  %569 = sub i64 %566, %565
  %570 = icmp ult i64 %569, 32
  %571 = or i1 %568, %570
  br i1 %571, label %611, label %572

572:                                              ; preds = %564
  %573 = icmp ult i32 %557, 32
  br i1 %573, label %595, label %574

574:                                              ; preds = %572
  %575 = and i64 %567, 4294967264
  br label %576

576:                                              ; preds = %576, %574
  %577 = phi i64 [ 0, %574 ], [ %584, %576 ]
  %578 = getelementptr i8, ptr %561, i64 %577
  %579 = getelementptr i8, ptr %562, i64 %577
  %580 = getelementptr i8, ptr %579, i64 16
  %581 = load <16 x i8>, ptr %579, align 1, !tbaa !36
  %582 = load <16 x i8>, ptr %580, align 1, !tbaa !36
  %583 = getelementptr i8, ptr %578, i64 16
  store <16 x i8> %581, ptr %578, align 1, !tbaa !36
  store <16 x i8> %582, ptr %583, align 1, !tbaa !36
  %584 = add nuw nsw i64 %577, 32
  %585 = icmp eq i64 %584, %575
  br i1 %585, label %586, label %576, !llvm.loop !82

586:                                              ; preds = %576
  %587 = icmp eq i64 %575, %567
  br i1 %587, label %.loopexit74, label %588

588:                                              ; preds = %586
  %589 = getelementptr i8, ptr %561, i64 %575
  %590 = getelementptr i8, ptr %562, i64 %575
  %591 = trunc nuw i64 %575 to i32
  %592 = sub i32 %557, %591
  %593 = and i64 %567, 28
  %594 = icmp eq i64 %593, 0
  br i1 %594, label %611, label %595

595:                                              ; preds = %588, %572
  %596 = phi i64 [ %575, %588 ], [ 0, %572 ]
  %597 = and i64 %567, 4294967292
  br label %598

598:                                              ; preds = %598, %595
  %599 = phi i64 [ %596, %595 ], [ %603, %598 ]
  %600 = getelementptr i8, ptr %561, i64 %599
  %601 = getelementptr i8, ptr %562, i64 %599
  %602 = load <4 x i8>, ptr %601, align 1, !tbaa !36
  store <4 x i8> %602, ptr %600, align 1, !tbaa !36
  %603 = add nuw i64 %599, 4
  %604 = icmp eq i64 %603, %597
  br i1 %604, label %605, label %598, !llvm.loop !83

605:                                              ; preds = %598
  %606 = getelementptr i8, ptr %561, i64 %597
  %607 = getelementptr i8, ptr %562, i64 %597
  %608 = trunc nuw i64 %597 to i32
  %609 = sub i32 %557, %608
  %610 = icmp eq i64 %597, %567
  br i1 %610, label %.loopexit74, label %611

611:                                              ; preds = %605, %588, %564
  %612 = phi ptr [ %561, %564 ], [ %589, %588 ], [ %606, %605 ]
  %613 = phi ptr [ %562, %564 ], [ %590, %588 ], [ %607, %605 ]
  %614 = phi i32 [ %557, %564 ], [ %592, %588 ], [ %609, %605 ]
  %615 = add i32 %614, -1
  %616 = and i32 %614, 7
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %.loopexit76, label %.preheader75

.preheader75:                                     ; preds = %611, %.preheader75
  %618 = phi ptr [ %622, %.preheader75 ], [ %612, %611 ]
  %619 = phi ptr [ %623, %.preheader75 ], [ %613, %611 ]
  %620 = phi i32 [ %624, %.preheader75 ], [ 0, %611 ]
  %621 = load i8, ptr %619, align 1, !tbaa !36
  store i8 %621, ptr %618, align 1, !tbaa !36
  %622 = getelementptr inbounds nuw i8, ptr %618, i64 1
  %623 = getelementptr inbounds nuw i8, ptr %619, i64 1
  %624 = add nuw nsw i32 %620, 1
  %625 = icmp eq i32 %624, %616
  br i1 %625, label %.loopexit76.loopexit, label %.preheader75, !llvm.loop !84

.loopexit76.loopexit:                             ; preds = %.preheader75
  %626 = and i32 %614, -8
  br label %.loopexit76

.loopexit76:                                      ; preds = %.loopexit76.loopexit, %611
  %627 = phi ptr [ %612, %611 ], [ %622, %.loopexit76.loopexit ]
  %628 = phi ptr [ %613, %611 ], [ %623, %.loopexit76.loopexit ]
  %629 = phi i32 [ %614, %611 ], [ %626, %.loopexit76.loopexit ]
  %630 = icmp ult i32 %615, 7
  br i1 %630, label %.loopexit74, label %.preheader

.preheader:                                       ; preds = %.loopexit76, %.preheader
  %631 = phi ptr [ %657, %.preheader ], [ %627, %.loopexit76 ]
  %632 = phi ptr [ %658, %.preheader ], [ %628, %.loopexit76 ]
  %633 = phi i32 [ %656, %.preheader ], [ %629, %.loopexit76 ]
  %634 = load i8, ptr %632, align 1, !tbaa !36
  store i8 %634, ptr %631, align 1, !tbaa !36
  %635 = getelementptr inbounds nuw i8, ptr %631, i64 1
  %636 = getelementptr inbounds nuw i8, ptr %632, i64 1
  %637 = load i8, ptr %636, align 1, !tbaa !36
  store i8 %637, ptr %635, align 1, !tbaa !36
  %638 = getelementptr inbounds nuw i8, ptr %631, i64 2
  %639 = getelementptr inbounds nuw i8, ptr %632, i64 2
  %640 = load i8, ptr %639, align 1, !tbaa !36
  store i8 %640, ptr %638, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %631, i64 3
  %642 = getelementptr inbounds nuw i8, ptr %632, i64 3
  %643 = load i8, ptr %642, align 1, !tbaa !36
  store i8 %643, ptr %641, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %631, i64 4
  %645 = getelementptr inbounds nuw i8, ptr %632, i64 4
  %646 = load i8, ptr %645, align 1, !tbaa !36
  store i8 %646, ptr %644, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %631, i64 5
  %648 = getelementptr inbounds nuw i8, ptr %632, i64 5
  %649 = load i8, ptr %648, align 1, !tbaa !36
  store i8 %649, ptr %647, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %631, i64 6
  %651 = getelementptr inbounds nuw i8, ptr %632, i64 6
  %652 = load i8, ptr %651, align 1, !tbaa !36
  store i8 %652, ptr %650, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %631, i64 7
  %654 = getelementptr inbounds nuw i8, ptr %632, i64 7
  %655 = load i8, ptr %654, align 1, !tbaa !36
  store i8 %655, ptr %653, align 1, !tbaa !36
  %656 = add i32 %633, -8
  %657 = getelementptr inbounds nuw i8, ptr %631, i64 8
  %658 = getelementptr inbounds nuw i8, ptr %632, i64 8
  %659 = icmp eq i32 %656, 0
  br i1 %659, label %.loopexit74, label %.preheader, !llvm.loop !85

.loopexit74:                                      ; preds = %.preheader, %.loopexit76, %605, %586
  %660 = load i32, ptr %467, align 8, !tbaa !34
  br label %661

661:                                              ; preds = %.loopexit74, %560, %558
  %662 = phi i32 [ %660, %.loopexit74 ], [ %557, %560 ], [ 0, %558 ]
  %663 = load i32, ptr %469, align 8, !tbaa !27
  %664 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %663, i32 %662), !nosanitize !20
  %665 = extractvalue { i32, i1 } %664, 1, !nosanitize !20
  br i1 %665, label %666, label %667, !prof !21, !nosanitize !20

666:                                              ; preds = %661
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

667:                                              ; preds = %661
  %668 = extractvalue { i32, i1 } %664, 0, !nosanitize !20
  %669 = load ptr, ptr %473, align 8, !tbaa !29
  %670 = zext i32 %662 to i64
  %671 = getelementptr inbounds nuw i8, ptr %669, i64 %670
  store i32 0, ptr %474, align 4, !tbaa !17
  %672 = tail call ptr @__errno_location() #17
  store i32 0, ptr %672, align 4, !tbaa !45
  br label %673

673:                                              ; preds = %692, %667
  %674 = phi i32 [ 0, %667 ], [ %693, %692 ]
  %675 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %668, i32 %674), !nosanitize !20
  %676 = extractvalue { i32, i1 } %675, 1, !nosanitize !20
  br i1 %676, label %677, label %678, !prof !21, !nosanitize !20

677:                                              ; preds = %673
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

678:                                              ; preds = %673
  %679 = extractvalue { i32, i1 } %675, 0, !nosanitize !20
  %680 = call i32 @llvm.umin.i32(i32 %679, i32 1073741824)
  %681 = load i32, ptr %475, align 4, !tbaa !46
  %682 = zext i32 %674 to i64
  %683 = getelementptr inbounds nuw i8, ptr %671, i64 %682
  %684 = zext nneg i32 %680 to i64
  %685 = call i64 @read(i32 noundef %681, ptr noundef %683, i64 noundef %684) #13
  %686 = trunc i64 %685 to i32
  %687 = icmp slt i32 %686, 1
  br i1 %687, label %695, label %688

688:                                              ; preds = %678
  %689 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %674, i32 %686), !nosanitize !20
  %690 = extractvalue { i32, i1 } %689, 1, !nosanitize !20
  br i1 %690, label %691, label %692, !prof !21, !nosanitize !20

691:                                              ; preds = %688
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

692:                                              ; preds = %688
  %693 = extractvalue { i32, i1 } %689, 0, !nosanitize !20
  %694 = icmp ult i32 %693, %668
  br i1 %694, label %673, label %.loopexit73, !llvm.loop !47

695:                                              ; preds = %678
  %696 = icmp slt i32 %686, 0
  br i1 %696, label %697, label %704

697:                                              ; preds = %695
  %698 = load i32, ptr %672, align 4, !tbaa !45
  %699 = icmp eq i32 %698, 11
  br i1 %699, label %700, label %.loopexit82

700:                                              ; preds = %697
  store i32 1, ptr %474, align 4, !tbaa !17
  %701 = icmp eq i32 %674, 0
  br i1 %701, label %702, label %.loopexit73

702:                                              ; preds = %700
  %703 = load i32, ptr %672, align 4, !tbaa !45
  br label %.loopexit82

704:                                              ; preds = %695
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit73

.loopexit82:                                      ; preds = %697, %702
  %705 = phi i32 [ %703, %702 ], [ %698, %697 ]
  %706 = call ptr @strerror(i32 noundef %705) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %706) #13
  br label %.loopexit81

.loopexit73:                                      ; preds = %692, %704, %700
  %707 = phi i32 [ %674, %704 ], [ %674, %700 ], [ %693, %692 ]
  %708 = load i32, ptr %467, align 8, !tbaa !34
  %709 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %708, i32 %707), !nosanitize !20
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !20
  br i1 %710, label %711, label %712, !prof !21, !nosanitize !20

711:                                              ; preds = %.loopexit73
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

712:                                              ; preds = %.loopexit73
  %713 = extractvalue { i32, i1 } %709, 0, !nosanitize !20
  store i32 %713, ptr %467, align 8, !tbaa !34
  %714 = load ptr, ptr %473, align 8, !tbaa !29
  store ptr %714, ptr %472, align 8, !tbaa !35
  br label %715

715:                                              ; preds = %712, %554
  %716 = phi i32 [ %713, %712 ], [ %557, %554 ]
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %747, label %718

718:                                              ; preds = %715
  %719 = load i32, ptr %474, align 4, !tbaa !17
  %720 = icmp ne i32 %719, 0
  %721 = icmp ult i32 %716, 4
  %722 = and i1 %721, %720
  br i1 %722, label %747, label %723

723:                                              ; preds = %718
  %724 = icmp ugt i32 %716, 3
  %725 = load ptr, ptr %472, align 8, !tbaa !35
  br i1 %724, label %726, label %743

726:                                              ; preds = %723
  %727 = load i8, ptr %725, align 1, !tbaa !36
  %728 = icmp eq i8 %727, 31
  br i1 %728, label %729, label %743

729:                                              ; preds = %726
  %730 = getelementptr inbounds nuw i8, ptr %725, i64 1
  %731 = load i8, ptr %730, align 1, !tbaa !36
  %732 = icmp eq i8 %731, -117
  br i1 %732, label %733, label %743

733:                                              ; preds = %729
  %734 = getelementptr inbounds nuw i8, ptr %725, i64 2
  %735 = load i8, ptr %734, align 1, !tbaa !36
  %736 = icmp eq i8 %735, 8
  br i1 %736, label %737, label %743

737:                                              ; preds = %733
  %738 = getelementptr inbounds nuw i8, ptr %725, i64 3
  %739 = load i8, ptr %738, align 1, !tbaa !36
  %740 = icmp ult i8 %739, 32
  br i1 %740, label %741, label %743

741:                                              ; preds = %737
  %742 = call i32 @inflateReset(ptr noundef nonnull %472) #13
  store i32 2, ptr %468, align 8, !tbaa !26
  store i32 1, ptr %476, align 4, !tbaa !33
  store i32 0, ptr %482, align 8, !tbaa !32
  br label %883

743:                                              ; preds = %737, %733, %729, %726, %723
  %744 = load ptr, ptr %479, align 8, !tbaa !30
  store ptr %744, ptr %465, align 8, !tbaa !22
  %745 = zext i32 %716 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %744, ptr align 1 %725, i64 %745, i1 false)
  %746 = load i32, ptr %467, align 8, !tbaa !34
  store i32 %746, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %467, align 8, !tbaa !34
  store i32 1, ptr %468, align 8, !tbaa !26
  br label %885

747:                                              ; preds = %718, %715, %547
  %748 = load i32, ptr %468, align 8, !tbaa !26
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %.loopexit83, label %883

750:                                              ; preds = %519
  %751 = load ptr, ptr %479, align 8, !tbaa !30
  %752 = load i32, ptr %469, align 8, !tbaa !27
  %753 = shl i32 %752, 1
  store i32 0, ptr %474, align 4, !tbaa !17
  %754 = tail call ptr @__errno_location() #17
  store i32 0, ptr %754, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %755

755:                                              ; preds = %771, %750
  %756 = phi i32 [ %772, %771 ], [ 0, %750 ]
  %757 = sub i32 %753, %756
  %758 = call i32 @llvm.umin.i32(i32 %757, i32 1073741824)
  %759 = load i32, ptr %475, align 4, !tbaa !46
  %760 = zext i32 %756 to i64
  %761 = getelementptr inbounds nuw i8, ptr %751, i64 %760
  %762 = zext nneg i32 %758 to i64
  %763 = call i64 @read(i32 noundef %759, ptr noundef %761, i64 noundef %762) #13
  %764 = trunc i64 %763 to i32
  %765 = icmp slt i32 %764, 1
  br i1 %765, label %774, label %766

766:                                              ; preds = %755
  %767 = load i32, ptr %0, align 4, !tbaa !45
  %768 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %767, i32 %764), !nosanitize !20
  %769 = extractvalue { i32, i1 } %768, 1, !nosanitize !20
  br i1 %769, label %770, label %771, !prof !21, !nosanitize !20

770:                                              ; preds = %766
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

771:                                              ; preds = %766
  %772 = extractvalue { i32, i1 } %768, 0, !nosanitize !20
  store i32 %772, ptr %0, align 4, !tbaa !45
  %773 = icmp ult i32 %772, %753
  br i1 %773, label %755, label %.loopexit80, !llvm.loop !47

774:                                              ; preds = %755
  %775 = icmp slt i32 %764, 0
  br i1 %775, label %776, label %784

776:                                              ; preds = %774
  %777 = load i32, ptr %754, align 4, !tbaa !45
  %778 = icmp eq i32 %777, 11
  br i1 %778, label %779, label %785

779:                                              ; preds = %776
  store i32 1, ptr %474, align 4, !tbaa !17
  %780 = load i32, ptr %0, align 4, !tbaa !45
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %.loopexit80

782:                                              ; preds = %779
  %783 = load i32, ptr %754, align 4, !tbaa !45
  br label %785

784:                                              ; preds = %774
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit80

785:                                              ; preds = %782, %776
  %786 = phi i32 [ %783, %782 ], [ %777, %776 ]
  %787 = call ptr @strerror(i32 noundef %786) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %787) #13
  br label %.loopexit81

.loopexit80:                                      ; preds = %771, %784, %779
  %788 = load ptr, ptr %479, align 8, !tbaa !30
  store ptr %788, ptr %465, align 8, !tbaa !22
  br label %.loopexit83

789:                                              ; preds = %519
  %790 = load i32, ptr %469, align 8, !tbaa !27
  %791 = shl i32 %790, 1
  store i32 %791, ptr %470, align 8, !tbaa !48
  %792 = load ptr, ptr %479, align 8, !tbaa !30
  store ptr %792, ptr %471, align 8, !tbaa !49
  br label %793

793:                                              ; preds = %866, %789
  %794 = phi i32 [ 0, %789 ], [ %851, %866 ]
  %795 = load i32, ptr %467, align 8, !tbaa !34
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %850

797:                                              ; preds = %793
  %798 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %798, label %.loopexit77 [
    i32 0, label %799
    i32 -5, label %799
  ]

799:                                              ; preds = %797, %797
  %800 = load i32, ptr %466, align 8, !tbaa !24
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %846

802:                                              ; preds = %799
  %803 = load i32, ptr %469, align 8, !tbaa !27
  %804 = load ptr, ptr %473, align 8, !tbaa !29
  store i32 0, ptr %474, align 4, !tbaa !17
  %805 = tail call ptr @__errno_location() #17
  store i32 0, ptr %805, align 4, !tbaa !45
  br label %806

806:                                              ; preds = %821, %802
  %807 = phi i32 [ 0, %802 ], [ %822, %821 ]
  %808 = sub i32 %803, %807
  %809 = call i32 @llvm.umin.i32(i32 %808, i32 1073741824)
  %810 = load i32, ptr %475, align 4, !tbaa !46
  %811 = zext i32 %807 to i64
  %812 = getelementptr inbounds nuw i8, ptr %804, i64 %811
  %813 = zext nneg i32 %809 to i64
  %814 = call i64 @read(i32 noundef %810, ptr noundef %812, i64 noundef %813) #13
  %815 = trunc i64 %814 to i32
  %816 = icmp slt i32 %815, 1
  br i1 %816, label %824, label %817

817:                                              ; preds = %806
  %818 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %807, i32 %815), !nosanitize !20
  %819 = extractvalue { i32, i1 } %818, 1, !nosanitize !20
  br i1 %819, label %820, label %821, !prof !21, !nosanitize !20

820:                                              ; preds = %817
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

821:                                              ; preds = %817
  %822 = extractvalue { i32, i1 } %818, 0, !nosanitize !20
  %823 = icmp ult i32 %822, %803
  br i1 %823, label %806, label %.loopexit, !llvm.loop !47

824:                                              ; preds = %806
  %825 = icmp slt i32 %815, 0
  br i1 %825, label %826, label %833

826:                                              ; preds = %824
  %827 = load i32, ptr %805, align 4, !tbaa !45
  %828 = icmp eq i32 %827, 11
  br i1 %828, label %829, label %.loopexit78

829:                                              ; preds = %826
  store i32 1, ptr %474, align 4, !tbaa !17
  %830 = icmp eq i32 %807, 0
  br i1 %830, label %831, label %.loopexit

831:                                              ; preds = %829
  %832 = load i32, ptr %805, align 4, !tbaa !45
  br label %.loopexit78

833:                                              ; preds = %824
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit

.loopexit78:                                      ; preds = %826, %831
  %834 = phi i32 [ %832, %831 ], [ %827, %826 ]
  %835 = call ptr @strerror(i32 noundef %834) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %835) #13
  %836 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit77

.loopexit:                                        ; preds = %821, %833, %829
  %837 = phi i32 [ %807, %833 ], [ %807, %829 ], [ %822, %821 ]
  %838 = load i32, ptr %467, align 8, !tbaa !34
  %839 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %838, i32 %837), !nosanitize !20
  %840 = extractvalue { i32, i1 } %839, 1, !nosanitize !20
  br i1 %840, label %841, label %842, !prof !21, !nosanitize !20

841:                                              ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

842:                                              ; preds = %.loopexit
  %843 = extractvalue { i32, i1 } %839, 0, !nosanitize !20
  store i32 %843, ptr %467, align 8, !tbaa !34
  %844 = load ptr, ptr %473, align 8, !tbaa !29
  store ptr %844, ptr %472, align 8, !tbaa !35
  %845 = icmp eq i32 %843, 0
  br i1 %845, label %846, label %850

846:                                              ; preds = %842, %799
  %847 = load i32, ptr %474, align 4, !tbaa !17
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %.loopexit77

849:                                              ; preds = %846
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit77

850:                                              ; preds = %842, %793
  %851 = call i32 @inflate(ptr noundef nonnull %472, i32 noundef 0) #13
  %852 = load i32, ptr %470, align 8, !tbaa !48
  %853 = icmp ult i32 %852, %791
  br i1 %853, label %854, label %855

854:                                              ; preds = %850
  store i32 0, ptr %476, align 4, !tbaa !33
  br label %855

855:                                              ; preds = %854, %850
  switch i32 %851, label %866 [
    i32 -2, label %856
    i32 2, label %856
    i32 -4, label %857
    i32 -3, label %858
  ]

856:                                              ; preds = %855, %855
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit77

857:                                              ; preds = %855
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit77

858:                                              ; preds = %855
  %859 = load i32, ptr %476, align 4, !tbaa !33
  %860 = icmp eq i32 %859, 1
  br i1 %860, label %861, label %862

861:                                              ; preds = %858
  store i32 0, ptr %467, align 8, !tbaa !34
  store i32 1, ptr %466, align 8, !tbaa !24
  store i32 0, ptr %468, align 8, !tbaa !26
  br label %.loopexit77

862:                                              ; preds = %858
  %863 = load ptr, ptr %477, align 8, !tbaa !50
  %864 = icmp eq ptr %863, null
  %865 = select i1 %864, ptr @.str.6, ptr %863
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %865) #13
  br label %.loopexit77

866:                                              ; preds = %855
  %867 = icmp ne i32 %852, 0
  %868 = icmp ne i32 %851, 1
  %869 = select i1 %867, i1 %868, i1 false
  br i1 %869, label %793, label %.loopexit77, !llvm.loop !51

.loopexit77:                                      ; preds = %866, %797, %862, %861, %857, %856, %849, %846, %.loopexit78
  %870 = phi i32 [ %794, %846 ], [ %794, %849 ], [ %851, %856 ], [ -4, %857 ], [ 0, %861 ], [ -3, %862 ], [ %836, %.loopexit78 ], [ %798, %797 ], [ %851, %866 ]
  %871 = load i32, ptr %470, align 8, !tbaa !48
  %872 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %791, i32 %871), !nosanitize !20
  %873 = extractvalue { i32, i1 } %872, 1, !nosanitize !20
  br i1 %873, label %874, label %875, !prof !21, !nosanitize !20

874:                                              ; preds = %.loopexit77
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

875:                                              ; preds = %.loopexit77
  %876 = extractvalue { i32, i1 } %872, 0, !nosanitize !20
  store i32 %876, ptr %0, align 8, !tbaa !19
  %877 = load ptr, ptr %471, align 8, !tbaa !49
  %878 = zext i32 %876 to i64
  %879 = sub nsw i64 0, %878
  %880 = getelementptr inbounds i8, ptr %877, i64 %879
  store ptr %880, ptr %465, align 8, !tbaa !22
  switch i32 %870, label %.loopexit81 [
    i32 1, label %881
    i32 0, label %883
  ]

881:                                              ; preds = %875
  store i32 0, ptr %476, align 4, !tbaa !33
  store i32 0, ptr %468, align 8, !tbaa !26
  br label %883

882:                                              ; preds = %519
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit81

883:                                              ; preds = %881, %875, %747, %741
  %884 = load i32, ptr %0, align 8, !tbaa !19
  br label %885

885:                                              ; preds = %883, %743
  %886 = phi i32 [ %884, %883 ], [ %746, %743 ]
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %.loopexit83

888:                                              ; preds = %885
  %889 = load i32, ptr %466, align 8, !tbaa !24
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %894, label %891

891:                                              ; preds = %888
  %892 = load i32, ptr %467, align 8, !tbaa !34
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %.loopexit83, label %894

894:                                              ; preds = %891, %888
  %895 = load i32, ptr %468, align 8, !tbaa !26
  br label %519, !llvm.loop !52

.loopexit81:                                      ; preds = %875, %552, %882, %785, %.loopexit82, %538, %534
  %896 = load i32, ptr %0, align 8, !tbaa !19
  %897 = icmp eq i32 %896, 0
  %898 = sext i1 %897 to i32
  br label %.loopexit83

899:                                              ; preds = %515
  %900 = icmp eq i32 %513, 1
  br i1 %900, label %901, label %945

901:                                              ; preds = %899
  store i32 0, ptr %474, align 4, !tbaa !17
  %902 = tail call ptr @__errno_location() #17
  store i32 0, ptr %902, align 4, !tbaa !45
  %mv.h12 = icmp ult i64 %.fr, 2147483649
  br i1 %mv.h12, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %901, %913
  %903 = phi i32 [ %914, %913 ], [ 0, %901 ]
  %904 = sub i32 %488, %903
  %905 = call i32 @llvm.umin.i32(i32 %904, i32 1073741824)
  %906 = load i32, ptr %475, align 4, !tbaa !46
  %907 = zext i32 %903 to i64
  %908 = getelementptr inbounds nuw i8, ptr %484, i64 %907
  %909 = zext nneg i32 %905 to i64
  %910 = call i64 @read(i32 noundef %906, ptr noundef %908, i64 noundef %909) #13
  %911 = trunc i64 %910 to i32
  %912 = icmp slt i32 %911, 1
  br i1 %912, label %.loopexit84, label %913

913:                                              ; preds = %.mv.ph.mv.fast
  %914 = add i32 %903, %911
  %915 = icmp ult i32 %914, %488
  br i1 %915, label %.mv.ph.mv.fast, label %.loopexit85, !llvm.loop !47

.mv.ph:                                           ; preds = %901, %930
  %916 = phi i32 [ %931, %930 ], [ 0, %901 ]
  %917 = sub i32 %488, %916
  %918 = call i32 @llvm.umin.i32(i32 %917, i32 1073741824)
  %919 = load i32, ptr %475, align 4, !tbaa !46
  %920 = zext i32 %916 to i64
  %921 = getelementptr inbounds nuw i8, ptr %484, i64 %920
  %922 = zext nneg i32 %918 to i64
  %923 = call i64 @read(i32 noundef %919, ptr noundef %921, i64 noundef %922) #13
  %924 = trunc i64 %923 to i32
  %925 = icmp slt i32 %924, 1
  br i1 %925, label %.loopexit84, label %926

926:                                              ; preds = %.mv.ph
  %927 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %916, i32 %924), !nosanitize !20
  %928 = extractvalue { i32, i1 } %927, 1, !nosanitize !20
  br i1 %928, label %929, label %930, !prof !21, !nosanitize !20

929:                                              ; preds = %926
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

930:                                              ; preds = %926
  %931 = extractvalue { i32, i1 } %927, 0, !nosanitize !20
  %932 = icmp ult i32 %931, %488
  br i1 %932, label %.mv.ph, label %.loopexit85, !llvm.loop !47

.loopexit84:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa7 = phi i64 [ %907, %.mv.ph.mv.fast ], [ %920, %.mv.ph ]
  %.lcssa4 = phi i32 [ %911, %.mv.ph.mv.fast ], [ %924, %.mv.ph ]
  %.lcssa1 = phi i32 [ %903, %.mv.ph.mv.fast ], [ %916, %.mv.ph ]
  %933 = icmp slt i32 %.lcssa4, 0
  br i1 %933, label %934, label %944

934:                                              ; preds = %.loopexit84
  %935 = load i32, ptr %902, align 4, !tbaa !45
  %936 = icmp eq i32 %935, 11
  br i1 %936, label %937, label %941

937:                                              ; preds = %934
  store i32 1, ptr %474, align 4, !tbaa !17
  %938 = icmp eq i32 %.lcssa1, 0
  br i1 %938, label %939, label %1046

939:                                              ; preds = %937
  %940 = load i32, ptr %902, align 4, !tbaa !45
  br label %941

941:                                              ; preds = %939, %934
  %942 = phi i32 [ %940, %939 ], [ %935, %934 ]
  %943 = call ptr @strerror(i32 noundef %942) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %943) #13
  br label %1046

944:                                              ; preds = %.loopexit84
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %1046

945:                                              ; preds = %899
  store i32 %488, ptr %470, align 8, !tbaa !58
  store ptr %484, ptr %471, align 8, !tbaa !59
  br label %946

946:                                              ; preds = %1023, %945
  %947 = phi i32 [ 0, %945 ], [ %1008, %1023 ]
  %948 = load i32, ptr %467, align 8, !tbaa !34
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %950, label %1007

950:                                              ; preds = %946
  %951 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %951, label %.loopexit88 [
    i32 0, label %952
    i32 -5, label %952
  ]

952:                                              ; preds = %950, %950
  %953 = load i32, ptr %466, align 8, !tbaa !24
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %1003

955:                                              ; preds = %952
  %956 = load i32, ptr %469, align 8, !tbaa !27
  %957 = load ptr, ptr %473, align 8, !tbaa !29
  store i32 0, ptr %474, align 4, !tbaa !17
  %958 = tail call ptr @__errno_location() #17
  store i32 0, ptr %958, align 4, !tbaa !45
  br label %959

959:                                              ; preds = %978, %955
  %960 = phi i32 [ 0, %955 ], [ %979, %978 ]
  %961 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %956, i32 %960), !nosanitize !20
  %962 = extractvalue { i32, i1 } %961, 1, !nosanitize !20
  br i1 %962, label %963, label %964, !prof !21, !nosanitize !20

963:                                              ; preds = %959
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

964:                                              ; preds = %959
  %965 = extractvalue { i32, i1 } %961, 0, !nosanitize !20
  %966 = call i32 @llvm.umin.i32(i32 %965, i32 1073741824)
  %967 = load i32, ptr %475, align 4, !tbaa !46
  %968 = zext i32 %960 to i64
  %969 = getelementptr inbounds nuw i8, ptr %957, i64 %968
  %970 = zext nneg i32 %966 to i64
  %971 = call i64 @read(i32 noundef %967, ptr noundef %969, i64 noundef %970) #13
  %972 = trunc i64 %971 to i32
  %973 = icmp slt i32 %972, 1
  br i1 %973, label %981, label %974

974:                                              ; preds = %964
  %975 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %960, i32 %972), !nosanitize !20
  %976 = extractvalue { i32, i1 } %975, 1, !nosanitize !20
  br i1 %976, label %977, label %978, !prof !21, !nosanitize !20

977:                                              ; preds = %974
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

978:                                              ; preds = %974
  %979 = extractvalue { i32, i1 } %975, 0, !nosanitize !20
  %980 = icmp ult i32 %979, %956
  br i1 %980, label %959, label %.loopexit79, !llvm.loop !47

981:                                              ; preds = %964
  %982 = icmp slt i32 %972, 0
  br i1 %982, label %983, label %990

983:                                              ; preds = %981
  %984 = load i32, ptr %958, align 4, !tbaa !45
  %985 = icmp eq i32 %984, 11
  br i1 %985, label %986, label %.loopexit90

986:                                              ; preds = %983
  store i32 1, ptr %474, align 4, !tbaa !17
  %987 = icmp eq i32 %960, 0
  br i1 %987, label %988, label %.loopexit79

988:                                              ; preds = %986
  %989 = load i32, ptr %958, align 4, !tbaa !45
  br label %.loopexit90

990:                                              ; preds = %981
  store i32 1, ptr %466, align 8, !tbaa !24
  br label %.loopexit79

.loopexit90:                                      ; preds = %983, %988
  %991 = phi i32 [ %989, %988 ], [ %984, %983 ]
  %992 = call ptr @strerror(i32 noundef %991) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %992) #13
  %993 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit88

.loopexit79:                                      ; preds = %978, %990, %986
  %994 = phi i32 [ %960, %990 ], [ %960, %986 ], [ %979, %978 ]
  %995 = load i32, ptr %467, align 8, !tbaa !34
  %996 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %995, i32 %994), !nosanitize !20
  %997 = extractvalue { i32, i1 } %996, 1, !nosanitize !20
  br i1 %997, label %998, label %999, !prof !21, !nosanitize !20

998:                                              ; preds = %.loopexit79
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

999:                                              ; preds = %.loopexit79
  %1000 = extractvalue { i32, i1 } %996, 0, !nosanitize !20
  store i32 %1000, ptr %467, align 8, !tbaa !34
  %1001 = load ptr, ptr %473, align 8, !tbaa !29
  store ptr %1001, ptr %472, align 8, !tbaa !35
  %1002 = icmp eq i32 %1000, 0
  br i1 %1002, label %1003, label %1007

1003:                                             ; preds = %999, %952
  %1004 = load i32, ptr %474, align 4, !tbaa !17
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %.loopexit88

1006:                                             ; preds = %1003
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit88

1007:                                             ; preds = %999, %946
  %1008 = call i32 @inflate(ptr noundef nonnull %472, i32 noundef 0) #13
  %1009 = load i32, ptr %470, align 8, !tbaa !48
  %1010 = icmp ult i32 %1009, %488
  br i1 %1010, label %1011, label %1012

1011:                                             ; preds = %1007
  store i32 0, ptr %476, align 4, !tbaa !33
  br label %1012

1012:                                             ; preds = %1011, %1007
  switch i32 %1008, label %1023 [
    i32 -2, label %1013
    i32 2, label %1013
    i32 -4, label %1014
    i32 -3, label %1015
  ]

1013:                                             ; preds = %1012, %1012
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit88

1014:                                             ; preds = %1012
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit88

1015:                                             ; preds = %1012
  %1016 = load i32, ptr %476, align 4, !tbaa !33
  %1017 = icmp eq i32 %1016, 1
  br i1 %1017, label %1018, label %1019

1018:                                             ; preds = %1015
  store i32 0, ptr %467, align 8, !tbaa !34
  store i32 1, ptr %466, align 8, !tbaa !24
  store i32 0, ptr %468, align 8, !tbaa !26
  br label %.loopexit88

1019:                                             ; preds = %1015
  %1020 = load ptr, ptr %477, align 8, !tbaa !50
  %1021 = icmp eq ptr %1020, null
  %1022 = select i1 %1021, ptr @.str.6, ptr %1020
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1022) #13
  br label %.loopexit88

1023:                                             ; preds = %1012
  %1024 = icmp ne i32 %1009, 0
  %1025 = icmp ne i32 %1008, 1
  %1026 = select i1 %1024, i1 %1025, i1 false
  br i1 %1026, label %946, label %.loopexit88, !llvm.loop !51

.loopexit88:                                      ; preds = %1023, %950, %1019, %1018, %1014, %1013, %1006, %1003, %.loopexit90
  %1027 = phi i32 [ %947, %1003 ], [ %947, %1006 ], [ %1008, %1013 ], [ -4, %1014 ], [ 0, %1018 ], [ -3, %1019 ], [ %993, %.loopexit90 ], [ %1008, %1023 ], [ %951, %950 ]
  %1028 = load i32, ptr %470, align 8, !tbaa !48
  %1029 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %488, i32 %1028), !nosanitize !20
  %1030 = extractvalue { i32, i1 } %1029, 1, !nosanitize !20
  br i1 %1030, label %1031, label %1032, !prof !21, !nosanitize !20

1031:                                             ; preds = %.loopexit88
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1032:                                             ; preds = %.loopexit88
  %1033 = extractvalue { i32, i1 } %1029, 0, !nosanitize !20
  %1034 = load ptr, ptr %471, align 8, !tbaa !49
  %1035 = zext i32 %1033 to i64
  %1036 = sub nsw i64 0, %1035
  %1037 = getelementptr inbounds i8, ptr %1034, i64 %1036
  store ptr %1037, ptr %465, align 8, !tbaa !22
  %1038 = icmp eq i32 %1027, 1
  br i1 %1038, label %1039, label %1040

1039:                                             ; preds = %1032
  store i32 0, ptr %476, align 4, !tbaa !33
  store i32 0, ptr %468, align 8, !tbaa !26
  br label %1043

1040:                                             ; preds = %1032
  %1041 = icmp ne i32 %1027, 0
  %1042 = sext i1 %1041 to i32
  br label %1043

1043:                                             ; preds = %1040, %1039
  %1044 = phi i32 [ 0, %1039 ], [ %1042, %1040 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1046

.loopexit85:                                      ; preds = %930, %913
  %.lcssa10 = phi i32 [ %914, %913 ], [ %931, %930 ]
  %1045 = zext i32 %.lcssa10 to i64
  br label %1046

1046:                                             ; preds = %.loopexit85, %1043, %944, %941, %937, %501
  %1047 = phi i64 [ %1045, %.loopexit85 ], [ %.lcssa7, %944 ], [ %.lcssa7, %941 ], [ %.lcssa7, %937 ], [ %494, %501 ], [ %1035, %1043 ]
  %1048 = phi i32 [ 0, %.loopexit85 ], [ 0, %944 ], [ -1, %941 ], [ 0, %937 ], [ %505, %501 ], [ %1044, %1043 ]
  %1049 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.fr, i64 %1047), !nosanitize !20
  %1050 = extractvalue { i64, i1 } %1049, 0, !nosanitize !20
  %1051 = extractvalue { i64, i1 } %1049, 1, !nosanitize !20
  br i1 %1051, label %1052, label %1053, !prof !21, !nosanitize !20

1052:                                             ; preds = %1046
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1053:                                             ; preds = %1046
  %1054 = getelementptr inbounds nuw i8, ptr %484, i64 %1047
  %1055 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %486, i64 %1047), !nosanitize !20
  %1056 = extractvalue { i64, i1 } %1055, 0, !nosanitize !20
  %1057 = extractvalue { i64, i1 } %1055, 1, !nosanitize !20
  br i1 %1057, label %1058, label %1059, !prof !21, !nosanitize !20

1058:                                             ; preds = %1059, %1053
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1059:                                             ; preds = %1053
  %1060 = load i64, ptr %478, align 8, !tbaa !23
  %1061 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1060, i64 %1047), !nosanitize !20
  %1062 = extractvalue { i64, i1 } %1061, 1, !nosanitize !20
  br i1 %1062, label %1058, label %1063, !prof !21, !nosanitize !20

1063:                                             ; preds = %1059
  %1064 = extractvalue { i64, i1 } %1061, 0, !nosanitize !20
  store i64 %1064, ptr %478, align 8, !tbaa !23
  br label %.loopexit83

.loopexit83:                                      ; preds = %891, %885, %747, %1063, %.loopexit81, %.loopexit80
  %1065 = phi ptr [ %1054, %1063 ], [ %484, %.loopexit81 ], [ %484, %.loopexit80 ], [ %484, %747 ], [ %484, %885 ], [ %484, %891 ]
  %1066 = phi i64 [ %1050, %1063 ], [ %.fr, %.loopexit81 ], [ %.fr, %.loopexit80 ], [ %.fr, %747 ], [ %.fr, %885 ], [ %.fr, %891 ]
  %1067 = phi i64 [ %1056, %1063 ], [ %486, %.loopexit81 ], [ %486, %.loopexit80 ], [ %486, %747 ], [ %486, %885 ], [ %486, %891 ]
  %1068 = phi i32 [ %1048, %1063 ], [ %898, %.loopexit81 ], [ 0, %.loopexit80 ], [ 0, %747 ], [ 0, %885 ], [ 0, %891 ]
  %1069 = icmp ne i64 %1066, 0
  %1070 = icmp eq i32 %1068, 0
  %1071 = select i1 %1069, i1 %1070, i1 false
  br i1 %1071, label %483, label %1072, !llvm.loop !60

1072:                                             ; preds = %.loopexit83
  %1073 = icmp eq i64 %1066, 0
  br i1 %1073, label %1079, label %1074

1074:                                             ; preds = %1072
  %1075 = load i32, ptr %466, align 8, !tbaa !24
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1079, label %.loopexit91

.loopexit91:                                      ; preds = %509, %1074
  %1077 = phi i64 [ %1067, %1074 ], [ %486, %509 ]
  %1078 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1078, align 4, !tbaa !61
  br label %1079

1079:                                             ; preds = %.loopexit91, %1074, %1072
  %1080 = phi i64 [ %1077, %.loopexit91 ], [ %1067, %1074 ], [ %1067, %1072 ]
  %1081 = freeze i64 %1080
  %1082 = icmp eq i64 %1081, 0
  %1083 = load i8, ptr %2, align 1
  %1084 = zext i8 %1083 to i32
  br i1 %1082, label %.loopexit102, label %1085

.loopexit102:                                     ; preds = %442, %120, %1079, %449, %.loopexit106, %.loopexit103, %106, %102
  br label %1085

1085:                                             ; preds = %.loopexit102, %1079, %25, %11, %4, %1
  %1086 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %.loopexit102 ], [ %1084, %1079 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %1086
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %.loopexit59, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %.loopexit59

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %262

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %262

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
  br label %262

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
  br label %262

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
  br label %262

56:                                               ; preds = %46
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %58 = load i32, ptr %57, align 8, !tbaa !16
  switch i32 %58, label %262 [
    i32 0, label %59
    i32 -5, label %59
  ]

59:                                               ; preds = %56, %56
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %61 = load i32, ptr %60, align 8, !tbaa !24
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %64 = load i32, ptr %63, align 8, !tbaa !34
  br i1 %62, label %65, label %227

65:                                               ; preds = %59
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %169, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %69 = load ptr, ptr %68, align 8, !tbaa !29
  %70 = load ptr, ptr %16, align 8, !tbaa !35
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %169, label %72

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
  %92 = add nuw nsw i64 %85, 32
  %93 = icmp eq i64 %92, %83
  br i1 %93, label %94, label %84, !llvm.loop !86

94:                                               ; preds = %84
  %95 = icmp eq i64 %83, %75
  br i1 %95, label %.loopexit65, label %96

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
  br label %106

106:                                              ; preds = %106, %103
  %107 = phi i64 [ %104, %103 ], [ %111, %106 ]
  %108 = getelementptr i8, ptr %69, i64 %107
  %109 = getelementptr i8, ptr %70, i64 %107
  %110 = load <4 x i8>, ptr %109, align 1, !tbaa !36
  store <4 x i8> %110, ptr %108, align 1, !tbaa !36
  %111 = add nuw i64 %107, 4
  %112 = icmp eq i64 %111, %105
  br i1 %112, label %113, label %106, !llvm.loop !87

113:                                              ; preds = %106
  %114 = getelementptr i8, ptr %69, i64 %105
  %115 = getelementptr i8, ptr %70, i64 %105
  %116 = trunc nuw i64 %105 to i32
  %117 = sub i32 %64, %116
  %118 = icmp eq i64 %105, %75
  br i1 %118, label %.loopexit65, label %119

119:                                              ; preds = %113, %96, %72
  %120 = phi ptr [ %69, %72 ], [ %97, %96 ], [ %114, %113 ]
  %121 = phi ptr [ %70, %72 ], [ %98, %96 ], [ %115, %113 ]
  %122 = phi i32 [ %64, %72 ], [ %100, %96 ], [ %117, %113 ]
  %123 = add i32 %122, -1
  %124 = and i32 %122, 7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %.loopexit67, label %.preheader66

.preheader66:                                     ; preds = %119, %.preheader66
  %126 = phi ptr [ %130, %.preheader66 ], [ %120, %119 ]
  %127 = phi ptr [ %131, %.preheader66 ], [ %121, %119 ]
  %128 = phi i32 [ %132, %.preheader66 ], [ 0, %119 ]
  %129 = load i8, ptr %127, align 1, !tbaa !36
  store i8 %129, ptr %126, align 1, !tbaa !36
  %130 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %131 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %132 = add nuw nsw i32 %128, 1
  %133 = icmp eq i32 %132, %124
  br i1 %133, label %.loopexit67.loopexit, label %.preheader66, !llvm.loop !88

.loopexit67.loopexit:                             ; preds = %.preheader66
  %134 = and i32 %122, -8
  br label %.loopexit67

.loopexit67:                                      ; preds = %.loopexit67.loopexit, %119
  %135 = phi ptr [ %120, %119 ], [ %130, %.loopexit67.loopexit ]
  %136 = phi ptr [ %121, %119 ], [ %131, %.loopexit67.loopexit ]
  %137 = phi i32 [ %122, %119 ], [ %134, %.loopexit67.loopexit ]
  %138 = icmp ult i32 %123, 7
  br i1 %138, label %.loopexit65, label %.preheader64

.preheader64:                                     ; preds = %.loopexit67, %.preheader64
  %139 = phi ptr [ %165, %.preheader64 ], [ %135, %.loopexit67 ]
  %140 = phi ptr [ %166, %.preheader64 ], [ %136, %.loopexit67 ]
  %141 = phi i32 [ %164, %.preheader64 ], [ %137, %.loopexit67 ]
  %142 = load i8, ptr %140, align 1, !tbaa !36
  store i8 %142, ptr %139, align 1, !tbaa !36
  %143 = getelementptr inbounds nuw i8, ptr %139, i64 1
  %144 = getelementptr inbounds nuw i8, ptr %140, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !36
  store i8 %145, ptr %143, align 1, !tbaa !36
  %146 = getelementptr inbounds nuw i8, ptr %139, i64 2
  %147 = getelementptr inbounds nuw i8, ptr %140, i64 2
  %148 = load i8, ptr %147, align 1, !tbaa !36
  store i8 %148, ptr %146, align 1, !tbaa !36
  %149 = getelementptr inbounds nuw i8, ptr %139, i64 3
  %150 = getelementptr inbounds nuw i8, ptr %140, i64 3
  %151 = load i8, ptr %150, align 1, !tbaa !36
  store i8 %151, ptr %149, align 1, !tbaa !36
  %152 = getelementptr inbounds nuw i8, ptr %139, i64 4
  %153 = getelementptr inbounds nuw i8, ptr %140, i64 4
  %154 = load i8, ptr %153, align 1, !tbaa !36
  store i8 %154, ptr %152, align 1, !tbaa !36
  %155 = getelementptr inbounds nuw i8, ptr %139, i64 5
  %156 = getelementptr inbounds nuw i8, ptr %140, i64 5
  %157 = load i8, ptr %156, align 1, !tbaa !36
  store i8 %157, ptr %155, align 1, !tbaa !36
  %158 = getelementptr inbounds nuw i8, ptr %139, i64 6
  %159 = getelementptr inbounds nuw i8, ptr %140, i64 6
  %160 = load i8, ptr %159, align 1, !tbaa !36
  store i8 %160, ptr %158, align 1, !tbaa !36
  %161 = getelementptr inbounds nuw i8, ptr %139, i64 7
  %162 = getelementptr inbounds nuw i8, ptr %140, i64 7
  %163 = load i8, ptr %162, align 1, !tbaa !36
  store i8 %163, ptr %161, align 1, !tbaa !36
  %164 = add i32 %141, -8
  %165 = getelementptr inbounds nuw i8, ptr %139, i64 8
  %166 = getelementptr inbounds nuw i8, ptr %140, i64 8
  %167 = icmp eq i32 %164, 0
  br i1 %167, label %.loopexit65, label %.preheader64, !llvm.loop !89

.loopexit65:                                      ; preds = %.preheader64, %.loopexit67, %113, %94
  %168 = load i32, ptr %63, align 8, !tbaa !34
  br label %169

169:                                              ; preds = %.loopexit65, %67, %65
  %170 = phi i32 [ %168, %.loopexit65 ], [ %64, %67 ], [ 0, %65 ]
  %171 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %172 = load i32, ptr %17, align 8, !tbaa !27
  %173 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %172, i32 %170), !nosanitize !20
  %174 = extractvalue { i32, i1 } %173, 1, !nosanitize !20
  br i1 %174, label %175, label %176, !prof !21, !nosanitize !20

175:                                              ; preds = %169
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

176:                                              ; preds = %169
  %177 = extractvalue { i32, i1 } %173, 0, !nosanitize !20
  %178 = load ptr, ptr %171, align 8, !tbaa !29
  %179 = zext i32 %170 to i64
  %180 = getelementptr inbounds nuw i8, ptr %178, i64 %179
  %181 = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %181, align 4, !tbaa !17
  %182 = tail call ptr @__errno_location() #17
  store i32 0, ptr %182, align 4, !tbaa !45
  %183 = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %184

184:                                              ; preds = %203, %176
  %185 = phi i32 [ 0, %176 ], [ %204, %203 ]
  %186 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %177, i32 %185), !nosanitize !20
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !20
  br i1 %187, label %188, label %189, !prof !21, !nosanitize !20

188:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

189:                                              ; preds = %184
  %190 = extractvalue { i32, i1 } %186, 0, !nosanitize !20
  %191 = tail call i32 @llvm.umin.i32(i32 %190, i32 1073741824)
  %192 = load i32, ptr %183, align 4, !tbaa !46
  %193 = zext i32 %185 to i64
  %194 = getelementptr inbounds nuw i8, ptr %180, i64 %193
  %195 = zext nneg i32 %191 to i64
  %196 = tail call i64 @read(i32 noundef %192, ptr noundef %194, i64 noundef %195) #13
  %197 = trunc i64 %196 to i32
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %206, label %199

199:                                              ; preds = %189
  %200 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %185, i32 %197), !nosanitize !20
  %201 = extractvalue { i32, i1 } %200, 1, !nosanitize !20
  br i1 %201, label %202, label %203, !prof !21, !nosanitize !20

202:                                              ; preds = %199
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

203:                                              ; preds = %199
  %204 = extractvalue { i32, i1 } %200, 0, !nosanitize !20
  %205 = icmp ult i32 %204, %177
  br i1 %205, label %184, label %.loopexit63, !llvm.loop !47

206:                                              ; preds = %189
  %207 = icmp slt i32 %197, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %206
  %209 = load i32, ptr %182, align 4, !tbaa !45
  %210 = icmp eq i32 %209, 11
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  store i32 1, ptr %181, align 4, !tbaa !17
  %212 = icmp eq i32 %185, 0
  br i1 %212, label %213, label %.loopexit63

213:                                              ; preds = %211
  %214 = load i32, ptr %182, align 4, !tbaa !45
  br label %216

215:                                              ; preds = %206
  store i32 1, ptr %60, align 8, !tbaa !24
  br label %.loopexit63

216:                                              ; preds = %213, %208
  %217 = phi i32 [ %214, %213 ], [ %209, %208 ]
  %218 = tail call ptr @strerror(i32 noundef %217) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %218) #13
  br label %262

.loopexit63:                                      ; preds = %203, %215, %211
  %219 = phi i32 [ %185, %215 ], [ %185, %211 ], [ %204, %203 ]
  %220 = load i32, ptr %63, align 8, !tbaa !34
  %221 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %220, i32 %219), !nosanitize !20
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !20
  br i1 %222, label %223, label %224, !prof !21, !nosanitize !20

223:                                              ; preds = %.loopexit63
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

224:                                              ; preds = %.loopexit63
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !20
  store i32 %225, ptr %63, align 8, !tbaa !34
  %226 = load ptr, ptr %171, align 8, !tbaa !29
  store ptr %226, ptr %16, align 8, !tbaa !35
  br label %227

227:                                              ; preds = %224, %59
  %228 = phi i32 [ %225, %224 ], [ %64, %59 ]
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %262, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %232 = load i32, ptr %231, align 4, !tbaa !17
  %233 = icmp ne i32 %232, 0
  %234 = icmp ult i32 %228, 4
  %235 = and i1 %234, %233
  br i1 %235, label %262, label %236

236:                                              ; preds = %230
  %237 = icmp ugt i32 %228, 3
  %238 = load ptr, ptr %16, align 8, !tbaa !35
  br i1 %237, label %239, label %256

239:                                              ; preds = %236
  %240 = load i8, ptr %238, align 1, !tbaa !36
  %241 = icmp eq i8 %240, 31
  br i1 %241, label %242, label %256

242:                                              ; preds = %239
  %243 = getelementptr inbounds nuw i8, ptr %238, i64 1
  %244 = load i8, ptr %243, align 1, !tbaa !36
  %245 = icmp eq i8 %244, -117
  br i1 %245, label %246, label %256

246:                                              ; preds = %242
  %247 = getelementptr inbounds nuw i8, ptr %238, i64 2
  %248 = load i8, ptr %247, align 1, !tbaa !36
  %249 = icmp eq i8 %248, 8
  br i1 %249, label %250, label %256

250:                                              ; preds = %246
  %251 = getelementptr inbounds nuw i8, ptr %238, i64 3
  %252 = load i8, ptr %251, align 1, !tbaa !36
  %253 = icmp ult i8 %252, 32
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %47, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %262

256:                                              ; preds = %250, %246, %242, %239, %236
  %257 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %258 = load ptr, ptr %257, align 8, !tbaa !30
  %259 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %258, ptr %259, align 8, !tbaa !22
  %260 = zext i32 %228 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %258, ptr align 1 %238, i64 %260, i1 false)
  %261 = load i32, ptr %63, align 8, !tbaa !34
  store i32 %261, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %63, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %262

262:                                              ; preds = %256, %254, %230, %227, %216, %56, %50, %39, %33, %12, %8
  %263 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %264 = load i32, ptr %263, align 8, !tbaa !16
  switch i32 %264, label %265 [
    i32 0, label %269
    i32 -5, label %269
  ]

265:                                              ; preds = %262
  %266 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %267 = load i32, ptr %266, align 4, !tbaa !17
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %.loopexit59, label %269

269:                                              ; preds = %265, %262, %262
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %271 = load i64, ptr %270, align 8, !tbaa !18
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %720, label %273

273:                                              ; preds = %269
  %274 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %275 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %276 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %277 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %278 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %279 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %280 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %282 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %284 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %285 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %286 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %287 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %288 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %291

291:                                              ; preds = %715, %273
  %292 = phi i64 [ %716, %715 ], [ %271, %273 ]
  %293 = load i32, ptr %1, align 8, !tbaa !19
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %317, label %295

295:                                              ; preds = %291
  %296 = zext i32 %293 to i64
  %297 = tail call i64 @llvm.smin.i64(i64 %292, i64 %296)
  %298 = trunc i64 %297 to i32
  %299 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %293, i32 %298), !nosanitize !20
  %300 = extractvalue { i32, i1 } %299, 1, !nosanitize !20
  br i1 %300, label %301, label %302, !prof !21, !nosanitize !20

301:                                              ; preds = %311, %295
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

302:                                              ; preds = %295
  %303 = extractvalue { i32, i1 } %299, 0, !nosanitize !20
  store i32 %303, ptr %1, align 8, !tbaa !19
  %304 = load ptr, ptr %274, align 8, !tbaa !22
  %305 = and i64 %297, 4294967295
  %306 = getelementptr inbounds nuw i8, ptr %304, i64 %305
  store ptr %306, ptr %274, align 8, !tbaa !22
  %307 = load i64, ptr %275, align 8, !tbaa !23
  %308 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %307, i64 %305), !nosanitize !20
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !20
  br i1 %309, label %310, label %311, !prof !21, !nosanitize !20

310:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

311:                                              ; preds = %302
  %312 = extractvalue { i64, i1 } %308, 0, !nosanitize !20
  store i64 %312, ptr %275, align 8, !tbaa !23
  %313 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %292, i64 %305), !nosanitize !20
  %314 = extractvalue { i64, i1 } %313, 1, !nosanitize !20
  br i1 %314, label %301, label %315, !prof !21, !nosanitize !20

315:                                              ; preds = %311
  %316 = extractvalue { i64, i1 } %313, 0, !nosanitize !20
  store i64 %316, ptr %270, align 8, !tbaa !18
  br label %715

317:                                              ; preds = %291
  %318 = load i32, ptr %276, align 8, !tbaa !24
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %.preheader434, label %320

320:                                              ; preds = %317
  %321 = load i32, ptr %277, align 8, !tbaa !25
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %718, label %.preheader434

.preheader434:                                    ; preds = %320, %317
  br label %323

323:                                              ; preds = %.backedge, %.preheader434
  %324 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %324, label %702 [
    i32 0, label %325
    i32 1, label %554
    i32 2, label %592
  ]

325:                                              ; preds = %323
  %326 = load i32, ptr %278, align 8, !tbaa !27
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %345

328:                                              ; preds = %325
  %329 = load i32, ptr %288, align 4, !tbaa !28
  %330 = zext i32 %329 to i64
  %331 = tail call noalias ptr @malloc(i64 noundef %330) #16
  store ptr %331, ptr %283, align 8, !tbaa !29
  %332 = shl i32 %329, 1
  %333 = zext i32 %332 to i64
  %334 = tail call noalias ptr @malloc(i64 noundef %333) #16
  store ptr %334, ptr %280, align 8, !tbaa !30
  %335 = icmp eq ptr %331, null
  %336 = icmp eq ptr %334, null
  %337 = or i1 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %328
  tail call void @free(ptr noundef %334) #13
  tail call void @free(ptr noundef %331) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit59

339:                                              ; preds = %328
  store i32 %329, ptr %278, align 8, !tbaa !27
  store i32 0, ptr %277, align 8, !tbaa !25
  store ptr null, ptr %282, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %289, i8 0, i64 24, i1 false)
  %340 = tail call i32 @inflateInit2_(ptr noundef nonnull %282, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %339
  %343 = load ptr, ptr %280, align 8, !tbaa !30
  tail call void @free(ptr noundef %343) #13
  %344 = load ptr, ptr %283, align 8, !tbaa !29
  tail call void @free(ptr noundef %344) #13
  store i32 0, ptr %278, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit59

345:                                              ; preds = %339, %325
  %346 = load i32, ptr %290, align 8, !tbaa !32
  %347 = icmp eq i32 %346, -1
  br i1 %347, label %351, label %348

348:                                              ; preds = %345
  %349 = load i32, ptr %286, align 4, !tbaa !33
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %348, %345
  %352 = tail call i32 @inflateReset(ptr noundef nonnull %282) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %353 = load i32, ptr %286, align 4, !tbaa !33
  %354 = icmp ne i32 %353, -1
  %355 = zext i1 %354 to i32
  store i32 %355, ptr %286, align 4, !tbaa !33
  store i32 0, ptr %290, align 8, !tbaa !32
  br label %551

356:                                              ; preds = %348
  %357 = load i32, ptr %263, align 8, !tbaa !16
  switch i32 %357, label %.loopexit59 [
    i32 0, label %358
    i32 -5, label %358
  ]

358:                                              ; preds = %356, %356
  %359 = load i32, ptr %276, align 8, !tbaa !24
  %360 = icmp eq i32 %359, 0
  %361 = load i32, ptr %277, align 8, !tbaa !34
  br i1 %360, label %362, label %519

362:                                              ; preds = %358
  %363 = icmp eq i32 %361, 0
  br i1 %363, label %465, label %364

364:                                              ; preds = %362
  %365 = load ptr, ptr %283, align 8, !tbaa !29
  %366 = load ptr, ptr %282, align 8, !tbaa !35
  %367 = icmp eq ptr %366, %365
  br i1 %367, label %465, label %368

368:                                              ; preds = %364
  %369 = ptrtoint ptr %366 to i64
  %370 = ptrtoint ptr %365 to i64
  %371 = zext i32 %361 to i64
  %372 = icmp ult i32 %361, 4
  %373 = sub i64 %370, %369
  %374 = icmp ult i64 %373, 32
  %375 = or i1 %372, %374
  br i1 %375, label %415, label %376

376:                                              ; preds = %368
  %377 = icmp ult i32 %361, 32
  br i1 %377, label %399, label %378

378:                                              ; preds = %376
  %379 = and i64 %371, 4294967264
  br label %380

380:                                              ; preds = %380, %378
  %381 = phi i64 [ 0, %378 ], [ %388, %380 ]
  %382 = getelementptr i8, ptr %365, i64 %381
  %383 = getelementptr i8, ptr %366, i64 %381
  %384 = getelementptr i8, ptr %383, i64 16
  %385 = load <16 x i8>, ptr %383, align 1, !tbaa !36
  %386 = load <16 x i8>, ptr %384, align 1, !tbaa !36
  %387 = getelementptr i8, ptr %382, i64 16
  store <16 x i8> %385, ptr %382, align 1, !tbaa !36
  store <16 x i8> %386, ptr %387, align 1, !tbaa !36
  %388 = add nuw nsw i64 %381, 32
  %389 = icmp eq i64 %388, %379
  br i1 %389, label %390, label %380, !llvm.loop !90

390:                                              ; preds = %380
  %391 = icmp eq i64 %379, %371
  br i1 %391, label %.loopexit53, label %392

392:                                              ; preds = %390
  %393 = getelementptr i8, ptr %365, i64 %379
  %394 = getelementptr i8, ptr %366, i64 %379
  %395 = trunc nuw i64 %379 to i32
  %396 = sub i32 %361, %395
  %397 = and i64 %371, 28
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %415, label %399

399:                                              ; preds = %392, %376
  %400 = phi i64 [ %379, %392 ], [ 0, %376 ]
  %401 = and i64 %371, 4294967292
  br label %402

402:                                              ; preds = %402, %399
  %403 = phi i64 [ %400, %399 ], [ %407, %402 ]
  %404 = getelementptr i8, ptr %365, i64 %403
  %405 = getelementptr i8, ptr %366, i64 %403
  %406 = load <4 x i8>, ptr %405, align 1, !tbaa !36
  store <4 x i8> %406, ptr %404, align 1, !tbaa !36
  %407 = add nuw i64 %403, 4
  %408 = icmp eq i64 %407, %401
  br i1 %408, label %409, label %402, !llvm.loop !91

409:                                              ; preds = %402
  %410 = getelementptr i8, ptr %365, i64 %401
  %411 = getelementptr i8, ptr %366, i64 %401
  %412 = trunc nuw i64 %401 to i32
  %413 = sub i32 %361, %412
  %414 = icmp eq i64 %401, %371
  br i1 %414, label %.loopexit53, label %415

415:                                              ; preds = %409, %392, %368
  %416 = phi ptr [ %365, %368 ], [ %393, %392 ], [ %410, %409 ]
  %417 = phi ptr [ %366, %368 ], [ %394, %392 ], [ %411, %409 ]
  %418 = phi i32 [ %361, %368 ], [ %396, %392 ], [ %413, %409 ]
  %419 = add i32 %418, -1
  %420 = and i32 %418, 7
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %.loopexit55, label %.preheader54

.preheader54:                                     ; preds = %415, %.preheader54
  %422 = phi ptr [ %426, %.preheader54 ], [ %416, %415 ]
  %423 = phi ptr [ %427, %.preheader54 ], [ %417, %415 ]
  %424 = phi i32 [ %428, %.preheader54 ], [ 0, %415 ]
  %425 = load i8, ptr %423, align 1, !tbaa !36
  store i8 %425, ptr %422, align 1, !tbaa !36
  %426 = getelementptr inbounds nuw i8, ptr %422, i64 1
  %427 = getelementptr inbounds nuw i8, ptr %423, i64 1
  %428 = add nuw nsw i32 %424, 1
  %429 = icmp eq i32 %428, %420
  br i1 %429, label %.loopexit55.loopexit, label %.preheader54, !llvm.loop !92

.loopexit55.loopexit:                             ; preds = %.preheader54
  %430 = and i32 %418, -8
  br label %.loopexit55

.loopexit55:                                      ; preds = %.loopexit55.loopexit, %415
  %431 = phi ptr [ %416, %415 ], [ %426, %.loopexit55.loopexit ]
  %432 = phi ptr [ %417, %415 ], [ %427, %.loopexit55.loopexit ]
  %433 = phi i32 [ %418, %415 ], [ %430, %.loopexit55.loopexit ]
  %434 = icmp ult i32 %419, 7
  br i1 %434, label %.loopexit53, label %.preheader

.preheader:                                       ; preds = %.loopexit55, %.preheader
  %435 = phi ptr [ %461, %.preheader ], [ %431, %.loopexit55 ]
  %436 = phi ptr [ %462, %.preheader ], [ %432, %.loopexit55 ]
  %437 = phi i32 [ %460, %.preheader ], [ %433, %.loopexit55 ]
  %438 = load i8, ptr %436, align 1, !tbaa !36
  store i8 %438, ptr %435, align 1, !tbaa !36
  %439 = getelementptr inbounds nuw i8, ptr %435, i64 1
  %440 = getelementptr inbounds nuw i8, ptr %436, i64 1
  %441 = load i8, ptr %440, align 1, !tbaa !36
  store i8 %441, ptr %439, align 1, !tbaa !36
  %442 = getelementptr inbounds nuw i8, ptr %435, i64 2
  %443 = getelementptr inbounds nuw i8, ptr %436, i64 2
  %444 = load i8, ptr %443, align 1, !tbaa !36
  store i8 %444, ptr %442, align 1, !tbaa !36
  %445 = getelementptr inbounds nuw i8, ptr %435, i64 3
  %446 = getelementptr inbounds nuw i8, ptr %436, i64 3
  %447 = load i8, ptr %446, align 1, !tbaa !36
  store i8 %447, ptr %445, align 1, !tbaa !36
  %448 = getelementptr inbounds nuw i8, ptr %435, i64 4
  %449 = getelementptr inbounds nuw i8, ptr %436, i64 4
  %450 = load i8, ptr %449, align 1, !tbaa !36
  store i8 %450, ptr %448, align 1, !tbaa !36
  %451 = getelementptr inbounds nuw i8, ptr %435, i64 5
  %452 = getelementptr inbounds nuw i8, ptr %436, i64 5
  %453 = load i8, ptr %452, align 1, !tbaa !36
  store i8 %453, ptr %451, align 1, !tbaa !36
  %454 = getelementptr inbounds nuw i8, ptr %435, i64 6
  %455 = getelementptr inbounds nuw i8, ptr %436, i64 6
  %456 = load i8, ptr %455, align 1, !tbaa !36
  store i8 %456, ptr %454, align 1, !tbaa !36
  %457 = getelementptr inbounds nuw i8, ptr %435, i64 7
  %458 = getelementptr inbounds nuw i8, ptr %436, i64 7
  %459 = load i8, ptr %458, align 1, !tbaa !36
  store i8 %459, ptr %457, align 1, !tbaa !36
  %460 = add i32 %437, -8
  %461 = getelementptr inbounds nuw i8, ptr %435, i64 8
  %462 = getelementptr inbounds nuw i8, ptr %436, i64 8
  %463 = icmp eq i32 %460, 0
  br i1 %463, label %.loopexit53, label %.preheader, !llvm.loop !93

.loopexit53:                                      ; preds = %.preheader, %.loopexit55, %409, %390
  %464 = load i32, ptr %277, align 8, !tbaa !34
  br label %465

465:                                              ; preds = %.loopexit53, %364, %362
  %466 = phi i32 [ %464, %.loopexit53 ], [ %361, %364 ], [ 0, %362 ]
  %467 = load i32, ptr %278, align 8, !tbaa !27
  %468 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %467, i32 %466), !nosanitize !20
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !20
  br i1 %469, label %470, label %471, !prof !21, !nosanitize !20

470:                                              ; preds = %465
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

471:                                              ; preds = %465
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !20
  %473 = load ptr, ptr %283, align 8, !tbaa !29
  %474 = zext i32 %466 to i64
  %475 = getelementptr inbounds nuw i8, ptr %473, i64 %474
  store i32 0, ptr %284, align 4, !tbaa !17
  %476 = tail call ptr @__errno_location() #17
  store i32 0, ptr %476, align 4, !tbaa !45
  br label %477

477:                                              ; preds = %496, %471
  %478 = phi i32 [ 0, %471 ], [ %497, %496 ]
  %479 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %472, i32 %478), !nosanitize !20
  %480 = extractvalue { i32, i1 } %479, 1, !nosanitize !20
  br i1 %480, label %481, label %482, !prof !21, !nosanitize !20

481:                                              ; preds = %477
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

482:                                              ; preds = %477
  %483 = extractvalue { i32, i1 } %479, 0, !nosanitize !20
  %484 = tail call i32 @llvm.umin.i32(i32 %483, i32 1073741824)
  %485 = load i32, ptr %285, align 4, !tbaa !46
  %486 = zext i32 %478 to i64
  %487 = getelementptr inbounds nuw i8, ptr %475, i64 %486
  %488 = zext nneg i32 %484 to i64
  %489 = tail call i64 @read(i32 noundef %485, ptr noundef %487, i64 noundef %488) #13
  %490 = trunc i64 %489 to i32
  %491 = icmp slt i32 %490, 1
  br i1 %491, label %499, label %492

492:                                              ; preds = %482
  %493 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %478, i32 %490), !nosanitize !20
  %494 = extractvalue { i32, i1 } %493, 1, !nosanitize !20
  br i1 %494, label %495, label %496, !prof !21, !nosanitize !20

495:                                              ; preds = %492
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

496:                                              ; preds = %492
  %497 = extractvalue { i32, i1 } %493, 0, !nosanitize !20
  %498 = icmp ult i32 %497, %472
  br i1 %498, label %477, label %.loopexit52, !llvm.loop !47

499:                                              ; preds = %482
  %500 = icmp slt i32 %490, 0
  br i1 %500, label %501, label %508

501:                                              ; preds = %499
  %502 = load i32, ptr %476, align 4, !tbaa !45
  %503 = icmp eq i32 %502, 11
  br i1 %503, label %504, label %.loopexit60

504:                                              ; preds = %501
  store i32 1, ptr %284, align 4, !tbaa !17
  %505 = icmp eq i32 %478, 0
  br i1 %505, label %506, label %.loopexit52

506:                                              ; preds = %504
  %507 = load i32, ptr %476, align 4, !tbaa !45
  br label %.loopexit60

508:                                              ; preds = %499
  store i32 1, ptr %276, align 8, !tbaa !24
  br label %.loopexit52

.loopexit60:                                      ; preds = %501, %506
  %509 = phi i32 [ %507, %506 ], [ %502, %501 ]
  %510 = tail call ptr @strerror(i32 noundef %509) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %510) #13
  br label %.loopexit59

.loopexit52:                                      ; preds = %496, %508, %504
  %511 = phi i32 [ %478, %508 ], [ %478, %504 ], [ %497, %496 ]
  %512 = load i32, ptr %277, align 8, !tbaa !34
  %513 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %512, i32 %511), !nosanitize !20
  %514 = extractvalue { i32, i1 } %513, 1, !nosanitize !20
  br i1 %514, label %515, label %516, !prof !21, !nosanitize !20

515:                                              ; preds = %.loopexit52
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

516:                                              ; preds = %.loopexit52
  %517 = extractvalue { i32, i1 } %513, 0, !nosanitize !20
  store i32 %517, ptr %277, align 8, !tbaa !34
  %518 = load ptr, ptr %283, align 8, !tbaa !29
  store ptr %518, ptr %282, align 8, !tbaa !35
  br label %519

519:                                              ; preds = %516, %358
  %520 = phi i32 [ %517, %516 ], [ %361, %358 ]
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %551, label %522

522:                                              ; preds = %519
  %523 = load i32, ptr %284, align 4, !tbaa !17
  %524 = icmp ne i32 %523, 0
  %525 = icmp ult i32 %520, 4
  %526 = and i1 %525, %524
  br i1 %526, label %551, label %527

527:                                              ; preds = %522
  %528 = icmp ugt i32 %520, 3
  %529 = load ptr, ptr %282, align 8, !tbaa !35
  br i1 %528, label %530, label %547

530:                                              ; preds = %527
  %531 = load i8, ptr %529, align 1, !tbaa !36
  %532 = icmp eq i8 %531, 31
  br i1 %532, label %533, label %547

533:                                              ; preds = %530
  %534 = getelementptr inbounds nuw i8, ptr %529, i64 1
  %535 = load i8, ptr %534, align 1, !tbaa !36
  %536 = icmp eq i8 %535, -117
  br i1 %536, label %537, label %547

537:                                              ; preds = %533
  %538 = getelementptr inbounds nuw i8, ptr %529, i64 2
  %539 = load i8, ptr %538, align 1, !tbaa !36
  %540 = icmp eq i8 %539, 8
  br i1 %540, label %541, label %547

541:                                              ; preds = %537
  %542 = getelementptr inbounds nuw i8, ptr %529, i64 3
  %543 = load i8, ptr %542, align 1, !tbaa !36
  %544 = icmp ult i8 %543, 32
  br i1 %544, label %545, label %547

545:                                              ; preds = %541
  %546 = tail call i32 @inflateReset(ptr noundef nonnull %282) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %286, align 4, !tbaa !33
  store i32 0, ptr %290, align 8, !tbaa !32
  br label %703

547:                                              ; preds = %541, %537, %533, %530, %527
  %548 = load ptr, ptr %280, align 8, !tbaa !30
  store ptr %548, ptr %274, align 8, !tbaa !22
  %549 = zext i32 %520 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %548, ptr align 1 %529, i64 %549, i1 false)
  %550 = load i32, ptr %277, align 8, !tbaa !34
  store i32 %550, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %277, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %705

551:                                              ; preds = %522, %519, %351
  %552 = load i32, ptr %9, align 8, !tbaa !26
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %.loopexit61, label %703

554:                                              ; preds = %323
  %555 = load ptr, ptr %280, align 8, !tbaa !30
  %556 = load i32, ptr %278, align 8, !tbaa !27
  %557 = shl i32 %556, 1
  store i32 0, ptr %284, align 4, !tbaa !17
  %558 = tail call ptr @__errno_location() #17
  store i32 0, ptr %558, align 4, !tbaa !45
  store i32 0, ptr %1, align 8, !tbaa !45
  br label %559

559:                                              ; preds = %575, %554
  %560 = phi i32 [ %576, %575 ], [ 0, %554 ]
  %561 = sub i32 %557, %560
  %562 = tail call i32 @llvm.umin.i32(i32 %561, i32 1073741824)
  %563 = load i32, ptr %285, align 4, !tbaa !46
  %564 = zext i32 %560 to i64
  %565 = getelementptr inbounds nuw i8, ptr %555, i64 %564
  %566 = zext nneg i32 %562 to i64
  %567 = tail call i64 @read(i32 noundef %563, ptr noundef %565, i64 noundef %566) #13
  %568 = trunc i64 %567 to i32
  %569 = icmp slt i32 %568, 1
  br i1 %569, label %578, label %570

570:                                              ; preds = %559
  %571 = load i32, ptr %1, align 4, !tbaa !45
  %572 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %571, i32 %568), !nosanitize !20
  %573 = extractvalue { i32, i1 } %572, 1, !nosanitize !20
  br i1 %573, label %574, label %575, !prof !21, !nosanitize !20

574:                                              ; preds = %570
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

575:                                              ; preds = %570
  %576 = extractvalue { i32, i1 } %572, 0, !nosanitize !20
  store i32 %576, ptr %1, align 4, !tbaa !45
  %577 = icmp ult i32 %576, %557
  br i1 %577, label %559, label %.loopexit58, !llvm.loop !47

578:                                              ; preds = %559
  %579 = icmp slt i32 %568, 0
  br i1 %579, label %580, label %588

580:                                              ; preds = %578
  %581 = load i32, ptr %558, align 4, !tbaa !45
  %582 = icmp eq i32 %581, 11
  br i1 %582, label %583, label %.loopexit62

583:                                              ; preds = %580
  store i32 1, ptr %284, align 4, !tbaa !17
  %584 = load i32, ptr %1, align 4, !tbaa !45
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %.loopexit58

586:                                              ; preds = %583
  %587 = load i32, ptr %558, align 4, !tbaa !45
  br label %.loopexit62

588:                                              ; preds = %578
  store i32 1, ptr %276, align 8, !tbaa !24
  br label %.loopexit58

.loopexit62:                                      ; preds = %580, %586
  %589 = phi i32 [ %587, %586 ], [ %581, %580 ]
  %590 = tail call ptr @strerror(i32 noundef %589) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %590) #13
  br label %.loopexit59

.loopexit58:                                      ; preds = %575, %588, %583
  %591 = load ptr, ptr %280, align 8, !tbaa !30
  store ptr %591, ptr %274, align 8, !tbaa !22
  br label %.loopexit61

592:                                              ; preds = %323
  %593 = load i32, ptr %278, align 8, !tbaa !27
  %594 = shl i32 %593, 1
  store i32 %594, ptr %279, align 8, !tbaa !48
  %595 = load ptr, ptr %280, align 8, !tbaa !30
  store ptr %595, ptr %281, align 8, !tbaa !49
  br label %596

596:                                              ; preds = %686, %592
  %597 = phi i32 [ 0, %592 ], [ %671, %686 ]
  %598 = load i32, ptr %277, align 8, !tbaa !34
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %670

600:                                              ; preds = %596
  %601 = load i32, ptr %263, align 8, !tbaa !16
  switch i32 %601, label %.loopexit56 [
    i32 0, label %602
    i32 -5, label %602
  ]

602:                                              ; preds = %600, %600
  %603 = load i32, ptr %276, align 8, !tbaa !24
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %666

605:                                              ; preds = %602
  %606 = load i32, ptr %278, align 8, !tbaa !27
  %.fr = freeze i32 %606
  %607 = load ptr, ptr %283, align 8, !tbaa !29
  store i32 0, ptr %284, align 4, !tbaa !17
  %608 = tail call ptr @__errno_location() #17
  store i32 0, ptr %608, align 4, !tbaa !45
  %mv.h = icmp sgt i32 %.fr, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %605, %622
  %609 = phi i32 [ %623, %622 ], [ 0, %605 ]
  %610 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %609), !nosanitize !20
  %611 = extractvalue { i32, i1 } %610, 1, !nosanitize !20
  br i1 %611, label %.loopexit47, label %612, !prof !21, !nosanitize !20

612:                                              ; preds = %.mv.ph.mv.fast
  %613 = extractvalue { i32, i1 } %610, 0, !nosanitize !20
  %614 = tail call i32 @llvm.umin.i32(i32 %613, i32 1073741824)
  %615 = load i32, ptr %285, align 4, !tbaa !46
  %616 = zext nneg i32 %609 to i64
  %617 = getelementptr inbounds nuw i8, ptr %607, i64 %616
  %618 = zext nneg i32 %614 to i64
  %619 = tail call i64 @read(i32 noundef %615, ptr noundef %617, i64 noundef %618) #13
  %620 = trunc i64 %619 to i32
  %621 = icmp slt i32 %620, 1
  br i1 %621, label %.loopexit48, label %622

622:                                              ; preds = %612
  %623 = add nuw i32 %609, %620
  %624 = icmp ult i32 %623, %.fr
  br i1 %624, label %.mv.ph.mv.fast, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %605, %642
  %625 = phi i32 [ %643, %642 ], [ 0, %605 ]
  %626 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %625), !nosanitize !20
  %627 = extractvalue { i32, i1 } %626, 1, !nosanitize !20
  br i1 %627, label %.loopexit47, label %628, !prof !21, !nosanitize !20

.loopexit47:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

628:                                              ; preds = %.mv.ph
  %629 = extractvalue { i32, i1 } %626, 0, !nosanitize !20
  %630 = tail call i32 @llvm.umin.i32(i32 %629, i32 1073741824)
  %631 = load i32, ptr %285, align 4, !tbaa !46
  %632 = zext i32 %625 to i64
  %633 = getelementptr inbounds nuw i8, ptr %607, i64 %632
  %634 = zext nneg i32 %630 to i64
  %635 = tail call i64 @read(i32 noundef %631, ptr noundef %633, i64 noundef %634) #13
  %636 = trunc i64 %635 to i32
  %637 = icmp slt i32 %636, 1
  br i1 %637, label %.loopexit48, label %638

638:                                              ; preds = %628
  %639 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %625, i32 %636), !nosanitize !20
  %640 = extractvalue { i32, i1 } %639, 1, !nosanitize !20
  br i1 %640, label %641, label %642, !prof !21, !nosanitize !20

641:                                              ; preds = %638
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

642:                                              ; preds = %638
  %643 = extractvalue { i32, i1 } %639, 0, !nosanitize !20
  %644 = icmp ult i32 %643, %.fr
  br i1 %644, label %.mv.ph, label %.loopexit, !llvm.loop !47

.loopexit48:                                      ; preds = %628, %612
  %.lcssa4 = phi i32 [ %620, %612 ], [ %636, %628 ]
  %.lcssa1 = phi i32 [ %609, %612 ], [ %625, %628 ]
  %645 = icmp slt i32 %.lcssa4, 0
  br i1 %645, label %646, label %653

646:                                              ; preds = %.loopexit48
  %647 = load i32, ptr %608, align 4, !tbaa !45
  %648 = icmp eq i32 %647, 11
  br i1 %648, label %649, label %.loopexit57

649:                                              ; preds = %646
  store i32 1, ptr %284, align 4, !tbaa !17
  %650 = icmp eq i32 %.lcssa1, 0
  br i1 %650, label %651, label %.loopexit

651:                                              ; preds = %649
  %652 = load i32, ptr %608, align 4, !tbaa !45
  br label %.loopexit57

653:                                              ; preds = %.loopexit48
  store i32 1, ptr %276, align 8, !tbaa !24
  br label %.loopexit

.loopexit57:                                      ; preds = %646, %651
  %654 = phi i32 [ %652, %651 ], [ %647, %646 ]
  %655 = tail call ptr @strerror(i32 noundef %654) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %655) #13
  %656 = load i32, ptr %263, align 8, !tbaa !16
  br label %.loopexit56

.loopexit:                                        ; preds = %642, %622, %653, %649
  %657 = phi i32 [ %.lcssa1, %653 ], [ %.lcssa1, %649 ], [ %623, %622 ], [ %643, %642 ]
  %658 = load i32, ptr %277, align 8, !tbaa !34
  %659 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %658, i32 %657), !nosanitize !20
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !20
  br i1 %660, label %661, label %662, !prof !21, !nosanitize !20

661:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

662:                                              ; preds = %.loopexit
  %663 = extractvalue { i32, i1 } %659, 0, !nosanitize !20
  store i32 %663, ptr %277, align 8, !tbaa !34
  %664 = load ptr, ptr %283, align 8, !tbaa !29
  store ptr %664, ptr %282, align 8, !tbaa !35
  %665 = icmp eq i32 %663, 0
  br i1 %665, label %666, label %670

666:                                              ; preds = %662, %602
  %667 = load i32, ptr %284, align 4, !tbaa !17
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %.loopexit56

669:                                              ; preds = %666
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit56

670:                                              ; preds = %662, %596
  %671 = tail call i32 @inflate(ptr noundef nonnull %282, i32 noundef 0) #13
  %672 = load i32, ptr %279, align 8, !tbaa !48
  %673 = icmp ult i32 %672, %594
  br i1 %673, label %674, label %675

674:                                              ; preds = %670
  store i32 0, ptr %286, align 4, !tbaa !33
  br label %675

675:                                              ; preds = %674, %670
  switch i32 %671, label %686 [
    i32 -2, label %676
    i32 2, label %676
    i32 -4, label %677
    i32 -3, label %678
  ]

676:                                              ; preds = %675, %675
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit56

677:                                              ; preds = %675
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit56

678:                                              ; preds = %675
  %679 = load i32, ptr %286, align 4, !tbaa !33
  %680 = icmp eq i32 %679, 1
  br i1 %680, label %681, label %682

681:                                              ; preds = %678
  store i32 0, ptr %277, align 8, !tbaa !34
  store i32 1, ptr %276, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %.loopexit56

682:                                              ; preds = %678
  %683 = load ptr, ptr %287, align 8, !tbaa !50
  %684 = icmp eq ptr %683, null
  %685 = select i1 %684, ptr @.str.6, ptr %683
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %685) #13
  br label %.loopexit56

686:                                              ; preds = %675
  %687 = icmp ne i32 %672, 0
  %688 = icmp ne i32 %671, 1
  %689 = select i1 %687, i1 %688, i1 false
  br i1 %689, label %596, label %.loopexit56, !llvm.loop !51

.loopexit56:                                      ; preds = %686, %600, %682, %681, %677, %676, %669, %666, %.loopexit57
  %690 = phi i32 [ %597, %666 ], [ %597, %669 ], [ %671, %676 ], [ -4, %677 ], [ 0, %681 ], [ -3, %682 ], [ %656, %.loopexit57 ], [ %671, %686 ], [ %601, %600 ]
  %691 = load i32, ptr %279, align 8, !tbaa !48
  %692 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %594, i32 %691), !nosanitize !20
  %693 = extractvalue { i32, i1 } %692, 1, !nosanitize !20
  br i1 %693, label %694, label %695, !prof !21, !nosanitize !20

694:                                              ; preds = %.loopexit56
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

695:                                              ; preds = %.loopexit56
  %696 = extractvalue { i32, i1 } %692, 0, !nosanitize !20
  store i32 %696, ptr %1, align 8, !tbaa !19
  %697 = load ptr, ptr %281, align 8, !tbaa !49
  %698 = zext i32 %696 to i64
  %699 = sub nsw i64 0, %698
  %700 = getelementptr inbounds i8, ptr %697, i64 %699
  store ptr %700, ptr %274, align 8, !tbaa !22
  switch i32 %690, label %.loopexit59 [
    i32 1, label %701
    i32 0, label %703
  ]

701:                                              ; preds = %695
  store i32 0, ptr %286, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %703

702:                                              ; preds = %323
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit59

703:                                              ; preds = %701, %695, %551, %545
  %704 = load i32, ptr %1, align 8, !tbaa !19
  br label %705

705:                                              ; preds = %703, %547
  %706 = phi i32 [ %704, %703 ], [ %550, %547 ]
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %.loopexit61

708:                                              ; preds = %705
  %709 = load i32, ptr %276, align 8, !tbaa !24
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %.backedge, label %711

711:                                              ; preds = %708
  %712 = load i32, ptr %277, align 8, !tbaa !34
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %.loopexit61, label %.backedge

.backedge:                                        ; preds = %711, %708
  br label %323, !llvm.loop !52

.loopexit61:                                      ; preds = %711, %705, %551, %.loopexit58
  %714 = load i64, ptr %270, align 8, !tbaa !18
  br label %715

715:                                              ; preds = %.loopexit61, %315
  %716 = phi i64 [ %714, %.loopexit61 ], [ %316, %315 ]
  %717 = icmp eq i64 %716, 0
  br i1 %717, label %718, label %291, !llvm.loop !53

718:                                              ; preds = %715, %320
  %719 = icmp slt i32 %0, 0
  br i1 %719, label %.loopexit59, label %722

720:                                              ; preds = %269
  %721 = icmp slt i32 %0, 0
  br i1 %721, label %.loopexit59, label %722

722:                                              ; preds = %720, %718
  %723 = load i32, ptr %1, align 8, !tbaa !19
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %744

725:                                              ; preds = %722
  store i32 1, ptr %1, align 8, !tbaa !19
  %726 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %727 = load ptr, ptr %726, align 8, !tbaa !30
  %728 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %729 = load i32, ptr %728, align 8, !tbaa !27
  %730 = shl i32 %729, 1
  %731 = zext i32 %730 to i64
  %732 = getelementptr inbounds nuw i8, ptr %727, i64 %731
  %733 = getelementptr inbounds i8, ptr %732, i64 -1
  %734 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %733, ptr %734, align 8, !tbaa !22
  %735 = trunc i32 %0 to i8
  store i8 %735, ptr %733, align 1, !tbaa !36
  %736 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %737 = load i64, ptr %736, align 8, !tbaa !23
  %738 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %737, i64 -1)
  %739 = extractvalue { i64, i1 } %738, 1, !nosanitize !20
  br i1 %739, label %740, label %741, !prof !21, !nosanitize !20

740:                                              ; preds = %777, %725
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

741:                                              ; preds = %725
  %742 = extractvalue { i64, i1 } %738, 0, !nosanitize !20
  store i64 %742, ptr %736, align 8, !tbaa !23
  %743 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %743, align 4, !tbaa !61
  br label %.loopexit59

744:                                              ; preds = %722
  %745 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %746 = load i32, ptr %745, align 8, !tbaa !27
  %747 = shl i32 %746, 1
  %748 = icmp eq i32 %723, %747
  br i1 %748, label %749, label %750

749:                                              ; preds = %744
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %.loopexit59

750:                                              ; preds = %744
  %751 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %752 = load ptr, ptr %751, align 8, !tbaa !22
  %753 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %754 = load ptr, ptr %753, align 8, !tbaa !30
  %755 = icmp eq ptr %752, %754
  br i1 %755, label %756, label %771

756:                                              ; preds = %750
  %757 = zext i32 %723 to i64
  %758 = getelementptr inbounds nuw i8, ptr %754, i64 %757
  %759 = zext i32 %747 to i64
  %760 = getelementptr inbounds nuw i8, ptr %754, i64 %759
  br label %761

761:                                              ; preds = %761, %756
  %762 = phi ptr [ %766, %761 ], [ %760, %756 ]
  %763 = phi ptr [ %764, %761 ], [ %758, %756 ]
  %764 = getelementptr inbounds i8, ptr %763, i64 -1
  %765 = load i8, ptr %764, align 1, !tbaa !36
  %766 = getelementptr inbounds i8, ptr %762, i64 -1
  store i8 %765, ptr %766, align 1, !tbaa !36
  %767 = load ptr, ptr %753, align 8, !tbaa !30
  %768 = icmp ugt ptr %764, %767
  br i1 %768, label %761, label %769, !llvm.loop !94

769:                                              ; preds = %761
  %770 = load i32, ptr %1, align 8, !tbaa !19
  store ptr %766, ptr %751, align 8, !tbaa !22
  br label %771

771:                                              ; preds = %769, %750
  %772 = phi ptr [ %766, %769 ], [ %752, %750 ]
  %773 = phi i32 [ %770, %769 ], [ %723, %750 ]
  %774 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %773, i32 1), !nosanitize !20
  %775 = extractvalue { i32, i1 } %774, 1, !nosanitize !20
  br i1 %775, label %776, label %777, !prof !21, !nosanitize !20

776:                                              ; preds = %771
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

777:                                              ; preds = %771
  %778 = extractvalue { i32, i1 } %774, 0, !nosanitize !20
  store i32 %778, ptr %1, align 8, !tbaa !19
  %779 = getelementptr inbounds i8, ptr %772, i64 -1
  store ptr %779, ptr %751, align 8, !tbaa !22
  %780 = trunc i32 %0 to i8
  store i8 %780, ptr %779, align 1, !tbaa !36
  %781 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %782 = load i64, ptr %781, align 8, !tbaa !23
  %783 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %782, i64 -1)
  %784 = extractvalue { i64, i1 } %783, 1, !nosanitize !20
  br i1 %784, label %740, label %785, !prof !21, !nosanitize !20

785:                                              ; preds = %777
  %786 = extractvalue { i64, i1 } %783, 0, !nosanitize !20
  store i64 %786, ptr %781, align 8, !tbaa !23
  %787 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %787, align 4, !tbaa !61
  br label %.loopexit59

.loopexit59:                                      ; preds = %695, %356, %785, %749, %741, %720, %718, %702, %.loopexit62, %.loopexit60, %342, %338, %265, %4, %2
  %788 = phi i32 [ %0, %741 ], [ -1, %749 ], [ %0, %785 ], [ -1, %2 ], [ -1, %4 ], [ -1, %265 ], [ -1, %718 ], [ -1, %720 ], [ -1, %702 ], [ -1, %.loopexit62 ], [ -1, %338 ], [ -1, %342 ], [ -1, %.loopexit60 ], [ -1, %356 ], [ -1, %695 ]
  ret i32 %788
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %.loopexit88, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %.loopexit88

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
  br i1 %19, label %.loopexit88, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %.loopexit91, label %24

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

43:                                               ; preds = %461, %24
  %44 = phi i64 [ %462, %461 ], [ %22, %24 ]
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
  br label %461

69:                                               ; preds = %43
  %70 = load i32, ptr %27, align 8, !tbaa !24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %.preheader789, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %28, align 8, !tbaa !25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %.loopexit91, label %.preheader789

.preheader789:                                    ; preds = %72, %69
  br label %75

75:                                               ; preds = %.backedge, %.preheader789
  %76 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %76, label %448 [
    i32 0, label %77
    i32 1, label %306
    i32 2, label %344
  ]

77:                                               ; preds = %75
  %78 = load i32, ptr %30, align 8, !tbaa !27
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load i32, ptr %40, align 4, !tbaa !28
  %82 = zext i32 %81 to i64
  %83 = tail call noalias ptr @malloc(i64 noundef %82) #16
  store ptr %83, ptr %35, align 8, !tbaa !29
  %84 = shl i32 %81, 1
  %85 = zext i32 %84 to i64
  %86 = tail call noalias ptr @malloc(i64 noundef %85) #16
  store ptr %86, ptr %32, align 8, !tbaa !30
  %87 = icmp eq ptr %83, null
  %88 = icmp eq ptr %86, null
  %89 = or i1 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  tail call void @free(ptr noundef %86) #13
  tail call void @free(ptr noundef %83) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit88

91:                                               ; preds = %80
  store i32 %81, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %92 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %95) #13
  %96 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %96) #13
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit88

97:                                               ; preds = %91, %77
  %98 = load i32, ptr %42, align 8, !tbaa !32
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %38, align 4, !tbaa !33
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100, %97
  %104 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  %105 = load i32, ptr %38, align 4, !tbaa !33
  %106 = icmp ne i32 %105, -1
  %107 = zext i1 %106 to i32
  store i32 %107, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %303

108:                                              ; preds = %100
  %109 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %109, label %.loopexit88 [
    i32 0, label %110
    i32 -5, label %110
  ]

110:                                              ; preds = %108, %108
  %111 = load i32, ptr %27, align 8, !tbaa !24
  %112 = icmp eq i32 %111, 0
  %113 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %112, label %114, label %271

114:                                              ; preds = %110
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %217, label %116

116:                                              ; preds = %114
  %117 = load ptr, ptr %35, align 8, !tbaa !29
  %118 = load ptr, ptr %34, align 8, !tbaa !35
  %119 = icmp eq ptr %118, %117
  br i1 %119, label %217, label %120

120:                                              ; preds = %116
  %121 = ptrtoint ptr %118 to i64
  %122 = ptrtoint ptr %117 to i64
  %123 = zext i32 %113 to i64
  %124 = icmp ult i32 %113, 4
  %125 = sub i64 %122, %121
  %126 = icmp ult i64 %125, 32
  %127 = or i1 %124, %126
  br i1 %127, label %167, label %128

128:                                              ; preds = %120
  %129 = icmp ult i32 %113, 32
  br i1 %129, label %151, label %130

130:                                              ; preds = %128
  %131 = and i64 %123, 4294967264
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi i64 [ 0, %130 ], [ %140, %132 ]
  %134 = getelementptr i8, ptr %117, i64 %133
  %135 = getelementptr i8, ptr %118, i64 %133
  %136 = getelementptr i8, ptr %135, i64 16
  %137 = load <16 x i8>, ptr %135, align 1, !tbaa !36
  %138 = load <16 x i8>, ptr %136, align 1, !tbaa !36
  %139 = getelementptr i8, ptr %134, i64 16
  store <16 x i8> %137, ptr %134, align 1, !tbaa !36
  store <16 x i8> %138, ptr %139, align 1, !tbaa !36
  %140 = add nuw nsw i64 %133, 32
  %141 = icmp eq i64 %140, %131
  br i1 %141, label %142, label %132, !llvm.loop !95

142:                                              ; preds = %132
  %143 = icmp eq i64 %131, %123
  br i1 %143, label %.loopexit81, label %144

144:                                              ; preds = %142
  %145 = getelementptr i8, ptr %117, i64 %131
  %146 = getelementptr i8, ptr %118, i64 %131
  %147 = trunc nuw i64 %131 to i32
  %148 = sub i32 %113, %147
  %149 = and i64 %123, 28
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %144, %128
  %152 = phi i64 [ %131, %144 ], [ 0, %128 ]
  %153 = and i64 %123, 4294967292
  br label %154

154:                                              ; preds = %154, %151
  %155 = phi i64 [ %152, %151 ], [ %159, %154 ]
  %156 = getelementptr i8, ptr %117, i64 %155
  %157 = getelementptr i8, ptr %118, i64 %155
  %158 = load <4 x i8>, ptr %157, align 1, !tbaa !36
  store <4 x i8> %158, ptr %156, align 1, !tbaa !36
  %159 = add nuw i64 %155, 4
  %160 = icmp eq i64 %159, %153
  br i1 %160, label %161, label %154, !llvm.loop !96

161:                                              ; preds = %154
  %162 = getelementptr i8, ptr %117, i64 %153
  %163 = getelementptr i8, ptr %118, i64 %153
  %164 = trunc nuw i64 %153 to i32
  %165 = sub i32 %113, %164
  %166 = icmp eq i64 %153, %123
  br i1 %166, label %.loopexit81, label %167

167:                                              ; preds = %161, %144, %120
  %168 = phi ptr [ %117, %120 ], [ %145, %144 ], [ %162, %161 ]
  %169 = phi ptr [ %118, %120 ], [ %146, %144 ], [ %163, %161 ]
  %170 = phi i32 [ %113, %120 ], [ %148, %144 ], [ %165, %161 ]
  %171 = add i32 %170, -1
  %172 = and i32 %170, 7
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %.loopexit83, label %.preheader82

.preheader82:                                     ; preds = %167, %.preheader82
  %174 = phi ptr [ %178, %.preheader82 ], [ %168, %167 ]
  %175 = phi ptr [ %179, %.preheader82 ], [ %169, %167 ]
  %176 = phi i32 [ %180, %.preheader82 ], [ 0, %167 ]
  %177 = load i8, ptr %175, align 1, !tbaa !36
  store i8 %177, ptr %174, align 1, !tbaa !36
  %178 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %179 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %180 = add nuw nsw i32 %176, 1
  %181 = icmp eq i32 %180, %172
  br i1 %181, label %.loopexit83.loopexit, label %.preheader82, !llvm.loop !97

.loopexit83.loopexit:                             ; preds = %.preheader82
  %182 = and i32 %170, -8
  br label %.loopexit83

.loopexit83:                                      ; preds = %.loopexit83.loopexit, %167
  %183 = phi ptr [ %168, %167 ], [ %178, %.loopexit83.loopexit ]
  %184 = phi ptr [ %169, %167 ], [ %179, %.loopexit83.loopexit ]
  %185 = phi i32 [ %170, %167 ], [ %182, %.loopexit83.loopexit ]
  %186 = icmp ult i32 %171, 7
  br i1 %186, label %.loopexit81, label %.preheader80

.preheader80:                                     ; preds = %.loopexit83, %.preheader80
  %187 = phi ptr [ %213, %.preheader80 ], [ %183, %.loopexit83 ]
  %188 = phi ptr [ %214, %.preheader80 ], [ %184, %.loopexit83 ]
  %189 = phi i32 [ %212, %.preheader80 ], [ %185, %.loopexit83 ]
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
  br i1 %215, label %.loopexit81, label %.preheader80, !llvm.loop !98

.loopexit81:                                      ; preds = %.preheader80, %.loopexit83, %161, %142
  %216 = load i32, ptr %28, align 8, !tbaa !34
  br label %217

217:                                              ; preds = %.loopexit81, %116, %114
  %218 = phi i32 [ %216, %.loopexit81 ], [ %113, %116 ], [ 0, %114 ]
  %219 = load i32, ptr %30, align 8, !tbaa !27
  %220 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %219, i32 %218), !nosanitize !20
  %221 = extractvalue { i32, i1 } %220, 1, !nosanitize !20
  br i1 %221, label %222, label %223, !prof !21, !nosanitize !20

222:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

223:                                              ; preds = %217
  %224 = extractvalue { i32, i1 } %220, 0, !nosanitize !20
  %225 = load ptr, ptr %35, align 8, !tbaa !29
  %226 = zext i32 %218 to i64
  %227 = getelementptr inbounds nuw i8, ptr %225, i64 %226
  store i32 0, ptr %36, align 4, !tbaa !17
  %228 = tail call ptr @__errno_location() #17
  store i32 0, ptr %228, align 4, !tbaa !45
  br label %229

229:                                              ; preds = %248, %223
  %230 = phi i32 [ 0, %223 ], [ %249, %248 ]
  %231 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %224, i32 %230), !nosanitize !20
  %232 = extractvalue { i32, i1 } %231, 1, !nosanitize !20
  br i1 %232, label %233, label %234, !prof !21, !nosanitize !20

233:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

234:                                              ; preds = %229
  %235 = extractvalue { i32, i1 } %231, 0, !nosanitize !20
  %236 = tail call i32 @llvm.umin.i32(i32 %235, i32 1073741824)
  %237 = load i32, ptr %37, align 4, !tbaa !46
  %238 = zext i32 %230 to i64
  %239 = getelementptr inbounds nuw i8, ptr %227, i64 %238
  %240 = zext nneg i32 %236 to i64
  %241 = tail call i64 @read(i32 noundef %237, ptr noundef %239, i64 noundef %240) #13
  %242 = trunc i64 %241 to i32
  %243 = icmp slt i32 %242, 1
  br i1 %243, label %251, label %244

244:                                              ; preds = %234
  %245 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %230, i32 %242), !nosanitize !20
  %246 = extractvalue { i32, i1 } %245, 1, !nosanitize !20
  br i1 %246, label %247, label %248, !prof !21, !nosanitize !20

247:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

248:                                              ; preds = %244
  %249 = extractvalue { i32, i1 } %245, 0, !nosanitize !20
  %250 = icmp ult i32 %249, %224
  br i1 %250, label %229, label %.loopexit79, !llvm.loop !47

251:                                              ; preds = %234
  %252 = icmp slt i32 %242, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %251
  %254 = load i32, ptr %228, align 4, !tbaa !45
  %255 = icmp eq i32 %254, 11
  br i1 %255, label %256, label %.loopexit89

256:                                              ; preds = %253
  store i32 1, ptr %36, align 4, !tbaa !17
  %257 = icmp eq i32 %230, 0
  br i1 %257, label %258, label %.loopexit79

258:                                              ; preds = %256
  %259 = load i32, ptr %228, align 4, !tbaa !45
  br label %.loopexit89

260:                                              ; preds = %251
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit79

.loopexit89:                                      ; preds = %253, %258
  %261 = phi i32 [ %259, %258 ], [ %254, %253 ]
  %262 = tail call ptr @strerror(i32 noundef %261) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %262) #13
  br label %.loopexit88

.loopexit79:                                      ; preds = %248, %260, %256
  %263 = phi i32 [ %230, %260 ], [ %230, %256 ], [ %249, %248 ]
  %264 = load i32, ptr %28, align 8, !tbaa !34
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %264, i32 %263), !nosanitize !20
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !20
  br i1 %266, label %267, label %268, !prof !21, !nosanitize !20

267:                                              ; preds = %.loopexit79
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

268:                                              ; preds = %.loopexit79
  %269 = extractvalue { i32, i1 } %265, 0, !nosanitize !20
  store i32 %269, ptr %28, align 8, !tbaa !34
  %270 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %270, ptr %34, align 8, !tbaa !35
  br label %271

271:                                              ; preds = %268, %110
  %272 = phi i32 [ %269, %268 ], [ %113, %110 ]
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %303, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %36, align 4, !tbaa !17
  %276 = icmp ne i32 %275, 0
  %277 = icmp ult i32 %272, 4
  %278 = and i1 %277, %276
  br i1 %278, label %303, label %279

279:                                              ; preds = %274
  %280 = icmp ugt i32 %272, 3
  %281 = load ptr, ptr %34, align 8, !tbaa !35
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
  %298 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %449

299:                                              ; preds = %293, %289, %285, %282, %279
  %300 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %300, ptr %25, align 8, !tbaa !22
  %301 = zext i32 %272 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %300, ptr align 1 %281, i64 %301, i1 false)
  %302 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %302, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %451

303:                                              ; preds = %274, %271, %103
  %304 = load i32, ptr %29, align 8, !tbaa !26
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %.loopexit90, label %449

306:                                              ; preds = %75
  %307 = load ptr, ptr %32, align 8, !tbaa !30
  %308 = load i32, ptr %30, align 8, !tbaa !27
  %309 = shl i32 %308, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %310 = tail call ptr @__errno_location() #17
  store i32 0, ptr %310, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %311

311:                                              ; preds = %327, %306
  %312 = phi i32 [ %328, %327 ], [ 0, %306 ]
  %313 = sub i32 %309, %312
  %314 = tail call i32 @llvm.umin.i32(i32 %313, i32 1073741824)
  %315 = load i32, ptr %37, align 4, !tbaa !46
  %316 = zext i32 %312 to i64
  %317 = getelementptr inbounds nuw i8, ptr %307, i64 %316
  %318 = zext nneg i32 %314 to i64
  %319 = tail call i64 @read(i32 noundef %315, ptr noundef %317, i64 noundef %318) #13
  %320 = trunc i64 %319 to i32
  %321 = icmp slt i32 %320, 1
  br i1 %321, label %330, label %322

322:                                              ; preds = %311
  %323 = load i32, ptr %0, align 4, !tbaa !45
  %324 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %323, i32 %320), !nosanitize !20
  %325 = extractvalue { i32, i1 } %324, 1, !nosanitize !20
  br i1 %325, label %326, label %327, !prof !21, !nosanitize !20

326:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

327:                                              ; preds = %322
  %328 = extractvalue { i32, i1 } %324, 0, !nosanitize !20
  store i32 %328, ptr %0, align 4, !tbaa !45
  %329 = icmp ult i32 %328, %309
  br i1 %329, label %311, label %.loopexit87, !llvm.loop !47

330:                                              ; preds = %311
  %331 = icmp slt i32 %320, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %330
  %333 = load i32, ptr %310, align 4, !tbaa !45
  %334 = icmp eq i32 %333, 11
  br i1 %334, label %335, label %.loopexit92

335:                                              ; preds = %332
  store i32 1, ptr %36, align 4, !tbaa !17
  %336 = load i32, ptr %0, align 4, !tbaa !45
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %.loopexit87

338:                                              ; preds = %335
  %339 = load i32, ptr %310, align 4, !tbaa !45
  br label %.loopexit92

340:                                              ; preds = %330
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit87

.loopexit92:                                      ; preds = %332, %338
  %341 = phi i32 [ %339, %338 ], [ %333, %332 ]
  %342 = tail call ptr @strerror(i32 noundef %341) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %342) #13
  br label %.loopexit88

.loopexit87:                                      ; preds = %327, %340, %335
  %343 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %343, ptr %25, align 8, !tbaa !22
  br label %.loopexit90

344:                                              ; preds = %75
  %345 = load i32, ptr %30, align 8, !tbaa !27
  %346 = shl i32 %345, 1
  store i32 %346, ptr %31, align 8, !tbaa !48
  %347 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %347, ptr %33, align 8, !tbaa !49
  br label %348

348:                                              ; preds = %432, %344
  %349 = phi i32 [ 0, %344 ], [ %417, %432 ]
  %350 = load i32, ptr %28, align 8, !tbaa !34
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %416

352:                                              ; preds = %348
  %353 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %353, label %.loopexit84 [
    i32 0, label %354
    i32 -5, label %354
  ]

354:                                              ; preds = %352, %352
  %355 = load i32, ptr %27, align 8, !tbaa !24
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %412

357:                                              ; preds = %354
  %358 = load i32, ptr %30, align 8, !tbaa !27
  %.fr = freeze i32 %358
  %359 = load ptr, ptr %35, align 8, !tbaa !29
  store i32 0, ptr %36, align 4, !tbaa !17
  %360 = tail call ptr @__errno_location() #17
  store i32 0, ptr %360, align 4, !tbaa !45
  %mv.h = icmp sgt i32 %.fr, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %357, %371
  %361 = phi i32 [ %372, %371 ], [ 0, %357 ]
  %362 = sub nsw i32 %.fr, %361
  %363 = tail call i32 @llvm.umin.i32(i32 %362, i32 1073741824)
  %364 = load i32, ptr %37, align 4, !tbaa !46
  %365 = zext nneg i32 %361 to i64
  %366 = getelementptr inbounds nuw i8, ptr %359, i64 %365
  %367 = zext nneg i32 %363 to i64
  %368 = tail call i64 @read(i32 noundef %364, ptr noundef %366, i64 noundef %367) #13
  %369 = trunc i64 %368 to i32
  %370 = icmp slt i32 %369, 1
  br i1 %370, label %.loopexit76, label %371

371:                                              ; preds = %.mv.ph.mv.fast
  %372 = add nuw i32 %361, %369
  %373 = icmp ult i32 %372, %.fr
  br i1 %373, label %.mv.ph.mv.fast, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %357, %388
  %374 = phi i32 [ %389, %388 ], [ 0, %357 ]
  %375 = sub i32 %.fr, %374
  %376 = tail call i32 @llvm.umin.i32(i32 %375, i32 1073741824)
  %377 = load i32, ptr %37, align 4, !tbaa !46
  %378 = zext i32 %374 to i64
  %379 = getelementptr inbounds nuw i8, ptr %359, i64 %378
  %380 = zext nneg i32 %376 to i64
  %381 = tail call i64 @read(i32 noundef %377, ptr noundef %379, i64 noundef %380) #13
  %382 = trunc i64 %381 to i32
  %383 = icmp slt i32 %382, 1
  br i1 %383, label %.loopexit76, label %384

384:                                              ; preds = %.mv.ph
  %385 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %374, i32 %382), !nosanitize !20
  %386 = extractvalue { i32, i1 } %385, 1, !nosanitize !20
  br i1 %386, label %387, label %388, !prof !21, !nosanitize !20

387:                                              ; preds = %384
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

388:                                              ; preds = %384
  %389 = extractvalue { i32, i1 } %385, 0, !nosanitize !20
  %390 = icmp ult i32 %389, %.fr
  br i1 %390, label %.mv.ph, label %.loopexit, !llvm.loop !47

.loopexit76:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa4 = phi i32 [ %369, %.mv.ph.mv.fast ], [ %382, %.mv.ph ]
  %.lcssa1 = phi i32 [ %361, %.mv.ph.mv.fast ], [ %374, %.mv.ph ]
  %391 = icmp slt i32 %.lcssa4, 0
  br i1 %391, label %392, label %399

392:                                              ; preds = %.loopexit76
  %393 = load i32, ptr %360, align 4, !tbaa !45
  %394 = icmp eq i32 %393, 11
  br i1 %394, label %395, label %.loopexit86

395:                                              ; preds = %392
  store i32 1, ptr %36, align 4, !tbaa !17
  %396 = icmp eq i32 %.lcssa1, 0
  br i1 %396, label %397, label %.loopexit

397:                                              ; preds = %395
  %398 = load i32, ptr %360, align 4, !tbaa !45
  br label %.loopexit86

399:                                              ; preds = %.loopexit76
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit

.loopexit86:                                      ; preds = %392, %397
  %400 = phi i32 [ %398, %397 ], [ %393, %392 ]
  %401 = tail call ptr @strerror(i32 noundef %400) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %401) #13
  %402 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit84

.loopexit:                                        ; preds = %388, %371, %399, %395
  %403 = phi i32 [ %.lcssa1, %399 ], [ %.lcssa1, %395 ], [ %372, %371 ], [ %389, %388 ]
  %404 = load i32, ptr %28, align 8, !tbaa !34
  %405 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %404, i32 %403), !nosanitize !20
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !20
  br i1 %406, label %407, label %408, !prof !21, !nosanitize !20

407:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

408:                                              ; preds = %.loopexit
  %409 = extractvalue { i32, i1 } %405, 0, !nosanitize !20
  store i32 %409, ptr %28, align 8, !tbaa !34
  %410 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %410, ptr %34, align 8, !tbaa !35
  %411 = icmp eq i32 %409, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %408, %354
  %413 = load i32, ptr %36, align 4, !tbaa !17
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %.loopexit84

415:                                              ; preds = %412
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit84

416:                                              ; preds = %408, %348
  %417 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %418 = load i32, ptr %31, align 8, !tbaa !48
  %419 = icmp ult i32 %418, %346
  br i1 %419, label %420, label %421

420:                                              ; preds = %416
  store i32 0, ptr %38, align 4, !tbaa !33
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
  br label %.loopexit84

423:                                              ; preds = %421
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit84

424:                                              ; preds = %421
  %425 = load i32, ptr %38, align 4, !tbaa !33
  %426 = icmp eq i32 %425, 1
  br i1 %426, label %427, label %428

427:                                              ; preds = %424
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %.loopexit84

428:                                              ; preds = %424
  %429 = load ptr, ptr %39, align 8, !tbaa !50
  %430 = icmp eq ptr %429, null
  %431 = select i1 %430, ptr @.str.6, ptr %429
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %431) #13
  br label %.loopexit84

432:                                              ; preds = %421
  %433 = icmp ne i32 %418, 0
  %434 = icmp ne i32 %417, 1
  %435 = select i1 %433, i1 %434, i1 false
  br i1 %435, label %348, label %.loopexit84, !llvm.loop !51

.loopexit84:                                      ; preds = %432, %352, %428, %427, %423, %422, %415, %412, %.loopexit86
  %436 = phi i32 [ %349, %412 ], [ %349, %415 ], [ %417, %422 ], [ -4, %423 ], [ 0, %427 ], [ -3, %428 ], [ %402, %.loopexit86 ], [ %417, %432 ], [ %353, %352 ]
  %437 = load i32, ptr %31, align 8, !tbaa !48
  %438 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %346, i32 %437), !nosanitize !20
  %439 = extractvalue { i32, i1 } %438, 1, !nosanitize !20
  br i1 %439, label %440, label %441, !prof !21, !nosanitize !20

440:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

441:                                              ; preds = %.loopexit84
  %442 = extractvalue { i32, i1 } %438, 0, !nosanitize !20
  store i32 %442, ptr %0, align 8, !tbaa !19
  %443 = load ptr, ptr %33, align 8, !tbaa !49
  %444 = zext i32 %442 to i64
  %445 = sub nsw i64 0, %444
  %446 = getelementptr inbounds i8, ptr %443, i64 %445
  store ptr %446, ptr %25, align 8, !tbaa !22
  switch i32 %436, label %.loopexit88 [
    i32 1, label %447
    i32 0, label %449
  ]

447:                                              ; preds = %441
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %449

448:                                              ; preds = %75
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit88

449:                                              ; preds = %447, %441, %303, %297
  %450 = load i32, ptr %0, align 8, !tbaa !19
  br label %451

451:                                              ; preds = %449, %299
  %452 = phi i32 [ %450, %449 ], [ %302, %299 ]
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %.loopexit90

454:                                              ; preds = %451
  %455 = load i32, ptr %27, align 8, !tbaa !24
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %.backedge, label %457

457:                                              ; preds = %454
  %458 = load i32, ptr %28, align 8, !tbaa !34
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %.loopexit90, label %.backedge

.backedge:                                        ; preds = %457, %454
  br label %75, !llvm.loop !52

.loopexit90:                                      ; preds = %457, %451, %303, %.loopexit87
  %460 = load i64, ptr %21, align 8, !tbaa !18
  br label %461

461:                                              ; preds = %.loopexit90, %67
  %462 = phi i64 [ %460, %.loopexit90 ], [ %68, %67 ]
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %.loopexit91, label %43, !llvm.loop !53

.loopexit91:                                      ; preds = %461, %72, %20
  %464 = add nsw i32 %2, -1
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %.loopexit88, label %466

466:                                              ; preds = %.loopexit91
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %485 = load i32, ptr %0, align 8, !tbaa !19
  br label %486

486:                                              ; preds = %905, %466
  %487 = phi i32 [ %894, %905 ], [ %485, %466 ]
  %488 = phi i32 [ %906, %905 ], [ %464, %466 ]
  %489 = phi ptr [ %907, %905 ], [ %1, %466 ]
  %490 = icmp eq i32 %487, 0
  br i1 %490, label %.preheader70, label %868

.preheader70:                                     ; preds = %486, %.preheader70.backedge
  %491 = load i32, ptr %467, align 8, !tbaa !26
  switch i32 %491, label %852 [
    i32 0, label %492
    i32 1, label %721
    i32 2, label %759
  ]

492:                                              ; preds = %.preheader70
  %493 = load i32, ptr %468, align 8, !tbaa !27
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %512

495:                                              ; preds = %492
  %496 = load i32, ptr %481, align 4, !tbaa !28
  %497 = zext i32 %496 to i64
  %498 = tail call noalias ptr @malloc(i64 noundef %497) #16
  store ptr %498, ptr %475, align 8, !tbaa !29
  %499 = shl i32 %496, 1
  %500 = zext i32 %499 to i64
  %501 = tail call noalias ptr @malloc(i64 noundef %500) #16
  store ptr %501, ptr %470, align 8, !tbaa !30
  %502 = icmp eq ptr %498, null
  %503 = icmp eq ptr %501, null
  %504 = or i1 %502, %503
  br i1 %504, label %505, label %506

505:                                              ; preds = %495
  tail call void @free(ptr noundef %501) #13
  tail call void @free(ptr noundef %498) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit71

506:                                              ; preds = %495
  store i32 %496, ptr %468, align 8, !tbaa !27
  store i32 0, ptr %473, align 8, !tbaa !25
  store ptr null, ptr %472, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %482, i8 0, i64 24, i1 false)
  %507 = tail call i32 @inflateInit2_(ptr noundef nonnull %472, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %512, label %509

509:                                              ; preds = %506
  %510 = load ptr, ptr %470, align 8, !tbaa !30
  tail call void @free(ptr noundef %510) #13
  %511 = load ptr, ptr %475, align 8, !tbaa !29
  tail call void @free(ptr noundef %511) #13
  store i32 0, ptr %468, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit71

512:                                              ; preds = %506, %492
  %513 = load i32, ptr %483, align 8, !tbaa !32
  %514 = icmp eq i32 %513, -1
  br i1 %514, label %518, label %515

515:                                              ; preds = %512
  %516 = load i32, ptr %478, align 4, !tbaa !33
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %523

518:                                              ; preds = %515, %512
  %519 = tail call i32 @inflateReset(ptr noundef nonnull %472) #13
  store i32 2, ptr %467, align 8, !tbaa !26
  %520 = load i32, ptr %478, align 4, !tbaa !33
  %521 = icmp ne i32 %520, -1
  %522 = zext i1 %521 to i32
  store i32 %522, ptr %478, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !32
  br label %718

523:                                              ; preds = %515
  %524 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %524, label %.loopexit71 [
    i32 0, label %525
    i32 -5, label %525
  ]

525:                                              ; preds = %523, %523
  %526 = load i32, ptr %474, align 8, !tbaa !24
  %527 = icmp eq i32 %526, 0
  %528 = load i32, ptr %473, align 8, !tbaa !34
  br i1 %527, label %529, label %686

529:                                              ; preds = %525
  %530 = icmp eq i32 %528, 0
  br i1 %530, label %632, label %531

531:                                              ; preds = %529
  %532 = load ptr, ptr %475, align 8, !tbaa !29
  %533 = load ptr, ptr %472, align 8, !tbaa !35
  %534 = icmp eq ptr %533, %532
  br i1 %534, label %632, label %535

535:                                              ; preds = %531
  %536 = ptrtoint ptr %533 to i64
  %537 = ptrtoint ptr %532 to i64
  %538 = zext i32 %528 to i64
  %539 = icmp ult i32 %528, 4
  %540 = sub i64 %537, %536
  %541 = icmp ult i64 %540, 32
  %542 = or i1 %539, %541
  br i1 %542, label %582, label %543

543:                                              ; preds = %535
  %544 = icmp ult i32 %528, 32
  br i1 %544, label %566, label %545

545:                                              ; preds = %543
  %546 = and i64 %538, 4294967264
  br label %547

547:                                              ; preds = %547, %545
  %548 = phi i64 [ 0, %545 ], [ %555, %547 ]
  %549 = getelementptr i8, ptr %532, i64 %548
  %550 = getelementptr i8, ptr %533, i64 %548
  %551 = getelementptr i8, ptr %550, i64 16
  %552 = load <16 x i8>, ptr %550, align 1, !tbaa !36
  %553 = load <16 x i8>, ptr %551, align 1, !tbaa !36
  %554 = getelementptr i8, ptr %549, i64 16
  store <16 x i8> %552, ptr %549, align 1, !tbaa !36
  store <16 x i8> %553, ptr %554, align 1, !tbaa !36
  %555 = add nuw nsw i64 %548, 32
  %556 = icmp eq i64 %555, %546
  br i1 %556, label %557, label %547, !llvm.loop !99

557:                                              ; preds = %547
  %558 = icmp eq i64 %546, %538
  br i1 %558, label %.loopexit64, label %559

559:                                              ; preds = %557
  %560 = getelementptr i8, ptr %532, i64 %546
  %561 = getelementptr i8, ptr %533, i64 %546
  %562 = trunc nuw i64 %546 to i32
  %563 = sub i32 %528, %562
  %564 = and i64 %538, 28
  %565 = icmp eq i64 %564, 0
  br i1 %565, label %582, label %566

566:                                              ; preds = %559, %543
  %567 = phi i64 [ %546, %559 ], [ 0, %543 ]
  %568 = and i64 %538, 4294967292
  br label %569

569:                                              ; preds = %569, %566
  %570 = phi i64 [ %567, %566 ], [ %574, %569 ]
  %571 = getelementptr i8, ptr %532, i64 %570
  %572 = getelementptr i8, ptr %533, i64 %570
  %573 = load <4 x i8>, ptr %572, align 1, !tbaa !36
  store <4 x i8> %573, ptr %571, align 1, !tbaa !36
  %574 = add nuw i64 %570, 4
  %575 = icmp eq i64 %574, %568
  br i1 %575, label %576, label %569, !llvm.loop !100

576:                                              ; preds = %569
  %577 = getelementptr i8, ptr %532, i64 %568
  %578 = getelementptr i8, ptr %533, i64 %568
  %579 = trunc nuw i64 %568 to i32
  %580 = sub i32 %528, %579
  %581 = icmp eq i64 %568, %538
  br i1 %581, label %.loopexit64, label %582

582:                                              ; preds = %576, %559, %535
  %583 = phi ptr [ %532, %535 ], [ %560, %559 ], [ %577, %576 ]
  %584 = phi ptr [ %533, %535 ], [ %561, %559 ], [ %578, %576 ]
  %585 = phi i32 [ %528, %535 ], [ %563, %559 ], [ %580, %576 ]
  %586 = add i32 %585, -1
  %587 = and i32 %585, 7
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %.loopexit66, label %.preheader65

.preheader65:                                     ; preds = %582, %.preheader65
  %589 = phi ptr [ %593, %.preheader65 ], [ %583, %582 ]
  %590 = phi ptr [ %594, %.preheader65 ], [ %584, %582 ]
  %591 = phi i32 [ %595, %.preheader65 ], [ 0, %582 ]
  %592 = load i8, ptr %590, align 1, !tbaa !36
  store i8 %592, ptr %589, align 1, !tbaa !36
  %593 = getelementptr inbounds nuw i8, ptr %589, i64 1
  %594 = getelementptr inbounds nuw i8, ptr %590, i64 1
  %595 = add nuw nsw i32 %591, 1
  %596 = icmp eq i32 %595, %587
  br i1 %596, label %.loopexit66.loopexit, label %.preheader65, !llvm.loop !101

.loopexit66.loopexit:                             ; preds = %.preheader65
  %597 = and i32 %585, -8
  br label %.loopexit66

.loopexit66:                                      ; preds = %.loopexit66.loopexit, %582
  %598 = phi ptr [ %583, %582 ], [ %593, %.loopexit66.loopexit ]
  %599 = phi ptr [ %584, %582 ], [ %594, %.loopexit66.loopexit ]
  %600 = phi i32 [ %585, %582 ], [ %597, %.loopexit66.loopexit ]
  %601 = icmp ult i32 %586, 7
  br i1 %601, label %.loopexit64, label %.preheader

.preheader:                                       ; preds = %.loopexit66, %.preheader
  %602 = phi ptr [ %628, %.preheader ], [ %598, %.loopexit66 ]
  %603 = phi ptr [ %629, %.preheader ], [ %599, %.loopexit66 ]
  %604 = phi i32 [ %627, %.preheader ], [ %600, %.loopexit66 ]
  %605 = load i8, ptr %603, align 1, !tbaa !36
  store i8 %605, ptr %602, align 1, !tbaa !36
  %606 = getelementptr inbounds nuw i8, ptr %602, i64 1
  %607 = getelementptr inbounds nuw i8, ptr %603, i64 1
  %608 = load i8, ptr %607, align 1, !tbaa !36
  store i8 %608, ptr %606, align 1, !tbaa !36
  %609 = getelementptr inbounds nuw i8, ptr %602, i64 2
  %610 = getelementptr inbounds nuw i8, ptr %603, i64 2
  %611 = load i8, ptr %610, align 1, !tbaa !36
  store i8 %611, ptr %609, align 1, !tbaa !36
  %612 = getelementptr inbounds nuw i8, ptr %602, i64 3
  %613 = getelementptr inbounds nuw i8, ptr %603, i64 3
  %614 = load i8, ptr %613, align 1, !tbaa !36
  store i8 %614, ptr %612, align 1, !tbaa !36
  %615 = getelementptr inbounds nuw i8, ptr %602, i64 4
  %616 = getelementptr inbounds nuw i8, ptr %603, i64 4
  %617 = load i8, ptr %616, align 1, !tbaa !36
  store i8 %617, ptr %615, align 1, !tbaa !36
  %618 = getelementptr inbounds nuw i8, ptr %602, i64 5
  %619 = getelementptr inbounds nuw i8, ptr %603, i64 5
  %620 = load i8, ptr %619, align 1, !tbaa !36
  store i8 %620, ptr %618, align 1, !tbaa !36
  %621 = getelementptr inbounds nuw i8, ptr %602, i64 6
  %622 = getelementptr inbounds nuw i8, ptr %603, i64 6
  %623 = load i8, ptr %622, align 1, !tbaa !36
  store i8 %623, ptr %621, align 1, !tbaa !36
  %624 = getelementptr inbounds nuw i8, ptr %602, i64 7
  %625 = getelementptr inbounds nuw i8, ptr %603, i64 7
  %626 = load i8, ptr %625, align 1, !tbaa !36
  store i8 %626, ptr %624, align 1, !tbaa !36
  %627 = add i32 %604, -8
  %628 = getelementptr inbounds nuw i8, ptr %602, i64 8
  %629 = getelementptr inbounds nuw i8, ptr %603, i64 8
  %630 = icmp eq i32 %627, 0
  br i1 %630, label %.loopexit64, label %.preheader, !llvm.loop !102

.loopexit64:                                      ; preds = %.preheader, %.loopexit66, %576, %557
  %631 = load i32, ptr %473, align 8, !tbaa !34
  br label %632

632:                                              ; preds = %.loopexit64, %531, %529
  %633 = phi i32 [ %631, %.loopexit64 ], [ %528, %531 ], [ 0, %529 ]
  %634 = load i32, ptr %468, align 8, !tbaa !27
  %635 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %634, i32 %633), !nosanitize !20
  %636 = extractvalue { i32, i1 } %635, 1, !nosanitize !20
  br i1 %636, label %637, label %638, !prof !21, !nosanitize !20

637:                                              ; preds = %632
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

638:                                              ; preds = %632
  %639 = extractvalue { i32, i1 } %635, 0, !nosanitize !20
  %640 = load ptr, ptr %475, align 8, !tbaa !29
  %641 = zext i32 %633 to i64
  %642 = getelementptr inbounds nuw i8, ptr %640, i64 %641
  store i32 0, ptr %476, align 4, !tbaa !17
  %643 = tail call ptr @__errno_location() #17
  store i32 0, ptr %643, align 4, !tbaa !45
  br label %644

644:                                              ; preds = %663, %638
  %645 = phi i32 [ 0, %638 ], [ %664, %663 ]
  %646 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %639, i32 %645), !nosanitize !20
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !20
  br i1 %647, label %648, label %649, !prof !21, !nosanitize !20

648:                                              ; preds = %644
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

649:                                              ; preds = %644
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !20
  %651 = tail call i32 @llvm.umin.i32(i32 %650, i32 1073741824)
  %652 = load i32, ptr %477, align 4, !tbaa !46
  %653 = zext i32 %645 to i64
  %654 = getelementptr inbounds nuw i8, ptr %642, i64 %653
  %655 = zext nneg i32 %651 to i64
  %656 = tail call i64 @read(i32 noundef %652, ptr noundef %654, i64 noundef %655) #13
  %657 = trunc i64 %656 to i32
  %658 = icmp slt i32 %657, 1
  br i1 %658, label %666, label %659

659:                                              ; preds = %649
  %660 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %645, i32 %657), !nosanitize !20
  %661 = extractvalue { i32, i1 } %660, 1, !nosanitize !20
  br i1 %661, label %662, label %663, !prof !21, !nosanitize !20

662:                                              ; preds = %659
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

663:                                              ; preds = %659
  %664 = extractvalue { i32, i1 } %660, 0, !nosanitize !20
  %665 = icmp ult i32 %664, %639
  br i1 %665, label %644, label %.loopexit63, !llvm.loop !47

666:                                              ; preds = %649
  %667 = icmp slt i32 %657, 0
  br i1 %667, label %668, label %675

668:                                              ; preds = %666
  %669 = load i32, ptr %643, align 4, !tbaa !45
  %670 = icmp eq i32 %669, 11
  br i1 %670, label %671, label %.loopexit72

671:                                              ; preds = %668
  store i32 1, ptr %476, align 4, !tbaa !17
  %672 = icmp eq i32 %645, 0
  br i1 %672, label %673, label %.loopexit63

673:                                              ; preds = %671
  %674 = load i32, ptr %643, align 4, !tbaa !45
  br label %.loopexit72

675:                                              ; preds = %666
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit63

.loopexit72:                                      ; preds = %668, %673
  %676 = phi i32 [ %674, %673 ], [ %669, %668 ]
  %677 = tail call ptr @strerror(i32 noundef %676) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %677) #13
  br label %.loopexit71

.loopexit63:                                      ; preds = %663, %675, %671
  %678 = phi i32 [ %645, %675 ], [ %645, %671 ], [ %664, %663 ]
  %679 = load i32, ptr %473, align 8, !tbaa !34
  %680 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %679, i32 %678), !nosanitize !20
  %681 = extractvalue { i32, i1 } %680, 1, !nosanitize !20
  br i1 %681, label %682, label %683, !prof !21, !nosanitize !20

682:                                              ; preds = %.loopexit63
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

683:                                              ; preds = %.loopexit63
  %684 = extractvalue { i32, i1 } %680, 0, !nosanitize !20
  store i32 %684, ptr %473, align 8, !tbaa !34
  %685 = load ptr, ptr %475, align 8, !tbaa !29
  store ptr %685, ptr %472, align 8, !tbaa !35
  br label %686

686:                                              ; preds = %683, %525
  %687 = phi i32 [ %684, %683 ], [ %528, %525 ]
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %718, label %689

689:                                              ; preds = %686
  %690 = load i32, ptr %476, align 4, !tbaa !17
  %691 = icmp ne i32 %690, 0
  %692 = icmp ult i32 %687, 4
  %693 = and i1 %692, %691
  br i1 %693, label %718, label %694

694:                                              ; preds = %689
  %695 = icmp ugt i32 %687, 3
  %696 = load ptr, ptr %472, align 8, !tbaa !35
  br i1 %695, label %697, label %714

697:                                              ; preds = %694
  %698 = load i8, ptr %696, align 1, !tbaa !36
  %699 = icmp eq i8 %698, 31
  br i1 %699, label %700, label %714

700:                                              ; preds = %697
  %701 = getelementptr inbounds nuw i8, ptr %696, i64 1
  %702 = load i8, ptr %701, align 1, !tbaa !36
  %703 = icmp eq i8 %702, -117
  br i1 %703, label %704, label %714

704:                                              ; preds = %700
  %705 = getelementptr inbounds nuw i8, ptr %696, i64 2
  %706 = load i8, ptr %705, align 1, !tbaa !36
  %707 = icmp eq i8 %706, 8
  br i1 %707, label %708, label %714

708:                                              ; preds = %704
  %709 = getelementptr inbounds nuw i8, ptr %696, i64 3
  %710 = load i8, ptr %709, align 1, !tbaa !36
  %711 = icmp ult i8 %710, 32
  br i1 %711, label %712, label %714

712:                                              ; preds = %708
  %713 = tail call i32 @inflateReset(ptr noundef nonnull %472) #13
  store i32 2, ptr %467, align 8, !tbaa !26
  store i32 1, ptr %478, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !32
  br label %853

714:                                              ; preds = %708, %704, %700, %697, %694
  %715 = load ptr, ptr %470, align 8, !tbaa !30
  store ptr %715, ptr %480, align 8, !tbaa !22
  %716 = zext i32 %687 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %715, ptr align 1 %696, i64 %716, i1 false)
  %717 = load i32, ptr %473, align 8, !tbaa !34
  store i32 %717, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %473, align 8, !tbaa !34
  store i32 1, ptr %467, align 8, !tbaa !26
  br label %855

718:                                              ; preds = %689, %686, %518
  %719 = load i32, ptr %467, align 8, !tbaa !26
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %.loopexit73, label %853

721:                                              ; preds = %.preheader70
  %722 = load ptr, ptr %470, align 8, !tbaa !30
  %723 = load i32, ptr %468, align 8, !tbaa !27
  %724 = shl i32 %723, 1
  store i32 0, ptr %476, align 4, !tbaa !17
  %725 = tail call ptr @__errno_location() #17
  store i32 0, ptr %725, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %726

726:                                              ; preds = %742, %721
  %727 = phi i32 [ %743, %742 ], [ 0, %721 ]
  %728 = sub i32 %724, %727
  %729 = tail call i32 @llvm.umin.i32(i32 %728, i32 1073741824)
  %730 = load i32, ptr %477, align 4, !tbaa !46
  %731 = zext i32 %727 to i64
  %732 = getelementptr inbounds nuw i8, ptr %722, i64 %731
  %733 = zext nneg i32 %729 to i64
  %734 = tail call i64 @read(i32 noundef %730, ptr noundef %732, i64 noundef %733) #13
  %735 = trunc i64 %734 to i32
  %736 = icmp slt i32 %735, 1
  br i1 %736, label %745, label %737

737:                                              ; preds = %726
  %738 = load i32, ptr %0, align 4, !tbaa !45
  %739 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %738, i32 %735), !nosanitize !20
  %740 = extractvalue { i32, i1 } %739, 1, !nosanitize !20
  br i1 %740, label %741, label %742, !prof !21, !nosanitize !20

741:                                              ; preds = %737
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

742:                                              ; preds = %737
  %743 = extractvalue { i32, i1 } %739, 0, !nosanitize !20
  store i32 %743, ptr %0, align 4, !tbaa !45
  %744 = icmp ult i32 %743, %724
  br i1 %744, label %726, label %.loopexit69, !llvm.loop !47

745:                                              ; preds = %726
  %746 = icmp slt i32 %735, 0
  br i1 %746, label %747, label %755

747:                                              ; preds = %745
  %748 = load i32, ptr %725, align 4, !tbaa !45
  %749 = icmp eq i32 %748, 11
  br i1 %749, label %750, label %.loopexit74

750:                                              ; preds = %747
  store i32 1, ptr %476, align 4, !tbaa !17
  %751 = load i32, ptr %0, align 4, !tbaa !45
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %.loopexit69

753:                                              ; preds = %750
  %754 = load i32, ptr %725, align 4, !tbaa !45
  br label %.loopexit74

755:                                              ; preds = %745
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit69

.loopexit74:                                      ; preds = %747, %753
  %756 = phi i32 [ %754, %753 ], [ %748, %747 ]
  %757 = tail call ptr @strerror(i32 noundef %756) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %757) #13
  br label %.loopexit71

.loopexit69:                                      ; preds = %742, %755, %750
  %758 = load ptr, ptr %470, align 8, !tbaa !30
  store ptr %758, ptr %480, align 8, !tbaa !22
  br label %.loopexit73

759:                                              ; preds = %.preheader70
  %760 = load i32, ptr %468, align 8, !tbaa !27
  %761 = shl i32 %760, 1
  store i32 %761, ptr %469, align 8, !tbaa !48
  %762 = load ptr, ptr %470, align 8, !tbaa !30
  store ptr %762, ptr %471, align 8, !tbaa !49
  br label %763

763:                                              ; preds = %836, %759
  %764 = phi i32 [ 0, %759 ], [ %821, %836 ]
  %765 = load i32, ptr %473, align 8, !tbaa !34
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %820

767:                                              ; preds = %763
  %768 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %768, label %.loopexit67 [
    i32 0, label %769
    i32 -5, label %769
  ]

769:                                              ; preds = %767, %767
  %770 = load i32, ptr %474, align 8, !tbaa !24
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %816

772:                                              ; preds = %769
  %773 = load i32, ptr %468, align 8, !tbaa !27
  %774 = load ptr, ptr %475, align 8, !tbaa !29
  store i32 0, ptr %476, align 4, !tbaa !17
  %775 = tail call ptr @__errno_location() #17
  store i32 0, ptr %775, align 4, !tbaa !45
  br label %776

776:                                              ; preds = %791, %772
  %777 = phi i32 [ 0, %772 ], [ %792, %791 ]
  %778 = sub i32 %773, %777
  %779 = tail call i32 @llvm.umin.i32(i32 %778, i32 1073741824)
  %780 = load i32, ptr %477, align 4, !tbaa !46
  %781 = zext i32 %777 to i64
  %782 = getelementptr inbounds nuw i8, ptr %774, i64 %781
  %783 = zext nneg i32 %779 to i64
  %784 = tail call i64 @read(i32 noundef %780, ptr noundef %782, i64 noundef %783) #13
  %785 = trunc i64 %784 to i32
  %786 = icmp slt i32 %785, 1
  br i1 %786, label %794, label %787

787:                                              ; preds = %776
  %788 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %777, i32 %785), !nosanitize !20
  %789 = extractvalue { i32, i1 } %788, 1, !nosanitize !20
  br i1 %789, label %790, label %791, !prof !21, !nosanitize !20

790:                                              ; preds = %787
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

791:                                              ; preds = %787
  %792 = extractvalue { i32, i1 } %788, 0, !nosanitize !20
  %793 = icmp ult i32 %792, %773
  br i1 %793, label %776, label %.loopexit62, !llvm.loop !47

794:                                              ; preds = %776
  %795 = icmp slt i32 %785, 0
  br i1 %795, label %796, label %803

796:                                              ; preds = %794
  %797 = load i32, ptr %775, align 4, !tbaa !45
  %798 = icmp eq i32 %797, 11
  br i1 %798, label %799, label %.loopexit68

799:                                              ; preds = %796
  store i32 1, ptr %476, align 4, !tbaa !17
  %800 = icmp eq i32 %777, 0
  br i1 %800, label %801, label %.loopexit62

801:                                              ; preds = %799
  %802 = load i32, ptr %775, align 4, !tbaa !45
  br label %.loopexit68

803:                                              ; preds = %794
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit62

.loopexit68:                                      ; preds = %796, %801
  %804 = phi i32 [ %802, %801 ], [ %797, %796 ]
  %805 = tail call ptr @strerror(i32 noundef %804) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %805) #13
  %806 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit67

.loopexit62:                                      ; preds = %791, %803, %799
  %807 = phi i32 [ %777, %803 ], [ %777, %799 ], [ %792, %791 ]
  %808 = load i32, ptr %473, align 8, !tbaa !34
  %809 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %808, i32 %807), !nosanitize !20
  %810 = extractvalue { i32, i1 } %809, 1, !nosanitize !20
  br i1 %810, label %811, label %812, !prof !21, !nosanitize !20

811:                                              ; preds = %.loopexit62
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

812:                                              ; preds = %.loopexit62
  %813 = extractvalue { i32, i1 } %809, 0, !nosanitize !20
  store i32 %813, ptr %473, align 8, !tbaa !34
  %814 = load ptr, ptr %475, align 8, !tbaa !29
  store ptr %814, ptr %472, align 8, !tbaa !35
  %815 = icmp eq i32 %813, 0
  br i1 %815, label %816, label %820

816:                                              ; preds = %812, %769
  %817 = load i32, ptr %476, align 4, !tbaa !17
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %819, label %.loopexit67

819:                                              ; preds = %816
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit67

820:                                              ; preds = %812, %763
  %821 = tail call i32 @inflate(ptr noundef nonnull %472, i32 noundef 0) #13
  %822 = load i32, ptr %469, align 8, !tbaa !48
  %823 = icmp ult i32 %822, %761
  br i1 %823, label %824, label %825

824:                                              ; preds = %820
  store i32 0, ptr %478, align 4, !tbaa !33
  br label %825

825:                                              ; preds = %824, %820
  switch i32 %821, label %836 [
    i32 -2, label %826
    i32 2, label %826
    i32 -4, label %827
    i32 -3, label %828
  ]

826:                                              ; preds = %825, %825
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit67

827:                                              ; preds = %825
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit67

828:                                              ; preds = %825
  %829 = load i32, ptr %478, align 4, !tbaa !33
  %830 = icmp eq i32 %829, 1
  br i1 %830, label %831, label %832

831:                                              ; preds = %828
  store i32 0, ptr %473, align 8, !tbaa !34
  store i32 1, ptr %474, align 8, !tbaa !24
  store i32 0, ptr %467, align 8, !tbaa !26
  br label %.loopexit67

832:                                              ; preds = %828
  %833 = load ptr, ptr %479, align 8, !tbaa !50
  %834 = icmp eq ptr %833, null
  %835 = select i1 %834, ptr @.str.6, ptr %833
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %835) #13
  br label %.loopexit67

836:                                              ; preds = %825
  %837 = icmp ne i32 %822, 0
  %838 = icmp ne i32 %821, 1
  %839 = select i1 %837, i1 %838, i1 false
  br i1 %839, label %763, label %.loopexit67, !llvm.loop !51

.loopexit67:                                      ; preds = %836, %767, %832, %831, %827, %826, %819, %816, %.loopexit68
  %840 = phi i32 [ %764, %816 ], [ %764, %819 ], [ %821, %826 ], [ -4, %827 ], [ 0, %831 ], [ -3, %832 ], [ %806, %.loopexit68 ], [ %768, %767 ], [ %821, %836 ]
  %841 = load i32, ptr %469, align 8, !tbaa !48
  %842 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %761, i32 %841), !nosanitize !20
  %843 = extractvalue { i32, i1 } %842, 1, !nosanitize !20
  br i1 %843, label %844, label %845, !prof !21, !nosanitize !20

844:                                              ; preds = %.loopexit67
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

845:                                              ; preds = %.loopexit67
  %846 = extractvalue { i32, i1 } %842, 0, !nosanitize !20
  store i32 %846, ptr %0, align 8, !tbaa !19
  %847 = load ptr, ptr %471, align 8, !tbaa !49
  %848 = zext i32 %846 to i64
  %849 = sub nsw i64 0, %848
  %850 = getelementptr inbounds i8, ptr %847, i64 %849
  store ptr %850, ptr %480, align 8, !tbaa !22
  switch i32 %840, label %.loopexit71 [
    i32 1, label %851
    i32 0, label %853
  ]

851:                                              ; preds = %845
  store i32 0, ptr %478, align 4, !tbaa !33
  store i32 0, ptr %467, align 8, !tbaa !26
  br label %853

852:                                              ; preds = %.preheader70
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit71

853:                                              ; preds = %851, %845, %718, %712
  %854 = load i32, ptr %0, align 8, !tbaa !19
  br label %855

855:                                              ; preds = %853, %714
  %856 = phi i32 [ %854, %853 ], [ %717, %714 ]
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %.loopexit73

858:                                              ; preds = %855
  %859 = load i32, ptr %474, align 8, !tbaa !24
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %.preheader70.backedge, label %861

861:                                              ; preds = %858
  %862 = load i32, ptr %473, align 8, !tbaa !34
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %.loopexit73, label %.preheader70.backedge

.preheader70.backedge:                            ; preds = %861, %858
  br label %.preheader70, !llvm.loop !52

.loopexit73:                                      ; preds = %861, %855, %718, %.loopexit69
  %864 = load i32, ptr %0, align 8, !tbaa !19
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %866, label %868

866:                                              ; preds = %.loopexit73
  %867 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %867, align 4, !tbaa !61
  br label %.loopexit71

868:                                              ; preds = %.loopexit73, %486
  %869 = phi i32 [ %864, %.loopexit73 ], [ %487, %486 ]
  %870 = tail call i32 @llvm.umin.i32(i32 %869, i32 %488)
  %871 = load ptr, ptr %480, align 8, !tbaa !22
  %872 = zext i32 %870 to i64
  %873 = tail call ptr @memchr(ptr noundef %871, i32 noundef 10, i64 noundef %872) #18
  %874 = icmp eq ptr %873, null
  br i1 %874, label %886, label %875

875:                                              ; preds = %868
  %876 = ptrtoint ptr %873 to i64
  %877 = ptrtoint ptr %871 to i64
  %878 = sub i64 %876, %877
  %879 = trunc i64 %878 to i32
  %880 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %879, i32 1), !nosanitize !20
  %881 = extractvalue { i32, i1 } %880, 1, !nosanitize !20
  br i1 %881, label %882, label %883, !prof !21, !nosanitize !20

882:                                              ; preds = %893, %875
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

883:                                              ; preds = %875
  %884 = extractvalue { i32, i1 } %880, 0, !nosanitize !20
  %885 = zext i32 %884 to i64
  br label %886

886:                                              ; preds = %883, %868
  %887 = phi i64 [ %885, %883 ], [ %872, %868 ]
  %888 = phi i32 [ %884, %883 ], [ %870, %868 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %489, ptr align 1 %871, i64 %887, i1 false)
  %889 = load i32, ptr %0, align 8, !tbaa !19
  %890 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %889, i32 %888), !nosanitize !20
  %891 = extractvalue { i32, i1 } %890, 1, !nosanitize !20
  br i1 %891, label %892, label %893, !prof !21, !nosanitize !20

892:                                              ; preds = %886
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

893:                                              ; preds = %886
  %894 = extractvalue { i32, i1 } %890, 0, !nosanitize !20
  store i32 %894, ptr %0, align 8, !tbaa !19
  %895 = load ptr, ptr %480, align 8, !tbaa !22
  %896 = getelementptr inbounds nuw i8, ptr %895, i64 %887
  store ptr %896, ptr %480, align 8, !tbaa !22
  %897 = load i64, ptr %484, align 8, !tbaa !23
  %898 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %897, i64 %887), !nosanitize !20
  %899 = extractvalue { i64, i1 } %898, 1, !nosanitize !20
  br i1 %899, label %882, label %900, !prof !21, !nosanitize !20

900:                                              ; preds = %893
  %901 = extractvalue { i64, i1 } %898, 0, !nosanitize !20
  store i64 %901, ptr %484, align 8, !tbaa !23
  %902 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %488, i32 %888), !nosanitize !20
  %903 = extractvalue { i32, i1 } %902, 1, !nosanitize !20
  br i1 %903, label %904, label %905, !prof !21, !nosanitize !20

904:                                              ; preds = %900
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

905:                                              ; preds = %900
  %906 = extractvalue { i32, i1 } %902, 0, !nosanitize !20
  %907 = getelementptr inbounds nuw i8, ptr %489, i64 %887
  %908 = icmp ne i32 %906, 0
  %909 = and i1 %874, %908
  br i1 %909, label %486, label %.loopexit71, !llvm.loop !103

.loopexit71:                                      ; preds = %905, %845, %523, %866, %852, %.loopexit74, %.loopexit72, %509, %505
  %910 = phi ptr [ %489, %866 ], [ %489, %852 ], [ %489, %.loopexit74 ], [ %489, %505 ], [ %489, %509 ], [ %489, %.loopexit72 ], [ %489, %845 ], [ %489, %523 ], [ %907, %905 ]
  %911 = icmp eq ptr %910, %1
  br i1 %911, label %.loopexit88, label %912

912:                                              ; preds = %.loopexit71
  store i8 0, ptr %910, align 1, !tbaa !36
  br label %.loopexit88

.loopexit88:                                      ; preds = %441, %108, %912, %.loopexit71, %.loopexit91, %448, %.loopexit92, %.loopexit89, %94, %90, %16, %9, %3
  %913 = phi ptr [ %1, %912 ], [ null, %3 ], [ null, %9 ], [ null, %16 ], [ null, %.loopexit71 ], [ null, %448 ], [ null, %.loopexit92 ], [ null, %90 ], [ null, %94 ], [ null, %.loopexit89 ], [ null, %.loopexit91 ], [ null, %108 ], [ null, %441 ]
  ret ptr %913
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %266, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %261

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %261

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %261

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
  br label %261

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
  br label %261

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
  br label %261

55:                                               ; preds = %45
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %57 = load i32, ptr %56, align 8, !tbaa !16
  switch i32 %57, label %261 [
    i32 0, label %58
    i32 -5, label %58
  ]

58:                                               ; preds = %55, %55
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %60 = load i32, ptr %59, align 8, !tbaa !24
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %63 = load i32, ptr %62, align 8, !tbaa !34
  br i1 %61, label %64, label %226

64:                                               ; preds = %58
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %168, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %68 = load ptr, ptr %67, align 8, !tbaa !29
  %69 = load ptr, ptr %15, align 8, !tbaa !35
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %168, label %71

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
  %91 = add nuw nsw i64 %84, 32
  %92 = icmp eq i64 %91, %82
  br i1 %92, label %93, label %83, !llvm.loop !104

93:                                               ; preds = %83
  %94 = icmp eq i64 %82, %74
  br i1 %94, label %.loopexit13, label %95

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
  br label %105

105:                                              ; preds = %105, %102
  %106 = phi i64 [ %103, %102 ], [ %110, %105 ]
  %107 = getelementptr i8, ptr %68, i64 %106
  %108 = getelementptr i8, ptr %69, i64 %106
  %109 = load <4 x i8>, ptr %108, align 1, !tbaa !36
  store <4 x i8> %109, ptr %107, align 1, !tbaa !36
  %110 = add nuw i64 %106, 4
  %111 = icmp eq i64 %110, %104
  br i1 %111, label %112, label %105, !llvm.loop !105

112:                                              ; preds = %105
  %113 = getelementptr i8, ptr %68, i64 %104
  %114 = getelementptr i8, ptr %69, i64 %104
  %115 = trunc nuw i64 %104 to i32
  %116 = sub i32 %63, %115
  %117 = icmp eq i64 %104, %74
  br i1 %117, label %.loopexit13, label %118

118:                                              ; preds = %112, %95, %71
  %119 = phi ptr [ %68, %71 ], [ %96, %95 ], [ %113, %112 ]
  %120 = phi ptr [ %69, %71 ], [ %97, %95 ], [ %114, %112 ]
  %121 = phi i32 [ %63, %71 ], [ %99, %95 ], [ %116, %112 ]
  %122 = add i32 %121, -1
  %123 = and i32 %121, 7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %.loopexit15, label %.preheader14

.preheader14:                                     ; preds = %118, %.preheader14
  %125 = phi ptr [ %129, %.preheader14 ], [ %119, %118 ]
  %126 = phi ptr [ %130, %.preheader14 ], [ %120, %118 ]
  %127 = phi i32 [ %131, %.preheader14 ], [ 0, %118 ]
  %128 = load i8, ptr %126, align 1, !tbaa !36
  store i8 %128, ptr %125, align 1, !tbaa !36
  %129 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %130 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %131 = add nuw nsw i32 %127, 1
  %132 = icmp eq i32 %131, %123
  br i1 %132, label %.loopexit15.loopexit, label %.preheader14, !llvm.loop !106

.loopexit15.loopexit:                             ; preds = %.preheader14
  %133 = and i32 %121, -8
  br label %.loopexit15

.loopexit15:                                      ; preds = %.loopexit15.loopexit, %118
  %134 = phi ptr [ %119, %118 ], [ %129, %.loopexit15.loopexit ]
  %135 = phi ptr [ %120, %118 ], [ %130, %.loopexit15.loopexit ]
  %136 = phi i32 [ %121, %118 ], [ %133, %.loopexit15.loopexit ]
  %137 = icmp ult i32 %122, 7
  br i1 %137, label %.loopexit13, label %.preheader

.preheader:                                       ; preds = %.loopexit15, %.preheader
  %138 = phi ptr [ %164, %.preheader ], [ %134, %.loopexit15 ]
  %139 = phi ptr [ %165, %.preheader ], [ %135, %.loopexit15 ]
  %140 = phi i32 [ %163, %.preheader ], [ %136, %.loopexit15 ]
  %141 = load i8, ptr %139, align 1, !tbaa !36
  store i8 %141, ptr %138, align 1, !tbaa !36
  %142 = getelementptr inbounds nuw i8, ptr %138, i64 1
  %143 = getelementptr inbounds nuw i8, ptr %139, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !36
  store i8 %144, ptr %142, align 1, !tbaa !36
  %145 = getelementptr inbounds nuw i8, ptr %138, i64 2
  %146 = getelementptr inbounds nuw i8, ptr %139, i64 2
  %147 = load i8, ptr %146, align 1, !tbaa !36
  store i8 %147, ptr %145, align 1, !tbaa !36
  %148 = getelementptr inbounds nuw i8, ptr %138, i64 3
  %149 = getelementptr inbounds nuw i8, ptr %139, i64 3
  %150 = load i8, ptr %149, align 1, !tbaa !36
  store i8 %150, ptr %148, align 1, !tbaa !36
  %151 = getelementptr inbounds nuw i8, ptr %138, i64 4
  %152 = getelementptr inbounds nuw i8, ptr %139, i64 4
  %153 = load i8, ptr %152, align 1, !tbaa !36
  store i8 %153, ptr %151, align 1, !tbaa !36
  %154 = getelementptr inbounds nuw i8, ptr %138, i64 5
  %155 = getelementptr inbounds nuw i8, ptr %139, i64 5
  %156 = load i8, ptr %155, align 1, !tbaa !36
  store i8 %156, ptr %154, align 1, !tbaa !36
  %157 = getelementptr inbounds nuw i8, ptr %138, i64 6
  %158 = getelementptr inbounds nuw i8, ptr %139, i64 6
  %159 = load i8, ptr %158, align 1, !tbaa !36
  store i8 %159, ptr %157, align 1, !tbaa !36
  %160 = getelementptr inbounds nuw i8, ptr %138, i64 7
  %161 = getelementptr inbounds nuw i8, ptr %139, i64 7
  %162 = load i8, ptr %161, align 1, !tbaa !36
  store i8 %162, ptr %160, align 1, !tbaa !36
  %163 = add i32 %140, -8
  %164 = getelementptr inbounds nuw i8, ptr %138, i64 8
  %165 = getelementptr inbounds nuw i8, ptr %139, i64 8
  %166 = icmp eq i32 %163, 0
  br i1 %166, label %.loopexit13, label %.preheader, !llvm.loop !107

.loopexit13:                                      ; preds = %.preheader, %.loopexit15, %112, %93
  %167 = load i32, ptr %62, align 8, !tbaa !34
  br label %168

168:                                              ; preds = %.loopexit13, %66, %64
  %169 = phi i32 [ %167, %.loopexit13 ], [ %63, %66 ], [ 0, %64 ]
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %171 = load i32, ptr %16, align 8, !tbaa !27
  %172 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %171, i32 %169), !nosanitize !20
  %173 = extractvalue { i32, i1 } %172, 1, !nosanitize !20
  br i1 %173, label %174, label %175, !prof !21, !nosanitize !20

174:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

175:                                              ; preds = %168
  %176 = extractvalue { i32, i1 } %172, 0, !nosanitize !20
  %177 = load ptr, ptr %170, align 8, !tbaa !29
  %178 = zext i32 %169 to i64
  %179 = getelementptr inbounds nuw i8, ptr %177, i64 %178
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %180, align 4, !tbaa !17
  %181 = tail call ptr @__errno_location() #17
  store i32 0, ptr %181, align 4, !tbaa !45
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %183

183:                                              ; preds = %202, %175
  %184 = phi i32 [ 0, %175 ], [ %203, %202 ]
  %185 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %176, i32 %184), !nosanitize !20
  %186 = extractvalue { i32, i1 } %185, 1, !nosanitize !20
  br i1 %186, label %187, label %188, !prof !21, !nosanitize !20

187:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

188:                                              ; preds = %183
  %189 = extractvalue { i32, i1 } %185, 0, !nosanitize !20
  %190 = tail call i32 @llvm.umin.i32(i32 %189, i32 1073741824)
  %191 = load i32, ptr %182, align 4, !tbaa !46
  %192 = zext i32 %184 to i64
  %193 = getelementptr inbounds nuw i8, ptr %179, i64 %192
  %194 = zext nneg i32 %190 to i64
  %195 = tail call i64 @read(i32 noundef %191, ptr noundef %193, i64 noundef %194) #13
  %196 = trunc i64 %195 to i32
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %205, label %198

198:                                              ; preds = %188
  %199 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %196), !nosanitize !20
  %200 = extractvalue { i32, i1 } %199, 1, !nosanitize !20
  br i1 %200, label %201, label %202, !prof !21, !nosanitize !20

201:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

202:                                              ; preds = %198
  %203 = extractvalue { i32, i1 } %199, 0, !nosanitize !20
  %204 = icmp ult i32 %203, %176
  br i1 %204, label %183, label %.loopexit, !llvm.loop !47

205:                                              ; preds = %188
  %206 = icmp slt i32 %196, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %205
  %208 = load i32, ptr %181, align 4, !tbaa !45
  %209 = icmp eq i32 %208, 11
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  store i32 1, ptr %180, align 4, !tbaa !17
  %211 = icmp eq i32 %184, 0
  br i1 %211, label %212, label %.loopexit

212:                                              ; preds = %210
  %213 = load i32, ptr %181, align 4, !tbaa !45
  br label %215

214:                                              ; preds = %205
  store i32 1, ptr %59, align 8, !tbaa !24
  br label %.loopexit

215:                                              ; preds = %212, %207
  %216 = phi i32 [ %213, %212 ], [ %208, %207 ]
  %217 = tail call ptr @strerror(i32 noundef %216) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %217) #13
  br label %261

.loopexit:                                        ; preds = %202, %214, %210
  %218 = phi i32 [ %184, %214 ], [ %184, %210 ], [ %203, %202 ]
  %219 = load i32, ptr %62, align 8, !tbaa !34
  %220 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %219, i32 %218), !nosanitize !20
  %221 = extractvalue { i32, i1 } %220, 1, !nosanitize !20
  br i1 %221, label %222, label %223, !prof !21, !nosanitize !20

222:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

223:                                              ; preds = %.loopexit
  %224 = extractvalue { i32, i1 } %220, 0, !nosanitize !20
  store i32 %224, ptr %62, align 8, !tbaa !34
  %225 = load ptr, ptr %170, align 8, !tbaa !29
  store ptr %225, ptr %15, align 8, !tbaa !35
  br label %226

226:                                              ; preds = %223, %58
  %227 = phi i32 [ %224, %223 ], [ %63, %58 ]
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %261, label %229

229:                                              ; preds = %226
  %230 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %231 = load i32, ptr %230, align 4, !tbaa !17
  %232 = icmp ne i32 %231, 0
  %233 = icmp ult i32 %227, 4
  %234 = and i1 %233, %232
  br i1 %234, label %261, label %235

235:                                              ; preds = %229
  %236 = icmp ugt i32 %227, 3
  %237 = load ptr, ptr %15, align 8, !tbaa !35
  br i1 %236, label %238, label %255

238:                                              ; preds = %235
  %239 = load i8, ptr %237, align 1, !tbaa !36
  %240 = icmp eq i8 %239, 31
  br i1 %240, label %241, label %255

241:                                              ; preds = %238
  %242 = getelementptr inbounds nuw i8, ptr %237, i64 1
  %243 = load i8, ptr %242, align 1, !tbaa !36
  %244 = icmp eq i8 %243, -117
  br i1 %244, label %245, label %255

245:                                              ; preds = %241
  %246 = getelementptr inbounds nuw i8, ptr %237, i64 2
  %247 = load i8, ptr %246, align 1, !tbaa !36
  %248 = icmp eq i8 %247, 8
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = getelementptr inbounds nuw i8, ptr %237, i64 3
  %251 = load i8, ptr %250, align 1, !tbaa !36
  %252 = icmp ult i8 %251, 32
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  store i32 1, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %261

255:                                              ; preds = %249, %245, %241, %238, %235
  %256 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %257 = load ptr, ptr %256, align 8, !tbaa !30
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %257, ptr %258, align 8, !tbaa !22
  %259 = zext i32 %227 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %257, ptr align 1 %237, i64 %259, i1 false)
  %260 = load i32, ptr %62, align 8, !tbaa !34
  store i32 %260, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %62, align 8, !tbaa !34
  store i32 1, ptr %8, align 8, !tbaa !26
  br label %261

261:                                              ; preds = %255, %253, %229, %226, %215, %55, %49, %38, %32, %11, %7, %3
  %262 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %263 = load i32, ptr %262, align 8, !tbaa !32
  %264 = icmp eq i32 %263, 1
  %265 = zext i1 %264 to i32
  br label %266

266:                                              ; preds = %261, %1
  %267 = phi i32 [ %265, %261 ], [ 0, %1 ]
  ret i32 %267
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
