; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_gzread.thorough.mid.ll'
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
  br i1 %4, label %1103, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1103

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
  br i1 %15, label %1103, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1103

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %.loopexit118, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %.loopexit122, label %26

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

45:                                               ; preds = %467, %26
  %46 = phi i64 [ %468, %467 ], [ %24, %26 ]
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
  br label %467

68:                                               ; preds = %45
  %69 = load i32, ptr %29, align 8, !tbaa !24
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %.preheader981, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %30, align 8, !tbaa !25
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %.loopexit122, label %.preheader981

.preheader981:                                    ; preds = %71, %68
  br label %74

74:                                               ; preds = %.backedge, %.preheader981
  %75 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %75, label %454 [
    i32 0, label %76
    i32 1, label %312
    i32 2, label %350
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
  br label %.loopexit118

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
  br label %.loopexit118

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
  br label %309

107:                                              ; preds = %99
  %108 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %108, label %.loopexit119 [
    i32 0, label %109
    i32 -5, label %109
  ]

109:                                              ; preds = %107, %107
  %110 = load i32, ptr %29, align 8, !tbaa !24
  %111 = icmp eq i32 %110, 0
  %112 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %111, label %113, label %277

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
  br i1 %142, label %.loopexit111, label %143

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
  br i1 %165, label %.loopexit111, label %166

166:                                              ; preds = %160, %143, %119
  %167 = phi ptr [ %116, %119 ], [ %144, %143 ], [ %161, %160 ]
  %168 = phi ptr [ %117, %119 ], [ %145, %143 ], [ %162, %160 ]
  %169 = phi i32 [ %112, %119 ], [ %147, %143 ], [ %164, %160 ]
  %170 = add i32 %169, -1
  %171 = and i32 %169, 7
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %.loopexit113, label %.preheader112

.preheader112:                                    ; preds = %166, %.preheader112
  %173 = phi ptr [ %177, %.preheader112 ], [ %167, %166 ]
  %174 = phi ptr [ %178, %.preheader112 ], [ %168, %166 ]
  %175 = phi i32 [ %179, %.preheader112 ], [ 0, %166 ]
  %176 = load i8, ptr %174, align 1, !tbaa !36
  store i8 %176, ptr %173, align 1, !tbaa !36
  %177 = getelementptr inbounds nuw i8, ptr %173, i64 1
  %178 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %179 = add nuw nsw i32 %175, 1
  %180 = icmp eq i32 %179, %171
  br i1 %180, label %.loopexit113.loopexit, label %.preheader112, !llvm.loop !42

.loopexit113.loopexit:                            ; preds = %.preheader112
  %181 = and i32 %169, -8
  br label %.loopexit113

.loopexit113:                                     ; preds = %.loopexit113.loopexit, %166
  %182 = phi ptr [ %167, %166 ], [ %177, %.loopexit113.loopexit ]
  %183 = phi ptr [ %168, %166 ], [ %178, %.loopexit113.loopexit ]
  %184 = phi i32 [ %169, %166 ], [ %181, %.loopexit113.loopexit ]
  %185 = icmp ult i32 %170, 7
  br i1 %185, label %.loopexit111, label %.preheader110

.preheader110:                                    ; preds = %.loopexit113, %.preheader110
  %186 = phi ptr [ %212, %.preheader110 ], [ %182, %.loopexit113 ]
  %187 = phi ptr [ %213, %.preheader110 ], [ %183, %.loopexit113 ]
  %188 = phi i32 [ %211, %.preheader110 ], [ %184, %.loopexit113 ]
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
  br i1 %214, label %.loopexit111, label %.preheader110, !llvm.loop !44

.loopexit111:                                     ; preds = %.preheader110, %.loopexit113, %160, %141
  %215 = load i32, ptr %30, align 8, !tbaa !34
  br label %216

216:                                              ; preds = %.loopexit111, %115, %113
  %217 = phi i32 [ %215, %.loopexit111 ], [ %112, %115 ], [ 0, %113 ]
  %218 = load i32, ptr %32, align 8, !tbaa !27
  %.fr82 = freeze i32 %218
  %219 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr82, i32 %217), !nosanitize !20
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
  %mv.h38 = icmp sgt i32 %.fr82, -1
  br i1 %mv.h38, label %.mv.ph40.mv.fast, label %.mv.ph40

.mv.ph40.mv.fast:                                 ; preds = %222, %238
  %228 = phi i32 [ %239, %238 ], [ 0, %222 ]
  %229 = sub i32 %223, %228
  %230 = tail call i32 @llvm.umin.i32(i32 %229, i32 1073741824)
  %231 = load i32, ptr %39, align 4, !tbaa !46
  %232 = zext i32 %228 to i64
  %233 = getelementptr inbounds nuw i8, ptr %226, i64 %232
  %234 = zext nneg i32 %230 to i64
  %235 = tail call i64 @read(i32 noundef %231, ptr noundef %233, i64 noundef %234) #13
  %236 = trunc i64 %235 to i32
  %237 = icmp slt i32 %236, 1
  br i1 %237, label %.loopexit107, label %238

238:                                              ; preds = %.mv.ph40.mv.fast
  %239 = add i32 %228, %236
  %240 = icmp ult i32 %239, %223
  br i1 %240, label %.mv.ph40.mv.fast, label %.loopexit30, !llvm.loop !47

.mv.ph40:                                         ; preds = %222, %255
  %241 = phi i32 [ %256, %255 ], [ 0, %222 ]
  %242 = sub i32 %223, %241
  %243 = tail call i32 @llvm.umin.i32(i32 %242, i32 1073741824)
  %244 = load i32, ptr %39, align 4, !tbaa !46
  %245 = zext i32 %241 to i64
  %246 = getelementptr inbounds nuw i8, ptr %226, i64 %245
  %247 = zext nneg i32 %243 to i64
  %248 = tail call i64 @read(i32 noundef %244, ptr noundef %246, i64 noundef %247) #13
  %249 = trunc i64 %248 to i32
  %250 = icmp slt i32 %249, 1
  br i1 %250, label %.loopexit107, label %251

251:                                              ; preds = %.mv.ph40
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %241, i32 %249), !nosanitize !20
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !20
  br i1 %253, label %254, label %255, !prof !21, !nosanitize !20

254:                                              ; preds = %251
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

255:                                              ; preds = %251
  %256 = extractvalue { i32, i1 } %252, 0, !nosanitize !20
  %257 = icmp ult i32 %256, %223
  br i1 %257, label %.mv.ph40, label %.loopexit30, !llvm.loop !47

.loopexit107:                                     ; preds = %.mv.ph40, %.mv.ph40.mv.fast
  %.lcssa34 = phi i32 [ %236, %.mv.ph40.mv.fast ], [ %249, %.mv.ph40 ]
  %.lcssa31 = phi i32 [ %228, %.mv.ph40.mv.fast ], [ %241, %.mv.ph40 ]
  %258 = icmp slt i32 %.lcssa34, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %.loopexit107
  %260 = load i32, ptr %227, align 4, !tbaa !45
  %261 = icmp eq i32 %260, 11
  br i1 %261, label %262, label %.loopexit120

262:                                              ; preds = %259
  store i32 1, ptr %38, align 4, !tbaa !17
  %263 = icmp eq i32 %.lcssa31, 0
  br i1 %263, label %264, label %.loopexit30

264:                                              ; preds = %262
  %265 = load i32, ptr %227, align 4, !tbaa !45
  br label %.loopexit120

266:                                              ; preds = %.loopexit107
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit30

.loopexit120:                                     ; preds = %259, %264
  %267 = phi i32 [ %265, %264 ], [ %260, %259 ]
  %268 = tail call ptr @strerror(i32 noundef %267) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %268) #13
  br label %.loopexit118

.loopexit30:                                      ; preds = %255, %238, %266, %262
  %269 = phi i32 [ %.lcssa31, %266 ], [ %.lcssa31, %262 ], [ %239, %238 ], [ %256, %255 ]
  %270 = load i32, ptr %30, align 8, !tbaa !34
  %271 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %270, i32 %269), !nosanitize !20
  %272 = extractvalue { i32, i1 } %271, 1, !nosanitize !20
  br i1 %272, label %273, label %274, !prof !21, !nosanitize !20

273:                                              ; preds = %.loopexit30
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

274:                                              ; preds = %.loopexit30
  %275 = extractvalue { i32, i1 } %271, 0, !nosanitize !20
  store i32 %275, ptr %30, align 8, !tbaa !34
  %276 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %276, ptr %36, align 8, !tbaa !35
  br label %277

277:                                              ; preds = %274, %109
  %278 = phi i32 [ %275, %274 ], [ %112, %109 ]
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %309, label %280

280:                                              ; preds = %277
  %281 = load i32, ptr %38, align 4, !tbaa !17
  %282 = icmp ne i32 %281, 0
  %283 = icmp ult i32 %278, 4
  %284 = and i1 %283, %282
  br i1 %284, label %309, label %285

285:                                              ; preds = %280
  %286 = icmp ugt i32 %278, 3
  %287 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %286, label %288, label %305

288:                                              ; preds = %285
  %289 = load i8, ptr %287, align 1, !tbaa !36
  %290 = icmp eq i8 %289, 31
  br i1 %290, label %291, label %305

291:                                              ; preds = %288
  %292 = getelementptr inbounds nuw i8, ptr %287, i64 1
  %293 = load i8, ptr %292, align 1, !tbaa !36
  %294 = icmp eq i8 %293, -117
  br i1 %294, label %295, label %305

295:                                              ; preds = %291
  %296 = getelementptr inbounds nuw i8, ptr %287, i64 2
  %297 = load i8, ptr %296, align 1, !tbaa !36
  %298 = icmp eq i8 %297, 8
  br i1 %298, label %299, label %305

299:                                              ; preds = %295
  %300 = getelementptr inbounds nuw i8, ptr %287, i64 3
  %301 = load i8, ptr %300, align 1, !tbaa !36
  %302 = icmp ult i8 %301, 32
  br i1 %302, label %303, label %305

303:                                              ; preds = %299
  %304 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %455

305:                                              ; preds = %299, %295, %291, %288, %285
  %306 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %306, ptr %27, align 8, !tbaa !22
  %307 = zext i32 %278 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %306, ptr align 1 %287, i64 %307, i1 false)
  %308 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %308, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %457

309:                                              ; preds = %280, %277, %102
  %310 = load i32, ptr %31, align 8, !tbaa !26
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %.loopexit121, label %455

312:                                              ; preds = %74
  %313 = load ptr, ptr %34, align 8, !tbaa !30
  %314 = load i32, ptr %32, align 8, !tbaa !27
  %315 = shl i32 %314, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %316 = tail call ptr @__errno_location() #17
  store i32 0, ptr %316, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %317

317:                                              ; preds = %333, %312
  %318 = phi i32 [ %334, %333 ], [ 0, %312 ]
  %319 = sub i32 %315, %318
  %320 = tail call i32 @llvm.umin.i32(i32 %319, i32 1073741824)
  %321 = load i32, ptr %39, align 4, !tbaa !46
  %322 = zext i32 %318 to i64
  %323 = getelementptr inbounds nuw i8, ptr %313, i64 %322
  %324 = zext nneg i32 %320 to i64
  %325 = tail call i64 @read(i32 noundef %321, ptr noundef %323, i64 noundef %324) #13
  %326 = trunc i64 %325 to i32
  %327 = icmp slt i32 %326, 1
  br i1 %327, label %336, label %328

328:                                              ; preds = %317
  %329 = load i32, ptr %0, align 4, !tbaa !45
  %330 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %329, i32 %326), !nosanitize !20
  %331 = extractvalue { i32, i1 } %330, 1, !nosanitize !20
  br i1 %331, label %332, label %333, !prof !21, !nosanitize !20

332:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

333:                                              ; preds = %328
  %334 = extractvalue { i32, i1 } %330, 0, !nosanitize !20
  store i32 %334, ptr %0, align 4, !tbaa !45
  %335 = icmp ult i32 %334, %315
  br i1 %335, label %317, label %.loopexit117, !llvm.loop !47

336:                                              ; preds = %317
  %337 = icmp slt i32 %326, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %336
  %339 = load i32, ptr %316, align 4, !tbaa !45
  %340 = icmp eq i32 %339, 11
  br i1 %340, label %341, label %.loopexit123

341:                                              ; preds = %338
  store i32 1, ptr %38, align 4, !tbaa !17
  %342 = load i32, ptr %0, align 4, !tbaa !45
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %.loopexit117

344:                                              ; preds = %341
  %345 = load i32, ptr %316, align 4, !tbaa !45
  br label %.loopexit123

346:                                              ; preds = %336
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit117

.loopexit123:                                     ; preds = %338, %344
  %347 = phi i32 [ %345, %344 ], [ %339, %338 ]
  %348 = tail call ptr @strerror(i32 noundef %347) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %348) #13
  br label %.loopexit118

.loopexit117:                                     ; preds = %333, %346, %341
  %349 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %349, ptr %27, align 8, !tbaa !22
  br label %.loopexit121

350:                                              ; preds = %74
  %351 = load i32, ptr %32, align 8, !tbaa !27
  %352 = shl i32 %351, 1
  store i32 %352, ptr %33, align 8, !tbaa !48
  %353 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %353, ptr %35, align 8, !tbaa !49
  br label %354

354:                                              ; preds = %438, %350
  %355 = phi i32 [ 0, %350 ], [ %423, %438 ]
  %356 = load i32, ptr %30, align 8, !tbaa !34
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %422

358:                                              ; preds = %354
  %359 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %359, label %.loopexit114 [
    i32 0, label %360
    i32 -5, label %360
  ]

360:                                              ; preds = %358, %358
  %361 = load i32, ptr %29, align 8, !tbaa !24
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %418

363:                                              ; preds = %360
  %364 = load i32, ptr %32, align 8, !tbaa !27
  %.fr = freeze i32 %364
  %365 = load ptr, ptr %37, align 8, !tbaa !29
  store i32 0, ptr %38, align 4, !tbaa !17
  %366 = tail call ptr @__errno_location() #17
  store i32 0, ptr %366, align 4, !tbaa !45
  %mv.h16 = icmp sgt i32 %.fr, -1
  br i1 %mv.h16, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %363, %377
  %367 = phi i32 [ %378, %377 ], [ 0, %363 ]
  %368 = sub nsw i32 %.fr, %367
  %369 = tail call i32 @llvm.umin.i32(i32 %368, i32 1073741824)
  %370 = load i32, ptr %39, align 4, !tbaa !46
  %371 = zext nneg i32 %367 to i64
  %372 = getelementptr inbounds nuw i8, ptr %365, i64 %371
  %373 = zext nneg i32 %369 to i64
  %374 = tail call i64 @read(i32 noundef %370, ptr noundef %372, i64 noundef %373) #13
  %375 = trunc i64 %374 to i32
  %376 = icmp slt i32 %375, 1
  br i1 %376, label %.loopexit104, label %377

377:                                              ; preds = %.mv.ph18.mv.fast
  %378 = add nuw i32 %367, %375
  %379 = icmp ult i32 %378, %.fr
  br i1 %379, label %.mv.ph18.mv.fast, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %363, %394
  %380 = phi i32 [ %395, %394 ], [ 0, %363 ]
  %381 = sub i32 %.fr, %380
  %382 = tail call i32 @llvm.umin.i32(i32 %381, i32 1073741824)
  %383 = load i32, ptr %39, align 4, !tbaa !46
  %384 = zext i32 %380 to i64
  %385 = getelementptr inbounds nuw i8, ptr %365, i64 %384
  %386 = zext nneg i32 %382 to i64
  %387 = tail call i64 @read(i32 noundef %383, ptr noundef %385, i64 noundef %386) #13
  %388 = trunc i64 %387 to i32
  %389 = icmp slt i32 %388, 1
  br i1 %389, label %.loopexit104, label %390

390:                                              ; preds = %.mv.ph18
  %391 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %380, i32 %388), !nosanitize !20
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !20
  br i1 %392, label %393, label %394, !prof !21, !nosanitize !20

393:                                              ; preds = %390
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

394:                                              ; preds = %390
  %395 = extractvalue { i32, i1 } %391, 0, !nosanitize !20
  %396 = icmp ult i32 %395, %.fr
  br i1 %396, label %.mv.ph18, label %.loopexit8, !llvm.loop !47

.loopexit104:                                     ; preds = %.mv.ph18, %.mv.ph18.mv.fast
  %.lcssa12 = phi i32 [ %375, %.mv.ph18.mv.fast ], [ %388, %.mv.ph18 ]
  %.lcssa9 = phi i32 [ %367, %.mv.ph18.mv.fast ], [ %380, %.mv.ph18 ]
  %397 = icmp slt i32 %.lcssa12, 0
  br i1 %397, label %398, label %405

398:                                              ; preds = %.loopexit104
  %399 = load i32, ptr %366, align 4, !tbaa !45
  %400 = icmp eq i32 %399, 11
  br i1 %400, label %401, label %.loopexit116

401:                                              ; preds = %398
  store i32 1, ptr %38, align 4, !tbaa !17
  %402 = icmp eq i32 %.lcssa9, 0
  br i1 %402, label %403, label %.loopexit8

403:                                              ; preds = %401
  %404 = load i32, ptr %366, align 4, !tbaa !45
  br label %.loopexit116

405:                                              ; preds = %.loopexit104
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit8

.loopexit116:                                     ; preds = %398, %403
  %406 = phi i32 [ %404, %403 ], [ %399, %398 ]
  %407 = tail call ptr @strerror(i32 noundef %406) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %407) #13
  %408 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit114

.loopexit8:                                       ; preds = %394, %377, %405, %401
  %409 = phi i32 [ %.lcssa9, %405 ], [ %.lcssa9, %401 ], [ %378, %377 ], [ %395, %394 ]
  %410 = load i32, ptr %30, align 8, !tbaa !34
  %411 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %410, i32 %409), !nosanitize !20
  %412 = extractvalue { i32, i1 } %411, 1, !nosanitize !20
  br i1 %412, label %413, label %414, !prof !21, !nosanitize !20

413:                                              ; preds = %.loopexit8
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

414:                                              ; preds = %.loopexit8
  %415 = extractvalue { i32, i1 } %411, 0, !nosanitize !20
  store i32 %415, ptr %30, align 8, !tbaa !34
  %416 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %416, ptr %36, align 8, !tbaa !35
  %417 = icmp eq i32 %415, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %414, %360
  %419 = load i32, ptr %38, align 4, !tbaa !17
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %.loopexit114

421:                                              ; preds = %418
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit114

422:                                              ; preds = %414, %354
  %423 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %424 = load i32, ptr %33, align 8, !tbaa !48
  %425 = icmp ult i32 %424, %352
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit114

429:                                              ; preds = %427
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit114

430:                                              ; preds = %427
  %431 = load i32, ptr %40, align 4, !tbaa !33
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %.loopexit114

434:                                              ; preds = %430
  %435 = load ptr, ptr %41, align 8, !tbaa !50
  %436 = icmp eq ptr %435, null
  %437 = select i1 %436, ptr @.str.6, ptr %435
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %437) #13
  br label %.loopexit114

438:                                              ; preds = %427
  %439 = icmp ne i32 %424, 0
  %440 = icmp ne i32 %423, 1
  %441 = select i1 %439, i1 %440, i1 false
  br i1 %441, label %354, label %.loopexit114, !llvm.loop !51

.loopexit114:                                     ; preds = %438, %358, %434, %433, %429, %428, %421, %418, %.loopexit116
  %442 = phi i32 [ %355, %418 ], [ %355, %421 ], [ %423, %428 ], [ -4, %429 ], [ 0, %433 ], [ -3, %434 ], [ %408, %.loopexit116 ], [ %359, %358 ], [ %423, %438 ]
  %443 = load i32, ptr %33, align 8, !tbaa !48
  %444 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %352, i32 %443), !nosanitize !20
  %445 = extractvalue { i32, i1 } %444, 1, !nosanitize !20
  br i1 %445, label %446, label %447, !prof !21, !nosanitize !20

446:                                              ; preds = %.loopexit114
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

447:                                              ; preds = %.loopexit114
  %448 = extractvalue { i32, i1 } %444, 0, !nosanitize !20
  store i32 %448, ptr %0, align 8, !tbaa !19
  %449 = load ptr, ptr %35, align 8, !tbaa !49
  %450 = zext i32 %448 to i64
  %451 = sub nsw i64 0, %450
  %452 = getelementptr inbounds i8, ptr %449, i64 %451
  store ptr %452, ptr %27, align 8, !tbaa !22
  switch i32 %442, label %.loopexit118 [
    i32 1, label %453
    i32 0, label %455
  ]

453:                                              ; preds = %447
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %455

454:                                              ; preds = %74
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit118

455:                                              ; preds = %453, %447, %309, %303
  %456 = load i32, ptr %0, align 8, !tbaa !19
  br label %457

457:                                              ; preds = %455, %305
  %458 = phi i32 [ %456, %455 ], [ %308, %305 ]
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %.loopexit121

460:                                              ; preds = %457
  %461 = load i32, ptr %29, align 8, !tbaa !24
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %.backedge, label %463

463:                                              ; preds = %460
  %464 = load i32, ptr %30, align 8, !tbaa !34
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %.loopexit121, label %.backedge

.backedge:                                        ; preds = %463, %460
  br label %74, !llvm.loop !52

.loopexit121:                                     ; preds = %463, %457, %309, %.loopexit117
  %466 = load i64, ptr %23, align 8, !tbaa !18
  br label %467

467:                                              ; preds = %.loopexit121, %65
  %468 = phi i64 [ %466, %.loopexit121 ], [ %67, %65 ]
  %469 = icmp eq i64 %468, 0
  br i1 %469, label %.loopexit122, label %45, !llvm.loop !53

.loopexit122:                                     ; preds = %467, %71, %22
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %488

488:                                              ; preds = %.loopexit100, %.loopexit122
  %489 = phi ptr [ %1, %.loopexit122 ], [ %1074, %.loopexit100 ]
  %490 = phi i64 [ %20, %.loopexit122 ], [ %1075, %.loopexit100 ]
  %491 = phi i64 [ 0, %.loopexit122 ], [ %1076, %.loopexit100 ]
  %492 = tail call i64 @llvm.umin.i64(i64 %490, i64 4294967295)
  %493 = trunc nuw i64 %492 to i32
  %494 = load i32, ptr %0, align 8, !tbaa !19
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %511, label %496

496:                                              ; preds = %488
  %497 = tail call i32 @llvm.umin.i32(i32 %494, i32 %493)
  %498 = load ptr, ptr %470, align 8, !tbaa !22
  %499 = zext i32 %497 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %489, ptr align 1 %498, i64 %499, i1 false)
  %500 = load ptr, ptr %470, align 8, !tbaa !22
  %501 = getelementptr inbounds nuw i8, ptr %500, i64 %499
  store ptr %501, ptr %470, align 8, !tbaa !22
  %502 = load i32, ptr %0, align 8, !tbaa !19
  %503 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %502, i32 %497), !nosanitize !20
  %504 = extractvalue { i32, i1 } %503, 1, !nosanitize !20
  br i1 %504, label %505, label %506, !prof !21, !nosanitize !20

505:                                              ; preds = %496
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

506:                                              ; preds = %496
  %507 = extractvalue { i32, i1 } %503, 0, !nosanitize !20
  store i32 %507, ptr %0, align 8, !tbaa !19
  %508 = load i32, ptr %10, align 8, !tbaa !16
  %509 = icmp ne i32 %508, 0
  %510 = sext i1 %509 to i32
  br label %1055

511:                                              ; preds = %488
  %512 = load i32, ptr %471, align 8, !tbaa !24
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %517, label %514

514:                                              ; preds = %511
  %515 = load i32, ptr %472, align 8, !tbaa !25
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %1081, label %517

517:                                              ; preds = %514, %511
  %518 = load i32, ptr %473, align 8, !tbaa !26
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %.preheader883, label %520

520:                                              ; preds = %517
  %521 = load i32, ptr %474, align 8, !tbaa !27
  %522 = shl i32 %521, 1
  %523 = icmp ugt i32 %522, %493
  br i1 %523, label %.preheader883, label %911

.preheader883:                                    ; preds = %520, %517
  br label %524

524:                                              ; preds = %.preheader883, %906
  %525 = phi i32 [ %907, %906 ], [ %518, %.preheader883 ]
  switch i32 %525, label %894 [
    i32 0, label %526
    i32 1, label %751
    i32 2, label %790
  ]

526:                                              ; preds = %524
  %527 = load i32, ptr %474, align 8, !tbaa !27
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %546

529:                                              ; preds = %526
  %530 = load i32, ptr %485, align 4, !tbaa !28
  %531 = zext i32 %530 to i64
  %532 = tail call noalias ptr @malloc(i64 noundef %531) #16
  store ptr %532, ptr %478, align 8, !tbaa !29
  %533 = shl i32 %530, 1
  %534 = zext i32 %533 to i64
  %535 = tail call noalias ptr @malloc(i64 noundef %534) #16
  store ptr %535, ptr %484, align 8, !tbaa !30
  %536 = icmp eq ptr %532, null
  %537 = icmp eq ptr %535, null
  %538 = or i1 %536, %537
  br i1 %538, label %539, label %540

539:                                              ; preds = %529
  tail call void @free(ptr noundef %535) #13
  tail call void @free(ptr noundef %532) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit98

540:                                              ; preds = %529
  store i32 %530, ptr %474, align 8, !tbaa !27
  store i32 0, ptr %472, align 8, !tbaa !25
  store ptr null, ptr %477, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %486, i8 0, i64 24, i1 false)
  %541 = tail call i32 @inflateInit2_(ptr noundef nonnull %477, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %546, label %543

543:                                              ; preds = %540
  %544 = load ptr, ptr %484, align 8, !tbaa !30
  tail call void @free(ptr noundef %544) #13
  %545 = load ptr, ptr %478, align 8, !tbaa !29
  tail call void @free(ptr noundef %545) #13
  store i32 0, ptr %474, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit98

546:                                              ; preds = %540, %526
  %547 = load i32, ptr %487, align 8, !tbaa !32
  %548 = icmp eq i32 %547, -1
  br i1 %548, label %552, label %549

549:                                              ; preds = %546
  %550 = load i32, ptr %481, align 4, !tbaa !33
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %557

552:                                              ; preds = %549, %546
  %553 = tail call i32 @inflateReset(ptr noundef nonnull %477) #13
  store i32 2, ptr %473, align 8, !tbaa !26
  %554 = load i32, ptr %481, align 4, !tbaa !33
  %555 = icmp ne i32 %554, -1
  %556 = zext i1 %555 to i32
  store i32 %556, ptr %481, align 4, !tbaa !33
  store i32 0, ptr %487, align 8, !tbaa !32
  br label %748

557:                                              ; preds = %549
  %558 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %558, label %.loopexit98 [
    i32 0, label %559
    i32 -5, label %559
  ]

559:                                              ; preds = %557, %557
  %560 = load i32, ptr %471, align 8, !tbaa !24
  %561 = icmp eq i32 %560, 0
  %562 = load i32, ptr %472, align 8, !tbaa !34
  br i1 %561, label %563, label %716

563:                                              ; preds = %559
  %564 = icmp eq i32 %562, 0
  br i1 %564, label %666, label %565

565:                                              ; preds = %563
  %566 = load ptr, ptr %478, align 8, !tbaa !29
  %567 = load ptr, ptr %477, align 8, !tbaa !35
  %568 = icmp eq ptr %567, %566
  br i1 %568, label %666, label %569

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
  %589 = add nuw nsw i64 %582, 32
  %590 = icmp eq i64 %589, %580
  br i1 %590, label %591, label %581, !llvm.loop !54

591:                                              ; preds = %581
  %592 = icmp eq i64 %580, %572
  br i1 %592, label %.loopexit89, label %593

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
  br label %603

603:                                              ; preds = %603, %600
  %604 = phi i64 [ %601, %600 ], [ %608, %603 ]
  %605 = getelementptr i8, ptr %566, i64 %604
  %606 = getelementptr i8, ptr %567, i64 %604
  %607 = load <4 x i8>, ptr %606, align 1, !tbaa !36
  store <4 x i8> %607, ptr %605, align 1, !tbaa !36
  %608 = add nuw i64 %604, 4
  %609 = icmp eq i64 %608, %602
  br i1 %609, label %610, label %603, !llvm.loop !55

610:                                              ; preds = %603
  %611 = getelementptr i8, ptr %566, i64 %602
  %612 = getelementptr i8, ptr %567, i64 %602
  %613 = trunc nuw i64 %602 to i32
  %614 = sub i32 %562, %613
  %615 = icmp eq i64 %602, %572
  br i1 %615, label %.loopexit89, label %616

616:                                              ; preds = %610, %593, %569
  %617 = phi ptr [ %566, %569 ], [ %594, %593 ], [ %611, %610 ]
  %618 = phi ptr [ %567, %569 ], [ %595, %593 ], [ %612, %610 ]
  %619 = phi i32 [ %562, %569 ], [ %597, %593 ], [ %614, %610 ]
  %620 = add i32 %619, -1
  %621 = and i32 %619, 7
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %.loopexit91, label %.preheader90

.preheader90:                                     ; preds = %616, %.preheader90
  %623 = phi ptr [ %627, %.preheader90 ], [ %617, %616 ]
  %624 = phi ptr [ %628, %.preheader90 ], [ %618, %616 ]
  %625 = phi i32 [ %629, %.preheader90 ], [ 0, %616 ]
  %626 = load i8, ptr %624, align 1, !tbaa !36
  store i8 %626, ptr %623, align 1, !tbaa !36
  %627 = getelementptr inbounds nuw i8, ptr %623, i64 1
  %628 = getelementptr inbounds nuw i8, ptr %624, i64 1
  %629 = add nuw nsw i32 %625, 1
  %630 = icmp eq i32 %629, %621
  br i1 %630, label %.loopexit91.loopexit, label %.preheader90, !llvm.loop !56

.loopexit91.loopexit:                             ; preds = %.preheader90
  %631 = and i32 %619, -8
  br label %.loopexit91

.loopexit91:                                      ; preds = %.loopexit91.loopexit, %616
  %632 = phi ptr [ %617, %616 ], [ %627, %.loopexit91.loopexit ]
  %633 = phi ptr [ %618, %616 ], [ %628, %.loopexit91.loopexit ]
  %634 = phi i32 [ %619, %616 ], [ %631, %.loopexit91.loopexit ]
  %635 = icmp ult i32 %620, 7
  br i1 %635, label %.loopexit89, label %.preheader

.preheader:                                       ; preds = %.loopexit91, %.preheader
  %636 = phi ptr [ %662, %.preheader ], [ %632, %.loopexit91 ]
  %637 = phi ptr [ %663, %.preheader ], [ %633, %.loopexit91 ]
  %638 = phi i32 [ %661, %.preheader ], [ %634, %.loopexit91 ]
  %639 = load i8, ptr %637, align 1, !tbaa !36
  store i8 %639, ptr %636, align 1, !tbaa !36
  %640 = getelementptr inbounds nuw i8, ptr %636, i64 1
  %641 = getelementptr inbounds nuw i8, ptr %637, i64 1
  %642 = load i8, ptr %641, align 1, !tbaa !36
  store i8 %642, ptr %640, align 1, !tbaa !36
  %643 = getelementptr inbounds nuw i8, ptr %636, i64 2
  %644 = getelementptr inbounds nuw i8, ptr %637, i64 2
  %645 = load i8, ptr %644, align 1, !tbaa !36
  store i8 %645, ptr %643, align 1, !tbaa !36
  %646 = getelementptr inbounds nuw i8, ptr %636, i64 3
  %647 = getelementptr inbounds nuw i8, ptr %637, i64 3
  %648 = load i8, ptr %647, align 1, !tbaa !36
  store i8 %648, ptr %646, align 1, !tbaa !36
  %649 = getelementptr inbounds nuw i8, ptr %636, i64 4
  %650 = getelementptr inbounds nuw i8, ptr %637, i64 4
  %651 = load i8, ptr %650, align 1, !tbaa !36
  store i8 %651, ptr %649, align 1, !tbaa !36
  %652 = getelementptr inbounds nuw i8, ptr %636, i64 5
  %653 = getelementptr inbounds nuw i8, ptr %637, i64 5
  %654 = load i8, ptr %653, align 1, !tbaa !36
  store i8 %654, ptr %652, align 1, !tbaa !36
  %655 = getelementptr inbounds nuw i8, ptr %636, i64 6
  %656 = getelementptr inbounds nuw i8, ptr %637, i64 6
  %657 = load i8, ptr %656, align 1, !tbaa !36
  store i8 %657, ptr %655, align 1, !tbaa !36
  %658 = getelementptr inbounds nuw i8, ptr %636, i64 7
  %659 = getelementptr inbounds nuw i8, ptr %637, i64 7
  %660 = load i8, ptr %659, align 1, !tbaa !36
  store i8 %660, ptr %658, align 1, !tbaa !36
  %661 = add i32 %638, -8
  %662 = getelementptr inbounds nuw i8, ptr %636, i64 8
  %663 = getelementptr inbounds nuw i8, ptr %637, i64 8
  %664 = icmp eq i32 %661, 0
  br i1 %664, label %.loopexit89, label %.preheader, !llvm.loop !57

.loopexit89:                                      ; preds = %.preheader, %.loopexit91, %610, %591
  %665 = load i32, ptr %472, align 8, !tbaa !34
  br label %666

666:                                              ; preds = %.loopexit89, %565, %563
  %667 = phi i32 [ %665, %.loopexit89 ], [ %562, %565 ], [ 0, %563 ]
  %668 = load i32, ptr %474, align 8, !tbaa !27
  %669 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %668, i32 %667), !nosanitize !20
  %670 = extractvalue { i32, i1 } %669, 1, !nosanitize !20
  br i1 %670, label %671, label %672, !prof !21, !nosanitize !20

671:                                              ; preds = %666
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

672:                                              ; preds = %666
  %673 = extractvalue { i32, i1 } %669, 0, !nosanitize !20
  %674 = load ptr, ptr %478, align 8, !tbaa !29
  %675 = zext i32 %667 to i64
  %676 = getelementptr inbounds nuw i8, ptr %674, i64 %675
  store i32 0, ptr %479, align 4, !tbaa !17
  %677 = tail call ptr @__errno_location() #17
  store i32 0, ptr %677, align 4, !tbaa !45
  br label %678

678:                                              ; preds = %693, %672
  %679 = phi i32 [ 0, %672 ], [ %694, %693 ]
  %680 = sub i32 %673, %679
  %681 = tail call i32 @llvm.umin.i32(i32 %680, i32 1073741824)
  %682 = load i32, ptr %480, align 4, !tbaa !46
  %683 = zext i32 %679 to i64
  %684 = getelementptr inbounds nuw i8, ptr %676, i64 %683
  %685 = zext nneg i32 %681 to i64
  %686 = tail call i64 @read(i32 noundef %682, ptr noundef %684, i64 noundef %685) #13
  %687 = trunc i64 %686 to i32
  %688 = icmp slt i32 %687, 1
  br i1 %688, label %696, label %689

689:                                              ; preds = %678
  %690 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %679, i32 %687), !nosanitize !20
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !20
  br i1 %691, label %692, label %693, !prof !21, !nosanitize !20

692:                                              ; preds = %689
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

693:                                              ; preds = %689
  %694 = extractvalue { i32, i1 } %690, 0, !nosanitize !20
  %695 = icmp ult i32 %694, %673
  br i1 %695, label %678, label %.loopexit88, !llvm.loop !47

696:                                              ; preds = %678
  %697 = icmp slt i32 %687, 0
  br i1 %697, label %698, label %705

698:                                              ; preds = %696
  %699 = load i32, ptr %677, align 4, !tbaa !45
  %700 = icmp eq i32 %699, 11
  br i1 %700, label %701, label %.loopexit99

701:                                              ; preds = %698
  store i32 1, ptr %479, align 4, !tbaa !17
  %702 = icmp eq i32 %679, 0
  br i1 %702, label %703, label %.loopexit88

703:                                              ; preds = %701
  %704 = load i32, ptr %677, align 4, !tbaa !45
  br label %.loopexit99

705:                                              ; preds = %696
  store i32 1, ptr %471, align 8, !tbaa !24
  br label %.loopexit88

.loopexit99:                                      ; preds = %698, %703
  %706 = phi i32 [ %704, %703 ], [ %699, %698 ]
  %707 = tail call ptr @strerror(i32 noundef %706) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %707) #13
  br label %.loopexit98

.loopexit88:                                      ; preds = %693, %705, %701
  %708 = phi i32 [ %679, %705 ], [ %679, %701 ], [ %694, %693 ]
  %709 = load i32, ptr %472, align 8, !tbaa !34
  %710 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %709, i32 %708), !nosanitize !20
  %711 = extractvalue { i32, i1 } %710, 1, !nosanitize !20
  br i1 %711, label %712, label %713, !prof !21, !nosanitize !20

712:                                              ; preds = %.loopexit88
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

713:                                              ; preds = %.loopexit88
  %714 = extractvalue { i32, i1 } %710, 0, !nosanitize !20
  store i32 %714, ptr %472, align 8, !tbaa !34
  %715 = load ptr, ptr %478, align 8, !tbaa !29
  store ptr %715, ptr %477, align 8, !tbaa !35
  br label %716

716:                                              ; preds = %713, %559
  %717 = phi i32 [ %714, %713 ], [ %562, %559 ]
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %748, label %719

719:                                              ; preds = %716
  %720 = load i32, ptr %479, align 4, !tbaa !17
  %721 = icmp ne i32 %720, 0
  %722 = icmp ult i32 %717, 4
  %723 = and i1 %722, %721
  br i1 %723, label %748, label %724

724:                                              ; preds = %719
  %725 = icmp ugt i32 %717, 3
  %726 = load ptr, ptr %477, align 8, !tbaa !35
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
  %743 = tail call i32 @inflateReset(ptr noundef nonnull %477) #13
  store i32 2, ptr %473, align 8, !tbaa !26
  store i32 1, ptr %481, align 4, !tbaa !33
  store i32 0, ptr %487, align 8, !tbaa !32
  br label %895

744:                                              ; preds = %738, %734, %730, %727, %724
  %745 = load ptr, ptr %484, align 8, !tbaa !30
  store ptr %745, ptr %470, align 8, !tbaa !22
  %746 = zext i32 %717 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %745, ptr align 1 %726, i64 %746, i1 false)
  %747 = load i32, ptr %472, align 8, !tbaa !34
  store i32 %747, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %472, align 8, !tbaa !34
  store i32 1, ptr %473, align 8, !tbaa !26
  br label %897

748:                                              ; preds = %719, %716, %552
  %749 = load i32, ptr %473, align 8, !tbaa !26
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %.loopexit100, label %895

751:                                              ; preds = %524
  %752 = load ptr, ptr %484, align 8, !tbaa !30
  %753 = load i32, ptr %474, align 8, !tbaa !27
  %754 = shl i32 %753, 1
  store i32 0, ptr %479, align 4, !tbaa !17
  %755 = tail call ptr @__errno_location() #17
  store i32 0, ptr %755, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %756

756:                                              ; preds = %772, %751
  %757 = phi i32 [ %773, %772 ], [ 0, %751 ]
  %758 = sub i32 %754, %757
  %759 = tail call i32 @llvm.umin.i32(i32 %758, i32 1073741824)
  %760 = load i32, ptr %480, align 4, !tbaa !46
  %761 = zext i32 %757 to i64
  %762 = getelementptr inbounds nuw i8, ptr %752, i64 %761
  %763 = zext nneg i32 %759 to i64
  %764 = tail call i64 @read(i32 noundef %760, ptr noundef %762, i64 noundef %763) #13
  %765 = trunc i64 %764 to i32
  %766 = icmp slt i32 %765, 1
  br i1 %766, label %775, label %767

767:                                              ; preds = %756
  %768 = load i32, ptr %0, align 4, !tbaa !45
  %769 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %768, i32 %765), !nosanitize !20
  %770 = extractvalue { i32, i1 } %769, 1, !nosanitize !20
  br i1 %770, label %771, label %772, !prof !21, !nosanitize !20

771:                                              ; preds = %767
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

772:                                              ; preds = %767
  %773 = extractvalue { i32, i1 } %769, 0, !nosanitize !20
  store i32 %773, ptr %0, align 4, !tbaa !45
  %774 = icmp ult i32 %773, %754
  br i1 %774, label %756, label %.loopexit97, !llvm.loop !47

775:                                              ; preds = %756
  %776 = icmp slt i32 %765, 0
  br i1 %776, label %777, label %785

777:                                              ; preds = %775
  %778 = load i32, ptr %755, align 4, !tbaa !45
  %779 = icmp eq i32 %778, 11
  br i1 %779, label %780, label %786

780:                                              ; preds = %777
  store i32 1, ptr %479, align 4, !tbaa !17
  %781 = load i32, ptr %0, align 4, !tbaa !45
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %.loopexit97

783:                                              ; preds = %780
  %784 = load i32, ptr %755, align 4, !tbaa !45
  br label %786

785:                                              ; preds = %775
  store i32 1, ptr %471, align 8, !tbaa !24
  br label %.loopexit97

786:                                              ; preds = %783, %777
  %787 = phi i32 [ %784, %783 ], [ %778, %777 ]
  %788 = tail call ptr @strerror(i32 noundef %787) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %788) #13
  br label %.loopexit98

.loopexit97:                                      ; preds = %772, %785, %780
  %789 = load ptr, ptr %484, align 8, !tbaa !30
  store ptr %789, ptr %470, align 8, !tbaa !22
  br label %.loopexit100

790:                                              ; preds = %524
  %791 = load i32, ptr %474, align 8, !tbaa !27
  %792 = shl i32 %791, 1
  store i32 %792, ptr %475, align 8, !tbaa !48
  %793 = load ptr, ptr %484, align 8, !tbaa !30
  store ptr %793, ptr %476, align 8, !tbaa !49
  br label %794

794:                                              ; preds = %878, %790
  %795 = phi i32 [ 0, %790 ], [ %863, %878 ]
  %796 = load i32, ptr %472, align 8, !tbaa !34
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %862

798:                                              ; preds = %794
  %799 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %799, label %.loopexit92 [
    i32 0, label %800
    i32 -5, label %800
  ]

800:                                              ; preds = %798, %798
  %801 = load i32, ptr %471, align 8, !tbaa !24
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %858

803:                                              ; preds = %800
  %804 = load i32, ptr %474, align 8, !tbaa !27
  %.fr84 = freeze i32 %804
  %805 = load ptr, ptr %478, align 8, !tbaa !29
  store i32 0, ptr %479, align 4, !tbaa !17
  %806 = tail call ptr @__errno_location() #17
  store i32 0, ptr %806, align 4, !tbaa !45
  %mv.h = icmp sgt i32 %.fr84, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %803, %817
  %807 = phi i32 [ %818, %817 ], [ 0, %803 ]
  %808 = sub nsw i32 %.fr84, %807
  %809 = tail call i32 @llvm.umin.i32(i32 %808, i32 1073741824)
  %810 = load i32, ptr %480, align 4, !tbaa !46
  %811 = zext nneg i32 %807 to i64
  %812 = getelementptr inbounds nuw i8, ptr %805, i64 %811
  %813 = zext nneg i32 %809 to i64
  %814 = tail call i64 @read(i32 noundef %810, ptr noundef %812, i64 noundef %813) #13
  %815 = trunc i64 %814 to i32
  %816 = icmp slt i32 %815, 1
  br i1 %816, label %.loopexit85, label %817

817:                                              ; preds = %.mv.ph.mv.fast
  %818 = add nuw i32 %807, %815
  %819 = icmp ult i32 %818, %.fr84
  br i1 %819, label %.mv.ph.mv.fast, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %803, %834
  %820 = phi i32 [ %835, %834 ], [ 0, %803 ]
  %821 = sub i32 %.fr84, %820
  %822 = tail call i32 @llvm.umin.i32(i32 %821, i32 1073741824)
  %823 = load i32, ptr %480, align 4, !tbaa !46
  %824 = zext i32 %820 to i64
  %825 = getelementptr inbounds nuw i8, ptr %805, i64 %824
  %826 = zext nneg i32 %822 to i64
  %827 = tail call i64 @read(i32 noundef %823, ptr noundef %825, i64 noundef %826) #13
  %828 = trunc i64 %827 to i32
  %829 = icmp slt i32 %828, 1
  br i1 %829, label %.loopexit85, label %830

830:                                              ; preds = %.mv.ph
  %831 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %820, i32 %828), !nosanitize !20
  %832 = extractvalue { i32, i1 } %831, 1, !nosanitize !20
  br i1 %832, label %833, label %834, !prof !21, !nosanitize !20

833:                                              ; preds = %830
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

834:                                              ; preds = %830
  %835 = extractvalue { i32, i1 } %831, 0, !nosanitize !20
  %836 = icmp ult i32 %835, %.fr84
  br i1 %836, label %.mv.ph, label %.loopexit, !llvm.loop !47

.loopexit85:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa4 = phi i32 [ %815, %.mv.ph.mv.fast ], [ %828, %.mv.ph ]
  %.lcssa1 = phi i32 [ %807, %.mv.ph.mv.fast ], [ %820, %.mv.ph ]
  %837 = icmp slt i32 %.lcssa4, 0
  br i1 %837, label %838, label %845

838:                                              ; preds = %.loopexit85
  %839 = load i32, ptr %806, align 4, !tbaa !45
  %840 = icmp eq i32 %839, 11
  br i1 %840, label %841, label %.loopexit93

841:                                              ; preds = %838
  store i32 1, ptr %479, align 4, !tbaa !17
  %842 = icmp eq i32 %.lcssa1, 0
  br i1 %842, label %843, label %.loopexit

843:                                              ; preds = %841
  %844 = load i32, ptr %806, align 4, !tbaa !45
  br label %.loopexit93

845:                                              ; preds = %.loopexit85
  store i32 1, ptr %471, align 8, !tbaa !24
  br label %.loopexit

.loopexit93:                                      ; preds = %838, %843
  %846 = phi i32 [ %844, %843 ], [ %839, %838 ]
  %847 = tail call ptr @strerror(i32 noundef %846) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %847) #13
  %848 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit92

.loopexit:                                        ; preds = %834, %817, %845, %841
  %849 = phi i32 [ %.lcssa1, %845 ], [ %.lcssa1, %841 ], [ %818, %817 ], [ %835, %834 ]
  %850 = load i32, ptr %472, align 8, !tbaa !34
  %851 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %850, i32 %849), !nosanitize !20
  %852 = extractvalue { i32, i1 } %851, 1, !nosanitize !20
  br i1 %852, label %853, label %854, !prof !21, !nosanitize !20

853:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

854:                                              ; preds = %.loopexit
  %855 = extractvalue { i32, i1 } %851, 0, !nosanitize !20
  store i32 %855, ptr %472, align 8, !tbaa !34
  %856 = load ptr, ptr %478, align 8, !tbaa !29
  store ptr %856, ptr %477, align 8, !tbaa !35
  %857 = icmp eq i32 %855, 0
  br i1 %857, label %858, label %862

858:                                              ; preds = %854, %800
  %859 = load i32, ptr %479, align 4, !tbaa !17
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %861, label %.loopexit92

861:                                              ; preds = %858
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit92

862:                                              ; preds = %854, %794
  %863 = tail call i32 @inflate(ptr noundef nonnull %477, i32 noundef 0) #13
  %864 = load i32, ptr %475, align 8, !tbaa !48
  %865 = icmp ult i32 %864, %792
  br i1 %865, label %866, label %867

866:                                              ; preds = %862
  store i32 0, ptr %481, align 4, !tbaa !33
  br label %867

867:                                              ; preds = %866, %862
  switch i32 %863, label %878 [
    i32 -2, label %868
    i32 2, label %868
    i32 -4, label %869
    i32 -3, label %870
  ]

868:                                              ; preds = %867, %867
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit92

869:                                              ; preds = %867
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit92

870:                                              ; preds = %867
  %871 = load i32, ptr %481, align 4, !tbaa !33
  %872 = icmp eq i32 %871, 1
  br i1 %872, label %873, label %874

873:                                              ; preds = %870
  store i32 0, ptr %472, align 8, !tbaa !34
  store i32 1, ptr %471, align 8, !tbaa !24
  store i32 0, ptr %473, align 8, !tbaa !26
  br label %.loopexit92

874:                                              ; preds = %870
  %875 = load ptr, ptr %482, align 8, !tbaa !50
  %876 = icmp eq ptr %875, null
  %877 = select i1 %876, ptr @.str.6, ptr %875
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %877) #13
  br label %.loopexit92

878:                                              ; preds = %867
  %879 = icmp ne i32 %864, 0
  %880 = icmp ne i32 %863, 1
  %881 = select i1 %879, i1 %880, i1 false
  br i1 %881, label %794, label %.loopexit92, !llvm.loop !51

.loopexit92:                                      ; preds = %878, %798, %874, %873, %869, %868, %861, %858, %.loopexit93
  %882 = phi i32 [ %795, %858 ], [ %795, %861 ], [ %863, %868 ], [ -4, %869 ], [ 0, %873 ], [ -3, %874 ], [ %848, %.loopexit93 ], [ %863, %878 ], [ %799, %798 ]
  %883 = load i32, ptr %475, align 8, !tbaa !48
  %884 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %792, i32 %883), !nosanitize !20
  %885 = extractvalue { i32, i1 } %884, 1, !nosanitize !20
  br i1 %885, label %886, label %887, !prof !21, !nosanitize !20

886:                                              ; preds = %.loopexit92
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

887:                                              ; preds = %.loopexit92
  %888 = extractvalue { i32, i1 } %884, 0, !nosanitize !20
  store i32 %888, ptr %0, align 8, !tbaa !19
  %889 = load ptr, ptr %476, align 8, !tbaa !49
  %890 = zext i32 %888 to i64
  %891 = sub nsw i64 0, %890
  %892 = getelementptr inbounds i8, ptr %889, i64 %891
  store ptr %892, ptr %470, align 8, !tbaa !22
  switch i32 %882, label %.loopexit98 [
    i32 1, label %893
    i32 0, label %895
  ]

893:                                              ; preds = %887
  store i32 0, ptr %481, align 4, !tbaa !33
  store i32 0, ptr %473, align 8, !tbaa !26
  br label %895

894:                                              ; preds = %524
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit98

895:                                              ; preds = %893, %887, %748, %742
  %896 = load i32, ptr %0, align 8, !tbaa !19
  br label %897

897:                                              ; preds = %895, %744
  %898 = phi i32 [ %896, %895 ], [ %747, %744 ]
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %.loopexit100

900:                                              ; preds = %897
  %901 = load i32, ptr %471, align 8, !tbaa !24
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %906, label %903

903:                                              ; preds = %900
  %904 = load i32, ptr %472, align 8, !tbaa !34
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %.loopexit100, label %906

906:                                              ; preds = %903, %900
  %907 = load i32, ptr %473, align 8, !tbaa !26
  br label %524, !llvm.loop !52

.loopexit98:                                      ; preds = %887, %557, %894, %786, %.loopexit99, %543, %539
  %908 = load i32, ptr %0, align 8, !tbaa !19
  %909 = icmp eq i32 %908, 0
  %910 = sext i1 %909 to i32
  br label %.loopexit100

911:                                              ; preds = %520
  %912 = icmp eq i32 %518, 1
  br i1 %912, label %913, label %946

913:                                              ; preds = %911
  store i32 0, ptr %479, align 4, !tbaa !17
  %914 = tail call ptr @__errno_location() #17
  store i32 0, ptr %914, align 4, !tbaa !45
  br label %915

915:                                              ; preds = %930, %913
  %916 = phi i32 [ 0, %913 ], [ %931, %930 ]
  %917 = sub i32 %493, %916
  %918 = tail call i32 @llvm.umin.i32(i32 %917, i32 1073741824)
  %919 = load i32, ptr %480, align 4, !tbaa !46
  %920 = zext i32 %916 to i64
  %921 = getelementptr inbounds nuw i8, ptr %489, i64 %920
  %922 = zext nneg i32 %918 to i64
  %923 = tail call i64 @read(i32 noundef %919, ptr noundef %921, i64 noundef %922) #13
  %924 = trunc i64 %923 to i32
  %925 = icmp slt i32 %924, 1
  br i1 %925, label %933, label %926

926:                                              ; preds = %915
  %927 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %916, i32 %924), !nosanitize !20
  %928 = extractvalue { i32, i1 } %927, 1, !nosanitize !20
  br i1 %928, label %929, label %930, !prof !21, !nosanitize !20

929:                                              ; preds = %926
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

930:                                              ; preds = %926
  %931 = extractvalue { i32, i1 } %927, 0, !nosanitize !20
  %932 = icmp ult i32 %931, %493
  br i1 %932, label %915, label %1053, !llvm.loop !47

933:                                              ; preds = %915
  %934 = icmp slt i32 %924, 0
  br i1 %934, label %935, label %945

935:                                              ; preds = %933
  %936 = load i32, ptr %914, align 4, !tbaa !45
  %937 = icmp eq i32 %936, 11
  br i1 %937, label %938, label %942

938:                                              ; preds = %935
  store i32 1, ptr %479, align 4, !tbaa !17
  %939 = icmp eq i32 %916, 0
  br i1 %939, label %940, label %1055

940:                                              ; preds = %938
  %941 = load i32, ptr %914, align 4, !tbaa !45
  br label %942

942:                                              ; preds = %940, %935
  %943 = phi i32 [ %941, %940 ], [ %936, %935 ]
  %944 = tail call ptr @strerror(i32 noundef %943) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %944) #13
  br label %1055

945:                                              ; preds = %933
  store i32 1, ptr %471, align 8, !tbaa !24
  br label %1055

946:                                              ; preds = %911
  store i32 %493, ptr %475, align 8, !tbaa !58
  store ptr %489, ptr %476, align 8, !tbaa !59
  br label %947

947:                                              ; preds = %1031, %946
  %948 = phi i32 [ 0, %946 ], [ %1016, %1031 ]
  %949 = load i32, ptr %472, align 8, !tbaa !34
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %1015

951:                                              ; preds = %947
  %952 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %952, label %.loopexit101 [
    i32 0, label %953
    i32 -5, label %953
  ]

953:                                              ; preds = %951, %951
  %954 = load i32, ptr %471, align 8, !tbaa !24
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %1011

956:                                              ; preds = %953
  %957 = load i32, ptr %474, align 8, !tbaa !27
  %.fr83 = freeze i32 %957
  %958 = load ptr, ptr %478, align 8, !tbaa !29
  store i32 0, ptr %479, align 4, !tbaa !17
  %959 = tail call ptr @__errno_location() #17
  store i32 0, ptr %959, align 4, !tbaa !45
  %mv.h27 = icmp sgt i32 %.fr83, -1
  br i1 %mv.h27, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %956, %970
  %960 = phi i32 [ %971, %970 ], [ 0, %956 ]
  %961 = sub nsw i32 %.fr83, %960
  %962 = tail call i32 @llvm.umin.i32(i32 %961, i32 1073741824)
  %963 = load i32, ptr %480, align 4, !tbaa !46
  %964 = zext nneg i32 %960 to i64
  %965 = getelementptr inbounds nuw i8, ptr %958, i64 %964
  %966 = zext nneg i32 %962 to i64
  %967 = tail call i64 @read(i32 noundef %963, ptr noundef %965, i64 noundef %966) #13
  %968 = trunc i64 %967 to i32
  %969 = icmp slt i32 %968, 1
  br i1 %969, label %.loopexit94, label %970

970:                                              ; preds = %.mv.ph29.mv.fast
  %971 = add nuw i32 %960, %968
  %972 = icmp ult i32 %971, %.fr83
  br i1 %972, label %.mv.ph29.mv.fast, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %956, %987
  %973 = phi i32 [ %988, %987 ], [ 0, %956 ]
  %974 = sub i32 %.fr83, %973
  %975 = tail call i32 @llvm.umin.i32(i32 %974, i32 1073741824)
  %976 = load i32, ptr %480, align 4, !tbaa !46
  %977 = zext i32 %973 to i64
  %978 = getelementptr inbounds nuw i8, ptr %958, i64 %977
  %979 = zext nneg i32 %975 to i64
  %980 = tail call i64 @read(i32 noundef %976, ptr noundef %978, i64 noundef %979) #13
  %981 = trunc i64 %980 to i32
  %982 = icmp slt i32 %981, 1
  br i1 %982, label %.loopexit94, label %983

983:                                              ; preds = %.mv.ph29
  %984 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %973, i32 %981), !nosanitize !20
  %985 = extractvalue { i32, i1 } %984, 1, !nosanitize !20
  br i1 %985, label %986, label %987, !prof !21, !nosanitize !20

986:                                              ; preds = %983
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

987:                                              ; preds = %983
  %988 = extractvalue { i32, i1 } %984, 0, !nosanitize !20
  %989 = icmp ult i32 %988, %.fr83
  br i1 %989, label %.mv.ph29, label %.loopexit19, !llvm.loop !47

.loopexit94:                                      ; preds = %.mv.ph29, %.mv.ph29.mv.fast
  %.lcssa23 = phi i32 [ %968, %.mv.ph29.mv.fast ], [ %981, %.mv.ph29 ]
  %.lcssa20 = phi i32 [ %960, %.mv.ph29.mv.fast ], [ %973, %.mv.ph29 ]
  %990 = icmp slt i32 %.lcssa23, 0
  br i1 %990, label %991, label %998

991:                                              ; preds = %.loopexit94
  %992 = load i32, ptr %959, align 4, !tbaa !45
  %993 = icmp eq i32 %992, 11
  br i1 %993, label %994, label %.loopexit103

994:                                              ; preds = %991
  store i32 1, ptr %479, align 4, !tbaa !17
  %995 = icmp eq i32 %.lcssa20, 0
  br i1 %995, label %996, label %.loopexit19

996:                                              ; preds = %994
  %997 = load i32, ptr %959, align 4, !tbaa !45
  br label %.loopexit103

998:                                              ; preds = %.loopexit94
  store i32 1, ptr %471, align 8, !tbaa !24
  br label %.loopexit19

.loopexit103:                                     ; preds = %991, %996
  %999 = phi i32 [ %997, %996 ], [ %992, %991 ]
  %1000 = tail call ptr @strerror(i32 noundef %999) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1000) #13
  %1001 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit101

.loopexit19:                                      ; preds = %987, %970, %998, %994
  %1002 = phi i32 [ %.lcssa20, %998 ], [ %.lcssa20, %994 ], [ %971, %970 ], [ %988, %987 ]
  %1003 = load i32, ptr %472, align 8, !tbaa !34
  %1004 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1003, i32 %1002), !nosanitize !20
  %1005 = extractvalue { i32, i1 } %1004, 1, !nosanitize !20
  br i1 %1005, label %1006, label %1007, !prof !21, !nosanitize !20

1006:                                             ; preds = %.loopexit19
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1007:                                             ; preds = %.loopexit19
  %1008 = extractvalue { i32, i1 } %1004, 0, !nosanitize !20
  store i32 %1008, ptr %472, align 8, !tbaa !34
  %1009 = load ptr, ptr %478, align 8, !tbaa !29
  store ptr %1009, ptr %477, align 8, !tbaa !35
  %1010 = icmp eq i32 %1008, 0
  br i1 %1010, label %1011, label %1015

1011:                                             ; preds = %1007, %953
  %1012 = load i32, ptr %479, align 4, !tbaa !17
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1014, label %.loopexit101

1014:                                             ; preds = %1011
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit101

1015:                                             ; preds = %1007, %947
  %1016 = tail call i32 @inflate(ptr noundef nonnull %477, i32 noundef 0) #13
  %1017 = load i32, ptr %475, align 8, !tbaa !48
  %1018 = icmp ult i32 %1017, %493
  br i1 %1018, label %1019, label %1020

1019:                                             ; preds = %1015
  store i32 0, ptr %481, align 4, !tbaa !33
  br label %1020

1020:                                             ; preds = %1019, %1015
  switch i32 %1016, label %1031 [
    i32 -2, label %1021
    i32 2, label %1021
    i32 -4, label %1022
    i32 -3, label %1023
  ]

1021:                                             ; preds = %1020, %1020
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit101

1022:                                             ; preds = %1020
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit101

1023:                                             ; preds = %1020
  %1024 = load i32, ptr %481, align 4, !tbaa !33
  %1025 = icmp eq i32 %1024, 1
  br i1 %1025, label %1026, label %1027

1026:                                             ; preds = %1023
  store i32 0, ptr %472, align 8, !tbaa !34
  store i32 1, ptr %471, align 8, !tbaa !24
  store i32 0, ptr %473, align 8, !tbaa !26
  br label %.loopexit101

1027:                                             ; preds = %1023
  %1028 = load ptr, ptr %482, align 8, !tbaa !50
  %1029 = icmp eq ptr %1028, null
  %1030 = select i1 %1029, ptr @.str.6, ptr %1028
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1030) #13
  br label %.loopexit101

1031:                                             ; preds = %1020
  %1032 = icmp ne i32 %1017, 0
  %1033 = icmp ne i32 %1016, 1
  %1034 = select i1 %1032, i1 %1033, i1 false
  br i1 %1034, label %947, label %.loopexit101, !llvm.loop !51

.loopexit101:                                     ; preds = %1031, %951, %1027, %1026, %1022, %1021, %1014, %1011, %.loopexit103
  %1035 = phi i32 [ %948, %1011 ], [ %948, %1014 ], [ %1016, %1021 ], [ -4, %1022 ], [ 0, %1026 ], [ -3, %1027 ], [ %1001, %.loopexit103 ], [ %952, %951 ], [ %1016, %1031 ]
  %1036 = load i32, ptr %475, align 8, !tbaa !48
  %1037 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %493, i32 %1036), !nosanitize !20
  %1038 = extractvalue { i32, i1 } %1037, 1, !nosanitize !20
  br i1 %1038, label %1039, label %1040, !prof !21, !nosanitize !20

1039:                                             ; preds = %.loopexit101
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1040:                                             ; preds = %.loopexit101
  %1041 = extractvalue { i32, i1 } %1037, 0, !nosanitize !20
  %1042 = load ptr, ptr %476, align 8, !tbaa !49
  %1043 = zext i32 %1041 to i64
  %1044 = sub nsw i64 0, %1043
  %1045 = getelementptr inbounds i8, ptr %1042, i64 %1044
  store ptr %1045, ptr %470, align 8, !tbaa !22
  %1046 = icmp eq i32 %1035, 1
  br i1 %1046, label %1047, label %1048

1047:                                             ; preds = %1040
  store i32 0, ptr %481, align 4, !tbaa !33
  store i32 0, ptr %473, align 8, !tbaa !26
  br label %1051

1048:                                             ; preds = %1040
  %1049 = icmp ne i32 %1035, 0
  %1050 = sext i1 %1049 to i32
  br label %1051

1051:                                             ; preds = %1048, %1047
  %1052 = phi i32 [ 0, %1047 ], [ %1050, %1048 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1055

1053:                                             ; preds = %930
  %1054 = zext i32 %931 to i64
  br label %1055

1055:                                             ; preds = %1053, %1051, %945, %942, %938, %506
  %1056 = phi i64 [ %1054, %1053 ], [ %920, %945 ], [ %920, %942 ], [ %920, %938 ], [ %499, %506 ], [ %1043, %1051 ]
  %1057 = phi i32 [ 0, %1053 ], [ 0, %945 ], [ -1, %942 ], [ 0, %938 ], [ %510, %506 ], [ %1052, %1051 ]
  %1058 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %490, i64 %1056), !nosanitize !20
  %1059 = extractvalue { i64, i1 } %1058, 0, !nosanitize !20
  %1060 = extractvalue { i64, i1 } %1058, 1, !nosanitize !20
  br i1 %1060, label %1061, label %1062, !prof !21, !nosanitize !20

1061:                                             ; preds = %1055
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1062:                                             ; preds = %1055
  %1063 = getelementptr inbounds nuw i8, ptr %489, i64 %1056
  %1064 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %491, i64 %1056), !nosanitize !20
  %1065 = extractvalue { i64, i1 } %1064, 0, !nosanitize !20
  %1066 = extractvalue { i64, i1 } %1064, 1, !nosanitize !20
  br i1 %1066, label %1067, label %1068, !prof !21, !nosanitize !20

1067:                                             ; preds = %1068, %1062
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1068:                                             ; preds = %1062
  %1069 = load i64, ptr %483, align 8, !tbaa !23
  %1070 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1069, i64 %1056), !nosanitize !20
  %1071 = extractvalue { i64, i1 } %1070, 1, !nosanitize !20
  br i1 %1071, label %1067, label %1072, !prof !21, !nosanitize !20

1072:                                             ; preds = %1068
  %1073 = extractvalue { i64, i1 } %1070, 0, !nosanitize !20
  store i64 %1073, ptr %483, align 8, !tbaa !23
  br label %.loopexit100

.loopexit100:                                     ; preds = %903, %897, %748, %1072, %.loopexit98, %.loopexit97
  %1074 = phi ptr [ %1063, %1072 ], [ %489, %.loopexit98 ], [ %489, %.loopexit97 ], [ %489, %748 ], [ %489, %897 ], [ %489, %903 ]
  %1075 = phi i64 [ %1059, %1072 ], [ %490, %.loopexit98 ], [ %490, %.loopexit97 ], [ %490, %748 ], [ %490, %897 ], [ %490, %903 ]
  %1076 = phi i64 [ %1065, %1072 ], [ %491, %.loopexit98 ], [ %491, %.loopexit97 ], [ %491, %748 ], [ %491, %897 ], [ %491, %903 ]
  %1077 = phi i32 [ %1057, %1072 ], [ %910, %.loopexit98 ], [ 0, %.loopexit97 ], [ 0, %748 ], [ 0, %897 ], [ 0, %903 ]
  %1078 = icmp ne i64 %1075, 0
  %1079 = icmp eq i32 %1077, 0
  %1080 = select i1 %1078, i1 %1079, i1 false
  br i1 %1080, label %488, label %1081, !llvm.loop !60

1081:                                             ; preds = %.loopexit100, %514
  %1082 = phi i64 [ %1075, %.loopexit100 ], [ %490, %514 ]
  %1083 = phi i64 [ %1076, %.loopexit100 ], [ %491, %514 ]
  %1084 = icmp eq i64 %1082, 0
  br i1 %1084, label %1090, label %1085

1085:                                             ; preds = %1081
  %1086 = load i32, ptr %471, align 8, !tbaa !24
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1090, label %1088

1088:                                             ; preds = %1085
  %1089 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1089, align 4, !tbaa !61
  br label %1090

1090:                                             ; preds = %1088, %1085, %1081
  %1091 = trunc i64 %1083 to i32
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %.loopexit118, label %1103

.loopexit118:                                     ; preds = %447, %1090, %454, %.loopexit123, %.loopexit120, %93, %89, %19
  %1093 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit119

.loopexit119:                                     ; preds = %107, %.loopexit118
  %1094 = phi i32 [ %1093, %.loopexit118 ], [ %108, %107 ]
  switch i32 %1094, label %1103 [
    i32 0, label %1095
    i32 -5, label %1095
  ]

1095:                                             ; preds = %.loopexit119, %.loopexit119
  %1096 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1097 = load i32, ptr %1096, align 4, !tbaa !17
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1103, label %1099

1099:                                             ; preds = %1095
  %1100 = tail call ptr @__errno_location() #17
  %1101 = load i32, ptr %1100, align 4, !tbaa !45
  %1102 = tail call ptr @strerror(i32 noundef %1101) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1102) #13
  br label %1103

1103:                                             ; preds = %1099, %1095, %.loopexit119, %1090, %18, %12, %5, %3
  %1104 = phi i32 [ -1, %18 ], [ -1, %1099 ], [ -1, %3 ], [ -1, %5 ], [ -1, %12 ], [ -1, %.loopexit119 ], [ 0, %1095 ], [ %1091, %1090 ]
  ret i32 %1104
}

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %1100, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1100

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
  br i1 %16, label %1100, label %17

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
  br label %1100

28:                                               ; preds = %24, %22
  %29 = icmp eq i64 %19, 0
  br i1 %29, label %1100, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %32 = load i64, ptr %31, align 8, !tbaa !18
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %.loopexit121, label %34

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

53:                                               ; preds = %464, %34
  %54 = phi i64 [ %465, %464 ], [ %32, %34 ]
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
  br label %464

76:                                               ; preds = %53
  %77 = load i32, ptr %37, align 8, !tbaa !24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %.preheader961, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %38, align 8, !tbaa !25
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %.loopexit121, label %.preheader961

.preheader961:                                    ; preds = %79, %76
  br label %82

82:                                               ; preds = %.backedge, %.preheader961
  %83 = load i32, ptr %39, align 8, !tbaa !26
  switch i32 %83, label %451 [
    i32 0, label %84
    i32 1, label %309
    i32 2, label %347
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
  br label %.loopexit118

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
  br label %.loopexit118

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
  br label %306

115:                                              ; preds = %107
  %116 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %116, label %.loopexit118 [
    i32 0, label %117
    i32 -5, label %117
  ]

117:                                              ; preds = %115, %115
  %118 = load i32, ptr %37, align 8, !tbaa !24
  %119 = icmp eq i32 %118, 0
  %120 = load i32, ptr %38, align 8, !tbaa !34
  br i1 %119, label %121, label %274

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
  br i1 %150, label %.loopexit111, label %151

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
  br i1 %173, label %.loopexit111, label %174

174:                                              ; preds = %168, %151, %127
  %175 = phi ptr [ %124, %127 ], [ %152, %151 ], [ %169, %168 ]
  %176 = phi ptr [ %125, %127 ], [ %153, %151 ], [ %170, %168 ]
  %177 = phi i32 [ %120, %127 ], [ %155, %151 ], [ %172, %168 ]
  %178 = add i32 %177, -1
  %179 = and i32 %177, 7
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %.loopexit113, label %.preheader112

.preheader112:                                    ; preds = %174, %.preheader112
  %181 = phi ptr [ %185, %.preheader112 ], [ %175, %174 ]
  %182 = phi ptr [ %186, %.preheader112 ], [ %176, %174 ]
  %183 = phi i32 [ %187, %.preheader112 ], [ 0, %174 ]
  %184 = load i8, ptr %182, align 1, !tbaa !36
  store i8 %184, ptr %181, align 1, !tbaa !36
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 1
  %186 = getelementptr inbounds nuw i8, ptr %182, i64 1
  %187 = add nuw nsw i32 %183, 1
  %188 = icmp eq i32 %187, %179
  br i1 %188, label %.loopexit113.loopexit, label %.preheader112, !llvm.loop !64

.loopexit113.loopexit:                            ; preds = %.preheader112
  %189 = and i32 %177, -8
  br label %.loopexit113

.loopexit113:                                     ; preds = %.loopexit113.loopexit, %174
  %190 = phi ptr [ %175, %174 ], [ %185, %.loopexit113.loopexit ]
  %191 = phi ptr [ %176, %174 ], [ %186, %.loopexit113.loopexit ]
  %192 = phi i32 [ %177, %174 ], [ %189, %.loopexit113.loopexit ]
  %193 = icmp ult i32 %178, 7
  br i1 %193, label %.loopexit111, label %.preheader110

.preheader110:                                    ; preds = %.loopexit113, %.preheader110
  %194 = phi ptr [ %220, %.preheader110 ], [ %190, %.loopexit113 ]
  %195 = phi ptr [ %221, %.preheader110 ], [ %191, %.loopexit113 ]
  %196 = phi i32 [ %219, %.preheader110 ], [ %192, %.loopexit113 ]
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
  br i1 %222, label %.loopexit111, label %.preheader110, !llvm.loop !65

.loopexit111:                                     ; preds = %.preheader110, %.loopexit113, %168, %149
  %223 = load i32, ptr %38, align 8, !tbaa !34
  br label %224

224:                                              ; preds = %.loopexit111, %123, %121
  %225 = phi i32 [ %223, %.loopexit111 ], [ %120, %123 ], [ 0, %121 ]
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

236:                                              ; preds = %251, %230
  %237 = phi i32 [ 0, %230 ], [ %252, %251 ]
  %238 = sub i32 %231, %237
  %239 = tail call i32 @llvm.umin.i32(i32 %238, i32 1073741824)
  %240 = load i32, ptr %47, align 4, !tbaa !46
  %241 = zext i32 %237 to i64
  %242 = getelementptr inbounds nuw i8, ptr %234, i64 %241
  %243 = zext nneg i32 %239 to i64
  %244 = tail call i64 @read(i32 noundef %240, ptr noundef %242, i64 noundef %243) #13
  %245 = trunc i64 %244 to i32
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %254, label %247

247:                                              ; preds = %236
  %248 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %237, i32 %245), !nosanitize !20
  %249 = extractvalue { i32, i1 } %248, 1, !nosanitize !20
  br i1 %249, label %250, label %251, !prof !21, !nosanitize !20

250:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

251:                                              ; preds = %247
  %252 = extractvalue { i32, i1 } %248, 0, !nosanitize !20
  %253 = icmp ult i32 %252, %231
  br i1 %253, label %236, label %.loopexit109, !llvm.loop !47

254:                                              ; preds = %236
  %255 = icmp slt i32 %245, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %254
  %257 = load i32, ptr %235, align 4, !tbaa !45
  %258 = icmp eq i32 %257, 11
  br i1 %258, label %259, label %.loopexit119

259:                                              ; preds = %256
  store i32 1, ptr %46, align 4, !tbaa !17
  %260 = icmp eq i32 %237, 0
  br i1 %260, label %261, label %.loopexit109

261:                                              ; preds = %259
  %262 = load i32, ptr %235, align 4, !tbaa !45
  br label %.loopexit119

263:                                              ; preds = %254
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit109

.loopexit119:                                     ; preds = %256, %261
  %264 = phi i32 [ %262, %261 ], [ %257, %256 ]
  %265 = tail call ptr @strerror(i32 noundef %264) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %265) #13
  br label %.loopexit118

.loopexit109:                                     ; preds = %251, %263, %259
  %266 = phi i32 [ %237, %263 ], [ %237, %259 ], [ %252, %251 ]
  %267 = load i32, ptr %38, align 8, !tbaa !34
  %268 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %267, i32 %266), !nosanitize !20
  %269 = extractvalue { i32, i1 } %268, 1, !nosanitize !20
  br i1 %269, label %270, label %271, !prof !21, !nosanitize !20

270:                                              ; preds = %.loopexit109
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

271:                                              ; preds = %.loopexit109
  %272 = extractvalue { i32, i1 } %268, 0, !nosanitize !20
  store i32 %272, ptr %38, align 8, !tbaa !34
  %273 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %273, ptr %44, align 8, !tbaa !35
  br label %274

274:                                              ; preds = %271, %117
  %275 = phi i32 [ %272, %271 ], [ %120, %117 ]
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %306, label %277

277:                                              ; preds = %274
  %278 = load i32, ptr %46, align 4, !tbaa !17
  %279 = icmp ne i32 %278, 0
  %280 = icmp ult i32 %275, 4
  %281 = and i1 %280, %279
  br i1 %281, label %306, label %282

282:                                              ; preds = %277
  %283 = icmp ugt i32 %275, 3
  %284 = load ptr, ptr %44, align 8, !tbaa !35
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
  %301 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %452

302:                                              ; preds = %296, %292, %288, %285, %282
  %303 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %303, ptr %35, align 8, !tbaa !22
  %304 = zext i32 %275 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %303, ptr align 1 %284, i64 %304, i1 false)
  %305 = load i32, ptr %38, align 8, !tbaa !34
  store i32 %305, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !26
  br label %454

306:                                              ; preds = %277, %274, %110
  %307 = load i32, ptr %39, align 8, !tbaa !26
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %.loopexit120, label %452

309:                                              ; preds = %82
  %310 = load ptr, ptr %42, align 8, !tbaa !30
  %311 = load i32, ptr %40, align 8, !tbaa !27
  %312 = shl i32 %311, 1
  store i32 0, ptr %46, align 4, !tbaa !17
  %313 = tail call ptr @__errno_location() #17
  store i32 0, ptr %313, align 4, !tbaa !45
  store i32 0, ptr %3, align 8, !tbaa !45
  br label %314

314:                                              ; preds = %330, %309
  %315 = phi i32 [ %331, %330 ], [ 0, %309 ]
  %316 = sub i32 %312, %315
  %317 = tail call i32 @llvm.umin.i32(i32 %316, i32 1073741824)
  %318 = load i32, ptr %47, align 4, !tbaa !46
  %319 = zext i32 %315 to i64
  %320 = getelementptr inbounds nuw i8, ptr %310, i64 %319
  %321 = zext nneg i32 %317 to i64
  %322 = tail call i64 @read(i32 noundef %318, ptr noundef %320, i64 noundef %321) #13
  %323 = trunc i64 %322 to i32
  %324 = icmp slt i32 %323, 1
  br i1 %324, label %333, label %325

325:                                              ; preds = %314
  %326 = load i32, ptr %3, align 4, !tbaa !45
  %327 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %326, i32 %323), !nosanitize !20
  %328 = extractvalue { i32, i1 } %327, 1, !nosanitize !20
  br i1 %328, label %329, label %330, !prof !21, !nosanitize !20

329:                                              ; preds = %325
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

330:                                              ; preds = %325
  %331 = extractvalue { i32, i1 } %327, 0, !nosanitize !20
  store i32 %331, ptr %3, align 4, !tbaa !45
  %332 = icmp ult i32 %331, %312
  br i1 %332, label %314, label %.loopexit117, !llvm.loop !47

333:                                              ; preds = %314
  %334 = icmp slt i32 %323, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %333
  %336 = load i32, ptr %313, align 4, !tbaa !45
  %337 = icmp eq i32 %336, 11
  br i1 %337, label %338, label %.loopexit122

338:                                              ; preds = %335
  store i32 1, ptr %46, align 4, !tbaa !17
  %339 = load i32, ptr %3, align 4, !tbaa !45
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %.loopexit117

341:                                              ; preds = %338
  %342 = load i32, ptr %313, align 4, !tbaa !45
  br label %.loopexit122

343:                                              ; preds = %333
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit117

.loopexit122:                                     ; preds = %335, %341
  %344 = phi i32 [ %342, %341 ], [ %336, %335 ]
  %345 = tail call ptr @strerror(i32 noundef %344) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %345) #13
  br label %.loopexit118

.loopexit117:                                     ; preds = %330, %343, %338
  %346 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %346, ptr %35, align 8, !tbaa !22
  br label %.loopexit120

347:                                              ; preds = %82
  %348 = load i32, ptr %40, align 8, !tbaa !27
  %349 = shl i32 %348, 1
  store i32 %349, ptr %41, align 8, !tbaa !48
  %350 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %350, ptr %43, align 8, !tbaa !49
  br label %351

351:                                              ; preds = %435, %347
  %352 = phi i32 [ 0, %347 ], [ %420, %435 ]
  %353 = load i32, ptr %38, align 8, !tbaa !34
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %419

355:                                              ; preds = %351
  %356 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %356, label %.loopexit114 [
    i32 0, label %357
    i32 -5, label %357
  ]

357:                                              ; preds = %355, %355
  %358 = load i32, ptr %37, align 8, !tbaa !24
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %415

360:                                              ; preds = %357
  %361 = load i32, ptr %40, align 8, !tbaa !27
  %.fr = freeze i32 %361
  %362 = load ptr, ptr %45, align 8, !tbaa !29
  store i32 0, ptr %46, align 4, !tbaa !17
  %363 = tail call ptr @__errno_location() #17
  store i32 0, ptr %363, align 4, !tbaa !45
  %mv.h16 = icmp sgt i32 %.fr, -1
  br i1 %mv.h16, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %360, %374
  %364 = phi i32 [ %375, %374 ], [ 0, %360 ]
  %365 = sub nsw i32 %.fr, %364
  %366 = tail call i32 @llvm.umin.i32(i32 %365, i32 1073741824)
  %367 = load i32, ptr %47, align 4, !tbaa !46
  %368 = zext nneg i32 %364 to i64
  %369 = getelementptr inbounds nuw i8, ptr %362, i64 %368
  %370 = zext nneg i32 %366 to i64
  %371 = tail call i64 @read(i32 noundef %367, ptr noundef %369, i64 noundef %370) #13
  %372 = trunc i64 %371 to i32
  %373 = icmp slt i32 %372, 1
  br i1 %373, label %.loopexit106, label %374

374:                                              ; preds = %.mv.ph18.mv.fast
  %375 = add nuw i32 %364, %372
  %376 = icmp ult i32 %375, %.fr
  br i1 %376, label %.mv.ph18.mv.fast, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %360, %391
  %377 = phi i32 [ %392, %391 ], [ 0, %360 ]
  %378 = sub i32 %.fr, %377
  %379 = tail call i32 @llvm.umin.i32(i32 %378, i32 1073741824)
  %380 = load i32, ptr %47, align 4, !tbaa !46
  %381 = zext i32 %377 to i64
  %382 = getelementptr inbounds nuw i8, ptr %362, i64 %381
  %383 = zext nneg i32 %379 to i64
  %384 = tail call i64 @read(i32 noundef %380, ptr noundef %382, i64 noundef %383) #13
  %385 = trunc i64 %384 to i32
  %386 = icmp slt i32 %385, 1
  br i1 %386, label %.loopexit106, label %387

387:                                              ; preds = %.mv.ph18
  %388 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %377, i32 %385), !nosanitize !20
  %389 = extractvalue { i32, i1 } %388, 1, !nosanitize !20
  br i1 %389, label %390, label %391, !prof !21, !nosanitize !20

390:                                              ; preds = %387
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

391:                                              ; preds = %387
  %392 = extractvalue { i32, i1 } %388, 0, !nosanitize !20
  %393 = icmp ult i32 %392, %.fr
  br i1 %393, label %.mv.ph18, label %.loopexit8, !llvm.loop !47

.loopexit106:                                     ; preds = %.mv.ph18, %.mv.ph18.mv.fast
  %.lcssa12 = phi i32 [ %372, %.mv.ph18.mv.fast ], [ %385, %.mv.ph18 ]
  %.lcssa9 = phi i32 [ %364, %.mv.ph18.mv.fast ], [ %377, %.mv.ph18 ]
  %394 = icmp slt i32 %.lcssa12, 0
  br i1 %394, label %395, label %402

395:                                              ; preds = %.loopexit106
  %396 = load i32, ptr %363, align 4, !tbaa !45
  %397 = icmp eq i32 %396, 11
  br i1 %397, label %398, label %.loopexit116

398:                                              ; preds = %395
  store i32 1, ptr %46, align 4, !tbaa !17
  %399 = icmp eq i32 %.lcssa9, 0
  br i1 %399, label %400, label %.loopexit8

400:                                              ; preds = %398
  %401 = load i32, ptr %363, align 4, !tbaa !45
  br label %.loopexit116

402:                                              ; preds = %.loopexit106
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit8

.loopexit116:                                     ; preds = %395, %400
  %403 = phi i32 [ %401, %400 ], [ %396, %395 ]
  %404 = tail call ptr @strerror(i32 noundef %403) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %404) #13
  %405 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit114

.loopexit8:                                       ; preds = %391, %374, %402, %398
  %406 = phi i32 [ %.lcssa9, %402 ], [ %.lcssa9, %398 ], [ %375, %374 ], [ %392, %391 ]
  %407 = load i32, ptr %38, align 8, !tbaa !34
  %408 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %407, i32 %406), !nosanitize !20
  %409 = extractvalue { i32, i1 } %408, 1, !nosanitize !20
  br i1 %409, label %410, label %411, !prof !21, !nosanitize !20

410:                                              ; preds = %.loopexit8
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

411:                                              ; preds = %.loopexit8
  %412 = extractvalue { i32, i1 } %408, 0, !nosanitize !20
  store i32 %412, ptr %38, align 8, !tbaa !34
  %413 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %413, ptr %44, align 8, !tbaa !35
  %414 = icmp eq i32 %412, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %411, %357
  %416 = load i32, ptr %46, align 4, !tbaa !17
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %.loopexit114

418:                                              ; preds = %415
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit114

419:                                              ; preds = %411, %351
  %420 = tail call i32 @inflate(ptr noundef nonnull %44, i32 noundef 0) #13
  %421 = load i32, ptr %41, align 8, !tbaa !48
  %422 = icmp ult i32 %421, %349
  br i1 %422, label %423, label %424

423:                                              ; preds = %419
  store i32 0, ptr %48, align 4, !tbaa !33
  br label %424

424:                                              ; preds = %423, %419
  switch i32 %420, label %435 [
    i32 -2, label %425
    i32 2, label %425
    i32 -4, label %426
    i32 -3, label %427
  ]

425:                                              ; preds = %424, %424
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit114

426:                                              ; preds = %424
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit114

427:                                              ; preds = %424
  %428 = load i32, ptr %48, align 4, !tbaa !33
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !24
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %.loopexit114

431:                                              ; preds = %427
  %432 = load ptr, ptr %49, align 8, !tbaa !50
  %433 = icmp eq ptr %432, null
  %434 = select i1 %433, ptr @.str.6, ptr %432
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %434) #13
  br label %.loopexit114

435:                                              ; preds = %424
  %436 = icmp ne i32 %421, 0
  %437 = icmp ne i32 %420, 1
  %438 = select i1 %436, i1 %437, i1 false
  br i1 %438, label %351, label %.loopexit114, !llvm.loop !51

.loopexit114:                                     ; preds = %435, %355, %431, %430, %426, %425, %418, %415, %.loopexit116
  %439 = phi i32 [ %352, %415 ], [ %352, %418 ], [ %420, %425 ], [ -4, %426 ], [ 0, %430 ], [ -3, %431 ], [ %405, %.loopexit116 ], [ %356, %355 ], [ %420, %435 ]
  %440 = load i32, ptr %41, align 8, !tbaa !48
  %441 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %349, i32 %440), !nosanitize !20
  %442 = extractvalue { i32, i1 } %441, 1, !nosanitize !20
  br i1 %442, label %443, label %444, !prof !21, !nosanitize !20

443:                                              ; preds = %.loopexit114
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

444:                                              ; preds = %.loopexit114
  %445 = extractvalue { i32, i1 } %441, 0, !nosanitize !20
  store i32 %445, ptr %3, align 8, !tbaa !19
  %446 = load ptr, ptr %43, align 8, !tbaa !49
  %447 = zext i32 %445 to i64
  %448 = sub nsw i64 0, %447
  %449 = getelementptr inbounds i8, ptr %446, i64 %448
  store ptr %449, ptr %35, align 8, !tbaa !22
  switch i32 %439, label %.loopexit118 [
    i32 1, label %450
    i32 0, label %452
  ]

450:                                              ; preds = %444
  store i32 0, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %452

451:                                              ; preds = %82
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit118

452:                                              ; preds = %450, %444, %306, %300
  %453 = load i32, ptr %3, align 8, !tbaa !19
  br label %454

454:                                              ; preds = %452, %302
  %455 = phi i32 [ %453, %452 ], [ %305, %302 ]
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %.loopexit120

457:                                              ; preds = %454
  %458 = load i32, ptr %37, align 8, !tbaa !24
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %.backedge, label %460

460:                                              ; preds = %457
  %461 = load i32, ptr %38, align 8, !tbaa !34
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %.loopexit120, label %.backedge

.backedge:                                        ; preds = %460, %457
  br label %82, !llvm.loop !52

.loopexit120:                                     ; preds = %460, %454, %306, %.loopexit117
  %463 = load i64, ptr %31, align 8, !tbaa !18
  br label %464

464:                                              ; preds = %.loopexit120, %73
  %465 = phi i64 [ %463, %.loopexit120 ], [ %75, %73 ]
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %.loopexit121, label %53, !llvm.loop !53

.loopexit121:                                     ; preds = %464, %79, %30
  %467 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %468 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %469 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %470 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %471 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %472 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %473 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %474 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %475 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %476 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %477 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %478 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %479 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %480 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %481 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %482 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %483 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %484 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %485

485:                                              ; preds = %.loopexit102, %.loopexit121
  %486 = phi ptr [ %0, %.loopexit121 ], [ %1082, %.loopexit102 ]
  %487 = phi i64 [ %19, %.loopexit121 ], [ %1083, %.loopexit102 ]
  %488 = phi i64 [ 0, %.loopexit121 ], [ %1084, %.loopexit102 ]
  %489 = tail call i64 @llvm.umin.i64(i64 %487, i64 4294967295)
  %490 = trunc nuw i64 %489 to i32
  %491 = load i32, ptr %3, align 8, !tbaa !19
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %508, label %493

493:                                              ; preds = %485
  %494 = tail call i32 @llvm.umin.i32(i32 %491, i32 %490)
  %495 = load ptr, ptr %467, align 8, !tbaa !22
  %496 = zext i32 %494 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %486, ptr align 1 %495, i64 %496, i1 false)
  %497 = load ptr, ptr %467, align 8, !tbaa !22
  %498 = getelementptr inbounds nuw i8, ptr %497, i64 %496
  store ptr %498, ptr %467, align 8, !tbaa !22
  %499 = load i32, ptr %3, align 8, !tbaa !19
  %500 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %499, i32 %494), !nosanitize !20
  %501 = extractvalue { i32, i1 } %500, 1, !nosanitize !20
  br i1 %501, label %502, label %503, !prof !21, !nosanitize !20

502:                                              ; preds = %493
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

503:                                              ; preds = %493
  %504 = extractvalue { i32, i1 } %500, 0, !nosanitize !20
  store i32 %504, ptr %3, align 8, !tbaa !19
  %505 = load i32, ptr %11, align 8, !tbaa !16
  %506 = icmp ne i32 %505, 0
  %507 = sext i1 %506 to i32
  br label %1063

508:                                              ; preds = %485
  %509 = load i32, ptr %468, align 8, !tbaa !24
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %514, label %511

511:                                              ; preds = %508
  %512 = load i32, ptr %469, align 8, !tbaa !25
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %1089, label %514

514:                                              ; preds = %511, %508
  %515 = load i32, ptr %470, align 8, !tbaa !26
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %.preheader860, label %517

517:                                              ; preds = %514
  %518 = load i32, ptr %471, align 8, !tbaa !27
  %519 = shl i32 %518, 1
  %520 = icmp ugt i32 %519, %490
  br i1 %520, label %.preheader860, label %919

.preheader860:                                    ; preds = %517, %514
  br label %521

521:                                              ; preds = %.preheader860, %914
  %522 = phi i32 [ %915, %914 ], [ %515, %.preheader860 ]
  switch i32 %522, label %902 [
    i32 0, label %523
    i32 1, label %759
    i32 2, label %798
  ]

523:                                              ; preds = %521
  %524 = load i32, ptr %471, align 8, !tbaa !27
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %543

526:                                              ; preds = %523
  %527 = load i32, ptr %482, align 4, !tbaa !28
  %528 = zext i32 %527 to i64
  %529 = tail call noalias ptr @malloc(i64 noundef %528) #16
  store ptr %529, ptr %475, align 8, !tbaa !29
  %530 = shl i32 %527, 1
  %531 = zext i32 %530 to i64
  %532 = tail call noalias ptr @malloc(i64 noundef %531) #16
  store ptr %532, ptr %481, align 8, !tbaa !30
  %533 = icmp eq ptr %529, null
  %534 = icmp eq ptr %532, null
  %535 = or i1 %533, %534
  br i1 %535, label %536, label %537

536:                                              ; preds = %526
  tail call void @free(ptr noundef %532) #13
  tail call void @free(ptr noundef %529) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit100

537:                                              ; preds = %526
  store i32 %527, ptr %471, align 8, !tbaa !27
  store i32 0, ptr %469, align 8, !tbaa !25
  store ptr null, ptr %474, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %483, i8 0, i64 24, i1 false)
  %538 = tail call i32 @inflateInit2_(ptr noundef nonnull %474, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %543, label %540

540:                                              ; preds = %537
  %541 = load ptr, ptr %481, align 8, !tbaa !30
  tail call void @free(ptr noundef %541) #13
  %542 = load ptr, ptr %475, align 8, !tbaa !29
  tail call void @free(ptr noundef %542) #13
  store i32 0, ptr %471, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit100

543:                                              ; preds = %537, %523
  %544 = load i32, ptr %484, align 8, !tbaa !32
  %545 = icmp eq i32 %544, -1
  br i1 %545, label %549, label %546

546:                                              ; preds = %543
  %547 = load i32, ptr %478, align 4, !tbaa !33
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %554

549:                                              ; preds = %546, %543
  %550 = tail call i32 @inflateReset(ptr noundef nonnull %474) #13
  store i32 2, ptr %470, align 8, !tbaa !26
  %551 = load i32, ptr %478, align 4, !tbaa !33
  %552 = icmp ne i32 %551, -1
  %553 = zext i1 %552 to i32
  store i32 %553, ptr %478, align 4, !tbaa !33
  store i32 0, ptr %484, align 8, !tbaa !32
  br label %756

554:                                              ; preds = %546
  %555 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %555, label %.loopexit100 [
    i32 0, label %556
    i32 -5, label %556
  ]

556:                                              ; preds = %554, %554
  %557 = load i32, ptr %468, align 8, !tbaa !24
  %558 = icmp eq i32 %557, 0
  %559 = load i32, ptr %469, align 8, !tbaa !34
  br i1 %558, label %560, label %724

560:                                              ; preds = %556
  %561 = icmp eq i32 %559, 0
  br i1 %561, label %663, label %562

562:                                              ; preds = %560
  %563 = load ptr, ptr %475, align 8, !tbaa !29
  %564 = load ptr, ptr %474, align 8, !tbaa !35
  %565 = icmp eq ptr %564, %563
  br i1 %565, label %663, label %566

566:                                              ; preds = %562
  %567 = ptrtoint ptr %564 to i64
  %568 = ptrtoint ptr %563 to i64
  %569 = zext i32 %559 to i64
  %570 = icmp ult i32 %559, 4
  %571 = sub i64 %568, %567
  %572 = icmp ult i64 %571, 32
  %573 = or i1 %570, %572
  br i1 %573, label %613, label %574

574:                                              ; preds = %566
  %575 = icmp ult i32 %559, 32
  br i1 %575, label %597, label %576

576:                                              ; preds = %574
  %577 = and i64 %569, 4294967264
  br label %578

578:                                              ; preds = %578, %576
  %579 = phi i64 [ 0, %576 ], [ %586, %578 ]
  %580 = getelementptr i8, ptr %563, i64 %579
  %581 = getelementptr i8, ptr %564, i64 %579
  %582 = getelementptr i8, ptr %581, i64 16
  %583 = load <16 x i8>, ptr %581, align 1, !tbaa !36
  %584 = load <16 x i8>, ptr %582, align 1, !tbaa !36
  %585 = getelementptr i8, ptr %580, i64 16
  store <16 x i8> %583, ptr %580, align 1, !tbaa !36
  store <16 x i8> %584, ptr %585, align 1, !tbaa !36
  %586 = add nuw nsw i64 %579, 32
  %587 = icmp eq i64 %586, %577
  br i1 %587, label %588, label %578, !llvm.loop !66

588:                                              ; preds = %578
  %589 = icmp eq i64 %577, %569
  br i1 %589, label %.loopexit91, label %590

590:                                              ; preds = %588
  %591 = getelementptr i8, ptr %563, i64 %577
  %592 = getelementptr i8, ptr %564, i64 %577
  %593 = trunc nuw i64 %577 to i32
  %594 = sub i32 %559, %593
  %595 = and i64 %569, 28
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %613, label %597

597:                                              ; preds = %590, %574
  %598 = phi i64 [ %577, %590 ], [ 0, %574 ]
  %599 = and i64 %569, 4294967292
  br label %600

600:                                              ; preds = %600, %597
  %601 = phi i64 [ %598, %597 ], [ %605, %600 ]
  %602 = getelementptr i8, ptr %563, i64 %601
  %603 = getelementptr i8, ptr %564, i64 %601
  %604 = load <4 x i8>, ptr %603, align 1, !tbaa !36
  store <4 x i8> %604, ptr %602, align 1, !tbaa !36
  %605 = add nuw i64 %601, 4
  %606 = icmp eq i64 %605, %599
  br i1 %606, label %607, label %600, !llvm.loop !67

607:                                              ; preds = %600
  %608 = getelementptr i8, ptr %563, i64 %599
  %609 = getelementptr i8, ptr %564, i64 %599
  %610 = trunc nuw i64 %599 to i32
  %611 = sub i32 %559, %610
  %612 = icmp eq i64 %599, %569
  br i1 %612, label %.loopexit91, label %613

613:                                              ; preds = %607, %590, %566
  %614 = phi ptr [ %563, %566 ], [ %591, %590 ], [ %608, %607 ]
  %615 = phi ptr [ %564, %566 ], [ %592, %590 ], [ %609, %607 ]
  %616 = phi i32 [ %559, %566 ], [ %594, %590 ], [ %611, %607 ]
  %617 = add i32 %616, -1
  %618 = and i32 %616, 7
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %.loopexit93, label %.preheader92

.preheader92:                                     ; preds = %613, %.preheader92
  %620 = phi ptr [ %624, %.preheader92 ], [ %614, %613 ]
  %621 = phi ptr [ %625, %.preheader92 ], [ %615, %613 ]
  %622 = phi i32 [ %626, %.preheader92 ], [ 0, %613 ]
  %623 = load i8, ptr %621, align 1, !tbaa !36
  store i8 %623, ptr %620, align 1, !tbaa !36
  %624 = getelementptr inbounds nuw i8, ptr %620, i64 1
  %625 = getelementptr inbounds nuw i8, ptr %621, i64 1
  %626 = add nuw nsw i32 %622, 1
  %627 = icmp eq i32 %626, %618
  br i1 %627, label %.loopexit93.loopexit, label %.preheader92, !llvm.loop !68

.loopexit93.loopexit:                             ; preds = %.preheader92
  %628 = and i32 %616, -8
  br label %.loopexit93

.loopexit93:                                      ; preds = %.loopexit93.loopexit, %613
  %629 = phi ptr [ %614, %613 ], [ %624, %.loopexit93.loopexit ]
  %630 = phi ptr [ %615, %613 ], [ %625, %.loopexit93.loopexit ]
  %631 = phi i32 [ %616, %613 ], [ %628, %.loopexit93.loopexit ]
  %632 = icmp ult i32 %617, 7
  br i1 %632, label %.loopexit91, label %.preheader

.preheader:                                       ; preds = %.loopexit93, %.preheader
  %633 = phi ptr [ %659, %.preheader ], [ %629, %.loopexit93 ]
  %634 = phi ptr [ %660, %.preheader ], [ %630, %.loopexit93 ]
  %635 = phi i32 [ %658, %.preheader ], [ %631, %.loopexit93 ]
  %636 = load i8, ptr %634, align 1, !tbaa !36
  store i8 %636, ptr %633, align 1, !tbaa !36
  %637 = getelementptr inbounds nuw i8, ptr %633, i64 1
  %638 = getelementptr inbounds nuw i8, ptr %634, i64 1
  %639 = load i8, ptr %638, align 1, !tbaa !36
  store i8 %639, ptr %637, align 1, !tbaa !36
  %640 = getelementptr inbounds nuw i8, ptr %633, i64 2
  %641 = getelementptr inbounds nuw i8, ptr %634, i64 2
  %642 = load i8, ptr %641, align 1, !tbaa !36
  store i8 %642, ptr %640, align 1, !tbaa !36
  %643 = getelementptr inbounds nuw i8, ptr %633, i64 3
  %644 = getelementptr inbounds nuw i8, ptr %634, i64 3
  %645 = load i8, ptr %644, align 1, !tbaa !36
  store i8 %645, ptr %643, align 1, !tbaa !36
  %646 = getelementptr inbounds nuw i8, ptr %633, i64 4
  %647 = getelementptr inbounds nuw i8, ptr %634, i64 4
  %648 = load i8, ptr %647, align 1, !tbaa !36
  store i8 %648, ptr %646, align 1, !tbaa !36
  %649 = getelementptr inbounds nuw i8, ptr %633, i64 5
  %650 = getelementptr inbounds nuw i8, ptr %634, i64 5
  %651 = load i8, ptr %650, align 1, !tbaa !36
  store i8 %651, ptr %649, align 1, !tbaa !36
  %652 = getelementptr inbounds nuw i8, ptr %633, i64 6
  %653 = getelementptr inbounds nuw i8, ptr %634, i64 6
  %654 = load i8, ptr %653, align 1, !tbaa !36
  store i8 %654, ptr %652, align 1, !tbaa !36
  %655 = getelementptr inbounds nuw i8, ptr %633, i64 7
  %656 = getelementptr inbounds nuw i8, ptr %634, i64 7
  %657 = load i8, ptr %656, align 1, !tbaa !36
  store i8 %657, ptr %655, align 1, !tbaa !36
  %658 = add i32 %635, -8
  %659 = getelementptr inbounds nuw i8, ptr %633, i64 8
  %660 = getelementptr inbounds nuw i8, ptr %634, i64 8
  %661 = icmp eq i32 %658, 0
  br i1 %661, label %.loopexit91, label %.preheader, !llvm.loop !69

.loopexit91:                                      ; preds = %.preheader, %.loopexit93, %607, %588
  %662 = load i32, ptr %469, align 8, !tbaa !34
  br label %663

663:                                              ; preds = %.loopexit91, %562, %560
  %664 = phi i32 [ %662, %.loopexit91 ], [ %559, %562 ], [ 0, %560 ]
  %665 = load i32, ptr %471, align 8, !tbaa !27
  %.fr84 = freeze i32 %665
  %666 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr84, i32 %664), !nosanitize !20
  %667 = extractvalue { i32, i1 } %666, 1, !nosanitize !20
  br i1 %667, label %668, label %669, !prof !21, !nosanitize !20

668:                                              ; preds = %663
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

669:                                              ; preds = %663
  %670 = extractvalue { i32, i1 } %666, 0, !nosanitize !20
  %671 = load ptr, ptr %475, align 8, !tbaa !29
  %672 = zext i32 %664 to i64
  %673 = getelementptr inbounds nuw i8, ptr %671, i64 %672
  store i32 0, ptr %476, align 4, !tbaa !17
  %674 = tail call ptr @__errno_location() #17
  store i32 0, ptr %674, align 4, !tbaa !45
  %mv.h27 = icmp sgt i32 %.fr84, -1
  br i1 %mv.h27, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %669, %685
  %675 = phi i32 [ %686, %685 ], [ 0, %669 ]
  %676 = sub i32 %670, %675
  %677 = tail call i32 @llvm.umin.i32(i32 %676, i32 1073741824)
  %678 = load i32, ptr %477, align 4, !tbaa !46
  %679 = zext i32 %675 to i64
  %680 = getelementptr inbounds nuw i8, ptr %673, i64 %679
  %681 = zext nneg i32 %677 to i64
  %682 = tail call i64 @read(i32 noundef %678, ptr noundef %680, i64 noundef %681) #13
  %683 = trunc i64 %682 to i32
  %684 = icmp slt i32 %683, 1
  br i1 %684, label %.loopexit88, label %685

685:                                              ; preds = %.mv.ph29.mv.fast
  %686 = add i32 %675, %683
  %687 = icmp ult i32 %686, %670
  br i1 %687, label %.mv.ph29.mv.fast, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %669, %702
  %688 = phi i32 [ %703, %702 ], [ 0, %669 ]
  %689 = sub i32 %670, %688
  %690 = tail call i32 @llvm.umin.i32(i32 %689, i32 1073741824)
  %691 = load i32, ptr %477, align 4, !tbaa !46
  %692 = zext i32 %688 to i64
  %693 = getelementptr inbounds nuw i8, ptr %673, i64 %692
  %694 = zext nneg i32 %690 to i64
  %695 = tail call i64 @read(i32 noundef %691, ptr noundef %693, i64 noundef %694) #13
  %696 = trunc i64 %695 to i32
  %697 = icmp slt i32 %696, 1
  br i1 %697, label %.loopexit88, label %698

698:                                              ; preds = %.mv.ph29
  %699 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %688, i32 %696), !nosanitize !20
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !20
  br i1 %700, label %701, label %702, !prof !21, !nosanitize !20

701:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

702:                                              ; preds = %698
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !20
  %704 = icmp ult i32 %703, %670
  br i1 %704, label %.mv.ph29, label %.loopexit19, !llvm.loop !47

.loopexit88:                                      ; preds = %.mv.ph29, %.mv.ph29.mv.fast
  %.lcssa23 = phi i32 [ %683, %.mv.ph29.mv.fast ], [ %696, %.mv.ph29 ]
  %.lcssa20 = phi i32 [ %675, %.mv.ph29.mv.fast ], [ %688, %.mv.ph29 ]
  %705 = icmp slt i32 %.lcssa23, 0
  br i1 %705, label %706, label %713

706:                                              ; preds = %.loopexit88
  %707 = load i32, ptr %674, align 4, !tbaa !45
  %708 = icmp eq i32 %707, 11
  br i1 %708, label %709, label %.loopexit101

709:                                              ; preds = %706
  store i32 1, ptr %476, align 4, !tbaa !17
  %710 = icmp eq i32 %.lcssa20, 0
  br i1 %710, label %711, label %.loopexit19

711:                                              ; preds = %709
  %712 = load i32, ptr %674, align 4, !tbaa !45
  br label %.loopexit101

713:                                              ; preds = %.loopexit88
  store i32 1, ptr %468, align 8, !tbaa !24
  br label %.loopexit19

.loopexit101:                                     ; preds = %706, %711
  %714 = phi i32 [ %712, %711 ], [ %707, %706 ]
  %715 = tail call ptr @strerror(i32 noundef %714) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %715) #13
  br label %.loopexit100

.loopexit19:                                      ; preds = %702, %685, %713, %709
  %716 = phi i32 [ %.lcssa20, %713 ], [ %.lcssa20, %709 ], [ %686, %685 ], [ %703, %702 ]
  %717 = load i32, ptr %469, align 8, !tbaa !34
  %718 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %717, i32 %716), !nosanitize !20
  %719 = extractvalue { i32, i1 } %718, 1, !nosanitize !20
  br i1 %719, label %720, label %721, !prof !21, !nosanitize !20

720:                                              ; preds = %.loopexit19
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

721:                                              ; preds = %.loopexit19
  %722 = extractvalue { i32, i1 } %718, 0, !nosanitize !20
  store i32 %722, ptr %469, align 8, !tbaa !34
  %723 = load ptr, ptr %475, align 8, !tbaa !29
  store ptr %723, ptr %474, align 8, !tbaa !35
  br label %724

724:                                              ; preds = %721, %556
  %725 = phi i32 [ %722, %721 ], [ %559, %556 ]
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %756, label %727

727:                                              ; preds = %724
  %728 = load i32, ptr %476, align 4, !tbaa !17
  %729 = icmp ne i32 %728, 0
  %730 = icmp ult i32 %725, 4
  %731 = and i1 %730, %729
  br i1 %731, label %756, label %732

732:                                              ; preds = %727
  %733 = icmp ugt i32 %725, 3
  %734 = load ptr, ptr %474, align 8, !tbaa !35
  br i1 %733, label %735, label %752

735:                                              ; preds = %732
  %736 = load i8, ptr %734, align 1, !tbaa !36
  %737 = icmp eq i8 %736, 31
  br i1 %737, label %738, label %752

738:                                              ; preds = %735
  %739 = getelementptr inbounds nuw i8, ptr %734, i64 1
  %740 = load i8, ptr %739, align 1, !tbaa !36
  %741 = icmp eq i8 %740, -117
  br i1 %741, label %742, label %752

742:                                              ; preds = %738
  %743 = getelementptr inbounds nuw i8, ptr %734, i64 2
  %744 = load i8, ptr %743, align 1, !tbaa !36
  %745 = icmp eq i8 %744, 8
  br i1 %745, label %746, label %752

746:                                              ; preds = %742
  %747 = getelementptr inbounds nuw i8, ptr %734, i64 3
  %748 = load i8, ptr %747, align 1, !tbaa !36
  %749 = icmp ult i8 %748, 32
  br i1 %749, label %750, label %752

750:                                              ; preds = %746
  %751 = tail call i32 @inflateReset(ptr noundef nonnull %474) #13
  store i32 2, ptr %470, align 8, !tbaa !26
  store i32 1, ptr %478, align 4, !tbaa !33
  store i32 0, ptr %484, align 8, !tbaa !32
  br label %903

752:                                              ; preds = %746, %742, %738, %735, %732
  %753 = load ptr, ptr %481, align 8, !tbaa !30
  store ptr %753, ptr %467, align 8, !tbaa !22
  %754 = zext i32 %725 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %753, ptr align 1 %734, i64 %754, i1 false)
  %755 = load i32, ptr %469, align 8, !tbaa !34
  store i32 %755, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %469, align 8, !tbaa !34
  store i32 1, ptr %470, align 8, !tbaa !26
  br label %905

756:                                              ; preds = %727, %724, %549
  %757 = load i32, ptr %470, align 8, !tbaa !26
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %.loopexit102, label %903

759:                                              ; preds = %521
  %760 = load ptr, ptr %481, align 8, !tbaa !30
  %761 = load i32, ptr %471, align 8, !tbaa !27
  %762 = shl i32 %761, 1
  store i32 0, ptr %476, align 4, !tbaa !17
  %763 = tail call ptr @__errno_location() #17
  store i32 0, ptr %763, align 4, !tbaa !45
  store i32 0, ptr %3, align 8, !tbaa !45
  br label %764

764:                                              ; preds = %780, %759
  %765 = phi i32 [ %781, %780 ], [ 0, %759 ]
  %766 = sub i32 %762, %765
  %767 = tail call i32 @llvm.umin.i32(i32 %766, i32 1073741824)
  %768 = load i32, ptr %477, align 4, !tbaa !46
  %769 = zext i32 %765 to i64
  %770 = getelementptr inbounds nuw i8, ptr %760, i64 %769
  %771 = zext nneg i32 %767 to i64
  %772 = tail call i64 @read(i32 noundef %768, ptr noundef %770, i64 noundef %771) #13
  %773 = trunc i64 %772 to i32
  %774 = icmp slt i32 %773, 1
  br i1 %774, label %783, label %775

775:                                              ; preds = %764
  %776 = load i32, ptr %3, align 4, !tbaa !45
  %777 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %776, i32 %773), !nosanitize !20
  %778 = extractvalue { i32, i1 } %777, 1, !nosanitize !20
  br i1 %778, label %779, label %780, !prof !21, !nosanitize !20

779:                                              ; preds = %775
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

780:                                              ; preds = %775
  %781 = extractvalue { i32, i1 } %777, 0, !nosanitize !20
  store i32 %781, ptr %3, align 4, !tbaa !45
  %782 = icmp ult i32 %781, %762
  br i1 %782, label %764, label %.loopexit99, !llvm.loop !47

783:                                              ; preds = %764
  %784 = icmp slt i32 %773, 0
  br i1 %784, label %785, label %793

785:                                              ; preds = %783
  %786 = load i32, ptr %763, align 4, !tbaa !45
  %787 = icmp eq i32 %786, 11
  br i1 %787, label %788, label %794

788:                                              ; preds = %785
  store i32 1, ptr %476, align 4, !tbaa !17
  %789 = load i32, ptr %3, align 4, !tbaa !45
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %791, label %.loopexit99

791:                                              ; preds = %788
  %792 = load i32, ptr %763, align 4, !tbaa !45
  br label %794

793:                                              ; preds = %783
  store i32 1, ptr %468, align 8, !tbaa !24
  br label %.loopexit99

794:                                              ; preds = %791, %785
  %795 = phi i32 [ %792, %791 ], [ %786, %785 ]
  %796 = tail call ptr @strerror(i32 noundef %795) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %796) #13
  br label %.loopexit100

.loopexit99:                                      ; preds = %780, %793, %788
  %797 = load ptr, ptr %481, align 8, !tbaa !30
  store ptr %797, ptr %467, align 8, !tbaa !22
  br label %.loopexit102

798:                                              ; preds = %521
  %799 = load i32, ptr %471, align 8, !tbaa !27
  %800 = shl i32 %799, 1
  store i32 %800, ptr %472, align 8, !tbaa !48
  %801 = load ptr, ptr %481, align 8, !tbaa !30
  store ptr %801, ptr %473, align 8, !tbaa !49
  br label %802

802:                                              ; preds = %886, %798
  %803 = phi i32 [ 0, %798 ], [ %871, %886 ]
  %804 = load i32, ptr %469, align 8, !tbaa !34
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %806, label %870

806:                                              ; preds = %802
  %807 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %807, label %.loopexit94 [
    i32 0, label %808
    i32 -5, label %808
  ]

808:                                              ; preds = %806, %806
  %809 = load i32, ptr %468, align 8, !tbaa !24
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %866

811:                                              ; preds = %808
  %812 = load i32, ptr %471, align 8, !tbaa !27
  %.fr83 = freeze i32 %812
  %813 = load ptr, ptr %475, align 8, !tbaa !29
  store i32 0, ptr %476, align 4, !tbaa !17
  %814 = tail call ptr @__errno_location() #17
  store i32 0, ptr %814, align 4, !tbaa !45
  %mv.h = icmp sgt i32 %.fr83, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %811, %825
  %815 = phi i32 [ %826, %825 ], [ 0, %811 ]
  %816 = sub nsw i32 %.fr83, %815
  %817 = tail call i32 @llvm.umin.i32(i32 %816, i32 1073741824)
  %818 = load i32, ptr %477, align 4, !tbaa !46
  %819 = zext nneg i32 %815 to i64
  %820 = getelementptr inbounds nuw i8, ptr %813, i64 %819
  %821 = zext nneg i32 %817 to i64
  %822 = tail call i64 @read(i32 noundef %818, ptr noundef %820, i64 noundef %821) #13
  %823 = trunc i64 %822 to i32
  %824 = icmp slt i32 %823, 1
  br i1 %824, label %.loopexit85, label %825

825:                                              ; preds = %.mv.ph.mv.fast
  %826 = add nuw i32 %815, %823
  %827 = icmp ult i32 %826, %.fr83
  br i1 %827, label %.mv.ph.mv.fast, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %811, %842
  %828 = phi i32 [ %843, %842 ], [ 0, %811 ]
  %829 = sub i32 %.fr83, %828
  %830 = tail call i32 @llvm.umin.i32(i32 %829, i32 1073741824)
  %831 = load i32, ptr %477, align 4, !tbaa !46
  %832 = zext i32 %828 to i64
  %833 = getelementptr inbounds nuw i8, ptr %813, i64 %832
  %834 = zext nneg i32 %830 to i64
  %835 = tail call i64 @read(i32 noundef %831, ptr noundef %833, i64 noundef %834) #13
  %836 = trunc i64 %835 to i32
  %837 = icmp slt i32 %836, 1
  br i1 %837, label %.loopexit85, label %838

838:                                              ; preds = %.mv.ph
  %839 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %828, i32 %836), !nosanitize !20
  %840 = extractvalue { i32, i1 } %839, 1, !nosanitize !20
  br i1 %840, label %841, label %842, !prof !21, !nosanitize !20

841:                                              ; preds = %838
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

842:                                              ; preds = %838
  %843 = extractvalue { i32, i1 } %839, 0, !nosanitize !20
  %844 = icmp ult i32 %843, %.fr83
  br i1 %844, label %.mv.ph, label %.loopexit, !llvm.loop !47

.loopexit85:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa4 = phi i32 [ %823, %.mv.ph.mv.fast ], [ %836, %.mv.ph ]
  %.lcssa1 = phi i32 [ %815, %.mv.ph.mv.fast ], [ %828, %.mv.ph ]
  %845 = icmp slt i32 %.lcssa4, 0
  br i1 %845, label %846, label %853

846:                                              ; preds = %.loopexit85
  %847 = load i32, ptr %814, align 4, !tbaa !45
  %848 = icmp eq i32 %847, 11
  br i1 %848, label %849, label %.loopexit95

849:                                              ; preds = %846
  store i32 1, ptr %476, align 4, !tbaa !17
  %850 = icmp eq i32 %.lcssa1, 0
  br i1 %850, label %851, label %.loopexit

851:                                              ; preds = %849
  %852 = load i32, ptr %814, align 4, !tbaa !45
  br label %.loopexit95

853:                                              ; preds = %.loopexit85
  store i32 1, ptr %468, align 8, !tbaa !24
  br label %.loopexit

.loopexit95:                                      ; preds = %846, %851
  %854 = phi i32 [ %852, %851 ], [ %847, %846 ]
  %855 = tail call ptr @strerror(i32 noundef %854) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %855) #13
  %856 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit94

.loopexit:                                        ; preds = %842, %825, %853, %849
  %857 = phi i32 [ %.lcssa1, %853 ], [ %.lcssa1, %849 ], [ %826, %825 ], [ %843, %842 ]
  %858 = load i32, ptr %469, align 8, !tbaa !34
  %859 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %858, i32 %857), !nosanitize !20
  %860 = extractvalue { i32, i1 } %859, 1, !nosanitize !20
  br i1 %860, label %861, label %862, !prof !21, !nosanitize !20

861:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

862:                                              ; preds = %.loopexit
  %863 = extractvalue { i32, i1 } %859, 0, !nosanitize !20
  store i32 %863, ptr %469, align 8, !tbaa !34
  %864 = load ptr, ptr %475, align 8, !tbaa !29
  store ptr %864, ptr %474, align 8, !tbaa !35
  %865 = icmp eq i32 %863, 0
  br i1 %865, label %866, label %870

866:                                              ; preds = %862, %808
  %867 = load i32, ptr %476, align 4, !tbaa !17
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %.loopexit94

869:                                              ; preds = %866
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit94

870:                                              ; preds = %862, %802
  %871 = tail call i32 @inflate(ptr noundef nonnull %474, i32 noundef 0) #13
  %872 = load i32, ptr %472, align 8, !tbaa !48
  %873 = icmp ult i32 %872, %800
  br i1 %873, label %874, label %875

874:                                              ; preds = %870
  store i32 0, ptr %478, align 4, !tbaa !33
  br label %875

875:                                              ; preds = %874, %870
  switch i32 %871, label %886 [
    i32 -2, label %876
    i32 2, label %876
    i32 -4, label %877
    i32 -3, label %878
  ]

876:                                              ; preds = %875, %875
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit94

877:                                              ; preds = %875
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

878:                                              ; preds = %875
  %879 = load i32, ptr %478, align 4, !tbaa !33
  %880 = icmp eq i32 %879, 1
  br i1 %880, label %881, label %882

881:                                              ; preds = %878
  store i32 0, ptr %469, align 8, !tbaa !34
  store i32 1, ptr %468, align 8, !tbaa !24
  store i32 0, ptr %470, align 8, !tbaa !26
  br label %.loopexit94

882:                                              ; preds = %878
  %883 = load ptr, ptr %479, align 8, !tbaa !50
  %884 = icmp eq ptr %883, null
  %885 = select i1 %884, ptr @.str.6, ptr %883
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %885) #13
  br label %.loopexit94

886:                                              ; preds = %875
  %887 = icmp ne i32 %872, 0
  %888 = icmp ne i32 %871, 1
  %889 = select i1 %887, i1 %888, i1 false
  br i1 %889, label %802, label %.loopexit94, !llvm.loop !51

.loopexit94:                                      ; preds = %886, %806, %882, %881, %877, %876, %869, %866, %.loopexit95
  %890 = phi i32 [ %803, %866 ], [ %803, %869 ], [ %871, %876 ], [ -4, %877 ], [ 0, %881 ], [ -3, %882 ], [ %856, %.loopexit95 ], [ %871, %886 ], [ %807, %806 ]
  %891 = load i32, ptr %472, align 8, !tbaa !48
  %892 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %800, i32 %891), !nosanitize !20
  %893 = extractvalue { i32, i1 } %892, 1, !nosanitize !20
  br i1 %893, label %894, label %895, !prof !21, !nosanitize !20

894:                                              ; preds = %.loopexit94
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

895:                                              ; preds = %.loopexit94
  %896 = extractvalue { i32, i1 } %892, 0, !nosanitize !20
  store i32 %896, ptr %3, align 8, !tbaa !19
  %897 = load ptr, ptr %473, align 8, !tbaa !49
  %898 = zext i32 %896 to i64
  %899 = sub nsw i64 0, %898
  %900 = getelementptr inbounds i8, ptr %897, i64 %899
  store ptr %900, ptr %467, align 8, !tbaa !22
  switch i32 %890, label %.loopexit100 [
    i32 1, label %901
    i32 0, label %903
  ]

901:                                              ; preds = %895
  store i32 0, ptr %478, align 4, !tbaa !33
  store i32 0, ptr %470, align 8, !tbaa !26
  br label %903

902:                                              ; preds = %521
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit100

903:                                              ; preds = %901, %895, %756, %750
  %904 = load i32, ptr %3, align 8, !tbaa !19
  br label %905

905:                                              ; preds = %903, %752
  %906 = phi i32 [ %904, %903 ], [ %755, %752 ]
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %908, label %.loopexit102

908:                                              ; preds = %905
  %909 = load i32, ptr %468, align 8, !tbaa !24
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %914, label %911

911:                                              ; preds = %908
  %912 = load i32, ptr %469, align 8, !tbaa !34
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %.loopexit102, label %914

914:                                              ; preds = %911, %908
  %915 = load i32, ptr %470, align 8, !tbaa !26
  br label %521, !llvm.loop !52

.loopexit100:                                     ; preds = %895, %554, %902, %794, %.loopexit101, %540, %536
  %916 = load i32, ptr %3, align 8, !tbaa !19
  %917 = icmp eq i32 %916, 0
  %918 = sext i1 %917 to i32
  br label %.loopexit102

919:                                              ; preds = %517
  %920 = icmp eq i32 %515, 1
  br i1 %920, label %921, label %954

921:                                              ; preds = %919
  store i32 0, ptr %476, align 4, !tbaa !17
  %922 = tail call ptr @__errno_location() #17
  store i32 0, ptr %922, align 4, !tbaa !45
  br label %923

923:                                              ; preds = %938, %921
  %924 = phi i32 [ 0, %921 ], [ %939, %938 ]
  %925 = sub i32 %490, %924
  %926 = tail call i32 @llvm.umin.i32(i32 %925, i32 1073741824)
  %927 = load i32, ptr %477, align 4, !tbaa !46
  %928 = zext i32 %924 to i64
  %929 = getelementptr inbounds nuw i8, ptr %486, i64 %928
  %930 = zext nneg i32 %926 to i64
  %931 = tail call i64 @read(i32 noundef %927, ptr noundef %929, i64 noundef %930) #13
  %932 = trunc i64 %931 to i32
  %933 = icmp slt i32 %932, 1
  br i1 %933, label %941, label %934

934:                                              ; preds = %923
  %935 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %924, i32 %932), !nosanitize !20
  %936 = extractvalue { i32, i1 } %935, 1, !nosanitize !20
  br i1 %936, label %937, label %938, !prof !21, !nosanitize !20

937:                                              ; preds = %934
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

938:                                              ; preds = %934
  %939 = extractvalue { i32, i1 } %935, 0, !nosanitize !20
  %940 = icmp ult i32 %939, %490
  br i1 %940, label %923, label %1061, !llvm.loop !47

941:                                              ; preds = %923
  %942 = icmp slt i32 %932, 0
  br i1 %942, label %943, label %953

943:                                              ; preds = %941
  %944 = load i32, ptr %922, align 4, !tbaa !45
  %945 = icmp eq i32 %944, 11
  br i1 %945, label %946, label %950

946:                                              ; preds = %943
  store i32 1, ptr %476, align 4, !tbaa !17
  %947 = icmp eq i32 %924, 0
  br i1 %947, label %948, label %1063

948:                                              ; preds = %946
  %949 = load i32, ptr %922, align 4, !tbaa !45
  br label %950

950:                                              ; preds = %948, %943
  %951 = phi i32 [ %949, %948 ], [ %944, %943 ]
  %952 = tail call ptr @strerror(i32 noundef %951) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %952) #13
  br label %1063

953:                                              ; preds = %941
  store i32 1, ptr %468, align 8, !tbaa !24
  br label %1063

954:                                              ; preds = %919
  store i32 %490, ptr %472, align 8, !tbaa !58
  store ptr %486, ptr %473, align 8, !tbaa !59
  br label %955

955:                                              ; preds = %1039, %954
  %956 = phi i32 [ 0, %954 ], [ %1024, %1039 ]
  %957 = load i32, ptr %469, align 8, !tbaa !34
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %1023

959:                                              ; preds = %955
  %960 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %960, label %.loopexit103 [
    i32 0, label %961
    i32 -5, label %961
  ]

961:                                              ; preds = %959, %959
  %962 = load i32, ptr %468, align 8, !tbaa !24
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %964, label %1019

964:                                              ; preds = %961
  %965 = load i32, ptr %471, align 8, !tbaa !27
  %.fr82 = freeze i32 %965
  %966 = load ptr, ptr %475, align 8, !tbaa !29
  store i32 0, ptr %476, align 4, !tbaa !17
  %967 = tail call ptr @__errno_location() #17
  store i32 0, ptr %967, align 4, !tbaa !45
  %mv.h38 = icmp sgt i32 %.fr82, -1
  br i1 %mv.h38, label %.mv.ph40.mv.fast, label %.mv.ph40

.mv.ph40.mv.fast:                                 ; preds = %964, %978
  %968 = phi i32 [ %979, %978 ], [ 0, %964 ]
  %969 = sub nsw i32 %.fr82, %968
  %970 = tail call i32 @llvm.umin.i32(i32 %969, i32 1073741824)
  %971 = load i32, ptr %477, align 4, !tbaa !46
  %972 = zext nneg i32 %968 to i64
  %973 = getelementptr inbounds nuw i8, ptr %966, i64 %972
  %974 = zext nneg i32 %970 to i64
  %975 = tail call i64 @read(i32 noundef %971, ptr noundef %973, i64 noundef %974) #13
  %976 = trunc i64 %975 to i32
  %977 = icmp slt i32 %976, 1
  br i1 %977, label %.loopexit96, label %978

978:                                              ; preds = %.mv.ph40.mv.fast
  %979 = add nuw i32 %968, %976
  %980 = icmp ult i32 %979, %.fr82
  br i1 %980, label %.mv.ph40.mv.fast, label %.loopexit30, !llvm.loop !47

.mv.ph40:                                         ; preds = %964, %995
  %981 = phi i32 [ %996, %995 ], [ 0, %964 ]
  %982 = sub i32 %.fr82, %981
  %983 = tail call i32 @llvm.umin.i32(i32 %982, i32 1073741824)
  %984 = load i32, ptr %477, align 4, !tbaa !46
  %985 = zext i32 %981 to i64
  %986 = getelementptr inbounds nuw i8, ptr %966, i64 %985
  %987 = zext nneg i32 %983 to i64
  %988 = tail call i64 @read(i32 noundef %984, ptr noundef %986, i64 noundef %987) #13
  %989 = trunc i64 %988 to i32
  %990 = icmp slt i32 %989, 1
  br i1 %990, label %.loopexit96, label %991

991:                                              ; preds = %.mv.ph40
  %992 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %981, i32 %989), !nosanitize !20
  %993 = extractvalue { i32, i1 } %992, 1, !nosanitize !20
  br i1 %993, label %994, label %995, !prof !21, !nosanitize !20

994:                                              ; preds = %991
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

995:                                              ; preds = %991
  %996 = extractvalue { i32, i1 } %992, 0, !nosanitize !20
  %997 = icmp ult i32 %996, %.fr82
  br i1 %997, label %.mv.ph40, label %.loopexit30, !llvm.loop !47

.loopexit96:                                      ; preds = %.mv.ph40, %.mv.ph40.mv.fast
  %.lcssa34 = phi i32 [ %976, %.mv.ph40.mv.fast ], [ %989, %.mv.ph40 ]
  %.lcssa31 = phi i32 [ %968, %.mv.ph40.mv.fast ], [ %981, %.mv.ph40 ]
  %998 = icmp slt i32 %.lcssa34, 0
  br i1 %998, label %999, label %1006

999:                                              ; preds = %.loopexit96
  %1000 = load i32, ptr %967, align 4, !tbaa !45
  %1001 = icmp eq i32 %1000, 11
  br i1 %1001, label %1002, label %.loopexit105

1002:                                             ; preds = %999
  store i32 1, ptr %476, align 4, !tbaa !17
  %1003 = icmp eq i32 %.lcssa31, 0
  br i1 %1003, label %1004, label %.loopexit30

1004:                                             ; preds = %1002
  %1005 = load i32, ptr %967, align 4, !tbaa !45
  br label %.loopexit105

1006:                                             ; preds = %.loopexit96
  store i32 1, ptr %468, align 8, !tbaa !24
  br label %.loopexit30

.loopexit105:                                     ; preds = %999, %1004
  %1007 = phi i32 [ %1005, %1004 ], [ %1000, %999 ]
  %1008 = tail call ptr @strerror(i32 noundef %1007) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %1008) #13
  %1009 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit103

.loopexit30:                                      ; preds = %995, %978, %1006, %1002
  %1010 = phi i32 [ %.lcssa31, %1006 ], [ %.lcssa31, %1002 ], [ %979, %978 ], [ %996, %995 ]
  %1011 = load i32, ptr %469, align 8, !tbaa !34
  %1012 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1011, i32 %1010), !nosanitize !20
  %1013 = extractvalue { i32, i1 } %1012, 1, !nosanitize !20
  br i1 %1013, label %1014, label %1015, !prof !21, !nosanitize !20

1014:                                             ; preds = %.loopexit30
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1015:                                             ; preds = %.loopexit30
  %1016 = extractvalue { i32, i1 } %1012, 0, !nosanitize !20
  store i32 %1016, ptr %469, align 8, !tbaa !34
  %1017 = load ptr, ptr %475, align 8, !tbaa !29
  store ptr %1017, ptr %474, align 8, !tbaa !35
  %1018 = icmp eq i32 %1016, 0
  br i1 %1018, label %1019, label %1023

1019:                                             ; preds = %1015, %961
  %1020 = load i32, ptr %476, align 4, !tbaa !17
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %.loopexit103

1022:                                             ; preds = %1019
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit103

1023:                                             ; preds = %1015, %955
  %1024 = tail call i32 @inflate(ptr noundef nonnull %474, i32 noundef 0) #13
  %1025 = load i32, ptr %472, align 8, !tbaa !48
  %1026 = icmp ult i32 %1025, %490
  br i1 %1026, label %1027, label %1028

1027:                                             ; preds = %1023
  store i32 0, ptr %478, align 4, !tbaa !33
  br label %1028

1028:                                             ; preds = %1027, %1023
  switch i32 %1024, label %1039 [
    i32 -2, label %1029
    i32 2, label %1029
    i32 -4, label %1030
    i32 -3, label %1031
  ]

1029:                                             ; preds = %1028, %1028
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit103

1030:                                             ; preds = %1028
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit103

1031:                                             ; preds = %1028
  %1032 = load i32, ptr %478, align 4, !tbaa !33
  %1033 = icmp eq i32 %1032, 1
  br i1 %1033, label %1034, label %1035

1034:                                             ; preds = %1031
  store i32 0, ptr %469, align 8, !tbaa !34
  store i32 1, ptr %468, align 8, !tbaa !24
  store i32 0, ptr %470, align 8, !tbaa !26
  br label %.loopexit103

1035:                                             ; preds = %1031
  %1036 = load ptr, ptr %479, align 8, !tbaa !50
  %1037 = icmp eq ptr %1036, null
  %1038 = select i1 %1037, ptr @.str.6, ptr %1036
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %1038) #13
  br label %.loopexit103

1039:                                             ; preds = %1028
  %1040 = icmp ne i32 %1025, 0
  %1041 = icmp ne i32 %1024, 1
  %1042 = select i1 %1040, i1 %1041, i1 false
  br i1 %1042, label %955, label %.loopexit103, !llvm.loop !51

.loopexit103:                                     ; preds = %1039, %959, %1035, %1034, %1030, %1029, %1022, %1019, %.loopexit105
  %1043 = phi i32 [ %956, %1019 ], [ %956, %1022 ], [ %1024, %1029 ], [ -4, %1030 ], [ 0, %1034 ], [ -3, %1035 ], [ %1009, %.loopexit105 ], [ %960, %959 ], [ %1024, %1039 ]
  %1044 = load i32, ptr %472, align 8, !tbaa !48
  %1045 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %490, i32 %1044), !nosanitize !20
  %1046 = extractvalue { i32, i1 } %1045, 1, !nosanitize !20
  br i1 %1046, label %1047, label %1048, !prof !21, !nosanitize !20

1047:                                             ; preds = %.loopexit103
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1048:                                             ; preds = %.loopexit103
  %1049 = extractvalue { i32, i1 } %1045, 0, !nosanitize !20
  %1050 = load ptr, ptr %473, align 8, !tbaa !49
  %1051 = zext i32 %1049 to i64
  %1052 = sub nsw i64 0, %1051
  %1053 = getelementptr inbounds i8, ptr %1050, i64 %1052
  store ptr %1053, ptr %467, align 8, !tbaa !22
  %1054 = icmp eq i32 %1043, 1
  br i1 %1054, label %1055, label %1056

1055:                                             ; preds = %1048
  store i32 0, ptr %478, align 4, !tbaa !33
  store i32 0, ptr %470, align 8, !tbaa !26
  br label %1059

1056:                                             ; preds = %1048
  %1057 = icmp ne i32 %1043, 0
  %1058 = sext i1 %1057 to i32
  br label %1059

1059:                                             ; preds = %1056, %1055
  %1060 = phi i32 [ 0, %1055 ], [ %1058, %1056 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1063

1061:                                             ; preds = %938
  %1062 = zext i32 %939 to i64
  br label %1063

1063:                                             ; preds = %1061, %1059, %953, %950, %946, %503
  %1064 = phi i64 [ %1062, %1061 ], [ %928, %953 ], [ %928, %950 ], [ %928, %946 ], [ %496, %503 ], [ %1051, %1059 ]
  %1065 = phi i32 [ 0, %1061 ], [ 0, %953 ], [ -1, %950 ], [ 0, %946 ], [ %507, %503 ], [ %1060, %1059 ]
  %1066 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %487, i64 %1064), !nosanitize !20
  %1067 = extractvalue { i64, i1 } %1066, 0, !nosanitize !20
  %1068 = extractvalue { i64, i1 } %1066, 1, !nosanitize !20
  br i1 %1068, label %1069, label %1070, !prof !21, !nosanitize !20

1069:                                             ; preds = %1063
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1070:                                             ; preds = %1063
  %1071 = getelementptr inbounds nuw i8, ptr %486, i64 %1064
  %1072 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %488, i64 %1064), !nosanitize !20
  %1073 = extractvalue { i64, i1 } %1072, 0, !nosanitize !20
  %1074 = extractvalue { i64, i1 } %1072, 1, !nosanitize !20
  br i1 %1074, label %1075, label %1076, !prof !21, !nosanitize !20

1075:                                             ; preds = %1076, %1070
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1076:                                             ; preds = %1070
  %1077 = load i64, ptr %480, align 8, !tbaa !23
  %1078 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1077, i64 %1064), !nosanitize !20
  %1079 = extractvalue { i64, i1 } %1078, 1, !nosanitize !20
  br i1 %1079, label %1075, label %1080, !prof !21, !nosanitize !20

1080:                                             ; preds = %1076
  %1081 = extractvalue { i64, i1 } %1078, 0, !nosanitize !20
  store i64 %1081, ptr %480, align 8, !tbaa !23
  br label %.loopexit102

.loopexit102:                                     ; preds = %911, %905, %756, %1080, %.loopexit100, %.loopexit99
  %1082 = phi ptr [ %1071, %1080 ], [ %486, %.loopexit100 ], [ %486, %.loopexit99 ], [ %486, %756 ], [ %486, %905 ], [ %486, %911 ]
  %1083 = phi i64 [ %1067, %1080 ], [ %487, %.loopexit100 ], [ %487, %.loopexit99 ], [ %487, %756 ], [ %487, %905 ], [ %487, %911 ]
  %1084 = phi i64 [ %1073, %1080 ], [ %488, %.loopexit100 ], [ %488, %.loopexit99 ], [ %488, %756 ], [ %488, %905 ], [ %488, %911 ]
  %1085 = phi i32 [ %1065, %1080 ], [ %918, %.loopexit100 ], [ 0, %.loopexit99 ], [ 0, %756 ], [ 0, %905 ], [ 0, %911 ]
  %1086 = icmp ne i64 %1083, 0
  %1087 = icmp eq i32 %1085, 0
  %1088 = select i1 %1086, i1 %1087, i1 false
  br i1 %1088, label %485, label %1089, !llvm.loop !60

1089:                                             ; preds = %.loopexit102, %511
  %1090 = phi i64 [ %1083, %.loopexit102 ], [ %487, %511 ]
  %1091 = phi i64 [ %1084, %.loopexit102 ], [ %488, %511 ]
  %1092 = icmp eq i64 %1090, 0
  br i1 %1092, label %.loopexit118, label %1093

1093:                                             ; preds = %1089
  %1094 = load i32, ptr %468, align 8, !tbaa !24
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %.loopexit118, label %1096

1096:                                             ; preds = %1093
  %1097 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1097, align 4, !tbaa !61
  br label %.loopexit118

.loopexit118:                                     ; preds = %444, %115, %1096, %1093, %1089, %451, %.loopexit122, %.loopexit119, %101, %97
  %1098 = phi i64 [ %1091, %1096 ], [ %1091, %1093 ], [ %1091, %1089 ], [ 0, %451 ], [ 0, %.loopexit122 ], [ 0, %97 ], [ 0, %101 ], [ 0, %.loopexit119 ], [ 0, %115 ], [ 0, %444 ]
  %1099 = udiv i64 %1098, %1
  br label %1100

1100:                                             ; preds = %.loopexit118, %28, %27, %13, %6, %4
  %1101 = phi i64 [ 0, %27 ], [ 0, %4 ], [ 0, %6 ], [ 0, %13 ], [ %1099, %.loopexit118 ], [ 0, %28 ]
  ret i64 %1101
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
  br i1 %3, label %1104, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1104

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
  br i1 %14, label %1104, label %15

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
  br label %1104

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %.loopexit121, label %36

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

55:                                               ; preds = %477, %36
  %56 = phi i64 [ %478, %477 ], [ %34, %36 ]
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
  br label %477

78:                                               ; preds = %55
  %79 = load i32, ptr %39, align 8, !tbaa !24
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %.preheader1045, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %40, align 8, !tbaa !25
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %.loopexit121, label %.preheader1045

.preheader1045:                                   ; preds = %81, %78
  br label %84

84:                                               ; preds = %.backedge, %.preheader1045
  %85 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %85, label %464 [
    i32 0, label %86
    i32 1, label %322
    i32 2, label %360
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
  br label %.loopexit118

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
  br label %.loopexit118

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
  br label %319

117:                                              ; preds = %109
  %118 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %118, label %.loopexit118 [
    i32 0, label %119
    i32 -5, label %119
  ]

119:                                              ; preds = %117, %117
  %120 = load i32, ptr %39, align 8, !tbaa !24
  %121 = icmp eq i32 %120, 0
  %122 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %121, label %123, label %287

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
  br i1 %152, label %.loopexit111, label %153

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
  br i1 %175, label %.loopexit111, label %176

176:                                              ; preds = %170, %153, %129
  %177 = phi ptr [ %126, %129 ], [ %154, %153 ], [ %171, %170 ]
  %178 = phi ptr [ %127, %129 ], [ %155, %153 ], [ %172, %170 ]
  %179 = phi i32 [ %122, %129 ], [ %157, %153 ], [ %174, %170 ]
  %180 = add i32 %179, -1
  %181 = and i32 %179, 7
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %.loopexit113, label %.preheader112

.preheader112:                                    ; preds = %176, %.preheader112
  %183 = phi ptr [ %187, %.preheader112 ], [ %177, %176 ]
  %184 = phi ptr [ %188, %.preheader112 ], [ %178, %176 ]
  %185 = phi i32 [ %189, %.preheader112 ], [ 0, %176 ]
  %186 = load i8, ptr %184, align 1, !tbaa !36
  store i8 %186, ptr %183, align 1, !tbaa !36
  %187 = getelementptr inbounds nuw i8, ptr %183, i64 1
  %188 = getelementptr inbounds nuw i8, ptr %184, i64 1
  %189 = add nuw nsw i32 %185, 1
  %190 = icmp eq i32 %189, %181
  br i1 %190, label %.loopexit113.loopexit, label %.preheader112, !llvm.loop !72

.loopexit113.loopexit:                            ; preds = %.preheader112
  %191 = and i32 %179, -8
  br label %.loopexit113

.loopexit113:                                     ; preds = %.loopexit113.loopexit, %176
  %192 = phi ptr [ %177, %176 ], [ %187, %.loopexit113.loopexit ]
  %193 = phi ptr [ %178, %176 ], [ %188, %.loopexit113.loopexit ]
  %194 = phi i32 [ %179, %176 ], [ %191, %.loopexit113.loopexit ]
  %195 = icmp ult i32 %180, 7
  br i1 %195, label %.loopexit111, label %.preheader110

.preheader110:                                    ; preds = %.loopexit113, %.preheader110
  %196 = phi ptr [ %222, %.preheader110 ], [ %192, %.loopexit113 ]
  %197 = phi ptr [ %223, %.preheader110 ], [ %193, %.loopexit113 ]
  %198 = phi i32 [ %221, %.preheader110 ], [ %194, %.loopexit113 ]
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
  br i1 %224, label %.loopexit111, label %.preheader110, !llvm.loop !73

.loopexit111:                                     ; preds = %.preheader110, %.loopexit113, %170, %151
  %225 = load i32, ptr %40, align 8, !tbaa !34
  br label %226

226:                                              ; preds = %.loopexit111, %125, %123
  %227 = phi i32 [ %225, %.loopexit111 ], [ %122, %125 ], [ 0, %123 ]
  %228 = load i32, ptr %42, align 8, !tbaa !27
  %.fr81 = freeze i32 %228
  %229 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr81, i32 %227), !nosanitize !20
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
  %mv.h27 = icmp sgt i32 %.fr81, -1
  br i1 %mv.h27, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %232, %248
  %238 = phi i32 [ %249, %248 ], [ 0, %232 ]
  %239 = sub i32 %233, %238
  %240 = tail call i32 @llvm.umin.i32(i32 %239, i32 1073741824)
  %241 = load i32, ptr %49, align 4, !tbaa !46
  %242 = zext i32 %238 to i64
  %243 = getelementptr inbounds nuw i8, ptr %236, i64 %242
  %244 = zext nneg i32 %240 to i64
  %245 = tail call i64 @read(i32 noundef %241, ptr noundef %243, i64 noundef %244) #13
  %246 = trunc i64 %245 to i32
  %247 = icmp slt i32 %246, 1
  br i1 %247, label %.loopexit107, label %248

248:                                              ; preds = %.mv.ph29.mv.fast
  %249 = add i32 %238, %246
  %250 = icmp ult i32 %249, %233
  br i1 %250, label %.mv.ph29.mv.fast, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %232, %265
  %251 = phi i32 [ %266, %265 ], [ 0, %232 ]
  %252 = sub i32 %233, %251
  %253 = tail call i32 @llvm.umin.i32(i32 %252, i32 1073741824)
  %254 = load i32, ptr %49, align 4, !tbaa !46
  %255 = zext i32 %251 to i64
  %256 = getelementptr inbounds nuw i8, ptr %236, i64 %255
  %257 = zext nneg i32 %253 to i64
  %258 = tail call i64 @read(i32 noundef %254, ptr noundef %256, i64 noundef %257) #13
  %259 = trunc i64 %258 to i32
  %260 = icmp slt i32 %259, 1
  br i1 %260, label %.loopexit107, label %261

261:                                              ; preds = %.mv.ph29
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %251, i32 %259), !nosanitize !20
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !20
  br i1 %263, label %264, label %265, !prof !21, !nosanitize !20

264:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

265:                                              ; preds = %261
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !20
  %267 = icmp ult i32 %266, %233
  br i1 %267, label %.mv.ph29, label %.loopexit19, !llvm.loop !47

.loopexit107:                                     ; preds = %.mv.ph29, %.mv.ph29.mv.fast
  %.lcssa23 = phi i32 [ %246, %.mv.ph29.mv.fast ], [ %259, %.mv.ph29 ]
  %.lcssa20 = phi i32 [ %238, %.mv.ph29.mv.fast ], [ %251, %.mv.ph29 ]
  %268 = icmp slt i32 %.lcssa23, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %.loopexit107
  %270 = load i32, ptr %237, align 4, !tbaa !45
  %271 = icmp eq i32 %270, 11
  br i1 %271, label %272, label %.loopexit119

272:                                              ; preds = %269
  store i32 1, ptr %48, align 4, !tbaa !17
  %273 = icmp eq i32 %.lcssa20, 0
  br i1 %273, label %274, label %.loopexit19

274:                                              ; preds = %272
  %275 = load i32, ptr %237, align 4, !tbaa !45
  br label %.loopexit119

276:                                              ; preds = %.loopexit107
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit19

.loopexit119:                                     ; preds = %269, %274
  %277 = phi i32 [ %275, %274 ], [ %270, %269 ]
  %278 = tail call ptr @strerror(i32 noundef %277) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %278) #13
  br label %.loopexit118

.loopexit19:                                      ; preds = %265, %248, %276, %272
  %279 = phi i32 [ %.lcssa20, %276 ], [ %.lcssa20, %272 ], [ %249, %248 ], [ %266, %265 ]
  %280 = load i32, ptr %40, align 8, !tbaa !34
  %281 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %280, i32 %279), !nosanitize !20
  %282 = extractvalue { i32, i1 } %281, 1, !nosanitize !20
  br i1 %282, label %283, label %284, !prof !21, !nosanitize !20

283:                                              ; preds = %.loopexit19
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

284:                                              ; preds = %.loopexit19
  %285 = extractvalue { i32, i1 } %281, 0, !nosanitize !20
  store i32 %285, ptr %40, align 8, !tbaa !34
  %286 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %286, ptr %46, align 8, !tbaa !35
  br label %287

287:                                              ; preds = %284, %119
  %288 = phi i32 [ %285, %284 ], [ %122, %119 ]
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %319, label %290

290:                                              ; preds = %287
  %291 = load i32, ptr %48, align 4, !tbaa !17
  %292 = icmp ne i32 %291, 0
  %293 = icmp ult i32 %288, 4
  %294 = and i1 %293, %292
  br i1 %294, label %319, label %295

295:                                              ; preds = %290
  %296 = icmp ugt i32 %288, 3
  %297 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %296, label %298, label %315

298:                                              ; preds = %295
  %299 = load i8, ptr %297, align 1, !tbaa !36
  %300 = icmp eq i8 %299, 31
  br i1 %300, label %301, label %315

301:                                              ; preds = %298
  %302 = getelementptr inbounds nuw i8, ptr %297, i64 1
  %303 = load i8, ptr %302, align 1, !tbaa !36
  %304 = icmp eq i8 %303, -117
  br i1 %304, label %305, label %315

305:                                              ; preds = %301
  %306 = getelementptr inbounds nuw i8, ptr %297, i64 2
  %307 = load i8, ptr %306, align 1, !tbaa !36
  %308 = icmp eq i8 %307, 8
  br i1 %308, label %309, label %315

309:                                              ; preds = %305
  %310 = getelementptr inbounds nuw i8, ptr %297, i64 3
  %311 = load i8, ptr %310, align 1, !tbaa !36
  %312 = icmp ult i8 %311, 32
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %465

315:                                              ; preds = %309, %305, %301, %298, %295
  %316 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %316, ptr %37, align 8, !tbaa !22
  %317 = zext i32 %288 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %316, ptr align 1 %297, i64 %317, i1 false)
  %318 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %318, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %467

319:                                              ; preds = %290, %287, %112
  %320 = load i32, ptr %41, align 8, !tbaa !26
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %.loopexit120, label %465

322:                                              ; preds = %84
  %323 = load ptr, ptr %44, align 8, !tbaa !30
  %324 = load i32, ptr %42, align 8, !tbaa !27
  %325 = shl i32 %324, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %326 = tail call ptr @__errno_location() #17
  store i32 0, ptr %326, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %327

327:                                              ; preds = %343, %322
  %328 = phi i32 [ %344, %343 ], [ 0, %322 ]
  %329 = sub i32 %325, %328
  %330 = tail call i32 @llvm.umin.i32(i32 %329, i32 1073741824)
  %331 = load i32, ptr %49, align 4, !tbaa !46
  %332 = zext i32 %328 to i64
  %333 = getelementptr inbounds nuw i8, ptr %323, i64 %332
  %334 = zext nneg i32 %330 to i64
  %335 = tail call i64 @read(i32 noundef %331, ptr noundef %333, i64 noundef %334) #13
  %336 = trunc i64 %335 to i32
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %346, label %338

338:                                              ; preds = %327
  %339 = load i32, ptr %0, align 4, !tbaa !45
  %340 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %339, i32 %336), !nosanitize !20
  %341 = extractvalue { i32, i1 } %340, 1, !nosanitize !20
  br i1 %341, label %342, label %343, !prof !21, !nosanitize !20

342:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

343:                                              ; preds = %338
  %344 = extractvalue { i32, i1 } %340, 0, !nosanitize !20
  store i32 %344, ptr %0, align 4, !tbaa !45
  %345 = icmp ult i32 %344, %325
  br i1 %345, label %327, label %.loopexit117, !llvm.loop !47

346:                                              ; preds = %327
  %347 = icmp slt i32 %336, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %346
  %349 = load i32, ptr %326, align 4, !tbaa !45
  %350 = icmp eq i32 %349, 11
  br i1 %350, label %351, label %.loopexit122

351:                                              ; preds = %348
  store i32 1, ptr %48, align 4, !tbaa !17
  %352 = load i32, ptr %0, align 4, !tbaa !45
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %.loopexit117

354:                                              ; preds = %351
  %355 = load i32, ptr %326, align 4, !tbaa !45
  br label %.loopexit122

356:                                              ; preds = %346
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit117

.loopexit122:                                     ; preds = %348, %354
  %357 = phi i32 [ %355, %354 ], [ %349, %348 ]
  %358 = tail call ptr @strerror(i32 noundef %357) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %358) #13
  br label %.loopexit118

.loopexit117:                                     ; preds = %343, %356, %351
  %359 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %359, ptr %37, align 8, !tbaa !22
  br label %.loopexit120

360:                                              ; preds = %84
  %361 = load i32, ptr %42, align 8, !tbaa !27
  %362 = shl i32 %361, 1
  store i32 %362, ptr %43, align 8, !tbaa !48
  %363 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %363, ptr %45, align 8, !tbaa !49
  br label %364

364:                                              ; preds = %448, %360
  %365 = phi i32 [ 0, %360 ], [ %433, %448 ]
  %366 = load i32, ptr %40, align 8, !tbaa !34
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %432

368:                                              ; preds = %364
  %369 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %369, label %.loopexit114 [
    i32 0, label %370
    i32 -5, label %370
  ]

370:                                              ; preds = %368, %368
  %371 = load i32, ptr %39, align 8, !tbaa !24
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %428

373:                                              ; preds = %370
  %374 = load i32, ptr %42, align 8, !tbaa !27
  %.fr = freeze i32 %374
  %375 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %376 = tail call ptr @__errno_location() #17
  store i32 0, ptr %376, align 4, !tbaa !45
  %mv.h = icmp sgt i32 %.fr, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %373, %387
  %377 = phi i32 [ %388, %387 ], [ 0, %373 ]
  %378 = sub nsw i32 %.fr, %377
  %379 = tail call i32 @llvm.umin.i32(i32 %378, i32 1073741824)
  %380 = load i32, ptr %49, align 4, !tbaa !46
  %381 = zext nneg i32 %377 to i64
  %382 = getelementptr inbounds nuw i8, ptr %375, i64 %381
  %383 = zext nneg i32 %379 to i64
  %384 = tail call i64 @read(i32 noundef %380, ptr noundef %382, i64 noundef %383) #13
  %385 = trunc i64 %384 to i32
  %386 = icmp slt i32 %385, 1
  br i1 %386, label %.loopexit104, label %387

387:                                              ; preds = %.mv.ph.mv.fast
  %388 = add nuw i32 %377, %385
  %389 = icmp ult i32 %388, %.fr
  br i1 %389, label %.mv.ph.mv.fast, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %373, %404
  %390 = phi i32 [ %405, %404 ], [ 0, %373 ]
  %391 = sub i32 %.fr, %390
  %392 = tail call i32 @llvm.umin.i32(i32 %391, i32 1073741824)
  %393 = load i32, ptr %49, align 4, !tbaa !46
  %394 = zext i32 %390 to i64
  %395 = getelementptr inbounds nuw i8, ptr %375, i64 %394
  %396 = zext nneg i32 %392 to i64
  %397 = tail call i64 @read(i32 noundef %393, ptr noundef %395, i64 noundef %396) #13
  %398 = trunc i64 %397 to i32
  %399 = icmp slt i32 %398, 1
  br i1 %399, label %.loopexit104, label %400

400:                                              ; preds = %.mv.ph
  %401 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %390, i32 %398), !nosanitize !20
  %402 = extractvalue { i32, i1 } %401, 1, !nosanitize !20
  br i1 %402, label %403, label %404, !prof !21, !nosanitize !20

403:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

404:                                              ; preds = %400
  %405 = extractvalue { i32, i1 } %401, 0, !nosanitize !20
  %406 = icmp ult i32 %405, %.fr
  br i1 %406, label %.mv.ph, label %.loopexit, !llvm.loop !47

.loopexit104:                                     ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa4 = phi i32 [ %385, %.mv.ph.mv.fast ], [ %398, %.mv.ph ]
  %.lcssa1 = phi i32 [ %377, %.mv.ph.mv.fast ], [ %390, %.mv.ph ]
  %407 = icmp slt i32 %.lcssa4, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %.loopexit104
  %409 = load i32, ptr %376, align 4, !tbaa !45
  %410 = icmp eq i32 %409, 11
  br i1 %410, label %411, label %.loopexit116

411:                                              ; preds = %408
  store i32 1, ptr %48, align 4, !tbaa !17
  %412 = icmp eq i32 %.lcssa1, 0
  br i1 %412, label %413, label %.loopexit

413:                                              ; preds = %411
  %414 = load i32, ptr %376, align 4, !tbaa !45
  br label %.loopexit116

415:                                              ; preds = %.loopexit104
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit

.loopexit116:                                     ; preds = %408, %413
  %416 = phi i32 [ %414, %413 ], [ %409, %408 ]
  %417 = tail call ptr @strerror(i32 noundef %416) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %417) #13
  %418 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit114

.loopexit:                                        ; preds = %404, %387, %415, %411
  %419 = phi i32 [ %.lcssa1, %415 ], [ %.lcssa1, %411 ], [ %388, %387 ], [ %405, %404 ]
  %420 = load i32, ptr %40, align 8, !tbaa !34
  %421 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %420, i32 %419), !nosanitize !20
  %422 = extractvalue { i32, i1 } %421, 1, !nosanitize !20
  br i1 %422, label %423, label %424, !prof !21, !nosanitize !20

423:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

424:                                              ; preds = %.loopexit
  %425 = extractvalue { i32, i1 } %421, 0, !nosanitize !20
  store i32 %425, ptr %40, align 8, !tbaa !34
  %426 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %426, ptr %46, align 8, !tbaa !35
  %427 = icmp eq i32 %425, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %424, %370
  %429 = load i32, ptr %48, align 4, !tbaa !17
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %.loopexit114

431:                                              ; preds = %428
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit114

432:                                              ; preds = %424, %364
  %433 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %434 = load i32, ptr %43, align 8, !tbaa !48
  %435 = icmp ult i32 %434, %362
  br i1 %435, label %436, label %437

436:                                              ; preds = %432
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %437

437:                                              ; preds = %436, %432
  switch i32 %433, label %448 [
    i32 -2, label %438
    i32 2, label %438
    i32 -4, label %439
    i32 -3, label %440
  ]

438:                                              ; preds = %437, %437
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit114

439:                                              ; preds = %437
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit114

440:                                              ; preds = %437
  %441 = load i32, ptr %50, align 4, !tbaa !33
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %443, label %444

443:                                              ; preds = %440
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %.loopexit114

444:                                              ; preds = %440
  %445 = load ptr, ptr %51, align 8, !tbaa !50
  %446 = icmp eq ptr %445, null
  %447 = select i1 %446, ptr @.str.6, ptr %445
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %447) #13
  br label %.loopexit114

448:                                              ; preds = %437
  %449 = icmp ne i32 %434, 0
  %450 = icmp ne i32 %433, 1
  %451 = select i1 %449, i1 %450, i1 false
  br i1 %451, label %364, label %.loopexit114, !llvm.loop !51

.loopexit114:                                     ; preds = %448, %368, %444, %443, %439, %438, %431, %428, %.loopexit116
  %452 = phi i32 [ %365, %428 ], [ %365, %431 ], [ %433, %438 ], [ -4, %439 ], [ 0, %443 ], [ -3, %444 ], [ %418, %.loopexit116 ], [ %369, %368 ], [ %433, %448 ]
  %453 = load i32, ptr %43, align 8, !tbaa !48
  %454 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 %453), !nosanitize !20
  %455 = extractvalue { i32, i1 } %454, 1, !nosanitize !20
  br i1 %455, label %456, label %457, !prof !21, !nosanitize !20

456:                                              ; preds = %.loopexit114
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

457:                                              ; preds = %.loopexit114
  %458 = extractvalue { i32, i1 } %454, 0, !nosanitize !20
  store i32 %458, ptr %0, align 8, !tbaa !19
  %459 = load ptr, ptr %45, align 8, !tbaa !49
  %460 = zext i32 %458 to i64
  %461 = sub nsw i64 0, %460
  %462 = getelementptr inbounds i8, ptr %459, i64 %461
  store ptr %462, ptr %37, align 8, !tbaa !22
  switch i32 %452, label %.loopexit118 [
    i32 1, label %463
    i32 0, label %465
  ]

463:                                              ; preds = %457
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %465

464:                                              ; preds = %84
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit118

465:                                              ; preds = %463, %457, %319, %313
  %466 = load i32, ptr %0, align 8, !tbaa !19
  br label %467

467:                                              ; preds = %465, %315
  %468 = phi i32 [ %466, %465 ], [ %318, %315 ]
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %.loopexit120

470:                                              ; preds = %467
  %471 = load i32, ptr %39, align 8, !tbaa !24
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %.backedge, label %473

473:                                              ; preds = %470
  %474 = load i32, ptr %40, align 8, !tbaa !34
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %.loopexit120, label %.backedge

.backedge:                                        ; preds = %473, %470
  br label %84, !llvm.loop !52

.loopexit120:                                     ; preds = %473, %467, %319, %.loopexit117
  %476 = load i64, ptr %33, align 8, !tbaa !18
  br label %477

477:                                              ; preds = %.loopexit120, %75
  %478 = phi i64 [ %476, %.loopexit120 ], [ %77, %75 ]
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %.loopexit121, label %55, !llvm.loop !53

.loopexit121:                                     ; preds = %477, %81, %32
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

498:                                              ; preds = %.loopexit99, %.loopexit121
  %499 = phi ptr [ %2, %.loopexit121 ], [ %1084, %.loopexit99 ]
  %500 = phi i64 [ 1, %.loopexit121 ], [ %1085, %.loopexit99 ]
  %501 = phi i64 [ 0, %.loopexit121 ], [ %1086, %.loopexit99 ]
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
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

516:                                              ; preds = %506
  %517 = extractvalue { i32, i1 } %513, 0, !nosanitize !20
  store i32 %517, ptr %0, align 8, !tbaa !19
  %518 = load i32, ptr %9, align 8, !tbaa !16
  %519 = icmp ne i32 %518, 0
  %520 = sext i1 %519 to i32
  br label %1065

521:                                              ; preds = %498
  %522 = load i32, ptr %481, align 8, !tbaa !24
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %521
  %525 = load i32, ptr %482, align 8, !tbaa !25
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %.loopexit103, label %527

527:                                              ; preds = %524, %521
  %528 = load i32, ptr %483, align 8, !tbaa !26
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %.preheader929, label %530

530:                                              ; preds = %527
  %531 = load i32, ptr %484, align 8, !tbaa !27
  %532 = shl i32 %531, 1
  %533 = icmp ugt i32 %532, %503
  br i1 %533, label %.preheader929, label %932

.preheader929:                                    ; preds = %530, %527
  br label %534

534:                                              ; preds = %.preheader929, %927
  %535 = phi i32 [ %928, %927 ], [ %528, %.preheader929 ]
  switch i32 %535, label %915 [
    i32 0, label %536
    i32 1, label %772
    i32 2, label %811
  ]

536:                                              ; preds = %534
  %537 = load i32, ptr %484, align 8, !tbaa !27
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %556

539:                                              ; preds = %536
  %540 = load i32, ptr %495, align 4, !tbaa !28
  %541 = zext i32 %540 to i64
  %542 = call noalias ptr @malloc(i64 noundef %541) #16
  store ptr %542, ptr %488, align 8, !tbaa !29
  %543 = shl i32 %540, 1
  %544 = zext i32 %543 to i64
  %545 = call noalias ptr @malloc(i64 noundef %544) #16
  store ptr %545, ptr %494, align 8, !tbaa !30
  %546 = icmp eq ptr %542, null
  %547 = icmp eq ptr %545, null
  %548 = or i1 %546, %547
  br i1 %548, label %549, label %550

549:                                              ; preds = %539
  call void @free(ptr noundef %545) #13
  call void @free(ptr noundef %542) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit97

550:                                              ; preds = %539
  store i32 %540, ptr %484, align 8, !tbaa !27
  store i32 0, ptr %482, align 8, !tbaa !25
  store ptr null, ptr %487, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %496, i8 0, i64 24, i1 false)
  %551 = call i32 @inflateInit2_(ptr noundef nonnull %487, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %556, label %553

553:                                              ; preds = %550
  %554 = load ptr, ptr %494, align 8, !tbaa !30
  call void @free(ptr noundef %554) #13
  %555 = load ptr, ptr %488, align 8, !tbaa !29
  call void @free(ptr noundef %555) #13
  store i32 0, ptr %484, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit97

556:                                              ; preds = %550, %536
  %557 = load i32, ptr %497, align 8, !tbaa !32
  %558 = icmp eq i32 %557, -1
  br i1 %558, label %562, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %491, align 4, !tbaa !33
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %567

562:                                              ; preds = %559, %556
  %563 = call i32 @inflateReset(ptr noundef nonnull %487) #13
  store i32 2, ptr %483, align 8, !tbaa !26
  %564 = load i32, ptr %491, align 4, !tbaa !33
  %565 = icmp ne i32 %564, -1
  %566 = zext i1 %565 to i32
  store i32 %566, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %497, align 8, !tbaa !32
  br label %769

567:                                              ; preds = %559
  %568 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %568, label %.loopexit97 [
    i32 0, label %569
    i32 -5, label %569
  ]

569:                                              ; preds = %567, %567
  %570 = load i32, ptr %481, align 8, !tbaa !24
  %571 = icmp eq i32 %570, 0
  %572 = load i32, ptr %482, align 8, !tbaa !34
  br i1 %571, label %573, label %737

573:                                              ; preds = %569
  %574 = icmp eq i32 %572, 0
  br i1 %574, label %676, label %575

575:                                              ; preds = %573
  %576 = load ptr, ptr %488, align 8, !tbaa !29
  %577 = load ptr, ptr %487, align 8, !tbaa !35
  %578 = icmp eq ptr %577, %576
  br i1 %578, label %676, label %579

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
  %599 = add nuw nsw i64 %592, 32
  %600 = icmp eq i64 %599, %590
  br i1 %600, label %601, label %591, !llvm.loop !74

601:                                              ; preds = %591
  %602 = icmp eq i64 %590, %582
  br i1 %602, label %.loopexit90, label %603

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
  br label %613

613:                                              ; preds = %613, %610
  %614 = phi i64 [ %611, %610 ], [ %618, %613 ]
  %615 = getelementptr i8, ptr %576, i64 %614
  %616 = getelementptr i8, ptr %577, i64 %614
  %617 = load <4 x i8>, ptr %616, align 1, !tbaa !36
  store <4 x i8> %617, ptr %615, align 1, !tbaa !36
  %618 = add nuw i64 %614, 4
  %619 = icmp eq i64 %618, %612
  br i1 %619, label %620, label %613, !llvm.loop !75

620:                                              ; preds = %613
  %621 = getelementptr i8, ptr %576, i64 %612
  %622 = getelementptr i8, ptr %577, i64 %612
  %623 = trunc nuw i64 %612 to i32
  %624 = sub i32 %572, %623
  %625 = icmp eq i64 %612, %582
  br i1 %625, label %.loopexit90, label %626

626:                                              ; preds = %620, %603, %579
  %627 = phi ptr [ %576, %579 ], [ %604, %603 ], [ %621, %620 ]
  %628 = phi ptr [ %577, %579 ], [ %605, %603 ], [ %622, %620 ]
  %629 = phi i32 [ %572, %579 ], [ %607, %603 ], [ %624, %620 ]
  %630 = add i32 %629, -1
  %631 = and i32 %629, 7
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %.loopexit92, label %.preheader91

.preheader91:                                     ; preds = %626, %.preheader91
  %633 = phi ptr [ %637, %.preheader91 ], [ %627, %626 ]
  %634 = phi ptr [ %638, %.preheader91 ], [ %628, %626 ]
  %635 = phi i32 [ %639, %.preheader91 ], [ 0, %626 ]
  %636 = load i8, ptr %634, align 1, !tbaa !36
  store i8 %636, ptr %633, align 1, !tbaa !36
  %637 = getelementptr inbounds nuw i8, ptr %633, i64 1
  %638 = getelementptr inbounds nuw i8, ptr %634, i64 1
  %639 = add nuw nsw i32 %635, 1
  %640 = icmp eq i32 %639, %631
  br i1 %640, label %.loopexit92.loopexit, label %.preheader91, !llvm.loop !76

.loopexit92.loopexit:                             ; preds = %.preheader91
  %641 = and i32 %629, -8
  br label %.loopexit92

.loopexit92:                                      ; preds = %.loopexit92.loopexit, %626
  %642 = phi ptr [ %627, %626 ], [ %637, %.loopexit92.loopexit ]
  %643 = phi ptr [ %628, %626 ], [ %638, %.loopexit92.loopexit ]
  %644 = phi i32 [ %629, %626 ], [ %641, %.loopexit92.loopexit ]
  %645 = icmp ult i32 %630, 7
  br i1 %645, label %.loopexit90, label %.preheader

.preheader:                                       ; preds = %.loopexit92, %.preheader
  %646 = phi ptr [ %672, %.preheader ], [ %642, %.loopexit92 ]
  %647 = phi ptr [ %673, %.preheader ], [ %643, %.loopexit92 ]
  %648 = phi i32 [ %671, %.preheader ], [ %644, %.loopexit92 ]
  %649 = load i8, ptr %647, align 1, !tbaa !36
  store i8 %649, ptr %646, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %646, i64 1
  %651 = getelementptr inbounds nuw i8, ptr %647, i64 1
  %652 = load i8, ptr %651, align 1, !tbaa !36
  store i8 %652, ptr %650, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %646, i64 2
  %654 = getelementptr inbounds nuw i8, ptr %647, i64 2
  %655 = load i8, ptr %654, align 1, !tbaa !36
  store i8 %655, ptr %653, align 1, !tbaa !36
  %656 = getelementptr inbounds nuw i8, ptr %646, i64 3
  %657 = getelementptr inbounds nuw i8, ptr %647, i64 3
  %658 = load i8, ptr %657, align 1, !tbaa !36
  store i8 %658, ptr %656, align 1, !tbaa !36
  %659 = getelementptr inbounds nuw i8, ptr %646, i64 4
  %660 = getelementptr inbounds nuw i8, ptr %647, i64 4
  %661 = load i8, ptr %660, align 1, !tbaa !36
  store i8 %661, ptr %659, align 1, !tbaa !36
  %662 = getelementptr inbounds nuw i8, ptr %646, i64 5
  %663 = getelementptr inbounds nuw i8, ptr %647, i64 5
  %664 = load i8, ptr %663, align 1, !tbaa !36
  store i8 %664, ptr %662, align 1, !tbaa !36
  %665 = getelementptr inbounds nuw i8, ptr %646, i64 6
  %666 = getelementptr inbounds nuw i8, ptr %647, i64 6
  %667 = load i8, ptr %666, align 1, !tbaa !36
  store i8 %667, ptr %665, align 1, !tbaa !36
  %668 = getelementptr inbounds nuw i8, ptr %646, i64 7
  %669 = getelementptr inbounds nuw i8, ptr %647, i64 7
  %670 = load i8, ptr %669, align 1, !tbaa !36
  store i8 %670, ptr %668, align 1, !tbaa !36
  %671 = add i32 %648, -8
  %672 = getelementptr inbounds nuw i8, ptr %646, i64 8
  %673 = getelementptr inbounds nuw i8, ptr %647, i64 8
  %674 = icmp eq i32 %671, 0
  br i1 %674, label %.loopexit90, label %.preheader, !llvm.loop !77

.loopexit90:                                      ; preds = %.preheader, %.loopexit92, %620, %601
  %675 = load i32, ptr %482, align 8, !tbaa !34
  br label %676

676:                                              ; preds = %.loopexit90, %575, %573
  %677 = phi i32 [ %675, %.loopexit90 ], [ %572, %575 ], [ 0, %573 ]
  %678 = load i32, ptr %484, align 8, !tbaa !27
  %.fr83 = freeze i32 %678
  %679 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr83, i32 %677), !nosanitize !20
  %680 = extractvalue { i32, i1 } %679, 1, !nosanitize !20
  br i1 %680, label %681, label %682, !prof !21, !nosanitize !20

681:                                              ; preds = %676
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

682:                                              ; preds = %676
  %683 = extractvalue { i32, i1 } %679, 0, !nosanitize !20
  %684 = load ptr, ptr %488, align 8, !tbaa !29
  %685 = zext i32 %677 to i64
  %686 = getelementptr inbounds nuw i8, ptr %684, i64 %685
  store i32 0, ptr %489, align 4, !tbaa !17
  %687 = tail call ptr @__errno_location() #17
  store i32 0, ptr %687, align 4, !tbaa !45
  %mv.h38 = icmp sgt i32 %.fr83, -1
  br i1 %mv.h38, label %.mv.ph40.mv.fast, label %.mv.ph40

.mv.ph40.mv.fast:                                 ; preds = %682, %698
  %688 = phi i32 [ %699, %698 ], [ 0, %682 ]
  %689 = sub i32 %683, %688
  %690 = call i32 @llvm.umin.i32(i32 %689, i32 1073741824)
  %691 = load i32, ptr %490, align 4, !tbaa !46
  %692 = zext i32 %688 to i64
  %693 = getelementptr inbounds nuw i8, ptr %686, i64 %692
  %694 = zext nneg i32 %690 to i64
  %695 = call i64 @read(i32 noundef %691, ptr noundef %693, i64 noundef %694) #13
  %696 = trunc i64 %695 to i32
  %697 = icmp slt i32 %696, 1
  br i1 %697, label %.loopexit87, label %698

698:                                              ; preds = %.mv.ph40.mv.fast
  %699 = add i32 %688, %696
  %700 = icmp ult i32 %699, %683
  br i1 %700, label %.mv.ph40.mv.fast, label %.loopexit30, !llvm.loop !47

.mv.ph40:                                         ; preds = %682, %715
  %701 = phi i32 [ %716, %715 ], [ 0, %682 ]
  %702 = sub i32 %683, %701
  %703 = call i32 @llvm.umin.i32(i32 %702, i32 1073741824)
  %704 = load i32, ptr %490, align 4, !tbaa !46
  %705 = zext i32 %701 to i64
  %706 = getelementptr inbounds nuw i8, ptr %686, i64 %705
  %707 = zext nneg i32 %703 to i64
  %708 = call i64 @read(i32 noundef %704, ptr noundef %706, i64 noundef %707) #13
  %709 = trunc i64 %708 to i32
  %710 = icmp slt i32 %709, 1
  br i1 %710, label %.loopexit87, label %711

711:                                              ; preds = %.mv.ph40
  %712 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %701, i32 %709), !nosanitize !20
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !20
  br i1 %713, label %714, label %715, !prof !21, !nosanitize !20

714:                                              ; preds = %711
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

715:                                              ; preds = %711
  %716 = extractvalue { i32, i1 } %712, 0, !nosanitize !20
  %717 = icmp ult i32 %716, %683
  br i1 %717, label %.mv.ph40, label %.loopexit30, !llvm.loop !47

.loopexit87:                                      ; preds = %.mv.ph40, %.mv.ph40.mv.fast
  %.lcssa34 = phi i32 [ %696, %.mv.ph40.mv.fast ], [ %709, %.mv.ph40 ]
  %.lcssa31 = phi i32 [ %688, %.mv.ph40.mv.fast ], [ %701, %.mv.ph40 ]
  %718 = icmp slt i32 %.lcssa34, 0
  br i1 %718, label %719, label %726

719:                                              ; preds = %.loopexit87
  %720 = load i32, ptr %687, align 4, !tbaa !45
  %721 = icmp eq i32 %720, 11
  br i1 %721, label %722, label %.loopexit98

722:                                              ; preds = %719
  store i32 1, ptr %489, align 4, !tbaa !17
  %723 = icmp eq i32 %.lcssa31, 0
  br i1 %723, label %724, label %.loopexit30

724:                                              ; preds = %722
  %725 = load i32, ptr %687, align 4, !tbaa !45
  br label %.loopexit98

726:                                              ; preds = %.loopexit87
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %.loopexit30

.loopexit98:                                      ; preds = %719, %724
  %727 = phi i32 [ %725, %724 ], [ %720, %719 ]
  %728 = call ptr @strerror(i32 noundef %727) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %728) #13
  br label %.loopexit97

.loopexit30:                                      ; preds = %715, %698, %726, %722
  %729 = phi i32 [ %.lcssa31, %726 ], [ %.lcssa31, %722 ], [ %699, %698 ], [ %716, %715 ]
  %730 = load i32, ptr %482, align 8, !tbaa !34
  %731 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %730, i32 %729), !nosanitize !20
  %732 = extractvalue { i32, i1 } %731, 1, !nosanitize !20
  br i1 %732, label %733, label %734, !prof !21, !nosanitize !20

733:                                              ; preds = %.loopexit30
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

734:                                              ; preds = %.loopexit30
  %735 = extractvalue { i32, i1 } %731, 0, !nosanitize !20
  store i32 %735, ptr %482, align 8, !tbaa !34
  %736 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %736, ptr %487, align 8, !tbaa !35
  br label %737

737:                                              ; preds = %734, %569
  %738 = phi i32 [ %735, %734 ], [ %572, %569 ]
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %769, label %740

740:                                              ; preds = %737
  %741 = load i32, ptr %489, align 4, !tbaa !17
  %742 = icmp ne i32 %741, 0
  %743 = icmp ult i32 %738, 4
  %744 = and i1 %743, %742
  br i1 %744, label %769, label %745

745:                                              ; preds = %740
  %746 = icmp ugt i32 %738, 3
  %747 = load ptr, ptr %487, align 8, !tbaa !35
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
  %764 = call i32 @inflateReset(ptr noundef nonnull %487) #13
  store i32 2, ptr %483, align 8, !tbaa !26
  store i32 1, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %497, align 8, !tbaa !32
  br label %916

765:                                              ; preds = %759, %755, %751, %748, %745
  %766 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %766, ptr %480, align 8, !tbaa !22
  %767 = zext i32 %738 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %766, ptr align 1 %747, i64 %767, i1 false)
  %768 = load i32, ptr %482, align 8, !tbaa !34
  store i32 %768, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %483, align 8, !tbaa !26
  br label %918

769:                                              ; preds = %740, %737, %562
  %770 = load i32, ptr %483, align 8, !tbaa !26
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %.loopexit99, label %916

772:                                              ; preds = %534
  %773 = load ptr, ptr %494, align 8, !tbaa !30
  %774 = load i32, ptr %484, align 8, !tbaa !27
  %775 = shl i32 %774, 1
  store i32 0, ptr %489, align 4, !tbaa !17
  %776 = tail call ptr @__errno_location() #17
  store i32 0, ptr %776, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %777

777:                                              ; preds = %793, %772
  %778 = phi i32 [ %794, %793 ], [ 0, %772 ]
  %779 = sub i32 %775, %778
  %780 = call i32 @llvm.umin.i32(i32 %779, i32 1073741824)
  %781 = load i32, ptr %490, align 4, !tbaa !46
  %782 = zext i32 %778 to i64
  %783 = getelementptr inbounds nuw i8, ptr %773, i64 %782
  %784 = zext nneg i32 %780 to i64
  %785 = call i64 @read(i32 noundef %781, ptr noundef %783, i64 noundef %784) #13
  %786 = trunc i64 %785 to i32
  %787 = icmp slt i32 %786, 1
  br i1 %787, label %796, label %788

788:                                              ; preds = %777
  %789 = load i32, ptr %0, align 4, !tbaa !45
  %790 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %789, i32 %786), !nosanitize !20
  %791 = extractvalue { i32, i1 } %790, 1, !nosanitize !20
  br i1 %791, label %792, label %793, !prof !21, !nosanitize !20

792:                                              ; preds = %788
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

793:                                              ; preds = %788
  %794 = extractvalue { i32, i1 } %790, 0, !nosanitize !20
  store i32 %794, ptr %0, align 4, !tbaa !45
  %795 = icmp ult i32 %794, %775
  br i1 %795, label %777, label %.loopexit96, !llvm.loop !47

796:                                              ; preds = %777
  %797 = icmp slt i32 %786, 0
  br i1 %797, label %798, label %806

798:                                              ; preds = %796
  %799 = load i32, ptr %776, align 4, !tbaa !45
  %800 = icmp eq i32 %799, 11
  br i1 %800, label %801, label %807

801:                                              ; preds = %798
  store i32 1, ptr %489, align 4, !tbaa !17
  %802 = load i32, ptr %0, align 4, !tbaa !45
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %.loopexit96

804:                                              ; preds = %801
  %805 = load i32, ptr %776, align 4, !tbaa !45
  br label %807

806:                                              ; preds = %796
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %.loopexit96

807:                                              ; preds = %804, %798
  %808 = phi i32 [ %805, %804 ], [ %799, %798 ]
  %809 = call ptr @strerror(i32 noundef %808) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %809) #13
  br label %.loopexit97

.loopexit96:                                      ; preds = %793, %806, %801
  %810 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %810, ptr %480, align 8, !tbaa !22
  br label %.loopexit99

811:                                              ; preds = %534
  %812 = load i32, ptr %484, align 8, !tbaa !27
  %813 = shl i32 %812, 1
  store i32 %813, ptr %485, align 8, !tbaa !48
  %814 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %814, ptr %486, align 8, !tbaa !49
  br label %815

815:                                              ; preds = %899, %811
  %816 = phi i32 [ 0, %811 ], [ %884, %899 ]
  %817 = load i32, ptr %482, align 8, !tbaa !34
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %819, label %883

819:                                              ; preds = %815
  %820 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %820, label %.loopexit93 [
    i32 0, label %821
    i32 -5, label %821
  ]

821:                                              ; preds = %819, %819
  %822 = load i32, ptr %481, align 8, !tbaa !24
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %879

824:                                              ; preds = %821
  %825 = load i32, ptr %484, align 8, !tbaa !27
  %.fr82 = freeze i32 %825
  %826 = load ptr, ptr %488, align 8, !tbaa !29
  store i32 0, ptr %489, align 4, !tbaa !17
  %827 = tail call ptr @__errno_location() #17
  store i32 0, ptr %827, align 4, !tbaa !45
  %mv.h16 = icmp sgt i32 %.fr82, -1
  br i1 %mv.h16, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %824, %838
  %828 = phi i32 [ %839, %838 ], [ 0, %824 ]
  %829 = sub nsw i32 %.fr82, %828
  %830 = call i32 @llvm.umin.i32(i32 %829, i32 1073741824)
  %831 = load i32, ptr %490, align 4, !tbaa !46
  %832 = zext nneg i32 %828 to i64
  %833 = getelementptr inbounds nuw i8, ptr %826, i64 %832
  %834 = zext nneg i32 %830 to i64
  %835 = call i64 @read(i32 noundef %831, ptr noundef %833, i64 noundef %834) #13
  %836 = trunc i64 %835 to i32
  %837 = icmp slt i32 %836, 1
  br i1 %837, label %.loopexit84, label %838

838:                                              ; preds = %.mv.ph18.mv.fast
  %839 = add nuw i32 %828, %836
  %840 = icmp ult i32 %839, %.fr82
  br i1 %840, label %.mv.ph18.mv.fast, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %824, %855
  %841 = phi i32 [ %856, %855 ], [ 0, %824 ]
  %842 = sub i32 %.fr82, %841
  %843 = call i32 @llvm.umin.i32(i32 %842, i32 1073741824)
  %844 = load i32, ptr %490, align 4, !tbaa !46
  %845 = zext i32 %841 to i64
  %846 = getelementptr inbounds nuw i8, ptr %826, i64 %845
  %847 = zext nneg i32 %843 to i64
  %848 = call i64 @read(i32 noundef %844, ptr noundef %846, i64 noundef %847) #13
  %849 = trunc i64 %848 to i32
  %850 = icmp slt i32 %849, 1
  br i1 %850, label %.loopexit84, label %851

851:                                              ; preds = %.mv.ph18
  %852 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %841, i32 %849), !nosanitize !20
  %853 = extractvalue { i32, i1 } %852, 1, !nosanitize !20
  br i1 %853, label %854, label %855, !prof !21, !nosanitize !20

854:                                              ; preds = %851
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

855:                                              ; preds = %851
  %856 = extractvalue { i32, i1 } %852, 0, !nosanitize !20
  %857 = icmp ult i32 %856, %.fr82
  br i1 %857, label %.mv.ph18, label %.loopexit8, !llvm.loop !47

.loopexit84:                                      ; preds = %.mv.ph18, %.mv.ph18.mv.fast
  %.lcssa12 = phi i32 [ %836, %.mv.ph18.mv.fast ], [ %849, %.mv.ph18 ]
  %.lcssa9 = phi i32 [ %828, %.mv.ph18.mv.fast ], [ %841, %.mv.ph18 ]
  %858 = icmp slt i32 %.lcssa12, 0
  br i1 %858, label %859, label %866

859:                                              ; preds = %.loopexit84
  %860 = load i32, ptr %827, align 4, !tbaa !45
  %861 = icmp eq i32 %860, 11
  br i1 %861, label %862, label %.loopexit94

862:                                              ; preds = %859
  store i32 1, ptr %489, align 4, !tbaa !17
  %863 = icmp eq i32 %.lcssa9, 0
  br i1 %863, label %864, label %.loopexit8

864:                                              ; preds = %862
  %865 = load i32, ptr %827, align 4, !tbaa !45
  br label %.loopexit94

866:                                              ; preds = %.loopexit84
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %.loopexit8

.loopexit94:                                      ; preds = %859, %864
  %867 = phi i32 [ %865, %864 ], [ %860, %859 ]
  %868 = call ptr @strerror(i32 noundef %867) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %868) #13
  %869 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit93

.loopexit8:                                       ; preds = %855, %838, %866, %862
  %870 = phi i32 [ %.lcssa9, %866 ], [ %.lcssa9, %862 ], [ %839, %838 ], [ %856, %855 ]
  %871 = load i32, ptr %482, align 8, !tbaa !34
  %872 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %871, i32 %870), !nosanitize !20
  %873 = extractvalue { i32, i1 } %872, 1, !nosanitize !20
  br i1 %873, label %874, label %875, !prof !21, !nosanitize !20

874:                                              ; preds = %.loopexit8
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

875:                                              ; preds = %.loopexit8
  %876 = extractvalue { i32, i1 } %872, 0, !nosanitize !20
  store i32 %876, ptr %482, align 8, !tbaa !34
  %877 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %877, ptr %487, align 8, !tbaa !35
  %878 = icmp eq i32 %876, 0
  br i1 %878, label %879, label %883

879:                                              ; preds = %875, %821
  %880 = load i32, ptr %489, align 4, !tbaa !17
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %.loopexit93

882:                                              ; preds = %879
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit93

883:                                              ; preds = %875, %815
  %884 = call i32 @inflate(ptr noundef nonnull %487, i32 noundef 0) #13
  %885 = load i32, ptr %485, align 8, !tbaa !48
  %886 = icmp ult i32 %885, %813
  br i1 %886, label %887, label %888

887:                                              ; preds = %883
  store i32 0, ptr %491, align 4, !tbaa !33
  br label %888

888:                                              ; preds = %887, %883
  switch i32 %884, label %899 [
    i32 -2, label %889
    i32 2, label %889
    i32 -4, label %890
    i32 -3, label %891
  ]

889:                                              ; preds = %888, %888
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit93

890:                                              ; preds = %888
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit93

891:                                              ; preds = %888
  %892 = load i32, ptr %491, align 4, !tbaa !33
  %893 = icmp eq i32 %892, 1
  br i1 %893, label %894, label %895

894:                                              ; preds = %891
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %481, align 8, !tbaa !24
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %.loopexit93

895:                                              ; preds = %891
  %896 = load ptr, ptr %492, align 8, !tbaa !50
  %897 = icmp eq ptr %896, null
  %898 = select i1 %897, ptr @.str.6, ptr %896
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %898) #13
  br label %.loopexit93

899:                                              ; preds = %888
  %900 = icmp ne i32 %885, 0
  %901 = icmp ne i32 %884, 1
  %902 = select i1 %900, i1 %901, i1 false
  br i1 %902, label %815, label %.loopexit93, !llvm.loop !51

.loopexit93:                                      ; preds = %899, %819, %895, %894, %890, %889, %882, %879, %.loopexit94
  %903 = phi i32 [ %816, %879 ], [ %816, %882 ], [ %884, %889 ], [ -4, %890 ], [ 0, %894 ], [ -3, %895 ], [ %869, %.loopexit94 ], [ %884, %899 ], [ %820, %819 ]
  %904 = load i32, ptr %485, align 8, !tbaa !48
  %905 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %813, i32 %904), !nosanitize !20
  %906 = extractvalue { i32, i1 } %905, 1, !nosanitize !20
  br i1 %906, label %907, label %908, !prof !21, !nosanitize !20

907:                                              ; preds = %.loopexit93
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

908:                                              ; preds = %.loopexit93
  %909 = extractvalue { i32, i1 } %905, 0, !nosanitize !20
  store i32 %909, ptr %0, align 8, !tbaa !19
  %910 = load ptr, ptr %486, align 8, !tbaa !49
  %911 = zext i32 %909 to i64
  %912 = sub nsw i64 0, %911
  %913 = getelementptr inbounds i8, ptr %910, i64 %912
  store ptr %913, ptr %480, align 8, !tbaa !22
  switch i32 %903, label %.loopexit97 [
    i32 1, label %914
    i32 0, label %916
  ]

914:                                              ; preds = %908
  store i32 0, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %916

915:                                              ; preds = %534
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit97

916:                                              ; preds = %914, %908, %769, %763
  %917 = load i32, ptr %0, align 8, !tbaa !19
  br label %918

918:                                              ; preds = %916, %765
  %919 = phi i32 [ %917, %916 ], [ %768, %765 ]
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %921, label %.loopexit99

921:                                              ; preds = %918
  %922 = load i32, ptr %481, align 8, !tbaa !24
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %927, label %924

924:                                              ; preds = %921
  %925 = load i32, ptr %482, align 8, !tbaa !34
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %.loopexit99, label %927

927:                                              ; preds = %924, %921
  %928 = load i32, ptr %483, align 8, !tbaa !26
  br label %534, !llvm.loop !52

.loopexit97:                                      ; preds = %908, %567, %915, %807, %.loopexit98, %553, %549
  %929 = load i32, ptr %0, align 8, !tbaa !19
  %930 = icmp eq i32 %929, 0
  %931 = sext i1 %930 to i32
  br label %.loopexit99

932:                                              ; preds = %530
  %933 = icmp eq i32 %528, 1
  br i1 %933, label %934, label %967

934:                                              ; preds = %932
  store i32 0, ptr %489, align 4, !tbaa !17
  %935 = tail call ptr @__errno_location() #17
  store i32 0, ptr %935, align 4, !tbaa !45
  br label %936

936:                                              ; preds = %951, %934
  %937 = phi i32 [ 0, %934 ], [ %952, %951 ]
  %938 = sub i32 %503, %937
  %939 = call i32 @llvm.umin.i32(i32 %938, i32 1073741824)
  %940 = load i32, ptr %490, align 4, !tbaa !46
  %941 = zext i32 %937 to i64
  %942 = getelementptr inbounds nuw i8, ptr %499, i64 %941
  %943 = zext nneg i32 %939 to i64
  %944 = call i64 @read(i32 noundef %940, ptr noundef %942, i64 noundef %943) #13
  %945 = trunc i64 %944 to i32
  %946 = icmp slt i32 %945, 1
  br i1 %946, label %954, label %947

947:                                              ; preds = %936
  %948 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %937, i32 %945), !nosanitize !20
  %949 = extractvalue { i32, i1 } %948, 1, !nosanitize !20
  br i1 %949, label %950, label %951, !prof !21, !nosanitize !20

950:                                              ; preds = %947
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

951:                                              ; preds = %947
  %952 = extractvalue { i32, i1 } %948, 0, !nosanitize !20
  %953 = icmp ult i32 %952, %503
  br i1 %953, label %936, label %1063, !llvm.loop !47

954:                                              ; preds = %936
  %955 = icmp slt i32 %945, 0
  br i1 %955, label %956, label %966

956:                                              ; preds = %954
  %957 = load i32, ptr %935, align 4, !tbaa !45
  %958 = icmp eq i32 %957, 11
  br i1 %958, label %959, label %963

959:                                              ; preds = %956
  store i32 1, ptr %489, align 4, !tbaa !17
  %960 = icmp eq i32 %937, 0
  br i1 %960, label %961, label %1065

961:                                              ; preds = %959
  %962 = load i32, ptr %935, align 4, !tbaa !45
  br label %963

963:                                              ; preds = %961, %956
  %964 = phi i32 [ %962, %961 ], [ %957, %956 ]
  %965 = call ptr @strerror(i32 noundef %964) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %965) #13
  br label %1065

966:                                              ; preds = %954
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %1065

967:                                              ; preds = %932
  store i32 %503, ptr %485, align 8, !tbaa !58
  store ptr %499, ptr %486, align 8, !tbaa !59
  br label %968

968:                                              ; preds = %1041, %967
  %969 = phi i32 [ 0, %967 ], [ %1026, %1041 ]
  %970 = load i32, ptr %482, align 8, !tbaa !34
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %1025

972:                                              ; preds = %968
  %973 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %973, label %.loopexit100 [
    i32 0, label %974
    i32 -5, label %974
  ]

974:                                              ; preds = %972, %972
  %975 = load i32, ptr %481, align 8, !tbaa !24
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %977, label %1021

977:                                              ; preds = %974
  %978 = load i32, ptr %484, align 8, !tbaa !27
  %979 = load ptr, ptr %488, align 8, !tbaa !29
  store i32 0, ptr %489, align 4, !tbaa !17
  %980 = tail call ptr @__errno_location() #17
  store i32 0, ptr %980, align 4, !tbaa !45
  br label %981

981:                                              ; preds = %996, %977
  %982 = phi i32 [ 0, %977 ], [ %997, %996 ]
  %983 = sub i32 %978, %982
  %984 = call i32 @llvm.umin.i32(i32 %983, i32 1073741824)
  %985 = load i32, ptr %490, align 4, !tbaa !46
  %986 = zext i32 %982 to i64
  %987 = getelementptr inbounds nuw i8, ptr %979, i64 %986
  %988 = zext nneg i32 %984 to i64
  %989 = call i64 @read(i32 noundef %985, ptr noundef %987, i64 noundef %988) #13
  %990 = trunc i64 %989 to i32
  %991 = icmp slt i32 %990, 1
  br i1 %991, label %999, label %992

992:                                              ; preds = %981
  %993 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %982, i32 %990), !nosanitize !20
  %994 = extractvalue { i32, i1 } %993, 1, !nosanitize !20
  br i1 %994, label %995, label %996, !prof !21, !nosanitize !20

995:                                              ; preds = %992
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

996:                                              ; preds = %992
  %997 = extractvalue { i32, i1 } %993, 0, !nosanitize !20
  %998 = icmp ult i32 %997, %978
  br i1 %998, label %981, label %.loopexit95, !llvm.loop !47

999:                                              ; preds = %981
  %1000 = icmp slt i32 %990, 0
  br i1 %1000, label %1001, label %1008

1001:                                             ; preds = %999
  %1002 = load i32, ptr %980, align 4, !tbaa !45
  %1003 = icmp eq i32 %1002, 11
  br i1 %1003, label %1004, label %.loopexit102

1004:                                             ; preds = %1001
  store i32 1, ptr %489, align 4, !tbaa !17
  %1005 = icmp eq i32 %982, 0
  br i1 %1005, label %1006, label %.loopexit95

1006:                                             ; preds = %1004
  %1007 = load i32, ptr %980, align 4, !tbaa !45
  br label %.loopexit102

1008:                                             ; preds = %999
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %.loopexit95

.loopexit102:                                     ; preds = %1001, %1006
  %1009 = phi i32 [ %1007, %1006 ], [ %1002, %1001 ]
  %1010 = call ptr @strerror(i32 noundef %1009) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1010) #13
  %1011 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit100

.loopexit95:                                      ; preds = %996, %1008, %1004
  %1012 = phi i32 [ %982, %1008 ], [ %982, %1004 ], [ %997, %996 ]
  %1013 = load i32, ptr %482, align 8, !tbaa !34
  %1014 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1013, i32 %1012), !nosanitize !20
  %1015 = extractvalue { i32, i1 } %1014, 1, !nosanitize !20
  br i1 %1015, label %1016, label %1017, !prof !21, !nosanitize !20

1016:                                             ; preds = %.loopexit95
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1017:                                             ; preds = %.loopexit95
  %1018 = extractvalue { i32, i1 } %1014, 0, !nosanitize !20
  store i32 %1018, ptr %482, align 8, !tbaa !34
  %1019 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %1019, ptr %487, align 8, !tbaa !35
  %1020 = icmp eq i32 %1018, 0
  br i1 %1020, label %1021, label %1025

1021:                                             ; preds = %1017, %974
  %1022 = load i32, ptr %489, align 4, !tbaa !17
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %.loopexit100

1024:                                             ; preds = %1021
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit100

1025:                                             ; preds = %1017, %968
  %1026 = call i32 @inflate(ptr noundef nonnull %487, i32 noundef 0) #13
  %1027 = load i32, ptr %485, align 8, !tbaa !48
  %1028 = icmp ult i32 %1027, %503
  br i1 %1028, label %1029, label %1030

1029:                                             ; preds = %1025
  store i32 0, ptr %491, align 4, !tbaa !33
  br label %1030

1030:                                             ; preds = %1029, %1025
  switch i32 %1026, label %1041 [
    i32 -2, label %1031
    i32 2, label %1031
    i32 -4, label %1032
    i32 -3, label %1033
  ]

1031:                                             ; preds = %1030, %1030
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit100

1032:                                             ; preds = %1030
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit100

1033:                                             ; preds = %1030
  %1034 = load i32, ptr %491, align 4, !tbaa !33
  %1035 = icmp eq i32 %1034, 1
  br i1 %1035, label %1036, label %1037

1036:                                             ; preds = %1033
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %481, align 8, !tbaa !24
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %.loopexit100

1037:                                             ; preds = %1033
  %1038 = load ptr, ptr %492, align 8, !tbaa !50
  %1039 = icmp eq ptr %1038, null
  %1040 = select i1 %1039, ptr @.str.6, ptr %1038
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1040) #13
  br label %.loopexit100

1041:                                             ; preds = %1030
  %1042 = icmp ne i32 %1027, 0
  %1043 = icmp ne i32 %1026, 1
  %1044 = select i1 %1042, i1 %1043, i1 false
  br i1 %1044, label %968, label %.loopexit100, !llvm.loop !51

.loopexit100:                                     ; preds = %1041, %972, %1037, %1036, %1032, %1031, %1024, %1021, %.loopexit102
  %1045 = phi i32 [ %969, %1021 ], [ %969, %1024 ], [ %1026, %1031 ], [ -4, %1032 ], [ 0, %1036 ], [ -3, %1037 ], [ %1011, %.loopexit102 ], [ %973, %972 ], [ %1026, %1041 ]
  %1046 = load i32, ptr %485, align 8, !tbaa !48
  %1047 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %1046), !nosanitize !20
  %1048 = extractvalue { i32, i1 } %1047, 1, !nosanitize !20
  br i1 %1048, label %1049, label %1050, !prof !21, !nosanitize !20

1049:                                             ; preds = %.loopexit100
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1050:                                             ; preds = %.loopexit100
  %1051 = extractvalue { i32, i1 } %1047, 0, !nosanitize !20
  %1052 = load ptr, ptr %486, align 8, !tbaa !49
  %1053 = zext i32 %1051 to i64
  %1054 = sub nsw i64 0, %1053
  %1055 = getelementptr inbounds i8, ptr %1052, i64 %1054
  store ptr %1055, ptr %480, align 8, !tbaa !22
  %1056 = icmp eq i32 %1045, 1
  br i1 %1056, label %1057, label %1058

1057:                                             ; preds = %1050
  store i32 0, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %1061

1058:                                             ; preds = %1050
  %1059 = icmp ne i32 %1045, 0
  %1060 = sext i1 %1059 to i32
  br label %1061

1061:                                             ; preds = %1058, %1057
  %1062 = phi i32 [ 0, %1057 ], [ %1060, %1058 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1065

1063:                                             ; preds = %951
  %1064 = zext i32 %952 to i64
  br label %1065

1065:                                             ; preds = %1063, %1061, %966, %963, %959, %516
  %1066 = phi i64 [ %1064, %1063 ], [ %941, %966 ], [ %941, %963 ], [ %941, %959 ], [ %509, %516 ], [ %1053, %1061 ]
  %1067 = phi i32 [ 0, %1063 ], [ 0, %966 ], [ -1, %963 ], [ 0, %959 ], [ %520, %516 ], [ %1062, %1061 ]
  %1068 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %500, i64 %1066), !nosanitize !20
  %1069 = extractvalue { i64, i1 } %1068, 0, !nosanitize !20
  %1070 = extractvalue { i64, i1 } %1068, 1, !nosanitize !20
  br i1 %1070, label %1071, label %1072, !prof !21, !nosanitize !20

1071:                                             ; preds = %1065
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1072:                                             ; preds = %1065
  %1073 = getelementptr inbounds nuw i8, ptr %499, i64 %1066
  %1074 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %501, i64 %1066), !nosanitize !20
  %1075 = extractvalue { i64, i1 } %1074, 0, !nosanitize !20
  %1076 = extractvalue { i64, i1 } %1074, 1, !nosanitize !20
  br i1 %1076, label %1077, label %1078, !prof !21, !nosanitize !20

1077:                                             ; preds = %1078, %1072
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1078:                                             ; preds = %1072
  %1079 = load i64, ptr %493, align 8, !tbaa !23
  %1080 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1079, i64 %1066), !nosanitize !20
  %1081 = extractvalue { i64, i1 } %1080, 1, !nosanitize !20
  br i1 %1081, label %1077, label %1082, !prof !21, !nosanitize !20

1082:                                             ; preds = %1078
  %1083 = extractvalue { i64, i1 } %1080, 0, !nosanitize !20
  store i64 %1083, ptr %493, align 8, !tbaa !23
  br label %.loopexit99

.loopexit99:                                      ; preds = %924, %918, %769, %1082, %.loopexit97, %.loopexit96
  %1084 = phi ptr [ %1073, %1082 ], [ %499, %.loopexit97 ], [ %499, %.loopexit96 ], [ %499, %769 ], [ %499, %918 ], [ %499, %924 ]
  %1085 = phi i64 [ %1069, %1082 ], [ %500, %.loopexit97 ], [ %500, %.loopexit96 ], [ %500, %769 ], [ %500, %918 ], [ %500, %924 ]
  %1086 = phi i64 [ %1075, %1082 ], [ %501, %.loopexit97 ], [ %501, %.loopexit96 ], [ %501, %769 ], [ %501, %918 ], [ %501, %924 ]
  %1087 = phi i32 [ %1067, %1082 ], [ %931, %.loopexit97 ], [ 0, %.loopexit96 ], [ 0, %769 ], [ 0, %918 ], [ 0, %924 ]
  %1088 = icmp ne i64 %1085, 0
  %1089 = icmp eq i32 %1087, 0
  %1090 = select i1 %1088, i1 %1089, i1 false
  br i1 %1090, label %498, label %1091, !llvm.loop !60

1091:                                             ; preds = %.loopexit99
  %1092 = icmp eq i64 %1085, 0
  br i1 %1092, label %1098, label %1093

1093:                                             ; preds = %1091
  %1094 = load i32, ptr %481, align 8, !tbaa !24
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1098, label %.loopexit103

.loopexit103:                                     ; preds = %524, %1093
  %1096 = phi i64 [ %1086, %1093 ], [ %501, %524 ]
  %1097 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1097, align 4, !tbaa !61
  br label %1098

1098:                                             ; preds = %.loopexit103, %1093, %1091
  %1099 = phi i64 [ %1096, %.loopexit103 ], [ %1086, %1093 ], [ %1086, %1091 ]
  %1100 = freeze i64 %1099
  %1101 = icmp eq i64 %1100, 0
  %1102 = load i8, ptr %2, align 1
  %1103 = zext i8 %1102 to i32
  br i1 %1101, label %.loopexit118, label %1104

.loopexit118:                                     ; preds = %457, %117, %1098, %464, %.loopexit122, %.loopexit119, %103, %99
  br label %1104

1104:                                             ; preds = %.loopexit118, %1098, %25, %11, %4, %1
  %1105 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %.loopexit118 ], [ %1103, %1098 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %1105
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
  br i1 %3, label %1104, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1104

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
  br i1 %14, label %1104, label %15

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
  br label %1104

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %.loopexit121, label %36

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

55:                                               ; preds = %477, %36
  %56 = phi i64 [ %478, %477 ], [ %34, %36 ]
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
  br label %477

78:                                               ; preds = %55
  %79 = load i32, ptr %39, align 8, !tbaa !24
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %.preheader1045, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %40, align 8, !tbaa !25
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %.loopexit121, label %.preheader1045

.preheader1045:                                   ; preds = %81, %78
  br label %84

84:                                               ; preds = %.backedge, %.preheader1045
  %85 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %85, label %464 [
    i32 0, label %86
    i32 1, label %322
    i32 2, label %360
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
  br label %.loopexit118

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
  br label %.loopexit118

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
  br label %319

117:                                              ; preds = %109
  %118 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %118, label %.loopexit118 [
    i32 0, label %119
    i32 -5, label %119
  ]

119:                                              ; preds = %117, %117
  %120 = load i32, ptr %39, align 8, !tbaa !24
  %121 = icmp eq i32 %120, 0
  %122 = load i32, ptr %40, align 8, !tbaa !34
  br i1 %121, label %123, label %287

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
  br i1 %150, label %151, label %141, !llvm.loop !78

151:                                              ; preds = %141
  %152 = icmp eq i64 %140, %132
  br i1 %152, label %.loopexit111, label %153

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
  br i1 %169, label %170, label %163, !llvm.loop !79

170:                                              ; preds = %163
  %171 = getelementptr i8, ptr %126, i64 %162
  %172 = getelementptr i8, ptr %127, i64 %162
  %173 = trunc nuw i64 %162 to i32
  %174 = sub i32 %122, %173
  %175 = icmp eq i64 %162, %132
  br i1 %175, label %.loopexit111, label %176

176:                                              ; preds = %170, %153, %129
  %177 = phi ptr [ %126, %129 ], [ %154, %153 ], [ %171, %170 ]
  %178 = phi ptr [ %127, %129 ], [ %155, %153 ], [ %172, %170 ]
  %179 = phi i32 [ %122, %129 ], [ %157, %153 ], [ %174, %170 ]
  %180 = add i32 %179, -1
  %181 = and i32 %179, 7
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %.loopexit113, label %.preheader112

.preheader112:                                    ; preds = %176, %.preheader112
  %183 = phi ptr [ %187, %.preheader112 ], [ %177, %176 ]
  %184 = phi ptr [ %188, %.preheader112 ], [ %178, %176 ]
  %185 = phi i32 [ %189, %.preheader112 ], [ 0, %176 ]
  %186 = load i8, ptr %184, align 1, !tbaa !36
  store i8 %186, ptr %183, align 1, !tbaa !36
  %187 = getelementptr inbounds nuw i8, ptr %183, i64 1
  %188 = getelementptr inbounds nuw i8, ptr %184, i64 1
  %189 = add nuw nsw i32 %185, 1
  %190 = icmp eq i32 %189, %181
  br i1 %190, label %.loopexit113.loopexit, label %.preheader112, !llvm.loop !80

.loopexit113.loopexit:                            ; preds = %.preheader112
  %191 = and i32 %179, -8
  br label %.loopexit113

.loopexit113:                                     ; preds = %.loopexit113.loopexit, %176
  %192 = phi ptr [ %177, %176 ], [ %187, %.loopexit113.loopexit ]
  %193 = phi ptr [ %178, %176 ], [ %188, %.loopexit113.loopexit ]
  %194 = phi i32 [ %179, %176 ], [ %191, %.loopexit113.loopexit ]
  %195 = icmp ult i32 %180, 7
  br i1 %195, label %.loopexit111, label %.preheader110

.preheader110:                                    ; preds = %.loopexit113, %.preheader110
  %196 = phi ptr [ %222, %.preheader110 ], [ %192, %.loopexit113 ]
  %197 = phi ptr [ %223, %.preheader110 ], [ %193, %.loopexit113 ]
  %198 = phi i32 [ %221, %.preheader110 ], [ %194, %.loopexit113 ]
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
  br i1 %224, label %.loopexit111, label %.preheader110, !llvm.loop !81

.loopexit111:                                     ; preds = %.preheader110, %.loopexit113, %170, %151
  %225 = load i32, ptr %40, align 8, !tbaa !34
  br label %226

226:                                              ; preds = %.loopexit111, %125, %123
  %227 = phi i32 [ %225, %.loopexit111 ], [ %122, %125 ], [ 0, %123 ]
  %228 = load i32, ptr %42, align 8, !tbaa !27
  %.fr81 = freeze i32 %228
  %229 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr81, i32 %227), !nosanitize !20
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
  %mv.h27 = icmp sgt i32 %.fr81, -1
  br i1 %mv.h27, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %232, %248
  %238 = phi i32 [ %249, %248 ], [ 0, %232 ]
  %239 = sub i32 %233, %238
  %240 = tail call i32 @llvm.umin.i32(i32 %239, i32 1073741824)
  %241 = load i32, ptr %49, align 4, !tbaa !46
  %242 = zext i32 %238 to i64
  %243 = getelementptr inbounds nuw i8, ptr %236, i64 %242
  %244 = zext nneg i32 %240 to i64
  %245 = tail call i64 @read(i32 noundef %241, ptr noundef %243, i64 noundef %244) #13
  %246 = trunc i64 %245 to i32
  %247 = icmp slt i32 %246, 1
  br i1 %247, label %.loopexit107, label %248

248:                                              ; preds = %.mv.ph29.mv.fast
  %249 = add i32 %238, %246
  %250 = icmp ult i32 %249, %233
  br i1 %250, label %.mv.ph29.mv.fast, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %232, %265
  %251 = phi i32 [ %266, %265 ], [ 0, %232 ]
  %252 = sub i32 %233, %251
  %253 = tail call i32 @llvm.umin.i32(i32 %252, i32 1073741824)
  %254 = load i32, ptr %49, align 4, !tbaa !46
  %255 = zext i32 %251 to i64
  %256 = getelementptr inbounds nuw i8, ptr %236, i64 %255
  %257 = zext nneg i32 %253 to i64
  %258 = tail call i64 @read(i32 noundef %254, ptr noundef %256, i64 noundef %257) #13
  %259 = trunc i64 %258 to i32
  %260 = icmp slt i32 %259, 1
  br i1 %260, label %.loopexit107, label %261

261:                                              ; preds = %.mv.ph29
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %251, i32 %259), !nosanitize !20
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !20
  br i1 %263, label %264, label %265, !prof !21, !nosanitize !20

264:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

265:                                              ; preds = %261
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !20
  %267 = icmp ult i32 %266, %233
  br i1 %267, label %.mv.ph29, label %.loopexit19, !llvm.loop !47

.loopexit107:                                     ; preds = %.mv.ph29, %.mv.ph29.mv.fast
  %.lcssa23 = phi i32 [ %246, %.mv.ph29.mv.fast ], [ %259, %.mv.ph29 ]
  %.lcssa20 = phi i32 [ %238, %.mv.ph29.mv.fast ], [ %251, %.mv.ph29 ]
  %268 = icmp slt i32 %.lcssa23, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %.loopexit107
  %270 = load i32, ptr %237, align 4, !tbaa !45
  %271 = icmp eq i32 %270, 11
  br i1 %271, label %272, label %.loopexit119

272:                                              ; preds = %269
  store i32 1, ptr %48, align 4, !tbaa !17
  %273 = icmp eq i32 %.lcssa20, 0
  br i1 %273, label %274, label %.loopexit19

274:                                              ; preds = %272
  %275 = load i32, ptr %237, align 4, !tbaa !45
  br label %.loopexit119

276:                                              ; preds = %.loopexit107
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit19

.loopexit119:                                     ; preds = %269, %274
  %277 = phi i32 [ %275, %274 ], [ %270, %269 ]
  %278 = tail call ptr @strerror(i32 noundef %277) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %278) #13
  br label %.loopexit118

.loopexit19:                                      ; preds = %265, %248, %276, %272
  %279 = phi i32 [ %.lcssa20, %276 ], [ %.lcssa20, %272 ], [ %249, %248 ], [ %266, %265 ]
  %280 = load i32, ptr %40, align 8, !tbaa !34
  %281 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %280, i32 %279), !nosanitize !20
  %282 = extractvalue { i32, i1 } %281, 1, !nosanitize !20
  br i1 %282, label %283, label %284, !prof !21, !nosanitize !20

283:                                              ; preds = %.loopexit19
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

284:                                              ; preds = %.loopexit19
  %285 = extractvalue { i32, i1 } %281, 0, !nosanitize !20
  store i32 %285, ptr %40, align 8, !tbaa !34
  %286 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %286, ptr %46, align 8, !tbaa !35
  br label %287

287:                                              ; preds = %284, %119
  %288 = phi i32 [ %285, %284 ], [ %122, %119 ]
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %319, label %290

290:                                              ; preds = %287
  %291 = load i32, ptr %48, align 4, !tbaa !17
  %292 = icmp ne i32 %291, 0
  %293 = icmp ult i32 %288, 4
  %294 = and i1 %293, %292
  br i1 %294, label %319, label %295

295:                                              ; preds = %290
  %296 = icmp ugt i32 %288, 3
  %297 = load ptr, ptr %46, align 8, !tbaa !35
  br i1 %296, label %298, label %315

298:                                              ; preds = %295
  %299 = load i8, ptr %297, align 1, !tbaa !36
  %300 = icmp eq i8 %299, 31
  br i1 %300, label %301, label %315

301:                                              ; preds = %298
  %302 = getelementptr inbounds nuw i8, ptr %297, i64 1
  %303 = load i8, ptr %302, align 1, !tbaa !36
  %304 = icmp eq i8 %303, -117
  br i1 %304, label %305, label %315

305:                                              ; preds = %301
  %306 = getelementptr inbounds nuw i8, ptr %297, i64 2
  %307 = load i8, ptr %306, align 1, !tbaa !36
  %308 = icmp eq i8 %307, 8
  br i1 %308, label %309, label %315

309:                                              ; preds = %305
  %310 = getelementptr inbounds nuw i8, ptr %297, i64 3
  %311 = load i8, ptr %310, align 1, !tbaa !36
  %312 = icmp ult i8 %311, 32
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = tail call i32 @inflateReset(ptr noundef nonnull %46) #13
  store i32 2, ptr %41, align 8, !tbaa !26
  store i32 1, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %54, align 8, !tbaa !32
  br label %465

315:                                              ; preds = %309, %305, %301, %298, %295
  %316 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %316, ptr %37, align 8, !tbaa !22
  %317 = zext i32 %288 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %316, ptr align 1 %297, i64 %317, i1 false)
  %318 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %318, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %467

319:                                              ; preds = %290, %287, %112
  %320 = load i32, ptr %41, align 8, !tbaa !26
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %.loopexit120, label %465

322:                                              ; preds = %84
  %323 = load ptr, ptr %44, align 8, !tbaa !30
  %324 = load i32, ptr %42, align 8, !tbaa !27
  %325 = shl i32 %324, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %326 = tail call ptr @__errno_location() #17
  store i32 0, ptr %326, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %327

327:                                              ; preds = %343, %322
  %328 = phi i32 [ %344, %343 ], [ 0, %322 ]
  %329 = sub i32 %325, %328
  %330 = tail call i32 @llvm.umin.i32(i32 %329, i32 1073741824)
  %331 = load i32, ptr %49, align 4, !tbaa !46
  %332 = zext i32 %328 to i64
  %333 = getelementptr inbounds nuw i8, ptr %323, i64 %332
  %334 = zext nneg i32 %330 to i64
  %335 = tail call i64 @read(i32 noundef %331, ptr noundef %333, i64 noundef %334) #13
  %336 = trunc i64 %335 to i32
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %346, label %338

338:                                              ; preds = %327
  %339 = load i32, ptr %0, align 4, !tbaa !45
  %340 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %339, i32 %336), !nosanitize !20
  %341 = extractvalue { i32, i1 } %340, 1, !nosanitize !20
  br i1 %341, label %342, label %343, !prof !21, !nosanitize !20

342:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

343:                                              ; preds = %338
  %344 = extractvalue { i32, i1 } %340, 0, !nosanitize !20
  store i32 %344, ptr %0, align 4, !tbaa !45
  %345 = icmp ult i32 %344, %325
  br i1 %345, label %327, label %.loopexit117, !llvm.loop !47

346:                                              ; preds = %327
  %347 = icmp slt i32 %336, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %346
  %349 = load i32, ptr %326, align 4, !tbaa !45
  %350 = icmp eq i32 %349, 11
  br i1 %350, label %351, label %.loopexit122

351:                                              ; preds = %348
  store i32 1, ptr %48, align 4, !tbaa !17
  %352 = load i32, ptr %0, align 4, !tbaa !45
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %.loopexit117

354:                                              ; preds = %351
  %355 = load i32, ptr %326, align 4, !tbaa !45
  br label %.loopexit122

356:                                              ; preds = %346
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit117

.loopexit122:                                     ; preds = %348, %354
  %357 = phi i32 [ %355, %354 ], [ %349, %348 ]
  %358 = tail call ptr @strerror(i32 noundef %357) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %358) #13
  br label %.loopexit118

.loopexit117:                                     ; preds = %343, %356, %351
  %359 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %359, ptr %37, align 8, !tbaa !22
  br label %.loopexit120

360:                                              ; preds = %84
  %361 = load i32, ptr %42, align 8, !tbaa !27
  %362 = shl i32 %361, 1
  store i32 %362, ptr %43, align 8, !tbaa !48
  %363 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %363, ptr %45, align 8, !tbaa !49
  br label %364

364:                                              ; preds = %448, %360
  %365 = phi i32 [ 0, %360 ], [ %433, %448 ]
  %366 = load i32, ptr %40, align 8, !tbaa !34
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %432

368:                                              ; preds = %364
  %369 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %369, label %.loopexit114 [
    i32 0, label %370
    i32 -5, label %370
  ]

370:                                              ; preds = %368, %368
  %371 = load i32, ptr %39, align 8, !tbaa !24
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %428

373:                                              ; preds = %370
  %374 = load i32, ptr %42, align 8, !tbaa !27
  %.fr = freeze i32 %374
  %375 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %376 = tail call ptr @__errno_location() #17
  store i32 0, ptr %376, align 4, !tbaa !45
  %mv.h = icmp sgt i32 %.fr, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %373, %387
  %377 = phi i32 [ %388, %387 ], [ 0, %373 ]
  %378 = sub nsw i32 %.fr, %377
  %379 = tail call i32 @llvm.umin.i32(i32 %378, i32 1073741824)
  %380 = load i32, ptr %49, align 4, !tbaa !46
  %381 = zext nneg i32 %377 to i64
  %382 = getelementptr inbounds nuw i8, ptr %375, i64 %381
  %383 = zext nneg i32 %379 to i64
  %384 = tail call i64 @read(i32 noundef %380, ptr noundef %382, i64 noundef %383) #13
  %385 = trunc i64 %384 to i32
  %386 = icmp slt i32 %385, 1
  br i1 %386, label %.loopexit104, label %387

387:                                              ; preds = %.mv.ph.mv.fast
  %388 = add nuw i32 %377, %385
  %389 = icmp ult i32 %388, %.fr
  br i1 %389, label %.mv.ph.mv.fast, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %373, %404
  %390 = phi i32 [ %405, %404 ], [ 0, %373 ]
  %391 = sub i32 %.fr, %390
  %392 = tail call i32 @llvm.umin.i32(i32 %391, i32 1073741824)
  %393 = load i32, ptr %49, align 4, !tbaa !46
  %394 = zext i32 %390 to i64
  %395 = getelementptr inbounds nuw i8, ptr %375, i64 %394
  %396 = zext nneg i32 %392 to i64
  %397 = tail call i64 @read(i32 noundef %393, ptr noundef %395, i64 noundef %396) #13
  %398 = trunc i64 %397 to i32
  %399 = icmp slt i32 %398, 1
  br i1 %399, label %.loopexit104, label %400

400:                                              ; preds = %.mv.ph
  %401 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %390, i32 %398), !nosanitize !20
  %402 = extractvalue { i32, i1 } %401, 1, !nosanitize !20
  br i1 %402, label %403, label %404, !prof !21, !nosanitize !20

403:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

404:                                              ; preds = %400
  %405 = extractvalue { i32, i1 } %401, 0, !nosanitize !20
  %406 = icmp ult i32 %405, %.fr
  br i1 %406, label %.mv.ph, label %.loopexit, !llvm.loop !47

.loopexit104:                                     ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa4 = phi i32 [ %385, %.mv.ph.mv.fast ], [ %398, %.mv.ph ]
  %.lcssa1 = phi i32 [ %377, %.mv.ph.mv.fast ], [ %390, %.mv.ph ]
  %407 = icmp slt i32 %.lcssa4, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %.loopexit104
  %409 = load i32, ptr %376, align 4, !tbaa !45
  %410 = icmp eq i32 %409, 11
  br i1 %410, label %411, label %.loopexit116

411:                                              ; preds = %408
  store i32 1, ptr %48, align 4, !tbaa !17
  %412 = icmp eq i32 %.lcssa1, 0
  br i1 %412, label %413, label %.loopexit

413:                                              ; preds = %411
  %414 = load i32, ptr %376, align 4, !tbaa !45
  br label %.loopexit116

415:                                              ; preds = %.loopexit104
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit

.loopexit116:                                     ; preds = %408, %413
  %416 = phi i32 [ %414, %413 ], [ %409, %408 ]
  %417 = tail call ptr @strerror(i32 noundef %416) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %417) #13
  %418 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit114

.loopexit:                                        ; preds = %404, %387, %415, %411
  %419 = phi i32 [ %.lcssa1, %415 ], [ %.lcssa1, %411 ], [ %388, %387 ], [ %405, %404 ]
  %420 = load i32, ptr %40, align 8, !tbaa !34
  %421 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %420, i32 %419), !nosanitize !20
  %422 = extractvalue { i32, i1 } %421, 1, !nosanitize !20
  br i1 %422, label %423, label %424, !prof !21, !nosanitize !20

423:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

424:                                              ; preds = %.loopexit
  %425 = extractvalue { i32, i1 } %421, 0, !nosanitize !20
  store i32 %425, ptr %40, align 8, !tbaa !34
  %426 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %426, ptr %46, align 8, !tbaa !35
  %427 = icmp eq i32 %425, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %424, %370
  %429 = load i32, ptr %48, align 4, !tbaa !17
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %.loopexit114

431:                                              ; preds = %428
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit114

432:                                              ; preds = %424, %364
  %433 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %434 = load i32, ptr %43, align 8, !tbaa !48
  %435 = icmp ult i32 %434, %362
  br i1 %435, label %436, label %437

436:                                              ; preds = %432
  store i32 0, ptr %50, align 4, !tbaa !33
  br label %437

437:                                              ; preds = %436, %432
  switch i32 %433, label %448 [
    i32 -2, label %438
    i32 2, label %438
    i32 -4, label %439
    i32 -3, label %440
  ]

438:                                              ; preds = %437, %437
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit114

439:                                              ; preds = %437
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit114

440:                                              ; preds = %437
  %441 = load i32, ptr %50, align 4, !tbaa !33
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %443, label %444

443:                                              ; preds = %440
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %.loopexit114

444:                                              ; preds = %440
  %445 = load ptr, ptr %51, align 8, !tbaa !50
  %446 = icmp eq ptr %445, null
  %447 = select i1 %446, ptr @.str.6, ptr %445
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %447) #13
  br label %.loopexit114

448:                                              ; preds = %437
  %449 = icmp ne i32 %434, 0
  %450 = icmp ne i32 %433, 1
  %451 = select i1 %449, i1 %450, i1 false
  br i1 %451, label %364, label %.loopexit114, !llvm.loop !51

.loopexit114:                                     ; preds = %448, %368, %444, %443, %439, %438, %431, %428, %.loopexit116
  %452 = phi i32 [ %365, %428 ], [ %365, %431 ], [ %433, %438 ], [ -4, %439 ], [ 0, %443 ], [ -3, %444 ], [ %418, %.loopexit116 ], [ %433, %448 ], [ %369, %368 ]
  %453 = load i32, ptr %43, align 8, !tbaa !48
  %454 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 %453), !nosanitize !20
  %455 = extractvalue { i32, i1 } %454, 1, !nosanitize !20
  br i1 %455, label %456, label %457, !prof !21, !nosanitize !20

456:                                              ; preds = %.loopexit114
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

457:                                              ; preds = %.loopexit114
  %458 = extractvalue { i32, i1 } %454, 0, !nosanitize !20
  store i32 %458, ptr %0, align 8, !tbaa !19
  %459 = load ptr, ptr %45, align 8, !tbaa !49
  %460 = zext i32 %458 to i64
  %461 = sub nsw i64 0, %460
  %462 = getelementptr inbounds i8, ptr %459, i64 %461
  store ptr %462, ptr %37, align 8, !tbaa !22
  switch i32 %452, label %.loopexit118 [
    i32 1, label %463
    i32 0, label %465
  ]

463:                                              ; preds = %457
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %465

464:                                              ; preds = %84
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit118

465:                                              ; preds = %463, %457, %319, %313
  %466 = load i32, ptr %0, align 8, !tbaa !19
  br label %467

467:                                              ; preds = %465, %315
  %468 = phi i32 [ %466, %465 ], [ %318, %315 ]
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %.loopexit120

470:                                              ; preds = %467
  %471 = load i32, ptr %39, align 8, !tbaa !24
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %.backedge, label %473

473:                                              ; preds = %470
  %474 = load i32, ptr %40, align 8, !tbaa !34
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %.loopexit120, label %.backedge

.backedge:                                        ; preds = %473, %470
  br label %84, !llvm.loop !52

.loopexit120:                                     ; preds = %473, %467, %319, %.loopexit117
  %476 = load i64, ptr %33, align 8, !tbaa !18
  br label %477

477:                                              ; preds = %.loopexit120, %75
  %478 = phi i64 [ %476, %.loopexit120 ], [ %77, %75 ]
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %.loopexit121, label %55, !llvm.loop !53

.loopexit121:                                     ; preds = %477, %81, %32
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

498:                                              ; preds = %.loopexit99, %.loopexit121
  %499 = phi ptr [ %2, %.loopexit121 ], [ %1084, %.loopexit99 ]
  %500 = phi i64 [ 1, %.loopexit121 ], [ %1085, %.loopexit99 ]
  %501 = phi i64 [ 0, %.loopexit121 ], [ %1086, %.loopexit99 ]
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
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

516:                                              ; preds = %506
  %517 = extractvalue { i32, i1 } %513, 0, !nosanitize !20
  store i32 %517, ptr %0, align 8, !tbaa !19
  %518 = load i32, ptr %9, align 8, !tbaa !16
  %519 = icmp ne i32 %518, 0
  %520 = sext i1 %519 to i32
  br label %1065

521:                                              ; preds = %498
  %522 = load i32, ptr %481, align 8, !tbaa !24
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %521
  %525 = load i32, ptr %482, align 8, !tbaa !25
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %.loopexit103, label %527

527:                                              ; preds = %524, %521
  %528 = load i32, ptr %483, align 8, !tbaa !26
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %.preheader929, label %530

530:                                              ; preds = %527
  %531 = load i32, ptr %484, align 8, !tbaa !27
  %532 = shl i32 %531, 1
  %533 = icmp ugt i32 %532, %503
  br i1 %533, label %.preheader929, label %921

.preheader929:                                    ; preds = %530, %527
  br label %534

534:                                              ; preds = %.preheader929, %916
  %535 = phi i32 [ %917, %916 ], [ %528, %.preheader929 ]
  switch i32 %535, label %904 [
    i32 0, label %536
    i32 1, label %761
    i32 2, label %800
  ]

536:                                              ; preds = %534
  %537 = load i32, ptr %484, align 8, !tbaa !27
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %556

539:                                              ; preds = %536
  %540 = load i32, ptr %495, align 4, !tbaa !28
  %541 = zext i32 %540 to i64
  %542 = call noalias ptr @malloc(i64 noundef %541) #16
  store ptr %542, ptr %488, align 8, !tbaa !29
  %543 = shl i32 %540, 1
  %544 = zext i32 %543 to i64
  %545 = call noalias ptr @malloc(i64 noundef %544) #16
  store ptr %545, ptr %494, align 8, !tbaa !30
  %546 = icmp eq ptr %542, null
  %547 = icmp eq ptr %545, null
  %548 = or i1 %546, %547
  br i1 %548, label %549, label %550

549:                                              ; preds = %539
  call void @free(ptr noundef %545) #13
  call void @free(ptr noundef %542) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit97

550:                                              ; preds = %539
  store i32 %540, ptr %484, align 8, !tbaa !27
  store i32 0, ptr %482, align 8, !tbaa !25
  store ptr null, ptr %487, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %496, i8 0, i64 24, i1 false)
  %551 = call i32 @inflateInit2_(ptr noundef nonnull %487, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %556, label %553

553:                                              ; preds = %550
  %554 = load ptr, ptr %494, align 8, !tbaa !30
  call void @free(ptr noundef %554) #13
  %555 = load ptr, ptr %488, align 8, !tbaa !29
  call void @free(ptr noundef %555) #13
  store i32 0, ptr %484, align 8, !tbaa !27
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit97

556:                                              ; preds = %550, %536
  %557 = load i32, ptr %497, align 8, !tbaa !32
  %558 = icmp eq i32 %557, -1
  br i1 %558, label %562, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %491, align 4, !tbaa !33
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %567

562:                                              ; preds = %559, %556
  %563 = call i32 @inflateReset(ptr noundef nonnull %487) #13
  store i32 2, ptr %483, align 8, !tbaa !26
  %564 = load i32, ptr %491, align 4, !tbaa !33
  %565 = icmp ne i32 %564, -1
  %566 = zext i1 %565 to i32
  store i32 %566, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %497, align 8, !tbaa !32
  br label %758

567:                                              ; preds = %559
  %568 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %568, label %.loopexit97 [
    i32 0, label %569
    i32 -5, label %569
  ]

569:                                              ; preds = %567, %567
  %570 = load i32, ptr %481, align 8, !tbaa !24
  %571 = icmp eq i32 %570, 0
  %572 = load i32, ptr %482, align 8, !tbaa !34
  br i1 %571, label %573, label %726

573:                                              ; preds = %569
  %574 = icmp eq i32 %572, 0
  br i1 %574, label %676, label %575

575:                                              ; preds = %573
  %576 = load ptr, ptr %488, align 8, !tbaa !29
  %577 = load ptr, ptr %487, align 8, !tbaa !35
  %578 = icmp eq ptr %577, %576
  br i1 %578, label %676, label %579

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
  %599 = add nuw nsw i64 %592, 32
  %600 = icmp eq i64 %599, %590
  br i1 %600, label %601, label %591, !llvm.loop !82

601:                                              ; preds = %591
  %602 = icmp eq i64 %590, %582
  br i1 %602, label %.loopexit88, label %603

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
  br label %613

613:                                              ; preds = %613, %610
  %614 = phi i64 [ %611, %610 ], [ %618, %613 ]
  %615 = getelementptr i8, ptr %576, i64 %614
  %616 = getelementptr i8, ptr %577, i64 %614
  %617 = load <4 x i8>, ptr %616, align 1, !tbaa !36
  store <4 x i8> %617, ptr %615, align 1, !tbaa !36
  %618 = add nuw i64 %614, 4
  %619 = icmp eq i64 %618, %612
  br i1 %619, label %620, label %613, !llvm.loop !83

620:                                              ; preds = %613
  %621 = getelementptr i8, ptr %576, i64 %612
  %622 = getelementptr i8, ptr %577, i64 %612
  %623 = trunc nuw i64 %612 to i32
  %624 = sub i32 %572, %623
  %625 = icmp eq i64 %612, %582
  br i1 %625, label %.loopexit88, label %626

626:                                              ; preds = %620, %603, %579
  %627 = phi ptr [ %576, %579 ], [ %604, %603 ], [ %621, %620 ]
  %628 = phi ptr [ %577, %579 ], [ %605, %603 ], [ %622, %620 ]
  %629 = phi i32 [ %572, %579 ], [ %607, %603 ], [ %624, %620 ]
  %630 = add i32 %629, -1
  %631 = and i32 %629, 7
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %.loopexit90, label %.preheader89

.preheader89:                                     ; preds = %626, %.preheader89
  %633 = phi ptr [ %637, %.preheader89 ], [ %627, %626 ]
  %634 = phi ptr [ %638, %.preheader89 ], [ %628, %626 ]
  %635 = phi i32 [ %639, %.preheader89 ], [ 0, %626 ]
  %636 = load i8, ptr %634, align 1, !tbaa !36
  store i8 %636, ptr %633, align 1, !tbaa !36
  %637 = getelementptr inbounds nuw i8, ptr %633, i64 1
  %638 = getelementptr inbounds nuw i8, ptr %634, i64 1
  %639 = add nuw nsw i32 %635, 1
  %640 = icmp eq i32 %639, %631
  br i1 %640, label %.loopexit90.loopexit, label %.preheader89, !llvm.loop !84

.loopexit90.loopexit:                             ; preds = %.preheader89
  %641 = and i32 %629, -8
  br label %.loopexit90

.loopexit90:                                      ; preds = %.loopexit90.loopexit, %626
  %642 = phi ptr [ %627, %626 ], [ %637, %.loopexit90.loopexit ]
  %643 = phi ptr [ %628, %626 ], [ %638, %.loopexit90.loopexit ]
  %644 = phi i32 [ %629, %626 ], [ %641, %.loopexit90.loopexit ]
  %645 = icmp ult i32 %630, 7
  br i1 %645, label %.loopexit88, label %.preheader

.preheader:                                       ; preds = %.loopexit90, %.preheader
  %646 = phi ptr [ %672, %.preheader ], [ %642, %.loopexit90 ]
  %647 = phi ptr [ %673, %.preheader ], [ %643, %.loopexit90 ]
  %648 = phi i32 [ %671, %.preheader ], [ %644, %.loopexit90 ]
  %649 = load i8, ptr %647, align 1, !tbaa !36
  store i8 %649, ptr %646, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %646, i64 1
  %651 = getelementptr inbounds nuw i8, ptr %647, i64 1
  %652 = load i8, ptr %651, align 1, !tbaa !36
  store i8 %652, ptr %650, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %646, i64 2
  %654 = getelementptr inbounds nuw i8, ptr %647, i64 2
  %655 = load i8, ptr %654, align 1, !tbaa !36
  store i8 %655, ptr %653, align 1, !tbaa !36
  %656 = getelementptr inbounds nuw i8, ptr %646, i64 3
  %657 = getelementptr inbounds nuw i8, ptr %647, i64 3
  %658 = load i8, ptr %657, align 1, !tbaa !36
  store i8 %658, ptr %656, align 1, !tbaa !36
  %659 = getelementptr inbounds nuw i8, ptr %646, i64 4
  %660 = getelementptr inbounds nuw i8, ptr %647, i64 4
  %661 = load i8, ptr %660, align 1, !tbaa !36
  store i8 %661, ptr %659, align 1, !tbaa !36
  %662 = getelementptr inbounds nuw i8, ptr %646, i64 5
  %663 = getelementptr inbounds nuw i8, ptr %647, i64 5
  %664 = load i8, ptr %663, align 1, !tbaa !36
  store i8 %664, ptr %662, align 1, !tbaa !36
  %665 = getelementptr inbounds nuw i8, ptr %646, i64 6
  %666 = getelementptr inbounds nuw i8, ptr %647, i64 6
  %667 = load i8, ptr %666, align 1, !tbaa !36
  store i8 %667, ptr %665, align 1, !tbaa !36
  %668 = getelementptr inbounds nuw i8, ptr %646, i64 7
  %669 = getelementptr inbounds nuw i8, ptr %647, i64 7
  %670 = load i8, ptr %669, align 1, !tbaa !36
  store i8 %670, ptr %668, align 1, !tbaa !36
  %671 = add i32 %648, -8
  %672 = getelementptr inbounds nuw i8, ptr %646, i64 8
  %673 = getelementptr inbounds nuw i8, ptr %647, i64 8
  %674 = icmp eq i32 %671, 0
  br i1 %674, label %.loopexit88, label %.preheader, !llvm.loop !85

.loopexit88:                                      ; preds = %.preheader, %.loopexit90, %620, %601
  %675 = load i32, ptr %482, align 8, !tbaa !34
  br label %676

676:                                              ; preds = %.loopexit88, %575, %573
  %677 = phi i32 [ %675, %.loopexit88 ], [ %572, %575 ], [ 0, %573 ]
  %678 = load i32, ptr %484, align 8, !tbaa !27
  %679 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %678, i32 %677), !nosanitize !20
  %680 = extractvalue { i32, i1 } %679, 1, !nosanitize !20
  br i1 %680, label %681, label %682, !prof !21, !nosanitize !20

681:                                              ; preds = %676
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

682:                                              ; preds = %676
  %683 = extractvalue { i32, i1 } %679, 0, !nosanitize !20
  %684 = load ptr, ptr %488, align 8, !tbaa !29
  %685 = zext i32 %677 to i64
  %686 = getelementptr inbounds nuw i8, ptr %684, i64 %685
  store i32 0, ptr %489, align 4, !tbaa !17
  %687 = tail call ptr @__errno_location() #17
  store i32 0, ptr %687, align 4, !tbaa !45
  br label %688

688:                                              ; preds = %703, %682
  %689 = phi i32 [ 0, %682 ], [ %704, %703 ]
  %690 = sub i32 %683, %689
  %691 = call i32 @llvm.umin.i32(i32 %690, i32 1073741824)
  %692 = load i32, ptr %490, align 4, !tbaa !46
  %693 = zext i32 %689 to i64
  %694 = getelementptr inbounds nuw i8, ptr %686, i64 %693
  %695 = zext nneg i32 %691 to i64
  %696 = call i64 @read(i32 noundef %692, ptr noundef %694, i64 noundef %695) #13
  %697 = trunc i64 %696 to i32
  %698 = icmp slt i32 %697, 1
  br i1 %698, label %706, label %699

699:                                              ; preds = %688
  %700 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %689, i32 %697), !nosanitize !20
  %701 = extractvalue { i32, i1 } %700, 1, !nosanitize !20
  br i1 %701, label %702, label %703, !prof !21, !nosanitize !20

702:                                              ; preds = %699
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

703:                                              ; preds = %699
  %704 = extractvalue { i32, i1 } %700, 0, !nosanitize !20
  %705 = icmp ult i32 %704, %683
  br i1 %705, label %688, label %.loopexit87, !llvm.loop !47

706:                                              ; preds = %688
  %707 = icmp slt i32 %697, 0
  br i1 %707, label %708, label %715

708:                                              ; preds = %706
  %709 = load i32, ptr %687, align 4, !tbaa !45
  %710 = icmp eq i32 %709, 11
  br i1 %710, label %711, label %.loopexit98

711:                                              ; preds = %708
  store i32 1, ptr %489, align 4, !tbaa !17
  %712 = icmp eq i32 %689, 0
  br i1 %712, label %713, label %.loopexit87

713:                                              ; preds = %711
  %714 = load i32, ptr %687, align 4, !tbaa !45
  br label %.loopexit98

715:                                              ; preds = %706
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %.loopexit87

.loopexit98:                                      ; preds = %708, %713
  %716 = phi i32 [ %714, %713 ], [ %709, %708 ]
  %717 = call ptr @strerror(i32 noundef %716) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %717) #13
  br label %.loopexit97

.loopexit87:                                      ; preds = %703, %715, %711
  %718 = phi i32 [ %689, %715 ], [ %689, %711 ], [ %704, %703 ]
  %719 = load i32, ptr %482, align 8, !tbaa !34
  %720 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %719, i32 %718), !nosanitize !20
  %721 = extractvalue { i32, i1 } %720, 1, !nosanitize !20
  br i1 %721, label %722, label %723, !prof !21, !nosanitize !20

722:                                              ; preds = %.loopexit87
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

723:                                              ; preds = %.loopexit87
  %724 = extractvalue { i32, i1 } %720, 0, !nosanitize !20
  store i32 %724, ptr %482, align 8, !tbaa !34
  %725 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %725, ptr %487, align 8, !tbaa !35
  br label %726

726:                                              ; preds = %723, %569
  %727 = phi i32 [ %724, %723 ], [ %572, %569 ]
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %758, label %729

729:                                              ; preds = %726
  %730 = load i32, ptr %489, align 4, !tbaa !17
  %731 = icmp ne i32 %730, 0
  %732 = icmp ult i32 %727, 4
  %733 = and i1 %732, %731
  br i1 %733, label %758, label %734

734:                                              ; preds = %729
  %735 = icmp ugt i32 %727, 3
  %736 = load ptr, ptr %487, align 8, !tbaa !35
  br i1 %735, label %737, label %754

737:                                              ; preds = %734
  %738 = load i8, ptr %736, align 1, !tbaa !36
  %739 = icmp eq i8 %738, 31
  br i1 %739, label %740, label %754

740:                                              ; preds = %737
  %741 = getelementptr inbounds nuw i8, ptr %736, i64 1
  %742 = load i8, ptr %741, align 1, !tbaa !36
  %743 = icmp eq i8 %742, -117
  br i1 %743, label %744, label %754

744:                                              ; preds = %740
  %745 = getelementptr inbounds nuw i8, ptr %736, i64 2
  %746 = load i8, ptr %745, align 1, !tbaa !36
  %747 = icmp eq i8 %746, 8
  br i1 %747, label %748, label %754

748:                                              ; preds = %744
  %749 = getelementptr inbounds nuw i8, ptr %736, i64 3
  %750 = load i8, ptr %749, align 1, !tbaa !36
  %751 = icmp ult i8 %750, 32
  br i1 %751, label %752, label %754

752:                                              ; preds = %748
  %753 = call i32 @inflateReset(ptr noundef nonnull %487) #13
  store i32 2, ptr %483, align 8, !tbaa !26
  store i32 1, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %497, align 8, !tbaa !32
  br label %905

754:                                              ; preds = %748, %744, %740, %737, %734
  %755 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %755, ptr %480, align 8, !tbaa !22
  %756 = zext i32 %727 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %755, ptr align 1 %736, i64 %756, i1 false)
  %757 = load i32, ptr %482, align 8, !tbaa !34
  store i32 %757, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %483, align 8, !tbaa !26
  br label %907

758:                                              ; preds = %729, %726, %562
  %759 = load i32, ptr %483, align 8, !tbaa !26
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %.loopexit99, label %905

761:                                              ; preds = %534
  %762 = load ptr, ptr %494, align 8, !tbaa !30
  %763 = load i32, ptr %484, align 8, !tbaa !27
  %764 = shl i32 %763, 1
  store i32 0, ptr %489, align 4, !tbaa !17
  %765 = tail call ptr @__errno_location() #17
  store i32 0, ptr %765, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %766

766:                                              ; preds = %782, %761
  %767 = phi i32 [ %783, %782 ], [ 0, %761 ]
  %768 = sub i32 %764, %767
  %769 = call i32 @llvm.umin.i32(i32 %768, i32 1073741824)
  %770 = load i32, ptr %490, align 4, !tbaa !46
  %771 = zext i32 %767 to i64
  %772 = getelementptr inbounds nuw i8, ptr %762, i64 %771
  %773 = zext nneg i32 %769 to i64
  %774 = call i64 @read(i32 noundef %770, ptr noundef %772, i64 noundef %773) #13
  %775 = trunc i64 %774 to i32
  %776 = icmp slt i32 %775, 1
  br i1 %776, label %785, label %777

777:                                              ; preds = %766
  %778 = load i32, ptr %0, align 4, !tbaa !45
  %779 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %778, i32 %775), !nosanitize !20
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !20
  br i1 %780, label %781, label %782, !prof !21, !nosanitize !20

781:                                              ; preds = %777
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

782:                                              ; preds = %777
  %783 = extractvalue { i32, i1 } %779, 0, !nosanitize !20
  store i32 %783, ptr %0, align 4, !tbaa !45
  %784 = icmp ult i32 %783, %764
  br i1 %784, label %766, label %.loopexit96, !llvm.loop !47

785:                                              ; preds = %766
  %786 = icmp slt i32 %775, 0
  br i1 %786, label %787, label %795

787:                                              ; preds = %785
  %788 = load i32, ptr %765, align 4, !tbaa !45
  %789 = icmp eq i32 %788, 11
  br i1 %789, label %790, label %796

790:                                              ; preds = %787
  store i32 1, ptr %489, align 4, !tbaa !17
  %791 = load i32, ptr %0, align 4, !tbaa !45
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %.loopexit96

793:                                              ; preds = %790
  %794 = load i32, ptr %765, align 4, !tbaa !45
  br label %796

795:                                              ; preds = %785
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %.loopexit96

796:                                              ; preds = %793, %787
  %797 = phi i32 [ %794, %793 ], [ %788, %787 ]
  %798 = call ptr @strerror(i32 noundef %797) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %798) #13
  br label %.loopexit97

.loopexit96:                                      ; preds = %782, %795, %790
  %799 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %799, ptr %480, align 8, !tbaa !22
  br label %.loopexit99

800:                                              ; preds = %534
  %801 = load i32, ptr %484, align 8, !tbaa !27
  %802 = shl i32 %801, 1
  store i32 %802, ptr %485, align 8, !tbaa !48
  %803 = load ptr, ptr %494, align 8, !tbaa !30
  store ptr %803, ptr %486, align 8, !tbaa !49
  br label %804

804:                                              ; preds = %888, %800
  %805 = phi i32 [ 0, %800 ], [ %873, %888 ]
  %806 = load i32, ptr %482, align 8, !tbaa !34
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %808, label %872

808:                                              ; preds = %804
  %809 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %809, label %.loopexit91 [
    i32 0, label %810
    i32 -5, label %810
  ]

810:                                              ; preds = %808, %808
  %811 = load i32, ptr %481, align 8, !tbaa !24
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %868

813:                                              ; preds = %810
  %814 = load i32, ptr %484, align 8, !tbaa !27
  %.fr83 = freeze i32 %814
  %815 = load ptr, ptr %488, align 8, !tbaa !29
  store i32 0, ptr %489, align 4, !tbaa !17
  %816 = tail call ptr @__errno_location() #17
  store i32 0, ptr %816, align 4, !tbaa !45
  %mv.h16 = icmp sgt i32 %.fr83, -1
  br i1 %mv.h16, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %813, %827
  %817 = phi i32 [ %828, %827 ], [ 0, %813 ]
  %818 = sub nsw i32 %.fr83, %817
  %819 = call i32 @llvm.umin.i32(i32 %818, i32 1073741824)
  %820 = load i32, ptr %490, align 4, !tbaa !46
  %821 = zext nneg i32 %817 to i64
  %822 = getelementptr inbounds nuw i8, ptr %815, i64 %821
  %823 = zext nneg i32 %819 to i64
  %824 = call i64 @read(i32 noundef %820, ptr noundef %822, i64 noundef %823) #13
  %825 = trunc i64 %824 to i32
  %826 = icmp slt i32 %825, 1
  br i1 %826, label %.loopexit84, label %827

827:                                              ; preds = %.mv.ph18.mv.fast
  %828 = add nuw i32 %817, %825
  %829 = icmp ult i32 %828, %.fr83
  br i1 %829, label %.mv.ph18.mv.fast, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %813, %844
  %830 = phi i32 [ %845, %844 ], [ 0, %813 ]
  %831 = sub i32 %.fr83, %830
  %832 = call i32 @llvm.umin.i32(i32 %831, i32 1073741824)
  %833 = load i32, ptr %490, align 4, !tbaa !46
  %834 = zext i32 %830 to i64
  %835 = getelementptr inbounds nuw i8, ptr %815, i64 %834
  %836 = zext nneg i32 %832 to i64
  %837 = call i64 @read(i32 noundef %833, ptr noundef %835, i64 noundef %836) #13
  %838 = trunc i64 %837 to i32
  %839 = icmp slt i32 %838, 1
  br i1 %839, label %.loopexit84, label %840

840:                                              ; preds = %.mv.ph18
  %841 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %830, i32 %838), !nosanitize !20
  %842 = extractvalue { i32, i1 } %841, 1, !nosanitize !20
  br i1 %842, label %843, label %844, !prof !21, !nosanitize !20

843:                                              ; preds = %840
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

844:                                              ; preds = %840
  %845 = extractvalue { i32, i1 } %841, 0, !nosanitize !20
  %846 = icmp ult i32 %845, %.fr83
  br i1 %846, label %.mv.ph18, label %.loopexit8, !llvm.loop !47

.loopexit84:                                      ; preds = %.mv.ph18, %.mv.ph18.mv.fast
  %.lcssa12 = phi i32 [ %825, %.mv.ph18.mv.fast ], [ %838, %.mv.ph18 ]
  %.lcssa9 = phi i32 [ %817, %.mv.ph18.mv.fast ], [ %830, %.mv.ph18 ]
  %847 = icmp slt i32 %.lcssa12, 0
  br i1 %847, label %848, label %855

848:                                              ; preds = %.loopexit84
  %849 = load i32, ptr %816, align 4, !tbaa !45
  %850 = icmp eq i32 %849, 11
  br i1 %850, label %851, label %.loopexit92

851:                                              ; preds = %848
  store i32 1, ptr %489, align 4, !tbaa !17
  %852 = icmp eq i32 %.lcssa9, 0
  br i1 %852, label %853, label %.loopexit8

853:                                              ; preds = %851
  %854 = load i32, ptr %816, align 4, !tbaa !45
  br label %.loopexit92

855:                                              ; preds = %.loopexit84
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %.loopexit8

.loopexit92:                                      ; preds = %848, %853
  %856 = phi i32 [ %854, %853 ], [ %849, %848 ]
  %857 = call ptr @strerror(i32 noundef %856) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %857) #13
  %858 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit91

.loopexit8:                                       ; preds = %844, %827, %855, %851
  %859 = phi i32 [ %.lcssa9, %855 ], [ %.lcssa9, %851 ], [ %828, %827 ], [ %845, %844 ]
  %860 = load i32, ptr %482, align 8, !tbaa !34
  %861 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %860, i32 %859), !nosanitize !20
  %862 = extractvalue { i32, i1 } %861, 1, !nosanitize !20
  br i1 %862, label %863, label %864, !prof !21, !nosanitize !20

863:                                              ; preds = %.loopexit8
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

864:                                              ; preds = %.loopexit8
  %865 = extractvalue { i32, i1 } %861, 0, !nosanitize !20
  store i32 %865, ptr %482, align 8, !tbaa !34
  %866 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %866, ptr %487, align 8, !tbaa !35
  %867 = icmp eq i32 %865, 0
  br i1 %867, label %868, label %872

868:                                              ; preds = %864, %810
  %869 = load i32, ptr %489, align 4, !tbaa !17
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %871, label %.loopexit91

871:                                              ; preds = %868
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit91

872:                                              ; preds = %864, %804
  %873 = call i32 @inflate(ptr noundef nonnull %487, i32 noundef 0) #13
  %874 = load i32, ptr %485, align 8, !tbaa !48
  %875 = icmp ult i32 %874, %802
  br i1 %875, label %876, label %877

876:                                              ; preds = %872
  store i32 0, ptr %491, align 4, !tbaa !33
  br label %877

877:                                              ; preds = %876, %872
  switch i32 %873, label %888 [
    i32 -2, label %878
    i32 2, label %878
    i32 -4, label %879
    i32 -3, label %880
  ]

878:                                              ; preds = %877, %877
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit91

879:                                              ; preds = %877
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit91

880:                                              ; preds = %877
  %881 = load i32, ptr %491, align 4, !tbaa !33
  %882 = icmp eq i32 %881, 1
  br i1 %882, label %883, label %884

883:                                              ; preds = %880
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %481, align 8, !tbaa !24
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %.loopexit91

884:                                              ; preds = %880
  %885 = load ptr, ptr %492, align 8, !tbaa !50
  %886 = icmp eq ptr %885, null
  %887 = select i1 %886, ptr @.str.6, ptr %885
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %887) #13
  br label %.loopexit91

888:                                              ; preds = %877
  %889 = icmp ne i32 %874, 0
  %890 = icmp ne i32 %873, 1
  %891 = select i1 %889, i1 %890, i1 false
  br i1 %891, label %804, label %.loopexit91, !llvm.loop !51

.loopexit91:                                      ; preds = %888, %808, %884, %883, %879, %878, %871, %868, %.loopexit92
  %892 = phi i32 [ %805, %868 ], [ %805, %871 ], [ %873, %878 ], [ -4, %879 ], [ 0, %883 ], [ -3, %884 ], [ %858, %.loopexit92 ], [ %809, %808 ], [ %873, %888 ]
  %893 = load i32, ptr %485, align 8, !tbaa !48
  %894 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %802, i32 %893), !nosanitize !20
  %895 = extractvalue { i32, i1 } %894, 1, !nosanitize !20
  br i1 %895, label %896, label %897, !prof !21, !nosanitize !20

896:                                              ; preds = %.loopexit91
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

897:                                              ; preds = %.loopexit91
  %898 = extractvalue { i32, i1 } %894, 0, !nosanitize !20
  store i32 %898, ptr %0, align 8, !tbaa !19
  %899 = load ptr, ptr %486, align 8, !tbaa !49
  %900 = zext i32 %898 to i64
  %901 = sub nsw i64 0, %900
  %902 = getelementptr inbounds i8, ptr %899, i64 %901
  store ptr %902, ptr %480, align 8, !tbaa !22
  switch i32 %892, label %.loopexit97 [
    i32 1, label %903
    i32 0, label %905
  ]

903:                                              ; preds = %897
  store i32 0, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %905

904:                                              ; preds = %534
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit97

905:                                              ; preds = %903, %897, %758, %752
  %906 = load i32, ptr %0, align 8, !tbaa !19
  br label %907

907:                                              ; preds = %905, %754
  %908 = phi i32 [ %906, %905 ], [ %757, %754 ]
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %910, label %.loopexit99

910:                                              ; preds = %907
  %911 = load i32, ptr %481, align 8, !tbaa !24
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %916, label %913

913:                                              ; preds = %910
  %914 = load i32, ptr %482, align 8, !tbaa !34
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %.loopexit99, label %916

916:                                              ; preds = %913, %910
  %917 = load i32, ptr %483, align 8, !tbaa !26
  br label %534, !llvm.loop !52

.loopexit97:                                      ; preds = %897, %567, %904, %796, %.loopexit98, %553, %549
  %918 = load i32, ptr %0, align 8, !tbaa !19
  %919 = icmp eq i32 %918, 0
  %920 = sext i1 %919 to i32
  br label %.loopexit99

921:                                              ; preds = %530
  %922 = icmp eq i32 %528, 1
  br i1 %922, label %923, label %956

923:                                              ; preds = %921
  store i32 0, ptr %489, align 4, !tbaa !17
  %924 = tail call ptr @__errno_location() #17
  store i32 0, ptr %924, align 4, !tbaa !45
  br label %925

925:                                              ; preds = %940, %923
  %926 = phi i32 [ 0, %923 ], [ %941, %940 ]
  %927 = sub i32 %503, %926
  %928 = call i32 @llvm.umin.i32(i32 %927, i32 1073741824)
  %929 = load i32, ptr %490, align 4, !tbaa !46
  %930 = zext i32 %926 to i64
  %931 = getelementptr inbounds nuw i8, ptr %499, i64 %930
  %932 = zext nneg i32 %928 to i64
  %933 = call i64 @read(i32 noundef %929, ptr noundef %931, i64 noundef %932) #13
  %934 = trunc i64 %933 to i32
  %935 = icmp slt i32 %934, 1
  br i1 %935, label %943, label %936

936:                                              ; preds = %925
  %937 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %926, i32 %934), !nosanitize !20
  %938 = extractvalue { i32, i1 } %937, 1, !nosanitize !20
  br i1 %938, label %939, label %940, !prof !21, !nosanitize !20

939:                                              ; preds = %936
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

940:                                              ; preds = %936
  %941 = extractvalue { i32, i1 } %937, 0, !nosanitize !20
  %942 = icmp ult i32 %941, %503
  br i1 %942, label %925, label %1063, !llvm.loop !47

943:                                              ; preds = %925
  %944 = icmp slt i32 %934, 0
  br i1 %944, label %945, label %955

945:                                              ; preds = %943
  %946 = load i32, ptr %924, align 4, !tbaa !45
  %947 = icmp eq i32 %946, 11
  br i1 %947, label %948, label %952

948:                                              ; preds = %945
  store i32 1, ptr %489, align 4, !tbaa !17
  %949 = icmp eq i32 %926, 0
  br i1 %949, label %950, label %1065

950:                                              ; preds = %948
  %951 = load i32, ptr %924, align 4, !tbaa !45
  br label %952

952:                                              ; preds = %950, %945
  %953 = phi i32 [ %951, %950 ], [ %946, %945 ]
  %954 = call ptr @strerror(i32 noundef %953) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %954) #13
  br label %1065

955:                                              ; preds = %943
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %1065

956:                                              ; preds = %921
  store i32 %503, ptr %485, align 8, !tbaa !58
  store ptr %499, ptr %486, align 8, !tbaa !59
  br label %957

957:                                              ; preds = %1041, %956
  %958 = phi i32 [ 0, %956 ], [ %1026, %1041 ]
  %959 = load i32, ptr %482, align 8, !tbaa !34
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %961, label %1025

961:                                              ; preds = %957
  %962 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %962, label %.loopexit100 [
    i32 0, label %963
    i32 -5, label %963
  ]

963:                                              ; preds = %961, %961
  %964 = load i32, ptr %481, align 8, !tbaa !24
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %1021

966:                                              ; preds = %963
  %967 = load i32, ptr %484, align 8, !tbaa !27
  %.fr82 = freeze i32 %967
  %968 = load ptr, ptr %488, align 8, !tbaa !29
  store i32 0, ptr %489, align 4, !tbaa !17
  %969 = tail call ptr @__errno_location() #17
  store i32 0, ptr %969, align 4, !tbaa !45
  %mv.h38 = icmp sgt i32 %.fr82, -1
  br i1 %mv.h38, label %.mv.ph40.mv.fast, label %.mv.ph40

.mv.ph40.mv.fast:                                 ; preds = %966, %980
  %970 = phi i32 [ %981, %980 ], [ 0, %966 ]
  %971 = sub nsw i32 %.fr82, %970
  %972 = call i32 @llvm.umin.i32(i32 %971, i32 1073741824)
  %973 = load i32, ptr %490, align 4, !tbaa !46
  %974 = zext nneg i32 %970 to i64
  %975 = getelementptr inbounds nuw i8, ptr %968, i64 %974
  %976 = zext nneg i32 %972 to i64
  %977 = call i64 @read(i32 noundef %973, ptr noundef %975, i64 noundef %976) #13
  %978 = trunc i64 %977 to i32
  %979 = icmp slt i32 %978, 1
  br i1 %979, label %.loopexit93, label %980

980:                                              ; preds = %.mv.ph40.mv.fast
  %981 = add nuw i32 %970, %978
  %982 = icmp ult i32 %981, %.fr82
  br i1 %982, label %.mv.ph40.mv.fast, label %.loopexit30, !llvm.loop !47

.mv.ph40:                                         ; preds = %966, %997
  %983 = phi i32 [ %998, %997 ], [ 0, %966 ]
  %984 = sub i32 %.fr82, %983
  %985 = call i32 @llvm.umin.i32(i32 %984, i32 1073741824)
  %986 = load i32, ptr %490, align 4, !tbaa !46
  %987 = zext i32 %983 to i64
  %988 = getelementptr inbounds nuw i8, ptr %968, i64 %987
  %989 = zext nneg i32 %985 to i64
  %990 = call i64 @read(i32 noundef %986, ptr noundef %988, i64 noundef %989) #13
  %991 = trunc i64 %990 to i32
  %992 = icmp slt i32 %991, 1
  br i1 %992, label %.loopexit93, label %993

993:                                              ; preds = %.mv.ph40
  %994 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %983, i32 %991), !nosanitize !20
  %995 = extractvalue { i32, i1 } %994, 1, !nosanitize !20
  br i1 %995, label %996, label %997, !prof !21, !nosanitize !20

996:                                              ; preds = %993
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

997:                                              ; preds = %993
  %998 = extractvalue { i32, i1 } %994, 0, !nosanitize !20
  %999 = icmp ult i32 %998, %.fr82
  br i1 %999, label %.mv.ph40, label %.loopexit30, !llvm.loop !47

.loopexit93:                                      ; preds = %.mv.ph40, %.mv.ph40.mv.fast
  %.lcssa34 = phi i32 [ %978, %.mv.ph40.mv.fast ], [ %991, %.mv.ph40 ]
  %.lcssa31 = phi i32 [ %970, %.mv.ph40.mv.fast ], [ %983, %.mv.ph40 ]
  %1000 = icmp slt i32 %.lcssa34, 0
  br i1 %1000, label %1001, label %1008

1001:                                             ; preds = %.loopexit93
  %1002 = load i32, ptr %969, align 4, !tbaa !45
  %1003 = icmp eq i32 %1002, 11
  br i1 %1003, label %1004, label %.loopexit102

1004:                                             ; preds = %1001
  store i32 1, ptr %489, align 4, !tbaa !17
  %1005 = icmp eq i32 %.lcssa31, 0
  br i1 %1005, label %1006, label %.loopexit30

1006:                                             ; preds = %1004
  %1007 = load i32, ptr %969, align 4, !tbaa !45
  br label %.loopexit102

1008:                                             ; preds = %.loopexit93
  store i32 1, ptr %481, align 8, !tbaa !24
  br label %.loopexit30

.loopexit102:                                     ; preds = %1001, %1006
  %1009 = phi i32 [ %1007, %1006 ], [ %1002, %1001 ]
  %1010 = call ptr @strerror(i32 noundef %1009) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1010) #13
  %1011 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit100

.loopexit30:                                      ; preds = %997, %980, %1008, %1004
  %1012 = phi i32 [ %.lcssa31, %1008 ], [ %.lcssa31, %1004 ], [ %981, %980 ], [ %998, %997 ]
  %1013 = load i32, ptr %482, align 8, !tbaa !34
  %1014 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1013, i32 %1012), !nosanitize !20
  %1015 = extractvalue { i32, i1 } %1014, 1, !nosanitize !20
  br i1 %1015, label %1016, label %1017, !prof !21, !nosanitize !20

1016:                                             ; preds = %.loopexit30
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1017:                                             ; preds = %.loopexit30
  %1018 = extractvalue { i32, i1 } %1014, 0, !nosanitize !20
  store i32 %1018, ptr %482, align 8, !tbaa !34
  %1019 = load ptr, ptr %488, align 8, !tbaa !29
  store ptr %1019, ptr %487, align 8, !tbaa !35
  %1020 = icmp eq i32 %1018, 0
  br i1 %1020, label %1021, label %1025

1021:                                             ; preds = %1017, %963
  %1022 = load i32, ptr %489, align 4, !tbaa !17
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %.loopexit100

1024:                                             ; preds = %1021
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit100

1025:                                             ; preds = %1017, %957
  %1026 = call i32 @inflate(ptr noundef nonnull %487, i32 noundef 0) #13
  %1027 = load i32, ptr %485, align 8, !tbaa !48
  %1028 = icmp ult i32 %1027, %503
  br i1 %1028, label %1029, label %1030

1029:                                             ; preds = %1025
  store i32 0, ptr %491, align 4, !tbaa !33
  br label %1030

1030:                                             ; preds = %1029, %1025
  switch i32 %1026, label %1041 [
    i32 -2, label %1031
    i32 2, label %1031
    i32 -4, label %1032
    i32 -3, label %1033
  ]

1031:                                             ; preds = %1030, %1030
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit100

1032:                                             ; preds = %1030
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit100

1033:                                             ; preds = %1030
  %1034 = load i32, ptr %491, align 4, !tbaa !33
  %1035 = icmp eq i32 %1034, 1
  br i1 %1035, label %1036, label %1037

1036:                                             ; preds = %1033
  store i32 0, ptr %482, align 8, !tbaa !34
  store i32 1, ptr %481, align 8, !tbaa !24
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %.loopexit100

1037:                                             ; preds = %1033
  %1038 = load ptr, ptr %492, align 8, !tbaa !50
  %1039 = icmp eq ptr %1038, null
  %1040 = select i1 %1039, ptr @.str.6, ptr %1038
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1040) #13
  br label %.loopexit100

1041:                                             ; preds = %1030
  %1042 = icmp ne i32 %1027, 0
  %1043 = icmp ne i32 %1026, 1
  %1044 = select i1 %1042, i1 %1043, i1 false
  br i1 %1044, label %957, label %.loopexit100, !llvm.loop !51

.loopexit100:                                     ; preds = %1041, %961, %1037, %1036, %1032, %1031, %1024, %1021, %.loopexit102
  %1045 = phi i32 [ %958, %1021 ], [ %958, %1024 ], [ %1026, %1031 ], [ -4, %1032 ], [ 0, %1036 ], [ -3, %1037 ], [ %1011, %.loopexit102 ], [ %1026, %1041 ], [ %962, %961 ]
  %1046 = load i32, ptr %485, align 8, !tbaa !48
  %1047 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %1046), !nosanitize !20
  %1048 = extractvalue { i32, i1 } %1047, 1, !nosanitize !20
  br i1 %1048, label %1049, label %1050, !prof !21, !nosanitize !20

1049:                                             ; preds = %.loopexit100
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1050:                                             ; preds = %.loopexit100
  %1051 = extractvalue { i32, i1 } %1047, 0, !nosanitize !20
  %1052 = load ptr, ptr %486, align 8, !tbaa !49
  %1053 = zext i32 %1051 to i64
  %1054 = sub nsw i64 0, %1053
  %1055 = getelementptr inbounds i8, ptr %1052, i64 %1054
  store ptr %1055, ptr %480, align 8, !tbaa !22
  %1056 = icmp eq i32 %1045, 1
  br i1 %1056, label %1057, label %1058

1057:                                             ; preds = %1050
  store i32 0, ptr %491, align 4, !tbaa !33
  store i32 0, ptr %483, align 8, !tbaa !26
  br label %1061

1058:                                             ; preds = %1050
  %1059 = icmp ne i32 %1045, 0
  %1060 = sext i1 %1059 to i32
  br label %1061

1061:                                             ; preds = %1058, %1057
  %1062 = phi i32 [ 0, %1057 ], [ %1060, %1058 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1065

1063:                                             ; preds = %940
  %1064 = zext i32 %941 to i64
  br label %1065

1065:                                             ; preds = %1063, %1061, %955, %952, %948, %516
  %1066 = phi i64 [ %1064, %1063 ], [ %930, %955 ], [ %930, %952 ], [ %930, %948 ], [ %509, %516 ], [ %1053, %1061 ]
  %1067 = phi i32 [ 0, %1063 ], [ 0, %955 ], [ -1, %952 ], [ 0, %948 ], [ %520, %516 ], [ %1062, %1061 ]
  %1068 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %500, i64 %1066), !nosanitize !20
  %1069 = extractvalue { i64, i1 } %1068, 0, !nosanitize !20
  %1070 = extractvalue { i64, i1 } %1068, 1, !nosanitize !20
  br i1 %1070, label %1071, label %1072, !prof !21, !nosanitize !20

1071:                                             ; preds = %1065
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1072:                                             ; preds = %1065
  %1073 = getelementptr inbounds nuw i8, ptr %499, i64 %1066
  %1074 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %501, i64 %1066), !nosanitize !20
  %1075 = extractvalue { i64, i1 } %1074, 0, !nosanitize !20
  %1076 = extractvalue { i64, i1 } %1074, 1, !nosanitize !20
  br i1 %1076, label %1077, label %1078, !prof !21, !nosanitize !20

1077:                                             ; preds = %1078, %1072
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1078:                                             ; preds = %1072
  %1079 = load i64, ptr %493, align 8, !tbaa !23
  %1080 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1079, i64 %1066), !nosanitize !20
  %1081 = extractvalue { i64, i1 } %1080, 1, !nosanitize !20
  br i1 %1081, label %1077, label %1082, !prof !21, !nosanitize !20

1082:                                             ; preds = %1078
  %1083 = extractvalue { i64, i1 } %1080, 0, !nosanitize !20
  store i64 %1083, ptr %493, align 8, !tbaa !23
  br label %.loopexit99

.loopexit99:                                      ; preds = %913, %907, %758, %1082, %.loopexit97, %.loopexit96
  %1084 = phi ptr [ %1073, %1082 ], [ %499, %.loopexit97 ], [ %499, %.loopexit96 ], [ %499, %758 ], [ %499, %907 ], [ %499, %913 ]
  %1085 = phi i64 [ %1069, %1082 ], [ %500, %.loopexit97 ], [ %500, %.loopexit96 ], [ %500, %758 ], [ %500, %907 ], [ %500, %913 ]
  %1086 = phi i64 [ %1075, %1082 ], [ %501, %.loopexit97 ], [ %501, %.loopexit96 ], [ %501, %758 ], [ %501, %907 ], [ %501, %913 ]
  %1087 = phi i32 [ %1067, %1082 ], [ %920, %.loopexit97 ], [ 0, %.loopexit96 ], [ 0, %758 ], [ 0, %907 ], [ 0, %913 ]
  %1088 = icmp ne i64 %1085, 0
  %1089 = icmp eq i32 %1087, 0
  %1090 = select i1 %1088, i1 %1089, i1 false
  br i1 %1090, label %498, label %1091, !llvm.loop !60

1091:                                             ; preds = %.loopexit99
  %1092 = icmp eq i64 %1085, 0
  br i1 %1092, label %1098, label %1093

1093:                                             ; preds = %1091
  %1094 = load i32, ptr %481, align 8, !tbaa !24
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1098, label %.loopexit103

.loopexit103:                                     ; preds = %524, %1093
  %1096 = phi i64 [ %1086, %1093 ], [ %501, %524 ]
  %1097 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1097, align 4, !tbaa !61
  br label %1098

1098:                                             ; preds = %.loopexit103, %1093, %1091
  %1099 = phi i64 [ %1096, %.loopexit103 ], [ %1086, %1093 ], [ %1086, %1091 ]
  %1100 = freeze i64 %1099
  %1101 = icmp eq i64 %1100, 0
  %1102 = load i8, ptr %2, align 1
  %1103 = zext i8 %1102 to i32
  br i1 %1101, label %.loopexit118, label %1104

.loopexit118:                                     ; preds = %457, %117, %1098, %464, %.loopexit122, %.loopexit119, %103, %99
  br label %1104

1104:                                             ; preds = %.loopexit118, %1098, %25, %11, %4, %1
  %1105 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %.loopexit118 ], [ %1103, %1098 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %1105
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %.loopexit67, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %.loopexit67

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load i32, ptr %9, align 8, !tbaa !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %269

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8, !tbaa !19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %269

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
  br label %269

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
  br label %269

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
  br label %269

56:                                               ; preds = %46
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %58 = load i32, ptr %57, align 8, !tbaa !16
  switch i32 %58, label %269 [
    i32 0, label %59
    i32 -5, label %59
  ]

59:                                               ; preds = %56, %56
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %61 = load i32, ptr %60, align 8, !tbaa !24
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %64 = load i32, ptr %63, align 8, !tbaa !34
  br i1 %62, label %65, label %234

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
  br i1 %95, label %.loopexit75, label %96

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
  br i1 %118, label %.loopexit75, label %119

119:                                              ; preds = %113, %96, %72
  %120 = phi ptr [ %69, %72 ], [ %97, %96 ], [ %114, %113 ]
  %121 = phi ptr [ %70, %72 ], [ %98, %96 ], [ %115, %113 ]
  %122 = phi i32 [ %64, %72 ], [ %100, %96 ], [ %117, %113 ]
  %123 = add i32 %122, -1
  %124 = and i32 %122, 7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %.loopexit77, label %.preheader76

.preheader76:                                     ; preds = %119, %.preheader76
  %126 = phi ptr [ %130, %.preheader76 ], [ %120, %119 ]
  %127 = phi ptr [ %131, %.preheader76 ], [ %121, %119 ]
  %128 = phi i32 [ %132, %.preheader76 ], [ 0, %119 ]
  %129 = load i8, ptr %127, align 1, !tbaa !36
  store i8 %129, ptr %126, align 1, !tbaa !36
  %130 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %131 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %132 = add nuw nsw i32 %128, 1
  %133 = icmp eq i32 %132, %124
  br i1 %133, label %.loopexit77.loopexit, label %.preheader76, !llvm.loop !88

.loopexit77.loopexit:                             ; preds = %.preheader76
  %134 = and i32 %122, -8
  br label %.loopexit77

.loopexit77:                                      ; preds = %.loopexit77.loopexit, %119
  %135 = phi ptr [ %120, %119 ], [ %130, %.loopexit77.loopexit ]
  %136 = phi ptr [ %121, %119 ], [ %131, %.loopexit77.loopexit ]
  %137 = phi i32 [ %122, %119 ], [ %134, %.loopexit77.loopexit ]
  %138 = icmp ult i32 %123, 7
  br i1 %138, label %.loopexit75, label %.preheader74

.preheader74:                                     ; preds = %.loopexit77, %.preheader74
  %139 = phi ptr [ %165, %.preheader74 ], [ %135, %.loopexit77 ]
  %140 = phi ptr [ %166, %.preheader74 ], [ %136, %.loopexit77 ]
  %141 = phi i32 [ %164, %.preheader74 ], [ %137, %.loopexit77 ]
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
  br i1 %167, label %.loopexit75, label %.preheader74, !llvm.loop !89

.loopexit75:                                      ; preds = %.preheader74, %.loopexit77, %113, %94
  %168 = load i32, ptr %63, align 8, !tbaa !34
  br label %169

169:                                              ; preds = %.loopexit75, %67, %65
  %170 = phi i32 [ %168, %.loopexit75 ], [ %64, %67 ], [ 0, %65 ]
  %171 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %172 = load i32, ptr %17, align 8, !tbaa !27
  %.fr = freeze i32 %172
  %173 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %170), !nosanitize !20
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
  %mv.h27 = icmp sgt i32 %.fr, -1
  br i1 %mv.h27, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %176, %194
  %184 = phi i32 [ %195, %194 ], [ 0, %176 ]
  %185 = sub i32 %177, %184
  %186 = tail call i32 @llvm.umin.i32(i32 %185, i32 1073741824)
  %187 = load i32, ptr %183, align 4, !tbaa !46
  %188 = zext i32 %184 to i64
  %189 = getelementptr inbounds nuw i8, ptr %180, i64 %188
  %190 = zext nneg i32 %186 to i64
  %191 = tail call i64 @read(i32 noundef %187, ptr noundef %189, i64 noundef %190) #13
  %192 = trunc i64 %191 to i32
  %193 = icmp slt i32 %192, 1
  br i1 %193, label %.loopexit71, label %194

194:                                              ; preds = %.mv.ph29.mv.fast
  %195 = add i32 %184, %192
  %196 = icmp ult i32 %195, %177
  br i1 %196, label %.mv.ph29.mv.fast, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %176, %211
  %197 = phi i32 [ %212, %211 ], [ 0, %176 ]
  %198 = sub i32 %177, %197
  %199 = tail call i32 @llvm.umin.i32(i32 %198, i32 1073741824)
  %200 = load i32, ptr %183, align 4, !tbaa !46
  %201 = zext i32 %197 to i64
  %202 = getelementptr inbounds nuw i8, ptr %180, i64 %201
  %203 = zext nneg i32 %199 to i64
  %204 = tail call i64 @read(i32 noundef %200, ptr noundef %202, i64 noundef %203) #13
  %205 = trunc i64 %204 to i32
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %.loopexit71, label %207

207:                                              ; preds = %.mv.ph29
  %208 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %197, i32 %205), !nosanitize !20
  %209 = extractvalue { i32, i1 } %208, 1, !nosanitize !20
  br i1 %209, label %210, label %211, !prof !21, !nosanitize !20

210:                                              ; preds = %207
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

211:                                              ; preds = %207
  %212 = extractvalue { i32, i1 } %208, 0, !nosanitize !20
  %213 = icmp ult i32 %212, %177
  br i1 %213, label %.mv.ph29, label %.loopexit19, !llvm.loop !47

.loopexit71:                                      ; preds = %.mv.ph29, %.mv.ph29.mv.fast
  %.lcssa23 = phi i32 [ %192, %.mv.ph29.mv.fast ], [ %205, %.mv.ph29 ]
  %.lcssa20 = phi i32 [ %184, %.mv.ph29.mv.fast ], [ %197, %.mv.ph29 ]
  %214 = icmp slt i32 %.lcssa23, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %.loopexit71
  %216 = load i32, ptr %182, align 4, !tbaa !45
  %217 = icmp eq i32 %216, 11
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  store i32 1, ptr %181, align 4, !tbaa !17
  %219 = icmp eq i32 %.lcssa20, 0
  br i1 %219, label %220, label %.loopexit19

220:                                              ; preds = %218
  %221 = load i32, ptr %182, align 4, !tbaa !45
  br label %223

222:                                              ; preds = %.loopexit71
  store i32 1, ptr %60, align 8, !tbaa !24
  br label %.loopexit19

223:                                              ; preds = %220, %215
  %224 = phi i32 [ %221, %220 ], [ %216, %215 ]
  %225 = tail call ptr @strerror(i32 noundef %224) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %225) #13
  br label %269

.loopexit19:                                      ; preds = %211, %194, %222, %218
  %226 = phi i32 [ %.lcssa20, %222 ], [ %.lcssa20, %218 ], [ %195, %194 ], [ %212, %211 ]
  %227 = load i32, ptr %63, align 8, !tbaa !34
  %228 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %226), !nosanitize !20
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !20
  br i1 %229, label %230, label %231, !prof !21, !nosanitize !20

230:                                              ; preds = %.loopexit19
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

231:                                              ; preds = %.loopexit19
  %232 = extractvalue { i32, i1 } %228, 0, !nosanitize !20
  store i32 %232, ptr %63, align 8, !tbaa !34
  %233 = load ptr, ptr %171, align 8, !tbaa !29
  store ptr %233, ptr %16, align 8, !tbaa !35
  br label %234

234:                                              ; preds = %231, %59
  %235 = phi i32 [ %232, %231 ], [ %64, %59 ]
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %269, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %239 = load i32, ptr %238, align 4, !tbaa !17
  %240 = icmp ne i32 %239, 0
  %241 = icmp ult i32 %235, 4
  %242 = and i1 %241, %240
  br i1 %242, label %269, label %243

243:                                              ; preds = %237
  %244 = icmp ugt i32 %235, 3
  %245 = load ptr, ptr %16, align 8, !tbaa !35
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
  %262 = tail call i32 @inflateReset(ptr noundef nonnull %16) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %47, align 4, !tbaa !33
  store i32 0, ptr %43, align 8, !tbaa !32
  br label %269

263:                                              ; preds = %257, %253, %249, %246, %243
  %264 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %265 = load ptr, ptr %264, align 8, !tbaa !30
  %266 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %265, ptr %266, align 8, !tbaa !22
  %267 = zext i32 %235 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %265, ptr align 1 %245, i64 %267, i1 false)
  %268 = load i32, ptr %63, align 8, !tbaa !34
  store i32 %268, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %63, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %269

269:                                              ; preds = %263, %261, %237, %234, %223, %56, %50, %39, %33, %12, %8
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %271 = load i32, ptr %270, align 8, !tbaa !16
  switch i32 %271, label %272 [
    i32 0, label %276
    i32 -5, label %276
  ]

272:                                              ; preds = %269
  %273 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %274 = load i32, ptr %273, align 4, !tbaa !17
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %.loopexit67, label %276

276:                                              ; preds = %272, %269, %269
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %277 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %278 = load i64, ptr %277, align 8, !tbaa !18
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %725, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %282 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %283 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %284 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %285 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %286 = getelementptr inbounds nuw i8, ptr %1, i64 168
  %287 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %288 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %289 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %290 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %291 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %292 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %293 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %294 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %295 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %296 = getelementptr inbounds nuw i8, ptr %1, i64 200
  %297 = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %298

298:                                              ; preds = %720, %280
  %299 = phi i64 [ %721, %720 ], [ %278, %280 ]
  %300 = load i32, ptr %1, align 8, !tbaa !19
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %321, label %302

302:                                              ; preds = %298
  %303 = zext i32 %300 to i64
  %304 = tail call i64 @llvm.smin.i64(i64 %299, i64 %303)
  %305 = trunc i64 %304 to i32
  %306 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %300, i32 %305), !nosanitize !20
  %307 = extractvalue { i32, i1 } %306, 1, !nosanitize !20
  br i1 %307, label %308, label %309, !prof !21, !nosanitize !20

308:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

309:                                              ; preds = %302
  %310 = extractvalue { i32, i1 } %306, 0, !nosanitize !20
  store i32 %310, ptr %1, align 8, !tbaa !19
  %311 = load ptr, ptr %281, align 8, !tbaa !22
  %312 = and i64 %304, 4294967295
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 %312
  store ptr %313, ptr %281, align 8, !tbaa !22
  %314 = load i64, ptr %282, align 8, !tbaa !23
  %315 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %314, i64 %312), !nosanitize !20
  %316 = extractvalue { i64, i1 } %315, 1, !nosanitize !20
  br i1 %316, label %317, label %318, !prof !21, !nosanitize !20

317:                                              ; preds = %309
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

318:                                              ; preds = %309
  %319 = extractvalue { i64, i1 } %315, 0, !nosanitize !20
  store i64 %319, ptr %282, align 8, !tbaa !23
  %320 = sub i64 %299, %312
  store i64 %320, ptr %277, align 8, !tbaa !18
  br label %720

321:                                              ; preds = %298
  %322 = load i32, ptr %283, align 8, !tbaa !24
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %.preheader464, label %324

324:                                              ; preds = %321
  %325 = load i32, ptr %284, align 8, !tbaa !25
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %723, label %.preheader464

.preheader464:                                    ; preds = %324, %321
  br label %327

327:                                              ; preds = %.backedge, %.preheader464
  %328 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %328, label %707 [
    i32 0, label %329
    i32 1, label %565
    i32 2, label %603
  ]

329:                                              ; preds = %327
  %330 = load i32, ptr %285, align 8, !tbaa !27
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %349

332:                                              ; preds = %329
  %333 = load i32, ptr %295, align 4, !tbaa !28
  %334 = zext i32 %333 to i64
  %335 = tail call noalias ptr @malloc(i64 noundef %334) #16
  store ptr %335, ptr %290, align 8, !tbaa !29
  %336 = shl i32 %333, 1
  %337 = zext i32 %336 to i64
  %338 = tail call noalias ptr @malloc(i64 noundef %337) #16
  store ptr %338, ptr %287, align 8, !tbaa !30
  %339 = icmp eq ptr %335, null
  %340 = icmp eq ptr %338, null
  %341 = or i1 %339, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %332
  tail call void @free(ptr noundef %338) #13
  tail call void @free(ptr noundef %335) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit67

343:                                              ; preds = %332
  store i32 %333, ptr %285, align 8, !tbaa !27
  store i32 0, ptr %284, align 8, !tbaa !25
  store ptr null, ptr %289, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %296, i8 0, i64 24, i1 false)
  %344 = tail call i32 @inflateInit2_(ptr noundef nonnull %289, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %343
  %347 = load ptr, ptr %287, align 8, !tbaa !30
  tail call void @free(ptr noundef %347) #13
  %348 = load ptr, ptr %290, align 8, !tbaa !29
  tail call void @free(ptr noundef %348) #13
  store i32 0, ptr %285, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit67

349:                                              ; preds = %343, %329
  %350 = load i32, ptr %297, align 8, !tbaa !32
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = load i32, ptr %293, align 4, !tbaa !33
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %352, %349
  %356 = tail call i32 @inflateReset(ptr noundef nonnull %289) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  %357 = load i32, ptr %293, align 4, !tbaa !33
  %358 = icmp ne i32 %357, -1
  %359 = zext i1 %358 to i32
  store i32 %359, ptr %293, align 4, !tbaa !33
  store i32 0, ptr %297, align 8, !tbaa !32
  br label %562

360:                                              ; preds = %352
  %361 = load i32, ptr %270, align 8, !tbaa !16
  switch i32 %361, label %.loopexit67 [
    i32 0, label %362
    i32 -5, label %362
  ]

362:                                              ; preds = %360, %360
  %363 = load i32, ptr %283, align 8, !tbaa !24
  %364 = icmp eq i32 %363, 0
  %365 = load i32, ptr %284, align 8, !tbaa !34
  br i1 %364, label %366, label %530

366:                                              ; preds = %362
  %367 = icmp eq i32 %365, 0
  br i1 %367, label %469, label %368

368:                                              ; preds = %366
  %369 = load ptr, ptr %290, align 8, !tbaa !29
  %370 = load ptr, ptr %289, align 8, !tbaa !35
  %371 = icmp eq ptr %370, %369
  br i1 %371, label %469, label %372

372:                                              ; preds = %368
  %373 = ptrtoint ptr %370 to i64
  %374 = ptrtoint ptr %369 to i64
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
  %383 = and i64 %375, 4294967264
  br label %384

384:                                              ; preds = %384, %382
  %385 = phi i64 [ 0, %382 ], [ %392, %384 ]
  %386 = getelementptr i8, ptr %369, i64 %385
  %387 = getelementptr i8, ptr %370, i64 %385
  %388 = getelementptr i8, ptr %387, i64 16
  %389 = load <16 x i8>, ptr %387, align 1, !tbaa !36
  %390 = load <16 x i8>, ptr %388, align 1, !tbaa !36
  %391 = getelementptr i8, ptr %386, i64 16
  store <16 x i8> %389, ptr %386, align 1, !tbaa !36
  store <16 x i8> %390, ptr %391, align 1, !tbaa !36
  %392 = add nuw nsw i64 %385, 32
  %393 = icmp eq i64 %392, %383
  br i1 %393, label %394, label %384, !llvm.loop !90

394:                                              ; preds = %384
  %395 = icmp eq i64 %383, %375
  br i1 %395, label %.loopexit61, label %396

396:                                              ; preds = %394
  %397 = getelementptr i8, ptr %369, i64 %383
  %398 = getelementptr i8, ptr %370, i64 %383
  %399 = trunc nuw i64 %383 to i32
  %400 = sub i32 %365, %399
  %401 = and i64 %375, 28
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %419, label %403

403:                                              ; preds = %396, %380
  %404 = phi i64 [ %383, %396 ], [ 0, %380 ]
  %405 = and i64 %375, 4294967292
  br label %406

406:                                              ; preds = %406, %403
  %407 = phi i64 [ %404, %403 ], [ %411, %406 ]
  %408 = getelementptr i8, ptr %369, i64 %407
  %409 = getelementptr i8, ptr %370, i64 %407
  %410 = load <4 x i8>, ptr %409, align 1, !tbaa !36
  store <4 x i8> %410, ptr %408, align 1, !tbaa !36
  %411 = add nuw i64 %407, 4
  %412 = icmp eq i64 %411, %405
  br i1 %412, label %413, label %406, !llvm.loop !91

413:                                              ; preds = %406
  %414 = getelementptr i8, ptr %369, i64 %405
  %415 = getelementptr i8, ptr %370, i64 %405
  %416 = trunc nuw i64 %405 to i32
  %417 = sub i32 %365, %416
  %418 = icmp eq i64 %405, %375
  br i1 %418, label %.loopexit61, label %419

419:                                              ; preds = %413, %396, %372
  %420 = phi ptr [ %369, %372 ], [ %397, %396 ], [ %414, %413 ]
  %421 = phi ptr [ %370, %372 ], [ %398, %396 ], [ %415, %413 ]
  %422 = phi i32 [ %365, %372 ], [ %400, %396 ], [ %417, %413 ]
  %423 = add i32 %422, -1
  %424 = and i32 %422, 7
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %.loopexit63, label %.preheader62

.preheader62:                                     ; preds = %419, %.preheader62
  %426 = phi ptr [ %430, %.preheader62 ], [ %420, %419 ]
  %427 = phi ptr [ %431, %.preheader62 ], [ %421, %419 ]
  %428 = phi i32 [ %432, %.preheader62 ], [ 0, %419 ]
  %429 = load i8, ptr %427, align 1, !tbaa !36
  store i8 %429, ptr %426, align 1, !tbaa !36
  %430 = getelementptr inbounds nuw i8, ptr %426, i64 1
  %431 = getelementptr inbounds nuw i8, ptr %427, i64 1
  %432 = add nuw nsw i32 %428, 1
  %433 = icmp eq i32 %432, %424
  br i1 %433, label %.loopexit63.loopexit, label %.preheader62, !llvm.loop !92

.loopexit63.loopexit:                             ; preds = %.preheader62
  %434 = and i32 %422, -8
  br label %.loopexit63

.loopexit63:                                      ; preds = %.loopexit63.loopexit, %419
  %435 = phi ptr [ %420, %419 ], [ %430, %.loopexit63.loopexit ]
  %436 = phi ptr [ %421, %419 ], [ %431, %.loopexit63.loopexit ]
  %437 = phi i32 [ %422, %419 ], [ %434, %.loopexit63.loopexit ]
  %438 = icmp ult i32 %423, 7
  br i1 %438, label %.loopexit61, label %.preheader

.preheader:                                       ; preds = %.loopexit63, %.preheader
  %439 = phi ptr [ %465, %.preheader ], [ %435, %.loopexit63 ]
  %440 = phi ptr [ %466, %.preheader ], [ %436, %.loopexit63 ]
  %441 = phi i32 [ %464, %.preheader ], [ %437, %.loopexit63 ]
  %442 = load i8, ptr %440, align 1, !tbaa !36
  store i8 %442, ptr %439, align 1, !tbaa !36
  %443 = getelementptr inbounds nuw i8, ptr %439, i64 1
  %444 = getelementptr inbounds nuw i8, ptr %440, i64 1
  %445 = load i8, ptr %444, align 1, !tbaa !36
  store i8 %445, ptr %443, align 1, !tbaa !36
  %446 = getelementptr inbounds nuw i8, ptr %439, i64 2
  %447 = getelementptr inbounds nuw i8, ptr %440, i64 2
  %448 = load i8, ptr %447, align 1, !tbaa !36
  store i8 %448, ptr %446, align 1, !tbaa !36
  %449 = getelementptr inbounds nuw i8, ptr %439, i64 3
  %450 = getelementptr inbounds nuw i8, ptr %440, i64 3
  %451 = load i8, ptr %450, align 1, !tbaa !36
  store i8 %451, ptr %449, align 1, !tbaa !36
  %452 = getelementptr inbounds nuw i8, ptr %439, i64 4
  %453 = getelementptr inbounds nuw i8, ptr %440, i64 4
  %454 = load i8, ptr %453, align 1, !tbaa !36
  store i8 %454, ptr %452, align 1, !tbaa !36
  %455 = getelementptr inbounds nuw i8, ptr %439, i64 5
  %456 = getelementptr inbounds nuw i8, ptr %440, i64 5
  %457 = load i8, ptr %456, align 1, !tbaa !36
  store i8 %457, ptr %455, align 1, !tbaa !36
  %458 = getelementptr inbounds nuw i8, ptr %439, i64 6
  %459 = getelementptr inbounds nuw i8, ptr %440, i64 6
  %460 = load i8, ptr %459, align 1, !tbaa !36
  store i8 %460, ptr %458, align 1, !tbaa !36
  %461 = getelementptr inbounds nuw i8, ptr %439, i64 7
  %462 = getelementptr inbounds nuw i8, ptr %440, i64 7
  %463 = load i8, ptr %462, align 1, !tbaa !36
  store i8 %463, ptr %461, align 1, !tbaa !36
  %464 = add i32 %441, -8
  %465 = getelementptr inbounds nuw i8, ptr %439, i64 8
  %466 = getelementptr inbounds nuw i8, ptr %440, i64 8
  %467 = icmp eq i32 %464, 0
  br i1 %467, label %.loopexit61, label %.preheader, !llvm.loop !93

.loopexit61:                                      ; preds = %.preheader, %.loopexit63, %413, %394
  %468 = load i32, ptr %284, align 8, !tbaa !34
  br label %469

469:                                              ; preds = %.loopexit61, %368, %366
  %470 = phi i32 [ %468, %.loopexit61 ], [ %365, %368 ], [ 0, %366 ]
  %471 = load i32, ptr %285, align 8, !tbaa !27
  %.fr54 = freeze i32 %471
  %472 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr54, i32 %470), !nosanitize !20
  %473 = extractvalue { i32, i1 } %472, 1, !nosanitize !20
  br i1 %473, label %474, label %475, !prof !21, !nosanitize !20

474:                                              ; preds = %469
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

475:                                              ; preds = %469
  %476 = extractvalue { i32, i1 } %472, 0, !nosanitize !20
  %477 = load ptr, ptr %290, align 8, !tbaa !29
  %478 = zext i32 %470 to i64
  %479 = getelementptr inbounds nuw i8, ptr %477, i64 %478
  store i32 0, ptr %291, align 4, !tbaa !17
  %480 = tail call ptr @__errno_location() #17
  store i32 0, ptr %480, align 4, !tbaa !45
  %mv.h16 = icmp sgt i32 %.fr54, -1
  br i1 %mv.h16, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %475, %491
  %481 = phi i32 [ %492, %491 ], [ 0, %475 ]
  %482 = sub i32 %476, %481
  %483 = tail call i32 @llvm.umin.i32(i32 %482, i32 1073741824)
  %484 = load i32, ptr %292, align 4, !tbaa !46
  %485 = zext i32 %481 to i64
  %486 = getelementptr inbounds nuw i8, ptr %479, i64 %485
  %487 = zext nneg i32 %483 to i64
  %488 = tail call i64 @read(i32 noundef %484, ptr noundef %486, i64 noundef %487) #13
  %489 = trunc i64 %488 to i32
  %490 = icmp slt i32 %489, 1
  br i1 %490, label %.loopexit58, label %491

491:                                              ; preds = %.mv.ph18.mv.fast
  %492 = add i32 %481, %489
  %493 = icmp ult i32 %492, %476
  br i1 %493, label %.mv.ph18.mv.fast, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %475, %508
  %494 = phi i32 [ %509, %508 ], [ 0, %475 ]
  %495 = sub i32 %476, %494
  %496 = tail call i32 @llvm.umin.i32(i32 %495, i32 1073741824)
  %497 = load i32, ptr %292, align 4, !tbaa !46
  %498 = zext i32 %494 to i64
  %499 = getelementptr inbounds nuw i8, ptr %479, i64 %498
  %500 = zext nneg i32 %496 to i64
  %501 = tail call i64 @read(i32 noundef %497, ptr noundef %499, i64 noundef %500) #13
  %502 = trunc i64 %501 to i32
  %503 = icmp slt i32 %502, 1
  br i1 %503, label %.loopexit58, label %504

504:                                              ; preds = %.mv.ph18
  %505 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %494, i32 %502), !nosanitize !20
  %506 = extractvalue { i32, i1 } %505, 1, !nosanitize !20
  br i1 %506, label %507, label %508, !prof !21, !nosanitize !20

507:                                              ; preds = %504
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

508:                                              ; preds = %504
  %509 = extractvalue { i32, i1 } %505, 0, !nosanitize !20
  %510 = icmp ult i32 %509, %476
  br i1 %510, label %.mv.ph18, label %.loopexit8, !llvm.loop !47

.loopexit58:                                      ; preds = %.mv.ph18, %.mv.ph18.mv.fast
  %.lcssa12 = phi i32 [ %489, %.mv.ph18.mv.fast ], [ %502, %.mv.ph18 ]
  %.lcssa9 = phi i32 [ %481, %.mv.ph18.mv.fast ], [ %494, %.mv.ph18 ]
  %511 = icmp slt i32 %.lcssa12, 0
  br i1 %511, label %512, label %519

512:                                              ; preds = %.loopexit58
  %513 = load i32, ptr %480, align 4, !tbaa !45
  %514 = icmp eq i32 %513, 11
  br i1 %514, label %515, label %.loopexit68

515:                                              ; preds = %512
  store i32 1, ptr %291, align 4, !tbaa !17
  %516 = icmp eq i32 %.lcssa9, 0
  br i1 %516, label %517, label %.loopexit8

517:                                              ; preds = %515
  %518 = load i32, ptr %480, align 4, !tbaa !45
  br label %.loopexit68

519:                                              ; preds = %.loopexit58
  store i32 1, ptr %283, align 8, !tbaa !24
  br label %.loopexit8

.loopexit68:                                      ; preds = %512, %517
  %520 = phi i32 [ %518, %517 ], [ %513, %512 ]
  %521 = tail call ptr @strerror(i32 noundef %520) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %521) #13
  br label %.loopexit67

.loopexit8:                                       ; preds = %508, %491, %519, %515
  %522 = phi i32 [ %.lcssa9, %519 ], [ %.lcssa9, %515 ], [ %492, %491 ], [ %509, %508 ]
  %523 = load i32, ptr %284, align 8, !tbaa !34
  %524 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %523, i32 %522), !nosanitize !20
  %525 = extractvalue { i32, i1 } %524, 1, !nosanitize !20
  br i1 %525, label %526, label %527, !prof !21, !nosanitize !20

526:                                              ; preds = %.loopexit8
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

527:                                              ; preds = %.loopexit8
  %528 = extractvalue { i32, i1 } %524, 0, !nosanitize !20
  store i32 %528, ptr %284, align 8, !tbaa !34
  %529 = load ptr, ptr %290, align 8, !tbaa !29
  store ptr %529, ptr %289, align 8, !tbaa !35
  br label %530

530:                                              ; preds = %527, %362
  %531 = phi i32 [ %528, %527 ], [ %365, %362 ]
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %562, label %533

533:                                              ; preds = %530
  %534 = load i32, ptr %291, align 4, !tbaa !17
  %535 = icmp ne i32 %534, 0
  %536 = icmp ult i32 %531, 4
  %537 = and i1 %536, %535
  br i1 %537, label %562, label %538

538:                                              ; preds = %533
  %539 = icmp ugt i32 %531, 3
  %540 = load ptr, ptr %289, align 8, !tbaa !35
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
  %557 = tail call i32 @inflateReset(ptr noundef nonnull %289) #13
  store i32 2, ptr %9, align 8, !tbaa !26
  store i32 1, ptr %293, align 4, !tbaa !33
  store i32 0, ptr %297, align 8, !tbaa !32
  br label %708

558:                                              ; preds = %552, %548, %544, %541, %538
  %559 = load ptr, ptr %287, align 8, !tbaa !30
  store ptr %559, ptr %281, align 8, !tbaa !22
  %560 = zext i32 %531 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %559, ptr align 1 %540, i64 %560, i1 false)
  %561 = load i32, ptr %284, align 8, !tbaa !34
  store i32 %561, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %284, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %710

562:                                              ; preds = %533, %530, %355
  %563 = load i32, ptr %9, align 8, !tbaa !26
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %.loopexit69, label %708

565:                                              ; preds = %327
  %566 = load ptr, ptr %287, align 8, !tbaa !30
  %567 = load i32, ptr %285, align 8, !tbaa !27
  %568 = shl i32 %567, 1
  store i32 0, ptr %291, align 4, !tbaa !17
  %569 = tail call ptr @__errno_location() #17
  store i32 0, ptr %569, align 4, !tbaa !45
  store i32 0, ptr %1, align 8, !tbaa !45
  br label %570

570:                                              ; preds = %586, %565
  %571 = phi i32 [ %587, %586 ], [ 0, %565 ]
  %572 = sub i32 %568, %571
  %573 = tail call i32 @llvm.umin.i32(i32 %572, i32 1073741824)
  %574 = load i32, ptr %292, align 4, !tbaa !46
  %575 = zext i32 %571 to i64
  %576 = getelementptr inbounds nuw i8, ptr %566, i64 %575
  %577 = zext nneg i32 %573 to i64
  %578 = tail call i64 @read(i32 noundef %574, ptr noundef %576, i64 noundef %577) #13
  %579 = trunc i64 %578 to i32
  %580 = icmp slt i32 %579, 1
  br i1 %580, label %589, label %581

581:                                              ; preds = %570
  %582 = load i32, ptr %1, align 4, !tbaa !45
  %583 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %582, i32 %579), !nosanitize !20
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !20
  br i1 %584, label %585, label %586, !prof !21, !nosanitize !20

585:                                              ; preds = %581
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

586:                                              ; preds = %581
  %587 = extractvalue { i32, i1 } %583, 0, !nosanitize !20
  store i32 %587, ptr %1, align 4, !tbaa !45
  %588 = icmp ult i32 %587, %568
  br i1 %588, label %570, label %.loopexit66, !llvm.loop !47

589:                                              ; preds = %570
  %590 = icmp slt i32 %579, 0
  br i1 %590, label %591, label %599

591:                                              ; preds = %589
  %592 = load i32, ptr %569, align 4, !tbaa !45
  %593 = icmp eq i32 %592, 11
  br i1 %593, label %594, label %.loopexit70

594:                                              ; preds = %591
  store i32 1, ptr %291, align 4, !tbaa !17
  %595 = load i32, ptr %1, align 4, !tbaa !45
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %.loopexit66

597:                                              ; preds = %594
  %598 = load i32, ptr %569, align 4, !tbaa !45
  br label %.loopexit70

599:                                              ; preds = %589
  store i32 1, ptr %283, align 8, !tbaa !24
  br label %.loopexit66

.loopexit70:                                      ; preds = %591, %597
  %600 = phi i32 [ %598, %597 ], [ %592, %591 ]
  %601 = tail call ptr @strerror(i32 noundef %600) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %601) #13
  br label %.loopexit67

.loopexit66:                                      ; preds = %586, %599, %594
  %602 = load ptr, ptr %287, align 8, !tbaa !30
  store ptr %602, ptr %281, align 8, !tbaa !22
  br label %.loopexit69

603:                                              ; preds = %327
  %604 = load i32, ptr %285, align 8, !tbaa !27
  %605 = shl i32 %604, 1
  store i32 %605, ptr %286, align 8, !tbaa !48
  %606 = load ptr, ptr %287, align 8, !tbaa !30
  store ptr %606, ptr %288, align 8, !tbaa !49
  br label %607

607:                                              ; preds = %691, %603
  %608 = phi i32 [ 0, %603 ], [ %676, %691 ]
  %609 = load i32, ptr %284, align 8, !tbaa !34
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %675

611:                                              ; preds = %607
  %612 = load i32, ptr %270, align 8, !tbaa !16
  switch i32 %612, label %.loopexit64 [
    i32 0, label %613
    i32 -5, label %613
  ]

613:                                              ; preds = %611, %611
  %614 = load i32, ptr %283, align 8, !tbaa !24
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %671

616:                                              ; preds = %613
  %617 = load i32, ptr %285, align 8, !tbaa !27
  %.fr53 = freeze i32 %617
  %618 = load ptr, ptr %290, align 8, !tbaa !29
  store i32 0, ptr %291, align 4, !tbaa !17
  %619 = tail call ptr @__errno_location() #17
  store i32 0, ptr %619, align 4, !tbaa !45
  %mv.h = icmp sgt i32 %.fr53, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %616, %630
  %620 = phi i32 [ %631, %630 ], [ 0, %616 ]
  %621 = sub nsw i32 %.fr53, %620
  %622 = tail call i32 @llvm.umin.i32(i32 %621, i32 1073741824)
  %623 = load i32, ptr %292, align 4, !tbaa !46
  %624 = zext nneg i32 %620 to i64
  %625 = getelementptr inbounds nuw i8, ptr %618, i64 %624
  %626 = zext nneg i32 %622 to i64
  %627 = tail call i64 @read(i32 noundef %623, ptr noundef %625, i64 noundef %626) #13
  %628 = trunc i64 %627 to i32
  %629 = icmp slt i32 %628, 1
  br i1 %629, label %.loopexit55, label %630

630:                                              ; preds = %.mv.ph.mv.fast
  %631 = add nuw i32 %620, %628
  %632 = icmp ult i32 %631, %.fr53
  br i1 %632, label %.mv.ph.mv.fast, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %616, %647
  %633 = phi i32 [ %648, %647 ], [ 0, %616 ]
  %634 = sub i32 %.fr53, %633
  %635 = tail call i32 @llvm.umin.i32(i32 %634, i32 1073741824)
  %636 = load i32, ptr %292, align 4, !tbaa !46
  %637 = zext i32 %633 to i64
  %638 = getelementptr inbounds nuw i8, ptr %618, i64 %637
  %639 = zext nneg i32 %635 to i64
  %640 = tail call i64 @read(i32 noundef %636, ptr noundef %638, i64 noundef %639) #13
  %641 = trunc i64 %640 to i32
  %642 = icmp slt i32 %641, 1
  br i1 %642, label %.loopexit55, label %643

643:                                              ; preds = %.mv.ph
  %644 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %633, i32 %641), !nosanitize !20
  %645 = extractvalue { i32, i1 } %644, 1, !nosanitize !20
  br i1 %645, label %646, label %647, !prof !21, !nosanitize !20

646:                                              ; preds = %643
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

647:                                              ; preds = %643
  %648 = extractvalue { i32, i1 } %644, 0, !nosanitize !20
  %649 = icmp ult i32 %648, %.fr53
  br i1 %649, label %.mv.ph, label %.loopexit, !llvm.loop !47

.loopexit55:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa4 = phi i32 [ %628, %.mv.ph.mv.fast ], [ %641, %.mv.ph ]
  %.lcssa1 = phi i32 [ %620, %.mv.ph.mv.fast ], [ %633, %.mv.ph ]
  %650 = icmp slt i32 %.lcssa4, 0
  br i1 %650, label %651, label %658

651:                                              ; preds = %.loopexit55
  %652 = load i32, ptr %619, align 4, !tbaa !45
  %653 = icmp eq i32 %652, 11
  br i1 %653, label %654, label %.loopexit65

654:                                              ; preds = %651
  store i32 1, ptr %291, align 4, !tbaa !17
  %655 = icmp eq i32 %.lcssa1, 0
  br i1 %655, label %656, label %.loopexit

656:                                              ; preds = %654
  %657 = load i32, ptr %619, align 4, !tbaa !45
  br label %.loopexit65

658:                                              ; preds = %.loopexit55
  store i32 1, ptr %283, align 8, !tbaa !24
  br label %.loopexit

.loopexit65:                                      ; preds = %651, %656
  %659 = phi i32 [ %657, %656 ], [ %652, %651 ]
  %660 = tail call ptr @strerror(i32 noundef %659) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %660) #13
  %661 = load i32, ptr %270, align 8, !tbaa !16
  br label %.loopexit64

.loopexit:                                        ; preds = %647, %630, %658, %654
  %662 = phi i32 [ %.lcssa1, %658 ], [ %.lcssa1, %654 ], [ %631, %630 ], [ %648, %647 ]
  %663 = load i32, ptr %284, align 8, !tbaa !34
  %664 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %663, i32 %662), !nosanitize !20
  %665 = extractvalue { i32, i1 } %664, 1, !nosanitize !20
  br i1 %665, label %666, label %667, !prof !21, !nosanitize !20

666:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

667:                                              ; preds = %.loopexit
  %668 = extractvalue { i32, i1 } %664, 0, !nosanitize !20
  store i32 %668, ptr %284, align 8, !tbaa !34
  %669 = load ptr, ptr %290, align 8, !tbaa !29
  store ptr %669, ptr %289, align 8, !tbaa !35
  %670 = icmp eq i32 %668, 0
  br i1 %670, label %671, label %675

671:                                              ; preds = %667, %613
  %672 = load i32, ptr %291, align 4, !tbaa !17
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %.loopexit64

674:                                              ; preds = %671
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit64

675:                                              ; preds = %667, %607
  %676 = tail call i32 @inflate(ptr noundef nonnull %289, i32 noundef 0) #13
  %677 = load i32, ptr %286, align 8, !tbaa !48
  %678 = icmp ult i32 %677, %605
  br i1 %678, label %679, label %680

679:                                              ; preds = %675
  store i32 0, ptr %293, align 4, !tbaa !33
  br label %680

680:                                              ; preds = %679, %675
  switch i32 %676, label %691 [
    i32 -2, label %681
    i32 2, label %681
    i32 -4, label %682
    i32 -3, label %683
  ]

681:                                              ; preds = %680, %680
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit64

682:                                              ; preds = %680
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit64

683:                                              ; preds = %680
  %684 = load i32, ptr %293, align 4, !tbaa !33
  %685 = icmp eq i32 %684, 1
  br i1 %685, label %686, label %687

686:                                              ; preds = %683
  store i32 0, ptr %284, align 8, !tbaa !34
  store i32 1, ptr %283, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %.loopexit64

687:                                              ; preds = %683
  %688 = load ptr, ptr %294, align 8, !tbaa !50
  %689 = icmp eq ptr %688, null
  %690 = select i1 %689, ptr @.str.6, ptr %688
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %690) #13
  br label %.loopexit64

691:                                              ; preds = %680
  %692 = icmp ne i32 %677, 0
  %693 = icmp ne i32 %676, 1
  %694 = select i1 %692, i1 %693, i1 false
  br i1 %694, label %607, label %.loopexit64, !llvm.loop !51

.loopexit64:                                      ; preds = %691, %611, %687, %686, %682, %681, %674, %671, %.loopexit65
  %695 = phi i32 [ %608, %671 ], [ %608, %674 ], [ %676, %681 ], [ -4, %682 ], [ 0, %686 ], [ -3, %687 ], [ %661, %.loopexit65 ], [ %676, %691 ], [ %612, %611 ]
  %696 = load i32, ptr %286, align 8, !tbaa !48
  %697 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %605, i32 %696), !nosanitize !20
  %698 = extractvalue { i32, i1 } %697, 1, !nosanitize !20
  br i1 %698, label %699, label %700, !prof !21, !nosanitize !20

699:                                              ; preds = %.loopexit64
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

700:                                              ; preds = %.loopexit64
  %701 = extractvalue { i32, i1 } %697, 0, !nosanitize !20
  store i32 %701, ptr %1, align 8, !tbaa !19
  %702 = load ptr, ptr %288, align 8, !tbaa !49
  %703 = zext i32 %701 to i64
  %704 = sub nsw i64 0, %703
  %705 = getelementptr inbounds i8, ptr %702, i64 %704
  store ptr %705, ptr %281, align 8, !tbaa !22
  switch i32 %695, label %.loopexit67 [
    i32 1, label %706
    i32 0, label %708
  ]

706:                                              ; preds = %700
  store i32 0, ptr %293, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %708

707:                                              ; preds = %327
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit67

708:                                              ; preds = %706, %700, %562, %556
  %709 = load i32, ptr %1, align 8, !tbaa !19
  br label %710

710:                                              ; preds = %708, %558
  %711 = phi i32 [ %709, %708 ], [ %561, %558 ]
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %.loopexit69

713:                                              ; preds = %710
  %714 = load i32, ptr %283, align 8, !tbaa !24
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %.backedge, label %716

716:                                              ; preds = %713
  %717 = load i32, ptr %284, align 8, !tbaa !34
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %.loopexit69, label %.backedge

.backedge:                                        ; preds = %716, %713
  br label %327, !llvm.loop !52

.loopexit69:                                      ; preds = %716, %710, %562, %.loopexit66
  %719 = load i64, ptr %277, align 8, !tbaa !18
  br label %720

720:                                              ; preds = %.loopexit69, %318
  %721 = phi i64 [ %719, %.loopexit69 ], [ %320, %318 ]
  %722 = icmp eq i64 %721, 0
  br i1 %722, label %723, label %298, !llvm.loop !53

723:                                              ; preds = %720, %324
  %724 = icmp slt i32 %0, 0
  br i1 %724, label %.loopexit67, label %727

725:                                              ; preds = %276
  %726 = icmp slt i32 %0, 0
  br i1 %726, label %.loopexit67, label %727

727:                                              ; preds = %725, %723
  %728 = load i32, ptr %1, align 8, !tbaa !19
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %730, label %749

730:                                              ; preds = %727
  store i32 1, ptr %1, align 8, !tbaa !19
  %731 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %732 = load ptr, ptr %731, align 8, !tbaa !30
  %733 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %734 = load i32, ptr %733, align 8, !tbaa !27
  %735 = shl i32 %734, 1
  %736 = zext i32 %735 to i64
  %737 = getelementptr inbounds nuw i8, ptr %732, i64 %736
  %738 = getelementptr inbounds i8, ptr %737, i64 -1
  %739 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %738, ptr %739, align 8, !tbaa !22
  %740 = trunc i32 %0 to i8
  store i8 %740, ptr %738, align 1, !tbaa !36
  %741 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %742 = load i64, ptr %741, align 8, !tbaa !23
  %743 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %742, i64 -1)
  %744 = extractvalue { i64, i1 } %743, 1, !nosanitize !20
  br i1 %744, label %745, label %746, !prof !21, !nosanitize !20

745:                                              ; preds = %782, %730
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

746:                                              ; preds = %730
  %747 = extractvalue { i64, i1 } %743, 0, !nosanitize !20
  store i64 %747, ptr %741, align 8, !tbaa !23
  %748 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %748, align 4, !tbaa !61
  br label %.loopexit67

749:                                              ; preds = %727
  %750 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %751 = load i32, ptr %750, align 8, !tbaa !27
  %752 = shl i32 %751, 1
  %753 = icmp eq i32 %728, %752
  br i1 %753, label %754, label %755

754:                                              ; preds = %749
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %.loopexit67

755:                                              ; preds = %749
  %756 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %757 = load ptr, ptr %756, align 8, !tbaa !22
  %758 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %759 = load ptr, ptr %758, align 8, !tbaa !30
  %760 = icmp eq ptr %757, %759
  br i1 %760, label %761, label %776

761:                                              ; preds = %755
  %762 = zext i32 %728 to i64
  %763 = getelementptr inbounds nuw i8, ptr %759, i64 %762
  %764 = zext i32 %752 to i64
  %765 = getelementptr inbounds nuw i8, ptr %759, i64 %764
  br label %766

766:                                              ; preds = %766, %761
  %767 = phi ptr [ %771, %766 ], [ %765, %761 ]
  %768 = phi ptr [ %769, %766 ], [ %763, %761 ]
  %769 = getelementptr inbounds i8, ptr %768, i64 -1
  %770 = load i8, ptr %769, align 1, !tbaa !36
  %771 = getelementptr inbounds i8, ptr %767, i64 -1
  store i8 %770, ptr %771, align 1, !tbaa !36
  %772 = load ptr, ptr %758, align 8, !tbaa !30
  %773 = icmp ugt ptr %769, %772
  br i1 %773, label %766, label %774, !llvm.loop !94

774:                                              ; preds = %766
  %775 = load i32, ptr %1, align 8, !tbaa !19
  store ptr %771, ptr %756, align 8, !tbaa !22
  br label %776

776:                                              ; preds = %774, %755
  %777 = phi ptr [ %771, %774 ], [ %757, %755 ]
  %778 = phi i32 [ %775, %774 ], [ %728, %755 ]
  %779 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %778, i32 1), !nosanitize !20
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !20
  br i1 %780, label %781, label %782, !prof !21, !nosanitize !20

781:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

782:                                              ; preds = %776
  %783 = extractvalue { i32, i1 } %779, 0, !nosanitize !20
  store i32 %783, ptr %1, align 8, !tbaa !19
  %784 = getelementptr inbounds i8, ptr %777, i64 -1
  store ptr %784, ptr %756, align 8, !tbaa !22
  %785 = trunc i32 %0 to i8
  store i8 %785, ptr %784, align 1, !tbaa !36
  %786 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %787 = load i64, ptr %786, align 8, !tbaa !23
  %788 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %787, i64 -1)
  %789 = extractvalue { i64, i1 } %788, 1, !nosanitize !20
  br i1 %789, label %745, label %790, !prof !21, !nosanitize !20

790:                                              ; preds = %782
  %791 = extractvalue { i64, i1 } %788, 0, !nosanitize !20
  store i64 %791, ptr %786, align 8, !tbaa !23
  %792 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %792, align 4, !tbaa !61
  br label %.loopexit67

.loopexit67:                                      ; preds = %700, %360, %790, %754, %746, %725, %723, %707, %.loopexit70, %.loopexit68, %346, %342, %272, %4, %2
  %793 = phi i32 [ %0, %746 ], [ -1, %754 ], [ %0, %790 ], [ -1, %2 ], [ -1, %4 ], [ -1, %272 ], [ -1, %723 ], [ -1, %725 ], [ -1, %707 ], [ -1, %.loopexit70 ], [ -1, %342 ], [ -1, %346 ], [ -1, %.loopexit68 ], [ -1, %360 ], [ -1, %700 ]
  ret i32 %793
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gzgets(ptr noundef %0, ptr noundef writeonly captures(address, ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp slt i32 %2, 1
  %8 = or i1 %6, %7
  br i1 %8, label %.loopexit106, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %.loopexit106

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
  br i1 %19, label %.loopexit106, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %.loopexit109, label %24

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

43:                                               ; preds = %465, %24
  %44 = phi i64 [ %466, %465 ], [ %22, %24 ]
  %45 = load i32, ptr %0, align 8, !tbaa !19
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %66, label %47

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
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %59, i64 %57), !nosanitize !20
  %61 = extractvalue { i64, i1 } %60, 1, !nosanitize !20
  br i1 %61, label %62, label %63, !prof !21, !nosanitize !20

62:                                               ; preds = %54
  tail call void @llvm.ubsantrap(i8 0) #15, !nosanitize !20
  unreachable, !nosanitize !20

63:                                               ; preds = %54
  %64 = extractvalue { i64, i1 } %60, 0, !nosanitize !20
  store i64 %64, ptr %26, align 8, !tbaa !23
  %65 = sub i64 %44, %57
  store i64 %65, ptr %21, align 8, !tbaa !18
  br label %465

66:                                               ; preds = %43
  %67 = load i32, ptr %27, align 8, !tbaa !24
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %.preheader887, label %69

69:                                               ; preds = %66
  %70 = load i32, ptr %28, align 8, !tbaa !25
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %.loopexit109, label %.preheader887

.preheader887:                                    ; preds = %69, %66
  br label %72

72:                                               ; preds = %.backedge, %.preheader887
  %73 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %73, label %452 [
    i32 0, label %74
    i32 1, label %310
    i32 2, label %348
  ]

74:                                               ; preds = %72
  %75 = load i32, ptr %30, align 8, !tbaa !27
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32, ptr %40, align 4, !tbaa !28
  %79 = zext i32 %78 to i64
  %80 = tail call noalias ptr @malloc(i64 noundef %79) #16
  store ptr %80, ptr %35, align 8, !tbaa !29
  %81 = shl i32 %78, 1
  %82 = zext i32 %81 to i64
  %83 = tail call noalias ptr @malloc(i64 noundef %82) #16
  store ptr %83, ptr %32, align 8, !tbaa !30
  %84 = icmp eq ptr %80, null
  %85 = icmp eq ptr %83, null
  %86 = or i1 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  tail call void @free(ptr noundef %83) #13
  tail call void @free(ptr noundef %80) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit106

88:                                               ; preds = %77
  store i32 %78, ptr %30, align 8, !tbaa !27
  store i32 0, ptr %28, align 8, !tbaa !25
  store ptr null, ptr %34, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 0, i64 24, i1 false)
  %89 = tail call i32 @inflateInit2_(ptr noundef nonnull %34, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %32, align 8, !tbaa !30
  tail call void @free(ptr noundef %92) #13
  %93 = load ptr, ptr %35, align 8, !tbaa !29
  tail call void @free(ptr noundef %93) #13
  store i32 0, ptr %30, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit106

94:                                               ; preds = %88, %74
  %95 = load i32, ptr %42, align 8, !tbaa !32
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %38, align 4, !tbaa !33
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97, %94
  %101 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  %102 = load i32, ptr %38, align 4, !tbaa !33
  %103 = icmp ne i32 %102, -1
  %104 = zext i1 %103 to i32
  store i32 %104, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %307

105:                                              ; preds = %97
  %106 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %106, label %.loopexit106 [
    i32 0, label %107
    i32 -5, label %107
  ]

107:                                              ; preds = %105, %105
  %108 = load i32, ptr %27, align 8, !tbaa !24
  %109 = icmp eq i32 %108, 0
  %110 = load i32, ptr %28, align 8, !tbaa !34
  br i1 %109, label %111, label %275

111:                                              ; preds = %107
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %214, label %113

113:                                              ; preds = %111
  %114 = load ptr, ptr %35, align 8, !tbaa !29
  %115 = load ptr, ptr %34, align 8, !tbaa !35
  %116 = icmp eq ptr %115, %114
  br i1 %116, label %214, label %117

117:                                              ; preds = %113
  %118 = ptrtoint ptr %115 to i64
  %119 = ptrtoint ptr %114 to i64
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
  br i1 %138, label %139, label %129, !llvm.loop !95

139:                                              ; preds = %129
  %140 = icmp eq i64 %128, %120
  br i1 %140, label %.loopexit99, label %141

141:                                              ; preds = %139
  %142 = getelementptr i8, ptr %114, i64 %128
  %143 = getelementptr i8, ptr %115, i64 %128
  %144 = trunc nuw i64 %128 to i32
  %145 = sub i32 %110, %144
  %146 = and i64 %120, 28
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %164, label %148

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
  br i1 %157, label %158, label %151, !llvm.loop !96

158:                                              ; preds = %151
  %159 = getelementptr i8, ptr %114, i64 %150
  %160 = getelementptr i8, ptr %115, i64 %150
  %161 = trunc nuw i64 %150 to i32
  %162 = sub i32 %110, %161
  %163 = icmp eq i64 %150, %120
  br i1 %163, label %.loopexit99, label %164

164:                                              ; preds = %158, %141, %117
  %165 = phi ptr [ %114, %117 ], [ %142, %141 ], [ %159, %158 ]
  %166 = phi ptr [ %115, %117 ], [ %143, %141 ], [ %160, %158 ]
  %167 = phi i32 [ %110, %117 ], [ %145, %141 ], [ %162, %158 ]
  %168 = add i32 %167, -1
  %169 = and i32 %167, 7
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %.loopexit101, label %.preheader100

.preheader100:                                    ; preds = %164, %.preheader100
  %171 = phi ptr [ %175, %.preheader100 ], [ %165, %164 ]
  %172 = phi ptr [ %176, %.preheader100 ], [ %166, %164 ]
  %173 = phi i32 [ %177, %.preheader100 ], [ 0, %164 ]
  %174 = load i8, ptr %172, align 1, !tbaa !36
  store i8 %174, ptr %171, align 1, !tbaa !36
  %175 = getelementptr inbounds nuw i8, ptr %171, i64 1
  %176 = getelementptr inbounds nuw i8, ptr %172, i64 1
  %177 = add nuw nsw i32 %173, 1
  %178 = icmp eq i32 %177, %169
  br i1 %178, label %.loopexit101.loopexit, label %.preheader100, !llvm.loop !97

.loopexit101.loopexit:                            ; preds = %.preheader100
  %179 = and i32 %167, -8
  br label %.loopexit101

.loopexit101:                                     ; preds = %.loopexit101.loopexit, %164
  %180 = phi ptr [ %165, %164 ], [ %175, %.loopexit101.loopexit ]
  %181 = phi ptr [ %166, %164 ], [ %176, %.loopexit101.loopexit ]
  %182 = phi i32 [ %167, %164 ], [ %179, %.loopexit101.loopexit ]
  %183 = icmp ult i32 %168, 7
  br i1 %183, label %.loopexit99, label %.preheader98

.preheader98:                                     ; preds = %.loopexit101, %.preheader98
  %184 = phi ptr [ %210, %.preheader98 ], [ %180, %.loopexit101 ]
  %185 = phi ptr [ %211, %.preheader98 ], [ %181, %.loopexit101 ]
  %186 = phi i32 [ %209, %.preheader98 ], [ %182, %.loopexit101 ]
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
  br i1 %212, label %.loopexit99, label %.preheader98, !llvm.loop !98

.loopexit99:                                      ; preds = %.preheader98, %.loopexit101, %158, %139
  %213 = load i32, ptr %28, align 8, !tbaa !34
  br label %214

214:                                              ; preds = %.loopexit99, %113, %111
  %215 = phi i32 [ %213, %.loopexit99 ], [ %110, %113 ], [ 0, %111 ]
  %216 = load i32, ptr %30, align 8, !tbaa !27
  %.fr71 = freeze i32 %216
  %217 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr71, i32 %215), !nosanitize !20
  %218 = extractvalue { i32, i1 } %217, 1, !nosanitize !20
  br i1 %218, label %219, label %220, !prof !21, !nosanitize !20

219:                                              ; preds = %214
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

220:                                              ; preds = %214
  %221 = extractvalue { i32, i1 } %217, 0, !nosanitize !20
  %222 = load ptr, ptr %35, align 8, !tbaa !29
  %223 = zext i32 %215 to i64
  %224 = getelementptr inbounds nuw i8, ptr %222, i64 %223
  store i32 0, ptr %36, align 4, !tbaa !17
  %225 = tail call ptr @__errno_location() #17
  store i32 0, ptr %225, align 4, !tbaa !45
  %mv.h38 = icmp sgt i32 %.fr71, -1
  br i1 %mv.h38, label %.mv.ph40.mv.fast, label %.mv.ph40

.mv.ph40.mv.fast:                                 ; preds = %220, %236
  %226 = phi i32 [ %237, %236 ], [ 0, %220 ]
  %227 = sub i32 %221, %226
  %228 = tail call i32 @llvm.umin.i32(i32 %227, i32 1073741824)
  %229 = load i32, ptr %37, align 4, !tbaa !46
  %230 = zext i32 %226 to i64
  %231 = getelementptr inbounds nuw i8, ptr %224, i64 %230
  %232 = zext nneg i32 %228 to i64
  %233 = tail call i64 @read(i32 noundef %229, ptr noundef %231, i64 noundef %232) #13
  %234 = trunc i64 %233 to i32
  %235 = icmp slt i32 %234, 1
  br i1 %235, label %.loopexit95, label %236

236:                                              ; preds = %.mv.ph40.mv.fast
  %237 = add i32 %226, %234
  %238 = icmp ult i32 %237, %221
  br i1 %238, label %.mv.ph40.mv.fast, label %.loopexit30, !llvm.loop !47

.mv.ph40:                                         ; preds = %220, %253
  %239 = phi i32 [ %254, %253 ], [ 0, %220 ]
  %240 = sub i32 %221, %239
  %241 = tail call i32 @llvm.umin.i32(i32 %240, i32 1073741824)
  %242 = load i32, ptr %37, align 4, !tbaa !46
  %243 = zext i32 %239 to i64
  %244 = getelementptr inbounds nuw i8, ptr %224, i64 %243
  %245 = zext nneg i32 %241 to i64
  %246 = tail call i64 @read(i32 noundef %242, ptr noundef %244, i64 noundef %245) #13
  %247 = trunc i64 %246 to i32
  %248 = icmp slt i32 %247, 1
  br i1 %248, label %.loopexit95, label %249

249:                                              ; preds = %.mv.ph40
  %250 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %247), !nosanitize !20
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !20
  br i1 %251, label %252, label %253, !prof !21, !nosanitize !20

252:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

253:                                              ; preds = %249
  %254 = extractvalue { i32, i1 } %250, 0, !nosanitize !20
  %255 = icmp ult i32 %254, %221
  br i1 %255, label %.mv.ph40, label %.loopexit30, !llvm.loop !47

.loopexit95:                                      ; preds = %.mv.ph40, %.mv.ph40.mv.fast
  %.lcssa34 = phi i32 [ %234, %.mv.ph40.mv.fast ], [ %247, %.mv.ph40 ]
  %.lcssa31 = phi i32 [ %226, %.mv.ph40.mv.fast ], [ %239, %.mv.ph40 ]
  %256 = icmp slt i32 %.lcssa34, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %.loopexit95
  %258 = load i32, ptr %225, align 4, !tbaa !45
  %259 = icmp eq i32 %258, 11
  br i1 %259, label %260, label %.loopexit107

260:                                              ; preds = %257
  store i32 1, ptr %36, align 4, !tbaa !17
  %261 = icmp eq i32 %.lcssa31, 0
  br i1 %261, label %262, label %.loopexit30

262:                                              ; preds = %260
  %263 = load i32, ptr %225, align 4, !tbaa !45
  br label %.loopexit107

264:                                              ; preds = %.loopexit95
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit30

.loopexit107:                                     ; preds = %257, %262
  %265 = phi i32 [ %263, %262 ], [ %258, %257 ]
  %266 = tail call ptr @strerror(i32 noundef %265) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %266) #13
  br label %.loopexit106

.loopexit30:                                      ; preds = %253, %236, %264, %260
  %267 = phi i32 [ %.lcssa31, %264 ], [ %.lcssa31, %260 ], [ %237, %236 ], [ %254, %253 ]
  %268 = load i32, ptr %28, align 8, !tbaa !34
  %269 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %268, i32 %267), !nosanitize !20
  %270 = extractvalue { i32, i1 } %269, 1, !nosanitize !20
  br i1 %270, label %271, label %272, !prof !21, !nosanitize !20

271:                                              ; preds = %.loopexit30
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

272:                                              ; preds = %.loopexit30
  %273 = extractvalue { i32, i1 } %269, 0, !nosanitize !20
  store i32 %273, ptr %28, align 8, !tbaa !34
  %274 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %274, ptr %34, align 8, !tbaa !35
  br label %275

275:                                              ; preds = %272, %107
  %276 = phi i32 [ %273, %272 ], [ %110, %107 ]
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %307, label %278

278:                                              ; preds = %275
  %279 = load i32, ptr %36, align 4, !tbaa !17
  %280 = icmp ne i32 %279, 0
  %281 = icmp ult i32 %276, 4
  %282 = and i1 %281, %280
  br i1 %282, label %307, label %283

283:                                              ; preds = %278
  %284 = icmp ugt i32 %276, 3
  %285 = load ptr, ptr %34, align 8, !tbaa !35
  br i1 %284, label %286, label %303

286:                                              ; preds = %283
  %287 = load i8, ptr %285, align 1, !tbaa !36
  %288 = icmp eq i8 %287, 31
  br i1 %288, label %289, label %303

289:                                              ; preds = %286
  %290 = getelementptr inbounds nuw i8, ptr %285, i64 1
  %291 = load i8, ptr %290, align 1, !tbaa !36
  %292 = icmp eq i8 %291, -117
  br i1 %292, label %293, label %303

293:                                              ; preds = %289
  %294 = getelementptr inbounds nuw i8, ptr %285, i64 2
  %295 = load i8, ptr %294, align 1, !tbaa !36
  %296 = icmp eq i8 %295, 8
  br i1 %296, label %297, label %303

297:                                              ; preds = %293
  %298 = getelementptr inbounds nuw i8, ptr %285, i64 3
  %299 = load i8, ptr %298, align 1, !tbaa !36
  %300 = icmp ult i8 %299, 32
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = tail call i32 @inflateReset(ptr noundef nonnull %34) #13
  store i32 2, ptr %29, align 8, !tbaa !26
  store i32 1, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %453

303:                                              ; preds = %297, %293, %289, %286, %283
  %304 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %304, ptr %25, align 8, !tbaa !22
  %305 = zext i32 %276 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %304, ptr align 1 %285, i64 %305, i1 false)
  %306 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %306, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %455

307:                                              ; preds = %278, %275, %100
  %308 = load i32, ptr %29, align 8, !tbaa !26
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %.loopexit108, label %453

310:                                              ; preds = %72
  %311 = load ptr, ptr %32, align 8, !tbaa !30
  %312 = load i32, ptr %30, align 8, !tbaa !27
  %313 = shl i32 %312, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %314 = tail call ptr @__errno_location() #17
  store i32 0, ptr %314, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %315

315:                                              ; preds = %331, %310
  %316 = phi i32 [ %332, %331 ], [ 0, %310 ]
  %317 = sub i32 %313, %316
  %318 = tail call i32 @llvm.umin.i32(i32 %317, i32 1073741824)
  %319 = load i32, ptr %37, align 4, !tbaa !46
  %320 = zext i32 %316 to i64
  %321 = getelementptr inbounds nuw i8, ptr %311, i64 %320
  %322 = zext nneg i32 %318 to i64
  %323 = tail call i64 @read(i32 noundef %319, ptr noundef %321, i64 noundef %322) #13
  %324 = trunc i64 %323 to i32
  %325 = icmp slt i32 %324, 1
  br i1 %325, label %334, label %326

326:                                              ; preds = %315
  %327 = load i32, ptr %0, align 4, !tbaa !45
  %328 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %327, i32 %324), !nosanitize !20
  %329 = extractvalue { i32, i1 } %328, 1, !nosanitize !20
  br i1 %329, label %330, label %331, !prof !21, !nosanitize !20

330:                                              ; preds = %326
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

331:                                              ; preds = %326
  %332 = extractvalue { i32, i1 } %328, 0, !nosanitize !20
  store i32 %332, ptr %0, align 4, !tbaa !45
  %333 = icmp ult i32 %332, %313
  br i1 %333, label %315, label %.loopexit105, !llvm.loop !47

334:                                              ; preds = %315
  %335 = icmp slt i32 %324, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %334
  %337 = load i32, ptr %314, align 4, !tbaa !45
  %338 = icmp eq i32 %337, 11
  br i1 %338, label %339, label %.loopexit110

339:                                              ; preds = %336
  store i32 1, ptr %36, align 4, !tbaa !17
  %340 = load i32, ptr %0, align 4, !tbaa !45
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %.loopexit105

342:                                              ; preds = %339
  %343 = load i32, ptr %314, align 4, !tbaa !45
  br label %.loopexit110

344:                                              ; preds = %334
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit105

.loopexit110:                                     ; preds = %336, %342
  %345 = phi i32 [ %343, %342 ], [ %337, %336 ]
  %346 = tail call ptr @strerror(i32 noundef %345) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %346) #13
  br label %.loopexit106

.loopexit105:                                     ; preds = %331, %344, %339
  %347 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %347, ptr %25, align 8, !tbaa !22
  br label %.loopexit108

348:                                              ; preds = %72
  %349 = load i32, ptr %30, align 8, !tbaa !27
  %350 = shl i32 %349, 1
  store i32 %350, ptr %31, align 8, !tbaa !48
  %351 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %351, ptr %33, align 8, !tbaa !49
  br label %352

352:                                              ; preds = %436, %348
  %353 = phi i32 [ 0, %348 ], [ %421, %436 ]
  %354 = load i32, ptr %28, align 8, !tbaa !34
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %420

356:                                              ; preds = %352
  %357 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %357, label %.loopexit102 [
    i32 0, label %358
    i32 -5, label %358
  ]

358:                                              ; preds = %356, %356
  %359 = load i32, ptr %27, align 8, !tbaa !24
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %416

361:                                              ; preds = %358
  %362 = load i32, ptr %30, align 8, !tbaa !27
  %.fr = freeze i32 %362
  %363 = load ptr, ptr %35, align 8, !tbaa !29
  store i32 0, ptr %36, align 4, !tbaa !17
  %364 = tail call ptr @__errno_location() #17
  store i32 0, ptr %364, align 4, !tbaa !45
  %mv.h16 = icmp sgt i32 %.fr, -1
  br i1 %mv.h16, label %.mv.ph18.mv.fast, label %.mv.ph18

.mv.ph18.mv.fast:                                 ; preds = %361, %375
  %365 = phi i32 [ %376, %375 ], [ 0, %361 ]
  %366 = sub nsw i32 %.fr, %365
  %367 = tail call i32 @llvm.umin.i32(i32 %366, i32 1073741824)
  %368 = load i32, ptr %37, align 4, !tbaa !46
  %369 = zext nneg i32 %365 to i64
  %370 = getelementptr inbounds nuw i8, ptr %363, i64 %369
  %371 = zext nneg i32 %367 to i64
  %372 = tail call i64 @read(i32 noundef %368, ptr noundef %370, i64 noundef %371) #13
  %373 = trunc i64 %372 to i32
  %374 = icmp slt i32 %373, 1
  br i1 %374, label %.loopexit92, label %375

375:                                              ; preds = %.mv.ph18.mv.fast
  %376 = add nuw i32 %365, %373
  %377 = icmp ult i32 %376, %.fr
  br i1 %377, label %.mv.ph18.mv.fast, label %.loopexit8, !llvm.loop !47

.mv.ph18:                                         ; preds = %361, %392
  %378 = phi i32 [ %393, %392 ], [ 0, %361 ]
  %379 = sub i32 %.fr, %378
  %380 = tail call i32 @llvm.umin.i32(i32 %379, i32 1073741824)
  %381 = load i32, ptr %37, align 4, !tbaa !46
  %382 = zext i32 %378 to i64
  %383 = getelementptr inbounds nuw i8, ptr %363, i64 %382
  %384 = zext nneg i32 %380 to i64
  %385 = tail call i64 @read(i32 noundef %381, ptr noundef %383, i64 noundef %384) #13
  %386 = trunc i64 %385 to i32
  %387 = icmp slt i32 %386, 1
  br i1 %387, label %.loopexit92, label %388

388:                                              ; preds = %.mv.ph18
  %389 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %378, i32 %386), !nosanitize !20
  %390 = extractvalue { i32, i1 } %389, 1, !nosanitize !20
  br i1 %390, label %391, label %392, !prof !21, !nosanitize !20

391:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

392:                                              ; preds = %388
  %393 = extractvalue { i32, i1 } %389, 0, !nosanitize !20
  %394 = icmp ult i32 %393, %.fr
  br i1 %394, label %.mv.ph18, label %.loopexit8, !llvm.loop !47

.loopexit92:                                      ; preds = %.mv.ph18, %.mv.ph18.mv.fast
  %.lcssa12 = phi i32 [ %373, %.mv.ph18.mv.fast ], [ %386, %.mv.ph18 ]
  %.lcssa9 = phi i32 [ %365, %.mv.ph18.mv.fast ], [ %378, %.mv.ph18 ]
  %395 = icmp slt i32 %.lcssa12, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %.loopexit92
  %397 = load i32, ptr %364, align 4, !tbaa !45
  %398 = icmp eq i32 %397, 11
  br i1 %398, label %399, label %.loopexit104

399:                                              ; preds = %396
  store i32 1, ptr %36, align 4, !tbaa !17
  %400 = icmp eq i32 %.lcssa9, 0
  br i1 %400, label %401, label %.loopexit8

401:                                              ; preds = %399
  %402 = load i32, ptr %364, align 4, !tbaa !45
  br label %.loopexit104

403:                                              ; preds = %.loopexit92
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit8

.loopexit104:                                     ; preds = %396, %401
  %404 = phi i32 [ %402, %401 ], [ %397, %396 ]
  %405 = tail call ptr @strerror(i32 noundef %404) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %405) #13
  %406 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit102

.loopexit8:                                       ; preds = %392, %375, %403, %399
  %407 = phi i32 [ %.lcssa9, %403 ], [ %.lcssa9, %399 ], [ %376, %375 ], [ %393, %392 ]
  %408 = load i32, ptr %28, align 8, !tbaa !34
  %409 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %408, i32 %407), !nosanitize !20
  %410 = extractvalue { i32, i1 } %409, 1, !nosanitize !20
  br i1 %410, label %411, label %412, !prof !21, !nosanitize !20

411:                                              ; preds = %.loopexit8
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

412:                                              ; preds = %.loopexit8
  %413 = extractvalue { i32, i1 } %409, 0, !nosanitize !20
  store i32 %413, ptr %28, align 8, !tbaa !34
  %414 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %414, ptr %34, align 8, !tbaa !35
  %415 = icmp eq i32 %413, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %412, %358
  %417 = load i32, ptr %36, align 4, !tbaa !17
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %.loopexit102

419:                                              ; preds = %416
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit102

420:                                              ; preds = %412, %352
  %421 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %422 = load i32, ptr %31, align 8, !tbaa !48
  %423 = icmp ult i32 %422, %350
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
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit102

427:                                              ; preds = %425
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit102

428:                                              ; preds = %425
  %429 = load i32, ptr %38, align 4, !tbaa !33
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %.loopexit102

432:                                              ; preds = %428
  %433 = load ptr, ptr %39, align 8, !tbaa !50
  %434 = icmp eq ptr %433, null
  %435 = select i1 %434, ptr @.str.6, ptr %433
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %435) #13
  br label %.loopexit102

436:                                              ; preds = %425
  %437 = icmp ne i32 %422, 0
  %438 = icmp ne i32 %421, 1
  %439 = select i1 %437, i1 %438, i1 false
  br i1 %439, label %352, label %.loopexit102, !llvm.loop !51

.loopexit102:                                     ; preds = %436, %356, %432, %431, %427, %426, %419, %416, %.loopexit104
  %440 = phi i32 [ %353, %416 ], [ %353, %419 ], [ %421, %426 ], [ -4, %427 ], [ 0, %431 ], [ -3, %432 ], [ %406, %.loopexit104 ], [ %421, %436 ], [ %357, %356 ]
  %441 = load i32, ptr %31, align 8, !tbaa !48
  %442 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %350, i32 %441), !nosanitize !20
  %443 = extractvalue { i32, i1 } %442, 1, !nosanitize !20
  br i1 %443, label %444, label %445, !prof !21, !nosanitize !20

444:                                              ; preds = %.loopexit102
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

445:                                              ; preds = %.loopexit102
  %446 = extractvalue { i32, i1 } %442, 0, !nosanitize !20
  store i32 %446, ptr %0, align 8, !tbaa !19
  %447 = load ptr, ptr %33, align 8, !tbaa !49
  %448 = zext i32 %446 to i64
  %449 = sub nsw i64 0, %448
  %450 = getelementptr inbounds i8, ptr %447, i64 %449
  store ptr %450, ptr %25, align 8, !tbaa !22
  switch i32 %440, label %.loopexit106 [
    i32 1, label %451
    i32 0, label %453
  ]

451:                                              ; preds = %445
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %453

452:                                              ; preds = %72
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit106

453:                                              ; preds = %451, %445, %307, %301
  %454 = load i32, ptr %0, align 8, !tbaa !19
  br label %455

455:                                              ; preds = %453, %303
  %456 = phi i32 [ %454, %453 ], [ %306, %303 ]
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %.loopexit108

458:                                              ; preds = %455
  %459 = load i32, ptr %27, align 8, !tbaa !24
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %.backedge, label %461

461:                                              ; preds = %458
  %462 = load i32, ptr %28, align 8, !tbaa !34
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %.loopexit108, label %.backedge

.backedge:                                        ; preds = %461, %458
  br label %72, !llvm.loop !52

.loopexit108:                                     ; preds = %461, %455, %307, %.loopexit105
  %464 = load i64, ptr %21, align 8, !tbaa !18
  br label %465

465:                                              ; preds = %.loopexit108, %63
  %466 = phi i64 [ %464, %.loopexit108 ], [ %65, %63 ]
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %.loopexit109, label %43, !llvm.loop !53

.loopexit109:                                     ; preds = %465, %69, %20
  %468 = add nsw i32 %2, -1
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %.loopexit106, label %470

470:                                              ; preds = %.loopexit109
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %482 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %483 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %485 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %486 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %487 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %488 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %489 = load i32, ptr %0, align 8, !tbaa !19
  br label %490

490:                                              ; preds = %927, %470
  %491 = phi i32 [ %916, %927 ], [ %489, %470 ]
  %492 = phi i32 [ %928, %927 ], [ %468, %470 ]
  %493 = phi ptr [ %929, %927 ], [ %1, %470 ]
  %494 = icmp eq i32 %491, 0
  br i1 %494, label %.preheader86, label %890

.preheader86:                                     ; preds = %490, %.preheader86.backedge
  %495 = load i32, ptr %471, align 8, !tbaa !26
  switch i32 %495, label %874 [
    i32 0, label %496
    i32 1, label %732
    i32 2, label %770
  ]

496:                                              ; preds = %.preheader86
  %497 = load i32, ptr %472, align 8, !tbaa !27
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %516

499:                                              ; preds = %496
  %500 = load i32, ptr %485, align 4, !tbaa !28
  %501 = zext i32 %500 to i64
  %502 = tail call noalias ptr @malloc(i64 noundef %501) #16
  store ptr %502, ptr %479, align 8, !tbaa !29
  %503 = shl i32 %500, 1
  %504 = zext i32 %503 to i64
  %505 = tail call noalias ptr @malloc(i64 noundef %504) #16
  store ptr %505, ptr %474, align 8, !tbaa !30
  %506 = icmp eq ptr %502, null
  %507 = icmp eq ptr %505, null
  %508 = or i1 %506, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %499
  tail call void @free(ptr noundef %505) #13
  tail call void @free(ptr noundef %502) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit87

510:                                              ; preds = %499
  store i32 %500, ptr %472, align 8, !tbaa !27
  store i32 0, ptr %477, align 8, !tbaa !25
  store ptr null, ptr %476, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %486, i8 0, i64 24, i1 false)
  %511 = tail call i32 @inflateInit2_(ptr noundef nonnull %476, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %516, label %513

513:                                              ; preds = %510
  %514 = load ptr, ptr %474, align 8, !tbaa !30
  tail call void @free(ptr noundef %514) #13
  %515 = load ptr, ptr %479, align 8, !tbaa !29
  tail call void @free(ptr noundef %515) #13
  store i32 0, ptr %472, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit87

516:                                              ; preds = %510, %496
  %517 = load i32, ptr %487, align 8, !tbaa !32
  %518 = icmp eq i32 %517, -1
  br i1 %518, label %522, label %519

519:                                              ; preds = %516
  %520 = load i32, ptr %482, align 4, !tbaa !33
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %527

522:                                              ; preds = %519, %516
  %523 = tail call i32 @inflateReset(ptr noundef nonnull %476) #13
  store i32 2, ptr %471, align 8, !tbaa !26
  %524 = load i32, ptr %482, align 4, !tbaa !33
  %525 = icmp ne i32 %524, -1
  %526 = zext i1 %525 to i32
  store i32 %526, ptr %482, align 4, !tbaa !33
  store i32 0, ptr %487, align 8, !tbaa !32
  br label %729

527:                                              ; preds = %519
  %528 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %528, label %.loopexit87 [
    i32 0, label %529
    i32 -5, label %529
  ]

529:                                              ; preds = %527, %527
  %530 = load i32, ptr %478, align 8, !tbaa !24
  %531 = icmp eq i32 %530, 0
  %532 = load i32, ptr %477, align 8, !tbaa !34
  br i1 %531, label %533, label %697

533:                                              ; preds = %529
  %534 = icmp eq i32 %532, 0
  br i1 %534, label %636, label %535

535:                                              ; preds = %533
  %536 = load ptr, ptr %479, align 8, !tbaa !29
  %537 = load ptr, ptr %476, align 8, !tbaa !35
  %538 = icmp eq ptr %537, %536
  br i1 %538, label %636, label %539

539:                                              ; preds = %535
  %540 = ptrtoint ptr %537 to i64
  %541 = ptrtoint ptr %536 to i64
  %542 = zext i32 %532 to i64
  %543 = icmp ult i32 %532, 4
  %544 = sub i64 %541, %540
  %545 = icmp ult i64 %544, 32
  %546 = or i1 %543, %545
  br i1 %546, label %586, label %547

547:                                              ; preds = %539
  %548 = icmp ult i32 %532, 32
  br i1 %548, label %570, label %549

549:                                              ; preds = %547
  %550 = and i64 %542, 4294967264
  br label %551

551:                                              ; preds = %551, %549
  %552 = phi i64 [ 0, %549 ], [ %559, %551 ]
  %553 = getelementptr i8, ptr %536, i64 %552
  %554 = getelementptr i8, ptr %537, i64 %552
  %555 = getelementptr i8, ptr %554, i64 16
  %556 = load <16 x i8>, ptr %554, align 1, !tbaa !36
  %557 = load <16 x i8>, ptr %555, align 1, !tbaa !36
  %558 = getelementptr i8, ptr %553, i64 16
  store <16 x i8> %556, ptr %553, align 1, !tbaa !36
  store <16 x i8> %557, ptr %558, align 1, !tbaa !36
  %559 = add nuw nsw i64 %552, 32
  %560 = icmp eq i64 %559, %550
  br i1 %560, label %561, label %551, !llvm.loop !99

561:                                              ; preds = %551
  %562 = icmp eq i64 %550, %542
  br i1 %562, label %.loopexit80, label %563

563:                                              ; preds = %561
  %564 = getelementptr i8, ptr %536, i64 %550
  %565 = getelementptr i8, ptr %537, i64 %550
  %566 = trunc nuw i64 %550 to i32
  %567 = sub i32 %532, %566
  %568 = and i64 %542, 28
  %569 = icmp eq i64 %568, 0
  br i1 %569, label %586, label %570

570:                                              ; preds = %563, %547
  %571 = phi i64 [ %550, %563 ], [ 0, %547 ]
  %572 = and i64 %542, 4294967292
  br label %573

573:                                              ; preds = %573, %570
  %574 = phi i64 [ %571, %570 ], [ %578, %573 ]
  %575 = getelementptr i8, ptr %536, i64 %574
  %576 = getelementptr i8, ptr %537, i64 %574
  %577 = load <4 x i8>, ptr %576, align 1, !tbaa !36
  store <4 x i8> %577, ptr %575, align 1, !tbaa !36
  %578 = add nuw i64 %574, 4
  %579 = icmp eq i64 %578, %572
  br i1 %579, label %580, label %573, !llvm.loop !100

580:                                              ; preds = %573
  %581 = getelementptr i8, ptr %536, i64 %572
  %582 = getelementptr i8, ptr %537, i64 %572
  %583 = trunc nuw i64 %572 to i32
  %584 = sub i32 %532, %583
  %585 = icmp eq i64 %572, %542
  br i1 %585, label %.loopexit80, label %586

586:                                              ; preds = %580, %563, %539
  %587 = phi ptr [ %536, %539 ], [ %564, %563 ], [ %581, %580 ]
  %588 = phi ptr [ %537, %539 ], [ %565, %563 ], [ %582, %580 ]
  %589 = phi i32 [ %532, %539 ], [ %567, %563 ], [ %584, %580 ]
  %590 = add i32 %589, -1
  %591 = and i32 %589, 7
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %.loopexit82, label %.preheader81

.preheader81:                                     ; preds = %586, %.preheader81
  %593 = phi ptr [ %597, %.preheader81 ], [ %587, %586 ]
  %594 = phi ptr [ %598, %.preheader81 ], [ %588, %586 ]
  %595 = phi i32 [ %599, %.preheader81 ], [ 0, %586 ]
  %596 = load i8, ptr %594, align 1, !tbaa !36
  store i8 %596, ptr %593, align 1, !tbaa !36
  %597 = getelementptr inbounds nuw i8, ptr %593, i64 1
  %598 = getelementptr inbounds nuw i8, ptr %594, i64 1
  %599 = add nuw nsw i32 %595, 1
  %600 = icmp eq i32 %599, %591
  br i1 %600, label %.loopexit82.loopexit, label %.preheader81, !llvm.loop !101

.loopexit82.loopexit:                             ; preds = %.preheader81
  %601 = and i32 %589, -8
  br label %.loopexit82

.loopexit82:                                      ; preds = %.loopexit82.loopexit, %586
  %602 = phi ptr [ %587, %586 ], [ %597, %.loopexit82.loopexit ]
  %603 = phi ptr [ %588, %586 ], [ %598, %.loopexit82.loopexit ]
  %604 = phi i32 [ %589, %586 ], [ %601, %.loopexit82.loopexit ]
  %605 = icmp ult i32 %590, 7
  br i1 %605, label %.loopexit80, label %.preheader

.preheader:                                       ; preds = %.loopexit82, %.preheader
  %606 = phi ptr [ %632, %.preheader ], [ %602, %.loopexit82 ]
  %607 = phi ptr [ %633, %.preheader ], [ %603, %.loopexit82 ]
  %608 = phi i32 [ %631, %.preheader ], [ %604, %.loopexit82 ]
  %609 = load i8, ptr %607, align 1, !tbaa !36
  store i8 %609, ptr %606, align 1, !tbaa !36
  %610 = getelementptr inbounds nuw i8, ptr %606, i64 1
  %611 = getelementptr inbounds nuw i8, ptr %607, i64 1
  %612 = load i8, ptr %611, align 1, !tbaa !36
  store i8 %612, ptr %610, align 1, !tbaa !36
  %613 = getelementptr inbounds nuw i8, ptr %606, i64 2
  %614 = getelementptr inbounds nuw i8, ptr %607, i64 2
  %615 = load i8, ptr %614, align 1, !tbaa !36
  store i8 %615, ptr %613, align 1, !tbaa !36
  %616 = getelementptr inbounds nuw i8, ptr %606, i64 3
  %617 = getelementptr inbounds nuw i8, ptr %607, i64 3
  %618 = load i8, ptr %617, align 1, !tbaa !36
  store i8 %618, ptr %616, align 1, !tbaa !36
  %619 = getelementptr inbounds nuw i8, ptr %606, i64 4
  %620 = getelementptr inbounds nuw i8, ptr %607, i64 4
  %621 = load i8, ptr %620, align 1, !tbaa !36
  store i8 %621, ptr %619, align 1, !tbaa !36
  %622 = getelementptr inbounds nuw i8, ptr %606, i64 5
  %623 = getelementptr inbounds nuw i8, ptr %607, i64 5
  %624 = load i8, ptr %623, align 1, !tbaa !36
  store i8 %624, ptr %622, align 1, !tbaa !36
  %625 = getelementptr inbounds nuw i8, ptr %606, i64 6
  %626 = getelementptr inbounds nuw i8, ptr %607, i64 6
  %627 = load i8, ptr %626, align 1, !tbaa !36
  store i8 %627, ptr %625, align 1, !tbaa !36
  %628 = getelementptr inbounds nuw i8, ptr %606, i64 7
  %629 = getelementptr inbounds nuw i8, ptr %607, i64 7
  %630 = load i8, ptr %629, align 1, !tbaa !36
  store i8 %630, ptr %628, align 1, !tbaa !36
  %631 = add i32 %608, -8
  %632 = getelementptr inbounds nuw i8, ptr %606, i64 8
  %633 = getelementptr inbounds nuw i8, ptr %607, i64 8
  %634 = icmp eq i32 %631, 0
  br i1 %634, label %.loopexit80, label %.preheader, !llvm.loop !102

.loopexit80:                                      ; preds = %.preheader, %.loopexit82, %580, %561
  %635 = load i32, ptr %477, align 8, !tbaa !34
  br label %636

636:                                              ; preds = %.loopexit80, %535, %533
  %637 = phi i32 [ %635, %.loopexit80 ], [ %532, %535 ], [ 0, %533 ]
  %638 = load i32, ptr %472, align 8, !tbaa !27
  %.fr73 = freeze i32 %638
  %639 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr73, i32 %637), !nosanitize !20
  %640 = extractvalue { i32, i1 } %639, 1, !nosanitize !20
  br i1 %640, label %641, label %642, !prof !21, !nosanitize !20

641:                                              ; preds = %636
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

642:                                              ; preds = %636
  %643 = extractvalue { i32, i1 } %639, 0, !nosanitize !20
  %644 = load ptr, ptr %479, align 8, !tbaa !29
  %645 = zext i32 %637 to i64
  %646 = getelementptr inbounds nuw i8, ptr %644, i64 %645
  store i32 0, ptr %480, align 4, !tbaa !17
  %647 = tail call ptr @__errno_location() #17
  store i32 0, ptr %647, align 4, !tbaa !45
  %mv.h27 = icmp sgt i32 %.fr73, -1
  br i1 %mv.h27, label %.mv.ph29.mv.fast, label %.mv.ph29

.mv.ph29.mv.fast:                                 ; preds = %642, %658
  %648 = phi i32 [ %659, %658 ], [ 0, %642 ]
  %649 = sub i32 %643, %648
  %650 = tail call i32 @llvm.umin.i32(i32 %649, i32 1073741824)
  %651 = load i32, ptr %481, align 4, !tbaa !46
  %652 = zext i32 %648 to i64
  %653 = getelementptr inbounds nuw i8, ptr %646, i64 %652
  %654 = zext nneg i32 %650 to i64
  %655 = tail call i64 @read(i32 noundef %651, ptr noundef %653, i64 noundef %654) #13
  %656 = trunc i64 %655 to i32
  %657 = icmp slt i32 %656, 1
  br i1 %657, label %.loopexit77, label %658

658:                                              ; preds = %.mv.ph29.mv.fast
  %659 = add i32 %648, %656
  %660 = icmp ult i32 %659, %643
  br i1 %660, label %.mv.ph29.mv.fast, label %.loopexit19, !llvm.loop !47

.mv.ph29:                                         ; preds = %642, %675
  %661 = phi i32 [ %676, %675 ], [ 0, %642 ]
  %662 = sub i32 %643, %661
  %663 = tail call i32 @llvm.umin.i32(i32 %662, i32 1073741824)
  %664 = load i32, ptr %481, align 4, !tbaa !46
  %665 = zext i32 %661 to i64
  %666 = getelementptr inbounds nuw i8, ptr %646, i64 %665
  %667 = zext nneg i32 %663 to i64
  %668 = tail call i64 @read(i32 noundef %664, ptr noundef %666, i64 noundef %667) #13
  %669 = trunc i64 %668 to i32
  %670 = icmp slt i32 %669, 1
  br i1 %670, label %.loopexit77, label %671

671:                                              ; preds = %.mv.ph29
  %672 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %661, i32 %669), !nosanitize !20
  %673 = extractvalue { i32, i1 } %672, 1, !nosanitize !20
  br i1 %673, label %674, label %675, !prof !21, !nosanitize !20

674:                                              ; preds = %671
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

675:                                              ; preds = %671
  %676 = extractvalue { i32, i1 } %672, 0, !nosanitize !20
  %677 = icmp ult i32 %676, %643
  br i1 %677, label %.mv.ph29, label %.loopexit19, !llvm.loop !47

.loopexit77:                                      ; preds = %.mv.ph29, %.mv.ph29.mv.fast
  %.lcssa23 = phi i32 [ %656, %.mv.ph29.mv.fast ], [ %669, %.mv.ph29 ]
  %.lcssa20 = phi i32 [ %648, %.mv.ph29.mv.fast ], [ %661, %.mv.ph29 ]
  %678 = icmp slt i32 %.lcssa23, 0
  br i1 %678, label %679, label %686

679:                                              ; preds = %.loopexit77
  %680 = load i32, ptr %647, align 4, !tbaa !45
  %681 = icmp eq i32 %680, 11
  br i1 %681, label %682, label %.loopexit88

682:                                              ; preds = %679
  store i32 1, ptr %480, align 4, !tbaa !17
  %683 = icmp eq i32 %.lcssa20, 0
  br i1 %683, label %684, label %.loopexit19

684:                                              ; preds = %682
  %685 = load i32, ptr %647, align 4, !tbaa !45
  br label %.loopexit88

686:                                              ; preds = %.loopexit77
  store i32 1, ptr %478, align 8, !tbaa !24
  br label %.loopexit19

.loopexit88:                                      ; preds = %679, %684
  %687 = phi i32 [ %685, %684 ], [ %680, %679 ]
  %688 = tail call ptr @strerror(i32 noundef %687) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %688) #13
  br label %.loopexit87

.loopexit19:                                      ; preds = %675, %658, %686, %682
  %689 = phi i32 [ %.lcssa20, %686 ], [ %.lcssa20, %682 ], [ %659, %658 ], [ %676, %675 ]
  %690 = load i32, ptr %477, align 8, !tbaa !34
  %691 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %690, i32 %689), !nosanitize !20
  %692 = extractvalue { i32, i1 } %691, 1, !nosanitize !20
  br i1 %692, label %693, label %694, !prof !21, !nosanitize !20

693:                                              ; preds = %.loopexit19
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

694:                                              ; preds = %.loopexit19
  %695 = extractvalue { i32, i1 } %691, 0, !nosanitize !20
  store i32 %695, ptr %477, align 8, !tbaa !34
  %696 = load ptr, ptr %479, align 8, !tbaa !29
  store ptr %696, ptr %476, align 8, !tbaa !35
  br label %697

697:                                              ; preds = %694, %529
  %698 = phi i32 [ %695, %694 ], [ %532, %529 ]
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %729, label %700

700:                                              ; preds = %697
  %701 = load i32, ptr %480, align 4, !tbaa !17
  %702 = icmp ne i32 %701, 0
  %703 = icmp ult i32 %698, 4
  %704 = and i1 %703, %702
  br i1 %704, label %729, label %705

705:                                              ; preds = %700
  %706 = icmp ugt i32 %698, 3
  %707 = load ptr, ptr %476, align 8, !tbaa !35
  br i1 %706, label %708, label %725

708:                                              ; preds = %705
  %709 = load i8, ptr %707, align 1, !tbaa !36
  %710 = icmp eq i8 %709, 31
  br i1 %710, label %711, label %725

711:                                              ; preds = %708
  %712 = getelementptr inbounds nuw i8, ptr %707, i64 1
  %713 = load i8, ptr %712, align 1, !tbaa !36
  %714 = icmp eq i8 %713, -117
  br i1 %714, label %715, label %725

715:                                              ; preds = %711
  %716 = getelementptr inbounds nuw i8, ptr %707, i64 2
  %717 = load i8, ptr %716, align 1, !tbaa !36
  %718 = icmp eq i8 %717, 8
  br i1 %718, label %719, label %725

719:                                              ; preds = %715
  %720 = getelementptr inbounds nuw i8, ptr %707, i64 3
  %721 = load i8, ptr %720, align 1, !tbaa !36
  %722 = icmp ult i8 %721, 32
  br i1 %722, label %723, label %725

723:                                              ; preds = %719
  %724 = tail call i32 @inflateReset(ptr noundef nonnull %476) #13
  store i32 2, ptr %471, align 8, !tbaa !26
  store i32 1, ptr %482, align 4, !tbaa !33
  store i32 0, ptr %487, align 8, !tbaa !32
  br label %875

725:                                              ; preds = %719, %715, %711, %708, %705
  %726 = load ptr, ptr %474, align 8, !tbaa !30
  store ptr %726, ptr %484, align 8, !tbaa !22
  %727 = zext i32 %698 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %726, ptr align 1 %707, i64 %727, i1 false)
  %728 = load i32, ptr %477, align 8, !tbaa !34
  store i32 %728, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %477, align 8, !tbaa !34
  store i32 1, ptr %471, align 8, !tbaa !26
  br label %877

729:                                              ; preds = %700, %697, %522
  %730 = load i32, ptr %471, align 8, !tbaa !26
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %.loopexit89, label %875

732:                                              ; preds = %.preheader86
  %733 = load ptr, ptr %474, align 8, !tbaa !30
  %734 = load i32, ptr %472, align 8, !tbaa !27
  %735 = shl i32 %734, 1
  store i32 0, ptr %480, align 4, !tbaa !17
  %736 = tail call ptr @__errno_location() #17
  store i32 0, ptr %736, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %737

737:                                              ; preds = %753, %732
  %738 = phi i32 [ %754, %753 ], [ 0, %732 ]
  %739 = sub i32 %735, %738
  %740 = tail call i32 @llvm.umin.i32(i32 %739, i32 1073741824)
  %741 = load i32, ptr %481, align 4, !tbaa !46
  %742 = zext i32 %738 to i64
  %743 = getelementptr inbounds nuw i8, ptr %733, i64 %742
  %744 = zext nneg i32 %740 to i64
  %745 = tail call i64 @read(i32 noundef %741, ptr noundef %743, i64 noundef %744) #13
  %746 = trunc i64 %745 to i32
  %747 = icmp slt i32 %746, 1
  br i1 %747, label %756, label %748

748:                                              ; preds = %737
  %749 = load i32, ptr %0, align 4, !tbaa !45
  %750 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %749, i32 %746), !nosanitize !20
  %751 = extractvalue { i32, i1 } %750, 1, !nosanitize !20
  br i1 %751, label %752, label %753, !prof !21, !nosanitize !20

752:                                              ; preds = %748
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

753:                                              ; preds = %748
  %754 = extractvalue { i32, i1 } %750, 0, !nosanitize !20
  store i32 %754, ptr %0, align 4, !tbaa !45
  %755 = icmp ult i32 %754, %735
  br i1 %755, label %737, label %.loopexit85, !llvm.loop !47

756:                                              ; preds = %737
  %757 = icmp slt i32 %746, 0
  br i1 %757, label %758, label %766

758:                                              ; preds = %756
  %759 = load i32, ptr %736, align 4, !tbaa !45
  %760 = icmp eq i32 %759, 11
  br i1 %760, label %761, label %.loopexit90

761:                                              ; preds = %758
  store i32 1, ptr %480, align 4, !tbaa !17
  %762 = load i32, ptr %0, align 4, !tbaa !45
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %764, label %.loopexit85

764:                                              ; preds = %761
  %765 = load i32, ptr %736, align 4, !tbaa !45
  br label %.loopexit90

766:                                              ; preds = %756
  store i32 1, ptr %478, align 8, !tbaa !24
  br label %.loopexit85

.loopexit90:                                      ; preds = %758, %764
  %767 = phi i32 [ %765, %764 ], [ %759, %758 ]
  %768 = tail call ptr @strerror(i32 noundef %767) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %768) #13
  br label %.loopexit87

.loopexit85:                                      ; preds = %753, %766, %761
  %769 = load ptr, ptr %474, align 8, !tbaa !30
  store ptr %769, ptr %484, align 8, !tbaa !22
  br label %.loopexit89

770:                                              ; preds = %.preheader86
  %771 = load i32, ptr %472, align 8, !tbaa !27
  %772 = shl i32 %771, 1
  store i32 %772, ptr %473, align 8, !tbaa !48
  %773 = load ptr, ptr %474, align 8, !tbaa !30
  store ptr %773, ptr %475, align 8, !tbaa !49
  br label %774

774:                                              ; preds = %858, %770
  %775 = phi i32 [ 0, %770 ], [ %843, %858 ]
  %776 = load i32, ptr %477, align 8, !tbaa !34
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %842

778:                                              ; preds = %774
  %779 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %779, label %.loopexit83 [
    i32 0, label %780
    i32 -5, label %780
  ]

780:                                              ; preds = %778, %778
  %781 = load i32, ptr %478, align 8, !tbaa !24
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %838

783:                                              ; preds = %780
  %784 = load i32, ptr %472, align 8, !tbaa !27
  %.fr72 = freeze i32 %784
  %785 = load ptr, ptr %479, align 8, !tbaa !29
  store i32 0, ptr %480, align 4, !tbaa !17
  %786 = tail call ptr @__errno_location() #17
  store i32 0, ptr %786, align 4, !tbaa !45
  %mv.h = icmp sgt i32 %.fr72, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %783, %797
  %787 = phi i32 [ %798, %797 ], [ 0, %783 ]
  %788 = sub nsw i32 %.fr72, %787
  %789 = tail call i32 @llvm.umin.i32(i32 %788, i32 1073741824)
  %790 = load i32, ptr %481, align 4, !tbaa !46
  %791 = zext nneg i32 %787 to i64
  %792 = getelementptr inbounds nuw i8, ptr %785, i64 %791
  %793 = zext nneg i32 %789 to i64
  %794 = tail call i64 @read(i32 noundef %790, ptr noundef %792, i64 noundef %793) #13
  %795 = trunc i64 %794 to i32
  %796 = icmp slt i32 %795, 1
  br i1 %796, label %.loopexit74, label %797

797:                                              ; preds = %.mv.ph.mv.fast
  %798 = add nuw i32 %787, %795
  %799 = icmp ult i32 %798, %.fr72
  br i1 %799, label %.mv.ph.mv.fast, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %783, %814
  %800 = phi i32 [ %815, %814 ], [ 0, %783 ]
  %801 = sub i32 %.fr72, %800
  %802 = tail call i32 @llvm.umin.i32(i32 %801, i32 1073741824)
  %803 = load i32, ptr %481, align 4, !tbaa !46
  %804 = zext i32 %800 to i64
  %805 = getelementptr inbounds nuw i8, ptr %785, i64 %804
  %806 = zext nneg i32 %802 to i64
  %807 = tail call i64 @read(i32 noundef %803, ptr noundef %805, i64 noundef %806) #13
  %808 = trunc i64 %807 to i32
  %809 = icmp slt i32 %808, 1
  br i1 %809, label %.loopexit74, label %810

810:                                              ; preds = %.mv.ph
  %811 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %800, i32 %808), !nosanitize !20
  %812 = extractvalue { i32, i1 } %811, 1, !nosanitize !20
  br i1 %812, label %813, label %814, !prof !21, !nosanitize !20

813:                                              ; preds = %810
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

814:                                              ; preds = %810
  %815 = extractvalue { i32, i1 } %811, 0, !nosanitize !20
  %816 = icmp ult i32 %815, %.fr72
  br i1 %816, label %.mv.ph, label %.loopexit, !llvm.loop !47

.loopexit74:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa4 = phi i32 [ %795, %.mv.ph.mv.fast ], [ %808, %.mv.ph ]
  %.lcssa1 = phi i32 [ %787, %.mv.ph.mv.fast ], [ %800, %.mv.ph ]
  %817 = icmp slt i32 %.lcssa4, 0
  br i1 %817, label %818, label %825

818:                                              ; preds = %.loopexit74
  %819 = load i32, ptr %786, align 4, !tbaa !45
  %820 = icmp eq i32 %819, 11
  br i1 %820, label %821, label %.loopexit84

821:                                              ; preds = %818
  store i32 1, ptr %480, align 4, !tbaa !17
  %822 = icmp eq i32 %.lcssa1, 0
  br i1 %822, label %823, label %.loopexit

823:                                              ; preds = %821
  %824 = load i32, ptr %786, align 4, !tbaa !45
  br label %.loopexit84

825:                                              ; preds = %.loopexit74
  store i32 1, ptr %478, align 8, !tbaa !24
  br label %.loopexit

.loopexit84:                                      ; preds = %818, %823
  %826 = phi i32 [ %824, %823 ], [ %819, %818 ]
  %827 = tail call ptr @strerror(i32 noundef %826) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %827) #13
  %828 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit83

.loopexit:                                        ; preds = %814, %797, %825, %821
  %829 = phi i32 [ %.lcssa1, %825 ], [ %.lcssa1, %821 ], [ %798, %797 ], [ %815, %814 ]
  %830 = load i32, ptr %477, align 8, !tbaa !34
  %831 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %830, i32 %829), !nosanitize !20
  %832 = extractvalue { i32, i1 } %831, 1, !nosanitize !20
  br i1 %832, label %833, label %834, !prof !21, !nosanitize !20

833:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

834:                                              ; preds = %.loopexit
  %835 = extractvalue { i32, i1 } %831, 0, !nosanitize !20
  store i32 %835, ptr %477, align 8, !tbaa !34
  %836 = load ptr, ptr %479, align 8, !tbaa !29
  store ptr %836, ptr %476, align 8, !tbaa !35
  %837 = icmp eq i32 %835, 0
  br i1 %837, label %838, label %842

838:                                              ; preds = %834, %780
  %839 = load i32, ptr %480, align 4, !tbaa !17
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %.loopexit83

841:                                              ; preds = %838
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit83

842:                                              ; preds = %834, %774
  %843 = tail call i32 @inflate(ptr noundef nonnull %476, i32 noundef 0) #13
  %844 = load i32, ptr %473, align 8, !tbaa !48
  %845 = icmp ult i32 %844, %772
  br i1 %845, label %846, label %847

846:                                              ; preds = %842
  store i32 0, ptr %482, align 4, !tbaa !33
  br label %847

847:                                              ; preds = %846, %842
  switch i32 %843, label %858 [
    i32 -2, label %848
    i32 2, label %848
    i32 -4, label %849
    i32 -3, label %850
  ]

848:                                              ; preds = %847, %847
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit83

849:                                              ; preds = %847
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit83

850:                                              ; preds = %847
  %851 = load i32, ptr %482, align 4, !tbaa !33
  %852 = icmp eq i32 %851, 1
  br i1 %852, label %853, label %854

853:                                              ; preds = %850
  store i32 0, ptr %477, align 8, !tbaa !34
  store i32 1, ptr %478, align 8, !tbaa !24
  store i32 0, ptr %471, align 8, !tbaa !26
  br label %.loopexit83

854:                                              ; preds = %850
  %855 = load ptr, ptr %483, align 8, !tbaa !50
  %856 = icmp eq ptr %855, null
  %857 = select i1 %856, ptr @.str.6, ptr %855
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %857) #13
  br label %.loopexit83

858:                                              ; preds = %847
  %859 = icmp ne i32 %844, 0
  %860 = icmp ne i32 %843, 1
  %861 = select i1 %859, i1 %860, i1 false
  br i1 %861, label %774, label %.loopexit83, !llvm.loop !51

.loopexit83:                                      ; preds = %858, %778, %854, %853, %849, %848, %841, %838, %.loopexit84
  %862 = phi i32 [ %775, %838 ], [ %775, %841 ], [ %843, %848 ], [ -4, %849 ], [ 0, %853 ], [ -3, %854 ], [ %828, %.loopexit84 ], [ %779, %778 ], [ %843, %858 ]
  %863 = load i32, ptr %473, align 8, !tbaa !48
  %864 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %772, i32 %863), !nosanitize !20
  %865 = extractvalue { i32, i1 } %864, 1, !nosanitize !20
  br i1 %865, label %866, label %867, !prof !21, !nosanitize !20

866:                                              ; preds = %.loopexit83
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

867:                                              ; preds = %.loopexit83
  %868 = extractvalue { i32, i1 } %864, 0, !nosanitize !20
  store i32 %868, ptr %0, align 8, !tbaa !19
  %869 = load ptr, ptr %475, align 8, !tbaa !49
  %870 = zext i32 %868 to i64
  %871 = sub nsw i64 0, %870
  %872 = getelementptr inbounds i8, ptr %869, i64 %871
  store ptr %872, ptr %484, align 8, !tbaa !22
  switch i32 %862, label %.loopexit87 [
    i32 1, label %873
    i32 0, label %875
  ]

873:                                              ; preds = %867
  store i32 0, ptr %482, align 4, !tbaa !33
  store i32 0, ptr %471, align 8, !tbaa !26
  br label %875

874:                                              ; preds = %.preheader86
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit87

875:                                              ; preds = %873, %867, %729, %723
  %876 = load i32, ptr %0, align 8, !tbaa !19
  br label %877

877:                                              ; preds = %875, %725
  %878 = phi i32 [ %876, %875 ], [ %728, %725 ]
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %880, label %.loopexit89

880:                                              ; preds = %877
  %881 = load i32, ptr %478, align 8, !tbaa !24
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %.preheader86.backedge, label %883

883:                                              ; preds = %880
  %884 = load i32, ptr %477, align 8, !tbaa !34
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %.loopexit89, label %.preheader86.backedge

.preheader86.backedge:                            ; preds = %883, %880
  br label %.preheader86, !llvm.loop !52

.loopexit89:                                      ; preds = %883, %877, %729, %.loopexit85
  %886 = load i32, ptr %0, align 8, !tbaa !19
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %890

888:                                              ; preds = %.loopexit89
  %889 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %889, align 4, !tbaa !61
  br label %.loopexit87

890:                                              ; preds = %.loopexit89, %490
  %891 = phi i32 [ %886, %.loopexit89 ], [ %491, %490 ]
  %892 = tail call i32 @llvm.umin.i32(i32 %891, i32 %492)
  %893 = load ptr, ptr %484, align 8, !tbaa !22
  %894 = zext i32 %892 to i64
  %895 = tail call ptr @memchr(ptr noundef %893, i32 noundef 10, i64 noundef %894) #18
  %896 = icmp eq ptr %895, null
  br i1 %896, label %908, label %897

897:                                              ; preds = %890
  %898 = ptrtoint ptr %895 to i64
  %899 = ptrtoint ptr %893 to i64
  %900 = sub i64 %898, %899
  %901 = trunc i64 %900 to i32
  %902 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %901, i32 1), !nosanitize !20
  %903 = extractvalue { i32, i1 } %902, 1, !nosanitize !20
  br i1 %903, label %904, label %905, !prof !21, !nosanitize !20

904:                                              ; preds = %915, %897
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

905:                                              ; preds = %897
  %906 = extractvalue { i32, i1 } %902, 0, !nosanitize !20
  %907 = zext i32 %906 to i64
  br label %908

908:                                              ; preds = %905, %890
  %909 = phi i64 [ %907, %905 ], [ %894, %890 ]
  %910 = phi i32 [ %906, %905 ], [ %892, %890 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %493, ptr align 1 %893, i64 %909, i1 false)
  %911 = load i32, ptr %0, align 8, !tbaa !19
  %912 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %911, i32 %910), !nosanitize !20
  %913 = extractvalue { i32, i1 } %912, 1, !nosanitize !20
  br i1 %913, label %914, label %915, !prof !21, !nosanitize !20

914:                                              ; preds = %908
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

915:                                              ; preds = %908
  %916 = extractvalue { i32, i1 } %912, 0, !nosanitize !20
  store i32 %916, ptr %0, align 8, !tbaa !19
  %917 = load ptr, ptr %484, align 8, !tbaa !22
  %918 = getelementptr inbounds nuw i8, ptr %917, i64 %909
  store ptr %918, ptr %484, align 8, !tbaa !22
  %919 = load i64, ptr %488, align 8, !tbaa !23
  %920 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %919, i64 %909), !nosanitize !20
  %921 = extractvalue { i64, i1 } %920, 1, !nosanitize !20
  br i1 %921, label %904, label %922, !prof !21, !nosanitize !20

922:                                              ; preds = %915
  %923 = extractvalue { i64, i1 } %920, 0, !nosanitize !20
  store i64 %923, ptr %488, align 8, !tbaa !23
  %924 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %492, i32 %910), !nosanitize !20
  %925 = extractvalue { i32, i1 } %924, 1, !nosanitize !20
  br i1 %925, label %926, label %927, !prof !21, !nosanitize !20

926:                                              ; preds = %922
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

927:                                              ; preds = %922
  %928 = extractvalue { i32, i1 } %924, 0, !nosanitize !20
  %929 = getelementptr inbounds nuw i8, ptr %493, i64 %909
  %930 = icmp ne i32 %928, 0
  %931 = and i1 %896, %930
  br i1 %931, label %490, label %.loopexit87, !llvm.loop !103

.loopexit87:                                      ; preds = %927, %867, %527, %888, %874, %.loopexit90, %.loopexit88, %513, %509
  %932 = phi ptr [ %493, %888 ], [ %493, %874 ], [ %493, %.loopexit90 ], [ %493, %509 ], [ %493, %513 ], [ %493, %.loopexit88 ], [ %493, %867 ], [ %493, %527 ], [ %929, %927 ]
  %933 = icmp eq ptr %932, %1
  br i1 %933, label %.loopexit106, label %934

934:                                              ; preds = %.loopexit87
  store i8 0, ptr %932, align 1, !tbaa !36
  br label %.loopexit106

.loopexit106:                                     ; preds = %445, %105, %934, %.loopexit87, %.loopexit109, %452, %.loopexit110, %.loopexit107, %91, %87, %16, %9, %3
  %935 = phi ptr [ %1, %934 ], [ null, %3 ], [ null, %9 ], [ null, %16 ], [ null, %.loopexit87 ], [ null, %452 ], [ null, %.loopexit110 ], [ null, %87 ], [ null, %91 ], [ null, %.loopexit107 ], [ null, %.loopexit109 ], [ null, %105 ], [ null, %445 ]
  ret ptr %935
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @gzdirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %273, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 7247
  br i1 %6, label %7, label %268

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %268

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8, !tbaa !19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %268

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
  br label %268

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
  br label %268

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
  br label %268

55:                                               ; preds = %45
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %57 = load i32, ptr %56, align 8, !tbaa !16
  switch i32 %57, label %268 [
    i32 0, label %58
    i32 -5, label %58
  ]

58:                                               ; preds = %55, %55
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %60 = load i32, ptr %59, align 8, !tbaa !24
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %63 = load i32, ptr %62, align 8, !tbaa !34
  br i1 %61, label %64, label %233

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
  br i1 %94, label %.loopexit19, label %95

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
  br i1 %117, label %.loopexit19, label %118

118:                                              ; preds = %112, %95, %71
  %119 = phi ptr [ %68, %71 ], [ %96, %95 ], [ %113, %112 ]
  %120 = phi ptr [ %69, %71 ], [ %97, %95 ], [ %114, %112 ]
  %121 = phi i32 [ %63, %71 ], [ %99, %95 ], [ %116, %112 ]
  %122 = add i32 %121, -1
  %123 = and i32 %121, 7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %.loopexit21, label %.preheader20

.preheader20:                                     ; preds = %118, %.preheader20
  %125 = phi ptr [ %129, %.preheader20 ], [ %119, %118 ]
  %126 = phi ptr [ %130, %.preheader20 ], [ %120, %118 ]
  %127 = phi i32 [ %131, %.preheader20 ], [ 0, %118 ]
  %128 = load i8, ptr %126, align 1, !tbaa !36
  store i8 %128, ptr %125, align 1, !tbaa !36
  %129 = getelementptr inbounds nuw i8, ptr %125, i64 1
  %130 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %131 = add nuw nsw i32 %127, 1
  %132 = icmp eq i32 %131, %123
  br i1 %132, label %.loopexit21.loopexit, label %.preheader20, !llvm.loop !106

.loopexit21.loopexit:                             ; preds = %.preheader20
  %133 = and i32 %121, -8
  br label %.loopexit21

.loopexit21:                                      ; preds = %.loopexit21.loopexit, %118
  %134 = phi ptr [ %119, %118 ], [ %129, %.loopexit21.loopexit ]
  %135 = phi ptr [ %120, %118 ], [ %130, %.loopexit21.loopexit ]
  %136 = phi i32 [ %121, %118 ], [ %133, %.loopexit21.loopexit ]
  %137 = icmp ult i32 %122, 7
  br i1 %137, label %.loopexit19, label %.preheader

.preheader:                                       ; preds = %.loopexit21, %.preheader
  %138 = phi ptr [ %164, %.preheader ], [ %134, %.loopexit21 ]
  %139 = phi ptr [ %165, %.preheader ], [ %135, %.loopexit21 ]
  %140 = phi i32 [ %163, %.preheader ], [ %136, %.loopexit21 ]
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
  br i1 %166, label %.loopexit19, label %.preheader, !llvm.loop !107

.loopexit19:                                      ; preds = %.preheader, %.loopexit21, %112, %93
  %167 = load i32, ptr %62, align 8, !tbaa !34
  br label %168

168:                                              ; preds = %.loopexit19, %66, %64
  %169 = phi i32 [ %167, %.loopexit19 ], [ %63, %66 ], [ 0, %64 ]
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %171 = load i32, ptr %16, align 8, !tbaa !27
  %.fr = freeze i32 %171
  %172 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.fr, i32 %169), !nosanitize !20
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
  %mv.h = icmp sgt i32 %.fr, -1
  br i1 %mv.h, label %.mv.ph.mv.fast, label %.mv.ph

.mv.ph.mv.fast:                                   ; preds = %175, %193
  %183 = phi i32 [ %194, %193 ], [ 0, %175 ]
  %184 = sub i32 %176, %183
  %185 = tail call i32 @llvm.umin.i32(i32 %184, i32 1073741824)
  %186 = load i32, ptr %182, align 4, !tbaa !46
  %187 = zext i32 %183 to i64
  %188 = getelementptr inbounds nuw i8, ptr %179, i64 %187
  %189 = zext nneg i32 %185 to i64
  %190 = tail call i64 @read(i32 noundef %186, ptr noundef %188, i64 noundef %189) #13
  %191 = trunc i64 %190 to i32
  %192 = icmp slt i32 %191, 1
  br i1 %192, label %.loopexit16, label %193

193:                                              ; preds = %.mv.ph.mv.fast
  %194 = add i32 %183, %191
  %195 = icmp ult i32 %194, %176
  br i1 %195, label %.mv.ph.mv.fast, label %.loopexit, !llvm.loop !47

.mv.ph:                                           ; preds = %175, %210
  %196 = phi i32 [ %211, %210 ], [ 0, %175 ]
  %197 = sub i32 %176, %196
  %198 = tail call i32 @llvm.umin.i32(i32 %197, i32 1073741824)
  %199 = load i32, ptr %182, align 4, !tbaa !46
  %200 = zext i32 %196 to i64
  %201 = getelementptr inbounds nuw i8, ptr %179, i64 %200
  %202 = zext nneg i32 %198 to i64
  %203 = tail call i64 @read(i32 noundef %199, ptr noundef %201, i64 noundef %202) #13
  %204 = trunc i64 %203 to i32
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %.loopexit16, label %206

206:                                              ; preds = %.mv.ph
  %207 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %196, i32 %204), !nosanitize !20
  %208 = extractvalue { i32, i1 } %207, 1, !nosanitize !20
  br i1 %208, label %209, label %210, !prof !21, !nosanitize !20

209:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

210:                                              ; preds = %206
  %211 = extractvalue { i32, i1 } %207, 0, !nosanitize !20
  %212 = icmp ult i32 %211, %176
  br i1 %212, label %.mv.ph, label %.loopexit, !llvm.loop !47

.loopexit16:                                      ; preds = %.mv.ph, %.mv.ph.mv.fast
  %.lcssa4 = phi i32 [ %191, %.mv.ph.mv.fast ], [ %204, %.mv.ph ]
  %.lcssa1 = phi i32 [ %183, %.mv.ph.mv.fast ], [ %196, %.mv.ph ]
  %213 = icmp slt i32 %.lcssa4, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %.loopexit16
  %215 = load i32, ptr %181, align 4, !tbaa !45
  %216 = icmp eq i32 %215, 11
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  store i32 1, ptr %180, align 4, !tbaa !17
  %218 = icmp eq i32 %.lcssa1, 0
  br i1 %218, label %219, label %.loopexit

219:                                              ; preds = %217
  %220 = load i32, ptr %181, align 4, !tbaa !45
  br label %222

221:                                              ; preds = %.loopexit16
  store i32 1, ptr %59, align 8, !tbaa !24
  br label %.loopexit

222:                                              ; preds = %219, %214
  %223 = phi i32 [ %220, %219 ], [ %215, %214 ]
  %224 = tail call ptr @strerror(i32 noundef %223) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %224) #13
  br label %268

.loopexit:                                        ; preds = %210, %193, %221, %217
  %225 = phi i32 [ %.lcssa1, %221 ], [ %.lcssa1, %217 ], [ %194, %193 ], [ %211, %210 ]
  %226 = load i32, ptr %62, align 8, !tbaa !34
  %227 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %226, i32 %225), !nosanitize !20
  %228 = extractvalue { i32, i1 } %227, 1, !nosanitize !20
  br i1 %228, label %229, label %230, !prof !21, !nosanitize !20

229:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

230:                                              ; preds = %.loopexit
  %231 = extractvalue { i32, i1 } %227, 0, !nosanitize !20
  store i32 %231, ptr %62, align 8, !tbaa !34
  %232 = load ptr, ptr %170, align 8, !tbaa !29
  store ptr %232, ptr %15, align 8, !tbaa !35
  br label %233

233:                                              ; preds = %230, %58
  %234 = phi i32 [ %231, %230 ], [ %63, %58 ]
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %268, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %238 = load i32, ptr %237, align 4, !tbaa !17
  %239 = icmp ne i32 %238, 0
  %240 = icmp ult i32 %234, 4
  %241 = and i1 %240, %239
  br i1 %241, label %268, label %242

242:                                              ; preds = %236
  %243 = icmp ugt i32 %234, 3
  %244 = load ptr, ptr %15, align 8, !tbaa !35
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
  %261 = tail call i32 @inflateReset(ptr noundef nonnull %15) #13
  store i32 2, ptr %8, align 8, !tbaa !26
  store i32 1, ptr %46, align 4, !tbaa !33
  store i32 0, ptr %42, align 8, !tbaa !32
  br label %268

262:                                              ; preds = %256, %252, %248, %245, %242
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %264 = load ptr, ptr %263, align 8, !tbaa !30
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %264, ptr %265, align 8, !tbaa !22
  %266 = zext i32 %234 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %264, ptr align 1 %244, i64 %266, i1 false)
  %267 = load i32, ptr %62, align 8, !tbaa !34
  store i32 %267, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %62, align 8, !tbaa !34
  store i32 1, ptr %8, align 8, !tbaa !26
  br label %268

268:                                              ; preds = %262, %260, %236, %233, %222, %55, %49, %38, %32, %11, %7, %3
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %270 = load i32, ptr %269, align 8, !tbaa !32
  %271 = icmp eq i32 %270, 1
  %272 = zext i1 %271 to i32
  br label %273

273:                                              ; preds = %268, %1
  %274 = phi i32 [ %272, %268 ], [ 0, %1 ]
  ret i32 %274
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
