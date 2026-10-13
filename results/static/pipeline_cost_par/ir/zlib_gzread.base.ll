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
  br i1 %4, label %1094, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 7247
  br i1 %8, label %9, label %1094

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
  br i1 %15, label %1094, label %16

16:                                               ; preds = %12, %9, %9
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str) #13
  br label %1094

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

45:                                               ; preds = %460, %26
  %46 = phi i64 [ %461, %460 ], [ %24, %26 ]
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
  br label %460

71:                                               ; preds = %45
  %72 = load i32, ptr %29, align 8, !tbaa !24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %.preheader891, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %30, align 8, !tbaa !25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %.loopexit98, label %.preheader891

.preheader891:                                    ; preds = %74, %71
  br label %77

77:                                               ; preds = %.backedge, %.preheader891
  %78 = load i32, ptr %31, align 8, !tbaa !26
  switch i32 %78, label %447 [
    i32 0, label %79
    i32 1, label %308
    i32 2, label %350
  ]

79:                                               ; preds = %77
  %80 = load i32, ptr %32, align 8, !tbaa !27
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load i32, ptr %42, align 4, !tbaa !28
  %84 = zext i32 %83 to i64
  %85 = tail call noalias ptr @malloc(i64 noundef %84) #16
  store ptr %85, ptr %37, align 8, !tbaa !29
  %86 = shl i32 %83, 1
  %87 = zext i32 %86 to i64
  %88 = tail call noalias ptr @malloc(i64 noundef %87) #16
  store ptr %88, ptr %34, align 8, !tbaa !30
  %89 = icmp eq ptr %85, null
  %90 = icmp eq ptr %88, null
  %91 = or i1 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  tail call void @free(ptr noundef %88) #13
  tail call void @free(ptr noundef %85) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

93:                                               ; preds = %82
  store i32 %83, ptr %32, align 8, !tbaa !27
  store i32 0, ptr %30, align 8, !tbaa !25
  store ptr null, ptr %36, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %94 = tail call i32 @inflateInit2_(ptr noundef nonnull %36, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %34, align 8, !tbaa !30
  tail call void @free(ptr noundef %97) #13
  %98 = load ptr, ptr %37, align 8, !tbaa !29
  tail call void @free(ptr noundef %98) #13
  store i32 0, ptr %32, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

99:                                               ; preds = %93, %79
  %100 = load i32, ptr %44, align 8, !tbaa !32
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, ptr %40, align 4, !tbaa !33
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102, %99
  %106 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  %107 = load i32, ptr %40, align 4, !tbaa !33
  %108 = icmp ne i32 %107, -1
  %109 = zext i1 %108 to i32
  store i32 %109, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %305

110:                                              ; preds = %102
  %111 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %111, label %.loopexit95 [
    i32 0, label %112
    i32 -5, label %112
  ]

112:                                              ; preds = %110, %110
  %113 = load i32, ptr %29, align 8, !tbaa !24
  %114 = icmp eq i32 %113, 0
  %115 = load i32, ptr %30, align 8, !tbaa !34
  br i1 %114, label %116, label %273

116:                                              ; preds = %112
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %219, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %37, align 8, !tbaa !29
  %120 = load ptr, ptr %36, align 8, !tbaa !35
  %121 = icmp eq ptr %120, %119
  br i1 %121, label %219, label %122

122:                                              ; preds = %118
  %123 = ptrtoint ptr %120 to i64
  %124 = ptrtoint ptr %119 to i64
  %125 = zext i32 %115 to i64
  %126 = icmp ult i32 %115, 4
  %127 = sub i64 %124, %123
  %128 = icmp ult i64 %127, 32
  %129 = or i1 %126, %128
  br i1 %129, label %169, label %130

130:                                              ; preds = %122
  %131 = icmp ult i32 %115, 32
  br i1 %131, label %153, label %132

132:                                              ; preds = %130
  %133 = and i64 %125, 4294967264
  br label %134

134:                                              ; preds = %134, %132
  %135 = phi i64 [ 0, %132 ], [ %142, %134 ]
  %136 = getelementptr i8, ptr %119, i64 %135
  %137 = getelementptr i8, ptr %120, i64 %135
  %138 = getelementptr i8, ptr %137, i64 16
  %139 = load <16 x i8>, ptr %137, align 1, !tbaa !36
  %140 = load <16 x i8>, ptr %138, align 1, !tbaa !36
  %141 = getelementptr i8, ptr %136, i64 16
  store <16 x i8> %139, ptr %136, align 1, !tbaa !36
  store <16 x i8> %140, ptr %141, align 1, !tbaa !36
  %142 = add nuw nsw i64 %135, 32
  %143 = icmp eq i64 %142, %133
  br i1 %143, label %144, label %134, !llvm.loop !37

144:                                              ; preds = %134
  %145 = icmp eq i64 %133, %125
  br i1 %145, label %.loopexit87, label %146

146:                                              ; preds = %144
  %147 = getelementptr i8, ptr %119, i64 %133
  %148 = getelementptr i8, ptr %120, i64 %133
  %149 = trunc nuw i64 %133 to i32
  %150 = sub i32 %115, %149
  %151 = and i64 %125, 28
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %169, label %153

153:                                              ; preds = %146, %130
  %154 = phi i64 [ %133, %146 ], [ 0, %130 ]
  %155 = and i64 %125, 4294967292
  br label %156

156:                                              ; preds = %156, %153
  %157 = phi i64 [ %154, %153 ], [ %161, %156 ]
  %158 = getelementptr i8, ptr %119, i64 %157
  %159 = getelementptr i8, ptr %120, i64 %157
  %160 = load <4 x i8>, ptr %159, align 1, !tbaa !36
  store <4 x i8> %160, ptr %158, align 1, !tbaa !36
  %161 = add nuw i64 %157, 4
  %162 = icmp eq i64 %161, %155
  br i1 %162, label %163, label %156, !llvm.loop !41

163:                                              ; preds = %156
  %164 = getelementptr i8, ptr %119, i64 %155
  %165 = getelementptr i8, ptr %120, i64 %155
  %166 = trunc nuw i64 %155 to i32
  %167 = sub i32 %115, %166
  %168 = icmp eq i64 %155, %125
  br i1 %168, label %.loopexit87, label %169

169:                                              ; preds = %163, %146, %122
  %170 = phi ptr [ %119, %122 ], [ %147, %146 ], [ %164, %163 ]
  %171 = phi ptr [ %120, %122 ], [ %148, %146 ], [ %165, %163 ]
  %172 = phi i32 [ %115, %122 ], [ %150, %146 ], [ %167, %163 ]
  %173 = add i32 %172, -1
  %174 = and i32 %172, 7
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %169, %.preheader88
  %176 = phi ptr [ %180, %.preheader88 ], [ %170, %169 ]
  %177 = phi ptr [ %181, %.preheader88 ], [ %171, %169 ]
  %178 = phi i32 [ %182, %.preheader88 ], [ 0, %169 ]
  %179 = load i8, ptr %177, align 1, !tbaa !36
  store i8 %179, ptr %176, align 1, !tbaa !36
  %180 = getelementptr inbounds nuw i8, ptr %176, i64 1
  %181 = getelementptr inbounds nuw i8, ptr %177, i64 1
  %182 = add nuw nsw i32 %178, 1
  %183 = icmp eq i32 %182, %174
  br i1 %183, label %.loopexit89.loopexit, label %.preheader88, !llvm.loop !42

.loopexit89.loopexit:                             ; preds = %.preheader88
  %184 = and i32 %172, -8
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %169
  %185 = phi ptr [ %170, %169 ], [ %180, %.loopexit89.loopexit ]
  %186 = phi ptr [ %171, %169 ], [ %181, %.loopexit89.loopexit ]
  %187 = phi i32 [ %172, %169 ], [ %184, %.loopexit89.loopexit ]
  %188 = icmp ult i32 %173, 7
  br i1 %188, label %.loopexit87, label %.preheader86

.preheader86:                                     ; preds = %.loopexit89, %.preheader86
  %189 = phi ptr [ %215, %.preheader86 ], [ %185, %.loopexit89 ]
  %190 = phi ptr [ %216, %.preheader86 ], [ %186, %.loopexit89 ]
  %191 = phi i32 [ %214, %.preheader86 ], [ %187, %.loopexit89 ]
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
  br i1 %217, label %.loopexit87, label %.preheader86, !llvm.loop !44

.loopexit87:                                      ; preds = %.preheader86, %.loopexit89, %163, %144
  %218 = load i32, ptr %30, align 8, !tbaa !34
  br label %219

219:                                              ; preds = %.loopexit87, %118, %116
  %220 = phi i32 [ %218, %.loopexit87 ], [ %115, %118 ], [ 0, %116 ]
  %221 = load i32, ptr %32, align 8, !tbaa !27
  %222 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %221, i32 %220), !nosanitize !20
  %223 = extractvalue { i32, i1 } %222, 1, !nosanitize !20
  br i1 %223, label %224, label %225, !prof !21, !nosanitize !20

224:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

225:                                              ; preds = %219
  %226 = extractvalue { i32, i1 } %222, 0, !nosanitize !20
  %227 = load ptr, ptr %37, align 8, !tbaa !29
  %228 = zext i32 %220 to i64
  %229 = getelementptr inbounds nuw i8, ptr %227, i64 %228
  store i32 0, ptr %38, align 4, !tbaa !17
  %230 = tail call ptr @__errno_location() #17
  store i32 0, ptr %230, align 4, !tbaa !45
  br label %231

231:                                              ; preds = %250, %225
  %232 = phi i32 [ 0, %225 ], [ %251, %250 ]
  %233 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %226, i32 %232), !nosanitize !20
  %234 = extractvalue { i32, i1 } %233, 1, !nosanitize !20
  br i1 %234, label %235, label %236, !prof !21, !nosanitize !20

235:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

236:                                              ; preds = %231
  %237 = extractvalue { i32, i1 } %233, 0, !nosanitize !20
  %238 = tail call i32 @llvm.umin.i32(i32 %237, i32 1073741824)
  %239 = load i32, ptr %39, align 4, !tbaa !46
  %240 = zext i32 %232 to i64
  %241 = getelementptr inbounds nuw i8, ptr %229, i64 %240
  %242 = zext nneg i32 %238 to i64
  %243 = tail call i64 @read(i32 noundef %239, ptr noundef %241, i64 noundef %242) #13
  %244 = trunc i64 %243 to i32
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %253, label %246

246:                                              ; preds = %236
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %232, i32 %244), !nosanitize !20
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !20
  br i1 %248, label %249, label %250, !prof !21, !nosanitize !20

249:                                              ; preds = %246
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

250:                                              ; preds = %246
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !20
  %252 = icmp ult i32 %251, %226
  br i1 %252, label %231, label %.loopexit85, !llvm.loop !47

253:                                              ; preds = %236
  %254 = icmp slt i32 %244, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %253
  %256 = load i32, ptr %230, align 4, !tbaa !45
  %257 = icmp eq i32 %256, 11
  br i1 %257, label %258, label %.loopexit96

258:                                              ; preds = %255
  store i32 1, ptr %38, align 4, !tbaa !17
  %259 = icmp eq i32 %232, 0
  br i1 %259, label %260, label %.loopexit85

260:                                              ; preds = %258
  %261 = load i32, ptr %230, align 4, !tbaa !45
  br label %.loopexit96

262:                                              ; preds = %253
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit85

.loopexit96:                                      ; preds = %255, %260
  %263 = phi i32 [ %261, %260 ], [ %256, %255 ]
  %264 = tail call ptr @strerror(i32 noundef %263) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %264) #13
  br label %.loopexit94

.loopexit85:                                      ; preds = %250, %262, %258
  %265 = phi i32 [ %232, %262 ], [ %232, %258 ], [ %251, %250 ]
  %266 = load i32, ptr %30, align 8, !tbaa !34
  %267 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %266, i32 %265), !nosanitize !20
  %268 = extractvalue { i32, i1 } %267, 1, !nosanitize !20
  br i1 %268, label %269, label %270, !prof !21, !nosanitize !20

269:                                              ; preds = %.loopexit85
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

270:                                              ; preds = %.loopexit85
  %271 = extractvalue { i32, i1 } %267, 0, !nosanitize !20
  store i32 %271, ptr %30, align 8, !tbaa !34
  %272 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %272, ptr %36, align 8, !tbaa !35
  br label %273

273:                                              ; preds = %270, %112
  %274 = phi i32 [ %271, %270 ], [ %115, %112 ]
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %305, label %276

276:                                              ; preds = %273
  %277 = load i32, ptr %38, align 4, !tbaa !17
  %278 = icmp ne i32 %277, 0
  %279 = icmp ult i32 %274, 4
  %280 = and i1 %279, %278
  br i1 %280, label %305, label %281

281:                                              ; preds = %276
  %282 = icmp ugt i32 %274, 3
  %283 = load ptr, ptr %36, align 8, !tbaa !35
  br i1 %282, label %284, label %301

284:                                              ; preds = %281
  %285 = load i8, ptr %283, align 1, !tbaa !36
  %286 = icmp eq i8 %285, 31
  br i1 %286, label %287, label %301

287:                                              ; preds = %284
  %288 = getelementptr inbounds nuw i8, ptr %283, i64 1
  %289 = load i8, ptr %288, align 1, !tbaa !36
  %290 = icmp eq i8 %289, -117
  br i1 %290, label %291, label %301

291:                                              ; preds = %287
  %292 = getelementptr inbounds nuw i8, ptr %283, i64 2
  %293 = load i8, ptr %292, align 1, !tbaa !36
  %294 = icmp eq i8 %293, 8
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = getelementptr inbounds nuw i8, ptr %283, i64 3
  %297 = load i8, ptr %296, align 1, !tbaa !36
  %298 = icmp ult i8 %297, 32
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = tail call i32 @inflateReset(ptr noundef nonnull %36) #13
  store i32 2, ptr %31, align 8, !tbaa !26
  store i32 1, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %44, align 8, !tbaa !32
  br label %448

301:                                              ; preds = %295, %291, %287, %284, %281
  %302 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %302, ptr %27, align 8, !tbaa !22
  %303 = zext i32 %274 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %302, ptr align 1 %283, i64 %303, i1 false)
  %304 = load i32, ptr %30, align 8, !tbaa !34
  store i32 %304, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %31, align 8, !tbaa !26
  br label %450

305:                                              ; preds = %276, %273, %105
  %306 = load i32, ptr %31, align 8, !tbaa !26
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %.loopexit97, label %448

308:                                              ; preds = %77
  %309 = load ptr, ptr %34, align 8, !tbaa !30
  %310 = load i32, ptr %32, align 8, !tbaa !27
  %311 = shl i32 %310, 1
  store i32 0, ptr %38, align 4, !tbaa !17
  %312 = tail call ptr @__errno_location() #17
  store i32 0, ptr %312, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %313

313:                                              ; preds = %333, %308
  %314 = phi i32 [ %334, %333 ], [ 0, %308 ]
  %315 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %311, i32 %314), !nosanitize !20
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !20
  br i1 %316, label %317, label %318, !prof !21, !nosanitize !20

317:                                              ; preds = %313
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

318:                                              ; preds = %313
  %319 = extractvalue { i32, i1 } %315, 0, !nosanitize !20
  %320 = tail call i32 @llvm.umin.i32(i32 %319, i32 1073741824)
  %321 = load i32, ptr %39, align 4, !tbaa !46
  %322 = zext i32 %314 to i64
  %323 = getelementptr inbounds nuw i8, ptr %309, i64 %322
  %324 = zext nneg i32 %320 to i64
  %325 = tail call i64 @read(i32 noundef %321, ptr noundef %323, i64 noundef %324) #13
  %326 = trunc i64 %325 to i32
  %327 = icmp slt i32 %326, 1
  br i1 %327, label %336, label %328

328:                                              ; preds = %318
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
  %335 = icmp ult i32 %334, %311
  br i1 %335, label %313, label %.loopexit93, !llvm.loop !47

336:                                              ; preds = %318
  %337 = icmp slt i32 %326, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %336
  %339 = load i32, ptr %312, align 4, !tbaa !45
  %340 = icmp eq i32 %339, 11
  br i1 %340, label %341, label %.loopexit99

341:                                              ; preds = %338
  store i32 1, ptr %38, align 4, !tbaa !17
  %342 = load i32, ptr %0, align 4, !tbaa !45
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %.loopexit93

344:                                              ; preds = %341
  %345 = load i32, ptr %312, align 4, !tbaa !45
  br label %.loopexit99

346:                                              ; preds = %336
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit93

.loopexit99:                                      ; preds = %338, %344
  %347 = phi i32 [ %345, %344 ], [ %339, %338 ]
  %348 = tail call ptr @strerror(i32 noundef %347) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %348) #13
  br label %.loopexit94

.loopexit93:                                      ; preds = %333, %346, %341
  %349 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %349, ptr %27, align 8, !tbaa !22
  br label %.loopexit97

350:                                              ; preds = %77
  %351 = load i32, ptr %32, align 8, !tbaa !27
  %352 = shl i32 %351, 1
  store i32 %352, ptr %33, align 8, !tbaa !48
  %353 = load ptr, ptr %34, align 8, !tbaa !30
  store ptr %353, ptr %35, align 8, !tbaa !49
  br label %354

354:                                              ; preds = %431, %350
  %355 = phi i32 [ 0, %350 ], [ %416, %431 ]
  %356 = load i32, ptr %30, align 8, !tbaa !34
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %415

358:                                              ; preds = %354
  %359 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %359, label %.loopexit90 [
    i32 0, label %360
    i32 -5, label %360
  ]

360:                                              ; preds = %358, %358
  %361 = load i32, ptr %29, align 8, !tbaa !24
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %411

363:                                              ; preds = %360
  %364 = load i32, ptr %32, align 8, !tbaa !27
  %365 = load ptr, ptr %37, align 8, !tbaa !29
  store i32 0, ptr %38, align 4, !tbaa !17
  %366 = tail call ptr @__errno_location() #17
  store i32 0, ptr %366, align 4, !tbaa !45
  br label %367

367:                                              ; preds = %386, %363
  %368 = phi i32 [ 0, %363 ], [ %387, %386 ]
  %369 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %364, i32 %368), !nosanitize !20
  %370 = extractvalue { i32, i1 } %369, 1, !nosanitize !20
  br i1 %370, label %371, label %372, !prof !21, !nosanitize !20

371:                                              ; preds = %367
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

372:                                              ; preds = %367
  %373 = extractvalue { i32, i1 } %369, 0, !nosanitize !20
  %374 = tail call i32 @llvm.umin.i32(i32 %373, i32 1073741824)
  %375 = load i32, ptr %39, align 4, !tbaa !46
  %376 = zext i32 %368 to i64
  %377 = getelementptr inbounds nuw i8, ptr %365, i64 %376
  %378 = zext nneg i32 %374 to i64
  %379 = tail call i64 @read(i32 noundef %375, ptr noundef %377, i64 noundef %378) #13
  %380 = trunc i64 %379 to i32
  %381 = icmp slt i32 %380, 1
  br i1 %381, label %389, label %382

382:                                              ; preds = %372
  %383 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %368, i32 %380), !nosanitize !20
  %384 = extractvalue { i32, i1 } %383, 1, !nosanitize !20
  br i1 %384, label %385, label %386, !prof !21, !nosanitize !20

385:                                              ; preds = %382
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

386:                                              ; preds = %382
  %387 = extractvalue { i32, i1 } %383, 0, !nosanitize !20
  %388 = icmp ult i32 %387, %364
  br i1 %388, label %367, label %.loopexit84, !llvm.loop !47

389:                                              ; preds = %372
  %390 = icmp slt i32 %380, 0
  br i1 %390, label %391, label %398

391:                                              ; preds = %389
  %392 = load i32, ptr %366, align 4, !tbaa !45
  %393 = icmp eq i32 %392, 11
  br i1 %393, label %394, label %.loopexit92

394:                                              ; preds = %391
  store i32 1, ptr %38, align 4, !tbaa !17
  %395 = icmp eq i32 %368, 0
  br i1 %395, label %396, label %.loopexit84

396:                                              ; preds = %394
  %397 = load i32, ptr %366, align 4, !tbaa !45
  br label %.loopexit92

398:                                              ; preds = %389
  store i32 1, ptr %29, align 8, !tbaa !24
  br label %.loopexit84

.loopexit92:                                      ; preds = %391, %396
  %399 = phi i32 [ %397, %396 ], [ %392, %391 ]
  %400 = tail call ptr @strerror(i32 noundef %399) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %400) #13
  %401 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit90

.loopexit84:                                      ; preds = %386, %398, %394
  %402 = phi i32 [ %368, %398 ], [ %368, %394 ], [ %387, %386 ]
  %403 = load i32, ptr %30, align 8, !tbaa !34
  %404 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %403, i32 %402), !nosanitize !20
  %405 = extractvalue { i32, i1 } %404, 1, !nosanitize !20
  br i1 %405, label %406, label %407, !prof !21, !nosanitize !20

406:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

407:                                              ; preds = %.loopexit84
  %408 = extractvalue { i32, i1 } %404, 0, !nosanitize !20
  store i32 %408, ptr %30, align 8, !tbaa !34
  %409 = load ptr, ptr %37, align 8, !tbaa !29
  store ptr %409, ptr %36, align 8, !tbaa !35
  %410 = icmp eq i32 %408, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %407, %360
  %412 = load i32, ptr %38, align 4, !tbaa !17
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %.loopexit90

414:                                              ; preds = %411
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit90

415:                                              ; preds = %407, %354
  %416 = tail call i32 @inflate(ptr noundef nonnull %36, i32 noundef 0) #13
  %417 = load i32, ptr %33, align 8, !tbaa !48
  %418 = icmp ult i32 %417, %352
  br i1 %418, label %419, label %420

419:                                              ; preds = %415
  store i32 0, ptr %40, align 4, !tbaa !33
  br label %420

420:                                              ; preds = %419, %415
  switch i32 %416, label %431 [
    i32 -2, label %421
    i32 2, label %421
    i32 -4, label %422
    i32 -3, label %423
  ]

421:                                              ; preds = %420, %420
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit90

422:                                              ; preds = %420
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit90

423:                                              ; preds = %420
  %424 = load i32, ptr %40, align 4, !tbaa !33
  %425 = icmp eq i32 %424, 1
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  store i32 0, ptr %30, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !24
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %.loopexit90

427:                                              ; preds = %423
  %428 = load ptr, ptr %41, align 8, !tbaa !50
  %429 = icmp eq ptr %428, null
  %430 = select i1 %429, ptr @.str.6, ptr %428
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %430) #13
  br label %.loopexit90

431:                                              ; preds = %420
  %432 = icmp ne i32 %417, 0
  %433 = icmp ne i32 %416, 1
  %434 = select i1 %432, i1 %433, i1 false
  br i1 %434, label %354, label %.loopexit90, !llvm.loop !51

.loopexit90:                                      ; preds = %431, %358, %427, %426, %422, %421, %414, %411, %.loopexit92
  %435 = phi i32 [ %355, %411 ], [ %355, %414 ], [ %416, %421 ], [ -4, %422 ], [ 0, %426 ], [ -3, %427 ], [ %401, %.loopexit92 ], [ %359, %358 ], [ %416, %431 ]
  %436 = load i32, ptr %33, align 8, !tbaa !48
  %437 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %352, i32 %436), !nosanitize !20
  %438 = extractvalue { i32, i1 } %437, 1, !nosanitize !20
  br i1 %438, label %439, label %440, !prof !21, !nosanitize !20

439:                                              ; preds = %.loopexit90
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

440:                                              ; preds = %.loopexit90
  %441 = extractvalue { i32, i1 } %437, 0, !nosanitize !20
  store i32 %441, ptr %0, align 8, !tbaa !19
  %442 = load ptr, ptr %35, align 8, !tbaa !49
  %443 = zext i32 %441 to i64
  %444 = sub nsw i64 0, %443
  %445 = getelementptr inbounds i8, ptr %442, i64 %444
  store ptr %445, ptr %27, align 8, !tbaa !22
  switch i32 %435, label %.loopexit94 [
    i32 1, label %446
    i32 0, label %448
  ]

446:                                              ; preds = %440
  store i32 0, ptr %40, align 4, !tbaa !33
  store i32 0, ptr %31, align 8, !tbaa !26
  br label %448

447:                                              ; preds = %77
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit94

448:                                              ; preds = %446, %440, %305, %299
  %449 = load i32, ptr %0, align 8, !tbaa !19
  br label %450

450:                                              ; preds = %448, %301
  %451 = phi i32 [ %449, %448 ], [ %304, %301 ]
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %.loopexit97

453:                                              ; preds = %450
  %454 = load i32, ptr %29, align 8, !tbaa !24
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %.backedge, label %456

456:                                              ; preds = %453
  %457 = load i32, ptr %30, align 8, !tbaa !34
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %.loopexit97, label %.backedge

.backedge:                                        ; preds = %456, %453
  br label %77, !llvm.loop !52

.loopexit97:                                      ; preds = %456, %450, %305, %.loopexit93
  %459 = load i64, ptr %23, align 8, !tbaa !18
  br label %460

460:                                              ; preds = %.loopexit97, %69
  %461 = phi i64 [ %459, %.loopexit97 ], [ %70, %69 ]
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %.loopexit98, label %45, !llvm.loop !53

.loopexit98:                                      ; preds = %460, %74, %22
  %463 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %481

481:                                              ; preds = %.loopexit80, %.loopexit98
  %482 = phi ptr [ %1, %.loopexit98 ], [ %1065, %.loopexit80 ]
  %483 = phi i64 [ %20, %.loopexit98 ], [ %1066, %.loopexit80 ]
  %484 = phi i64 [ 0, %.loopexit98 ], [ %1067, %.loopexit80 ]
  %485 = tail call i64 @llvm.umin.i64(i64 %483, i64 4294967295)
  %486 = trunc nuw i64 %485 to i32
  %487 = load i32, ptr %0, align 8, !tbaa !19
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %504, label %489

489:                                              ; preds = %481
  %490 = tail call i32 @llvm.umin.i32(i32 %487, i32 %486)
  %491 = load ptr, ptr %463, align 8, !tbaa !22
  %492 = zext i32 %490 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %482, ptr align 1 %491, i64 %492, i1 false)
  %493 = load ptr, ptr %463, align 8, !tbaa !22
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 %492
  store ptr %494, ptr %463, align 8, !tbaa !22
  %495 = load i32, ptr %0, align 8, !tbaa !19
  %496 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %495, i32 %490), !nosanitize !20
  %497 = extractvalue { i32, i1 } %496, 1, !nosanitize !20
  br i1 %497, label %498, label %499, !prof !21, !nosanitize !20

498:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

499:                                              ; preds = %489
  %500 = extractvalue { i32, i1 } %496, 0, !nosanitize !20
  store i32 %500, ptr %0, align 8, !tbaa !19
  %501 = load i32, ptr %10, align 8, !tbaa !16
  %502 = icmp ne i32 %501, 0
  %503 = sext i1 %502 to i32
  br label %1046

504:                                              ; preds = %481
  %505 = load i32, ptr %464, align 8, !tbaa !24
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %510, label %507

507:                                              ; preds = %504
  %508 = load i32, ptr %465, align 8, !tbaa !25
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %1072, label %510

510:                                              ; preds = %507, %504
  %511 = load i32, ptr %466, align 8, !tbaa !26
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %.preheader799, label %513

513:                                              ; preds = %510
  %514 = load i32, ptr %467, align 8, !tbaa !27
  %515 = shl i32 %514, 1
  %516 = icmp ugt i32 %515, %486
  br i1 %516, label %.preheader799, label %905

.preheader799:                                    ; preds = %513, %510
  br label %517

517:                                              ; preds = %.preheader799, %900
  %518 = phi i32 [ %901, %900 ], [ %511, %.preheader799 ]
  switch i32 %518, label %888 [
    i32 0, label %519
    i32 1, label %748
    i32 2, label %791
  ]

519:                                              ; preds = %517
  %520 = load i32, ptr %467, align 8, !tbaa !27
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %539

522:                                              ; preds = %519
  %523 = load i32, ptr %478, align 4, !tbaa !28
  %524 = zext i32 %523 to i64
  %525 = tail call noalias ptr @malloc(i64 noundef %524) #16
  store ptr %525, ptr %471, align 8, !tbaa !29
  %526 = shl i32 %523, 1
  %527 = zext i32 %526 to i64
  %528 = tail call noalias ptr @malloc(i64 noundef %527) #16
  store ptr %528, ptr %477, align 8, !tbaa !30
  %529 = icmp eq ptr %525, null
  %530 = icmp eq ptr %528, null
  %531 = or i1 %529, %530
  br i1 %531, label %532, label %533

532:                                              ; preds = %522
  tail call void @free(ptr noundef %528) #13
  tail call void @free(ptr noundef %525) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

533:                                              ; preds = %522
  store i32 %523, ptr %467, align 8, !tbaa !27
  store i32 0, ptr %465, align 8, !tbaa !25
  store ptr null, ptr %470, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %479, i8 0, i64 24, i1 false)
  %534 = tail call i32 @inflateInit2_(ptr noundef nonnull %470, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %539, label %536

536:                                              ; preds = %533
  %537 = load ptr, ptr %477, align 8, !tbaa !30
  tail call void @free(ptr noundef %537) #13
  %538 = load ptr, ptr %471, align 8, !tbaa !29
  tail call void @free(ptr noundef %538) #13
  store i32 0, ptr %467, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

539:                                              ; preds = %533, %519
  %540 = load i32, ptr %480, align 8, !tbaa !32
  %541 = icmp eq i32 %540, -1
  br i1 %541, label %545, label %542

542:                                              ; preds = %539
  %543 = load i32, ptr %474, align 4, !tbaa !33
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %550

545:                                              ; preds = %542, %539
  %546 = tail call i32 @inflateReset(ptr noundef nonnull %470) #13
  store i32 2, ptr %466, align 8, !tbaa !26
  %547 = load i32, ptr %474, align 4, !tbaa !33
  %548 = icmp ne i32 %547, -1
  %549 = zext i1 %548 to i32
  store i32 %549, ptr %474, align 4, !tbaa !33
  store i32 0, ptr %480, align 8, !tbaa !32
  br label %745

550:                                              ; preds = %542
  %551 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %551, label %.loopexit78 [
    i32 0, label %552
    i32 -5, label %552
  ]

552:                                              ; preds = %550, %550
  %553 = load i32, ptr %464, align 8, !tbaa !24
  %554 = icmp eq i32 %553, 0
  %555 = load i32, ptr %465, align 8, !tbaa !34
  br i1 %554, label %556, label %713

556:                                              ; preds = %552
  %557 = icmp eq i32 %555, 0
  br i1 %557, label %659, label %558

558:                                              ; preds = %556
  %559 = load ptr, ptr %471, align 8, !tbaa !29
  %560 = load ptr, ptr %470, align 8, !tbaa !35
  %561 = icmp eq ptr %560, %559
  br i1 %561, label %659, label %562

562:                                              ; preds = %558
  %563 = ptrtoint ptr %560 to i64
  %564 = ptrtoint ptr %559 to i64
  %565 = zext i32 %555 to i64
  %566 = icmp ult i32 %555, 4
  %567 = sub i64 %564, %563
  %568 = icmp ult i64 %567, 32
  %569 = or i1 %566, %568
  br i1 %569, label %609, label %570

570:                                              ; preds = %562
  %571 = icmp ult i32 %555, 32
  br i1 %571, label %593, label %572

572:                                              ; preds = %570
  %573 = and i64 %565, 4294967264
  br label %574

574:                                              ; preds = %574, %572
  %575 = phi i64 [ 0, %572 ], [ %582, %574 ]
  %576 = getelementptr i8, ptr %559, i64 %575
  %577 = getelementptr i8, ptr %560, i64 %575
  %578 = getelementptr i8, ptr %577, i64 16
  %579 = load <16 x i8>, ptr %577, align 1, !tbaa !36
  %580 = load <16 x i8>, ptr %578, align 1, !tbaa !36
  %581 = getelementptr i8, ptr %576, i64 16
  store <16 x i8> %579, ptr %576, align 1, !tbaa !36
  store <16 x i8> %580, ptr %581, align 1, !tbaa !36
  %582 = add nuw nsw i64 %575, 32
  %583 = icmp eq i64 %582, %573
  br i1 %583, label %584, label %574, !llvm.loop !54

584:                                              ; preds = %574
  %585 = icmp eq i64 %573, %565
  br i1 %585, label %.loopexit71, label %586

586:                                              ; preds = %584
  %587 = getelementptr i8, ptr %559, i64 %573
  %588 = getelementptr i8, ptr %560, i64 %573
  %589 = trunc nuw i64 %573 to i32
  %590 = sub i32 %555, %589
  %591 = and i64 %565, 28
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %609, label %593

593:                                              ; preds = %586, %570
  %594 = phi i64 [ %573, %586 ], [ 0, %570 ]
  %595 = and i64 %565, 4294967292
  br label %596

596:                                              ; preds = %596, %593
  %597 = phi i64 [ %594, %593 ], [ %601, %596 ]
  %598 = getelementptr i8, ptr %559, i64 %597
  %599 = getelementptr i8, ptr %560, i64 %597
  %600 = load <4 x i8>, ptr %599, align 1, !tbaa !36
  store <4 x i8> %600, ptr %598, align 1, !tbaa !36
  %601 = add nuw i64 %597, 4
  %602 = icmp eq i64 %601, %595
  br i1 %602, label %603, label %596, !llvm.loop !55

603:                                              ; preds = %596
  %604 = getelementptr i8, ptr %559, i64 %595
  %605 = getelementptr i8, ptr %560, i64 %595
  %606 = trunc nuw i64 %595 to i32
  %607 = sub i32 %555, %606
  %608 = icmp eq i64 %595, %565
  br i1 %608, label %.loopexit71, label %609

609:                                              ; preds = %603, %586, %562
  %610 = phi ptr [ %559, %562 ], [ %587, %586 ], [ %604, %603 ]
  %611 = phi ptr [ %560, %562 ], [ %588, %586 ], [ %605, %603 ]
  %612 = phi i32 [ %555, %562 ], [ %590, %586 ], [ %607, %603 ]
  %613 = add i32 %612, -1
  %614 = and i32 %612, 7
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %.loopexit73, label %.preheader72

.preheader72:                                     ; preds = %609, %.preheader72
  %616 = phi ptr [ %620, %.preheader72 ], [ %610, %609 ]
  %617 = phi ptr [ %621, %.preheader72 ], [ %611, %609 ]
  %618 = phi i32 [ %622, %.preheader72 ], [ 0, %609 ]
  %619 = load i8, ptr %617, align 1, !tbaa !36
  store i8 %619, ptr %616, align 1, !tbaa !36
  %620 = getelementptr inbounds nuw i8, ptr %616, i64 1
  %621 = getelementptr inbounds nuw i8, ptr %617, i64 1
  %622 = add nuw nsw i32 %618, 1
  %623 = icmp eq i32 %622, %614
  br i1 %623, label %.loopexit73.loopexit, label %.preheader72, !llvm.loop !56

.loopexit73.loopexit:                             ; preds = %.preheader72
  %624 = and i32 %612, -8
  br label %.loopexit73

.loopexit73:                                      ; preds = %.loopexit73.loopexit, %609
  %625 = phi ptr [ %610, %609 ], [ %620, %.loopexit73.loopexit ]
  %626 = phi ptr [ %611, %609 ], [ %621, %.loopexit73.loopexit ]
  %627 = phi i32 [ %612, %609 ], [ %624, %.loopexit73.loopexit ]
  %628 = icmp ult i32 %613, 7
  br i1 %628, label %.loopexit71, label %.preheader

.preheader:                                       ; preds = %.loopexit73, %.preheader
  %629 = phi ptr [ %655, %.preheader ], [ %625, %.loopexit73 ]
  %630 = phi ptr [ %656, %.preheader ], [ %626, %.loopexit73 ]
  %631 = phi i32 [ %654, %.preheader ], [ %627, %.loopexit73 ]
  %632 = load i8, ptr %630, align 1, !tbaa !36
  store i8 %632, ptr %629, align 1, !tbaa !36
  %633 = getelementptr inbounds nuw i8, ptr %629, i64 1
  %634 = getelementptr inbounds nuw i8, ptr %630, i64 1
  %635 = load i8, ptr %634, align 1, !tbaa !36
  store i8 %635, ptr %633, align 1, !tbaa !36
  %636 = getelementptr inbounds nuw i8, ptr %629, i64 2
  %637 = getelementptr inbounds nuw i8, ptr %630, i64 2
  %638 = load i8, ptr %637, align 1, !tbaa !36
  store i8 %638, ptr %636, align 1, !tbaa !36
  %639 = getelementptr inbounds nuw i8, ptr %629, i64 3
  %640 = getelementptr inbounds nuw i8, ptr %630, i64 3
  %641 = load i8, ptr %640, align 1, !tbaa !36
  store i8 %641, ptr %639, align 1, !tbaa !36
  %642 = getelementptr inbounds nuw i8, ptr %629, i64 4
  %643 = getelementptr inbounds nuw i8, ptr %630, i64 4
  %644 = load i8, ptr %643, align 1, !tbaa !36
  store i8 %644, ptr %642, align 1, !tbaa !36
  %645 = getelementptr inbounds nuw i8, ptr %629, i64 5
  %646 = getelementptr inbounds nuw i8, ptr %630, i64 5
  %647 = load i8, ptr %646, align 1, !tbaa !36
  store i8 %647, ptr %645, align 1, !tbaa !36
  %648 = getelementptr inbounds nuw i8, ptr %629, i64 6
  %649 = getelementptr inbounds nuw i8, ptr %630, i64 6
  %650 = load i8, ptr %649, align 1, !tbaa !36
  store i8 %650, ptr %648, align 1, !tbaa !36
  %651 = getelementptr inbounds nuw i8, ptr %629, i64 7
  %652 = getelementptr inbounds nuw i8, ptr %630, i64 7
  %653 = load i8, ptr %652, align 1, !tbaa !36
  store i8 %653, ptr %651, align 1, !tbaa !36
  %654 = add i32 %631, -8
  %655 = getelementptr inbounds nuw i8, ptr %629, i64 8
  %656 = getelementptr inbounds nuw i8, ptr %630, i64 8
  %657 = icmp eq i32 %654, 0
  br i1 %657, label %.loopexit71, label %.preheader, !llvm.loop !57

.loopexit71:                                      ; preds = %.preheader, %.loopexit73, %603, %584
  %658 = load i32, ptr %465, align 8, !tbaa !34
  br label %659

659:                                              ; preds = %.loopexit71, %558, %556
  %660 = phi i32 [ %658, %.loopexit71 ], [ %555, %558 ], [ 0, %556 ]
  %661 = load i32, ptr %467, align 8, !tbaa !27
  %662 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %661, i32 %660), !nosanitize !20
  %663 = extractvalue { i32, i1 } %662, 1, !nosanitize !20
  br i1 %663, label %664, label %665, !prof !21, !nosanitize !20

664:                                              ; preds = %659
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

665:                                              ; preds = %659
  %666 = extractvalue { i32, i1 } %662, 0, !nosanitize !20
  %667 = load ptr, ptr %471, align 8, !tbaa !29
  %668 = zext i32 %660 to i64
  %669 = getelementptr inbounds nuw i8, ptr %667, i64 %668
  store i32 0, ptr %472, align 4, !tbaa !17
  %670 = tail call ptr @__errno_location() #17
  store i32 0, ptr %670, align 4, !tbaa !45
  br label %671

671:                                              ; preds = %690, %665
  %672 = phi i32 [ 0, %665 ], [ %691, %690 ]
  %673 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %666, i32 %672), !nosanitize !20
  %674 = extractvalue { i32, i1 } %673, 1, !nosanitize !20
  br i1 %674, label %675, label %676, !prof !21, !nosanitize !20

675:                                              ; preds = %671
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

676:                                              ; preds = %671
  %677 = extractvalue { i32, i1 } %673, 0, !nosanitize !20
  %678 = tail call i32 @llvm.umin.i32(i32 %677, i32 1073741824)
  %679 = load i32, ptr %473, align 4, !tbaa !46
  %680 = zext i32 %672 to i64
  %681 = getelementptr inbounds nuw i8, ptr %669, i64 %680
  %682 = zext nneg i32 %678 to i64
  %683 = tail call i64 @read(i32 noundef %679, ptr noundef %681, i64 noundef %682) #13
  %684 = trunc i64 %683 to i32
  %685 = icmp slt i32 %684, 1
  br i1 %685, label %693, label %686

686:                                              ; preds = %676
  %687 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %672, i32 %684), !nosanitize !20
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !20
  br i1 %688, label %689, label %690, !prof !21, !nosanitize !20

689:                                              ; preds = %686
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

690:                                              ; preds = %686
  %691 = extractvalue { i32, i1 } %687, 0, !nosanitize !20
  %692 = icmp ult i32 %691, %666
  br i1 %692, label %671, label %.loopexit70, !llvm.loop !47

693:                                              ; preds = %676
  %694 = icmp slt i32 %684, 0
  br i1 %694, label %695, label %702

695:                                              ; preds = %693
  %696 = load i32, ptr %670, align 4, !tbaa !45
  %697 = icmp eq i32 %696, 11
  br i1 %697, label %698, label %.loopexit79

698:                                              ; preds = %695
  store i32 1, ptr %472, align 4, !tbaa !17
  %699 = icmp eq i32 %672, 0
  br i1 %699, label %700, label %.loopexit70

700:                                              ; preds = %698
  %701 = load i32, ptr %670, align 4, !tbaa !45
  br label %.loopexit79

702:                                              ; preds = %693
  store i32 1, ptr %464, align 8, !tbaa !24
  br label %.loopexit70

.loopexit79:                                      ; preds = %695, %700
  %703 = phi i32 [ %701, %700 ], [ %696, %695 ]
  %704 = tail call ptr @strerror(i32 noundef %703) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %704) #13
  br label %.loopexit78

.loopexit70:                                      ; preds = %690, %702, %698
  %705 = phi i32 [ %672, %702 ], [ %672, %698 ], [ %691, %690 ]
  %706 = load i32, ptr %465, align 8, !tbaa !34
  %707 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %706, i32 %705), !nosanitize !20
  %708 = extractvalue { i32, i1 } %707, 1, !nosanitize !20
  br i1 %708, label %709, label %710, !prof !21, !nosanitize !20

709:                                              ; preds = %.loopexit70
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

710:                                              ; preds = %.loopexit70
  %711 = extractvalue { i32, i1 } %707, 0, !nosanitize !20
  store i32 %711, ptr %465, align 8, !tbaa !34
  %712 = load ptr, ptr %471, align 8, !tbaa !29
  store ptr %712, ptr %470, align 8, !tbaa !35
  br label %713

713:                                              ; preds = %710, %552
  %714 = phi i32 [ %711, %710 ], [ %555, %552 ]
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %745, label %716

716:                                              ; preds = %713
  %717 = load i32, ptr %472, align 4, !tbaa !17
  %718 = icmp ne i32 %717, 0
  %719 = icmp ult i32 %714, 4
  %720 = and i1 %719, %718
  br i1 %720, label %745, label %721

721:                                              ; preds = %716
  %722 = icmp ugt i32 %714, 3
  %723 = load ptr, ptr %470, align 8, !tbaa !35
  br i1 %722, label %724, label %741

724:                                              ; preds = %721
  %725 = load i8, ptr %723, align 1, !tbaa !36
  %726 = icmp eq i8 %725, 31
  br i1 %726, label %727, label %741

727:                                              ; preds = %724
  %728 = getelementptr inbounds nuw i8, ptr %723, i64 1
  %729 = load i8, ptr %728, align 1, !tbaa !36
  %730 = icmp eq i8 %729, -117
  br i1 %730, label %731, label %741

731:                                              ; preds = %727
  %732 = getelementptr inbounds nuw i8, ptr %723, i64 2
  %733 = load i8, ptr %732, align 1, !tbaa !36
  %734 = icmp eq i8 %733, 8
  br i1 %734, label %735, label %741

735:                                              ; preds = %731
  %736 = getelementptr inbounds nuw i8, ptr %723, i64 3
  %737 = load i8, ptr %736, align 1, !tbaa !36
  %738 = icmp ult i8 %737, 32
  br i1 %738, label %739, label %741

739:                                              ; preds = %735
  %740 = tail call i32 @inflateReset(ptr noundef nonnull %470) #13
  store i32 2, ptr %466, align 8, !tbaa !26
  store i32 1, ptr %474, align 4, !tbaa !33
  store i32 0, ptr %480, align 8, !tbaa !32
  br label %889

741:                                              ; preds = %735, %731, %727, %724, %721
  %742 = load ptr, ptr %477, align 8, !tbaa !30
  store ptr %742, ptr %463, align 8, !tbaa !22
  %743 = zext i32 %714 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %742, ptr align 1 %723, i64 %743, i1 false)
  %744 = load i32, ptr %465, align 8, !tbaa !34
  store i32 %744, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %465, align 8, !tbaa !34
  store i32 1, ptr %466, align 8, !tbaa !26
  br label %891

745:                                              ; preds = %716, %713, %545
  %746 = load i32, ptr %466, align 8, !tbaa !26
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %.loopexit80, label %889

748:                                              ; preds = %517
  %749 = load ptr, ptr %477, align 8, !tbaa !30
  %750 = load i32, ptr %467, align 8, !tbaa !27
  %751 = shl i32 %750, 1
  store i32 0, ptr %472, align 4, !tbaa !17
  %752 = tail call ptr @__errno_location() #17
  store i32 0, ptr %752, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %753

753:                                              ; preds = %773, %748
  %754 = phi i32 [ %774, %773 ], [ 0, %748 ]
  %755 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %751, i32 %754), !nosanitize !20
  %756 = extractvalue { i32, i1 } %755, 1, !nosanitize !20
  br i1 %756, label %757, label %758, !prof !21, !nosanitize !20

757:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

758:                                              ; preds = %753
  %759 = extractvalue { i32, i1 } %755, 0, !nosanitize !20
  %760 = tail call i32 @llvm.umin.i32(i32 %759, i32 1073741824)
  %761 = load i32, ptr %473, align 4, !tbaa !46
  %762 = zext i32 %754 to i64
  %763 = getelementptr inbounds nuw i8, ptr %749, i64 %762
  %764 = zext nneg i32 %760 to i64
  %765 = tail call i64 @read(i32 noundef %761, ptr noundef %763, i64 noundef %764) #13
  %766 = trunc i64 %765 to i32
  %767 = icmp slt i32 %766, 1
  br i1 %767, label %776, label %768

768:                                              ; preds = %758
  %769 = load i32, ptr %0, align 4, !tbaa !45
  %770 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %769, i32 %766), !nosanitize !20
  %771 = extractvalue { i32, i1 } %770, 1, !nosanitize !20
  br i1 %771, label %772, label %773, !prof !21, !nosanitize !20

772:                                              ; preds = %768
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

773:                                              ; preds = %768
  %774 = extractvalue { i32, i1 } %770, 0, !nosanitize !20
  store i32 %774, ptr %0, align 4, !tbaa !45
  %775 = icmp ult i32 %774, %751
  br i1 %775, label %753, label %.loopexit77, !llvm.loop !47

776:                                              ; preds = %758
  %777 = icmp slt i32 %766, 0
  br i1 %777, label %778, label %786

778:                                              ; preds = %776
  %779 = load i32, ptr %752, align 4, !tbaa !45
  %780 = icmp eq i32 %779, 11
  br i1 %780, label %781, label %787

781:                                              ; preds = %778
  store i32 1, ptr %472, align 4, !tbaa !17
  %782 = load i32, ptr %0, align 4, !tbaa !45
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %.loopexit77

784:                                              ; preds = %781
  %785 = load i32, ptr %752, align 4, !tbaa !45
  br label %787

786:                                              ; preds = %776
  store i32 1, ptr %464, align 8, !tbaa !24
  br label %.loopexit77

787:                                              ; preds = %784, %778
  %788 = phi i32 [ %785, %784 ], [ %779, %778 ]
  %789 = tail call ptr @strerror(i32 noundef %788) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %789) #13
  br label %.loopexit78

.loopexit77:                                      ; preds = %773, %786, %781
  %790 = load ptr, ptr %477, align 8, !tbaa !30
  store ptr %790, ptr %463, align 8, !tbaa !22
  br label %.loopexit80

791:                                              ; preds = %517
  %792 = load i32, ptr %467, align 8, !tbaa !27
  %793 = shl i32 %792, 1
  store i32 %793, ptr %468, align 8, !tbaa !48
  %794 = load ptr, ptr %477, align 8, !tbaa !30
  store ptr %794, ptr %469, align 8, !tbaa !49
  br label %795

795:                                              ; preds = %872, %791
  %796 = phi i32 [ 0, %791 ], [ %857, %872 ]
  %797 = load i32, ptr %465, align 8, !tbaa !34
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %856

799:                                              ; preds = %795
  %800 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %800, label %.loopexit74 [
    i32 0, label %801
    i32 -5, label %801
  ]

801:                                              ; preds = %799, %799
  %802 = load i32, ptr %464, align 8, !tbaa !24
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %852

804:                                              ; preds = %801
  %805 = load i32, ptr %467, align 8, !tbaa !27
  %806 = load ptr, ptr %471, align 8, !tbaa !29
  store i32 0, ptr %472, align 4, !tbaa !17
  %807 = tail call ptr @__errno_location() #17
  store i32 0, ptr %807, align 4, !tbaa !45
  br label %808

808:                                              ; preds = %827, %804
  %809 = phi i32 [ 0, %804 ], [ %828, %827 ]
  %810 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %805, i32 %809), !nosanitize !20
  %811 = extractvalue { i32, i1 } %810, 1, !nosanitize !20
  br i1 %811, label %812, label %813, !prof !21, !nosanitize !20

812:                                              ; preds = %808
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

813:                                              ; preds = %808
  %814 = extractvalue { i32, i1 } %810, 0, !nosanitize !20
  %815 = tail call i32 @llvm.umin.i32(i32 %814, i32 1073741824)
  %816 = load i32, ptr %473, align 4, !tbaa !46
  %817 = zext i32 %809 to i64
  %818 = getelementptr inbounds nuw i8, ptr %806, i64 %817
  %819 = zext nneg i32 %815 to i64
  %820 = tail call i64 @read(i32 noundef %816, ptr noundef %818, i64 noundef %819) #13
  %821 = trunc i64 %820 to i32
  %822 = icmp slt i32 %821, 1
  br i1 %822, label %830, label %823

823:                                              ; preds = %813
  %824 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %809, i32 %821), !nosanitize !20
  %825 = extractvalue { i32, i1 } %824, 1, !nosanitize !20
  br i1 %825, label %826, label %827, !prof !21, !nosanitize !20

826:                                              ; preds = %823
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

827:                                              ; preds = %823
  %828 = extractvalue { i32, i1 } %824, 0, !nosanitize !20
  %829 = icmp ult i32 %828, %805
  br i1 %829, label %808, label %.loopexit, !llvm.loop !47

830:                                              ; preds = %813
  %831 = icmp slt i32 %821, 0
  br i1 %831, label %832, label %839

832:                                              ; preds = %830
  %833 = load i32, ptr %807, align 4, !tbaa !45
  %834 = icmp eq i32 %833, 11
  br i1 %834, label %835, label %.loopexit75

835:                                              ; preds = %832
  store i32 1, ptr %472, align 4, !tbaa !17
  %836 = icmp eq i32 %809, 0
  br i1 %836, label %837, label %.loopexit

837:                                              ; preds = %835
  %838 = load i32, ptr %807, align 4, !tbaa !45
  br label %.loopexit75

839:                                              ; preds = %830
  store i32 1, ptr %464, align 8, !tbaa !24
  br label %.loopexit

.loopexit75:                                      ; preds = %832, %837
  %840 = phi i32 [ %838, %837 ], [ %833, %832 ]
  %841 = tail call ptr @strerror(i32 noundef %840) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %841) #13
  %842 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit74

.loopexit:                                        ; preds = %827, %839, %835
  %843 = phi i32 [ %809, %839 ], [ %809, %835 ], [ %828, %827 ]
  %844 = load i32, ptr %465, align 8, !tbaa !34
  %845 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %844, i32 %843), !nosanitize !20
  %846 = extractvalue { i32, i1 } %845, 1, !nosanitize !20
  br i1 %846, label %847, label %848, !prof !21, !nosanitize !20

847:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

848:                                              ; preds = %.loopexit
  %849 = extractvalue { i32, i1 } %845, 0, !nosanitize !20
  store i32 %849, ptr %465, align 8, !tbaa !34
  %850 = load ptr, ptr %471, align 8, !tbaa !29
  store ptr %850, ptr %470, align 8, !tbaa !35
  %851 = icmp eq i32 %849, 0
  br i1 %851, label %852, label %856

852:                                              ; preds = %848, %801
  %853 = load i32, ptr %472, align 4, !tbaa !17
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %.loopexit74

855:                                              ; preds = %852
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit74

856:                                              ; preds = %848, %795
  %857 = tail call i32 @inflate(ptr noundef nonnull %470, i32 noundef 0) #13
  %858 = load i32, ptr %468, align 8, !tbaa !48
  %859 = icmp ult i32 %858, %793
  br i1 %859, label %860, label %861

860:                                              ; preds = %856
  store i32 0, ptr %474, align 4, !tbaa !33
  br label %861

861:                                              ; preds = %860, %856
  switch i32 %857, label %872 [
    i32 -2, label %862
    i32 2, label %862
    i32 -4, label %863
    i32 -3, label %864
  ]

862:                                              ; preds = %861, %861
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit74

863:                                              ; preds = %861
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit74

864:                                              ; preds = %861
  %865 = load i32, ptr %474, align 4, !tbaa !33
  %866 = icmp eq i32 %865, 1
  br i1 %866, label %867, label %868

867:                                              ; preds = %864
  store i32 0, ptr %465, align 8, !tbaa !34
  store i32 1, ptr %464, align 8, !tbaa !24
  store i32 0, ptr %466, align 8, !tbaa !26
  br label %.loopexit74

868:                                              ; preds = %864
  %869 = load ptr, ptr %475, align 8, !tbaa !50
  %870 = icmp eq ptr %869, null
  %871 = select i1 %870, ptr @.str.6, ptr %869
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %871) #13
  br label %.loopexit74

872:                                              ; preds = %861
  %873 = icmp ne i32 %858, 0
  %874 = icmp ne i32 %857, 1
  %875 = select i1 %873, i1 %874, i1 false
  br i1 %875, label %795, label %.loopexit74, !llvm.loop !51

.loopexit74:                                      ; preds = %872, %799, %868, %867, %863, %862, %855, %852, %.loopexit75
  %876 = phi i32 [ %796, %852 ], [ %796, %855 ], [ %857, %862 ], [ -4, %863 ], [ 0, %867 ], [ -3, %868 ], [ %842, %.loopexit75 ], [ %857, %872 ], [ %800, %799 ]
  %877 = load i32, ptr %468, align 8, !tbaa !48
  %878 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %793, i32 %877), !nosanitize !20
  %879 = extractvalue { i32, i1 } %878, 1, !nosanitize !20
  br i1 %879, label %880, label %881, !prof !21, !nosanitize !20

880:                                              ; preds = %.loopexit74
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

881:                                              ; preds = %.loopexit74
  %882 = extractvalue { i32, i1 } %878, 0, !nosanitize !20
  store i32 %882, ptr %0, align 8, !tbaa !19
  %883 = load ptr, ptr %469, align 8, !tbaa !49
  %884 = zext i32 %882 to i64
  %885 = sub nsw i64 0, %884
  %886 = getelementptr inbounds i8, ptr %883, i64 %885
  store ptr %886, ptr %463, align 8, !tbaa !22
  switch i32 %876, label %.loopexit78 [
    i32 1, label %887
    i32 0, label %889
  ]

887:                                              ; preds = %881
  store i32 0, ptr %474, align 4, !tbaa !33
  store i32 0, ptr %466, align 8, !tbaa !26
  br label %889

888:                                              ; preds = %517
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit78

889:                                              ; preds = %887, %881, %745, %739
  %890 = load i32, ptr %0, align 8, !tbaa !19
  br label %891

891:                                              ; preds = %889, %741
  %892 = phi i32 [ %890, %889 ], [ %744, %741 ]
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %894, label %.loopexit80

894:                                              ; preds = %891
  %895 = load i32, ptr %464, align 8, !tbaa !24
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %900, label %897

897:                                              ; preds = %894
  %898 = load i32, ptr %465, align 8, !tbaa !34
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %.loopexit80, label %900

900:                                              ; preds = %897, %894
  %901 = load i32, ptr %466, align 8, !tbaa !26
  br label %517, !llvm.loop !52

.loopexit78:                                      ; preds = %881, %550, %888, %787, %.loopexit79, %536, %532
  %902 = load i32, ptr %0, align 8, !tbaa !19
  %903 = icmp eq i32 %902, 0
  %904 = sext i1 %903 to i32
  br label %.loopexit80

905:                                              ; preds = %513
  %906 = icmp eq i32 %511, 1
  br i1 %906, label %907, label %944

907:                                              ; preds = %905
  store i32 0, ptr %472, align 4, !tbaa !17
  %908 = tail call ptr @__errno_location() #17
  store i32 0, ptr %908, align 4, !tbaa !45
  br label %909

909:                                              ; preds = %928, %907
  %910 = phi i32 [ 0, %907 ], [ %929, %928 ]
  %911 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %486, i32 %910), !nosanitize !20
  %912 = extractvalue { i32, i1 } %911, 1, !nosanitize !20
  br i1 %912, label %913, label %914, !prof !21, !nosanitize !20

913:                                              ; preds = %909
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

914:                                              ; preds = %909
  %915 = extractvalue { i32, i1 } %911, 0, !nosanitize !20
  %916 = tail call i32 @llvm.umin.i32(i32 %915, i32 1073741824)
  %917 = load i32, ptr %473, align 4, !tbaa !46
  %918 = zext i32 %910 to i64
  %919 = getelementptr inbounds nuw i8, ptr %482, i64 %918
  %920 = zext nneg i32 %916 to i64
  %921 = tail call i64 @read(i32 noundef %917, ptr noundef %919, i64 noundef %920) #13
  %922 = trunc i64 %921 to i32
  %923 = icmp slt i32 %922, 1
  br i1 %923, label %931, label %924

924:                                              ; preds = %914
  %925 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %910, i32 %922), !nosanitize !20
  %926 = extractvalue { i32, i1 } %925, 1, !nosanitize !20
  br i1 %926, label %927, label %928, !prof !21, !nosanitize !20

927:                                              ; preds = %924
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

928:                                              ; preds = %924
  %929 = extractvalue { i32, i1 } %925, 0, !nosanitize !20
  %930 = icmp ult i32 %929, %486
  br i1 %930, label %909, label %1044, !llvm.loop !47

931:                                              ; preds = %914
  %932 = icmp slt i32 %922, 0
  br i1 %932, label %933, label %943

933:                                              ; preds = %931
  %934 = load i32, ptr %908, align 4, !tbaa !45
  %935 = icmp eq i32 %934, 11
  br i1 %935, label %936, label %940

936:                                              ; preds = %933
  store i32 1, ptr %472, align 4, !tbaa !17
  %937 = icmp eq i32 %910, 0
  br i1 %937, label %938, label %1046

938:                                              ; preds = %936
  %939 = load i32, ptr %908, align 4, !tbaa !45
  br label %940

940:                                              ; preds = %938, %933
  %941 = phi i32 [ %939, %938 ], [ %934, %933 ]
  %942 = tail call ptr @strerror(i32 noundef %941) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %942) #13
  br label %1046

943:                                              ; preds = %931
  store i32 1, ptr %464, align 8, !tbaa !24
  br label %1046

944:                                              ; preds = %905
  store i32 %486, ptr %468, align 8, !tbaa !58
  store ptr %482, ptr %469, align 8, !tbaa !59
  br label %945

945:                                              ; preds = %1022, %944
  %946 = phi i32 [ 0, %944 ], [ %1007, %1022 ]
  %947 = load i32, ptr %465, align 8, !tbaa !34
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %949, label %1006

949:                                              ; preds = %945
  %950 = load i32, ptr %10, align 8, !tbaa !16
  switch i32 %950, label %.loopexit81 [
    i32 0, label %951
    i32 -5, label %951
  ]

951:                                              ; preds = %949, %949
  %952 = load i32, ptr %464, align 8, !tbaa !24
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %1002

954:                                              ; preds = %951
  %955 = load i32, ptr %467, align 8, !tbaa !27
  %956 = load ptr, ptr %471, align 8, !tbaa !29
  store i32 0, ptr %472, align 4, !tbaa !17
  %957 = tail call ptr @__errno_location() #17
  store i32 0, ptr %957, align 4, !tbaa !45
  br label %958

958:                                              ; preds = %977, %954
  %959 = phi i32 [ 0, %954 ], [ %978, %977 ]
  %960 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %955, i32 %959), !nosanitize !20
  %961 = extractvalue { i32, i1 } %960, 1, !nosanitize !20
  br i1 %961, label %962, label %963, !prof !21, !nosanitize !20

962:                                              ; preds = %958
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

963:                                              ; preds = %958
  %964 = extractvalue { i32, i1 } %960, 0, !nosanitize !20
  %965 = tail call i32 @llvm.umin.i32(i32 %964, i32 1073741824)
  %966 = load i32, ptr %473, align 4, !tbaa !46
  %967 = zext i32 %959 to i64
  %968 = getelementptr inbounds nuw i8, ptr %956, i64 %967
  %969 = zext nneg i32 %965 to i64
  %970 = tail call i64 @read(i32 noundef %966, ptr noundef %968, i64 noundef %969) #13
  %971 = trunc i64 %970 to i32
  %972 = icmp slt i32 %971, 1
  br i1 %972, label %980, label %973

973:                                              ; preds = %963
  %974 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %959, i32 %971), !nosanitize !20
  %975 = extractvalue { i32, i1 } %974, 1, !nosanitize !20
  br i1 %975, label %976, label %977, !prof !21, !nosanitize !20

976:                                              ; preds = %973
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

977:                                              ; preds = %973
  %978 = extractvalue { i32, i1 } %974, 0, !nosanitize !20
  %979 = icmp ult i32 %978, %955
  br i1 %979, label %958, label %.loopexit76, !llvm.loop !47

980:                                              ; preds = %963
  %981 = icmp slt i32 %971, 0
  br i1 %981, label %982, label %989

982:                                              ; preds = %980
  %983 = load i32, ptr %957, align 4, !tbaa !45
  %984 = icmp eq i32 %983, 11
  br i1 %984, label %985, label %.loopexit83

985:                                              ; preds = %982
  store i32 1, ptr %472, align 4, !tbaa !17
  %986 = icmp eq i32 %959, 0
  br i1 %986, label %987, label %.loopexit76

987:                                              ; preds = %985
  %988 = load i32, ptr %957, align 4, !tbaa !45
  br label %.loopexit83

989:                                              ; preds = %980
  store i32 1, ptr %464, align 8, !tbaa !24
  br label %.loopexit76

.loopexit83:                                      ; preds = %982, %987
  %990 = phi i32 [ %988, %987 ], [ %983, %982 ]
  %991 = tail call ptr @strerror(i32 noundef %990) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %991) #13
  %992 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit81

.loopexit76:                                      ; preds = %977, %989, %985
  %993 = phi i32 [ %959, %989 ], [ %959, %985 ], [ %978, %977 ]
  %994 = load i32, ptr %465, align 8, !tbaa !34
  %995 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %994, i32 %993), !nosanitize !20
  %996 = extractvalue { i32, i1 } %995, 1, !nosanitize !20
  br i1 %996, label %997, label %998, !prof !21, !nosanitize !20

997:                                              ; preds = %.loopexit76
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

998:                                              ; preds = %.loopexit76
  %999 = extractvalue { i32, i1 } %995, 0, !nosanitize !20
  store i32 %999, ptr %465, align 8, !tbaa !34
  %1000 = load ptr, ptr %471, align 8, !tbaa !29
  store ptr %1000, ptr %470, align 8, !tbaa !35
  %1001 = icmp eq i32 %999, 0
  br i1 %1001, label %1002, label %1006

1002:                                             ; preds = %998, %951
  %1003 = load i32, ptr %472, align 4, !tbaa !17
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1005, label %.loopexit81

1005:                                             ; preds = %1002
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit81

1006:                                             ; preds = %998, %945
  %1007 = tail call i32 @inflate(ptr noundef nonnull %470, i32 noundef 0) #13
  %1008 = load i32, ptr %468, align 8, !tbaa !48
  %1009 = icmp ult i32 %1008, %486
  br i1 %1009, label %1010, label %1011

1010:                                             ; preds = %1006
  store i32 0, ptr %474, align 4, !tbaa !33
  br label %1011

1011:                                             ; preds = %1010, %1006
  switch i32 %1007, label %1022 [
    i32 -2, label %1012
    i32 2, label %1012
    i32 -4, label %1013
    i32 -3, label %1014
  ]

1012:                                             ; preds = %1011, %1011
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit81

1013:                                             ; preds = %1011
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit81

1014:                                             ; preds = %1011
  %1015 = load i32, ptr %474, align 4, !tbaa !33
  %1016 = icmp eq i32 %1015, 1
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1014
  store i32 0, ptr %465, align 8, !tbaa !34
  store i32 1, ptr %464, align 8, !tbaa !24
  store i32 0, ptr %466, align 8, !tbaa !26
  br label %.loopexit81

1018:                                             ; preds = %1014
  %1019 = load ptr, ptr %475, align 8, !tbaa !50
  %1020 = icmp eq ptr %1019, null
  %1021 = select i1 %1020, ptr @.str.6, ptr %1019
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1021) #13
  br label %.loopexit81

1022:                                             ; preds = %1011
  %1023 = icmp ne i32 %1008, 0
  %1024 = icmp ne i32 %1007, 1
  %1025 = select i1 %1023, i1 %1024, i1 false
  br i1 %1025, label %945, label %.loopexit81, !llvm.loop !51

.loopexit81:                                      ; preds = %1022, %949, %1018, %1017, %1013, %1012, %1005, %1002, %.loopexit83
  %1026 = phi i32 [ %946, %1002 ], [ %946, %1005 ], [ %1007, %1012 ], [ -4, %1013 ], [ 0, %1017 ], [ -3, %1018 ], [ %992, %.loopexit83 ], [ %950, %949 ], [ %1007, %1022 ]
  %1027 = load i32, ptr %468, align 8, !tbaa !48
  %1028 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %486, i32 %1027), !nosanitize !20
  %1029 = extractvalue { i32, i1 } %1028, 1, !nosanitize !20
  br i1 %1029, label %1030, label %1031, !prof !21, !nosanitize !20

1030:                                             ; preds = %.loopexit81
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1031:                                             ; preds = %.loopexit81
  %1032 = extractvalue { i32, i1 } %1028, 0, !nosanitize !20
  %1033 = load ptr, ptr %469, align 8, !tbaa !49
  %1034 = zext i32 %1032 to i64
  %1035 = sub nsw i64 0, %1034
  %1036 = getelementptr inbounds i8, ptr %1033, i64 %1035
  store ptr %1036, ptr %463, align 8, !tbaa !22
  %1037 = icmp eq i32 %1026, 1
  br i1 %1037, label %1038, label %1039

1038:                                             ; preds = %1031
  store i32 0, ptr %474, align 4, !tbaa !33
  store i32 0, ptr %466, align 8, !tbaa !26
  br label %1042

1039:                                             ; preds = %1031
  %1040 = icmp ne i32 %1026, 0
  %1041 = sext i1 %1040 to i32
  br label %1042

1042:                                             ; preds = %1039, %1038
  %1043 = phi i32 [ 0, %1038 ], [ %1041, %1039 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1046

1044:                                             ; preds = %928
  %1045 = zext i32 %929 to i64
  br label %1046

1046:                                             ; preds = %1044, %1042, %943, %940, %936, %499
  %1047 = phi i64 [ %1045, %1044 ], [ %918, %943 ], [ %918, %940 ], [ %918, %936 ], [ %492, %499 ], [ %1034, %1042 ]
  %1048 = phi i32 [ 0, %1044 ], [ 0, %943 ], [ -1, %940 ], [ 0, %936 ], [ %503, %499 ], [ %1043, %1042 ]
  %1049 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %483, i64 %1047), !nosanitize !20
  %1050 = extractvalue { i64, i1 } %1049, 0, !nosanitize !20
  %1051 = extractvalue { i64, i1 } %1049, 1, !nosanitize !20
  br i1 %1051, label %1052, label %1053, !prof !21, !nosanitize !20

1052:                                             ; preds = %1046
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1053:                                             ; preds = %1046
  %1054 = getelementptr inbounds nuw i8, ptr %482, i64 %1047
  %1055 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %484, i64 %1047), !nosanitize !20
  %1056 = extractvalue { i64, i1 } %1055, 0, !nosanitize !20
  %1057 = extractvalue { i64, i1 } %1055, 1, !nosanitize !20
  br i1 %1057, label %1058, label %1059, !prof !21, !nosanitize !20

1058:                                             ; preds = %1059, %1053
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1059:                                             ; preds = %1053
  %1060 = load i64, ptr %476, align 8, !tbaa !23
  %1061 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1060, i64 %1047), !nosanitize !20
  %1062 = extractvalue { i64, i1 } %1061, 1, !nosanitize !20
  br i1 %1062, label %1058, label %1063, !prof !21, !nosanitize !20

1063:                                             ; preds = %1059
  %1064 = extractvalue { i64, i1 } %1061, 0, !nosanitize !20
  store i64 %1064, ptr %476, align 8, !tbaa !23
  br label %.loopexit80

.loopexit80:                                      ; preds = %897, %891, %745, %1063, %.loopexit78, %.loopexit77
  %1065 = phi ptr [ %1054, %1063 ], [ %482, %.loopexit78 ], [ %482, %.loopexit77 ], [ %482, %745 ], [ %482, %891 ], [ %482, %897 ]
  %1066 = phi i64 [ %1050, %1063 ], [ %483, %.loopexit78 ], [ %483, %.loopexit77 ], [ %483, %745 ], [ %483, %891 ], [ %483, %897 ]
  %1067 = phi i64 [ %1056, %1063 ], [ %484, %.loopexit78 ], [ %484, %.loopexit77 ], [ %484, %745 ], [ %484, %891 ], [ %484, %897 ]
  %1068 = phi i32 [ %1048, %1063 ], [ %904, %.loopexit78 ], [ 0, %.loopexit77 ], [ 0, %745 ], [ 0, %891 ], [ 0, %897 ]
  %1069 = icmp ne i64 %1066, 0
  %1070 = icmp eq i32 %1068, 0
  %1071 = select i1 %1069, i1 %1070, i1 false
  br i1 %1071, label %481, label %1072, !llvm.loop !60

1072:                                             ; preds = %.loopexit80, %507
  %1073 = phi i64 [ %1066, %.loopexit80 ], [ %483, %507 ]
  %1074 = phi i64 [ %1067, %.loopexit80 ], [ %484, %507 ]
  %1075 = icmp eq i64 %1073, 0
  br i1 %1075, label %1081, label %1076

1076:                                             ; preds = %1072
  %1077 = load i32, ptr %464, align 8, !tbaa !24
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1081, label %1079

1079:                                             ; preds = %1076
  %1080 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1080, align 4, !tbaa !61
  br label %1081

1081:                                             ; preds = %1079, %1076, %1072
  %1082 = trunc i64 %1074 to i32
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %.loopexit94, label %1094

.loopexit94:                                      ; preds = %440, %1081, %447, %.loopexit99, %.loopexit96, %96, %92, %19
  %1084 = load i32, ptr %10, align 8, !tbaa !16
  br label %.loopexit95

.loopexit95:                                      ; preds = %110, %.loopexit94
  %1085 = phi i32 [ %1084, %.loopexit94 ], [ %111, %110 ]
  switch i32 %1085, label %1094 [
    i32 0, label %1086
    i32 -5, label %1086
  ]

1086:                                             ; preds = %.loopexit95, %.loopexit95
  %1087 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %1088 = load i32, ptr %1087, align 4, !tbaa !17
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1094, label %1090

1090:                                             ; preds = %1086
  %1091 = tail call ptr @__errno_location() #17
  %1092 = load i32, ptr %1091, align 4, !tbaa !45
  %1093 = tail call ptr @strerror(i32 noundef %1092) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1093) #13
  br label %1094

1094:                                             ; preds = %1090, %1086, %.loopexit95, %1081, %18, %12, %5, %3
  %1095 = phi i32 [ -1, %18 ], [ -1, %1090 ], [ -1, %3 ], [ -1, %5 ], [ -1, %12 ], [ -1, %.loopexit95 ], [ 0, %1086 ], [ %1082, %1081 ]
  ret i32 %1095
}

declare void @gz_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @gzfread(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %1091, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 7247
  br i1 %9, label %10, label %1091

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
  br i1 %16, label %1091, label %17

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
  br label %1091

28:                                               ; preds = %24, %22
  %29 = icmp eq i64 %19, 0
  br i1 %29, label %1091, label %30

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

53:                                               ; preds = %468, %34
  %54 = phi i64 [ %469, %468 ], [ %32, %34 ]
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
  br label %468

79:                                               ; preds = %53
  %80 = load i32, ptr %37, align 8, !tbaa !24
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %.preheader862, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %38, align 8, !tbaa !25
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %.loopexit97, label %.preheader862

.preheader862:                                    ; preds = %82, %79
  br label %85

85:                                               ; preds = %.backedge, %.preheader862
  %86 = load i32, ptr %39, align 8, !tbaa !26
  switch i32 %86, label %455 [
    i32 0, label %87
    i32 1, label %316
    i32 2, label %358
  ]

87:                                               ; preds = %85
  %88 = load i32, ptr %40, align 8, !tbaa !27
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load i32, ptr %50, align 4, !tbaa !28
  %92 = zext i32 %91 to i64
  %93 = tail call noalias ptr @malloc(i64 noundef %92) #16
  store ptr %93, ptr %45, align 8, !tbaa !29
  %94 = shl i32 %91, 1
  %95 = zext i32 %94 to i64
  %96 = tail call noalias ptr @malloc(i64 noundef %95) #16
  store ptr %96, ptr %42, align 8, !tbaa !30
  %97 = icmp eq ptr %93, null
  %98 = icmp eq ptr %96, null
  %99 = or i1 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  tail call void @free(ptr noundef %96) #13
  tail call void @free(ptr noundef %93) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

101:                                              ; preds = %90
  store i32 %91, ptr %40, align 8, !tbaa !27
  store i32 0, ptr %38, align 8, !tbaa !25
  store ptr null, ptr %44, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %102 = tail call i32 @inflateInit2_(ptr noundef nonnull %44, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %42, align 8, !tbaa !30
  tail call void @free(ptr noundef %105) #13
  %106 = load ptr, ptr %45, align 8, !tbaa !29
  tail call void @free(ptr noundef %106) #13
  store i32 0, ptr %40, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit94

107:                                              ; preds = %101, %87
  %108 = load i32, ptr %52, align 8, !tbaa !32
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %48, align 4, !tbaa !33
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110, %107
  %114 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  %115 = load i32, ptr %48, align 4, !tbaa !33
  %116 = icmp ne i32 %115, -1
  %117 = zext i1 %116 to i32
  store i32 %117, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %313

118:                                              ; preds = %110
  %119 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %119, label %.loopexit94 [
    i32 0, label %120
    i32 -5, label %120
  ]

120:                                              ; preds = %118, %118
  %121 = load i32, ptr %37, align 8, !tbaa !24
  %122 = icmp eq i32 %121, 0
  %123 = load i32, ptr %38, align 8, !tbaa !34
  br i1 %122, label %124, label %281

124:                                              ; preds = %120
  %125 = icmp eq i32 %123, 0
  br i1 %125, label %227, label %126

126:                                              ; preds = %124
  %127 = load ptr, ptr %45, align 8, !tbaa !29
  %128 = load ptr, ptr %44, align 8, !tbaa !35
  %129 = icmp eq ptr %128, %127
  br i1 %129, label %227, label %130

130:                                              ; preds = %126
  %131 = ptrtoint ptr %128 to i64
  %132 = ptrtoint ptr %127 to i64
  %133 = zext i32 %123 to i64
  %134 = icmp ult i32 %123, 4
  %135 = sub i64 %132, %131
  %136 = icmp ult i64 %135, 32
  %137 = or i1 %134, %136
  br i1 %137, label %177, label %138

138:                                              ; preds = %130
  %139 = icmp ult i32 %123, 32
  br i1 %139, label %161, label %140

140:                                              ; preds = %138
  %141 = and i64 %133, 4294967264
  br label %142

142:                                              ; preds = %142, %140
  %143 = phi i64 [ 0, %140 ], [ %150, %142 ]
  %144 = getelementptr i8, ptr %127, i64 %143
  %145 = getelementptr i8, ptr %128, i64 %143
  %146 = getelementptr i8, ptr %145, i64 16
  %147 = load <16 x i8>, ptr %145, align 1, !tbaa !36
  %148 = load <16 x i8>, ptr %146, align 1, !tbaa !36
  %149 = getelementptr i8, ptr %144, i64 16
  store <16 x i8> %147, ptr %144, align 1, !tbaa !36
  store <16 x i8> %148, ptr %149, align 1, !tbaa !36
  %150 = add nuw nsw i64 %143, 32
  %151 = icmp eq i64 %150, %141
  br i1 %151, label %152, label %142, !llvm.loop !62

152:                                              ; preds = %142
  %153 = icmp eq i64 %141, %133
  br i1 %153, label %.loopexit87, label %154

154:                                              ; preds = %152
  %155 = getelementptr i8, ptr %127, i64 %141
  %156 = getelementptr i8, ptr %128, i64 %141
  %157 = trunc nuw i64 %141 to i32
  %158 = sub i32 %123, %157
  %159 = and i64 %133, 28
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %177, label %161

161:                                              ; preds = %154, %138
  %162 = phi i64 [ %141, %154 ], [ 0, %138 ]
  %163 = and i64 %133, 4294967292
  br label %164

164:                                              ; preds = %164, %161
  %165 = phi i64 [ %162, %161 ], [ %169, %164 ]
  %166 = getelementptr i8, ptr %127, i64 %165
  %167 = getelementptr i8, ptr %128, i64 %165
  %168 = load <4 x i8>, ptr %167, align 1, !tbaa !36
  store <4 x i8> %168, ptr %166, align 1, !tbaa !36
  %169 = add nuw i64 %165, 4
  %170 = icmp eq i64 %169, %163
  br i1 %170, label %171, label %164, !llvm.loop !63

171:                                              ; preds = %164
  %172 = getelementptr i8, ptr %127, i64 %163
  %173 = getelementptr i8, ptr %128, i64 %163
  %174 = trunc nuw i64 %163 to i32
  %175 = sub i32 %123, %174
  %176 = icmp eq i64 %163, %133
  br i1 %176, label %.loopexit87, label %177

177:                                              ; preds = %171, %154, %130
  %178 = phi ptr [ %127, %130 ], [ %155, %154 ], [ %172, %171 ]
  %179 = phi ptr [ %128, %130 ], [ %156, %154 ], [ %173, %171 ]
  %180 = phi i32 [ %123, %130 ], [ %158, %154 ], [ %175, %171 ]
  %181 = add i32 %180, -1
  %182 = and i32 %180, 7
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %177, %.preheader88
  %184 = phi ptr [ %188, %.preheader88 ], [ %178, %177 ]
  %185 = phi ptr [ %189, %.preheader88 ], [ %179, %177 ]
  %186 = phi i32 [ %190, %.preheader88 ], [ 0, %177 ]
  %187 = load i8, ptr %185, align 1, !tbaa !36
  store i8 %187, ptr %184, align 1, !tbaa !36
  %188 = getelementptr inbounds nuw i8, ptr %184, i64 1
  %189 = getelementptr inbounds nuw i8, ptr %185, i64 1
  %190 = add nuw nsw i32 %186, 1
  %191 = icmp eq i32 %190, %182
  br i1 %191, label %.loopexit89.loopexit, label %.preheader88, !llvm.loop !64

.loopexit89.loopexit:                             ; preds = %.preheader88
  %192 = and i32 %180, -8
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %177
  %193 = phi ptr [ %178, %177 ], [ %188, %.loopexit89.loopexit ]
  %194 = phi ptr [ %179, %177 ], [ %189, %.loopexit89.loopexit ]
  %195 = phi i32 [ %180, %177 ], [ %192, %.loopexit89.loopexit ]
  %196 = icmp ult i32 %181, 7
  br i1 %196, label %.loopexit87, label %.preheader86

.preheader86:                                     ; preds = %.loopexit89, %.preheader86
  %197 = phi ptr [ %223, %.preheader86 ], [ %193, %.loopexit89 ]
  %198 = phi ptr [ %224, %.preheader86 ], [ %194, %.loopexit89 ]
  %199 = phi i32 [ %222, %.preheader86 ], [ %195, %.loopexit89 ]
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
  br i1 %225, label %.loopexit87, label %.preheader86, !llvm.loop !65

.loopexit87:                                      ; preds = %.preheader86, %.loopexit89, %171, %152
  %226 = load i32, ptr %38, align 8, !tbaa !34
  br label %227

227:                                              ; preds = %.loopexit87, %126, %124
  %228 = phi i32 [ %226, %.loopexit87 ], [ %123, %126 ], [ 0, %124 ]
  %229 = load i32, ptr %40, align 8, !tbaa !27
  %230 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %229, i32 %228), !nosanitize !20
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !20
  br i1 %231, label %232, label %233, !prof !21, !nosanitize !20

232:                                              ; preds = %227
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

233:                                              ; preds = %227
  %234 = extractvalue { i32, i1 } %230, 0, !nosanitize !20
  %235 = load ptr, ptr %45, align 8, !tbaa !29
  %236 = zext i32 %228 to i64
  %237 = getelementptr inbounds nuw i8, ptr %235, i64 %236
  store i32 0, ptr %46, align 4, !tbaa !17
  %238 = tail call ptr @__errno_location() #17
  store i32 0, ptr %238, align 4, !tbaa !45
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
  %247 = load i32, ptr %47, align 4, !tbaa !46
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
  br i1 %260, label %239, label %.loopexit85, !llvm.loop !47

261:                                              ; preds = %244
  %262 = icmp slt i32 %252, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %261
  %264 = load i32, ptr %238, align 4, !tbaa !45
  %265 = icmp eq i32 %264, 11
  br i1 %265, label %266, label %.loopexit95

266:                                              ; preds = %263
  store i32 1, ptr %46, align 4, !tbaa !17
  %267 = icmp eq i32 %240, 0
  br i1 %267, label %268, label %.loopexit85

268:                                              ; preds = %266
  %269 = load i32, ptr %238, align 4, !tbaa !45
  br label %.loopexit95

270:                                              ; preds = %261
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit85

.loopexit95:                                      ; preds = %263, %268
  %271 = phi i32 [ %269, %268 ], [ %264, %263 ]
  %272 = tail call ptr @strerror(i32 noundef %271) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %272) #13
  br label %.loopexit94

.loopexit85:                                      ; preds = %258, %270, %266
  %273 = phi i32 [ %240, %270 ], [ %240, %266 ], [ %259, %258 ]
  %274 = load i32, ptr %38, align 8, !tbaa !34
  %275 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %274, i32 %273), !nosanitize !20
  %276 = extractvalue { i32, i1 } %275, 1, !nosanitize !20
  br i1 %276, label %277, label %278, !prof !21, !nosanitize !20

277:                                              ; preds = %.loopexit85
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

278:                                              ; preds = %.loopexit85
  %279 = extractvalue { i32, i1 } %275, 0, !nosanitize !20
  store i32 %279, ptr %38, align 8, !tbaa !34
  %280 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %280, ptr %44, align 8, !tbaa !35
  br label %281

281:                                              ; preds = %278, %120
  %282 = phi i32 [ %279, %278 ], [ %123, %120 ]
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %313, label %284

284:                                              ; preds = %281
  %285 = load i32, ptr %46, align 4, !tbaa !17
  %286 = icmp ne i32 %285, 0
  %287 = icmp ult i32 %282, 4
  %288 = and i1 %287, %286
  br i1 %288, label %313, label %289

289:                                              ; preds = %284
  %290 = icmp ugt i32 %282, 3
  %291 = load ptr, ptr %44, align 8, !tbaa !35
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
  %308 = tail call i32 @inflateReset(ptr noundef nonnull %44) #13
  store i32 2, ptr %39, align 8, !tbaa !26
  store i32 1, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %52, align 8, !tbaa !32
  br label %456

309:                                              ; preds = %303, %299, %295, %292, %289
  %310 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %310, ptr %35, align 8, !tbaa !22
  %311 = zext i32 %282 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %310, ptr align 1 %291, i64 %311, i1 false)
  %312 = load i32, ptr %38, align 8, !tbaa !34
  store i32 %312, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !26
  br label %458

313:                                              ; preds = %284, %281, %113
  %314 = load i32, ptr %39, align 8, !tbaa !26
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %.loopexit96, label %456

316:                                              ; preds = %85
  %317 = load ptr, ptr %42, align 8, !tbaa !30
  %318 = load i32, ptr %40, align 8, !tbaa !27
  %319 = shl i32 %318, 1
  store i32 0, ptr %46, align 4, !tbaa !17
  %320 = tail call ptr @__errno_location() #17
  store i32 0, ptr %320, align 4, !tbaa !45
  store i32 0, ptr %3, align 8, !tbaa !45
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
  %329 = load i32, ptr %47, align 4, !tbaa !46
  %330 = zext i32 %322 to i64
  %331 = getelementptr inbounds nuw i8, ptr %317, i64 %330
  %332 = zext nneg i32 %328 to i64
  %333 = tail call i64 @read(i32 noundef %329, ptr noundef %331, i64 noundef %332) #13
  %334 = trunc i64 %333 to i32
  %335 = icmp slt i32 %334, 1
  br i1 %335, label %344, label %336

336:                                              ; preds = %326
  %337 = load i32, ptr %3, align 4, !tbaa !45
  %338 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %337, i32 %334), !nosanitize !20
  %339 = extractvalue { i32, i1 } %338, 1, !nosanitize !20
  br i1 %339, label %340, label %341, !prof !21, !nosanitize !20

340:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

341:                                              ; preds = %336
  %342 = extractvalue { i32, i1 } %338, 0, !nosanitize !20
  store i32 %342, ptr %3, align 4, !tbaa !45
  %343 = icmp ult i32 %342, %319
  br i1 %343, label %321, label %.loopexit93, !llvm.loop !47

344:                                              ; preds = %326
  %345 = icmp slt i32 %334, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %344
  %347 = load i32, ptr %320, align 4, !tbaa !45
  %348 = icmp eq i32 %347, 11
  br i1 %348, label %349, label %.loopexit98

349:                                              ; preds = %346
  store i32 1, ptr %46, align 4, !tbaa !17
  %350 = load i32, ptr %3, align 4, !tbaa !45
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %.loopexit93

352:                                              ; preds = %349
  %353 = load i32, ptr %320, align 4, !tbaa !45
  br label %.loopexit98

354:                                              ; preds = %344
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit93

.loopexit98:                                      ; preds = %346, %352
  %355 = phi i32 [ %353, %352 ], [ %347, %346 ]
  %356 = tail call ptr @strerror(i32 noundef %355) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %356) #13
  br label %.loopexit94

.loopexit93:                                      ; preds = %341, %354, %349
  %357 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %357, ptr %35, align 8, !tbaa !22
  br label %.loopexit96

358:                                              ; preds = %85
  %359 = load i32, ptr %40, align 8, !tbaa !27
  %360 = shl i32 %359, 1
  store i32 %360, ptr %41, align 8, !tbaa !48
  %361 = load ptr, ptr %42, align 8, !tbaa !30
  store ptr %361, ptr %43, align 8, !tbaa !49
  br label %362

362:                                              ; preds = %439, %358
  %363 = phi i32 [ 0, %358 ], [ %424, %439 ]
  %364 = load i32, ptr %38, align 8, !tbaa !34
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %423

366:                                              ; preds = %362
  %367 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %367, label %.loopexit90 [
    i32 0, label %368
    i32 -5, label %368
  ]

368:                                              ; preds = %366, %366
  %369 = load i32, ptr %37, align 8, !tbaa !24
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %419

371:                                              ; preds = %368
  %372 = load i32, ptr %40, align 8, !tbaa !27
  %373 = load ptr, ptr %45, align 8, !tbaa !29
  store i32 0, ptr %46, align 4, !tbaa !17
  %374 = tail call ptr @__errno_location() #17
  store i32 0, ptr %374, align 4, !tbaa !45
  br label %375

375:                                              ; preds = %394, %371
  %376 = phi i32 [ 0, %371 ], [ %395, %394 ]
  %377 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %372, i32 %376), !nosanitize !20
  %378 = extractvalue { i32, i1 } %377, 1, !nosanitize !20
  br i1 %378, label %379, label %380, !prof !21, !nosanitize !20

379:                                              ; preds = %375
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

380:                                              ; preds = %375
  %381 = extractvalue { i32, i1 } %377, 0, !nosanitize !20
  %382 = tail call i32 @llvm.umin.i32(i32 %381, i32 1073741824)
  %383 = load i32, ptr %47, align 4, !tbaa !46
  %384 = zext i32 %376 to i64
  %385 = getelementptr inbounds nuw i8, ptr %373, i64 %384
  %386 = zext nneg i32 %382 to i64
  %387 = tail call i64 @read(i32 noundef %383, ptr noundef %385, i64 noundef %386) #13
  %388 = trunc i64 %387 to i32
  %389 = icmp slt i32 %388, 1
  br i1 %389, label %397, label %390

390:                                              ; preds = %380
  %391 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %376, i32 %388), !nosanitize !20
  %392 = extractvalue { i32, i1 } %391, 1, !nosanitize !20
  br i1 %392, label %393, label %394, !prof !21, !nosanitize !20

393:                                              ; preds = %390
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

394:                                              ; preds = %390
  %395 = extractvalue { i32, i1 } %391, 0, !nosanitize !20
  %396 = icmp ult i32 %395, %372
  br i1 %396, label %375, label %.loopexit84, !llvm.loop !47

397:                                              ; preds = %380
  %398 = icmp slt i32 %388, 0
  br i1 %398, label %399, label %406

399:                                              ; preds = %397
  %400 = load i32, ptr %374, align 4, !tbaa !45
  %401 = icmp eq i32 %400, 11
  br i1 %401, label %402, label %.loopexit92

402:                                              ; preds = %399
  store i32 1, ptr %46, align 4, !tbaa !17
  %403 = icmp eq i32 %376, 0
  br i1 %403, label %404, label %.loopexit84

404:                                              ; preds = %402
  %405 = load i32, ptr %374, align 4, !tbaa !45
  br label %.loopexit92

406:                                              ; preds = %397
  store i32 1, ptr %37, align 8, !tbaa !24
  br label %.loopexit84

.loopexit92:                                      ; preds = %399, %404
  %407 = phi i32 [ %405, %404 ], [ %400, %399 ]
  %408 = tail call ptr @strerror(i32 noundef %407) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %408) #13
  %409 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit90

.loopexit84:                                      ; preds = %394, %406, %402
  %410 = phi i32 [ %376, %406 ], [ %376, %402 ], [ %395, %394 ]
  %411 = load i32, ptr %38, align 8, !tbaa !34
  %412 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %411, i32 %410), !nosanitize !20
  %413 = extractvalue { i32, i1 } %412, 1, !nosanitize !20
  br i1 %413, label %414, label %415, !prof !21, !nosanitize !20

414:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

415:                                              ; preds = %.loopexit84
  %416 = extractvalue { i32, i1 } %412, 0, !nosanitize !20
  store i32 %416, ptr %38, align 8, !tbaa !34
  %417 = load ptr, ptr %45, align 8, !tbaa !29
  store ptr %417, ptr %44, align 8, !tbaa !35
  %418 = icmp eq i32 %416, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %415, %368
  %420 = load i32, ptr %46, align 4, !tbaa !17
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %.loopexit90

422:                                              ; preds = %419
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit90

423:                                              ; preds = %415, %362
  %424 = tail call i32 @inflate(ptr noundef nonnull %44, i32 noundef 0) #13
  %425 = load i32, ptr %41, align 8, !tbaa !48
  %426 = icmp ult i32 %425, %360
  br i1 %426, label %427, label %428

427:                                              ; preds = %423
  store i32 0, ptr %48, align 4, !tbaa !33
  br label %428

428:                                              ; preds = %427, %423
  switch i32 %424, label %439 [
    i32 -2, label %429
    i32 2, label %429
    i32 -4, label %430
    i32 -3, label %431
  ]

429:                                              ; preds = %428, %428
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit90

430:                                              ; preds = %428
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit90

431:                                              ; preds = %428
  %432 = load i32, ptr %48, align 4, !tbaa !33
  %433 = icmp eq i32 %432, 1
  br i1 %433, label %434, label %435

434:                                              ; preds = %431
  store i32 0, ptr %38, align 8, !tbaa !34
  store i32 1, ptr %37, align 8, !tbaa !24
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %.loopexit90

435:                                              ; preds = %431
  %436 = load ptr, ptr %49, align 8, !tbaa !50
  %437 = icmp eq ptr %436, null
  %438 = select i1 %437, ptr @.str.6, ptr %436
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %438) #13
  br label %.loopexit90

439:                                              ; preds = %428
  %440 = icmp ne i32 %425, 0
  %441 = icmp ne i32 %424, 1
  %442 = select i1 %440, i1 %441, i1 false
  br i1 %442, label %362, label %.loopexit90, !llvm.loop !51

.loopexit90:                                      ; preds = %439, %366, %435, %434, %430, %429, %422, %419, %.loopexit92
  %443 = phi i32 [ %363, %419 ], [ %363, %422 ], [ %424, %429 ], [ -4, %430 ], [ 0, %434 ], [ -3, %435 ], [ %409, %.loopexit92 ], [ %367, %366 ], [ %424, %439 ]
  %444 = load i32, ptr %41, align 8, !tbaa !48
  %445 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %360, i32 %444), !nosanitize !20
  %446 = extractvalue { i32, i1 } %445, 1, !nosanitize !20
  br i1 %446, label %447, label %448, !prof !21, !nosanitize !20

447:                                              ; preds = %.loopexit90
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

448:                                              ; preds = %.loopexit90
  %449 = extractvalue { i32, i1 } %445, 0, !nosanitize !20
  store i32 %449, ptr %3, align 8, !tbaa !19
  %450 = load ptr, ptr %43, align 8, !tbaa !49
  %451 = zext i32 %449 to i64
  %452 = sub nsw i64 0, %451
  %453 = getelementptr inbounds i8, ptr %450, i64 %452
  store ptr %453, ptr %35, align 8, !tbaa !22
  switch i32 %443, label %.loopexit94 [
    i32 1, label %454
    i32 0, label %456
  ]

454:                                              ; preds = %448
  store i32 0, ptr %48, align 4, !tbaa !33
  store i32 0, ptr %39, align 8, !tbaa !26
  br label %456

455:                                              ; preds = %85
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit94

456:                                              ; preds = %454, %448, %313, %307
  %457 = load i32, ptr %3, align 8, !tbaa !19
  br label %458

458:                                              ; preds = %456, %309
  %459 = phi i32 [ %457, %456 ], [ %312, %309 ]
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %.loopexit96

461:                                              ; preds = %458
  %462 = load i32, ptr %37, align 8, !tbaa !24
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %.backedge, label %464

464:                                              ; preds = %461
  %465 = load i32, ptr %38, align 8, !tbaa !34
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %.loopexit96, label %.backedge

.backedge:                                        ; preds = %464, %461
  br label %85, !llvm.loop !52

.loopexit96:                                      ; preds = %464, %458, %313, %.loopexit93
  %467 = load i64, ptr %31, align 8, !tbaa !18
  br label %468

468:                                              ; preds = %.loopexit96, %77
  %469 = phi i64 [ %467, %.loopexit96 ], [ %78, %77 ]
  %470 = icmp eq i64 %469, 0
  br i1 %470, label %.loopexit97, label %53, !llvm.loop !53

.loopexit97:                                      ; preds = %468, %82, %30
  %471 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %472 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %473 = getelementptr inbounds nuw i8, ptr %3, i64 144
  %474 = getelementptr inbounds nuw i8, ptr %3, i64 72
  %475 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %476 = getelementptr inbounds nuw i8, ptr %3, i64 168
  %477 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %478 = getelementptr inbounds nuw i8, ptr %3, i64 136
  %479 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %480 = getelementptr inbounds nuw i8, ptr %3, i64 76
  %481 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %482 = getelementptr inbounds nuw i8, ptr %3, i64 68
  %483 = getelementptr inbounds nuw i8, ptr %3, i64 184
  %484 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %485 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %486 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %487 = getelementptr inbounds nuw i8, ptr %3, i64 200
  %488 = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %489

489:                                              ; preds = %.loopexit80, %.loopexit97
  %490 = phi ptr [ %0, %.loopexit97 ], [ %1073, %.loopexit80 ]
  %491 = phi i64 [ %19, %.loopexit97 ], [ %1074, %.loopexit80 ]
  %492 = phi i64 [ 0, %.loopexit97 ], [ %1075, %.loopexit80 ]
  %493 = tail call i64 @llvm.umin.i64(i64 %491, i64 4294967295)
  %494 = trunc nuw i64 %493 to i32
  %495 = load i32, ptr %3, align 8, !tbaa !19
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %512, label %497

497:                                              ; preds = %489
  %498 = tail call i32 @llvm.umin.i32(i32 %495, i32 %494)
  %499 = load ptr, ptr %471, align 8, !tbaa !22
  %500 = zext i32 %498 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %490, ptr align 1 %499, i64 %500, i1 false)
  %501 = load ptr, ptr %471, align 8, !tbaa !22
  %502 = getelementptr inbounds nuw i8, ptr %501, i64 %500
  store ptr %502, ptr %471, align 8, !tbaa !22
  %503 = load i32, ptr %3, align 8, !tbaa !19
  %504 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 %498), !nosanitize !20
  %505 = extractvalue { i32, i1 } %504, 1, !nosanitize !20
  br i1 %505, label %506, label %507, !prof !21, !nosanitize !20

506:                                              ; preds = %497
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

507:                                              ; preds = %497
  %508 = extractvalue { i32, i1 } %504, 0, !nosanitize !20
  store i32 %508, ptr %3, align 8, !tbaa !19
  %509 = load i32, ptr %11, align 8, !tbaa !16
  %510 = icmp ne i32 %509, 0
  %511 = sext i1 %510 to i32
  br label %1054

512:                                              ; preds = %489
  %513 = load i32, ptr %472, align 8, !tbaa !24
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %518, label %515

515:                                              ; preds = %512
  %516 = load i32, ptr %473, align 8, !tbaa !25
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %1080, label %518

518:                                              ; preds = %515, %512
  %519 = load i32, ptr %474, align 8, !tbaa !26
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %.preheader770, label %521

521:                                              ; preds = %518
  %522 = load i32, ptr %475, align 8, !tbaa !27
  %523 = shl i32 %522, 1
  %524 = icmp ugt i32 %523, %494
  br i1 %524, label %.preheader770, label %913

.preheader770:                                    ; preds = %521, %518
  br label %525

525:                                              ; preds = %.preheader770, %908
  %526 = phi i32 [ %909, %908 ], [ %519, %.preheader770 ]
  switch i32 %526, label %896 [
    i32 0, label %527
    i32 1, label %756
    i32 2, label %799
  ]

527:                                              ; preds = %525
  %528 = load i32, ptr %475, align 8, !tbaa !27
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %530, label %547

530:                                              ; preds = %527
  %531 = load i32, ptr %486, align 4, !tbaa !28
  %532 = zext i32 %531 to i64
  %533 = tail call noalias ptr @malloc(i64 noundef %532) #16
  store ptr %533, ptr %479, align 8, !tbaa !29
  %534 = shl i32 %531, 1
  %535 = zext i32 %534 to i64
  %536 = tail call noalias ptr @malloc(i64 noundef %535) #16
  store ptr %536, ptr %485, align 8, !tbaa !30
  %537 = icmp eq ptr %533, null
  %538 = icmp eq ptr %536, null
  %539 = or i1 %537, %538
  br i1 %539, label %540, label %541

540:                                              ; preds = %530
  tail call void @free(ptr noundef %536) #13
  tail call void @free(ptr noundef %533) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

541:                                              ; preds = %530
  store i32 %531, ptr %475, align 8, !tbaa !27
  store i32 0, ptr %473, align 8, !tbaa !25
  store ptr null, ptr %478, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %487, i8 0, i64 24, i1 false)
  %542 = tail call i32 @inflateInit2_(ptr noundef nonnull %478, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %547, label %544

544:                                              ; preds = %541
  %545 = load ptr, ptr %485, align 8, !tbaa !30
  tail call void @free(ptr noundef %545) #13
  %546 = load ptr, ptr %479, align 8, !tbaa !29
  tail call void @free(ptr noundef %546) #13
  store i32 0, ptr %475, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

547:                                              ; preds = %541, %527
  %548 = load i32, ptr %488, align 8, !tbaa !32
  %549 = icmp eq i32 %548, -1
  br i1 %549, label %553, label %550

550:                                              ; preds = %547
  %551 = load i32, ptr %482, align 4, !tbaa !33
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %558

553:                                              ; preds = %550, %547
  %554 = tail call i32 @inflateReset(ptr noundef nonnull %478) #13
  store i32 2, ptr %474, align 8, !tbaa !26
  %555 = load i32, ptr %482, align 4, !tbaa !33
  %556 = icmp ne i32 %555, -1
  %557 = zext i1 %556 to i32
  store i32 %557, ptr %482, align 4, !tbaa !33
  store i32 0, ptr %488, align 8, !tbaa !32
  br label %753

558:                                              ; preds = %550
  %559 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %559, label %.loopexit78 [
    i32 0, label %560
    i32 -5, label %560
  ]

560:                                              ; preds = %558, %558
  %561 = load i32, ptr %472, align 8, !tbaa !24
  %562 = icmp eq i32 %561, 0
  %563 = load i32, ptr %473, align 8, !tbaa !34
  br i1 %562, label %564, label %721

564:                                              ; preds = %560
  %565 = icmp eq i32 %563, 0
  br i1 %565, label %667, label %566

566:                                              ; preds = %564
  %567 = load ptr, ptr %479, align 8, !tbaa !29
  %568 = load ptr, ptr %478, align 8, !tbaa !35
  %569 = icmp eq ptr %568, %567
  br i1 %569, label %667, label %570

570:                                              ; preds = %566
  %571 = ptrtoint ptr %568 to i64
  %572 = ptrtoint ptr %567 to i64
  %573 = zext i32 %563 to i64
  %574 = icmp ult i32 %563, 4
  %575 = sub i64 %572, %571
  %576 = icmp ult i64 %575, 32
  %577 = or i1 %574, %576
  br i1 %577, label %617, label %578

578:                                              ; preds = %570
  %579 = icmp ult i32 %563, 32
  br i1 %579, label %601, label %580

580:                                              ; preds = %578
  %581 = and i64 %573, 4294967264
  br label %582

582:                                              ; preds = %582, %580
  %583 = phi i64 [ 0, %580 ], [ %590, %582 ]
  %584 = getelementptr i8, ptr %567, i64 %583
  %585 = getelementptr i8, ptr %568, i64 %583
  %586 = getelementptr i8, ptr %585, i64 16
  %587 = load <16 x i8>, ptr %585, align 1, !tbaa !36
  %588 = load <16 x i8>, ptr %586, align 1, !tbaa !36
  %589 = getelementptr i8, ptr %584, i64 16
  store <16 x i8> %587, ptr %584, align 1, !tbaa !36
  store <16 x i8> %588, ptr %589, align 1, !tbaa !36
  %590 = add nuw nsw i64 %583, 32
  %591 = icmp eq i64 %590, %581
  br i1 %591, label %592, label %582, !llvm.loop !66

592:                                              ; preds = %582
  %593 = icmp eq i64 %581, %573
  br i1 %593, label %.loopexit71, label %594

594:                                              ; preds = %592
  %595 = getelementptr i8, ptr %567, i64 %581
  %596 = getelementptr i8, ptr %568, i64 %581
  %597 = trunc nuw i64 %581 to i32
  %598 = sub i32 %563, %597
  %599 = and i64 %573, 28
  %600 = icmp eq i64 %599, 0
  br i1 %600, label %617, label %601

601:                                              ; preds = %594, %578
  %602 = phi i64 [ %581, %594 ], [ 0, %578 ]
  %603 = and i64 %573, 4294967292
  br label %604

604:                                              ; preds = %604, %601
  %605 = phi i64 [ %602, %601 ], [ %609, %604 ]
  %606 = getelementptr i8, ptr %567, i64 %605
  %607 = getelementptr i8, ptr %568, i64 %605
  %608 = load <4 x i8>, ptr %607, align 1, !tbaa !36
  store <4 x i8> %608, ptr %606, align 1, !tbaa !36
  %609 = add nuw i64 %605, 4
  %610 = icmp eq i64 %609, %603
  br i1 %610, label %611, label %604, !llvm.loop !67

611:                                              ; preds = %604
  %612 = getelementptr i8, ptr %567, i64 %603
  %613 = getelementptr i8, ptr %568, i64 %603
  %614 = trunc nuw i64 %603 to i32
  %615 = sub i32 %563, %614
  %616 = icmp eq i64 %603, %573
  br i1 %616, label %.loopexit71, label %617

617:                                              ; preds = %611, %594, %570
  %618 = phi ptr [ %567, %570 ], [ %595, %594 ], [ %612, %611 ]
  %619 = phi ptr [ %568, %570 ], [ %596, %594 ], [ %613, %611 ]
  %620 = phi i32 [ %563, %570 ], [ %598, %594 ], [ %615, %611 ]
  %621 = add i32 %620, -1
  %622 = and i32 %620, 7
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %.loopexit73, label %.preheader72

.preheader72:                                     ; preds = %617, %.preheader72
  %624 = phi ptr [ %628, %.preheader72 ], [ %618, %617 ]
  %625 = phi ptr [ %629, %.preheader72 ], [ %619, %617 ]
  %626 = phi i32 [ %630, %.preheader72 ], [ 0, %617 ]
  %627 = load i8, ptr %625, align 1, !tbaa !36
  store i8 %627, ptr %624, align 1, !tbaa !36
  %628 = getelementptr inbounds nuw i8, ptr %624, i64 1
  %629 = getelementptr inbounds nuw i8, ptr %625, i64 1
  %630 = add nuw nsw i32 %626, 1
  %631 = icmp eq i32 %630, %622
  br i1 %631, label %.loopexit73.loopexit, label %.preheader72, !llvm.loop !68

.loopexit73.loopexit:                             ; preds = %.preheader72
  %632 = and i32 %620, -8
  br label %.loopexit73

.loopexit73:                                      ; preds = %.loopexit73.loopexit, %617
  %633 = phi ptr [ %618, %617 ], [ %628, %.loopexit73.loopexit ]
  %634 = phi ptr [ %619, %617 ], [ %629, %.loopexit73.loopexit ]
  %635 = phi i32 [ %620, %617 ], [ %632, %.loopexit73.loopexit ]
  %636 = icmp ult i32 %621, 7
  br i1 %636, label %.loopexit71, label %.preheader

.preheader:                                       ; preds = %.loopexit73, %.preheader
  %637 = phi ptr [ %663, %.preheader ], [ %633, %.loopexit73 ]
  %638 = phi ptr [ %664, %.preheader ], [ %634, %.loopexit73 ]
  %639 = phi i32 [ %662, %.preheader ], [ %635, %.loopexit73 ]
  %640 = load i8, ptr %638, align 1, !tbaa !36
  store i8 %640, ptr %637, align 1, !tbaa !36
  %641 = getelementptr inbounds nuw i8, ptr %637, i64 1
  %642 = getelementptr inbounds nuw i8, ptr %638, i64 1
  %643 = load i8, ptr %642, align 1, !tbaa !36
  store i8 %643, ptr %641, align 1, !tbaa !36
  %644 = getelementptr inbounds nuw i8, ptr %637, i64 2
  %645 = getelementptr inbounds nuw i8, ptr %638, i64 2
  %646 = load i8, ptr %645, align 1, !tbaa !36
  store i8 %646, ptr %644, align 1, !tbaa !36
  %647 = getelementptr inbounds nuw i8, ptr %637, i64 3
  %648 = getelementptr inbounds nuw i8, ptr %638, i64 3
  %649 = load i8, ptr %648, align 1, !tbaa !36
  store i8 %649, ptr %647, align 1, !tbaa !36
  %650 = getelementptr inbounds nuw i8, ptr %637, i64 4
  %651 = getelementptr inbounds nuw i8, ptr %638, i64 4
  %652 = load i8, ptr %651, align 1, !tbaa !36
  store i8 %652, ptr %650, align 1, !tbaa !36
  %653 = getelementptr inbounds nuw i8, ptr %637, i64 5
  %654 = getelementptr inbounds nuw i8, ptr %638, i64 5
  %655 = load i8, ptr %654, align 1, !tbaa !36
  store i8 %655, ptr %653, align 1, !tbaa !36
  %656 = getelementptr inbounds nuw i8, ptr %637, i64 6
  %657 = getelementptr inbounds nuw i8, ptr %638, i64 6
  %658 = load i8, ptr %657, align 1, !tbaa !36
  store i8 %658, ptr %656, align 1, !tbaa !36
  %659 = getelementptr inbounds nuw i8, ptr %637, i64 7
  %660 = getelementptr inbounds nuw i8, ptr %638, i64 7
  %661 = load i8, ptr %660, align 1, !tbaa !36
  store i8 %661, ptr %659, align 1, !tbaa !36
  %662 = add i32 %639, -8
  %663 = getelementptr inbounds nuw i8, ptr %637, i64 8
  %664 = getelementptr inbounds nuw i8, ptr %638, i64 8
  %665 = icmp eq i32 %662, 0
  br i1 %665, label %.loopexit71, label %.preheader, !llvm.loop !69

.loopexit71:                                      ; preds = %.preheader, %.loopexit73, %611, %592
  %666 = load i32, ptr %473, align 8, !tbaa !34
  br label %667

667:                                              ; preds = %.loopexit71, %566, %564
  %668 = phi i32 [ %666, %.loopexit71 ], [ %563, %566 ], [ 0, %564 ]
  %669 = load i32, ptr %475, align 8, !tbaa !27
  %670 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %669, i32 %668), !nosanitize !20
  %671 = extractvalue { i32, i1 } %670, 1, !nosanitize !20
  br i1 %671, label %672, label %673, !prof !21, !nosanitize !20

672:                                              ; preds = %667
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

673:                                              ; preds = %667
  %674 = extractvalue { i32, i1 } %670, 0, !nosanitize !20
  %675 = load ptr, ptr %479, align 8, !tbaa !29
  %676 = zext i32 %668 to i64
  %677 = getelementptr inbounds nuw i8, ptr %675, i64 %676
  store i32 0, ptr %480, align 4, !tbaa !17
  %678 = tail call ptr @__errno_location() #17
  store i32 0, ptr %678, align 4, !tbaa !45
  br label %679

679:                                              ; preds = %698, %673
  %680 = phi i32 [ 0, %673 ], [ %699, %698 ]
  %681 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %674, i32 %680), !nosanitize !20
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !20
  br i1 %682, label %683, label %684, !prof !21, !nosanitize !20

683:                                              ; preds = %679
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

684:                                              ; preds = %679
  %685 = extractvalue { i32, i1 } %681, 0, !nosanitize !20
  %686 = tail call i32 @llvm.umin.i32(i32 %685, i32 1073741824)
  %687 = load i32, ptr %481, align 4, !tbaa !46
  %688 = zext i32 %680 to i64
  %689 = getelementptr inbounds nuw i8, ptr %677, i64 %688
  %690 = zext nneg i32 %686 to i64
  %691 = tail call i64 @read(i32 noundef %687, ptr noundef %689, i64 noundef %690) #13
  %692 = trunc i64 %691 to i32
  %693 = icmp slt i32 %692, 1
  br i1 %693, label %701, label %694

694:                                              ; preds = %684
  %695 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %680, i32 %692), !nosanitize !20
  %696 = extractvalue { i32, i1 } %695, 1, !nosanitize !20
  br i1 %696, label %697, label %698, !prof !21, !nosanitize !20

697:                                              ; preds = %694
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

698:                                              ; preds = %694
  %699 = extractvalue { i32, i1 } %695, 0, !nosanitize !20
  %700 = icmp ult i32 %699, %674
  br i1 %700, label %679, label %.loopexit70, !llvm.loop !47

701:                                              ; preds = %684
  %702 = icmp slt i32 %692, 0
  br i1 %702, label %703, label %710

703:                                              ; preds = %701
  %704 = load i32, ptr %678, align 4, !tbaa !45
  %705 = icmp eq i32 %704, 11
  br i1 %705, label %706, label %.loopexit79

706:                                              ; preds = %703
  store i32 1, ptr %480, align 4, !tbaa !17
  %707 = icmp eq i32 %680, 0
  br i1 %707, label %708, label %.loopexit70

708:                                              ; preds = %706
  %709 = load i32, ptr %678, align 4, !tbaa !45
  br label %.loopexit79

710:                                              ; preds = %701
  store i32 1, ptr %472, align 8, !tbaa !24
  br label %.loopexit70

.loopexit79:                                      ; preds = %703, %708
  %711 = phi i32 [ %709, %708 ], [ %704, %703 ]
  %712 = tail call ptr @strerror(i32 noundef %711) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %712) #13
  br label %.loopexit78

.loopexit70:                                      ; preds = %698, %710, %706
  %713 = phi i32 [ %680, %710 ], [ %680, %706 ], [ %699, %698 ]
  %714 = load i32, ptr %473, align 8, !tbaa !34
  %715 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %714, i32 %713), !nosanitize !20
  %716 = extractvalue { i32, i1 } %715, 1, !nosanitize !20
  br i1 %716, label %717, label %718, !prof !21, !nosanitize !20

717:                                              ; preds = %.loopexit70
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

718:                                              ; preds = %.loopexit70
  %719 = extractvalue { i32, i1 } %715, 0, !nosanitize !20
  store i32 %719, ptr %473, align 8, !tbaa !34
  %720 = load ptr, ptr %479, align 8, !tbaa !29
  store ptr %720, ptr %478, align 8, !tbaa !35
  br label %721

721:                                              ; preds = %718, %560
  %722 = phi i32 [ %719, %718 ], [ %563, %560 ]
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %753, label %724

724:                                              ; preds = %721
  %725 = load i32, ptr %480, align 4, !tbaa !17
  %726 = icmp ne i32 %725, 0
  %727 = icmp ult i32 %722, 4
  %728 = and i1 %727, %726
  br i1 %728, label %753, label %729

729:                                              ; preds = %724
  %730 = icmp ugt i32 %722, 3
  %731 = load ptr, ptr %478, align 8, !tbaa !35
  br i1 %730, label %732, label %749

732:                                              ; preds = %729
  %733 = load i8, ptr %731, align 1, !tbaa !36
  %734 = icmp eq i8 %733, 31
  br i1 %734, label %735, label %749

735:                                              ; preds = %732
  %736 = getelementptr inbounds nuw i8, ptr %731, i64 1
  %737 = load i8, ptr %736, align 1, !tbaa !36
  %738 = icmp eq i8 %737, -117
  br i1 %738, label %739, label %749

739:                                              ; preds = %735
  %740 = getelementptr inbounds nuw i8, ptr %731, i64 2
  %741 = load i8, ptr %740, align 1, !tbaa !36
  %742 = icmp eq i8 %741, 8
  br i1 %742, label %743, label %749

743:                                              ; preds = %739
  %744 = getelementptr inbounds nuw i8, ptr %731, i64 3
  %745 = load i8, ptr %744, align 1, !tbaa !36
  %746 = icmp ult i8 %745, 32
  br i1 %746, label %747, label %749

747:                                              ; preds = %743
  %748 = tail call i32 @inflateReset(ptr noundef nonnull %478) #13
  store i32 2, ptr %474, align 8, !tbaa !26
  store i32 1, ptr %482, align 4, !tbaa !33
  store i32 0, ptr %488, align 8, !tbaa !32
  br label %897

749:                                              ; preds = %743, %739, %735, %732, %729
  %750 = load ptr, ptr %485, align 8, !tbaa !30
  store ptr %750, ptr %471, align 8, !tbaa !22
  %751 = zext i32 %722 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %750, ptr align 1 %731, i64 %751, i1 false)
  %752 = load i32, ptr %473, align 8, !tbaa !34
  store i32 %752, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %473, align 8, !tbaa !34
  store i32 1, ptr %474, align 8, !tbaa !26
  br label %899

753:                                              ; preds = %724, %721, %553
  %754 = load i32, ptr %474, align 8, !tbaa !26
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %.loopexit80, label %897

756:                                              ; preds = %525
  %757 = load ptr, ptr %485, align 8, !tbaa !30
  %758 = load i32, ptr %475, align 8, !tbaa !27
  %759 = shl i32 %758, 1
  store i32 0, ptr %480, align 4, !tbaa !17
  %760 = tail call ptr @__errno_location() #17
  store i32 0, ptr %760, align 4, !tbaa !45
  store i32 0, ptr %3, align 8, !tbaa !45
  br label %761

761:                                              ; preds = %781, %756
  %762 = phi i32 [ %782, %781 ], [ 0, %756 ]
  %763 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %759, i32 %762), !nosanitize !20
  %764 = extractvalue { i32, i1 } %763, 1, !nosanitize !20
  br i1 %764, label %765, label %766, !prof !21, !nosanitize !20

765:                                              ; preds = %761
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

766:                                              ; preds = %761
  %767 = extractvalue { i32, i1 } %763, 0, !nosanitize !20
  %768 = tail call i32 @llvm.umin.i32(i32 %767, i32 1073741824)
  %769 = load i32, ptr %481, align 4, !tbaa !46
  %770 = zext i32 %762 to i64
  %771 = getelementptr inbounds nuw i8, ptr %757, i64 %770
  %772 = zext nneg i32 %768 to i64
  %773 = tail call i64 @read(i32 noundef %769, ptr noundef %771, i64 noundef %772) #13
  %774 = trunc i64 %773 to i32
  %775 = icmp slt i32 %774, 1
  br i1 %775, label %784, label %776

776:                                              ; preds = %766
  %777 = load i32, ptr %3, align 4, !tbaa !45
  %778 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %777, i32 %774), !nosanitize !20
  %779 = extractvalue { i32, i1 } %778, 1, !nosanitize !20
  br i1 %779, label %780, label %781, !prof !21, !nosanitize !20

780:                                              ; preds = %776
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

781:                                              ; preds = %776
  %782 = extractvalue { i32, i1 } %778, 0, !nosanitize !20
  store i32 %782, ptr %3, align 4, !tbaa !45
  %783 = icmp ult i32 %782, %759
  br i1 %783, label %761, label %.loopexit77, !llvm.loop !47

784:                                              ; preds = %766
  %785 = icmp slt i32 %774, 0
  br i1 %785, label %786, label %794

786:                                              ; preds = %784
  %787 = load i32, ptr %760, align 4, !tbaa !45
  %788 = icmp eq i32 %787, 11
  br i1 %788, label %789, label %795

789:                                              ; preds = %786
  store i32 1, ptr %480, align 4, !tbaa !17
  %790 = load i32, ptr %3, align 4, !tbaa !45
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %.loopexit77

792:                                              ; preds = %789
  %793 = load i32, ptr %760, align 4, !tbaa !45
  br label %795

794:                                              ; preds = %784
  store i32 1, ptr %472, align 8, !tbaa !24
  br label %.loopexit77

795:                                              ; preds = %792, %786
  %796 = phi i32 [ %793, %792 ], [ %787, %786 ]
  %797 = tail call ptr @strerror(i32 noundef %796) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %797) #13
  br label %.loopexit78

.loopexit77:                                      ; preds = %781, %794, %789
  %798 = load ptr, ptr %485, align 8, !tbaa !30
  store ptr %798, ptr %471, align 8, !tbaa !22
  br label %.loopexit80

799:                                              ; preds = %525
  %800 = load i32, ptr %475, align 8, !tbaa !27
  %801 = shl i32 %800, 1
  store i32 %801, ptr %476, align 8, !tbaa !48
  %802 = load ptr, ptr %485, align 8, !tbaa !30
  store ptr %802, ptr %477, align 8, !tbaa !49
  br label %803

803:                                              ; preds = %880, %799
  %804 = phi i32 [ 0, %799 ], [ %865, %880 ]
  %805 = load i32, ptr %473, align 8, !tbaa !34
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %864

807:                                              ; preds = %803
  %808 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %808, label %.loopexit74 [
    i32 0, label %809
    i32 -5, label %809
  ]

809:                                              ; preds = %807, %807
  %810 = load i32, ptr %472, align 8, !tbaa !24
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %812, label %860

812:                                              ; preds = %809
  %813 = load i32, ptr %475, align 8, !tbaa !27
  %814 = load ptr, ptr %479, align 8, !tbaa !29
  store i32 0, ptr %480, align 4, !tbaa !17
  %815 = tail call ptr @__errno_location() #17
  store i32 0, ptr %815, align 4, !tbaa !45
  br label %816

816:                                              ; preds = %835, %812
  %817 = phi i32 [ 0, %812 ], [ %836, %835 ]
  %818 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %813, i32 %817), !nosanitize !20
  %819 = extractvalue { i32, i1 } %818, 1, !nosanitize !20
  br i1 %819, label %820, label %821, !prof !21, !nosanitize !20

820:                                              ; preds = %816
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

821:                                              ; preds = %816
  %822 = extractvalue { i32, i1 } %818, 0, !nosanitize !20
  %823 = tail call i32 @llvm.umin.i32(i32 %822, i32 1073741824)
  %824 = load i32, ptr %481, align 4, !tbaa !46
  %825 = zext i32 %817 to i64
  %826 = getelementptr inbounds nuw i8, ptr %814, i64 %825
  %827 = zext nneg i32 %823 to i64
  %828 = tail call i64 @read(i32 noundef %824, ptr noundef %826, i64 noundef %827) #13
  %829 = trunc i64 %828 to i32
  %830 = icmp slt i32 %829, 1
  br i1 %830, label %838, label %831

831:                                              ; preds = %821
  %832 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %817, i32 %829), !nosanitize !20
  %833 = extractvalue { i32, i1 } %832, 1, !nosanitize !20
  br i1 %833, label %834, label %835, !prof !21, !nosanitize !20

834:                                              ; preds = %831
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

835:                                              ; preds = %831
  %836 = extractvalue { i32, i1 } %832, 0, !nosanitize !20
  %837 = icmp ult i32 %836, %813
  br i1 %837, label %816, label %.loopexit, !llvm.loop !47

838:                                              ; preds = %821
  %839 = icmp slt i32 %829, 0
  br i1 %839, label %840, label %847

840:                                              ; preds = %838
  %841 = load i32, ptr %815, align 4, !tbaa !45
  %842 = icmp eq i32 %841, 11
  br i1 %842, label %843, label %.loopexit75

843:                                              ; preds = %840
  store i32 1, ptr %480, align 4, !tbaa !17
  %844 = icmp eq i32 %817, 0
  br i1 %844, label %845, label %.loopexit

845:                                              ; preds = %843
  %846 = load i32, ptr %815, align 4, !tbaa !45
  br label %.loopexit75

847:                                              ; preds = %838
  store i32 1, ptr %472, align 8, !tbaa !24
  br label %.loopexit

.loopexit75:                                      ; preds = %840, %845
  %848 = phi i32 [ %846, %845 ], [ %841, %840 ]
  %849 = tail call ptr @strerror(i32 noundef %848) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %849) #13
  %850 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit74

.loopexit:                                        ; preds = %835, %847, %843
  %851 = phi i32 [ %817, %847 ], [ %817, %843 ], [ %836, %835 ]
  %852 = load i32, ptr %473, align 8, !tbaa !34
  %853 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %852, i32 %851), !nosanitize !20
  %854 = extractvalue { i32, i1 } %853, 1, !nosanitize !20
  br i1 %854, label %855, label %856, !prof !21, !nosanitize !20

855:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

856:                                              ; preds = %.loopexit
  %857 = extractvalue { i32, i1 } %853, 0, !nosanitize !20
  store i32 %857, ptr %473, align 8, !tbaa !34
  %858 = load ptr, ptr %479, align 8, !tbaa !29
  store ptr %858, ptr %478, align 8, !tbaa !35
  %859 = icmp eq i32 %857, 0
  br i1 %859, label %860, label %864

860:                                              ; preds = %856, %809
  %861 = load i32, ptr %480, align 4, !tbaa !17
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %.loopexit74

863:                                              ; preds = %860
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit74

864:                                              ; preds = %856, %803
  %865 = tail call i32 @inflate(ptr noundef nonnull %478, i32 noundef 0) #13
  %866 = load i32, ptr %476, align 8, !tbaa !48
  %867 = icmp ult i32 %866, %801
  br i1 %867, label %868, label %869

868:                                              ; preds = %864
  store i32 0, ptr %482, align 4, !tbaa !33
  br label %869

869:                                              ; preds = %868, %864
  switch i32 %865, label %880 [
    i32 -2, label %870
    i32 2, label %870
    i32 -4, label %871
    i32 -3, label %872
  ]

870:                                              ; preds = %869, %869
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit74

871:                                              ; preds = %869
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit74

872:                                              ; preds = %869
  %873 = load i32, ptr %482, align 4, !tbaa !33
  %874 = icmp eq i32 %873, 1
  br i1 %874, label %875, label %876

875:                                              ; preds = %872
  store i32 0, ptr %473, align 8, !tbaa !34
  store i32 1, ptr %472, align 8, !tbaa !24
  store i32 0, ptr %474, align 8, !tbaa !26
  br label %.loopexit74

876:                                              ; preds = %872
  %877 = load ptr, ptr %483, align 8, !tbaa !50
  %878 = icmp eq ptr %877, null
  %879 = select i1 %878, ptr @.str.6, ptr %877
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %879) #13
  br label %.loopexit74

880:                                              ; preds = %869
  %881 = icmp ne i32 %866, 0
  %882 = icmp ne i32 %865, 1
  %883 = select i1 %881, i1 %882, i1 false
  br i1 %883, label %803, label %.loopexit74, !llvm.loop !51

.loopexit74:                                      ; preds = %880, %807, %876, %875, %871, %870, %863, %860, %.loopexit75
  %884 = phi i32 [ %804, %860 ], [ %804, %863 ], [ %865, %870 ], [ -4, %871 ], [ 0, %875 ], [ -3, %876 ], [ %850, %.loopexit75 ], [ %865, %880 ], [ %808, %807 ]
  %885 = load i32, ptr %476, align 8, !tbaa !48
  %886 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %801, i32 %885), !nosanitize !20
  %887 = extractvalue { i32, i1 } %886, 1, !nosanitize !20
  br i1 %887, label %888, label %889, !prof !21, !nosanitize !20

888:                                              ; preds = %.loopexit74
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

889:                                              ; preds = %.loopexit74
  %890 = extractvalue { i32, i1 } %886, 0, !nosanitize !20
  store i32 %890, ptr %3, align 8, !tbaa !19
  %891 = load ptr, ptr %477, align 8, !tbaa !49
  %892 = zext i32 %890 to i64
  %893 = sub nsw i64 0, %892
  %894 = getelementptr inbounds i8, ptr %891, i64 %893
  store ptr %894, ptr %471, align 8, !tbaa !22
  switch i32 %884, label %.loopexit78 [
    i32 1, label %895
    i32 0, label %897
  ]

895:                                              ; preds = %889
  store i32 0, ptr %482, align 4, !tbaa !33
  store i32 0, ptr %474, align 8, !tbaa !26
  br label %897

896:                                              ; preds = %525
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit78

897:                                              ; preds = %895, %889, %753, %747
  %898 = load i32, ptr %3, align 8, !tbaa !19
  br label %899

899:                                              ; preds = %897, %749
  %900 = phi i32 [ %898, %897 ], [ %752, %749 ]
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %902, label %.loopexit80

902:                                              ; preds = %899
  %903 = load i32, ptr %472, align 8, !tbaa !24
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %908, label %905

905:                                              ; preds = %902
  %906 = load i32, ptr %473, align 8, !tbaa !34
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %.loopexit80, label %908

908:                                              ; preds = %905, %902
  %909 = load i32, ptr %474, align 8, !tbaa !26
  br label %525, !llvm.loop !52

.loopexit78:                                      ; preds = %889, %558, %896, %795, %.loopexit79, %544, %540
  %910 = load i32, ptr %3, align 8, !tbaa !19
  %911 = icmp eq i32 %910, 0
  %912 = sext i1 %911 to i32
  br label %.loopexit80

913:                                              ; preds = %521
  %914 = icmp eq i32 %519, 1
  br i1 %914, label %915, label %952

915:                                              ; preds = %913
  store i32 0, ptr %480, align 4, !tbaa !17
  %916 = tail call ptr @__errno_location() #17
  store i32 0, ptr %916, align 4, !tbaa !45
  br label %917

917:                                              ; preds = %936, %915
  %918 = phi i32 [ 0, %915 ], [ %937, %936 ]
  %919 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %494, i32 %918), !nosanitize !20
  %920 = extractvalue { i32, i1 } %919, 1, !nosanitize !20
  br i1 %920, label %921, label %922, !prof !21, !nosanitize !20

921:                                              ; preds = %917
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

922:                                              ; preds = %917
  %923 = extractvalue { i32, i1 } %919, 0, !nosanitize !20
  %924 = tail call i32 @llvm.umin.i32(i32 %923, i32 1073741824)
  %925 = load i32, ptr %481, align 4, !tbaa !46
  %926 = zext i32 %918 to i64
  %927 = getelementptr inbounds nuw i8, ptr %490, i64 %926
  %928 = zext nneg i32 %924 to i64
  %929 = tail call i64 @read(i32 noundef %925, ptr noundef %927, i64 noundef %928) #13
  %930 = trunc i64 %929 to i32
  %931 = icmp slt i32 %930, 1
  br i1 %931, label %939, label %932

932:                                              ; preds = %922
  %933 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %918, i32 %930), !nosanitize !20
  %934 = extractvalue { i32, i1 } %933, 1, !nosanitize !20
  br i1 %934, label %935, label %936, !prof !21, !nosanitize !20

935:                                              ; preds = %932
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

936:                                              ; preds = %932
  %937 = extractvalue { i32, i1 } %933, 0, !nosanitize !20
  %938 = icmp ult i32 %937, %494
  br i1 %938, label %917, label %1052, !llvm.loop !47

939:                                              ; preds = %922
  %940 = icmp slt i32 %930, 0
  br i1 %940, label %941, label %951

941:                                              ; preds = %939
  %942 = load i32, ptr %916, align 4, !tbaa !45
  %943 = icmp eq i32 %942, 11
  br i1 %943, label %944, label %948

944:                                              ; preds = %941
  store i32 1, ptr %480, align 4, !tbaa !17
  %945 = icmp eq i32 %918, 0
  br i1 %945, label %946, label %1054

946:                                              ; preds = %944
  %947 = load i32, ptr %916, align 4, !tbaa !45
  br label %948

948:                                              ; preds = %946, %941
  %949 = phi i32 [ %947, %946 ], [ %942, %941 ]
  %950 = tail call ptr @strerror(i32 noundef %949) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %950) #13
  br label %1054

951:                                              ; preds = %939
  store i32 1, ptr %472, align 8, !tbaa !24
  br label %1054

952:                                              ; preds = %913
  store i32 %494, ptr %476, align 8, !tbaa !58
  store ptr %490, ptr %477, align 8, !tbaa !59
  br label %953

953:                                              ; preds = %1030, %952
  %954 = phi i32 [ 0, %952 ], [ %1015, %1030 ]
  %955 = load i32, ptr %473, align 8, !tbaa !34
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %1014

957:                                              ; preds = %953
  %958 = load i32, ptr %11, align 8, !tbaa !16
  switch i32 %958, label %.loopexit81 [
    i32 0, label %959
    i32 -5, label %959
  ]

959:                                              ; preds = %957, %957
  %960 = load i32, ptr %472, align 8, !tbaa !24
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %962, label %1010

962:                                              ; preds = %959
  %963 = load i32, ptr %475, align 8, !tbaa !27
  %964 = load ptr, ptr %479, align 8, !tbaa !29
  store i32 0, ptr %480, align 4, !tbaa !17
  %965 = tail call ptr @__errno_location() #17
  store i32 0, ptr %965, align 4, !tbaa !45
  br label %966

966:                                              ; preds = %985, %962
  %967 = phi i32 [ 0, %962 ], [ %986, %985 ]
  %968 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %963, i32 %967), !nosanitize !20
  %969 = extractvalue { i32, i1 } %968, 1, !nosanitize !20
  br i1 %969, label %970, label %971, !prof !21, !nosanitize !20

970:                                              ; preds = %966
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

971:                                              ; preds = %966
  %972 = extractvalue { i32, i1 } %968, 0, !nosanitize !20
  %973 = tail call i32 @llvm.umin.i32(i32 %972, i32 1073741824)
  %974 = load i32, ptr %481, align 4, !tbaa !46
  %975 = zext i32 %967 to i64
  %976 = getelementptr inbounds nuw i8, ptr %964, i64 %975
  %977 = zext nneg i32 %973 to i64
  %978 = tail call i64 @read(i32 noundef %974, ptr noundef %976, i64 noundef %977) #13
  %979 = trunc i64 %978 to i32
  %980 = icmp slt i32 %979, 1
  br i1 %980, label %988, label %981

981:                                              ; preds = %971
  %982 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %967, i32 %979), !nosanitize !20
  %983 = extractvalue { i32, i1 } %982, 1, !nosanitize !20
  br i1 %983, label %984, label %985, !prof !21, !nosanitize !20

984:                                              ; preds = %981
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

985:                                              ; preds = %981
  %986 = extractvalue { i32, i1 } %982, 0, !nosanitize !20
  %987 = icmp ult i32 %986, %963
  br i1 %987, label %966, label %.loopexit76, !llvm.loop !47

988:                                              ; preds = %971
  %989 = icmp slt i32 %979, 0
  br i1 %989, label %990, label %997

990:                                              ; preds = %988
  %991 = load i32, ptr %965, align 4, !tbaa !45
  %992 = icmp eq i32 %991, 11
  br i1 %992, label %993, label %.loopexit83

993:                                              ; preds = %990
  store i32 1, ptr %480, align 4, !tbaa !17
  %994 = icmp eq i32 %967, 0
  br i1 %994, label %995, label %.loopexit76

995:                                              ; preds = %993
  %996 = load i32, ptr %965, align 4, !tbaa !45
  br label %.loopexit83

997:                                              ; preds = %988
  store i32 1, ptr %472, align 8, !tbaa !24
  br label %.loopexit76

.loopexit83:                                      ; preds = %990, %995
  %998 = phi i32 [ %996, %995 ], [ %991, %990 ]
  %999 = tail call ptr @strerror(i32 noundef %998) #13
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -1, ptr noundef %999) #13
  %1000 = load i32, ptr %11, align 8, !tbaa !16
  br label %.loopexit81

.loopexit76:                                      ; preds = %985, %997, %993
  %1001 = phi i32 [ %967, %997 ], [ %967, %993 ], [ %986, %985 ]
  %1002 = load i32, ptr %473, align 8, !tbaa !34
  %1003 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1002, i32 %1001), !nosanitize !20
  %1004 = extractvalue { i32, i1 } %1003, 1, !nosanitize !20
  br i1 %1004, label %1005, label %1006, !prof !21, !nosanitize !20

1005:                                             ; preds = %.loopexit76
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1006:                                             ; preds = %.loopexit76
  %1007 = extractvalue { i32, i1 } %1003, 0, !nosanitize !20
  store i32 %1007, ptr %473, align 8, !tbaa !34
  %1008 = load ptr, ptr %479, align 8, !tbaa !29
  store ptr %1008, ptr %478, align 8, !tbaa !35
  %1009 = icmp eq i32 %1007, 0
  br i1 %1009, label %1010, label %1014

1010:                                             ; preds = %1006, %959
  %1011 = load i32, ptr %480, align 4, !tbaa !17
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %.loopexit81

1013:                                             ; preds = %1010
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit81

1014:                                             ; preds = %1006, %953
  %1015 = tail call i32 @inflate(ptr noundef nonnull %478, i32 noundef 0) #13
  %1016 = load i32, ptr %476, align 8, !tbaa !48
  %1017 = icmp ult i32 %1016, %494
  br i1 %1017, label %1018, label %1019

1018:                                             ; preds = %1014
  store i32 0, ptr %482, align 4, !tbaa !33
  br label %1019

1019:                                             ; preds = %1018, %1014
  switch i32 %1015, label %1030 [
    i32 -2, label %1020
    i32 2, label %1020
    i32 -4, label %1021
    i32 -3, label %1022
  ]

1020:                                             ; preds = %1019, %1019
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit81

1021:                                             ; preds = %1019
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit81

1022:                                             ; preds = %1019
  %1023 = load i32, ptr %482, align 4, !tbaa !33
  %1024 = icmp eq i32 %1023, 1
  br i1 %1024, label %1025, label %1026

1025:                                             ; preds = %1022
  store i32 0, ptr %473, align 8, !tbaa !34
  store i32 1, ptr %472, align 8, !tbaa !24
  store i32 0, ptr %474, align 8, !tbaa !26
  br label %.loopexit81

1026:                                             ; preds = %1022
  %1027 = load ptr, ptr %483, align 8, !tbaa !50
  %1028 = icmp eq ptr %1027, null
  %1029 = select i1 %1028, ptr @.str.6, ptr %1027
  tail call void @gz_error(ptr noundef nonnull %3, i32 noundef -3, ptr noundef nonnull %1029) #13
  br label %.loopexit81

1030:                                             ; preds = %1019
  %1031 = icmp ne i32 %1016, 0
  %1032 = icmp ne i32 %1015, 1
  %1033 = select i1 %1031, i1 %1032, i1 false
  br i1 %1033, label %953, label %.loopexit81, !llvm.loop !51

.loopexit81:                                      ; preds = %1030, %957, %1026, %1025, %1021, %1020, %1013, %1010, %.loopexit83
  %1034 = phi i32 [ %954, %1010 ], [ %954, %1013 ], [ %1015, %1020 ], [ -4, %1021 ], [ 0, %1025 ], [ -3, %1026 ], [ %1000, %.loopexit83 ], [ %958, %957 ], [ %1015, %1030 ]
  %1035 = load i32, ptr %476, align 8, !tbaa !48
  %1036 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %494, i32 %1035), !nosanitize !20
  %1037 = extractvalue { i32, i1 } %1036, 1, !nosanitize !20
  br i1 %1037, label %1038, label %1039, !prof !21, !nosanitize !20

1038:                                             ; preds = %.loopexit81
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1039:                                             ; preds = %.loopexit81
  %1040 = extractvalue { i32, i1 } %1036, 0, !nosanitize !20
  %1041 = load ptr, ptr %477, align 8, !tbaa !49
  %1042 = zext i32 %1040 to i64
  %1043 = sub nsw i64 0, %1042
  %1044 = getelementptr inbounds i8, ptr %1041, i64 %1043
  store ptr %1044, ptr %471, align 8, !tbaa !22
  %1045 = icmp eq i32 %1034, 1
  br i1 %1045, label %1046, label %1047

1046:                                             ; preds = %1039
  store i32 0, ptr %482, align 4, !tbaa !33
  store i32 0, ptr %474, align 8, !tbaa !26
  br label %1050

1047:                                             ; preds = %1039
  %1048 = icmp ne i32 %1034, 0
  %1049 = sext i1 %1048 to i32
  br label %1050

1050:                                             ; preds = %1047, %1046
  %1051 = phi i32 [ 0, %1046 ], [ %1049, %1047 ]
  store i32 0, ptr %3, align 8, !tbaa !19
  br label %1054

1052:                                             ; preds = %936
  %1053 = zext i32 %937 to i64
  br label %1054

1054:                                             ; preds = %1052, %1050, %951, %948, %944, %507
  %1055 = phi i64 [ %1053, %1052 ], [ %926, %951 ], [ %926, %948 ], [ %926, %944 ], [ %500, %507 ], [ %1042, %1050 ]
  %1056 = phi i32 [ 0, %1052 ], [ 0, %951 ], [ -1, %948 ], [ 0, %944 ], [ %511, %507 ], [ %1051, %1050 ]
  %1057 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %491, i64 %1055), !nosanitize !20
  %1058 = extractvalue { i64, i1 } %1057, 0, !nosanitize !20
  %1059 = extractvalue { i64, i1 } %1057, 1, !nosanitize !20
  br i1 %1059, label %1060, label %1061, !prof !21, !nosanitize !20

1060:                                             ; preds = %1054
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1061:                                             ; preds = %1054
  %1062 = getelementptr inbounds nuw i8, ptr %490, i64 %1055
  %1063 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %492, i64 %1055), !nosanitize !20
  %1064 = extractvalue { i64, i1 } %1063, 0, !nosanitize !20
  %1065 = extractvalue { i64, i1 } %1063, 1, !nosanitize !20
  br i1 %1065, label %1066, label %1067, !prof !21, !nosanitize !20

1066:                                             ; preds = %1067, %1061
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1067:                                             ; preds = %1061
  %1068 = load i64, ptr %484, align 8, !tbaa !23
  %1069 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1068, i64 %1055), !nosanitize !20
  %1070 = extractvalue { i64, i1 } %1069, 1, !nosanitize !20
  br i1 %1070, label %1066, label %1071, !prof !21, !nosanitize !20

1071:                                             ; preds = %1067
  %1072 = extractvalue { i64, i1 } %1069, 0, !nosanitize !20
  store i64 %1072, ptr %484, align 8, !tbaa !23
  br label %.loopexit80

.loopexit80:                                      ; preds = %905, %899, %753, %1071, %.loopexit78, %.loopexit77
  %1073 = phi ptr [ %1062, %1071 ], [ %490, %.loopexit78 ], [ %490, %.loopexit77 ], [ %490, %753 ], [ %490, %899 ], [ %490, %905 ]
  %1074 = phi i64 [ %1058, %1071 ], [ %491, %.loopexit78 ], [ %491, %.loopexit77 ], [ %491, %753 ], [ %491, %899 ], [ %491, %905 ]
  %1075 = phi i64 [ %1064, %1071 ], [ %492, %.loopexit78 ], [ %492, %.loopexit77 ], [ %492, %753 ], [ %492, %899 ], [ %492, %905 ]
  %1076 = phi i32 [ %1056, %1071 ], [ %912, %.loopexit78 ], [ 0, %.loopexit77 ], [ 0, %753 ], [ 0, %899 ], [ 0, %905 ]
  %1077 = icmp ne i64 %1074, 0
  %1078 = icmp eq i32 %1076, 0
  %1079 = select i1 %1077, i1 %1078, i1 false
  br i1 %1079, label %489, label %1080, !llvm.loop !60

1080:                                             ; preds = %.loopexit80, %515
  %1081 = phi i64 [ %1074, %.loopexit80 ], [ %491, %515 ]
  %1082 = phi i64 [ %1075, %.loopexit80 ], [ %492, %515 ]
  %1083 = icmp eq i64 %1081, 0
  br i1 %1083, label %.loopexit94, label %1084

1084:                                             ; preds = %1080
  %1085 = load i32, ptr %472, align 8, !tbaa !24
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %.loopexit94, label %1087

1087:                                             ; preds = %1084
  %1088 = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 1, ptr %1088, align 4, !tbaa !61
  br label %.loopexit94

.loopexit94:                                      ; preds = %448, %118, %1087, %1084, %1080, %455, %.loopexit98, %.loopexit95, %104, %100
  %1089 = phi i64 [ %1082, %1087 ], [ %1082, %1084 ], [ %1082, %1080 ], [ 0, %455 ], [ 0, %.loopexit98 ], [ 0, %100 ], [ 0, %104 ], [ 0, %.loopexit95 ], [ 0, %118 ], [ 0, %448 ]
  %1090 = udiv i64 %1089, %1
  br label %1091

1091:                                             ; preds = %.loopexit94, %28, %27, %13, %6, %4
  %1092 = phi i64 [ 0, %27 ], [ 0, %4 ], [ 0, %6 ], [ 0, %13 ], [ %1090, %.loopexit94 ], [ 0, %28 ]
  ret i64 %1092
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
  br i1 %3, label %1095, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1095

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
  br i1 %14, label %1095, label %15

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
  br label %1095

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %.loopexit97, label %36

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
  br label %470

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %.preheader976, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %.loopexit97, label %.preheader976

.preheader976:                                    ; preds = %84, %81
  br label %87

87:                                               ; preds = %.backedge, %.preheader976
  %88 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %88, label %457 [
    i32 0, label %89
    i32 1, label %318
    i32 2, label %360
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
  br label %.loopexit94

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
  br label %.loopexit94

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
  switch i32 %121, label %.loopexit94 [
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
  br i1 %153, label %154, label %144, !llvm.loop !70

154:                                              ; preds = %144
  %155 = icmp eq i64 %143, %135
  br i1 %155, label %.loopexit87, label %156

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
  br i1 %172, label %173, label %166, !llvm.loop !71

173:                                              ; preds = %166
  %174 = getelementptr i8, ptr %129, i64 %165
  %175 = getelementptr i8, ptr %130, i64 %165
  %176 = trunc nuw i64 %165 to i32
  %177 = sub i32 %125, %176
  %178 = icmp eq i64 %165, %135
  br i1 %178, label %.loopexit87, label %179

179:                                              ; preds = %173, %156, %132
  %180 = phi ptr [ %129, %132 ], [ %157, %156 ], [ %174, %173 ]
  %181 = phi ptr [ %130, %132 ], [ %158, %156 ], [ %175, %173 ]
  %182 = phi i32 [ %125, %132 ], [ %160, %156 ], [ %177, %173 ]
  %183 = add i32 %182, -1
  %184 = and i32 %182, 7
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %179, %.preheader88
  %186 = phi ptr [ %190, %.preheader88 ], [ %180, %179 ]
  %187 = phi ptr [ %191, %.preheader88 ], [ %181, %179 ]
  %188 = phi i32 [ %192, %.preheader88 ], [ 0, %179 ]
  %189 = load i8, ptr %187, align 1, !tbaa !36
  store i8 %189, ptr %186, align 1, !tbaa !36
  %190 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %191 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %192 = add nuw nsw i32 %188, 1
  %193 = icmp eq i32 %192, %184
  br i1 %193, label %.loopexit89.loopexit, label %.preheader88, !llvm.loop !72

.loopexit89.loopexit:                             ; preds = %.preheader88
  %194 = and i32 %182, -8
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %179
  %195 = phi ptr [ %180, %179 ], [ %190, %.loopexit89.loopexit ]
  %196 = phi ptr [ %181, %179 ], [ %191, %.loopexit89.loopexit ]
  %197 = phi i32 [ %182, %179 ], [ %194, %.loopexit89.loopexit ]
  %198 = icmp ult i32 %183, 7
  br i1 %198, label %.loopexit87, label %.preheader86

.preheader86:                                     ; preds = %.loopexit89, %.preheader86
  %199 = phi ptr [ %225, %.preheader86 ], [ %195, %.loopexit89 ]
  %200 = phi ptr [ %226, %.preheader86 ], [ %196, %.loopexit89 ]
  %201 = phi i32 [ %224, %.preheader86 ], [ %197, %.loopexit89 ]
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
  br i1 %227, label %.loopexit87, label %.preheader86, !llvm.loop !73

.loopexit87:                                      ; preds = %.preheader86, %.loopexit89, %173, %154
  %228 = load i32, ptr %40, align 8, !tbaa !34
  br label %229

229:                                              ; preds = %.loopexit87, %128, %126
  %230 = phi i32 [ %228, %.loopexit87 ], [ %125, %128 ], [ 0, %126 ]
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
  br i1 %262, label %241, label %.loopexit85, !llvm.loop !47

263:                                              ; preds = %246
  %264 = icmp slt i32 %254, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %263
  %266 = load i32, ptr %240, align 4, !tbaa !45
  %267 = icmp eq i32 %266, 11
  br i1 %267, label %268, label %.loopexit95

268:                                              ; preds = %265
  store i32 1, ptr %48, align 4, !tbaa !17
  %269 = icmp eq i32 %242, 0
  br i1 %269, label %270, label %.loopexit85

270:                                              ; preds = %268
  %271 = load i32, ptr %240, align 4, !tbaa !45
  br label %.loopexit95

272:                                              ; preds = %263
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit85

.loopexit95:                                      ; preds = %265, %270
  %273 = phi i32 [ %271, %270 ], [ %266, %265 ]
  %274 = tail call ptr @strerror(i32 noundef %273) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %274) #13
  br label %.loopexit94

.loopexit85:                                      ; preds = %260, %272, %268
  %275 = phi i32 [ %242, %272 ], [ %242, %268 ], [ %261, %260 ]
  %276 = load i32, ptr %40, align 8, !tbaa !34
  %277 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 %275), !nosanitize !20
  %278 = extractvalue { i32, i1 } %277, 1, !nosanitize !20
  br i1 %278, label %279, label %280, !prof !21, !nosanitize !20

279:                                              ; preds = %.loopexit85
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

280:                                              ; preds = %.loopexit85
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
  br label %458

311:                                              ; preds = %305, %301, %297, %294, %291
  %312 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %312, ptr %37, align 8, !tbaa !22
  %313 = zext i32 %284 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %312, ptr align 1 %293, i64 %313, i1 false)
  %314 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %314, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %460

315:                                              ; preds = %286, %283, %115
  %316 = load i32, ptr %41, align 8, !tbaa !26
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %.loopexit96, label %458

318:                                              ; preds = %87
  %319 = load ptr, ptr %44, align 8, !tbaa !30
  %320 = load i32, ptr %42, align 8, !tbaa !27
  %321 = shl i32 %320, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %322 = tail call ptr @__errno_location() #17
  store i32 0, ptr %322, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
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
  %331 = load i32, ptr %49, align 4, !tbaa !46
  %332 = zext i32 %324 to i64
  %333 = getelementptr inbounds nuw i8, ptr %319, i64 %332
  %334 = zext nneg i32 %330 to i64
  %335 = tail call i64 @read(i32 noundef %331, ptr noundef %333, i64 noundef %334) #13
  %336 = trunc i64 %335 to i32
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %346, label %338

338:                                              ; preds = %328
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
  %345 = icmp ult i32 %344, %321
  br i1 %345, label %323, label %.loopexit93, !llvm.loop !47

346:                                              ; preds = %328
  %347 = icmp slt i32 %336, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %346
  %349 = load i32, ptr %322, align 4, !tbaa !45
  %350 = icmp eq i32 %349, 11
  br i1 %350, label %351, label %.loopexit98

351:                                              ; preds = %348
  store i32 1, ptr %48, align 4, !tbaa !17
  %352 = load i32, ptr %0, align 4, !tbaa !45
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %.loopexit93

354:                                              ; preds = %351
  %355 = load i32, ptr %322, align 4, !tbaa !45
  br label %.loopexit98

356:                                              ; preds = %346
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit93

.loopexit98:                                      ; preds = %348, %354
  %357 = phi i32 [ %355, %354 ], [ %349, %348 ]
  %358 = tail call ptr @strerror(i32 noundef %357) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %358) #13
  br label %.loopexit94

.loopexit93:                                      ; preds = %343, %356, %351
  %359 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %359, ptr %37, align 8, !tbaa !22
  br label %.loopexit96

360:                                              ; preds = %87
  %361 = load i32, ptr %42, align 8, !tbaa !27
  %362 = shl i32 %361, 1
  store i32 %362, ptr %43, align 8, !tbaa !48
  %363 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %363, ptr %45, align 8, !tbaa !49
  br label %364

364:                                              ; preds = %441, %360
  %365 = phi i32 [ 0, %360 ], [ %426, %441 ]
  %366 = load i32, ptr %40, align 8, !tbaa !34
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %425

368:                                              ; preds = %364
  %369 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %369, label %.loopexit90 [
    i32 0, label %370
    i32 -5, label %370
  ]

370:                                              ; preds = %368, %368
  %371 = load i32, ptr %39, align 8, !tbaa !24
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %421

373:                                              ; preds = %370
  %374 = load i32, ptr %42, align 8, !tbaa !27
  %375 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %376 = tail call ptr @__errno_location() #17
  store i32 0, ptr %376, align 4, !tbaa !45
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
  %385 = load i32, ptr %49, align 4, !tbaa !46
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
  br i1 %398, label %377, label %.loopexit84, !llvm.loop !47

399:                                              ; preds = %382
  %400 = icmp slt i32 %390, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %399
  %402 = load i32, ptr %376, align 4, !tbaa !45
  %403 = icmp eq i32 %402, 11
  br i1 %403, label %404, label %.loopexit92

404:                                              ; preds = %401
  store i32 1, ptr %48, align 4, !tbaa !17
  %405 = icmp eq i32 %378, 0
  br i1 %405, label %406, label %.loopexit84

406:                                              ; preds = %404
  %407 = load i32, ptr %376, align 4, !tbaa !45
  br label %.loopexit92

408:                                              ; preds = %399
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit84

.loopexit92:                                      ; preds = %401, %406
  %409 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %410 = tail call ptr @strerror(i32 noundef %409) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %410) #13
  %411 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit90

.loopexit84:                                      ; preds = %396, %408, %404
  %412 = phi i32 [ %378, %408 ], [ %378, %404 ], [ %397, %396 ]
  %413 = load i32, ptr %40, align 8, !tbaa !34
  %414 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %413, i32 %412), !nosanitize !20
  %415 = extractvalue { i32, i1 } %414, 1, !nosanitize !20
  br i1 %415, label %416, label %417, !prof !21, !nosanitize !20

416:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

417:                                              ; preds = %.loopexit84
  %418 = extractvalue { i32, i1 } %414, 0, !nosanitize !20
  store i32 %418, ptr %40, align 8, !tbaa !34
  %419 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %419, ptr %46, align 8, !tbaa !35
  %420 = icmp eq i32 %418, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %417, %370
  %422 = load i32, ptr %48, align 4, !tbaa !17
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %.loopexit90

424:                                              ; preds = %421
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit90

425:                                              ; preds = %417, %364
  %426 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %427 = load i32, ptr %43, align 8, !tbaa !48
  %428 = icmp ult i32 %427, %362
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
  br label %.loopexit90

432:                                              ; preds = %430
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit90

433:                                              ; preds = %430
  %434 = load i32, ptr %50, align 4, !tbaa !33
  %435 = icmp eq i32 %434, 1
  br i1 %435, label %436, label %437

436:                                              ; preds = %433
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %.loopexit90

437:                                              ; preds = %433
  %438 = load ptr, ptr %51, align 8, !tbaa !50
  %439 = icmp eq ptr %438, null
  %440 = select i1 %439, ptr @.str.6, ptr %438
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %440) #13
  br label %.loopexit90

441:                                              ; preds = %430
  %442 = icmp ne i32 %427, 0
  %443 = icmp ne i32 %426, 1
  %444 = select i1 %442, i1 %443, i1 false
  br i1 %444, label %364, label %.loopexit90, !llvm.loop !51

.loopexit90:                                      ; preds = %441, %368, %437, %436, %432, %431, %424, %421, %.loopexit92
  %445 = phi i32 [ %365, %421 ], [ %365, %424 ], [ %426, %431 ], [ -4, %432 ], [ 0, %436 ], [ -3, %437 ], [ %411, %.loopexit92 ], [ %369, %368 ], [ %426, %441 ]
  %446 = load i32, ptr %43, align 8, !tbaa !48
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 %446), !nosanitize !20
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !20
  br i1 %448, label %449, label %450, !prof !21, !nosanitize !20

449:                                              ; preds = %.loopexit90
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

450:                                              ; preds = %.loopexit90
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !20
  store i32 %451, ptr %0, align 8, !tbaa !19
  %452 = load ptr, ptr %45, align 8, !tbaa !49
  %453 = zext i32 %451 to i64
  %454 = sub nsw i64 0, %453
  %455 = getelementptr inbounds i8, ptr %452, i64 %454
  store ptr %455, ptr %37, align 8, !tbaa !22
  switch i32 %445, label %.loopexit94 [
    i32 1, label %456
    i32 0, label %458
  ]

456:                                              ; preds = %450
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %458

457:                                              ; preds = %87
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit94

458:                                              ; preds = %456, %450, %315, %309
  %459 = load i32, ptr %0, align 8, !tbaa !19
  br label %460

460:                                              ; preds = %458, %311
  %461 = phi i32 [ %459, %458 ], [ %314, %311 ]
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %.loopexit96

463:                                              ; preds = %460
  %464 = load i32, ptr %39, align 8, !tbaa !24
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %.backedge, label %466

466:                                              ; preds = %463
  %467 = load i32, ptr %40, align 8, !tbaa !34
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %.loopexit96, label %.backedge

.backedge:                                        ; preds = %466, %463
  br label %87, !llvm.loop !52

.loopexit96:                                      ; preds = %466, %460, %315, %.loopexit93
  %469 = load i64, ptr %33, align 8, !tbaa !18
  br label %470

470:                                              ; preds = %.loopexit96, %79
  %471 = phi i64 [ %469, %.loopexit96 ], [ %80, %79 ]
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %.loopexit97, label %55, !llvm.loop !53

.loopexit97:                                      ; preds = %470, %84, %32
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

491:                                              ; preds = %.loopexit79, %.loopexit97
  %492 = phi ptr [ %2, %.loopexit97 ], [ %1075, %.loopexit79 ]
  %493 = phi i64 [ 1, %.loopexit97 ], [ %1076, %.loopexit79 ]
  %494 = phi i64 [ 0, %.loopexit97 ], [ %1077, %.loopexit79 ]
  %495 = call i64 @llvm.umin.i64(i64 %493, i64 4294967295)
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
  br label %1056

514:                                              ; preds = %491
  %515 = load i32, ptr %474, align 8, !tbaa !24
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %514
  %518 = load i32, ptr %475, align 8, !tbaa !25
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %.loopexit83, label %520

520:                                              ; preds = %517, %514
  %521 = load i32, ptr %476, align 8, !tbaa !26
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %.preheader861, label %523

523:                                              ; preds = %520
  %524 = load i32, ptr %477, align 8, !tbaa !27
  %525 = shl i32 %524, 1
  %526 = icmp ugt i32 %525, %496
  br i1 %526, label %.preheader861, label %915

.preheader861:                                    ; preds = %523, %520
  br label %527

527:                                              ; preds = %.preheader861, %910
  %528 = phi i32 [ %911, %910 ], [ %521, %.preheader861 ]
  switch i32 %528, label %898 [
    i32 0, label %529
    i32 1, label %758
    i32 2, label %801
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
  br label %.loopexit77

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
  br label %.loopexit77

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
  switch i32 %561, label %.loopexit77 [
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
  br i1 %595, label %.loopexit70, label %596

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
  br i1 %618, label %.loopexit70, label %619

619:                                              ; preds = %613, %596, %572
  %620 = phi ptr [ %569, %572 ], [ %597, %596 ], [ %614, %613 ]
  %621 = phi ptr [ %570, %572 ], [ %598, %596 ], [ %615, %613 ]
  %622 = phi i32 [ %565, %572 ], [ %600, %596 ], [ %617, %613 ]
  %623 = add i32 %622, -1
  %624 = and i32 %622, 7
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %619, %.preheader71
  %626 = phi ptr [ %630, %.preheader71 ], [ %620, %619 ]
  %627 = phi ptr [ %631, %.preheader71 ], [ %621, %619 ]
  %628 = phi i32 [ %632, %.preheader71 ], [ 0, %619 ]
  %629 = load i8, ptr %627, align 1, !tbaa !36
  store i8 %629, ptr %626, align 1, !tbaa !36
  %630 = getelementptr inbounds nuw i8, ptr %626, i64 1
  %631 = getelementptr inbounds nuw i8, ptr %627, i64 1
  %632 = add nuw nsw i32 %628, 1
  %633 = icmp eq i32 %632, %624
  br i1 %633, label %.loopexit72.loopexit, label %.preheader71, !llvm.loop !76

.loopexit72.loopexit:                             ; preds = %.preheader71
  %634 = and i32 %622, -8
  br label %.loopexit72

.loopexit72:                                      ; preds = %.loopexit72.loopexit, %619
  %635 = phi ptr [ %620, %619 ], [ %630, %.loopexit72.loopexit ]
  %636 = phi ptr [ %621, %619 ], [ %631, %.loopexit72.loopexit ]
  %637 = phi i32 [ %622, %619 ], [ %634, %.loopexit72.loopexit ]
  %638 = icmp ult i32 %623, 7
  br i1 %638, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %.loopexit72, %.preheader
  %639 = phi ptr [ %665, %.preheader ], [ %635, %.loopexit72 ]
  %640 = phi ptr [ %666, %.preheader ], [ %636, %.loopexit72 ]
  %641 = phi i32 [ %664, %.preheader ], [ %637, %.loopexit72 ]
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
  br i1 %667, label %.loopexit70, label %.preheader, !llvm.loop !77

.loopexit70:                                      ; preds = %.preheader, %.loopexit72, %613, %594
  %668 = load i32, ptr %475, align 8, !tbaa !34
  br label %669

669:                                              ; preds = %.loopexit70, %568, %566
  %670 = phi i32 [ %668, %.loopexit70 ], [ %565, %568 ], [ 0, %566 ]
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
  br i1 %702, label %681, label %.loopexit69, !llvm.loop !47

703:                                              ; preds = %686
  %704 = icmp slt i32 %694, 0
  br i1 %704, label %705, label %712

705:                                              ; preds = %703
  %706 = load i32, ptr %680, align 4, !tbaa !45
  %707 = icmp eq i32 %706, 11
  br i1 %707, label %708, label %.loopexit78

708:                                              ; preds = %705
  store i32 1, ptr %482, align 4, !tbaa !17
  %709 = icmp eq i32 %682, 0
  br i1 %709, label %710, label %.loopexit69

710:                                              ; preds = %708
  %711 = load i32, ptr %680, align 4, !tbaa !45
  br label %.loopexit78

712:                                              ; preds = %703
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit69

.loopexit78:                                      ; preds = %705, %710
  %713 = phi i32 [ %711, %710 ], [ %706, %705 ]
  %714 = call ptr @strerror(i32 noundef %713) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %714) #13
  br label %.loopexit77

.loopexit69:                                      ; preds = %700, %712, %708
  %715 = phi i32 [ %682, %712 ], [ %682, %708 ], [ %701, %700 ]
  %716 = load i32, ptr %475, align 8, !tbaa !34
  %717 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %716, i32 %715), !nosanitize !20
  %718 = extractvalue { i32, i1 } %717, 1, !nosanitize !20
  br i1 %718, label %719, label %720, !prof !21, !nosanitize !20

719:                                              ; preds = %.loopexit69
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

720:                                              ; preds = %.loopexit69
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
  br label %899

751:                                              ; preds = %745, %741, %737, %734, %731
  %752 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %752, ptr %473, align 8, !tbaa !22
  %753 = zext i32 %724 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %752, ptr align 1 %733, i64 %753, i1 false)
  %754 = load i32, ptr %475, align 8, !tbaa !34
  store i32 %754, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %476, align 8, !tbaa !26
  br label %901

755:                                              ; preds = %726, %723, %555
  %756 = load i32, ptr %476, align 8, !tbaa !26
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %.loopexit79, label %899

758:                                              ; preds = %527
  %759 = load ptr, ptr %487, align 8, !tbaa !30
  %760 = load i32, ptr %477, align 8, !tbaa !27
  %761 = shl i32 %760, 1
  store i32 0, ptr %482, align 4, !tbaa !17
  %762 = tail call ptr @__errno_location() #17
  store i32 0, ptr %762, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %763

763:                                              ; preds = %783, %758
  %764 = phi i32 [ %784, %783 ], [ 0, %758 ]
  %765 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %761, i32 %764), !nosanitize !20
  %766 = extractvalue { i32, i1 } %765, 1, !nosanitize !20
  br i1 %766, label %767, label %768, !prof !21, !nosanitize !20

767:                                              ; preds = %763
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

768:                                              ; preds = %763
  %769 = extractvalue { i32, i1 } %765, 0, !nosanitize !20
  %770 = call i32 @llvm.umin.i32(i32 %769, i32 1073741824)
  %771 = load i32, ptr %483, align 4, !tbaa !46
  %772 = zext i32 %764 to i64
  %773 = getelementptr inbounds nuw i8, ptr %759, i64 %772
  %774 = zext nneg i32 %770 to i64
  %775 = call i64 @read(i32 noundef %771, ptr noundef %773, i64 noundef %774) #13
  %776 = trunc i64 %775 to i32
  %777 = icmp slt i32 %776, 1
  br i1 %777, label %786, label %778

778:                                              ; preds = %768
  %779 = load i32, ptr %0, align 4, !tbaa !45
  %780 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %779, i32 %776), !nosanitize !20
  %781 = extractvalue { i32, i1 } %780, 1, !nosanitize !20
  br i1 %781, label %782, label %783, !prof !21, !nosanitize !20

782:                                              ; preds = %778
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

783:                                              ; preds = %778
  %784 = extractvalue { i32, i1 } %780, 0, !nosanitize !20
  store i32 %784, ptr %0, align 4, !tbaa !45
  %785 = icmp ult i32 %784, %761
  br i1 %785, label %763, label %.loopexit76, !llvm.loop !47

786:                                              ; preds = %768
  %787 = icmp slt i32 %776, 0
  br i1 %787, label %788, label %796

788:                                              ; preds = %786
  %789 = load i32, ptr %762, align 4, !tbaa !45
  %790 = icmp eq i32 %789, 11
  br i1 %790, label %791, label %797

791:                                              ; preds = %788
  store i32 1, ptr %482, align 4, !tbaa !17
  %792 = load i32, ptr %0, align 4, !tbaa !45
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %794, label %.loopexit76

794:                                              ; preds = %791
  %795 = load i32, ptr %762, align 4, !tbaa !45
  br label %797

796:                                              ; preds = %786
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit76

797:                                              ; preds = %794, %788
  %798 = phi i32 [ %795, %794 ], [ %789, %788 ]
  %799 = call ptr @strerror(i32 noundef %798) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %799) #13
  br label %.loopexit77

.loopexit76:                                      ; preds = %783, %796, %791
  %800 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %800, ptr %473, align 8, !tbaa !22
  br label %.loopexit79

801:                                              ; preds = %527
  %802 = load i32, ptr %477, align 8, !tbaa !27
  %803 = shl i32 %802, 1
  store i32 %803, ptr %478, align 8, !tbaa !48
  %804 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %804, ptr %479, align 8, !tbaa !49
  br label %805

805:                                              ; preds = %882, %801
  %806 = phi i32 [ 0, %801 ], [ %867, %882 ]
  %807 = load i32, ptr %475, align 8, !tbaa !34
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %866

809:                                              ; preds = %805
  %810 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %810, label %.loopexit73 [
    i32 0, label %811
    i32 -5, label %811
  ]

811:                                              ; preds = %809, %809
  %812 = load i32, ptr %474, align 8, !tbaa !24
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %862

814:                                              ; preds = %811
  %815 = load i32, ptr %477, align 8, !tbaa !27
  %816 = load ptr, ptr %481, align 8, !tbaa !29
  store i32 0, ptr %482, align 4, !tbaa !17
  %817 = tail call ptr @__errno_location() #17
  store i32 0, ptr %817, align 4, !tbaa !45
  br label %818

818:                                              ; preds = %837, %814
  %819 = phi i32 [ 0, %814 ], [ %838, %837 ]
  %820 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %815, i32 %819), !nosanitize !20
  %821 = extractvalue { i32, i1 } %820, 1, !nosanitize !20
  br i1 %821, label %822, label %823, !prof !21, !nosanitize !20

822:                                              ; preds = %818
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

823:                                              ; preds = %818
  %824 = extractvalue { i32, i1 } %820, 0, !nosanitize !20
  %825 = call i32 @llvm.umin.i32(i32 %824, i32 1073741824)
  %826 = load i32, ptr %483, align 4, !tbaa !46
  %827 = zext i32 %819 to i64
  %828 = getelementptr inbounds nuw i8, ptr %816, i64 %827
  %829 = zext nneg i32 %825 to i64
  %830 = call i64 @read(i32 noundef %826, ptr noundef %828, i64 noundef %829) #13
  %831 = trunc i64 %830 to i32
  %832 = icmp slt i32 %831, 1
  br i1 %832, label %840, label %833

833:                                              ; preds = %823
  %834 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %819, i32 %831), !nosanitize !20
  %835 = extractvalue { i32, i1 } %834, 1, !nosanitize !20
  br i1 %835, label %836, label %837, !prof !21, !nosanitize !20

836:                                              ; preds = %833
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

837:                                              ; preds = %833
  %838 = extractvalue { i32, i1 } %834, 0, !nosanitize !20
  %839 = icmp ult i32 %838, %815
  br i1 %839, label %818, label %.loopexit, !llvm.loop !47

840:                                              ; preds = %823
  %841 = icmp slt i32 %831, 0
  br i1 %841, label %842, label %849

842:                                              ; preds = %840
  %843 = load i32, ptr %817, align 4, !tbaa !45
  %844 = icmp eq i32 %843, 11
  br i1 %844, label %845, label %.loopexit74

845:                                              ; preds = %842
  store i32 1, ptr %482, align 4, !tbaa !17
  %846 = icmp eq i32 %819, 0
  br i1 %846, label %847, label %.loopexit

847:                                              ; preds = %845
  %848 = load i32, ptr %817, align 4, !tbaa !45
  br label %.loopexit74

849:                                              ; preds = %840
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit

.loopexit74:                                      ; preds = %842, %847
  %850 = phi i32 [ %848, %847 ], [ %843, %842 ]
  %851 = call ptr @strerror(i32 noundef %850) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %851) #13
  %852 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit73

.loopexit:                                        ; preds = %837, %849, %845
  %853 = phi i32 [ %819, %849 ], [ %819, %845 ], [ %838, %837 ]
  %854 = load i32, ptr %475, align 8, !tbaa !34
  %855 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %854, i32 %853), !nosanitize !20
  %856 = extractvalue { i32, i1 } %855, 1, !nosanitize !20
  br i1 %856, label %857, label %858, !prof !21, !nosanitize !20

857:                                              ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

858:                                              ; preds = %.loopexit
  %859 = extractvalue { i32, i1 } %855, 0, !nosanitize !20
  store i32 %859, ptr %475, align 8, !tbaa !34
  %860 = load ptr, ptr %481, align 8, !tbaa !29
  store ptr %860, ptr %480, align 8, !tbaa !35
  %861 = icmp eq i32 %859, 0
  br i1 %861, label %862, label %866

862:                                              ; preds = %858, %811
  %863 = load i32, ptr %482, align 4, !tbaa !17
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %.loopexit73

865:                                              ; preds = %862
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit73

866:                                              ; preds = %858, %805
  %867 = call i32 @inflate(ptr noundef nonnull %480, i32 noundef 0) #13
  %868 = load i32, ptr %478, align 8, !tbaa !48
  %869 = icmp ult i32 %868, %803
  br i1 %869, label %870, label %871

870:                                              ; preds = %866
  store i32 0, ptr %484, align 4, !tbaa !33
  br label %871

871:                                              ; preds = %870, %866
  switch i32 %867, label %882 [
    i32 -2, label %872
    i32 2, label %872
    i32 -4, label %873
    i32 -3, label %874
  ]

872:                                              ; preds = %871, %871
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit73

873:                                              ; preds = %871
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit73

874:                                              ; preds = %871
  %875 = load i32, ptr %484, align 4, !tbaa !33
  %876 = icmp eq i32 %875, 1
  br i1 %876, label %877, label %878

877:                                              ; preds = %874
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %474, align 8, !tbaa !24
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %.loopexit73

878:                                              ; preds = %874
  %879 = load ptr, ptr %485, align 8, !tbaa !50
  %880 = icmp eq ptr %879, null
  %881 = select i1 %880, ptr @.str.6, ptr %879
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %881) #13
  br label %.loopexit73

882:                                              ; preds = %871
  %883 = icmp ne i32 %868, 0
  %884 = icmp ne i32 %867, 1
  %885 = select i1 %883, i1 %884, i1 false
  br i1 %885, label %805, label %.loopexit73, !llvm.loop !51

.loopexit73:                                      ; preds = %882, %809, %878, %877, %873, %872, %865, %862, %.loopexit74
  %886 = phi i32 [ %806, %862 ], [ %806, %865 ], [ %867, %872 ], [ -4, %873 ], [ 0, %877 ], [ -3, %878 ], [ %852, %.loopexit74 ], [ %867, %882 ], [ %810, %809 ]
  %887 = load i32, ptr %478, align 8, !tbaa !48
  %888 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %803, i32 %887), !nosanitize !20
  %889 = extractvalue { i32, i1 } %888, 1, !nosanitize !20
  br i1 %889, label %890, label %891, !prof !21, !nosanitize !20

890:                                              ; preds = %.loopexit73
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

891:                                              ; preds = %.loopexit73
  %892 = extractvalue { i32, i1 } %888, 0, !nosanitize !20
  store i32 %892, ptr %0, align 8, !tbaa !19
  %893 = load ptr, ptr %479, align 8, !tbaa !49
  %894 = zext i32 %892 to i64
  %895 = sub nsw i64 0, %894
  %896 = getelementptr inbounds i8, ptr %893, i64 %895
  store ptr %896, ptr %473, align 8, !tbaa !22
  switch i32 %886, label %.loopexit77 [
    i32 1, label %897
    i32 0, label %899
  ]

897:                                              ; preds = %891
  store i32 0, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %899

898:                                              ; preds = %527
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit77

899:                                              ; preds = %897, %891, %755, %749
  %900 = load i32, ptr %0, align 8, !tbaa !19
  br label %901

901:                                              ; preds = %899, %751
  %902 = phi i32 [ %900, %899 ], [ %754, %751 ]
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %.loopexit79

904:                                              ; preds = %901
  %905 = load i32, ptr %474, align 8, !tbaa !24
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %910, label %907

907:                                              ; preds = %904
  %908 = load i32, ptr %475, align 8, !tbaa !34
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %.loopexit79, label %910

910:                                              ; preds = %907, %904
  %911 = load i32, ptr %476, align 8, !tbaa !26
  br label %527, !llvm.loop !52

.loopexit77:                                      ; preds = %891, %560, %898, %797, %.loopexit78, %546, %542
  %912 = load i32, ptr %0, align 8, !tbaa !19
  %913 = icmp eq i32 %912, 0
  %914 = sext i1 %913 to i32
  br label %.loopexit79

915:                                              ; preds = %523
  %916 = icmp eq i32 %521, 1
  br i1 %916, label %917, label %954

917:                                              ; preds = %915
  store i32 0, ptr %482, align 4, !tbaa !17
  %918 = tail call ptr @__errno_location() #17
  store i32 0, ptr %918, align 4, !tbaa !45
  br label %919

919:                                              ; preds = %938, %917
  %920 = phi i32 [ 0, %917 ], [ %939, %938 ]
  %921 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %920), !nosanitize !20
  %922 = extractvalue { i32, i1 } %921, 1, !nosanitize !20
  br i1 %922, label %923, label %924, !prof !21, !nosanitize !20

923:                                              ; preds = %919
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

924:                                              ; preds = %919
  %925 = extractvalue { i32, i1 } %921, 0, !nosanitize !20
  %926 = call i32 @llvm.umin.i32(i32 %925, i32 1073741824)
  %927 = load i32, ptr %483, align 4, !tbaa !46
  %928 = zext i32 %920 to i64
  %929 = getelementptr inbounds nuw i8, ptr %492, i64 %928
  %930 = zext nneg i32 %926 to i64
  %931 = call i64 @read(i32 noundef %927, ptr noundef %929, i64 noundef %930) #13
  %932 = trunc i64 %931 to i32
  %933 = icmp slt i32 %932, 1
  br i1 %933, label %941, label %934

934:                                              ; preds = %924
  %935 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %920, i32 %932), !nosanitize !20
  %936 = extractvalue { i32, i1 } %935, 1, !nosanitize !20
  br i1 %936, label %937, label %938, !prof !21, !nosanitize !20

937:                                              ; preds = %934
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

938:                                              ; preds = %934
  %939 = extractvalue { i32, i1 } %935, 0, !nosanitize !20
  %940 = icmp ult i32 %939, %496
  br i1 %940, label %919, label %1054, !llvm.loop !47

941:                                              ; preds = %924
  %942 = icmp slt i32 %932, 0
  br i1 %942, label %943, label %953

943:                                              ; preds = %941
  %944 = load i32, ptr %918, align 4, !tbaa !45
  %945 = icmp eq i32 %944, 11
  br i1 %945, label %946, label %950

946:                                              ; preds = %943
  store i32 1, ptr %482, align 4, !tbaa !17
  %947 = icmp eq i32 %920, 0
  br i1 %947, label %948, label %1056

948:                                              ; preds = %946
  %949 = load i32, ptr %918, align 4, !tbaa !45
  br label %950

950:                                              ; preds = %948, %943
  %951 = phi i32 [ %949, %948 ], [ %944, %943 ]
  %952 = call ptr @strerror(i32 noundef %951) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %952) #13
  br label %1056

953:                                              ; preds = %941
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %1056

954:                                              ; preds = %915
  store i32 %496, ptr %478, align 8, !tbaa !58
  store ptr %492, ptr %479, align 8, !tbaa !59
  br label %955

955:                                              ; preds = %1032, %954
  %956 = phi i32 [ 0, %954 ], [ %1017, %1032 ]
  %957 = load i32, ptr %475, align 8, !tbaa !34
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %1016

959:                                              ; preds = %955
  %960 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %960, label %.loopexit80 [
    i32 0, label %961
    i32 -5, label %961
  ]

961:                                              ; preds = %959, %959
  %962 = load i32, ptr %474, align 8, !tbaa !24
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %964, label %1012

964:                                              ; preds = %961
  %965 = load i32, ptr %477, align 8, !tbaa !27
  %966 = load ptr, ptr %481, align 8, !tbaa !29
  store i32 0, ptr %482, align 4, !tbaa !17
  %967 = tail call ptr @__errno_location() #17
  store i32 0, ptr %967, align 4, !tbaa !45
  br label %968

968:                                              ; preds = %987, %964
  %969 = phi i32 [ 0, %964 ], [ %988, %987 ]
  %970 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %965, i32 %969), !nosanitize !20
  %971 = extractvalue { i32, i1 } %970, 1, !nosanitize !20
  br i1 %971, label %972, label %973, !prof !21, !nosanitize !20

972:                                              ; preds = %968
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

973:                                              ; preds = %968
  %974 = extractvalue { i32, i1 } %970, 0, !nosanitize !20
  %975 = call i32 @llvm.umin.i32(i32 %974, i32 1073741824)
  %976 = load i32, ptr %483, align 4, !tbaa !46
  %977 = zext i32 %969 to i64
  %978 = getelementptr inbounds nuw i8, ptr %966, i64 %977
  %979 = zext nneg i32 %975 to i64
  %980 = call i64 @read(i32 noundef %976, ptr noundef %978, i64 noundef %979) #13
  %981 = trunc i64 %980 to i32
  %982 = icmp slt i32 %981, 1
  br i1 %982, label %990, label %983

983:                                              ; preds = %973
  %984 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %969, i32 %981), !nosanitize !20
  %985 = extractvalue { i32, i1 } %984, 1, !nosanitize !20
  br i1 %985, label %986, label %987, !prof !21, !nosanitize !20

986:                                              ; preds = %983
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

987:                                              ; preds = %983
  %988 = extractvalue { i32, i1 } %984, 0, !nosanitize !20
  %989 = icmp ult i32 %988, %965
  br i1 %989, label %968, label %.loopexit75, !llvm.loop !47

990:                                              ; preds = %973
  %991 = icmp slt i32 %981, 0
  br i1 %991, label %992, label %999

992:                                              ; preds = %990
  %993 = load i32, ptr %967, align 4, !tbaa !45
  %994 = icmp eq i32 %993, 11
  br i1 %994, label %995, label %.loopexit82

995:                                              ; preds = %992
  store i32 1, ptr %482, align 4, !tbaa !17
  %996 = icmp eq i32 %969, 0
  br i1 %996, label %997, label %.loopexit75

997:                                              ; preds = %995
  %998 = load i32, ptr %967, align 4, !tbaa !45
  br label %.loopexit82

999:                                              ; preds = %990
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit75

.loopexit82:                                      ; preds = %992, %997
  %1000 = phi i32 [ %998, %997 ], [ %993, %992 ]
  %1001 = call ptr @strerror(i32 noundef %1000) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1001) #13
  %1002 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit80

.loopexit75:                                      ; preds = %987, %999, %995
  %1003 = phi i32 [ %969, %999 ], [ %969, %995 ], [ %988, %987 ]
  %1004 = load i32, ptr %475, align 8, !tbaa !34
  %1005 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1004, i32 %1003), !nosanitize !20
  %1006 = extractvalue { i32, i1 } %1005, 1, !nosanitize !20
  br i1 %1006, label %1007, label %1008, !prof !21, !nosanitize !20

1007:                                             ; preds = %.loopexit75
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1008:                                             ; preds = %.loopexit75
  %1009 = extractvalue { i32, i1 } %1005, 0, !nosanitize !20
  store i32 %1009, ptr %475, align 8, !tbaa !34
  %1010 = load ptr, ptr %481, align 8, !tbaa !29
  store ptr %1010, ptr %480, align 8, !tbaa !35
  %1011 = icmp eq i32 %1009, 0
  br i1 %1011, label %1012, label %1016

1012:                                             ; preds = %1008, %961
  %1013 = load i32, ptr %482, align 4, !tbaa !17
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %.loopexit80

1015:                                             ; preds = %1012
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit80

1016:                                             ; preds = %1008, %955
  %1017 = call i32 @inflate(ptr noundef nonnull %480, i32 noundef 0) #13
  %1018 = load i32, ptr %478, align 8, !tbaa !48
  %1019 = icmp ult i32 %1018, %496
  br i1 %1019, label %1020, label %1021

1020:                                             ; preds = %1016
  store i32 0, ptr %484, align 4, !tbaa !33
  br label %1021

1021:                                             ; preds = %1020, %1016
  switch i32 %1017, label %1032 [
    i32 -2, label %1022
    i32 2, label %1022
    i32 -4, label %1023
    i32 -3, label %1024
  ]

1022:                                             ; preds = %1021, %1021
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit80

1023:                                             ; preds = %1021
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit80

1024:                                             ; preds = %1021
  %1025 = load i32, ptr %484, align 4, !tbaa !33
  %1026 = icmp eq i32 %1025, 1
  br i1 %1026, label %1027, label %1028

1027:                                             ; preds = %1024
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %474, align 8, !tbaa !24
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %.loopexit80

1028:                                             ; preds = %1024
  %1029 = load ptr, ptr %485, align 8, !tbaa !50
  %1030 = icmp eq ptr %1029, null
  %1031 = select i1 %1030, ptr @.str.6, ptr %1029
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1031) #13
  br label %.loopexit80

1032:                                             ; preds = %1021
  %1033 = icmp ne i32 %1018, 0
  %1034 = icmp ne i32 %1017, 1
  %1035 = select i1 %1033, i1 %1034, i1 false
  br i1 %1035, label %955, label %.loopexit80, !llvm.loop !51

.loopexit80:                                      ; preds = %1032, %959, %1028, %1027, %1023, %1022, %1015, %1012, %.loopexit82
  %1036 = phi i32 [ %956, %1012 ], [ %956, %1015 ], [ %1017, %1022 ], [ -4, %1023 ], [ 0, %1027 ], [ -3, %1028 ], [ %1002, %.loopexit82 ], [ %960, %959 ], [ %1017, %1032 ]
  %1037 = load i32, ptr %478, align 8, !tbaa !48
  %1038 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %1037), !nosanitize !20
  %1039 = extractvalue { i32, i1 } %1038, 1, !nosanitize !20
  br i1 %1039, label %1040, label %1041, !prof !21, !nosanitize !20

1040:                                             ; preds = %.loopexit80
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1041:                                             ; preds = %.loopexit80
  %1042 = extractvalue { i32, i1 } %1038, 0, !nosanitize !20
  %1043 = load ptr, ptr %479, align 8, !tbaa !49
  %1044 = zext i32 %1042 to i64
  %1045 = sub nsw i64 0, %1044
  %1046 = getelementptr inbounds i8, ptr %1043, i64 %1045
  store ptr %1046, ptr %473, align 8, !tbaa !22
  %1047 = icmp eq i32 %1036, 1
  br i1 %1047, label %1048, label %1049

1048:                                             ; preds = %1041
  store i32 0, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %1052

1049:                                             ; preds = %1041
  %1050 = icmp ne i32 %1036, 0
  %1051 = sext i1 %1050 to i32
  br label %1052

1052:                                             ; preds = %1049, %1048
  %1053 = phi i32 [ 0, %1048 ], [ %1051, %1049 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1056

1054:                                             ; preds = %938
  %1055 = zext i32 %939 to i64
  br label %1056

1056:                                             ; preds = %1054, %1052, %953, %950, %946, %509
  %1057 = phi i64 [ %1055, %1054 ], [ %928, %953 ], [ %928, %950 ], [ %928, %946 ], [ %502, %509 ], [ %1044, %1052 ]
  %1058 = phi i32 [ 0, %1054 ], [ 0, %953 ], [ -1, %950 ], [ 0, %946 ], [ %513, %509 ], [ %1053, %1052 ]
  %1059 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %493, i64 %1057), !nosanitize !20
  %1060 = extractvalue { i64, i1 } %1059, 0, !nosanitize !20
  %1061 = extractvalue { i64, i1 } %1059, 1, !nosanitize !20
  br i1 %1061, label %1062, label %1063, !prof !21, !nosanitize !20

1062:                                             ; preds = %1056
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1063:                                             ; preds = %1056
  %1064 = getelementptr inbounds nuw i8, ptr %492, i64 %1057
  %1065 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %494, i64 %1057), !nosanitize !20
  %1066 = extractvalue { i64, i1 } %1065, 0, !nosanitize !20
  %1067 = extractvalue { i64, i1 } %1065, 1, !nosanitize !20
  br i1 %1067, label %1068, label %1069, !prof !21, !nosanitize !20

1068:                                             ; preds = %1069, %1063
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1069:                                             ; preds = %1063
  %1070 = load i64, ptr %486, align 8, !tbaa !23
  %1071 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1070, i64 %1057), !nosanitize !20
  %1072 = extractvalue { i64, i1 } %1071, 1, !nosanitize !20
  br i1 %1072, label %1068, label %1073, !prof !21, !nosanitize !20

1073:                                             ; preds = %1069
  %1074 = extractvalue { i64, i1 } %1071, 0, !nosanitize !20
  store i64 %1074, ptr %486, align 8, !tbaa !23
  br label %.loopexit79

.loopexit79:                                      ; preds = %907, %901, %755, %1073, %.loopexit77, %.loopexit76
  %1075 = phi ptr [ %1064, %1073 ], [ %492, %.loopexit77 ], [ %492, %.loopexit76 ], [ %492, %755 ], [ %492, %901 ], [ %492, %907 ]
  %1076 = phi i64 [ %1060, %1073 ], [ %493, %.loopexit77 ], [ %493, %.loopexit76 ], [ %493, %755 ], [ %493, %901 ], [ %493, %907 ]
  %1077 = phi i64 [ %1066, %1073 ], [ %494, %.loopexit77 ], [ %494, %.loopexit76 ], [ %494, %755 ], [ %494, %901 ], [ %494, %907 ]
  %1078 = phi i32 [ %1058, %1073 ], [ %914, %.loopexit77 ], [ 0, %.loopexit76 ], [ 0, %755 ], [ 0, %901 ], [ 0, %907 ]
  %1079 = icmp ne i64 %1076, 0
  %1080 = icmp eq i32 %1078, 0
  %1081 = select i1 %1079, i1 %1080, i1 false
  br i1 %1081, label %491, label %1082, !llvm.loop !60

1082:                                             ; preds = %.loopexit79
  %1083 = icmp eq i64 %1076, 0
  br i1 %1083, label %1089, label %1084

1084:                                             ; preds = %1082
  %1085 = load i32, ptr %474, align 8, !tbaa !24
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1089, label %.loopexit83

.loopexit83:                                      ; preds = %517, %1084
  %1087 = phi i64 [ %1077, %1084 ], [ %494, %517 ]
  %1088 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1088, align 4, !tbaa !61
  br label %1089

1089:                                             ; preds = %.loopexit83, %1084, %1082
  %1090 = phi i64 [ %1087, %.loopexit83 ], [ %1077, %1084 ], [ %1077, %1082 ]
  %1091 = freeze i64 %1090
  %1092 = icmp eq i64 %1091, 0
  %1093 = load i8, ptr %2, align 1
  %1094 = zext i8 %1093 to i32
  br i1 %1092, label %.loopexit94, label %1095

.loopexit94:                                      ; preds = %450, %120, %1089, %457, %.loopexit98, %.loopexit95, %106, %102
  br label %1095

1095:                                             ; preds = %.loopexit94, %1089, %25, %11, %4, %1
  %1096 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %.loopexit94 ], [ %1094, %1089 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %1096
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
  br i1 %3, label %1095, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %1095

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
  br i1 %14, label %1095, label %15

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
  br label %1095

32:                                               ; preds = %15
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = load i64, ptr %33, align 8, !tbaa !18
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %.loopexit97, label %36

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
  br label %470

81:                                               ; preds = %55
  %82 = load i32, ptr %39, align 8, !tbaa !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %.preheader976, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %40, align 8, !tbaa !25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %.loopexit97, label %.preheader976

.preheader976:                                    ; preds = %84, %81
  br label %87

87:                                               ; preds = %.backedge, %.preheader976
  %88 = load i32, ptr %41, align 8, !tbaa !26
  switch i32 %88, label %457 [
    i32 0, label %89
    i32 1, label %318
    i32 2, label %360
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
  br label %.loopexit94

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
  br label %.loopexit94

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
  switch i32 %121, label %.loopexit94 [
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
  br i1 %155, label %.loopexit87, label %156

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
  br i1 %178, label %.loopexit87, label %179

179:                                              ; preds = %173, %156, %132
  %180 = phi ptr [ %129, %132 ], [ %157, %156 ], [ %174, %173 ]
  %181 = phi ptr [ %130, %132 ], [ %158, %156 ], [ %175, %173 ]
  %182 = phi i32 [ %125, %132 ], [ %160, %156 ], [ %177, %173 ]
  %183 = add i32 %182, -1
  %184 = and i32 %182, 7
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %179, %.preheader88
  %186 = phi ptr [ %190, %.preheader88 ], [ %180, %179 ]
  %187 = phi ptr [ %191, %.preheader88 ], [ %181, %179 ]
  %188 = phi i32 [ %192, %.preheader88 ], [ 0, %179 ]
  %189 = load i8, ptr %187, align 1, !tbaa !36
  store i8 %189, ptr %186, align 1, !tbaa !36
  %190 = getelementptr inbounds nuw i8, ptr %186, i64 1
  %191 = getelementptr inbounds nuw i8, ptr %187, i64 1
  %192 = add nuw nsw i32 %188, 1
  %193 = icmp eq i32 %192, %184
  br i1 %193, label %.loopexit89.loopexit, label %.preheader88, !llvm.loop !80

.loopexit89.loopexit:                             ; preds = %.preheader88
  %194 = and i32 %182, -8
  br label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit89.loopexit, %179
  %195 = phi ptr [ %180, %179 ], [ %190, %.loopexit89.loopexit ]
  %196 = phi ptr [ %181, %179 ], [ %191, %.loopexit89.loopexit ]
  %197 = phi i32 [ %182, %179 ], [ %194, %.loopexit89.loopexit ]
  %198 = icmp ult i32 %183, 7
  br i1 %198, label %.loopexit87, label %.preheader86

.preheader86:                                     ; preds = %.loopexit89, %.preheader86
  %199 = phi ptr [ %225, %.preheader86 ], [ %195, %.loopexit89 ]
  %200 = phi ptr [ %226, %.preheader86 ], [ %196, %.loopexit89 ]
  %201 = phi i32 [ %224, %.preheader86 ], [ %197, %.loopexit89 ]
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
  br i1 %227, label %.loopexit87, label %.preheader86, !llvm.loop !81

.loopexit87:                                      ; preds = %.preheader86, %.loopexit89, %173, %154
  %228 = load i32, ptr %40, align 8, !tbaa !34
  br label %229

229:                                              ; preds = %.loopexit87, %128, %126
  %230 = phi i32 [ %228, %.loopexit87 ], [ %125, %128 ], [ 0, %126 ]
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
  br i1 %262, label %241, label %.loopexit85, !llvm.loop !47

263:                                              ; preds = %246
  %264 = icmp slt i32 %254, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %263
  %266 = load i32, ptr %240, align 4, !tbaa !45
  %267 = icmp eq i32 %266, 11
  br i1 %267, label %268, label %.loopexit95

268:                                              ; preds = %265
  store i32 1, ptr %48, align 4, !tbaa !17
  %269 = icmp eq i32 %242, 0
  br i1 %269, label %270, label %.loopexit85

270:                                              ; preds = %268
  %271 = load i32, ptr %240, align 4, !tbaa !45
  br label %.loopexit95

272:                                              ; preds = %263
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit85

.loopexit95:                                      ; preds = %265, %270
  %273 = phi i32 [ %271, %270 ], [ %266, %265 ]
  %274 = tail call ptr @strerror(i32 noundef %273) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %274) #13
  br label %.loopexit94

.loopexit85:                                      ; preds = %260, %272, %268
  %275 = phi i32 [ %242, %272 ], [ %242, %268 ], [ %261, %260 ]
  %276 = load i32, ptr %40, align 8, !tbaa !34
  %277 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 %275), !nosanitize !20
  %278 = extractvalue { i32, i1 } %277, 1, !nosanitize !20
  br i1 %278, label %279, label %280, !prof !21, !nosanitize !20

279:                                              ; preds = %.loopexit85
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

280:                                              ; preds = %.loopexit85
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
  br label %458

311:                                              ; preds = %305, %301, %297, %294, %291
  %312 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %312, ptr %37, align 8, !tbaa !22
  %313 = zext i32 %284 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %312, ptr align 1 %293, i64 %313, i1 false)
  %314 = load i32, ptr %40, align 8, !tbaa !34
  store i32 %314, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %41, align 8, !tbaa !26
  br label %460

315:                                              ; preds = %286, %283, %115
  %316 = load i32, ptr %41, align 8, !tbaa !26
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %.loopexit96, label %458

318:                                              ; preds = %87
  %319 = load ptr, ptr %44, align 8, !tbaa !30
  %320 = load i32, ptr %42, align 8, !tbaa !27
  %321 = shl i32 %320, 1
  store i32 0, ptr %48, align 4, !tbaa !17
  %322 = tail call ptr @__errno_location() #17
  store i32 0, ptr %322, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
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
  %331 = load i32, ptr %49, align 4, !tbaa !46
  %332 = zext i32 %324 to i64
  %333 = getelementptr inbounds nuw i8, ptr %319, i64 %332
  %334 = zext nneg i32 %330 to i64
  %335 = tail call i64 @read(i32 noundef %331, ptr noundef %333, i64 noundef %334) #13
  %336 = trunc i64 %335 to i32
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %346, label %338

338:                                              ; preds = %328
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
  %345 = icmp ult i32 %344, %321
  br i1 %345, label %323, label %.loopexit93, !llvm.loop !47

346:                                              ; preds = %328
  %347 = icmp slt i32 %336, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %346
  %349 = load i32, ptr %322, align 4, !tbaa !45
  %350 = icmp eq i32 %349, 11
  br i1 %350, label %351, label %.loopexit98

351:                                              ; preds = %348
  store i32 1, ptr %48, align 4, !tbaa !17
  %352 = load i32, ptr %0, align 4, !tbaa !45
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %.loopexit93

354:                                              ; preds = %351
  %355 = load i32, ptr %322, align 4, !tbaa !45
  br label %.loopexit98

356:                                              ; preds = %346
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit93

.loopexit98:                                      ; preds = %348, %354
  %357 = phi i32 [ %355, %354 ], [ %349, %348 ]
  %358 = tail call ptr @strerror(i32 noundef %357) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %358) #13
  br label %.loopexit94

.loopexit93:                                      ; preds = %343, %356, %351
  %359 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %359, ptr %37, align 8, !tbaa !22
  br label %.loopexit96

360:                                              ; preds = %87
  %361 = load i32, ptr %42, align 8, !tbaa !27
  %362 = shl i32 %361, 1
  store i32 %362, ptr %43, align 8, !tbaa !48
  %363 = load ptr, ptr %44, align 8, !tbaa !30
  store ptr %363, ptr %45, align 8, !tbaa !49
  br label %364

364:                                              ; preds = %441, %360
  %365 = phi i32 [ 0, %360 ], [ %426, %441 ]
  %366 = load i32, ptr %40, align 8, !tbaa !34
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %425

368:                                              ; preds = %364
  %369 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %369, label %.loopexit90 [
    i32 0, label %370
    i32 -5, label %370
  ]

370:                                              ; preds = %368, %368
  %371 = load i32, ptr %39, align 8, !tbaa !24
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %421

373:                                              ; preds = %370
  %374 = load i32, ptr %42, align 8, !tbaa !27
  %375 = load ptr, ptr %47, align 8, !tbaa !29
  store i32 0, ptr %48, align 4, !tbaa !17
  %376 = tail call ptr @__errno_location() #17
  store i32 0, ptr %376, align 4, !tbaa !45
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
  %385 = load i32, ptr %49, align 4, !tbaa !46
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
  br i1 %398, label %377, label %.loopexit84, !llvm.loop !47

399:                                              ; preds = %382
  %400 = icmp slt i32 %390, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %399
  %402 = load i32, ptr %376, align 4, !tbaa !45
  %403 = icmp eq i32 %402, 11
  br i1 %403, label %404, label %.loopexit92

404:                                              ; preds = %401
  store i32 1, ptr %48, align 4, !tbaa !17
  %405 = icmp eq i32 %378, 0
  br i1 %405, label %406, label %.loopexit84

406:                                              ; preds = %404
  %407 = load i32, ptr %376, align 4, !tbaa !45
  br label %.loopexit92

408:                                              ; preds = %399
  store i32 1, ptr %39, align 8, !tbaa !24
  br label %.loopexit84

.loopexit92:                                      ; preds = %401, %406
  %409 = phi i32 [ %407, %406 ], [ %402, %401 ]
  %410 = tail call ptr @strerror(i32 noundef %409) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %410) #13
  %411 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit90

.loopexit84:                                      ; preds = %396, %408, %404
  %412 = phi i32 [ %378, %408 ], [ %378, %404 ], [ %397, %396 ]
  %413 = load i32, ptr %40, align 8, !tbaa !34
  %414 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %413, i32 %412), !nosanitize !20
  %415 = extractvalue { i32, i1 } %414, 1, !nosanitize !20
  br i1 %415, label %416, label %417, !prof !21, !nosanitize !20

416:                                              ; preds = %.loopexit84
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

417:                                              ; preds = %.loopexit84
  %418 = extractvalue { i32, i1 } %414, 0, !nosanitize !20
  store i32 %418, ptr %40, align 8, !tbaa !34
  %419 = load ptr, ptr %47, align 8, !tbaa !29
  store ptr %419, ptr %46, align 8, !tbaa !35
  %420 = icmp eq i32 %418, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %417, %370
  %422 = load i32, ptr %48, align 4, !tbaa !17
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %.loopexit90

424:                                              ; preds = %421
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit90

425:                                              ; preds = %417, %364
  %426 = tail call i32 @inflate(ptr noundef nonnull %46, i32 noundef 0) #13
  %427 = load i32, ptr %43, align 8, !tbaa !48
  %428 = icmp ult i32 %427, %362
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
  br label %.loopexit90

432:                                              ; preds = %430
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit90

433:                                              ; preds = %430
  %434 = load i32, ptr %50, align 4, !tbaa !33
  %435 = icmp eq i32 %434, 1
  br i1 %435, label %436, label %437

436:                                              ; preds = %433
  store i32 0, ptr %40, align 8, !tbaa !34
  store i32 1, ptr %39, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %.loopexit90

437:                                              ; preds = %433
  %438 = load ptr, ptr %51, align 8, !tbaa !50
  %439 = icmp eq ptr %438, null
  %440 = select i1 %439, ptr @.str.6, ptr %438
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %440) #13
  br label %.loopexit90

441:                                              ; preds = %430
  %442 = icmp ne i32 %427, 0
  %443 = icmp ne i32 %426, 1
  %444 = select i1 %442, i1 %443, i1 false
  br i1 %444, label %364, label %.loopexit90, !llvm.loop !51

.loopexit90:                                      ; preds = %441, %368, %437, %436, %432, %431, %424, %421, %.loopexit92
  %445 = phi i32 [ %365, %421 ], [ %365, %424 ], [ %426, %431 ], [ -4, %432 ], [ 0, %436 ], [ -3, %437 ], [ %411, %.loopexit92 ], [ %426, %441 ], [ %369, %368 ]
  %446 = load i32, ptr %43, align 8, !tbaa !48
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 %446), !nosanitize !20
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !20
  br i1 %448, label %449, label %450, !prof !21, !nosanitize !20

449:                                              ; preds = %.loopexit90
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

450:                                              ; preds = %.loopexit90
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !20
  store i32 %451, ptr %0, align 8, !tbaa !19
  %452 = load ptr, ptr %45, align 8, !tbaa !49
  %453 = zext i32 %451 to i64
  %454 = sub nsw i64 0, %453
  %455 = getelementptr inbounds i8, ptr %452, i64 %454
  store ptr %455, ptr %37, align 8, !tbaa !22
  switch i32 %445, label %.loopexit94 [
    i32 1, label %456
    i32 0, label %458
  ]

456:                                              ; preds = %450
  store i32 0, ptr %50, align 4, !tbaa !33
  store i32 0, ptr %41, align 8, !tbaa !26
  br label %458

457:                                              ; preds = %87
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit94

458:                                              ; preds = %456, %450, %315, %309
  %459 = load i32, ptr %0, align 8, !tbaa !19
  br label %460

460:                                              ; preds = %458, %311
  %461 = phi i32 [ %459, %458 ], [ %314, %311 ]
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %.loopexit96

463:                                              ; preds = %460
  %464 = load i32, ptr %39, align 8, !tbaa !24
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %.backedge, label %466

466:                                              ; preds = %463
  %467 = load i32, ptr %40, align 8, !tbaa !34
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %.loopexit96, label %.backedge

.backedge:                                        ; preds = %466, %463
  br label %87, !llvm.loop !52

.loopexit96:                                      ; preds = %466, %460, %315, %.loopexit93
  %469 = load i64, ptr %33, align 8, !tbaa !18
  br label %470

470:                                              ; preds = %.loopexit96, %79
  %471 = phi i64 [ %469, %.loopexit96 ], [ %80, %79 ]
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %.loopexit97, label %55, !llvm.loop !53

.loopexit97:                                      ; preds = %470, %84, %32
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

491:                                              ; preds = %.loopexit79, %.loopexit97
  %492 = phi ptr [ %2, %.loopexit97 ], [ %1075, %.loopexit79 ]
  %493 = phi i64 [ 1, %.loopexit97 ], [ %1076, %.loopexit79 ]
  %494 = phi i64 [ 0, %.loopexit97 ], [ %1077, %.loopexit79 ]
  %495 = call i64 @llvm.umin.i64(i64 %493, i64 4294967295)
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
  br label %1056

514:                                              ; preds = %491
  %515 = load i32, ptr %474, align 8, !tbaa !24
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %514
  %518 = load i32, ptr %475, align 8, !tbaa !25
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %.loopexit83, label %520

520:                                              ; preds = %517, %514
  %521 = load i32, ptr %476, align 8, !tbaa !26
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %.preheader861, label %523

523:                                              ; preds = %520
  %524 = load i32, ptr %477, align 8, !tbaa !27
  %525 = shl i32 %524, 1
  %526 = icmp ugt i32 %525, %496
  br i1 %526, label %.preheader861, label %915

.preheader861:                                    ; preds = %523, %520
  br label %527

527:                                              ; preds = %.preheader861, %910
  %528 = phi i32 [ %911, %910 ], [ %521, %.preheader861 ]
  switch i32 %528, label %898 [
    i32 0, label %529
    i32 1, label %758
    i32 2, label %801
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
  br label %.loopexit77

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
  br label %.loopexit77

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
  switch i32 %561, label %.loopexit77 [
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
  br i1 %593, label %594, label %584, !llvm.loop !82

594:                                              ; preds = %584
  %595 = icmp eq i64 %583, %575
  br i1 %595, label %.loopexit70, label %596

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
  br i1 %612, label %613, label %606, !llvm.loop !83

613:                                              ; preds = %606
  %614 = getelementptr i8, ptr %569, i64 %605
  %615 = getelementptr i8, ptr %570, i64 %605
  %616 = trunc nuw i64 %605 to i32
  %617 = sub i32 %565, %616
  %618 = icmp eq i64 %605, %575
  br i1 %618, label %.loopexit70, label %619

619:                                              ; preds = %613, %596, %572
  %620 = phi ptr [ %569, %572 ], [ %597, %596 ], [ %614, %613 ]
  %621 = phi ptr [ %570, %572 ], [ %598, %596 ], [ %615, %613 ]
  %622 = phi i32 [ %565, %572 ], [ %600, %596 ], [ %617, %613 ]
  %623 = add i32 %622, -1
  %624 = and i32 %622, 7
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %.loopexit72, label %.preheader71

.preheader71:                                     ; preds = %619, %.preheader71
  %626 = phi ptr [ %630, %.preheader71 ], [ %620, %619 ]
  %627 = phi ptr [ %631, %.preheader71 ], [ %621, %619 ]
  %628 = phi i32 [ %632, %.preheader71 ], [ 0, %619 ]
  %629 = load i8, ptr %627, align 1, !tbaa !36
  store i8 %629, ptr %626, align 1, !tbaa !36
  %630 = getelementptr inbounds nuw i8, ptr %626, i64 1
  %631 = getelementptr inbounds nuw i8, ptr %627, i64 1
  %632 = add nuw nsw i32 %628, 1
  %633 = icmp eq i32 %632, %624
  br i1 %633, label %.loopexit72.loopexit, label %.preheader71, !llvm.loop !84

.loopexit72.loopexit:                             ; preds = %.preheader71
  %634 = and i32 %622, -8
  br label %.loopexit72

.loopexit72:                                      ; preds = %.loopexit72.loopexit, %619
  %635 = phi ptr [ %620, %619 ], [ %630, %.loopexit72.loopexit ]
  %636 = phi ptr [ %621, %619 ], [ %631, %.loopexit72.loopexit ]
  %637 = phi i32 [ %622, %619 ], [ %634, %.loopexit72.loopexit ]
  %638 = icmp ult i32 %623, 7
  br i1 %638, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %.loopexit72, %.preheader
  %639 = phi ptr [ %665, %.preheader ], [ %635, %.loopexit72 ]
  %640 = phi ptr [ %666, %.preheader ], [ %636, %.loopexit72 ]
  %641 = phi i32 [ %664, %.preheader ], [ %637, %.loopexit72 ]
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
  br i1 %667, label %.loopexit70, label %.preheader, !llvm.loop !85

.loopexit70:                                      ; preds = %.preheader, %.loopexit72, %613, %594
  %668 = load i32, ptr %475, align 8, !tbaa !34
  br label %669

669:                                              ; preds = %.loopexit70, %568, %566
  %670 = phi i32 [ %668, %.loopexit70 ], [ %565, %568 ], [ 0, %566 ]
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
  br i1 %702, label %681, label %.loopexit69, !llvm.loop !47

703:                                              ; preds = %686
  %704 = icmp slt i32 %694, 0
  br i1 %704, label %705, label %712

705:                                              ; preds = %703
  %706 = load i32, ptr %680, align 4, !tbaa !45
  %707 = icmp eq i32 %706, 11
  br i1 %707, label %708, label %.loopexit78

708:                                              ; preds = %705
  store i32 1, ptr %482, align 4, !tbaa !17
  %709 = icmp eq i32 %682, 0
  br i1 %709, label %710, label %.loopexit69

710:                                              ; preds = %708
  %711 = load i32, ptr %680, align 4, !tbaa !45
  br label %.loopexit78

712:                                              ; preds = %703
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit69

.loopexit78:                                      ; preds = %705, %710
  %713 = phi i32 [ %711, %710 ], [ %706, %705 ]
  %714 = call ptr @strerror(i32 noundef %713) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %714) #13
  br label %.loopexit77

.loopexit69:                                      ; preds = %700, %712, %708
  %715 = phi i32 [ %682, %712 ], [ %682, %708 ], [ %701, %700 ]
  %716 = load i32, ptr %475, align 8, !tbaa !34
  %717 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %716, i32 %715), !nosanitize !20
  %718 = extractvalue { i32, i1 } %717, 1, !nosanitize !20
  br i1 %718, label %719, label %720, !prof !21, !nosanitize !20

719:                                              ; preds = %.loopexit69
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

720:                                              ; preds = %.loopexit69
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
  br label %899

751:                                              ; preds = %745, %741, %737, %734, %731
  %752 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %752, ptr %473, align 8, !tbaa !22
  %753 = zext i32 %724 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %752, ptr align 1 %733, i64 %753, i1 false)
  %754 = load i32, ptr %475, align 8, !tbaa !34
  store i32 %754, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %476, align 8, !tbaa !26
  br label %901

755:                                              ; preds = %726, %723, %555
  %756 = load i32, ptr %476, align 8, !tbaa !26
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %.loopexit79, label %899

758:                                              ; preds = %527
  %759 = load ptr, ptr %487, align 8, !tbaa !30
  %760 = load i32, ptr %477, align 8, !tbaa !27
  %761 = shl i32 %760, 1
  store i32 0, ptr %482, align 4, !tbaa !17
  %762 = tail call ptr @__errno_location() #17
  store i32 0, ptr %762, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %763

763:                                              ; preds = %783, %758
  %764 = phi i32 [ %784, %783 ], [ 0, %758 ]
  %765 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %761, i32 %764), !nosanitize !20
  %766 = extractvalue { i32, i1 } %765, 1, !nosanitize !20
  br i1 %766, label %767, label %768, !prof !21, !nosanitize !20

767:                                              ; preds = %763
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

768:                                              ; preds = %763
  %769 = extractvalue { i32, i1 } %765, 0, !nosanitize !20
  %770 = call i32 @llvm.umin.i32(i32 %769, i32 1073741824)
  %771 = load i32, ptr %483, align 4, !tbaa !46
  %772 = zext i32 %764 to i64
  %773 = getelementptr inbounds nuw i8, ptr %759, i64 %772
  %774 = zext nneg i32 %770 to i64
  %775 = call i64 @read(i32 noundef %771, ptr noundef %773, i64 noundef %774) #13
  %776 = trunc i64 %775 to i32
  %777 = icmp slt i32 %776, 1
  br i1 %777, label %786, label %778

778:                                              ; preds = %768
  %779 = load i32, ptr %0, align 4, !tbaa !45
  %780 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %779, i32 %776), !nosanitize !20
  %781 = extractvalue { i32, i1 } %780, 1, !nosanitize !20
  br i1 %781, label %782, label %783, !prof !21, !nosanitize !20

782:                                              ; preds = %778
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

783:                                              ; preds = %778
  %784 = extractvalue { i32, i1 } %780, 0, !nosanitize !20
  store i32 %784, ptr %0, align 4, !tbaa !45
  %785 = icmp ult i32 %784, %761
  br i1 %785, label %763, label %.loopexit76, !llvm.loop !47

786:                                              ; preds = %768
  %787 = icmp slt i32 %776, 0
  br i1 %787, label %788, label %796

788:                                              ; preds = %786
  %789 = load i32, ptr %762, align 4, !tbaa !45
  %790 = icmp eq i32 %789, 11
  br i1 %790, label %791, label %797

791:                                              ; preds = %788
  store i32 1, ptr %482, align 4, !tbaa !17
  %792 = load i32, ptr %0, align 4, !tbaa !45
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %794, label %.loopexit76

794:                                              ; preds = %791
  %795 = load i32, ptr %762, align 4, !tbaa !45
  br label %797

796:                                              ; preds = %786
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit76

797:                                              ; preds = %794, %788
  %798 = phi i32 [ %795, %794 ], [ %789, %788 ]
  %799 = call ptr @strerror(i32 noundef %798) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %799) #13
  br label %.loopexit77

.loopexit76:                                      ; preds = %783, %796, %791
  %800 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %800, ptr %473, align 8, !tbaa !22
  br label %.loopexit79

801:                                              ; preds = %527
  %802 = load i32, ptr %477, align 8, !tbaa !27
  %803 = shl i32 %802, 1
  store i32 %803, ptr %478, align 8, !tbaa !48
  %804 = load ptr, ptr %487, align 8, !tbaa !30
  store ptr %804, ptr %479, align 8, !tbaa !49
  br label %805

805:                                              ; preds = %882, %801
  %806 = phi i32 [ 0, %801 ], [ %867, %882 ]
  %807 = load i32, ptr %475, align 8, !tbaa !34
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %866

809:                                              ; preds = %805
  %810 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %810, label %.loopexit73 [
    i32 0, label %811
    i32 -5, label %811
  ]

811:                                              ; preds = %809, %809
  %812 = load i32, ptr %474, align 8, !tbaa !24
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %862

814:                                              ; preds = %811
  %815 = load i32, ptr %477, align 8, !tbaa !27
  %816 = load ptr, ptr %481, align 8, !tbaa !29
  store i32 0, ptr %482, align 4, !tbaa !17
  %817 = tail call ptr @__errno_location() #17
  store i32 0, ptr %817, align 4, !tbaa !45
  br label %818

818:                                              ; preds = %837, %814
  %819 = phi i32 [ 0, %814 ], [ %838, %837 ]
  %820 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %815, i32 %819), !nosanitize !20
  %821 = extractvalue { i32, i1 } %820, 1, !nosanitize !20
  br i1 %821, label %822, label %823, !prof !21, !nosanitize !20

822:                                              ; preds = %818
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

823:                                              ; preds = %818
  %824 = extractvalue { i32, i1 } %820, 0, !nosanitize !20
  %825 = call i32 @llvm.umin.i32(i32 %824, i32 1073741824)
  %826 = load i32, ptr %483, align 4, !tbaa !46
  %827 = zext i32 %819 to i64
  %828 = getelementptr inbounds nuw i8, ptr %816, i64 %827
  %829 = zext nneg i32 %825 to i64
  %830 = call i64 @read(i32 noundef %826, ptr noundef %828, i64 noundef %829) #13
  %831 = trunc i64 %830 to i32
  %832 = icmp slt i32 %831, 1
  br i1 %832, label %840, label %833

833:                                              ; preds = %823
  %834 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %819, i32 %831), !nosanitize !20
  %835 = extractvalue { i32, i1 } %834, 1, !nosanitize !20
  br i1 %835, label %836, label %837, !prof !21, !nosanitize !20

836:                                              ; preds = %833
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

837:                                              ; preds = %833
  %838 = extractvalue { i32, i1 } %834, 0, !nosanitize !20
  %839 = icmp ult i32 %838, %815
  br i1 %839, label %818, label %.loopexit, !llvm.loop !47

840:                                              ; preds = %823
  %841 = icmp slt i32 %831, 0
  br i1 %841, label %842, label %849

842:                                              ; preds = %840
  %843 = load i32, ptr %817, align 4, !tbaa !45
  %844 = icmp eq i32 %843, 11
  br i1 %844, label %845, label %.loopexit74

845:                                              ; preds = %842
  store i32 1, ptr %482, align 4, !tbaa !17
  %846 = icmp eq i32 %819, 0
  br i1 %846, label %847, label %.loopexit

847:                                              ; preds = %845
  %848 = load i32, ptr %817, align 4, !tbaa !45
  br label %.loopexit74

849:                                              ; preds = %840
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit

.loopexit74:                                      ; preds = %842, %847
  %850 = phi i32 [ %848, %847 ], [ %843, %842 ]
  %851 = call ptr @strerror(i32 noundef %850) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %851) #13
  %852 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit73

.loopexit:                                        ; preds = %837, %849, %845
  %853 = phi i32 [ %819, %849 ], [ %819, %845 ], [ %838, %837 ]
  %854 = load i32, ptr %475, align 8, !tbaa !34
  %855 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %854, i32 %853), !nosanitize !20
  %856 = extractvalue { i32, i1 } %855, 1, !nosanitize !20
  br i1 %856, label %857, label %858, !prof !21, !nosanitize !20

857:                                              ; preds = %.loopexit
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

858:                                              ; preds = %.loopexit
  %859 = extractvalue { i32, i1 } %855, 0, !nosanitize !20
  store i32 %859, ptr %475, align 8, !tbaa !34
  %860 = load ptr, ptr %481, align 8, !tbaa !29
  store ptr %860, ptr %480, align 8, !tbaa !35
  %861 = icmp eq i32 %859, 0
  br i1 %861, label %862, label %866

862:                                              ; preds = %858, %811
  %863 = load i32, ptr %482, align 4, !tbaa !17
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %.loopexit73

865:                                              ; preds = %862
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit73

866:                                              ; preds = %858, %805
  %867 = call i32 @inflate(ptr noundef nonnull %480, i32 noundef 0) #13
  %868 = load i32, ptr %478, align 8, !tbaa !48
  %869 = icmp ult i32 %868, %803
  br i1 %869, label %870, label %871

870:                                              ; preds = %866
  store i32 0, ptr %484, align 4, !tbaa !33
  br label %871

871:                                              ; preds = %870, %866
  switch i32 %867, label %882 [
    i32 -2, label %872
    i32 2, label %872
    i32 -4, label %873
    i32 -3, label %874
  ]

872:                                              ; preds = %871, %871
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit73

873:                                              ; preds = %871
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit73

874:                                              ; preds = %871
  %875 = load i32, ptr %484, align 4, !tbaa !33
  %876 = icmp eq i32 %875, 1
  br i1 %876, label %877, label %878

877:                                              ; preds = %874
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %474, align 8, !tbaa !24
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %.loopexit73

878:                                              ; preds = %874
  %879 = load ptr, ptr %485, align 8, !tbaa !50
  %880 = icmp eq ptr %879, null
  %881 = select i1 %880, ptr @.str.6, ptr %879
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %881) #13
  br label %.loopexit73

882:                                              ; preds = %871
  %883 = icmp ne i32 %868, 0
  %884 = icmp ne i32 %867, 1
  %885 = select i1 %883, i1 %884, i1 false
  br i1 %885, label %805, label %.loopexit73, !llvm.loop !51

.loopexit73:                                      ; preds = %882, %809, %878, %877, %873, %872, %865, %862, %.loopexit74
  %886 = phi i32 [ %806, %862 ], [ %806, %865 ], [ %867, %872 ], [ -4, %873 ], [ 0, %877 ], [ -3, %878 ], [ %852, %.loopexit74 ], [ %810, %809 ], [ %867, %882 ]
  %887 = load i32, ptr %478, align 8, !tbaa !48
  %888 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %803, i32 %887), !nosanitize !20
  %889 = extractvalue { i32, i1 } %888, 1, !nosanitize !20
  br i1 %889, label %890, label %891, !prof !21, !nosanitize !20

890:                                              ; preds = %.loopexit73
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

891:                                              ; preds = %.loopexit73
  %892 = extractvalue { i32, i1 } %888, 0, !nosanitize !20
  store i32 %892, ptr %0, align 8, !tbaa !19
  %893 = load ptr, ptr %479, align 8, !tbaa !49
  %894 = zext i32 %892 to i64
  %895 = sub nsw i64 0, %894
  %896 = getelementptr inbounds i8, ptr %893, i64 %895
  store ptr %896, ptr %473, align 8, !tbaa !22
  switch i32 %886, label %.loopexit77 [
    i32 1, label %897
    i32 0, label %899
  ]

897:                                              ; preds = %891
  store i32 0, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %899

898:                                              ; preds = %527
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit77

899:                                              ; preds = %897, %891, %755, %749
  %900 = load i32, ptr %0, align 8, !tbaa !19
  br label %901

901:                                              ; preds = %899, %751
  %902 = phi i32 [ %900, %899 ], [ %754, %751 ]
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %.loopexit79

904:                                              ; preds = %901
  %905 = load i32, ptr %474, align 8, !tbaa !24
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %910, label %907

907:                                              ; preds = %904
  %908 = load i32, ptr %475, align 8, !tbaa !34
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %.loopexit79, label %910

910:                                              ; preds = %907, %904
  %911 = load i32, ptr %476, align 8, !tbaa !26
  br label %527, !llvm.loop !52

.loopexit77:                                      ; preds = %891, %560, %898, %797, %.loopexit78, %546, %542
  %912 = load i32, ptr %0, align 8, !tbaa !19
  %913 = icmp eq i32 %912, 0
  %914 = sext i1 %913 to i32
  br label %.loopexit79

915:                                              ; preds = %523
  %916 = icmp eq i32 %521, 1
  br i1 %916, label %917, label %954

917:                                              ; preds = %915
  store i32 0, ptr %482, align 4, !tbaa !17
  %918 = tail call ptr @__errno_location() #17
  store i32 0, ptr %918, align 4, !tbaa !45
  br label %919

919:                                              ; preds = %938, %917
  %920 = phi i32 [ 0, %917 ], [ %939, %938 ]
  %921 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %920), !nosanitize !20
  %922 = extractvalue { i32, i1 } %921, 1, !nosanitize !20
  br i1 %922, label %923, label %924, !prof !21, !nosanitize !20

923:                                              ; preds = %919
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

924:                                              ; preds = %919
  %925 = extractvalue { i32, i1 } %921, 0, !nosanitize !20
  %926 = call i32 @llvm.umin.i32(i32 %925, i32 1073741824)
  %927 = load i32, ptr %483, align 4, !tbaa !46
  %928 = zext i32 %920 to i64
  %929 = getelementptr inbounds nuw i8, ptr %492, i64 %928
  %930 = zext nneg i32 %926 to i64
  %931 = call i64 @read(i32 noundef %927, ptr noundef %929, i64 noundef %930) #13
  %932 = trunc i64 %931 to i32
  %933 = icmp slt i32 %932, 1
  br i1 %933, label %941, label %934

934:                                              ; preds = %924
  %935 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %920, i32 %932), !nosanitize !20
  %936 = extractvalue { i32, i1 } %935, 1, !nosanitize !20
  br i1 %936, label %937, label %938, !prof !21, !nosanitize !20

937:                                              ; preds = %934
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

938:                                              ; preds = %934
  %939 = extractvalue { i32, i1 } %935, 0, !nosanitize !20
  %940 = icmp ult i32 %939, %496
  br i1 %940, label %919, label %1054, !llvm.loop !47

941:                                              ; preds = %924
  %942 = icmp slt i32 %932, 0
  br i1 %942, label %943, label %953

943:                                              ; preds = %941
  %944 = load i32, ptr %918, align 4, !tbaa !45
  %945 = icmp eq i32 %944, 11
  br i1 %945, label %946, label %950

946:                                              ; preds = %943
  store i32 1, ptr %482, align 4, !tbaa !17
  %947 = icmp eq i32 %920, 0
  br i1 %947, label %948, label %1056

948:                                              ; preds = %946
  %949 = load i32, ptr %918, align 4, !tbaa !45
  br label %950

950:                                              ; preds = %948, %943
  %951 = phi i32 [ %949, %948 ], [ %944, %943 ]
  %952 = call ptr @strerror(i32 noundef %951) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %952) #13
  br label %1056

953:                                              ; preds = %941
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %1056

954:                                              ; preds = %915
  store i32 %496, ptr %478, align 8, !tbaa !58
  store ptr %492, ptr %479, align 8, !tbaa !59
  br label %955

955:                                              ; preds = %1032, %954
  %956 = phi i32 [ 0, %954 ], [ %1017, %1032 ]
  %957 = load i32, ptr %475, align 8, !tbaa !34
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %1016

959:                                              ; preds = %955
  %960 = load i32, ptr %9, align 8, !tbaa !16
  switch i32 %960, label %.loopexit80 [
    i32 0, label %961
    i32 -5, label %961
  ]

961:                                              ; preds = %959, %959
  %962 = load i32, ptr %474, align 8, !tbaa !24
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %964, label %1012

964:                                              ; preds = %961
  %965 = load i32, ptr %477, align 8, !tbaa !27
  %966 = load ptr, ptr %481, align 8, !tbaa !29
  store i32 0, ptr %482, align 4, !tbaa !17
  %967 = tail call ptr @__errno_location() #17
  store i32 0, ptr %967, align 4, !tbaa !45
  br label %968

968:                                              ; preds = %987, %964
  %969 = phi i32 [ 0, %964 ], [ %988, %987 ]
  %970 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %965, i32 %969), !nosanitize !20
  %971 = extractvalue { i32, i1 } %970, 1, !nosanitize !20
  br i1 %971, label %972, label %973, !prof !21, !nosanitize !20

972:                                              ; preds = %968
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

973:                                              ; preds = %968
  %974 = extractvalue { i32, i1 } %970, 0, !nosanitize !20
  %975 = call i32 @llvm.umin.i32(i32 %974, i32 1073741824)
  %976 = load i32, ptr %483, align 4, !tbaa !46
  %977 = zext i32 %969 to i64
  %978 = getelementptr inbounds nuw i8, ptr %966, i64 %977
  %979 = zext nneg i32 %975 to i64
  %980 = call i64 @read(i32 noundef %976, ptr noundef %978, i64 noundef %979) #13
  %981 = trunc i64 %980 to i32
  %982 = icmp slt i32 %981, 1
  br i1 %982, label %990, label %983

983:                                              ; preds = %973
  %984 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %969, i32 %981), !nosanitize !20
  %985 = extractvalue { i32, i1 } %984, 1, !nosanitize !20
  br i1 %985, label %986, label %987, !prof !21, !nosanitize !20

986:                                              ; preds = %983
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

987:                                              ; preds = %983
  %988 = extractvalue { i32, i1 } %984, 0, !nosanitize !20
  %989 = icmp ult i32 %988, %965
  br i1 %989, label %968, label %.loopexit75, !llvm.loop !47

990:                                              ; preds = %973
  %991 = icmp slt i32 %981, 0
  br i1 %991, label %992, label %999

992:                                              ; preds = %990
  %993 = load i32, ptr %967, align 4, !tbaa !45
  %994 = icmp eq i32 %993, 11
  br i1 %994, label %995, label %.loopexit82

995:                                              ; preds = %992
  store i32 1, ptr %482, align 4, !tbaa !17
  %996 = icmp eq i32 %969, 0
  br i1 %996, label %997, label %.loopexit75

997:                                              ; preds = %995
  %998 = load i32, ptr %967, align 4, !tbaa !45
  br label %.loopexit82

999:                                              ; preds = %990
  store i32 1, ptr %474, align 8, !tbaa !24
  br label %.loopexit75

.loopexit82:                                      ; preds = %992, %997
  %1000 = phi i32 [ %998, %997 ], [ %993, %992 ]
  %1001 = call ptr @strerror(i32 noundef %1000) #13
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1001) #13
  %1002 = load i32, ptr %9, align 8, !tbaa !16
  br label %.loopexit80

.loopexit75:                                      ; preds = %987, %999, %995
  %1003 = phi i32 [ %969, %999 ], [ %969, %995 ], [ %988, %987 ]
  %1004 = load i32, ptr %475, align 8, !tbaa !34
  %1005 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1004, i32 %1003), !nosanitize !20
  %1006 = extractvalue { i32, i1 } %1005, 1, !nosanitize !20
  br i1 %1006, label %1007, label %1008, !prof !21, !nosanitize !20

1007:                                             ; preds = %.loopexit75
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1008:                                             ; preds = %.loopexit75
  %1009 = extractvalue { i32, i1 } %1005, 0, !nosanitize !20
  store i32 %1009, ptr %475, align 8, !tbaa !34
  %1010 = load ptr, ptr %481, align 8, !tbaa !29
  store ptr %1010, ptr %480, align 8, !tbaa !35
  %1011 = icmp eq i32 %1009, 0
  br i1 %1011, label %1012, label %1016

1012:                                             ; preds = %1008, %961
  %1013 = load i32, ptr %482, align 4, !tbaa !17
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %.loopexit80

1015:                                             ; preds = %1012
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit80

1016:                                             ; preds = %1008, %955
  %1017 = call i32 @inflate(ptr noundef nonnull %480, i32 noundef 0) #13
  %1018 = load i32, ptr %478, align 8, !tbaa !48
  %1019 = icmp ult i32 %1018, %496
  br i1 %1019, label %1020, label %1021

1020:                                             ; preds = %1016
  store i32 0, ptr %484, align 4, !tbaa !33
  br label %1021

1021:                                             ; preds = %1020, %1016
  switch i32 %1017, label %1032 [
    i32 -2, label %1022
    i32 2, label %1022
    i32 -4, label %1023
    i32 -3, label %1024
  ]

1022:                                             ; preds = %1021, %1021
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit80

1023:                                             ; preds = %1021
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit80

1024:                                             ; preds = %1021
  %1025 = load i32, ptr %484, align 4, !tbaa !33
  %1026 = icmp eq i32 %1025, 1
  br i1 %1026, label %1027, label %1028

1027:                                             ; preds = %1024
  store i32 0, ptr %475, align 8, !tbaa !34
  store i32 1, ptr %474, align 8, !tbaa !24
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %.loopexit80

1028:                                             ; preds = %1024
  %1029 = load ptr, ptr %485, align 8, !tbaa !50
  %1030 = icmp eq ptr %1029, null
  %1031 = select i1 %1030, ptr @.str.6, ptr %1029
  call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %1031) #13
  br label %.loopexit80

1032:                                             ; preds = %1021
  %1033 = icmp ne i32 %1018, 0
  %1034 = icmp ne i32 %1017, 1
  %1035 = select i1 %1033, i1 %1034, i1 false
  br i1 %1035, label %955, label %.loopexit80, !llvm.loop !51

.loopexit80:                                      ; preds = %1032, %959, %1028, %1027, %1023, %1022, %1015, %1012, %.loopexit82
  %1036 = phi i32 [ %956, %1012 ], [ %956, %1015 ], [ %1017, %1022 ], [ -4, %1023 ], [ 0, %1027 ], [ -3, %1028 ], [ %1002, %.loopexit82 ], [ %1017, %1032 ], [ %960, %959 ]
  %1037 = load i32, ptr %478, align 8, !tbaa !48
  %1038 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %496, i32 %1037), !nosanitize !20
  %1039 = extractvalue { i32, i1 } %1038, 1, !nosanitize !20
  br i1 %1039, label %1040, label %1041, !prof !21, !nosanitize !20

1040:                                             ; preds = %.loopexit80
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1041:                                             ; preds = %.loopexit80
  %1042 = extractvalue { i32, i1 } %1038, 0, !nosanitize !20
  %1043 = load ptr, ptr %479, align 8, !tbaa !49
  %1044 = zext i32 %1042 to i64
  %1045 = sub nsw i64 0, %1044
  %1046 = getelementptr inbounds i8, ptr %1043, i64 %1045
  store ptr %1046, ptr %473, align 8, !tbaa !22
  %1047 = icmp eq i32 %1036, 1
  br i1 %1047, label %1048, label %1049

1048:                                             ; preds = %1041
  store i32 0, ptr %484, align 4, !tbaa !33
  store i32 0, ptr %476, align 8, !tbaa !26
  br label %1052

1049:                                             ; preds = %1041
  %1050 = icmp ne i32 %1036, 0
  %1051 = sext i1 %1050 to i32
  br label %1052

1052:                                             ; preds = %1049, %1048
  %1053 = phi i32 [ 0, %1048 ], [ %1051, %1049 ]
  store i32 0, ptr %0, align 8, !tbaa !19
  br label %1056

1054:                                             ; preds = %938
  %1055 = zext i32 %939 to i64
  br label %1056

1056:                                             ; preds = %1054, %1052, %953, %950, %946, %509
  %1057 = phi i64 [ %1055, %1054 ], [ %928, %953 ], [ %928, %950 ], [ %928, %946 ], [ %502, %509 ], [ %1044, %1052 ]
  %1058 = phi i32 [ 0, %1054 ], [ 0, %953 ], [ -1, %950 ], [ 0, %946 ], [ %513, %509 ], [ %1053, %1052 ]
  %1059 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %493, i64 %1057), !nosanitize !20
  %1060 = extractvalue { i64, i1 } %1059, 0, !nosanitize !20
  %1061 = extractvalue { i64, i1 } %1059, 1, !nosanitize !20
  br i1 %1061, label %1062, label %1063, !prof !21, !nosanitize !20

1062:                                             ; preds = %1056
  call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

1063:                                             ; preds = %1056
  %1064 = getelementptr inbounds nuw i8, ptr %492, i64 %1057
  %1065 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %494, i64 %1057), !nosanitize !20
  %1066 = extractvalue { i64, i1 } %1065, 0, !nosanitize !20
  %1067 = extractvalue { i64, i1 } %1065, 1, !nosanitize !20
  br i1 %1067, label %1068, label %1069, !prof !21, !nosanitize !20

1068:                                             ; preds = %1069, %1063
  call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

1069:                                             ; preds = %1063
  %1070 = load i64, ptr %486, align 8, !tbaa !23
  %1071 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1070, i64 %1057), !nosanitize !20
  %1072 = extractvalue { i64, i1 } %1071, 1, !nosanitize !20
  br i1 %1072, label %1068, label %1073, !prof !21, !nosanitize !20

1073:                                             ; preds = %1069
  %1074 = extractvalue { i64, i1 } %1071, 0, !nosanitize !20
  store i64 %1074, ptr %486, align 8, !tbaa !23
  br label %.loopexit79

.loopexit79:                                      ; preds = %907, %901, %755, %1073, %.loopexit77, %.loopexit76
  %1075 = phi ptr [ %1064, %1073 ], [ %492, %.loopexit77 ], [ %492, %.loopexit76 ], [ %492, %755 ], [ %492, %901 ], [ %492, %907 ]
  %1076 = phi i64 [ %1060, %1073 ], [ %493, %.loopexit77 ], [ %493, %.loopexit76 ], [ %493, %755 ], [ %493, %901 ], [ %493, %907 ]
  %1077 = phi i64 [ %1066, %1073 ], [ %494, %.loopexit77 ], [ %494, %.loopexit76 ], [ %494, %755 ], [ %494, %901 ], [ %494, %907 ]
  %1078 = phi i32 [ %1058, %1073 ], [ %914, %.loopexit77 ], [ 0, %.loopexit76 ], [ 0, %755 ], [ 0, %901 ], [ 0, %907 ]
  %1079 = icmp ne i64 %1076, 0
  %1080 = icmp eq i32 %1078, 0
  %1081 = select i1 %1079, i1 %1080, i1 false
  br i1 %1081, label %491, label %1082, !llvm.loop !60

1082:                                             ; preds = %.loopexit79
  %1083 = icmp eq i64 %1076, 0
  br i1 %1083, label %1089, label %1084

1084:                                             ; preds = %1082
  %1085 = load i32, ptr %474, align 8, !tbaa !24
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1089, label %.loopexit83

.loopexit83:                                      ; preds = %517, %1084
  %1087 = phi i64 [ %1077, %1084 ], [ %494, %517 ]
  %1088 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %1088, align 4, !tbaa !61
  br label %1089

1089:                                             ; preds = %.loopexit83, %1084, %1082
  %1090 = phi i64 [ %1087, %.loopexit83 ], [ %1077, %1084 ], [ %1077, %1082 ]
  %1091 = freeze i64 %1090
  %1092 = icmp eq i64 %1091, 0
  %1093 = load i8, ptr %2, align 1
  %1094 = zext i8 %1093 to i32
  br i1 %1092, label %.loopexit94, label %1095

.loopexit94:                                      ; preds = %450, %120, %1089, %457, %.loopexit98, %.loopexit95, %106, %102
  br label %1095

1095:                                             ; preds = %.loopexit94, %1089, %25, %11, %4, %1
  %1096 = phi i32 [ %31, %25 ], [ -1, %1 ], [ -1, %4 ], [ -1, %11 ], [ -1, %.loopexit94 ], [ %1094, %1089 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %1096
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @gzungetc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %.loopexit51, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 7247
  br i1 %7, label %8, label %.loopexit51

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
  br i1 %95, label %.loopexit57, label %96

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
  br i1 %118, label %.loopexit57, label %119

119:                                              ; preds = %113, %96, %72
  %120 = phi ptr [ %69, %72 ], [ %97, %96 ], [ %114, %113 ]
  %121 = phi ptr [ %70, %72 ], [ %98, %96 ], [ %115, %113 ]
  %122 = phi i32 [ %64, %72 ], [ %100, %96 ], [ %117, %113 ]
  %123 = add i32 %122, -1
  %124 = and i32 %122, 7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %.loopexit59, label %.preheader58

.preheader58:                                     ; preds = %119, %.preheader58
  %126 = phi ptr [ %130, %.preheader58 ], [ %120, %119 ]
  %127 = phi ptr [ %131, %.preheader58 ], [ %121, %119 ]
  %128 = phi i32 [ %132, %.preheader58 ], [ 0, %119 ]
  %129 = load i8, ptr %127, align 1, !tbaa !36
  store i8 %129, ptr %126, align 1, !tbaa !36
  %130 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %131 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %132 = add nuw nsw i32 %128, 1
  %133 = icmp eq i32 %132, %124
  br i1 %133, label %.loopexit59.loopexit, label %.preheader58, !llvm.loop !88

.loopexit59.loopexit:                             ; preds = %.preheader58
  %134 = and i32 %122, -8
  br label %.loopexit59

.loopexit59:                                      ; preds = %.loopexit59.loopexit, %119
  %135 = phi ptr [ %120, %119 ], [ %130, %.loopexit59.loopexit ]
  %136 = phi ptr [ %121, %119 ], [ %131, %.loopexit59.loopexit ]
  %137 = phi i32 [ %122, %119 ], [ %134, %.loopexit59.loopexit ]
  %138 = icmp ult i32 %123, 7
  br i1 %138, label %.loopexit57, label %.preheader56

.preheader56:                                     ; preds = %.loopexit59, %.preheader56
  %139 = phi ptr [ %165, %.preheader56 ], [ %135, %.loopexit59 ]
  %140 = phi ptr [ %166, %.preheader56 ], [ %136, %.loopexit59 ]
  %141 = phi i32 [ %164, %.preheader56 ], [ %137, %.loopexit59 ]
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
  br i1 %167, label %.loopexit57, label %.preheader56, !llvm.loop !89

.loopexit57:                                      ; preds = %.preheader56, %.loopexit59, %113, %94
  %168 = load i32, ptr %63, align 8, !tbaa !34
  br label %169

169:                                              ; preds = %.loopexit57, %67, %65
  %170 = phi i32 [ %168, %.loopexit57 ], [ %64, %67 ], [ 0, %65 ]
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
  br i1 %205, label %184, label %.loopexit55, !llvm.loop !47

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
  br i1 %212, label %213, label %.loopexit55

213:                                              ; preds = %211
  %214 = load i32, ptr %182, align 4, !tbaa !45
  br label %216

215:                                              ; preds = %206
  store i32 1, ptr %60, align 8, !tbaa !24
  br label %.loopexit55

216:                                              ; preds = %213, %208
  %217 = phi i32 [ %214, %213 ], [ %209, %208 ]
  %218 = tail call ptr @strerror(i32 noundef %217) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %218) #13
  br label %262

.loopexit55:                                      ; preds = %203, %215, %211
  %219 = phi i32 [ %185, %215 ], [ %185, %211 ], [ %204, %203 ]
  %220 = load i32, ptr %63, align 8, !tbaa !34
  %221 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %220, i32 %219), !nosanitize !20
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !20
  br i1 %222, label %223, label %224, !prof !21, !nosanitize !20

223:                                              ; preds = %.loopexit55
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

224:                                              ; preds = %.loopexit55
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
  br i1 %268, label %.loopexit51, label %269

269:                                              ; preds = %265, %262, %262
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #13
  %270 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %271 = load i64, ptr %270, align 8, !tbaa !18
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %711, label %273

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

291:                                              ; preds = %706, %273
  %292 = phi i64 [ %707, %706 ], [ %271, %273 ]
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
  br label %706

317:                                              ; preds = %291
  %318 = load i32, ptr %276, align 8, !tbaa !24
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %.preheader383, label %320

320:                                              ; preds = %317
  %321 = load i32, ptr %277, align 8, !tbaa !25
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %709, label %.preheader383

.preheader383:                                    ; preds = %320, %317
  br label %323

323:                                              ; preds = %.backedge, %.preheader383
  %324 = load i32, ptr %9, align 8, !tbaa !26
  switch i32 %324, label %693 [
    i32 0, label %325
    i32 1, label %554
    i32 2, label %596
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
  br label %.loopexit51

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
  br label %.loopexit51

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
  switch i32 %357, label %.loopexit51 [
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
  br i1 %391, label %.loopexit45, label %392

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
  br i1 %414, label %.loopexit45, label %415

415:                                              ; preds = %409, %392, %368
  %416 = phi ptr [ %365, %368 ], [ %393, %392 ], [ %410, %409 ]
  %417 = phi ptr [ %366, %368 ], [ %394, %392 ], [ %411, %409 ]
  %418 = phi i32 [ %361, %368 ], [ %396, %392 ], [ %413, %409 ]
  %419 = add i32 %418, -1
  %420 = and i32 %418, 7
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %.loopexit47, label %.preheader46

.preheader46:                                     ; preds = %415, %.preheader46
  %422 = phi ptr [ %426, %.preheader46 ], [ %416, %415 ]
  %423 = phi ptr [ %427, %.preheader46 ], [ %417, %415 ]
  %424 = phi i32 [ %428, %.preheader46 ], [ 0, %415 ]
  %425 = load i8, ptr %423, align 1, !tbaa !36
  store i8 %425, ptr %422, align 1, !tbaa !36
  %426 = getelementptr inbounds nuw i8, ptr %422, i64 1
  %427 = getelementptr inbounds nuw i8, ptr %423, i64 1
  %428 = add nuw nsw i32 %424, 1
  %429 = icmp eq i32 %428, %420
  br i1 %429, label %.loopexit47.loopexit, label %.preheader46, !llvm.loop !92

.loopexit47.loopexit:                             ; preds = %.preheader46
  %430 = and i32 %418, -8
  br label %.loopexit47

.loopexit47:                                      ; preds = %.loopexit47.loopexit, %415
  %431 = phi ptr [ %416, %415 ], [ %426, %.loopexit47.loopexit ]
  %432 = phi ptr [ %417, %415 ], [ %427, %.loopexit47.loopexit ]
  %433 = phi i32 [ %418, %415 ], [ %430, %.loopexit47.loopexit ]
  %434 = icmp ult i32 %419, 7
  br i1 %434, label %.loopexit45, label %.preheader

.preheader:                                       ; preds = %.loopexit47, %.preheader
  %435 = phi ptr [ %461, %.preheader ], [ %431, %.loopexit47 ]
  %436 = phi ptr [ %462, %.preheader ], [ %432, %.loopexit47 ]
  %437 = phi i32 [ %460, %.preheader ], [ %433, %.loopexit47 ]
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
  br i1 %463, label %.loopexit45, label %.preheader, !llvm.loop !93

.loopexit45:                                      ; preds = %.preheader, %.loopexit47, %409, %390
  %464 = load i32, ptr %277, align 8, !tbaa !34
  br label %465

465:                                              ; preds = %.loopexit45, %364, %362
  %466 = phi i32 [ %464, %.loopexit45 ], [ %361, %364 ], [ 0, %362 ]
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
  br i1 %498, label %477, label %.loopexit44, !llvm.loop !47

499:                                              ; preds = %482
  %500 = icmp slt i32 %490, 0
  br i1 %500, label %501, label %508

501:                                              ; preds = %499
  %502 = load i32, ptr %476, align 4, !tbaa !45
  %503 = icmp eq i32 %502, 11
  br i1 %503, label %504, label %.loopexit52

504:                                              ; preds = %501
  store i32 1, ptr %284, align 4, !tbaa !17
  %505 = icmp eq i32 %478, 0
  br i1 %505, label %506, label %.loopexit44

506:                                              ; preds = %504
  %507 = load i32, ptr %476, align 4, !tbaa !45
  br label %.loopexit52

508:                                              ; preds = %499
  store i32 1, ptr %276, align 8, !tbaa !24
  br label %.loopexit44

.loopexit52:                                      ; preds = %501, %506
  %509 = phi i32 [ %507, %506 ], [ %502, %501 ]
  %510 = tail call ptr @strerror(i32 noundef %509) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %510) #13
  br label %.loopexit51

.loopexit44:                                      ; preds = %496, %508, %504
  %511 = phi i32 [ %478, %508 ], [ %478, %504 ], [ %497, %496 ]
  %512 = load i32, ptr %277, align 8, !tbaa !34
  %513 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %512, i32 %511), !nosanitize !20
  %514 = extractvalue { i32, i1 } %513, 1, !nosanitize !20
  br i1 %514, label %515, label %516, !prof !21, !nosanitize !20

515:                                              ; preds = %.loopexit44
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

516:                                              ; preds = %.loopexit44
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
  br label %694

547:                                              ; preds = %541, %537, %533, %530, %527
  %548 = load ptr, ptr %280, align 8, !tbaa !30
  store ptr %548, ptr %274, align 8, !tbaa !22
  %549 = zext i32 %520 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %548, ptr align 1 %529, i64 %549, i1 false)
  %550 = load i32, ptr %277, align 8, !tbaa !34
  store i32 %550, ptr %1, align 8, !tbaa !19
  store i32 0, ptr %277, align 8, !tbaa !34
  store i32 1, ptr %9, align 8, !tbaa !26
  br label %696

551:                                              ; preds = %522, %519, %351
  %552 = load i32, ptr %9, align 8, !tbaa !26
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %.loopexit53, label %694

554:                                              ; preds = %323
  %555 = load ptr, ptr %280, align 8, !tbaa !30
  %556 = load i32, ptr %278, align 8, !tbaa !27
  %557 = shl i32 %556, 1
  store i32 0, ptr %284, align 4, !tbaa !17
  %558 = tail call ptr @__errno_location() #17
  store i32 0, ptr %558, align 4, !tbaa !45
  store i32 0, ptr %1, align 8, !tbaa !45
  br label %559

559:                                              ; preds = %579, %554
  %560 = phi i32 [ %580, %579 ], [ 0, %554 ]
  %561 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %557, i32 %560), !nosanitize !20
  %562 = extractvalue { i32, i1 } %561, 1, !nosanitize !20
  br i1 %562, label %563, label %564, !prof !21, !nosanitize !20

563:                                              ; preds = %559
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

564:                                              ; preds = %559
  %565 = extractvalue { i32, i1 } %561, 0, !nosanitize !20
  %566 = tail call i32 @llvm.umin.i32(i32 %565, i32 1073741824)
  %567 = load i32, ptr %285, align 4, !tbaa !46
  %568 = zext i32 %560 to i64
  %569 = getelementptr inbounds nuw i8, ptr %555, i64 %568
  %570 = zext nneg i32 %566 to i64
  %571 = tail call i64 @read(i32 noundef %567, ptr noundef %569, i64 noundef %570) #13
  %572 = trunc i64 %571 to i32
  %573 = icmp slt i32 %572, 1
  br i1 %573, label %582, label %574

574:                                              ; preds = %564
  %575 = load i32, ptr %1, align 4, !tbaa !45
  %576 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %575, i32 %572), !nosanitize !20
  %577 = extractvalue { i32, i1 } %576, 1, !nosanitize !20
  br i1 %577, label %578, label %579, !prof !21, !nosanitize !20

578:                                              ; preds = %574
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

579:                                              ; preds = %574
  %580 = extractvalue { i32, i1 } %576, 0, !nosanitize !20
  store i32 %580, ptr %1, align 4, !tbaa !45
  %581 = icmp ult i32 %580, %557
  br i1 %581, label %559, label %.loopexit50, !llvm.loop !47

582:                                              ; preds = %564
  %583 = icmp slt i32 %572, 0
  br i1 %583, label %584, label %592

584:                                              ; preds = %582
  %585 = load i32, ptr %558, align 4, !tbaa !45
  %586 = icmp eq i32 %585, 11
  br i1 %586, label %587, label %.loopexit54

587:                                              ; preds = %584
  store i32 1, ptr %284, align 4, !tbaa !17
  %588 = load i32, ptr %1, align 4, !tbaa !45
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %.loopexit50

590:                                              ; preds = %587
  %591 = load i32, ptr %558, align 4, !tbaa !45
  br label %.loopexit54

592:                                              ; preds = %582
  store i32 1, ptr %276, align 8, !tbaa !24
  br label %.loopexit50

.loopexit54:                                      ; preds = %584, %590
  %593 = phi i32 [ %591, %590 ], [ %585, %584 ]
  %594 = tail call ptr @strerror(i32 noundef %593) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %594) #13
  br label %.loopexit51

.loopexit50:                                      ; preds = %579, %592, %587
  %595 = load ptr, ptr %280, align 8, !tbaa !30
  store ptr %595, ptr %274, align 8, !tbaa !22
  br label %.loopexit53

596:                                              ; preds = %323
  %597 = load i32, ptr %278, align 8, !tbaa !27
  %598 = shl i32 %597, 1
  store i32 %598, ptr %279, align 8, !tbaa !48
  %599 = load ptr, ptr %280, align 8, !tbaa !30
  store ptr %599, ptr %281, align 8, !tbaa !49
  br label %600

600:                                              ; preds = %677, %596
  %601 = phi i32 [ 0, %596 ], [ %662, %677 ]
  %602 = load i32, ptr %277, align 8, !tbaa !34
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %661

604:                                              ; preds = %600
  %605 = load i32, ptr %263, align 8, !tbaa !16
  switch i32 %605, label %.loopexit48 [
    i32 0, label %606
    i32 -5, label %606
  ]

606:                                              ; preds = %604, %604
  %607 = load i32, ptr %276, align 8, !tbaa !24
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %657

609:                                              ; preds = %606
  %610 = load i32, ptr %278, align 8, !tbaa !27
  %611 = load ptr, ptr %283, align 8, !tbaa !29
  store i32 0, ptr %284, align 4, !tbaa !17
  %612 = tail call ptr @__errno_location() #17
  store i32 0, ptr %612, align 4, !tbaa !45
  br label %613

613:                                              ; preds = %632, %609
  %614 = phi i32 [ 0, %609 ], [ %633, %632 ]
  %615 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %610, i32 %614), !nosanitize !20
  %616 = extractvalue { i32, i1 } %615, 1, !nosanitize !20
  br i1 %616, label %617, label %618, !prof !21, !nosanitize !20

617:                                              ; preds = %613
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

618:                                              ; preds = %613
  %619 = extractvalue { i32, i1 } %615, 0, !nosanitize !20
  %620 = tail call i32 @llvm.umin.i32(i32 %619, i32 1073741824)
  %621 = load i32, ptr %285, align 4, !tbaa !46
  %622 = zext i32 %614 to i64
  %623 = getelementptr inbounds nuw i8, ptr %611, i64 %622
  %624 = zext nneg i32 %620 to i64
  %625 = tail call i64 @read(i32 noundef %621, ptr noundef %623, i64 noundef %624) #13
  %626 = trunc i64 %625 to i32
  %627 = icmp slt i32 %626, 1
  br i1 %627, label %635, label %628

628:                                              ; preds = %618
  %629 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %614, i32 %626), !nosanitize !20
  %630 = extractvalue { i32, i1 } %629, 1, !nosanitize !20
  br i1 %630, label %631, label %632, !prof !21, !nosanitize !20

631:                                              ; preds = %628
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

632:                                              ; preds = %628
  %633 = extractvalue { i32, i1 } %629, 0, !nosanitize !20
  %634 = icmp ult i32 %633, %610
  br i1 %634, label %613, label %.loopexit, !llvm.loop !47

635:                                              ; preds = %618
  %636 = icmp slt i32 %626, 0
  br i1 %636, label %637, label %644

637:                                              ; preds = %635
  %638 = load i32, ptr %612, align 4, !tbaa !45
  %639 = icmp eq i32 %638, 11
  br i1 %639, label %640, label %.loopexit49

640:                                              ; preds = %637
  store i32 1, ptr %284, align 4, !tbaa !17
  %641 = icmp eq i32 %614, 0
  br i1 %641, label %642, label %.loopexit

642:                                              ; preds = %640
  %643 = load i32, ptr %612, align 4, !tbaa !45
  br label %.loopexit49

644:                                              ; preds = %635
  store i32 1, ptr %276, align 8, !tbaa !24
  br label %.loopexit

.loopexit49:                                      ; preds = %637, %642
  %645 = phi i32 [ %643, %642 ], [ %638, %637 ]
  %646 = tail call ptr @strerror(i32 noundef %645) #13
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -1, ptr noundef %646) #13
  %647 = load i32, ptr %263, align 8, !tbaa !16
  br label %.loopexit48

.loopexit:                                        ; preds = %632, %644, %640
  %648 = phi i32 [ %614, %644 ], [ %614, %640 ], [ %633, %632 ]
  %649 = load i32, ptr %277, align 8, !tbaa !34
  %650 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %649, i32 %648), !nosanitize !20
  %651 = extractvalue { i32, i1 } %650, 1, !nosanitize !20
  br i1 %651, label %652, label %653, !prof !21, !nosanitize !20

652:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

653:                                              ; preds = %.loopexit
  %654 = extractvalue { i32, i1 } %650, 0, !nosanitize !20
  store i32 %654, ptr %277, align 8, !tbaa !34
  %655 = load ptr, ptr %283, align 8, !tbaa !29
  store ptr %655, ptr %282, align 8, !tbaa !35
  %656 = icmp eq i32 %654, 0
  br i1 %656, label %657, label %661

657:                                              ; preds = %653, %606
  %658 = load i32, ptr %284, align 4, !tbaa !17
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %.loopexit48

660:                                              ; preds = %657
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit48

661:                                              ; preds = %653, %600
  %662 = tail call i32 @inflate(ptr noundef nonnull %282, i32 noundef 0) #13
  %663 = load i32, ptr %279, align 8, !tbaa !48
  %664 = icmp ult i32 %663, %598
  br i1 %664, label %665, label %666

665:                                              ; preds = %661
  store i32 0, ptr %286, align 4, !tbaa !33
  br label %666

666:                                              ; preds = %665, %661
  switch i32 %662, label %677 [
    i32 -2, label %667
    i32 2, label %667
    i32 -4, label %668
    i32 -3, label %669
  ]

667:                                              ; preds = %666, %666
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit48

668:                                              ; preds = %666
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit48

669:                                              ; preds = %666
  %670 = load i32, ptr %286, align 4, !tbaa !33
  %671 = icmp eq i32 %670, 1
  br i1 %671, label %672, label %673

672:                                              ; preds = %669
  store i32 0, ptr %277, align 8, !tbaa !34
  store i32 1, ptr %276, align 8, !tbaa !24
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %.loopexit48

673:                                              ; preds = %669
  %674 = load ptr, ptr %287, align 8, !tbaa !50
  %675 = icmp eq ptr %674, null
  %676 = select i1 %675, ptr @.str.6, ptr %674
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull %676) #13
  br label %.loopexit48

677:                                              ; preds = %666
  %678 = icmp ne i32 %663, 0
  %679 = icmp ne i32 %662, 1
  %680 = select i1 %678, i1 %679, i1 false
  br i1 %680, label %600, label %.loopexit48, !llvm.loop !51

.loopexit48:                                      ; preds = %677, %604, %673, %672, %668, %667, %660, %657, %.loopexit49
  %681 = phi i32 [ %601, %657 ], [ %601, %660 ], [ %662, %667 ], [ -4, %668 ], [ 0, %672 ], [ -3, %673 ], [ %647, %.loopexit49 ], [ %662, %677 ], [ %605, %604 ]
  %682 = load i32, ptr %279, align 8, !tbaa !48
  %683 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %598, i32 %682), !nosanitize !20
  %684 = extractvalue { i32, i1 } %683, 1, !nosanitize !20
  br i1 %684, label %685, label %686, !prof !21, !nosanitize !20

685:                                              ; preds = %.loopexit48
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

686:                                              ; preds = %.loopexit48
  %687 = extractvalue { i32, i1 } %683, 0, !nosanitize !20
  store i32 %687, ptr %1, align 8, !tbaa !19
  %688 = load ptr, ptr %281, align 8, !tbaa !49
  %689 = zext i32 %687 to i64
  %690 = sub nsw i64 0, %689
  %691 = getelementptr inbounds i8, ptr %688, i64 %690
  store ptr %691, ptr %274, align 8, !tbaa !22
  switch i32 %681, label %.loopexit51 [
    i32 1, label %692
    i32 0, label %694
  ]

692:                                              ; preds = %686
  store i32 0, ptr %286, align 4, !tbaa !33
  store i32 0, ptr %9, align 8, !tbaa !26
  br label %694

693:                                              ; preds = %323
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit51

694:                                              ; preds = %692, %686, %551, %545
  %695 = load i32, ptr %1, align 8, !tbaa !19
  br label %696

696:                                              ; preds = %694, %547
  %697 = phi i32 [ %695, %694 ], [ %550, %547 ]
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %.loopexit53

699:                                              ; preds = %696
  %700 = load i32, ptr %276, align 8, !tbaa !24
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %.backedge, label %702

702:                                              ; preds = %699
  %703 = load i32, ptr %277, align 8, !tbaa !34
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %.loopexit53, label %.backedge

.backedge:                                        ; preds = %702, %699
  br label %323, !llvm.loop !52

.loopexit53:                                      ; preds = %702, %696, %551, %.loopexit50
  %705 = load i64, ptr %270, align 8, !tbaa !18
  br label %706

706:                                              ; preds = %.loopexit53, %315
  %707 = phi i64 [ %705, %.loopexit53 ], [ %316, %315 ]
  %708 = icmp eq i64 %707, 0
  br i1 %708, label %709, label %291, !llvm.loop !53

709:                                              ; preds = %706, %320
  %710 = icmp slt i32 %0, 0
  br i1 %710, label %.loopexit51, label %713

711:                                              ; preds = %269
  %712 = icmp slt i32 %0, 0
  br i1 %712, label %.loopexit51, label %713

713:                                              ; preds = %711, %709
  %714 = load i32, ptr %1, align 8, !tbaa !19
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %716, label %735

716:                                              ; preds = %713
  store i32 1, ptr %1, align 8, !tbaa !19
  %717 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %718 = load ptr, ptr %717, align 8, !tbaa !30
  %719 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %720 = load i32, ptr %719, align 8, !tbaa !27
  %721 = shl i32 %720, 1
  %722 = zext i32 %721 to i64
  %723 = getelementptr inbounds nuw i8, ptr %718, i64 %722
  %724 = getelementptr inbounds i8, ptr %723, i64 -1
  %725 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %724, ptr %725, align 8, !tbaa !22
  %726 = trunc i32 %0 to i8
  store i8 %726, ptr %724, align 1, !tbaa !36
  %727 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %728 = load i64, ptr %727, align 8, !tbaa !23
  %729 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %728, i64 -1)
  %730 = extractvalue { i64, i1 } %729, 1, !nosanitize !20
  br i1 %730, label %731, label %732, !prof !21, !nosanitize !20

731:                                              ; preds = %768, %716
  tail call void @llvm.ubsantrap(i8 21) #15, !nosanitize !20
  unreachable, !nosanitize !20

732:                                              ; preds = %716
  %733 = extractvalue { i64, i1 } %729, 0, !nosanitize !20
  store i64 %733, ptr %727, align 8, !tbaa !23
  %734 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %734, align 4, !tbaa !61
  br label %.loopexit51

735:                                              ; preds = %713
  %736 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %737 = load i32, ptr %736, align 8, !tbaa !27
  %738 = shl i32 %737, 1
  %739 = icmp eq i32 %714, %738
  br i1 %739, label %740, label %741

740:                                              ; preds = %735
  tail call void @gz_error(ptr noundef nonnull %1, i32 noundef -3, ptr noundef nonnull @.str.2) #13
  br label %.loopexit51

741:                                              ; preds = %735
  %742 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %743 = load ptr, ptr %742, align 8, !tbaa !22
  %744 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %745 = load ptr, ptr %744, align 8, !tbaa !30
  %746 = icmp eq ptr %743, %745
  br i1 %746, label %747, label %762

747:                                              ; preds = %741
  %748 = zext i32 %714 to i64
  %749 = getelementptr inbounds nuw i8, ptr %745, i64 %748
  %750 = zext i32 %738 to i64
  %751 = getelementptr inbounds nuw i8, ptr %745, i64 %750
  br label %752

752:                                              ; preds = %752, %747
  %753 = phi ptr [ %757, %752 ], [ %751, %747 ]
  %754 = phi ptr [ %755, %752 ], [ %749, %747 ]
  %755 = getelementptr inbounds i8, ptr %754, i64 -1
  %756 = load i8, ptr %755, align 1, !tbaa !36
  %757 = getelementptr inbounds i8, ptr %753, i64 -1
  store i8 %756, ptr %757, align 1, !tbaa !36
  %758 = load ptr, ptr %744, align 8, !tbaa !30
  %759 = icmp ugt ptr %755, %758
  br i1 %759, label %752, label %760, !llvm.loop !94

760:                                              ; preds = %752
  %761 = load i32, ptr %1, align 8, !tbaa !19
  store ptr %757, ptr %742, align 8, !tbaa !22
  br label %762

762:                                              ; preds = %760, %741
  %763 = phi ptr [ %757, %760 ], [ %743, %741 ]
  %764 = phi i32 [ %761, %760 ], [ %714, %741 ]
  %765 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %764, i32 1), !nosanitize !20
  %766 = extractvalue { i32, i1 } %765, 1, !nosanitize !20
  br i1 %766, label %767, label %768, !prof !21, !nosanitize !20

767:                                              ; preds = %762
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

768:                                              ; preds = %762
  %769 = extractvalue { i32, i1 } %765, 0, !nosanitize !20
  store i32 %769, ptr %1, align 8, !tbaa !19
  %770 = getelementptr inbounds i8, ptr %763, i64 -1
  store ptr %770, ptr %742, align 8, !tbaa !22
  %771 = trunc i32 %0 to i8
  store i8 %771, ptr %770, align 1, !tbaa !36
  %772 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %773 = load i64, ptr %772, align 8, !tbaa !23
  %774 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %773, i64 -1)
  %775 = extractvalue { i64, i1 } %774, 1, !nosanitize !20
  br i1 %775, label %731, label %776, !prof !21, !nosanitize !20

776:                                              ; preds = %768
  %777 = extractvalue { i64, i1 } %774, 0, !nosanitize !20
  store i64 %777, ptr %772, align 8, !tbaa !23
  %778 = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 0, ptr %778, align 4, !tbaa !61
  br label %.loopexit51

.loopexit51:                                      ; preds = %686, %356, %776, %740, %732, %711, %709, %693, %.loopexit54, %.loopexit52, %342, %338, %265, %4, %2
  %779 = phi i32 [ %0, %732 ], [ -1, %740 ], [ %0, %776 ], [ -1, %2 ], [ -1, %4 ], [ -1, %265 ], [ -1, %709 ], [ -1, %711 ], [ -1, %693 ], [ -1, %.loopexit54 ], [ -1, %338 ], [ -1, %342 ], [ -1, %.loopexit52 ], [ -1, %356 ], [ -1, %686 ]
  ret i32 %779
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
  br i1 %8, label %.loopexit82, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %11 = load i32, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %11, 7247
  br i1 %12, label %13, label %.loopexit82

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
  br i1 %19, label %.loopexit82, label %20

20:                                               ; preds = %16, %13, %13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load i64, ptr %21, align 8, !tbaa !18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %.loopexit85, label %24

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

43:                                               ; preds = %458, %24
  %44 = phi i64 [ %459, %458 ], [ %22, %24 ]
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
  br label %458

69:                                               ; preds = %43
  %70 = load i32, ptr %27, align 8, !tbaa !24
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %.preheader793, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %28, align 8, !tbaa !25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %.loopexit85, label %.preheader793

.preheader793:                                    ; preds = %72, %69
  br label %75

75:                                               ; preds = %.backedge, %.preheader793
  %76 = load i32, ptr %29, align 8, !tbaa !26
  switch i32 %76, label %445 [
    i32 0, label %77
    i32 1, label %306
    i32 2, label %348
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
  br label %.loopexit82

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
  br label %.loopexit82

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
  switch i32 %109, label %.loopexit82 [
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
  br i1 %143, label %.loopexit75, label %144

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
  br i1 %166, label %.loopexit75, label %167

167:                                              ; preds = %161, %144, %120
  %168 = phi ptr [ %117, %120 ], [ %145, %144 ], [ %162, %161 ]
  %169 = phi ptr [ %118, %120 ], [ %146, %144 ], [ %163, %161 ]
  %170 = phi i32 [ %113, %120 ], [ %148, %144 ], [ %165, %161 ]
  %171 = add i32 %170, -1
  %172 = and i32 %170, 7
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %.loopexit77, label %.preheader76

.preheader76:                                     ; preds = %167, %.preheader76
  %174 = phi ptr [ %178, %.preheader76 ], [ %168, %167 ]
  %175 = phi ptr [ %179, %.preheader76 ], [ %169, %167 ]
  %176 = phi i32 [ %180, %.preheader76 ], [ 0, %167 ]
  %177 = load i8, ptr %175, align 1, !tbaa !36
  store i8 %177, ptr %174, align 1, !tbaa !36
  %178 = getelementptr inbounds nuw i8, ptr %174, i64 1
  %179 = getelementptr inbounds nuw i8, ptr %175, i64 1
  %180 = add nuw nsw i32 %176, 1
  %181 = icmp eq i32 %180, %172
  br i1 %181, label %.loopexit77.loopexit, label %.preheader76, !llvm.loop !97

.loopexit77.loopexit:                             ; preds = %.preheader76
  %182 = and i32 %170, -8
  br label %.loopexit77

.loopexit77:                                      ; preds = %.loopexit77.loopexit, %167
  %183 = phi ptr [ %168, %167 ], [ %178, %.loopexit77.loopexit ]
  %184 = phi ptr [ %169, %167 ], [ %179, %.loopexit77.loopexit ]
  %185 = phi i32 [ %170, %167 ], [ %182, %.loopexit77.loopexit ]
  %186 = icmp ult i32 %171, 7
  br i1 %186, label %.loopexit75, label %.preheader74

.preheader74:                                     ; preds = %.loopexit77, %.preheader74
  %187 = phi ptr [ %213, %.preheader74 ], [ %183, %.loopexit77 ]
  %188 = phi ptr [ %214, %.preheader74 ], [ %184, %.loopexit77 ]
  %189 = phi i32 [ %212, %.preheader74 ], [ %185, %.loopexit77 ]
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
  br i1 %215, label %.loopexit75, label %.preheader74, !llvm.loop !98

.loopexit75:                                      ; preds = %.preheader74, %.loopexit77, %161, %142
  %216 = load i32, ptr %28, align 8, !tbaa !34
  br label %217

217:                                              ; preds = %.loopexit75, %116, %114
  %218 = phi i32 [ %216, %.loopexit75 ], [ %113, %116 ], [ 0, %114 ]
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
  br i1 %250, label %229, label %.loopexit73, !llvm.loop !47

251:                                              ; preds = %234
  %252 = icmp slt i32 %242, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %251
  %254 = load i32, ptr %228, align 4, !tbaa !45
  %255 = icmp eq i32 %254, 11
  br i1 %255, label %256, label %.loopexit83

256:                                              ; preds = %253
  store i32 1, ptr %36, align 4, !tbaa !17
  %257 = icmp eq i32 %230, 0
  br i1 %257, label %258, label %.loopexit73

258:                                              ; preds = %256
  %259 = load i32, ptr %228, align 4, !tbaa !45
  br label %.loopexit83

260:                                              ; preds = %251
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit73

.loopexit83:                                      ; preds = %253, %258
  %261 = phi i32 [ %259, %258 ], [ %254, %253 ]
  %262 = tail call ptr @strerror(i32 noundef %261) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %262) #13
  br label %.loopexit82

.loopexit73:                                      ; preds = %248, %260, %256
  %263 = phi i32 [ %230, %260 ], [ %230, %256 ], [ %249, %248 ]
  %264 = load i32, ptr %28, align 8, !tbaa !34
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %264, i32 %263), !nosanitize !20
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !20
  br i1 %266, label %267, label %268, !prof !21, !nosanitize !20

267:                                              ; preds = %.loopexit73
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

268:                                              ; preds = %.loopexit73
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
  br label %446

299:                                              ; preds = %293, %289, %285, %282, %279
  %300 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %300, ptr %25, align 8, !tbaa !22
  %301 = zext i32 %272 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %300, ptr align 1 %281, i64 %301, i1 false)
  %302 = load i32, ptr %28, align 8, !tbaa !34
  store i32 %302, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %29, align 8, !tbaa !26
  br label %448

303:                                              ; preds = %274, %271, %103
  %304 = load i32, ptr %29, align 8, !tbaa !26
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %.loopexit84, label %446

306:                                              ; preds = %75
  %307 = load ptr, ptr %32, align 8, !tbaa !30
  %308 = load i32, ptr %30, align 8, !tbaa !27
  %309 = shl i32 %308, 1
  store i32 0, ptr %36, align 4, !tbaa !17
  %310 = tail call ptr @__errno_location() #17
  store i32 0, ptr %310, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %311

311:                                              ; preds = %331, %306
  %312 = phi i32 [ %332, %331 ], [ 0, %306 ]
  %313 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %309, i32 %312), !nosanitize !20
  %314 = extractvalue { i32, i1 } %313, 1, !nosanitize !20
  br i1 %314, label %315, label %316, !prof !21, !nosanitize !20

315:                                              ; preds = %311
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

316:                                              ; preds = %311
  %317 = extractvalue { i32, i1 } %313, 0, !nosanitize !20
  %318 = tail call i32 @llvm.umin.i32(i32 %317, i32 1073741824)
  %319 = load i32, ptr %37, align 4, !tbaa !46
  %320 = zext i32 %312 to i64
  %321 = getelementptr inbounds nuw i8, ptr %307, i64 %320
  %322 = zext nneg i32 %318 to i64
  %323 = tail call i64 @read(i32 noundef %319, ptr noundef %321, i64 noundef %322) #13
  %324 = trunc i64 %323 to i32
  %325 = icmp slt i32 %324, 1
  br i1 %325, label %334, label %326

326:                                              ; preds = %316
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
  %333 = icmp ult i32 %332, %309
  br i1 %333, label %311, label %.loopexit81, !llvm.loop !47

334:                                              ; preds = %316
  %335 = icmp slt i32 %324, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %334
  %337 = load i32, ptr %310, align 4, !tbaa !45
  %338 = icmp eq i32 %337, 11
  br i1 %338, label %339, label %.loopexit86

339:                                              ; preds = %336
  store i32 1, ptr %36, align 4, !tbaa !17
  %340 = load i32, ptr %0, align 4, !tbaa !45
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %.loopexit81

342:                                              ; preds = %339
  %343 = load i32, ptr %310, align 4, !tbaa !45
  br label %.loopexit86

344:                                              ; preds = %334
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit81

.loopexit86:                                      ; preds = %336, %342
  %345 = phi i32 [ %343, %342 ], [ %337, %336 ]
  %346 = tail call ptr @strerror(i32 noundef %345) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %346) #13
  br label %.loopexit82

.loopexit81:                                      ; preds = %331, %344, %339
  %347 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %347, ptr %25, align 8, !tbaa !22
  br label %.loopexit84

348:                                              ; preds = %75
  %349 = load i32, ptr %30, align 8, !tbaa !27
  %350 = shl i32 %349, 1
  store i32 %350, ptr %31, align 8, !tbaa !48
  %351 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %351, ptr %33, align 8, !tbaa !49
  br label %352

352:                                              ; preds = %429, %348
  %353 = phi i32 [ 0, %348 ], [ %414, %429 ]
  %354 = load i32, ptr %28, align 8, !tbaa !34
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %413

356:                                              ; preds = %352
  %357 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %357, label %.loopexit78 [
    i32 0, label %358
    i32 -5, label %358
  ]

358:                                              ; preds = %356, %356
  %359 = load i32, ptr %27, align 8, !tbaa !24
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %409

361:                                              ; preds = %358
  %362 = load i32, ptr %30, align 8, !tbaa !27
  %363 = load ptr, ptr %35, align 8, !tbaa !29
  store i32 0, ptr %36, align 4, !tbaa !17
  %364 = tail call ptr @__errno_location() #17
  store i32 0, ptr %364, align 4, !tbaa !45
  br label %365

365:                                              ; preds = %384, %361
  %366 = phi i32 [ 0, %361 ], [ %385, %384 ]
  %367 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %362, i32 %366), !nosanitize !20
  %368 = extractvalue { i32, i1 } %367, 1, !nosanitize !20
  br i1 %368, label %369, label %370, !prof !21, !nosanitize !20

369:                                              ; preds = %365
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

370:                                              ; preds = %365
  %371 = extractvalue { i32, i1 } %367, 0, !nosanitize !20
  %372 = tail call i32 @llvm.umin.i32(i32 %371, i32 1073741824)
  %373 = load i32, ptr %37, align 4, !tbaa !46
  %374 = zext i32 %366 to i64
  %375 = getelementptr inbounds nuw i8, ptr %363, i64 %374
  %376 = zext nneg i32 %372 to i64
  %377 = tail call i64 @read(i32 noundef %373, ptr noundef %375, i64 noundef %376) #13
  %378 = trunc i64 %377 to i32
  %379 = icmp slt i32 %378, 1
  br i1 %379, label %387, label %380

380:                                              ; preds = %370
  %381 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %366, i32 %378), !nosanitize !20
  %382 = extractvalue { i32, i1 } %381, 1, !nosanitize !20
  br i1 %382, label %383, label %384, !prof !21, !nosanitize !20

383:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

384:                                              ; preds = %380
  %385 = extractvalue { i32, i1 } %381, 0, !nosanitize !20
  %386 = icmp ult i32 %385, %362
  br i1 %386, label %365, label %.loopexit72, !llvm.loop !47

387:                                              ; preds = %370
  %388 = icmp slt i32 %378, 0
  br i1 %388, label %389, label %396

389:                                              ; preds = %387
  %390 = load i32, ptr %364, align 4, !tbaa !45
  %391 = icmp eq i32 %390, 11
  br i1 %391, label %392, label %.loopexit80

392:                                              ; preds = %389
  store i32 1, ptr %36, align 4, !tbaa !17
  %393 = icmp eq i32 %366, 0
  br i1 %393, label %394, label %.loopexit72

394:                                              ; preds = %392
  %395 = load i32, ptr %364, align 4, !tbaa !45
  br label %.loopexit80

396:                                              ; preds = %387
  store i32 1, ptr %27, align 8, !tbaa !24
  br label %.loopexit72

.loopexit80:                                      ; preds = %389, %394
  %397 = phi i32 [ %395, %394 ], [ %390, %389 ]
  %398 = tail call ptr @strerror(i32 noundef %397) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %398) #13
  %399 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit78

.loopexit72:                                      ; preds = %384, %396, %392
  %400 = phi i32 [ %366, %396 ], [ %366, %392 ], [ %385, %384 ]
  %401 = load i32, ptr %28, align 8, !tbaa !34
  %402 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %401, i32 %400), !nosanitize !20
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !20
  br i1 %403, label %404, label %405, !prof !21, !nosanitize !20

404:                                              ; preds = %.loopexit72
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

405:                                              ; preds = %.loopexit72
  %406 = extractvalue { i32, i1 } %402, 0, !nosanitize !20
  store i32 %406, ptr %28, align 8, !tbaa !34
  %407 = load ptr, ptr %35, align 8, !tbaa !29
  store ptr %407, ptr %34, align 8, !tbaa !35
  %408 = icmp eq i32 %406, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %405, %358
  %410 = load i32, ptr %36, align 4, !tbaa !17
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %.loopexit78

412:                                              ; preds = %409
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit78

413:                                              ; preds = %405, %352
  %414 = tail call i32 @inflate(ptr noundef nonnull %34, i32 noundef 0) #13
  %415 = load i32, ptr %31, align 8, !tbaa !48
  %416 = icmp ult i32 %415, %350
  br i1 %416, label %417, label %418

417:                                              ; preds = %413
  store i32 0, ptr %38, align 4, !tbaa !33
  br label %418

418:                                              ; preds = %417, %413
  switch i32 %414, label %429 [
    i32 -2, label %419
    i32 2, label %419
    i32 -4, label %420
    i32 -3, label %421
  ]

419:                                              ; preds = %418, %418
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit78

420:                                              ; preds = %418
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit78

421:                                              ; preds = %418
  %422 = load i32, ptr %38, align 4, !tbaa !33
  %423 = icmp eq i32 %422, 1
  br i1 %423, label %424, label %425

424:                                              ; preds = %421
  store i32 0, ptr %28, align 8, !tbaa !34
  store i32 1, ptr %27, align 8, !tbaa !24
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %.loopexit78

425:                                              ; preds = %421
  %426 = load ptr, ptr %39, align 8, !tbaa !50
  %427 = icmp eq ptr %426, null
  %428 = select i1 %427, ptr @.str.6, ptr %426
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %428) #13
  br label %.loopexit78

429:                                              ; preds = %418
  %430 = icmp ne i32 %415, 0
  %431 = icmp ne i32 %414, 1
  %432 = select i1 %430, i1 %431, i1 false
  br i1 %432, label %352, label %.loopexit78, !llvm.loop !51

.loopexit78:                                      ; preds = %429, %356, %425, %424, %420, %419, %412, %409, %.loopexit80
  %433 = phi i32 [ %353, %409 ], [ %353, %412 ], [ %414, %419 ], [ -4, %420 ], [ 0, %424 ], [ -3, %425 ], [ %399, %.loopexit80 ], [ %414, %429 ], [ %357, %356 ]
  %434 = load i32, ptr %31, align 8, !tbaa !48
  %435 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %350, i32 %434), !nosanitize !20
  %436 = extractvalue { i32, i1 } %435, 1, !nosanitize !20
  br i1 %436, label %437, label %438, !prof !21, !nosanitize !20

437:                                              ; preds = %.loopexit78
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

438:                                              ; preds = %.loopexit78
  %439 = extractvalue { i32, i1 } %435, 0, !nosanitize !20
  store i32 %439, ptr %0, align 8, !tbaa !19
  %440 = load ptr, ptr %33, align 8, !tbaa !49
  %441 = zext i32 %439 to i64
  %442 = sub nsw i64 0, %441
  %443 = getelementptr inbounds i8, ptr %440, i64 %442
  store ptr %443, ptr %25, align 8, !tbaa !22
  switch i32 %433, label %.loopexit82 [
    i32 1, label %444
    i32 0, label %446
  ]

444:                                              ; preds = %438
  store i32 0, ptr %38, align 4, !tbaa !33
  store i32 0, ptr %29, align 8, !tbaa !26
  br label %446

445:                                              ; preds = %75
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit82

446:                                              ; preds = %444, %438, %303, %297
  %447 = load i32, ptr %0, align 8, !tbaa !19
  br label %448

448:                                              ; preds = %446, %299
  %449 = phi i32 [ %447, %446 ], [ %302, %299 ]
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %.loopexit84

451:                                              ; preds = %448
  %452 = load i32, ptr %27, align 8, !tbaa !24
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %.backedge, label %454

454:                                              ; preds = %451
  %455 = load i32, ptr %28, align 8, !tbaa !34
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %.loopexit84, label %.backedge

.backedge:                                        ; preds = %454, %451
  br label %75, !llvm.loop !52

.loopexit84:                                      ; preds = %454, %448, %303, %.loopexit81
  %457 = load i64, ptr %21, align 8, !tbaa !18
  br label %458

458:                                              ; preds = %.loopexit84, %67
  %459 = phi i64 [ %457, %.loopexit84 ], [ %68, %67 ]
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %.loopexit85, label %43, !llvm.loop !53

.loopexit85:                                      ; preds = %458, %72, %20
  %461 = add nsw i32 %2, -1
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %.loopexit82, label %463

463:                                              ; preds = %.loopexit85
  %464 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %465 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %466 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %467 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %468 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %469 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %470 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %471 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %472 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %474 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %475 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %477 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %478 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %479 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %480 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %481 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %482 = load i32, ptr %0, align 8, !tbaa !19
  br label %483

483:                                              ; preds = %910, %463
  %484 = phi i32 [ %899, %910 ], [ %482, %463 ]
  %485 = phi i32 [ %911, %910 ], [ %461, %463 ]
  %486 = phi ptr [ %912, %910 ], [ %1, %463 ]
  %487 = icmp eq i32 %484, 0
  br i1 %487, label %.preheader66, label %873

.preheader66:                                     ; preds = %483, %.preheader66.backedge
  %488 = load i32, ptr %464, align 8, !tbaa !26
  switch i32 %488, label %857 [
    i32 0, label %489
    i32 1, label %718
    i32 2, label %760
  ]

489:                                              ; preds = %.preheader66
  %490 = load i32, ptr %465, align 8, !tbaa !27
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %509

492:                                              ; preds = %489
  %493 = load i32, ptr %478, align 4, !tbaa !28
  %494 = zext i32 %493 to i64
  %495 = tail call noalias ptr @malloc(i64 noundef %494) #16
  store ptr %495, ptr %472, align 8, !tbaa !29
  %496 = shl i32 %493, 1
  %497 = zext i32 %496 to i64
  %498 = tail call noalias ptr @malloc(i64 noundef %497) #16
  store ptr %498, ptr %467, align 8, !tbaa !30
  %499 = icmp eq ptr %495, null
  %500 = icmp eq ptr %498, null
  %501 = or i1 %499, %500
  br i1 %501, label %502, label %503

502:                                              ; preds = %492
  tail call void @free(ptr noundef %498) #13
  tail call void @free(ptr noundef %495) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit67

503:                                              ; preds = %492
  store i32 %493, ptr %465, align 8, !tbaa !27
  store i32 0, ptr %470, align 8, !tbaa !25
  store ptr null, ptr %469, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %479, i8 0, i64 24, i1 false)
  %504 = tail call i32 @inflateInit2_(ptr noundef nonnull %469, i32 noundef 31, ptr noundef nonnull @.str.7, i32 noundef 112) #13
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %509, label %506

506:                                              ; preds = %503
  %507 = load ptr, ptr %467, align 8, !tbaa !30
  tail call void @free(ptr noundef %507) #13
  %508 = load ptr, ptr %472, align 8, !tbaa !29
  tail call void @free(ptr noundef %508) #13
  store i32 0, ptr %465, align 8, !tbaa !27
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit67

509:                                              ; preds = %503, %489
  %510 = load i32, ptr %480, align 8, !tbaa !32
  %511 = icmp eq i32 %510, -1
  br i1 %511, label %515, label %512

512:                                              ; preds = %509
  %513 = load i32, ptr %475, align 4, !tbaa !33
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %512, %509
  %516 = tail call i32 @inflateReset(ptr noundef nonnull %469) #13
  store i32 2, ptr %464, align 8, !tbaa !26
  %517 = load i32, ptr %475, align 4, !tbaa !33
  %518 = icmp ne i32 %517, -1
  %519 = zext i1 %518 to i32
  store i32 %519, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %480, align 8, !tbaa !32
  br label %715

520:                                              ; preds = %512
  %521 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %521, label %.loopexit67 [
    i32 0, label %522
    i32 -5, label %522
  ]

522:                                              ; preds = %520, %520
  %523 = load i32, ptr %471, align 8, !tbaa !24
  %524 = icmp eq i32 %523, 0
  %525 = load i32, ptr %470, align 8, !tbaa !34
  br i1 %524, label %526, label %683

526:                                              ; preds = %522
  %527 = icmp eq i32 %525, 0
  br i1 %527, label %629, label %528

528:                                              ; preds = %526
  %529 = load ptr, ptr %472, align 8, !tbaa !29
  %530 = load ptr, ptr %469, align 8, !tbaa !35
  %531 = icmp eq ptr %530, %529
  br i1 %531, label %629, label %532

532:                                              ; preds = %528
  %533 = ptrtoint ptr %530 to i64
  %534 = ptrtoint ptr %529 to i64
  %535 = zext i32 %525 to i64
  %536 = icmp ult i32 %525, 4
  %537 = sub i64 %534, %533
  %538 = icmp ult i64 %537, 32
  %539 = or i1 %536, %538
  br i1 %539, label %579, label %540

540:                                              ; preds = %532
  %541 = icmp ult i32 %525, 32
  br i1 %541, label %563, label %542

542:                                              ; preds = %540
  %543 = and i64 %535, 4294967264
  br label %544

544:                                              ; preds = %544, %542
  %545 = phi i64 [ 0, %542 ], [ %552, %544 ]
  %546 = getelementptr i8, ptr %529, i64 %545
  %547 = getelementptr i8, ptr %530, i64 %545
  %548 = getelementptr i8, ptr %547, i64 16
  %549 = load <16 x i8>, ptr %547, align 1, !tbaa !36
  %550 = load <16 x i8>, ptr %548, align 1, !tbaa !36
  %551 = getelementptr i8, ptr %546, i64 16
  store <16 x i8> %549, ptr %546, align 1, !tbaa !36
  store <16 x i8> %550, ptr %551, align 1, !tbaa !36
  %552 = add nuw nsw i64 %545, 32
  %553 = icmp eq i64 %552, %543
  br i1 %553, label %554, label %544, !llvm.loop !99

554:                                              ; preds = %544
  %555 = icmp eq i64 %543, %535
  br i1 %555, label %.loopexit60, label %556

556:                                              ; preds = %554
  %557 = getelementptr i8, ptr %529, i64 %543
  %558 = getelementptr i8, ptr %530, i64 %543
  %559 = trunc nuw i64 %543 to i32
  %560 = sub i32 %525, %559
  %561 = and i64 %535, 28
  %562 = icmp eq i64 %561, 0
  br i1 %562, label %579, label %563

563:                                              ; preds = %556, %540
  %564 = phi i64 [ %543, %556 ], [ 0, %540 ]
  %565 = and i64 %535, 4294967292
  br label %566

566:                                              ; preds = %566, %563
  %567 = phi i64 [ %564, %563 ], [ %571, %566 ]
  %568 = getelementptr i8, ptr %529, i64 %567
  %569 = getelementptr i8, ptr %530, i64 %567
  %570 = load <4 x i8>, ptr %569, align 1, !tbaa !36
  store <4 x i8> %570, ptr %568, align 1, !tbaa !36
  %571 = add nuw i64 %567, 4
  %572 = icmp eq i64 %571, %565
  br i1 %572, label %573, label %566, !llvm.loop !100

573:                                              ; preds = %566
  %574 = getelementptr i8, ptr %529, i64 %565
  %575 = getelementptr i8, ptr %530, i64 %565
  %576 = trunc nuw i64 %565 to i32
  %577 = sub i32 %525, %576
  %578 = icmp eq i64 %565, %535
  br i1 %578, label %.loopexit60, label %579

579:                                              ; preds = %573, %556, %532
  %580 = phi ptr [ %529, %532 ], [ %557, %556 ], [ %574, %573 ]
  %581 = phi ptr [ %530, %532 ], [ %558, %556 ], [ %575, %573 ]
  %582 = phi i32 [ %525, %532 ], [ %560, %556 ], [ %577, %573 ]
  %583 = add i32 %582, -1
  %584 = and i32 %582, 7
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %.loopexit62, label %.preheader61

.preheader61:                                     ; preds = %579, %.preheader61
  %586 = phi ptr [ %590, %.preheader61 ], [ %580, %579 ]
  %587 = phi ptr [ %591, %.preheader61 ], [ %581, %579 ]
  %588 = phi i32 [ %592, %.preheader61 ], [ 0, %579 ]
  %589 = load i8, ptr %587, align 1, !tbaa !36
  store i8 %589, ptr %586, align 1, !tbaa !36
  %590 = getelementptr inbounds nuw i8, ptr %586, i64 1
  %591 = getelementptr inbounds nuw i8, ptr %587, i64 1
  %592 = add nuw nsw i32 %588, 1
  %593 = icmp eq i32 %592, %584
  br i1 %593, label %.loopexit62.loopexit, label %.preheader61, !llvm.loop !101

.loopexit62.loopexit:                             ; preds = %.preheader61
  %594 = and i32 %582, -8
  br label %.loopexit62

.loopexit62:                                      ; preds = %.loopexit62.loopexit, %579
  %595 = phi ptr [ %580, %579 ], [ %590, %.loopexit62.loopexit ]
  %596 = phi ptr [ %581, %579 ], [ %591, %.loopexit62.loopexit ]
  %597 = phi i32 [ %582, %579 ], [ %594, %.loopexit62.loopexit ]
  %598 = icmp ult i32 %583, 7
  br i1 %598, label %.loopexit60, label %.preheader

.preheader:                                       ; preds = %.loopexit62, %.preheader
  %599 = phi ptr [ %625, %.preheader ], [ %595, %.loopexit62 ]
  %600 = phi ptr [ %626, %.preheader ], [ %596, %.loopexit62 ]
  %601 = phi i32 [ %624, %.preheader ], [ %597, %.loopexit62 ]
  %602 = load i8, ptr %600, align 1, !tbaa !36
  store i8 %602, ptr %599, align 1, !tbaa !36
  %603 = getelementptr inbounds nuw i8, ptr %599, i64 1
  %604 = getelementptr inbounds nuw i8, ptr %600, i64 1
  %605 = load i8, ptr %604, align 1, !tbaa !36
  store i8 %605, ptr %603, align 1, !tbaa !36
  %606 = getelementptr inbounds nuw i8, ptr %599, i64 2
  %607 = getelementptr inbounds nuw i8, ptr %600, i64 2
  %608 = load i8, ptr %607, align 1, !tbaa !36
  store i8 %608, ptr %606, align 1, !tbaa !36
  %609 = getelementptr inbounds nuw i8, ptr %599, i64 3
  %610 = getelementptr inbounds nuw i8, ptr %600, i64 3
  %611 = load i8, ptr %610, align 1, !tbaa !36
  store i8 %611, ptr %609, align 1, !tbaa !36
  %612 = getelementptr inbounds nuw i8, ptr %599, i64 4
  %613 = getelementptr inbounds nuw i8, ptr %600, i64 4
  %614 = load i8, ptr %613, align 1, !tbaa !36
  store i8 %614, ptr %612, align 1, !tbaa !36
  %615 = getelementptr inbounds nuw i8, ptr %599, i64 5
  %616 = getelementptr inbounds nuw i8, ptr %600, i64 5
  %617 = load i8, ptr %616, align 1, !tbaa !36
  store i8 %617, ptr %615, align 1, !tbaa !36
  %618 = getelementptr inbounds nuw i8, ptr %599, i64 6
  %619 = getelementptr inbounds nuw i8, ptr %600, i64 6
  %620 = load i8, ptr %619, align 1, !tbaa !36
  store i8 %620, ptr %618, align 1, !tbaa !36
  %621 = getelementptr inbounds nuw i8, ptr %599, i64 7
  %622 = getelementptr inbounds nuw i8, ptr %600, i64 7
  %623 = load i8, ptr %622, align 1, !tbaa !36
  store i8 %623, ptr %621, align 1, !tbaa !36
  %624 = add i32 %601, -8
  %625 = getelementptr inbounds nuw i8, ptr %599, i64 8
  %626 = getelementptr inbounds nuw i8, ptr %600, i64 8
  %627 = icmp eq i32 %624, 0
  br i1 %627, label %.loopexit60, label %.preheader, !llvm.loop !102

.loopexit60:                                      ; preds = %.preheader, %.loopexit62, %573, %554
  %628 = load i32, ptr %470, align 8, !tbaa !34
  br label %629

629:                                              ; preds = %.loopexit60, %528, %526
  %630 = phi i32 [ %628, %.loopexit60 ], [ %525, %528 ], [ 0, %526 ]
  %631 = load i32, ptr %465, align 8, !tbaa !27
  %632 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %631, i32 %630), !nosanitize !20
  %633 = extractvalue { i32, i1 } %632, 1, !nosanitize !20
  br i1 %633, label %634, label %635, !prof !21, !nosanitize !20

634:                                              ; preds = %629
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

635:                                              ; preds = %629
  %636 = extractvalue { i32, i1 } %632, 0, !nosanitize !20
  %637 = load ptr, ptr %472, align 8, !tbaa !29
  %638 = zext i32 %630 to i64
  %639 = getelementptr inbounds nuw i8, ptr %637, i64 %638
  store i32 0, ptr %473, align 4, !tbaa !17
  %640 = tail call ptr @__errno_location() #17
  store i32 0, ptr %640, align 4, !tbaa !45
  br label %641

641:                                              ; preds = %660, %635
  %642 = phi i32 [ 0, %635 ], [ %661, %660 ]
  %643 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %636, i32 %642), !nosanitize !20
  %644 = extractvalue { i32, i1 } %643, 1, !nosanitize !20
  br i1 %644, label %645, label %646, !prof !21, !nosanitize !20

645:                                              ; preds = %641
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

646:                                              ; preds = %641
  %647 = extractvalue { i32, i1 } %643, 0, !nosanitize !20
  %648 = tail call i32 @llvm.umin.i32(i32 %647, i32 1073741824)
  %649 = load i32, ptr %474, align 4, !tbaa !46
  %650 = zext i32 %642 to i64
  %651 = getelementptr inbounds nuw i8, ptr %639, i64 %650
  %652 = zext nneg i32 %648 to i64
  %653 = tail call i64 @read(i32 noundef %649, ptr noundef %651, i64 noundef %652) #13
  %654 = trunc i64 %653 to i32
  %655 = icmp slt i32 %654, 1
  br i1 %655, label %663, label %656

656:                                              ; preds = %646
  %657 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %642, i32 %654), !nosanitize !20
  %658 = extractvalue { i32, i1 } %657, 1, !nosanitize !20
  br i1 %658, label %659, label %660, !prof !21, !nosanitize !20

659:                                              ; preds = %656
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

660:                                              ; preds = %656
  %661 = extractvalue { i32, i1 } %657, 0, !nosanitize !20
  %662 = icmp ult i32 %661, %636
  br i1 %662, label %641, label %.loopexit59, !llvm.loop !47

663:                                              ; preds = %646
  %664 = icmp slt i32 %654, 0
  br i1 %664, label %665, label %672

665:                                              ; preds = %663
  %666 = load i32, ptr %640, align 4, !tbaa !45
  %667 = icmp eq i32 %666, 11
  br i1 %667, label %668, label %.loopexit68

668:                                              ; preds = %665
  store i32 1, ptr %473, align 4, !tbaa !17
  %669 = icmp eq i32 %642, 0
  br i1 %669, label %670, label %.loopexit59

670:                                              ; preds = %668
  %671 = load i32, ptr %640, align 4, !tbaa !45
  br label %.loopexit68

672:                                              ; preds = %663
  store i32 1, ptr %471, align 8, !tbaa !24
  br label %.loopexit59

.loopexit68:                                      ; preds = %665, %670
  %673 = phi i32 [ %671, %670 ], [ %666, %665 ]
  %674 = tail call ptr @strerror(i32 noundef %673) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %674) #13
  br label %.loopexit67

.loopexit59:                                      ; preds = %660, %672, %668
  %675 = phi i32 [ %642, %672 ], [ %642, %668 ], [ %661, %660 ]
  %676 = load i32, ptr %470, align 8, !tbaa !34
  %677 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %676, i32 %675), !nosanitize !20
  %678 = extractvalue { i32, i1 } %677, 1, !nosanitize !20
  br i1 %678, label %679, label %680, !prof !21, !nosanitize !20

679:                                              ; preds = %.loopexit59
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

680:                                              ; preds = %.loopexit59
  %681 = extractvalue { i32, i1 } %677, 0, !nosanitize !20
  store i32 %681, ptr %470, align 8, !tbaa !34
  %682 = load ptr, ptr %472, align 8, !tbaa !29
  store ptr %682, ptr %469, align 8, !tbaa !35
  br label %683

683:                                              ; preds = %680, %522
  %684 = phi i32 [ %681, %680 ], [ %525, %522 ]
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %715, label %686

686:                                              ; preds = %683
  %687 = load i32, ptr %473, align 4, !tbaa !17
  %688 = icmp ne i32 %687, 0
  %689 = icmp ult i32 %684, 4
  %690 = and i1 %689, %688
  br i1 %690, label %715, label %691

691:                                              ; preds = %686
  %692 = icmp ugt i32 %684, 3
  %693 = load ptr, ptr %469, align 8, !tbaa !35
  br i1 %692, label %694, label %711

694:                                              ; preds = %691
  %695 = load i8, ptr %693, align 1, !tbaa !36
  %696 = icmp eq i8 %695, 31
  br i1 %696, label %697, label %711

697:                                              ; preds = %694
  %698 = getelementptr inbounds nuw i8, ptr %693, i64 1
  %699 = load i8, ptr %698, align 1, !tbaa !36
  %700 = icmp eq i8 %699, -117
  br i1 %700, label %701, label %711

701:                                              ; preds = %697
  %702 = getelementptr inbounds nuw i8, ptr %693, i64 2
  %703 = load i8, ptr %702, align 1, !tbaa !36
  %704 = icmp eq i8 %703, 8
  br i1 %704, label %705, label %711

705:                                              ; preds = %701
  %706 = getelementptr inbounds nuw i8, ptr %693, i64 3
  %707 = load i8, ptr %706, align 1, !tbaa !36
  %708 = icmp ult i8 %707, 32
  br i1 %708, label %709, label %711

709:                                              ; preds = %705
  %710 = tail call i32 @inflateReset(ptr noundef nonnull %469) #13
  store i32 2, ptr %464, align 8, !tbaa !26
  store i32 1, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %480, align 8, !tbaa !32
  br label %858

711:                                              ; preds = %705, %701, %697, %694, %691
  %712 = load ptr, ptr %467, align 8, !tbaa !30
  store ptr %712, ptr %477, align 8, !tbaa !22
  %713 = zext i32 %684 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %712, ptr align 1 %693, i64 %713, i1 false)
  %714 = load i32, ptr %470, align 8, !tbaa !34
  store i32 %714, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %470, align 8, !tbaa !34
  store i32 1, ptr %464, align 8, !tbaa !26
  br label %860

715:                                              ; preds = %686, %683, %515
  %716 = load i32, ptr %464, align 8, !tbaa !26
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %.loopexit69, label %858

718:                                              ; preds = %.preheader66
  %719 = load ptr, ptr %467, align 8, !tbaa !30
  %720 = load i32, ptr %465, align 8, !tbaa !27
  %721 = shl i32 %720, 1
  store i32 0, ptr %473, align 4, !tbaa !17
  %722 = tail call ptr @__errno_location() #17
  store i32 0, ptr %722, align 4, !tbaa !45
  store i32 0, ptr %0, align 8, !tbaa !45
  br label %723

723:                                              ; preds = %743, %718
  %724 = phi i32 [ %744, %743 ], [ 0, %718 ]
  %725 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %721, i32 %724), !nosanitize !20
  %726 = extractvalue { i32, i1 } %725, 1, !nosanitize !20
  br i1 %726, label %727, label %728, !prof !21, !nosanitize !20

727:                                              ; preds = %723
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

728:                                              ; preds = %723
  %729 = extractvalue { i32, i1 } %725, 0, !nosanitize !20
  %730 = tail call i32 @llvm.umin.i32(i32 %729, i32 1073741824)
  %731 = load i32, ptr %474, align 4, !tbaa !46
  %732 = zext i32 %724 to i64
  %733 = getelementptr inbounds nuw i8, ptr %719, i64 %732
  %734 = zext nneg i32 %730 to i64
  %735 = tail call i64 @read(i32 noundef %731, ptr noundef %733, i64 noundef %734) #13
  %736 = trunc i64 %735 to i32
  %737 = icmp slt i32 %736, 1
  br i1 %737, label %746, label %738

738:                                              ; preds = %728
  %739 = load i32, ptr %0, align 4, !tbaa !45
  %740 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %739, i32 %736), !nosanitize !20
  %741 = extractvalue { i32, i1 } %740, 1, !nosanitize !20
  br i1 %741, label %742, label %743, !prof !21, !nosanitize !20

742:                                              ; preds = %738
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

743:                                              ; preds = %738
  %744 = extractvalue { i32, i1 } %740, 0, !nosanitize !20
  store i32 %744, ptr %0, align 4, !tbaa !45
  %745 = icmp ult i32 %744, %721
  br i1 %745, label %723, label %.loopexit65, !llvm.loop !47

746:                                              ; preds = %728
  %747 = icmp slt i32 %736, 0
  br i1 %747, label %748, label %756

748:                                              ; preds = %746
  %749 = load i32, ptr %722, align 4, !tbaa !45
  %750 = icmp eq i32 %749, 11
  br i1 %750, label %751, label %.loopexit70

751:                                              ; preds = %748
  store i32 1, ptr %473, align 4, !tbaa !17
  %752 = load i32, ptr %0, align 4, !tbaa !45
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %.loopexit65

754:                                              ; preds = %751
  %755 = load i32, ptr %722, align 4, !tbaa !45
  br label %.loopexit70

756:                                              ; preds = %746
  store i32 1, ptr %471, align 8, !tbaa !24
  br label %.loopexit65

.loopexit70:                                      ; preds = %748, %754
  %757 = phi i32 [ %755, %754 ], [ %749, %748 ]
  %758 = tail call ptr @strerror(i32 noundef %757) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %758) #13
  br label %.loopexit67

.loopexit65:                                      ; preds = %743, %756, %751
  %759 = load ptr, ptr %467, align 8, !tbaa !30
  store ptr %759, ptr %477, align 8, !tbaa !22
  br label %.loopexit69

760:                                              ; preds = %.preheader66
  %761 = load i32, ptr %465, align 8, !tbaa !27
  %762 = shl i32 %761, 1
  store i32 %762, ptr %466, align 8, !tbaa !48
  %763 = load ptr, ptr %467, align 8, !tbaa !30
  store ptr %763, ptr %468, align 8, !tbaa !49
  br label %764

764:                                              ; preds = %841, %760
  %765 = phi i32 [ 0, %760 ], [ %826, %841 ]
  %766 = load i32, ptr %470, align 8, !tbaa !34
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %825

768:                                              ; preds = %764
  %769 = load i32, ptr %14, align 8, !tbaa !16
  switch i32 %769, label %.loopexit63 [
    i32 0, label %770
    i32 -5, label %770
  ]

770:                                              ; preds = %768, %768
  %771 = load i32, ptr %471, align 8, !tbaa !24
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %773, label %821

773:                                              ; preds = %770
  %774 = load i32, ptr %465, align 8, !tbaa !27
  %775 = load ptr, ptr %472, align 8, !tbaa !29
  store i32 0, ptr %473, align 4, !tbaa !17
  %776 = tail call ptr @__errno_location() #17
  store i32 0, ptr %776, align 4, !tbaa !45
  br label %777

777:                                              ; preds = %796, %773
  %778 = phi i32 [ 0, %773 ], [ %797, %796 ]
  %779 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %774, i32 %778), !nosanitize !20
  %780 = extractvalue { i32, i1 } %779, 1, !nosanitize !20
  br i1 %780, label %781, label %782, !prof !21, !nosanitize !20

781:                                              ; preds = %777
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

782:                                              ; preds = %777
  %783 = extractvalue { i32, i1 } %779, 0, !nosanitize !20
  %784 = tail call i32 @llvm.umin.i32(i32 %783, i32 1073741824)
  %785 = load i32, ptr %474, align 4, !tbaa !46
  %786 = zext i32 %778 to i64
  %787 = getelementptr inbounds nuw i8, ptr %775, i64 %786
  %788 = zext nneg i32 %784 to i64
  %789 = tail call i64 @read(i32 noundef %785, ptr noundef %787, i64 noundef %788) #13
  %790 = trunc i64 %789 to i32
  %791 = icmp slt i32 %790, 1
  br i1 %791, label %799, label %792

792:                                              ; preds = %782
  %793 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %778, i32 %790), !nosanitize !20
  %794 = extractvalue { i32, i1 } %793, 1, !nosanitize !20
  br i1 %794, label %795, label %796, !prof !21, !nosanitize !20

795:                                              ; preds = %792
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

796:                                              ; preds = %792
  %797 = extractvalue { i32, i1 } %793, 0, !nosanitize !20
  %798 = icmp ult i32 %797, %774
  br i1 %798, label %777, label %.loopexit, !llvm.loop !47

799:                                              ; preds = %782
  %800 = icmp slt i32 %790, 0
  br i1 %800, label %801, label %808

801:                                              ; preds = %799
  %802 = load i32, ptr %776, align 4, !tbaa !45
  %803 = icmp eq i32 %802, 11
  br i1 %803, label %804, label %.loopexit64

804:                                              ; preds = %801
  store i32 1, ptr %473, align 4, !tbaa !17
  %805 = icmp eq i32 %778, 0
  br i1 %805, label %806, label %.loopexit

806:                                              ; preds = %804
  %807 = load i32, ptr %776, align 4, !tbaa !45
  br label %.loopexit64

808:                                              ; preds = %799
  store i32 1, ptr %471, align 8, !tbaa !24
  br label %.loopexit

.loopexit64:                                      ; preds = %801, %806
  %809 = phi i32 [ %807, %806 ], [ %802, %801 ]
  %810 = tail call ptr @strerror(i32 noundef %809) #13
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %810) #13
  %811 = load i32, ptr %14, align 8, !tbaa !16
  br label %.loopexit63

.loopexit:                                        ; preds = %796, %808, %804
  %812 = phi i32 [ %778, %808 ], [ %778, %804 ], [ %797, %796 ]
  %813 = load i32, ptr %470, align 8, !tbaa !34
  %814 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %813, i32 %812), !nosanitize !20
  %815 = extractvalue { i32, i1 } %814, 1, !nosanitize !20
  br i1 %815, label %816, label %817, !prof !21, !nosanitize !20

816:                                              ; preds = %.loopexit
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

817:                                              ; preds = %.loopexit
  %818 = extractvalue { i32, i1 } %814, 0, !nosanitize !20
  store i32 %818, ptr %470, align 8, !tbaa !34
  %819 = load ptr, ptr %472, align 8, !tbaa !29
  store ptr %819, ptr %469, align 8, !tbaa !35
  %820 = icmp eq i32 %818, 0
  br i1 %820, label %821, label %825

821:                                              ; preds = %817, %770
  %822 = load i32, ptr %473, align 4, !tbaa !17
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %.loopexit63

824:                                              ; preds = %821
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.3) #13
  br label %.loopexit63

825:                                              ; preds = %817, %764
  %826 = tail call i32 @inflate(ptr noundef nonnull %469, i32 noundef 0) #13
  %827 = load i32, ptr %466, align 8, !tbaa !48
  %828 = icmp ult i32 %827, %762
  br i1 %828, label %829, label %830

829:                                              ; preds = %825
  store i32 0, ptr %475, align 4, !tbaa !33
  br label %830

830:                                              ; preds = %829, %825
  switch i32 %826, label %841 [
    i32 -2, label %831
    i32 2, label %831
    i32 -4, label %832
    i32 -3, label %833
  ]

831:                                              ; preds = %830, %830
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.4) #13
  br label %.loopexit63

832:                                              ; preds = %830
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.5) #13
  br label %.loopexit63

833:                                              ; preds = %830
  %834 = load i32, ptr %475, align 4, !tbaa !33
  %835 = icmp eq i32 %834, 1
  br i1 %835, label %836, label %837

836:                                              ; preds = %833
  store i32 0, ptr %470, align 8, !tbaa !34
  store i32 1, ptr %471, align 8, !tbaa !24
  store i32 0, ptr %464, align 8, !tbaa !26
  br label %.loopexit63

837:                                              ; preds = %833
  %838 = load ptr, ptr %476, align 8, !tbaa !50
  %839 = icmp eq ptr %838, null
  %840 = select i1 %839, ptr @.str.6, ptr %838
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef nonnull %840) #13
  br label %.loopexit63

841:                                              ; preds = %830
  %842 = icmp ne i32 %827, 0
  %843 = icmp ne i32 %826, 1
  %844 = select i1 %842, i1 %843, i1 false
  br i1 %844, label %764, label %.loopexit63, !llvm.loop !51

.loopexit63:                                      ; preds = %841, %768, %837, %836, %832, %831, %824, %821, %.loopexit64
  %845 = phi i32 [ %765, %821 ], [ %765, %824 ], [ %826, %831 ], [ -4, %832 ], [ 0, %836 ], [ -3, %837 ], [ %811, %.loopexit64 ], [ %769, %768 ], [ %826, %841 ]
  %846 = load i32, ptr %466, align 8, !tbaa !48
  %847 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %762, i32 %846), !nosanitize !20
  %848 = extractvalue { i32, i1 } %847, 1, !nosanitize !20
  br i1 %848, label %849, label %850, !prof !21, !nosanitize !20

849:                                              ; preds = %.loopexit63
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

850:                                              ; preds = %.loopexit63
  %851 = extractvalue { i32, i1 } %847, 0, !nosanitize !20
  store i32 %851, ptr %0, align 8, !tbaa !19
  %852 = load ptr, ptr %468, align 8, !tbaa !49
  %853 = zext i32 %851 to i64
  %854 = sub nsw i64 0, %853
  %855 = getelementptr inbounds i8, ptr %852, i64 %854
  store ptr %855, ptr %477, align 8, !tbaa !22
  switch i32 %845, label %.loopexit67 [
    i32 1, label %856
    i32 0, label %858
  ]

856:                                              ; preds = %850
  store i32 0, ptr %475, align 4, !tbaa !33
  store i32 0, ptr %464, align 8, !tbaa !26
  br label %858

857:                                              ; preds = %.preheader66
  tail call void @gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.8) #13
  br label %.loopexit67

858:                                              ; preds = %856, %850, %715, %709
  %859 = load i32, ptr %0, align 8, !tbaa !19
  br label %860

860:                                              ; preds = %858, %711
  %861 = phi i32 [ %859, %858 ], [ %714, %711 ]
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %.loopexit69

863:                                              ; preds = %860
  %864 = load i32, ptr %471, align 8, !tbaa !24
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %.preheader66.backedge, label %866

866:                                              ; preds = %863
  %867 = load i32, ptr %470, align 8, !tbaa !34
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %.loopexit69, label %.preheader66.backedge

.preheader66.backedge:                            ; preds = %866, %863
  br label %.preheader66, !llvm.loop !52

.loopexit69:                                      ; preds = %866, %860, %715, %.loopexit65
  %869 = load i32, ptr %0, align 8, !tbaa !19
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %871, label %873

871:                                              ; preds = %.loopexit69
  %872 = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %872, align 4, !tbaa !61
  br label %.loopexit67

873:                                              ; preds = %.loopexit69, %483
  %874 = phi i32 [ %869, %.loopexit69 ], [ %484, %483 ]
  %875 = tail call i32 @llvm.umin.i32(i32 %874, i32 %485)
  %876 = load ptr, ptr %477, align 8, !tbaa !22
  %877 = zext i32 %875 to i64
  %878 = tail call ptr @memchr(ptr noundef %876, i32 noundef 10, i64 noundef %877) #18
  %879 = icmp eq ptr %878, null
  br i1 %879, label %891, label %880

880:                                              ; preds = %873
  %881 = ptrtoint ptr %878 to i64
  %882 = ptrtoint ptr %876 to i64
  %883 = sub i64 %881, %882
  %884 = trunc i64 %883 to i32
  %885 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %884, i32 1), !nosanitize !20
  %886 = extractvalue { i32, i1 } %885, 1, !nosanitize !20
  br i1 %886, label %887, label %888, !prof !21, !nosanitize !20

887:                                              ; preds = %898, %880
  tail call void @llvm.ubsantrap(i8 0) #14, !nosanitize !20
  unreachable, !nosanitize !20

888:                                              ; preds = %880
  %889 = extractvalue { i32, i1 } %885, 0, !nosanitize !20
  %890 = zext i32 %889 to i64
  br label %891

891:                                              ; preds = %888, %873
  %892 = phi i64 [ %890, %888 ], [ %877, %873 ]
  %893 = phi i32 [ %889, %888 ], [ %875, %873 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %486, ptr align 1 %876, i64 %892, i1 false)
  %894 = load i32, ptr %0, align 8, !tbaa !19
  %895 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %894, i32 %893), !nosanitize !20
  %896 = extractvalue { i32, i1 } %895, 1, !nosanitize !20
  br i1 %896, label %897, label %898, !prof !21, !nosanitize !20

897:                                              ; preds = %891
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

898:                                              ; preds = %891
  %899 = extractvalue { i32, i1 } %895, 0, !nosanitize !20
  store i32 %899, ptr %0, align 8, !tbaa !19
  %900 = load ptr, ptr %477, align 8, !tbaa !22
  %901 = getelementptr inbounds nuw i8, ptr %900, i64 %892
  store ptr %901, ptr %477, align 8, !tbaa !22
  %902 = load i64, ptr %481, align 8, !tbaa !23
  %903 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %902, i64 %892), !nosanitize !20
  %904 = extractvalue { i64, i1 } %903, 1, !nosanitize !20
  br i1 %904, label %887, label %905, !prof !21, !nosanitize !20

905:                                              ; preds = %898
  %906 = extractvalue { i64, i1 } %903, 0, !nosanitize !20
  store i64 %906, ptr %481, align 8, !tbaa !23
  %907 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %485, i32 %893), !nosanitize !20
  %908 = extractvalue { i32, i1 } %907, 1, !nosanitize !20
  br i1 %908, label %909, label %910, !prof !21, !nosanitize !20

909:                                              ; preds = %905
  tail call void @llvm.ubsantrap(i8 21) #14, !nosanitize !20
  unreachable, !nosanitize !20

910:                                              ; preds = %905
  %911 = extractvalue { i32, i1 } %907, 0, !nosanitize !20
  %912 = getelementptr inbounds nuw i8, ptr %486, i64 %892
  %913 = icmp ne i32 %911, 0
  %914 = and i1 %879, %913
  br i1 %914, label %483, label %.loopexit67, !llvm.loop !103

.loopexit67:                                      ; preds = %910, %850, %520, %871, %857, %.loopexit70, %.loopexit68, %506, %502
  %915 = phi ptr [ %486, %871 ], [ %486, %857 ], [ %486, %.loopexit70 ], [ %486, %502 ], [ %486, %506 ], [ %486, %.loopexit68 ], [ %486, %850 ], [ %486, %520 ], [ %912, %910 ]
  %916 = icmp eq ptr %915, %1
  br i1 %916, label %.loopexit82, label %917

917:                                              ; preds = %.loopexit67
  store i8 0, ptr %915, align 1, !tbaa !36
  br label %.loopexit82

.loopexit82:                                      ; preds = %438, %108, %917, %.loopexit67, %.loopexit85, %445, %.loopexit86, %.loopexit83, %94, %90, %16, %9, %3
  %918 = phi ptr [ %1, %917 ], [ null, %3 ], [ null, %9 ], [ null, %16 ], [ null, %.loopexit67 ], [ null, %445 ], [ null, %.loopexit86 ], [ null, %90 ], [ null, %94 ], [ null, %.loopexit83 ], [ null, %.loopexit85 ], [ null, %108 ], [ null, %438 ]
  ret ptr %918
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
