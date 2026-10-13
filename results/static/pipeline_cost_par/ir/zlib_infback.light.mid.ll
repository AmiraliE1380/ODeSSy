; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_infback.ll'
source_filename = "/mydata/zlib/infback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.code = type { i8, i8, i16 }

@inflateBack.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @inflateBackInit_(ptr noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %3, align 1, !tbaa !5
  %9 = icmp ne i8 %8, 49
  %10 = icmp ne i32 %4, 112
  %11 = or i1 %10, %9
  br i1 %11, label %47, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %0, null
  %14 = icmp eq ptr %2, null
  %15 = or i1 %13, %14
  %16 = add i32 %1, -16
  %17 = icmp ult i32 %16, -8
  %18 = or i1 %17, %15
  br i1 %18, label %47, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %20, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  store ptr @zcalloc, ptr %21, align 8, !tbaa !15
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %25, align 8, !tbaa !16
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi ptr [ @zcalloc, %24 ], [ %22, %19 ]
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store ptr @zcfree, ptr %28, align 8, !tbaa !17
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = tail call ptr %27(ptr noundef %34, i32 noundef 1, i32 noundef 7160) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %35, ptr %38, align 8, !tbaa !18
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 28
  store i32 32768, ptr %39, align 4, !tbaa !19
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 56
  store i32 %1, ptr %40, align 8, !tbaa !23
  %41 = shl nuw nsw i32 1, %1
  %42 = getelementptr inbounds nuw i8, ptr %35, i64 60
  store i32 %41, ptr %42, align 4, !tbaa !24
  %43 = getelementptr inbounds nuw i8, ptr %35, i64 72
  store ptr %2, ptr %43, align 8, !tbaa !25
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 68
  store i32 0, ptr %44, align 4, !tbaa !26
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 64
  store i32 0, ptr %45, align 8, !tbaa !27
  %46 = getelementptr inbounds nuw i8, ptr %35, i64 7144
  store i32 1, ptr %46, align 8, !tbaa !28
  br label %47

47:                                               ; preds = %37, %32, %12, %7, %5
  %48 = phi i32 [ 0, %37 ], [ -6, %7 ], [ -6, %5 ], [ -2, %12 ], [ -4, %32 ]
  ret i32 %48
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @inflateBack(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(ptr %6)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1198, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1198, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %13, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 16191, ptr %14, align 8, !tbaa !29
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %15, align 4, !tbaa !30
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i32 0, ptr %16, align 8, !tbaa !27
  %17 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %17, ptr %6, align 8, !tbaa !32
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !33
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi i32 [ %21, %19 ], [ 0, %12 ]
  %24 = getelementptr inbounds nuw i8, ptr %10, i64 72
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  %26 = getelementptr inbounds nuw i8, ptr %10, i64 60
  %27 = load i32, ptr %26, align 4, !tbaa !24
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 132
  %29 = getelementptr inbounds nuw i8, ptr %10, i64 136
  %30 = getelementptr inbounds nuw i8, ptr %10, i64 128
  %31 = getelementptr inbounds nuw i8, ptr %10, i64 140
  %32 = getelementptr inbounds nuw i8, ptr %10, i64 152
  %33 = getelementptr inbounds nuw i8, ptr %10, i64 1368
  %34 = getelementptr inbounds nuw i8, ptr %10, i64 144
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 104
  %36 = getelementptr inbounds nuw i8, ptr %10, i64 120
  %37 = getelementptr inbounds nuw i8, ptr %10, i64 792
  %38 = getelementptr inbounds nuw i8, ptr %10, i64 664
  %39 = getelementptr inbounds nuw i8, ptr %10, i64 112
  %40 = getelementptr inbounds nuw i8, ptr %10, i64 124
  %41 = getelementptr inbounds nuw i8, ptr %10, i64 92
  %42 = getelementptr inbounds nuw i8, ptr %10, i64 100
  %43 = getelementptr inbounds nuw i8, ptr %10, i64 96
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %47 = getelementptr inbounds nuw i8, ptr %10, i64 80
  %48 = getelementptr inbounds nuw i8, ptr %10, i64 88
  br label %49

49:                                               ; preds = %1172, %22
  %50 = phi i32 [ 16191, %22 ], [ %1178, %1172 ]
  %51 = phi ptr [ %25, %22 ], [ %1173, %1172 ]
  %52 = phi i32 [ %23, %22 ], [ %1174, %1172 ]
  %53 = phi i32 [ %27, %22 ], [ %1175, %1172 ]
  %54 = phi i64 [ 0, %22 ], [ %1176, %1172 ]
  %55 = phi i32 [ 0, %22 ], [ %1177, %1172 ]
  switch i32 %50, label %1181 [
    i32 16191, label %60
    i32 16193, label %111
    i32 16196, label %56
    i32 16200, label %633
    i32 16208, label %1179
    i32 16209, label %1180
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %238

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %212

60:                                               ; preds = %49
  %61 = load i32, ptr %15, align 4, !tbaa !30
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = icmp ult i32 %55, 3
  br i1 %64, label %65, label %95

65:                                               ; preds = %63
  %66 = or disjoint i32 %55, 8
  %67 = icmp eq i32 %52, 0
  br i1 %67, label %77, label %81

68:                                               ; preds = %60
  %69 = and i32 %55, 7
  %70 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %69), !nosanitize !34
  %71 = extractvalue { i32, i1 } %70, 1, !nosanitize !34
  br i1 false, label %72, label %73, !prof !35, !nosanitize !34

72:                                               ; preds = %68
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

73:                                               ; preds = %68
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !34
  %75 = zext nneg i32 %69 to i64
  %76 = lshr i64 %54, %75
  store i32 16208, ptr %14, align 8, !tbaa !29
  br label %1172

77:                                               ; preds = %65
  %78 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

81:                                               ; preds = %77, %65
  %82 = phi i32 [ %78, %77 ], [ %52, %65 ]
  %83 = load ptr, ptr %6, align 8, !tbaa !32
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 1
  store ptr %84, ptr %6, align 8, !tbaa !32
  %85 = load i8, ptr %83, align 1, !tbaa !5
  %86 = zext i8 %85 to i64
  %87 = zext nneg i32 %55 to i64
  %88 = shl nuw nsw i64 %86, %87
  %89 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 %88), !nosanitize !34
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !34
  br i1 %90, label %91, label %92, !prof !35, !nosanitize !34

91:                                               ; preds = %81
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

92:                                               ; preds = %81
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !34
  %94 = add i32 %82, -1
  br label %95

95:                                               ; preds = %92, %63
  %96 = phi i32 [ %94, %92 ], [ %52, %63 ]
  %97 = phi i64 [ %93, %92 ], [ %54, %63 ]
  %98 = phi i32 [ %66, %92 ], [ %55, %63 ]
  %99 = trunc i64 %97 to i32
  %100 = and i32 %99, 1
  store i32 %100, ptr %15, align 4, !tbaa !30
  %101 = lshr i32 %99, 1
  %102 = and i32 %101, 3
  switch i32 %102, label %105 [
    i32 0, label %107
    i32 1, label %103
    i32 2, label %104
    i32 3, label %106
  ]

103:                                              ; preds = %95
  call void @inflate_fixed(ptr noundef nonnull %10) #6
  br label %107

104:                                              ; preds = %95
  br label %107

105:                                              ; preds = %95
  unreachable

106:                                              ; preds = %95
  store ptr @.str.1, ptr %13, align 8, !tbaa !8
  br label %107

107:                                              ; preds = %106, %104, %103, %95
  %108 = phi i32 [ 16209, %106 ], [ 16196, %104 ], [ 16200, %103 ], [ 16193, %95 ]
  store i32 %108, ptr %14, align 8, !tbaa !29
  %109 = add i32 %98, -3
  %110 = lshr i64 %97, 3
  br label %1172

111:                                              ; preds = %49
  %112 = and i32 %55, 7
  %113 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %112), !nosanitize !34
  %114 = extractvalue { i32, i1 } %113, 1, !nosanitize !34
  br i1 false, label %115, label %116, !prof !35, !nosanitize !34

115:                                              ; preds = %111
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

116:                                              ; preds = %111
  %117 = zext nneg i32 %112 to i64
  %118 = lshr i64 %54, %117
  %119 = extractvalue { i32, i1 } %113, 0
  %120 = icmp ult i32 %119, 32
  br i1 %120, label %121, label %150

121:                                              ; preds = %116
  %122 = and i32 %55, -8
  %123 = zext i32 %122 to i64
  br label %124

124:                                              ; preds = %143, %121
  %125 = phi i64 [ %123, %121 ], [ %146, %143 ]
  %126 = phi i64 [ %118, %121 ], [ %144, %143 ]
  %127 = phi i32 [ %52, %121 ], [ %145, %143 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

133:                                              ; preds = %129, %124
  %134 = phi i32 [ %130, %129 ], [ %127, %124 ]
  %135 = load ptr, ptr %6, align 8, !tbaa !32
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 1
  store ptr %136, ptr %6, align 8, !tbaa !32
  %137 = load i8, ptr %135, align 1, !tbaa !5
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, %125
  %140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %126, i64 %139), !nosanitize !34
  %141 = extractvalue { i64, i1 } %140, 1, !nosanitize !34
  br i1 %141, label %142, label %143, !prof !35, !nosanitize !34

142:                                              ; preds = %133
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

143:                                              ; preds = %133
  %144 = extractvalue { i64, i1 } %140, 0, !nosanitize !34
  %145 = add i32 %134, -1
  %146 = add nuw nsw i64 %125, 8
  %147 = icmp samesign ult i64 %125, 24
  br i1 %147, label %124, label %148, !llvm.loop !36

148:                                              ; preds = %143
  %149 = trunc nuw nsw i64 %146 to i32
  br label %150

150:                                              ; preds = %148, %116
  %151 = phi i32 [ %52, %116 ], [ %145, %148 ]
  %152 = phi i64 [ %118, %116 ], [ %144, %148 ]
  %153 = phi i32 [ %119, %116 ], [ %149, %148 ]
  %154 = and i64 %152, 65535
  %155 = lshr i64 %152, 16
  %156 = xor i64 %155, %154
  %157 = icmp eq i64 %156, 65535
  br i1 %157, label %159, label %158

158:                                              ; preds = %150
  store ptr @.str.2, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

159:                                              ; preds = %150
  %160 = trunc i64 %152 to i32
  %161 = and i32 %160, 65535
  store i32 %161, ptr %41, align 4, !tbaa !38
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %208, label %163

163:                                              ; preds = %204, %159
  %164 = phi i32 [ %196, %204 ], [ %53, %159 ]
  %165 = phi i32 [ %189, %204 ], [ %151, %159 ]
  %166 = phi ptr [ %206, %204 ], [ %51, %159 ]
  %167 = phi i32 [ %205, %204 ], [ %161, %159 ]
  %168 = icmp eq i32 %165, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

173:                                              ; preds = %169, %163
  %174 = phi i32 [ %170, %169 ], [ %165, %163 ]
  %175 = icmp eq i32 %164, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load ptr, ptr %24, align 8, !tbaa !25
  %178 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %178, ptr %16, align 8, !tbaa !27
  %179 = call i32 %3(ptr noundef %4, ptr noundef %177, i32 noundef %178) #6
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %1181

181:                                              ; preds = %176, %173
  %182 = phi ptr [ %177, %176 ], [ %166, %173 ]
  %183 = phi i32 [ %178, %176 ], [ %164, %173 ]
  %184 = call i32 @llvm.umin.i32(i32 %167, i32 %174)
  %185 = call i32 @llvm.umin.i32(i32 %184, i32 %183)
  %186 = load ptr, ptr %6, align 8, !tbaa !32
  %187 = zext i32 %185 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %182, ptr align 1 %186, i64 %187, i1 false)
  %188 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %174, i32 %185), !nosanitize !34
  %189 = extractvalue { i32, i1 } %188, 0, !nosanitize !34
  %190 = extractvalue { i32, i1 } %188, 1, !nosanitize !34
  br i1 %190, label %191, label %192, !prof !35, !nosanitize !34

191:                                              ; preds = %181
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

192:                                              ; preds = %181
  %193 = load ptr, ptr %6, align 8, !tbaa !32
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 %187
  store ptr %194, ptr %6, align 8, !tbaa !32
  %195 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %183, i32 %185), !nosanitize !34
  %196 = extractvalue { i32, i1 } %195, 0, !nosanitize !34
  %197 = extractvalue { i32, i1 } %195, 1, !nosanitize !34
  br i1 %197, label %198, label %199, !prof !35, !nosanitize !34

198:                                              ; preds = %192
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

199:                                              ; preds = %192
  %200 = load i32, ptr %41, align 4, !tbaa !38
  %201 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %200, i32 %185), !nosanitize !34
  %202 = extractvalue { i32, i1 } %201, 1, !nosanitize !34
  br i1 %202, label %203, label %204, !prof !35, !nosanitize !34

203:                                              ; preds = %199
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

204:                                              ; preds = %199
  %205 = extractvalue { i32, i1 } %201, 0, !nosanitize !34
  %206 = getelementptr inbounds nuw i8, ptr %182, i64 %187
  store i32 %205, ptr %41, align 4, !tbaa !38
  %207 = icmp eq i32 %205, 0
  br i1 %207, label %208, label %163, !llvm.loop !39

208:                                              ; preds = %204, %159
  %209 = phi ptr [ %51, %159 ], [ %206, %204 ]
  %210 = phi i32 [ %151, %159 ], [ %189, %204 ]
  %211 = phi i32 [ %53, %159 ], [ %196, %204 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %1172

212:                                              ; preds = %231, %58
  %213 = phi i64 [ %59, %58 ], [ %234, %231 ]
  %214 = phi i64 [ %54, %58 ], [ %232, %231 ]
  %215 = phi i32 [ %52, %58 ], [ %233, %231 ]
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

221:                                              ; preds = %217, %212
  %222 = phi i32 [ %218, %217 ], [ %215, %212 ]
  %223 = load ptr, ptr %6, align 8, !tbaa !32
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 1
  store ptr %224, ptr %6, align 8, !tbaa !32
  %225 = load i8, ptr %223, align 1, !tbaa !5
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, %213
  %228 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %214, i64 %227), !nosanitize !34
  %229 = extractvalue { i64, i1 } %228, 1, !nosanitize !34
  br i1 %229, label %230, label %231, !prof !35, !nosanitize !34

230:                                              ; preds = %221
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

231:                                              ; preds = %221
  %232 = extractvalue { i64, i1 } %228, 0, !nosanitize !34
  %233 = add i32 %222, -1
  %234 = add nuw nsw i64 %213, 8
  %235 = icmp samesign ult i64 %213, 6
  br i1 %235, label %212, label %236, !llvm.loop !40

236:                                              ; preds = %231
  %237 = trunc nuw nsw i64 %234 to i32
  br label %238

238:                                              ; preds = %236, %56
  %239 = phi i32 [ %52, %56 ], [ %233, %236 ]
  %240 = phi i64 [ %54, %56 ], [ %232, %236 ]
  %241 = phi i32 [ %55, %56 ], [ %237, %236 ]
  %242 = trunc i64 %240 to i32
  %243 = and i32 %242, 31
  %244 = add nuw nsw i32 %243, 257
  store i32 %244, ptr %28, align 4, !tbaa !41
  %245 = lshr i32 %242, 5
  %246 = and i32 %245, 31
  %247 = add nuw nsw i32 %246, 1
  store i32 %247, ptr %29, align 8, !tbaa !42
  %248 = lshr i32 %242, 10
  %249 = and i32 %248, 15
  %250 = add nuw nsw i32 %249, 4
  store i32 %250, ptr %30, align 8, !tbaa !43
  %251 = lshr i64 %240, 14
  %252 = add i32 %241, -14
  %253 = icmp samesign ugt i32 %243, 29
  %254 = icmp samesign ugt i32 %246, 29
  %255 = select i1 %253, i1 true, i1 %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %238
  store ptr @.str.3, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

257:                                              ; preds = %238
  store i32 0, ptr %31, align 4, !tbaa !44
  br label %262

258:                                              ; preds = %294
  %259 = icmp ult i32 %295, 19
  br i1 %259, label %260, label %317

260:                                              ; preds = %258
  %261 = zext nneg i32 %295 to i64
  br label %307

262:                                              ; preds = %294, %257
  %263 = phi i32 [ %295, %294 ], [ 0, %257 ]
  %264 = phi i32 [ %303, %294 ], [ %252, %257 ]
  %265 = phi i64 [ %304, %294 ], [ %251, %257 ]
  %266 = phi i32 [ %288, %294 ], [ %239, %257 ]
  %267 = icmp ult i32 %264, 3
  br i1 %267, label %268, label %286

268:                                              ; preds = %262
  %269 = or disjoint i32 %264, 8
  %270 = icmp eq i32 %266, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

275:                                              ; preds = %271, %268
  %276 = phi i32 [ %272, %271 ], [ %266, %268 ]
  %277 = load ptr, ptr %6, align 8, !tbaa !32
  %278 = getelementptr inbounds nuw i8, ptr %277, i64 1
  store ptr %278, ptr %6, align 8, !tbaa !32
  %279 = load i8, ptr %277, align 1, !tbaa !5
  %280 = zext i8 %279 to i64
  %281 = zext nneg i32 %264 to i64
  %282 = shl nuw nsw i64 %280, %281
  %283 = add nuw nsw i64 %265, %282
  %284 = add i32 %276, -1
  %285 = load i32, ptr %31, align 4, !tbaa !44
  br label %286

286:                                              ; preds = %275, %262
  %287 = phi i32 [ %285, %275 ], [ %263, %262 ]
  %288 = phi i32 [ %284, %275 ], [ %266, %262 ]
  %289 = phi i64 [ %283, %275 ], [ %265, %262 ]
  %290 = phi i32 [ %269, %275 ], [ %264, %262 ]
  %291 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %287, i32 1), !nosanitize !34
  %292 = extractvalue { i32, i1 } %291, 1, !nosanitize !34
  br i1 %292, label %293, label %294, !prof !35, !nosanitize !34

293:                                              ; preds = %286
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

294:                                              ; preds = %286
  %295 = extractvalue { i32, i1 } %291, 0, !nosanitize !34
  %296 = trunc i64 %289 to i16
  %297 = and i16 %296, 7
  store i32 %295, ptr %31, align 4, !tbaa !44
  %298 = zext i32 %287 to i64
  %299 = getelementptr inbounds nuw [19 x i16], ptr @inflateBack.order, i64 0, i64 %298
  %300 = load i16, ptr %299, align 2, !tbaa !45
  %301 = zext i16 %300 to i64
  %302 = getelementptr inbounds nuw [320 x i16], ptr %32, i64 0, i64 %301
  store i16 %297, ptr %302, align 2, !tbaa !45
  %303 = add i32 %290, -3
  %304 = lshr i64 %289, 3
  %305 = load i32, ptr %30, align 8, !tbaa !43
  %306 = icmp ult i32 %295, %305
  br i1 %306, label %262, label %258, !llvm.loop !47

307:                                              ; preds = %307, %260
  %308 = phi i64 [ %261, %260 ], [ %309, %307 ]
  %309 = add nuw nsw i64 %308, 1
  %310 = getelementptr inbounds nuw [19 x i16], ptr @inflateBack.order, i64 0, i64 %308
  %311 = load i16, ptr %310, align 2, !tbaa !45
  %312 = zext i16 %311 to i64
  %313 = getelementptr inbounds nuw [320 x i16], ptr %32, i64 0, i64 %312
  store i16 0, ptr %313, align 2, !tbaa !45
  %314 = and i64 %309, 4294967295
  %315 = icmp eq i64 %314, 19
  br i1 %315, label %316, label %307, !llvm.loop !48

316:                                              ; preds = %307
  store i32 19, ptr %31, align 4, !tbaa !44
  br label %317

317:                                              ; preds = %316, %258
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 7, ptr %36, align 8, !tbaa !51
  %318 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %317
  store ptr @.str.4, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

321:                                              ; preds = %317
  store i32 0, ptr %31, align 4, !tbaa !44
  %322 = load i32, ptr %28, align 4, !tbaa !41
  %323 = load i32, ptr %29, align 8, !tbaa !42
  %324 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %322, i32 %323), !nosanitize !34
  %325 = extractvalue { i32, i1 } %324, 1, !nosanitize !34
  br i1 %325, label %329, label %326, !prof !52, !nosanitize !34

326:                                              ; preds = %321
  %327 = extractvalue { i32, i1 } %324, 0, !nosanitize !34
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %608, label %333

329:                                              ; preds = %600, %321
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

330:                                              ; preds = %600
  %331 = extractvalue { i32, i1 } %606, 0, !nosanitize !34
  %332 = icmp ult i32 %601, %331
  br i1 %332, label %333, label %608, !llvm.loop !53

333:                                              ; preds = %330, %326
  %334 = phi i32 [ %390, %330 ], [ %288, %326 ]
  %335 = phi i64 [ %401, %330 ], [ %304, %326 ]
  %336 = phi i32 [ %403, %330 ], [ %303, %326 ]
  %337 = load i32, ptr %36, align 8, !tbaa !51
  %338 = shl nsw i32 -1, %337
  %339 = xor i32 %338, -1
  %340 = trunc i64 %335 to i32
  %341 = load ptr, ptr %35, align 8, !tbaa !50
  %342 = and i32 %339, %340
  %343 = zext nneg i32 %342 to i64
  %344 = getelementptr inbounds nuw %struct.code, ptr %341, i64 %343
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 1
  %346 = load i8, ptr %345, align 1, !tbaa !5
  %347 = zext i8 %346 to i32
  %348 = icmp ult i32 %336, %347
  br i1 %348, label %349, label %389

349:                                              ; preds = %333
  %350 = zext nneg i32 %336 to i64
  br label %351

351:                                              ; preds = %370, %349
  %352 = phi i64 [ %350, %349 ], [ %373, %370 ]
  %353 = phi i64 [ %335, %349 ], [ %371, %370 ]
  %354 = phi i32 [ %334, %349 ], [ %372, %370 ]
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %351
  %357 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

360:                                              ; preds = %356, %351
  %361 = phi i32 [ %357, %356 ], [ %354, %351 ]
  %362 = load ptr, ptr %6, align 8, !tbaa !32
  %363 = getelementptr inbounds nuw i8, ptr %362, i64 1
  store ptr %363, ptr %6, align 8, !tbaa !32
  %364 = load i8, ptr %362, align 1, !tbaa !5
  %365 = zext i8 %364 to i64
  %366 = shl i64 %365, %352
  %367 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %353, i64 %366), !nosanitize !34
  %368 = extractvalue { i64, i1 } %367, 1, !nosanitize !34
  br i1 %368, label %369, label %370, !prof !35, !nosanitize !34

369:                                              ; preds = %360
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

370:                                              ; preds = %360
  %371 = extractvalue { i64, i1 } %367, 0, !nosanitize !34
  %372 = add i32 %361, -1
  %373 = add nuw nsw i64 %352, 8
  %374 = load i32, ptr %36, align 8, !tbaa !51
  %375 = shl nsw i32 -1, %374
  %376 = xor i32 %375, -1
  %377 = trunc i64 %371 to i32
  %378 = load ptr, ptr %35, align 8, !tbaa !50
  %379 = and i32 %376, %377
  %380 = zext nneg i32 %379 to i64
  %381 = getelementptr inbounds nuw %struct.code, ptr %378, i64 %380
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 1
  %383 = load i8, ptr %382, align 1, !tbaa !5
  %384 = zext i8 %383 to i64
  %385 = icmp samesign ult i64 %373, %384
  br i1 %385, label %351, label %386

386:                                              ; preds = %370
  %387 = zext i8 %383 to i32
  %388 = trunc nuw nsw i64 %373 to i32
  br label %389

389:                                              ; preds = %386, %333
  %390 = phi i32 [ %334, %333 ], [ %372, %386 ]
  %391 = phi i64 [ %335, %333 ], [ %371, %386 ]
  %392 = phi i32 [ %336, %333 ], [ %388, %386 ]
  %393 = phi i8 [ %346, %333 ], [ %383, %386 ]
  %394 = phi ptr [ %344, %333 ], [ %381, %386 ]
  %395 = phi i32 [ %347, %333 ], [ %387, %386 ]
  %396 = getelementptr inbounds nuw i8, ptr %394, i64 2
  %397 = load i16, ptr %396, align 2, !tbaa !45
  %398 = icmp ult i16 %397, 16
  br i1 %398, label %399, label %411

399:                                              ; preds = %389
  %400 = zext nneg i8 %393 to i64
  %401 = lshr i64 %391, %400
  %402 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %392, i32 %395), !nosanitize !34
  %403 = extractvalue { i32, i1 } %402, 0, !nosanitize !34
  %404 = extractvalue { i32, i1 } %402, 1, !nosanitize !34
  br i1 %404, label %405, label %406, !prof !35, !nosanitize !34

405:                                              ; preds = %399
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

406:                                              ; preds = %399
  %407 = load i32, ptr %31, align 4, !tbaa !44
  %408 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %407, i32 1), !nosanitize !34
  %409 = extractvalue { i32, i1 } %408, 1, !nosanitize !34
  br i1 %409, label %410, label %600, !prof !35, !nosanitize !34

410:                                              ; preds = %406
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

411:                                              ; preds = %389
  switch i16 %397, label %424 [
    i16 16, label %418
    i16 17, label %412
  ]

412:                                              ; preds = %411
  %413 = add nuw nsw i32 %395, 3
  %414 = icmp ult i32 %392, %413
  br i1 %414, label %415, label %505

415:                                              ; preds = %412
  %416 = zext nneg i32 %392 to i64
  %417 = zext nneg i32 %413 to i64
  br label %479

418:                                              ; preds = %411
  %419 = add nuw nsw i32 %395, 2
  %420 = icmp ult i32 %392, %419
  br i1 %420, label %421, label %456

421:                                              ; preds = %418
  %422 = zext nneg i32 %392 to i64
  %423 = zext nneg i32 %419 to i64
  br label %430

424:                                              ; preds = %411
  %425 = add nuw nsw i32 %395, 7
  %426 = icmp ult i32 %392, %425
  br i1 %426, label %427, label %546

427:                                              ; preds = %424
  %428 = zext nneg i32 %392 to i64
  %429 = zext nneg i32 %425 to i64
  br label %520

430:                                              ; preds = %449, %421
  %431 = phi i64 [ %422, %421 ], [ %452, %449 ]
  %432 = phi i64 [ %391, %421 ], [ %450, %449 ]
  %433 = phi i32 [ %390, %421 ], [ %451, %449 ]
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %430
  %436 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

439:                                              ; preds = %435, %430
  %440 = phi i32 [ %436, %435 ], [ %433, %430 ]
  %441 = load ptr, ptr %6, align 8, !tbaa !32
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 1
  store ptr %442, ptr %6, align 8, !tbaa !32
  %443 = load i8, ptr %441, align 1, !tbaa !5
  %444 = zext i8 %443 to i64
  %445 = shl i64 %444, %431
  %446 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %432, i64 %445), !nosanitize !34
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !34
  br i1 %447, label %448, label %449, !prof !35, !nosanitize !34

448:                                              ; preds = %439
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

449:                                              ; preds = %439
  %450 = extractvalue { i64, i1 } %446, 0, !nosanitize !34
  %451 = add i32 %440, -1
  %452 = add nuw nsw i64 %431, 8
  %453 = icmp samesign ult i64 %452, %423
  br i1 %453, label %430, label %454, !llvm.loop !54

454:                                              ; preds = %449
  %455 = trunc nuw i64 %452 to i32
  br label %456

456:                                              ; preds = %454, %418
  %457 = phi i32 [ %390, %418 ], [ %451, %454 ]
  %458 = phi i64 [ %391, %418 ], [ %450, %454 ]
  %459 = phi i32 [ %392, %418 ], [ %455, %454 ]
  %460 = zext nneg i8 %393 to i64
  %461 = lshr i64 %458, %460
  %462 = sub nuw i32 %459, %395
  %463 = load i32, ptr %31, align 4, !tbaa !44
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %456
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

466:                                              ; preds = %456
  %467 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %462, i32 2), !nosanitize !34
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !34
  br i1 %468, label %469, label %470, !prof !35, !nosanitize !34

469:                                              ; preds = %466
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

470:                                              ; preds = %466
  %471 = trunc i64 %461 to i32
  %472 = and i32 %471, 3
  %473 = add nuw nsw i32 %472, 3
  %474 = add i32 %463, -1
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds nuw [320 x i16], ptr %32, i64 0, i64 %475
  %477 = load i16, ptr %476, align 2, !tbaa !45
  %478 = lshr i64 %461, 2
  br label %561

479:                                              ; preds = %498, %415
  %480 = phi i64 [ %416, %415 ], [ %501, %498 ]
  %481 = phi i64 [ %391, %415 ], [ %499, %498 ]
  %482 = phi i32 [ %390, %415 ], [ %500, %498 ]
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %488

484:                                              ; preds = %479
  %485 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %484
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

488:                                              ; preds = %484, %479
  %489 = phi i32 [ %485, %484 ], [ %482, %479 ]
  %490 = load ptr, ptr %6, align 8, !tbaa !32
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 1
  store ptr %491, ptr %6, align 8, !tbaa !32
  %492 = load i8, ptr %490, align 1, !tbaa !5
  %493 = zext i8 %492 to i64
  %494 = shl i64 %493, %480
  %495 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %481, i64 %494), !nosanitize !34
  %496 = extractvalue { i64, i1 } %495, 1, !nosanitize !34
  br i1 %496, label %497, label %498, !prof !35, !nosanitize !34

497:                                              ; preds = %488
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

498:                                              ; preds = %488
  %499 = extractvalue { i64, i1 } %495, 0, !nosanitize !34
  %500 = add i32 %489, -1
  %501 = add nuw nsw i64 %480, 8
  %502 = icmp samesign ult i64 %501, %417
  br i1 %502, label %479, label %503, !llvm.loop !55

503:                                              ; preds = %498
  %504 = trunc nuw i64 %501 to i32
  br label %505

505:                                              ; preds = %503, %412
  %506 = phi i32 [ %390, %412 ], [ %500, %503 ]
  %507 = phi i64 [ %391, %412 ], [ %499, %503 ]
  %508 = phi i32 [ %392, %412 ], [ %504, %503 ]
  %509 = sub nuw i32 %508, %395
  %510 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %509, i32 3), !nosanitize !34
  %511 = extractvalue { i32, i1 } %510, 1, !nosanitize !34
  br i1 %511, label %512, label %513, !prof !35, !nosanitize !34

512:                                              ; preds = %505
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

513:                                              ; preds = %505
  %514 = zext nneg i8 %393 to i64
  %515 = lshr i64 %507, %514
  %516 = trunc i64 %515 to i32
  %517 = and i32 %516, 7
  %518 = add nuw nsw i32 %517, 3
  %519 = lshr i64 %515, 3
  br label %561

520:                                              ; preds = %539, %427
  %521 = phi i64 [ %428, %427 ], [ %542, %539 ]
  %522 = phi i64 [ %391, %427 ], [ %540, %539 ]
  %523 = phi i32 [ %390, %427 ], [ %541, %539 ]
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %529

525:                                              ; preds = %520
  %526 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %525
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

529:                                              ; preds = %525, %520
  %530 = phi i32 [ %526, %525 ], [ %523, %520 ]
  %531 = load ptr, ptr %6, align 8, !tbaa !32
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 1
  store ptr %532, ptr %6, align 8, !tbaa !32
  %533 = load i8, ptr %531, align 1, !tbaa !5
  %534 = zext i8 %533 to i64
  %535 = shl i64 %534, %521
  %536 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %522, i64 %535), !nosanitize !34
  %537 = extractvalue { i64, i1 } %536, 1, !nosanitize !34
  br i1 %537, label %538, label %539, !prof !35, !nosanitize !34

538:                                              ; preds = %529
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

539:                                              ; preds = %529
  %540 = extractvalue { i64, i1 } %536, 0, !nosanitize !34
  %541 = add i32 %530, -1
  %542 = add nuw nsw i64 %521, 8
  %543 = icmp samesign ult i64 %542, %429
  br i1 %543, label %520, label %544, !llvm.loop !56

544:                                              ; preds = %539
  %545 = trunc nuw i64 %542 to i32
  br label %546

546:                                              ; preds = %544, %424
  %547 = phi i32 [ %390, %424 ], [ %541, %544 ]
  %548 = phi i64 [ %391, %424 ], [ %540, %544 ]
  %549 = phi i32 [ %392, %424 ], [ %545, %544 ]
  %550 = sub nuw i32 %549, %395
  %551 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %550, i32 7), !nosanitize !34
  %552 = extractvalue { i32, i1 } %551, 1, !nosanitize !34
  br i1 %552, label %553, label %554, !prof !35, !nosanitize !34

553:                                              ; preds = %546
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

554:                                              ; preds = %546
  %555 = zext nneg i8 %393 to i64
  %556 = lshr i64 %548, %555
  %557 = trunc i64 %556 to i32
  %558 = and i32 %557, 127
  %559 = add nuw nsw i32 %558, 11
  %560 = lshr i64 %556, 7
  br label %561

561:                                              ; preds = %554, %513, %470
  %562 = phi i32 [ %457, %470 ], [ %506, %513 ], [ %547, %554 ]
  %563 = phi i64 [ %478, %470 ], [ %519, %513 ], [ %560, %554 ]
  %564 = phi { i32, i1 } [ %467, %470 ], [ %510, %513 ], [ %551, %554 ]
  %565 = phi i32 [ %473, %470 ], [ %518, %513 ], [ %559, %554 ]
  %566 = phi i16 [ %477, %470 ], [ 0, %513 ], [ 0, %554 ]
  %567 = extractvalue { i32, i1 } %564, 0
  %568 = load i32, ptr %31, align 4, !tbaa !44
  %569 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %568, i32 %565), !nosanitize !34
  %570 = extractvalue { i32, i1 } %569, 0, !nosanitize !34
  %571 = extractvalue { i32, i1 } %569, 1, !nosanitize !34
  br i1 %571, label %572, label %573, !prof !35, !nosanitize !34

572:                                              ; preds = %561
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

573:                                              ; preds = %561
  %574 = load i32, ptr %28, align 4, !tbaa !41
  %575 = load i32, ptr %29, align 8, !tbaa !42
  %576 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %574, i32 %575), !nosanitize !34
  %577 = extractvalue { i32, i1 } %576, 1, !nosanitize !34
  br i1 %577, label %578, label %579, !prof !35, !nosanitize !34

578:                                              ; preds = %573
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

579:                                              ; preds = %573
  %580 = extractvalue { i32, i1 } %576, 0, !nosanitize !34
  %581 = icmp ugt i32 %570, %580
  br i1 %581, label %586, label %582

582:                                              ; preds = %579
  %583 = add nsw i32 %565, -1
  %584 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %583, 0
  %585 = zext i32 %568 to i64
  br label %588

586:                                              ; preds = %579
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

587:                                              ; preds = %593
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

588:                                              ; preds = %593, %582
  %589 = phi i64 [ %585, %582 ], [ %595, %593 ]
  %590 = phi { i32, i1 } [ %584, %582 ], [ %598, %593 ]
  %591 = icmp eq i64 %589, 4294967295
  br i1 %591, label %592, label %593, !prof !35, !nosanitize !34

592:                                              ; preds = %588
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

593:                                              ; preds = %588
  %594 = extractvalue { i32, i1 } %590, 0
  %595 = add nuw nsw i64 %589, 1
  %596 = trunc i64 %595 to i32
  store i32 %596, ptr %31, align 4, !tbaa !44
  %597 = getelementptr inbounds nuw [320 x i16], ptr %32, i64 0, i64 %589
  store i16 %566, ptr %597, align 2, !tbaa !45
  %598 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %594, i32 1), !nosanitize !34
  %599 = extractvalue { i32, i1 } %598, 1, !nosanitize !34
  br i1 %599, label %587, label %588, !prof !57, !llvm.loop !58, !nosanitize !34

600:                                              ; preds = %406
  %601 = extractvalue { i32, i1 } %408, 0, !nosanitize !34
  store i32 %601, ptr %31, align 4, !tbaa !44
  %602 = zext i32 %407 to i64
  %603 = getelementptr inbounds nuw [320 x i16], ptr %32, i64 0, i64 %602
  store i16 %397, ptr %603, align 2, !tbaa !45
  %604 = load i32, ptr %28, align 4, !tbaa !41
  %605 = load i32, ptr %29, align 8, !tbaa !42
  %606 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %604, i32 %605), !nosanitize !34
  %607 = extractvalue { i32, i1 } %606, 1, !nosanitize !34
  br i1 %607, label %329, label %330, !prof !57, !llvm.loop !53, !nosanitize !34

608:                                              ; preds = %330, %326
  %609 = phi i32 [ %322, %326 ], [ %604, %330 ]
  %610 = phi i32 [ %303, %326 ], [ %403, %330 ]
  %611 = phi i64 [ %304, %326 ], [ %401, %330 ]
  %612 = phi i32 [ %288, %326 ], [ %390, %330 ]
  %613 = load i32, ptr %14, align 8, !tbaa !29
  %614 = icmp eq i32 %613, 16209
  br i1 %614, label %1172, label %615

615:                                              ; preds = %608
  %616 = load i16, ptr %38, align 8, !tbaa !45
  %617 = icmp eq i16 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %615
  store ptr @.str.6, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

619:                                              ; preds = %615
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 9, ptr %36, align 8, !tbaa !51
  %620 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %609, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %623, label %622

622:                                              ; preds = %619
  store ptr @.str.7, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

623:                                              ; preds = %619
  %624 = load ptr, ptr %34, align 8, !tbaa !49
  store ptr %624, ptr %39, align 8, !tbaa !59
  store i32 6, ptr %40, align 4, !tbaa !60
  %625 = load i32, ptr %28, align 4, !tbaa !41
  %626 = zext i32 %625 to i64
  %627 = getelementptr inbounds nuw i16, ptr %32, i64 %626
  %628 = load i32, ptr %29, align 8, !tbaa !42
  %629 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %627, i32 noundef %628, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #6
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %632, label %631

631:                                              ; preds = %623
  store ptr @.str.8, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

632:                                              ; preds = %623
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %633

633:                                              ; preds = %632, %49
  %634 = phi i32 [ %612, %632 ], [ %52, %49 ]
  %635 = phi i64 [ %611, %632 ], [ %54, %49 ]
  %636 = phi i32 [ %610, %632 ], [ %55, %49 ]
  %637 = icmp ugt i32 %634, 5
  %638 = icmp ugt i32 %53, 257
  %639 = select i1 %637, i1 %638, i1 false
  br i1 %639, label %655, label %640

640:                                              ; preds = %633
  %641 = load i32, ptr %36, align 8, !tbaa !51
  %642 = shl nsw i32 -1, %641
  %643 = xor i32 %642, -1
  %644 = trunc i64 %635 to i32
  %645 = load ptr, ptr %35, align 8, !tbaa !50
  %646 = and i32 %643, %644
  %647 = zext nneg i32 %646 to i64
  %648 = getelementptr inbounds nuw %struct.code, ptr %645, i64 %647
  %649 = getelementptr inbounds nuw i8, ptr %648, i64 1
  %650 = load i8, ptr %649, align 1, !tbaa !5
  %651 = zext i8 %650 to i32
  %652 = icmp ult i32 %636, %651
  br i1 %652, label %653, label %702

653:                                              ; preds = %640
  %654 = zext nneg i32 %636 to i64
  br label %664

655:                                              ; preds = %633
  store ptr %51, ptr %44, align 8, !tbaa !61
  store i32 %53, ptr %45, align 8, !tbaa !62
  %656 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %656, ptr %0, align 8, !tbaa !31
  store i32 %634, ptr %46, align 8, !tbaa !33
  store i64 %635, ptr %47, align 8, !tbaa !63
  store i32 %636, ptr %48, align 8, !tbaa !64
  %657 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %657) #6
  %658 = load ptr, ptr %44, align 8, !tbaa !61
  %659 = load i32, ptr %45, align 8, !tbaa !62
  %660 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %660, ptr %6, align 8, !tbaa !32
  %661 = load i32, ptr %46, align 8, !tbaa !33
  %662 = load i64, ptr %47, align 8, !tbaa !63
  %663 = load i32, ptr %48, align 8, !tbaa !64
  br label %1172

664:                                              ; preds = %683, %653
  %665 = phi i64 [ %654, %653 ], [ %686, %683 ]
  %666 = phi i64 [ %635, %653 ], [ %684, %683 ]
  %667 = phi i32 [ %634, %653 ], [ %685, %683 ]
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %673

669:                                              ; preds = %664
  %670 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %673

672:                                              ; preds = %669
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

673:                                              ; preds = %669, %664
  %674 = phi i32 [ %670, %669 ], [ %667, %664 ]
  %675 = load ptr, ptr %6, align 8, !tbaa !32
  %676 = getelementptr inbounds nuw i8, ptr %675, i64 1
  store ptr %676, ptr %6, align 8, !tbaa !32
  %677 = load i8, ptr %675, align 1, !tbaa !5
  %678 = zext i8 %677 to i64
  %679 = shl i64 %678, %665
  %680 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %666, i64 %679), !nosanitize !34
  %681 = extractvalue { i64, i1 } %680, 1, !nosanitize !34
  br i1 %681, label %682, label %683, !prof !35, !nosanitize !34

682:                                              ; preds = %673
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

683:                                              ; preds = %673
  %684 = extractvalue { i64, i1 } %680, 0, !nosanitize !34
  %685 = add i32 %674, -1
  %686 = add nuw nsw i64 %665, 8
  %687 = load i32, ptr %36, align 8, !tbaa !51
  %688 = shl nsw i32 -1, %687
  %689 = xor i32 %688, -1
  %690 = trunc i64 %684 to i32
  %691 = load ptr, ptr %35, align 8, !tbaa !50
  %692 = and i32 %689, %690
  %693 = zext nneg i32 %692 to i64
  %694 = getelementptr inbounds nuw %struct.code, ptr %691, i64 %693
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 1
  %696 = load i8, ptr %695, align 1, !tbaa !5
  %697 = zext i8 %696 to i64
  %698 = icmp samesign ult i64 %686, %697
  br i1 %698, label %664, label %699

699:                                              ; preds = %683
  %700 = zext i8 %696 to i32
  %701 = trunc nuw nsw i64 %686 to i32
  br label %702

702:                                              ; preds = %699, %640
  %703 = phi ptr [ %645, %640 ], [ %691, %699 ]
  %704 = phi i32 [ %634, %640 ], [ %685, %699 ]
  %705 = phi i64 [ %635, %640 ], [ %684, %699 ]
  %706 = phi i32 [ %636, %640 ], [ %701, %699 ]
  %707 = phi ptr [ %648, %640 ], [ %694, %699 ]
  %708 = phi i8 [ %650, %640 ], [ %696, %699 ]
  %709 = phi i32 [ %651, %640 ], [ %700, %699 ]
  %710 = getelementptr inbounds nuw i8, ptr %707, i64 2
  %711 = load i16, ptr %710, align 2, !tbaa !45
  %712 = load i8, ptr %707, align 2, !tbaa !5
  %713 = add i8 %712, -1
  %714 = icmp ult i8 %713, 15
  br i1 %714, label %715, label %780

715:                                              ; preds = %702
  %716 = zext nneg i8 %712 to i32
  %717 = add nuw nsw i32 %709, %716
  %718 = shl nsw i32 -1, %717
  %719 = xor i32 %718, -1
  %720 = zext i16 %711 to i32
  %721 = trunc i64 %705 to i32
  %722 = and i32 %721, %719
  %723 = lshr i32 %722, %709
  %724 = add nuw i32 %723, %720
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds nuw %struct.code, ptr %703, i64 %725
  %727 = getelementptr inbounds nuw i8, ptr %726, i64 1
  %728 = load i8, ptr %727, align 1, !tbaa !5
  %729 = zext i8 %728 to i32
  %730 = add nuw nsw i32 %709, %729
  %731 = icmp ugt i32 %730, %706
  br i1 %731, label %732, label %768

732:                                              ; preds = %752, %715
  %733 = phi i32 [ %755, %752 ], [ %706, %715 ]
  %734 = phi i64 [ %753, %752 ], [ %705, %715 ]
  %735 = phi i32 [ %754, %752 ], [ %704, %715 ]
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %741

737:                                              ; preds = %732
  %738 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %740, label %741

740:                                              ; preds = %737
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

741:                                              ; preds = %737, %732
  %742 = phi i32 [ %738, %737 ], [ %735, %732 ]
  %743 = load ptr, ptr %6, align 8, !tbaa !32
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 1
  store ptr %744, ptr %6, align 8, !tbaa !32
  %745 = load i8, ptr %743, align 1, !tbaa !5
  %746 = zext i8 %745 to i64
  %747 = zext nneg i32 %733 to i64
  %748 = shl i64 %746, %747
  %749 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %734, i64 %748), !nosanitize !34
  %750 = extractvalue { i64, i1 } %749, 1, !nosanitize !34
  br i1 %750, label %751, label %752, !prof !35, !nosanitize !34

751:                                              ; preds = %741
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

752:                                              ; preds = %741
  %753 = extractvalue { i64, i1 } %749, 0, !nosanitize !34
  %754 = add i32 %742, -1
  %755 = add nuw nsw i32 %733, 8
  %756 = load ptr, ptr %35, align 8, !tbaa !50
  %757 = trunc i64 %753 to i32
  %758 = and i32 %757, %719
  %759 = lshr i32 %758, %709
  %760 = add nuw i32 %759, %720
  %761 = zext i32 %760 to i64
  %762 = getelementptr inbounds nuw %struct.code, ptr %756, i64 %761
  %763 = getelementptr inbounds nuw i8, ptr %762, i64 1
  %764 = load i8, ptr %763, align 1, !tbaa !5
  %765 = zext i8 %764 to i32
  %766 = add nuw nsw i32 %709, %765
  %767 = icmp ugt i32 %766, %755
  br i1 %767, label %732, label %768

768:                                              ; preds = %752, %715
  %769 = phi i32 [ %704, %715 ], [ %754, %752 ]
  %770 = phi i64 [ %705, %715 ], [ %753, %752 ]
  %771 = phi i32 [ %706, %715 ], [ %755, %752 ]
  %772 = phi ptr [ %726, %715 ], [ %762, %752 ]
  %773 = phi i8 [ %728, %715 ], [ %764, %752 ]
  %774 = getelementptr inbounds nuw i8, ptr %772, i64 2
  %775 = load i16, ptr %774, align 2, !tbaa !45
  %776 = load i8, ptr %772, align 2, !tbaa !5
  %777 = sub nuw i32 %771, %709
  %778 = zext nneg i8 %708 to i64
  %779 = lshr i64 %770, %778
  br label %780

780:                                              ; preds = %768, %702
  %781 = phi i32 [ %769, %768 ], [ %704, %702 ]
  %782 = phi i64 [ %779, %768 ], [ %705, %702 ]
  %783 = phi i32 [ %777, %768 ], [ %706, %702 ]
  %784 = phi i16 [ %775, %768 ], [ %711, %702 ]
  %785 = phi i8 [ %773, %768 ], [ %708, %702 ]
  %786 = phi i8 [ %776, %768 ], [ %712, %702 ]
  %787 = zext i8 %785 to i32
  %788 = zext nneg i8 %785 to i64
  %789 = lshr i64 %782, %788
  %790 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %783, i32 %787), !nosanitize !34
  %791 = extractvalue { i32, i1 } %790, 0, !nosanitize !34
  %792 = extractvalue { i32, i1 } %790, 1, !nosanitize !34
  br i1 %792, label %793, label %794, !prof !35, !nosanitize !34

793:                                              ; preds = %780
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

794:                                              ; preds = %780
  %795 = zext i16 %784 to i32
  store i32 %795, ptr %41, align 4, !tbaa !38
  %796 = zext i8 %786 to i32
  %797 = icmp eq i8 %786, 0
  br i1 %797, label %798, label %818

798:                                              ; preds = %794
  %799 = icmp eq i32 %53, 0
  br i1 %799, label %800, label %807

800:                                              ; preds = %798
  %801 = load ptr, ptr %24, align 8, !tbaa !25
  %802 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %802, ptr %16, align 8, !tbaa !27
  %803 = call i32 %3(ptr noundef %4, ptr noundef %801, i32 noundef %802) #6
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %1181

805:                                              ; preds = %800
  %806 = load i32, ptr %41, align 4, !tbaa !38
  br label %807

807:                                              ; preds = %805, %798
  %808 = phi i32 [ %806, %805 ], [ %795, %798 ]
  %809 = phi ptr [ %801, %805 ], [ %51, %798 ]
  %810 = phi i32 [ %802, %805 ], [ %53, %798 ]
  %811 = trunc i32 %808 to i8
  store i8 %811, ptr %809, align 1, !tbaa !5
  %812 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %810, i32 1), !nosanitize !34
  %813 = extractvalue { i32, i1 } %812, 1, !nosanitize !34
  br i1 %813, label %814, label %815, !prof !35, !nosanitize !34

814:                                              ; preds = %807
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

815:                                              ; preds = %807
  %816 = extractvalue { i32, i1 } %812, 0, !nosanitize !34
  %817 = getelementptr inbounds nuw i8, ptr %809, i64 1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %1172

818:                                              ; preds = %794
  %819 = and i32 %796, 32
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %822, label %821

821:                                              ; preds = %818
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %1172

822:                                              ; preds = %818
  %823 = and i32 %796, 64
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %826, label %825

825:                                              ; preds = %822
  store ptr @.str.9, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

826:                                              ; preds = %822
  %827 = and i32 %796, 15
  store i32 %827, ptr %42, align 4, !tbaa !65
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %886, label %829

829:                                              ; preds = %826
  %830 = icmp ult i32 %791, %827
  br i1 %830, label %831, label %864

831:                                              ; preds = %829
  %832 = zext nneg i32 %791 to i64
  br label %833

833:                                              ; preds = %857, %831
  %834 = phi i64 [ %832, %831 ], [ %858, %857 ]
  %835 = phi i64 [ %789, %831 ], [ %851, %857 ]
  %836 = phi i32 [ %781, %831 ], [ %844, %857 ]
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %842

838:                                              ; preds = %833
  %839 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %842

841:                                              ; preds = %838
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

842:                                              ; preds = %838, %833
  %843 = phi i32 [ %839, %838 ], [ %836, %833 ]
  %844 = add i32 %843, -1
  %845 = load ptr, ptr %6, align 8, !tbaa !32
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 1
  store ptr %846, ptr %6, align 8, !tbaa !32
  %847 = load i8, ptr %845, align 1, !tbaa !5
  %848 = zext i8 %847 to i64
  %849 = shl i64 %848, %834
  %850 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %835, i64 %849), !nosanitize !34
  %851 = extractvalue { i64, i1 } %850, 0, !nosanitize !34
  %852 = extractvalue { i64, i1 } %850, 1, !nosanitize !34
  br i1 %852, label %853, label %854, !prof !35, !nosanitize !34

853:                                              ; preds = %842
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

854:                                              ; preds = %842
  %855 = icmp samesign ugt i64 %834, 4294967287
  br i1 false, label %856, label %857, !prof !35, !nosanitize !34

856:                                              ; preds = %854
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

857:                                              ; preds = %854
  %858 = add nuw nsw i64 %834, 8
  %859 = trunc nuw i64 %858 to i32
  %860 = load i32, ptr %42, align 4, !tbaa !65
  %861 = icmp ugt i32 %860, %859
  br i1 %861, label %833, label %862, !llvm.loop !66

862:                                              ; preds = %857
  %863 = load i32, ptr %41, align 4, !tbaa !38
  br label %864

864:                                              ; preds = %862, %829
  %865 = phi i32 [ %795, %829 ], [ %863, %862 ]
  %866 = phi i32 [ %781, %829 ], [ %844, %862 ]
  %867 = phi i64 [ %789, %829 ], [ %851, %862 ]
  %868 = phi i32 [ %791, %829 ], [ %859, %862 ]
  %869 = phi i32 [ %827, %829 ], [ %860, %862 ]
  %870 = shl nsw i32 -1, %869
  %871 = xor i32 %870, -1
  %872 = trunc i64 %867 to i32
  %873 = and i32 %871, %872
  %874 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %865, i32 %873), !nosanitize !34
  %875 = extractvalue { i32, i1 } %874, 1, !nosanitize !34
  br i1 %875, label %876, label %877, !prof !35, !nosanitize !34

876:                                              ; preds = %864
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

877:                                              ; preds = %864
  %878 = extractvalue { i32, i1 } %874, 0, !nosanitize !34
  store i32 %878, ptr %41, align 4, !tbaa !38
  %879 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %868, i32 %869), !nosanitize !34
  %880 = extractvalue { i32, i1 } %879, 1, !nosanitize !34
  br i1 %880, label %881, label %882, !prof !35, !nosanitize !34

881:                                              ; preds = %877
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

882:                                              ; preds = %877
  %883 = extractvalue { i32, i1 } %879, 0, !nosanitize !34
  %884 = zext nneg i32 %869 to i64
  %885 = lshr i64 %867, %884
  br label %886

886:                                              ; preds = %882, %826
  %887 = phi i32 [ %866, %882 ], [ %781, %826 ]
  %888 = phi i64 [ %885, %882 ], [ %789, %826 ]
  %889 = phi i32 [ %883, %882 ], [ %791, %826 ]
  %890 = load i32, ptr %40, align 4, !tbaa !60
  %891 = shl nsw i32 -1, %890
  %892 = xor i32 %891, -1
  %893 = trunc i64 %888 to i32
  %894 = load ptr, ptr %39, align 8, !tbaa !59
  %895 = and i32 %892, %893
  %896 = zext nneg i32 %895 to i64
  %897 = getelementptr inbounds nuw %struct.code, ptr %894, i64 %896
  %898 = getelementptr inbounds nuw i8, ptr %897, i64 1
  %899 = load i8, ptr %898, align 1, !tbaa !5
  %900 = zext i8 %899 to i32
  %901 = icmp ult i32 %889, %900
  br i1 %901, label %902, label %942

902:                                              ; preds = %886
  %903 = zext nneg i32 %889 to i64
  br label %904

904:                                              ; preds = %923, %902
  %905 = phi i64 [ %903, %902 ], [ %926, %923 ]
  %906 = phi i64 [ %888, %902 ], [ %924, %923 ]
  %907 = phi i32 [ %887, %902 ], [ %925, %923 ]
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %909, label %913

909:                                              ; preds = %904
  %910 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %912, label %913

912:                                              ; preds = %909
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

913:                                              ; preds = %909, %904
  %914 = phi i32 [ %910, %909 ], [ %907, %904 ]
  %915 = load ptr, ptr %6, align 8, !tbaa !32
  %916 = getelementptr inbounds nuw i8, ptr %915, i64 1
  store ptr %916, ptr %6, align 8, !tbaa !32
  %917 = load i8, ptr %915, align 1, !tbaa !5
  %918 = zext i8 %917 to i64
  %919 = shl i64 %918, %905
  %920 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %906, i64 %919), !nosanitize !34
  %921 = extractvalue { i64, i1 } %920, 1, !nosanitize !34
  br i1 %921, label %922, label %923, !prof !35, !nosanitize !34

922:                                              ; preds = %913
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

923:                                              ; preds = %913
  %924 = extractvalue { i64, i1 } %920, 0, !nosanitize !34
  %925 = add i32 %914, -1
  %926 = add nuw nsw i64 %905, 8
  %927 = load i32, ptr %40, align 4, !tbaa !60
  %928 = shl nsw i32 -1, %927
  %929 = xor i32 %928, -1
  %930 = trunc i64 %924 to i32
  %931 = load ptr, ptr %39, align 8, !tbaa !59
  %932 = and i32 %929, %930
  %933 = zext nneg i32 %932 to i64
  %934 = getelementptr inbounds nuw %struct.code, ptr %931, i64 %933
  %935 = getelementptr inbounds nuw i8, ptr %934, i64 1
  %936 = load i8, ptr %935, align 1, !tbaa !5
  %937 = zext i8 %936 to i64
  %938 = icmp samesign ult i64 %926, %937
  br i1 %938, label %904, label %939

939:                                              ; preds = %923
  %940 = zext i8 %936 to i32
  %941 = trunc nuw nsw i64 %926 to i32
  br label %942

942:                                              ; preds = %939, %886
  %943 = phi ptr [ %894, %886 ], [ %931, %939 ]
  %944 = phi i32 [ %887, %886 ], [ %925, %939 ]
  %945 = phi i64 [ %888, %886 ], [ %924, %939 ]
  %946 = phi i32 [ %889, %886 ], [ %941, %939 ]
  %947 = phi ptr [ %897, %886 ], [ %934, %939 ]
  %948 = phi i8 [ %899, %886 ], [ %936, %939 ]
  %949 = phi i32 [ %900, %886 ], [ %940, %939 ]
  %950 = getelementptr inbounds nuw i8, ptr %947, i64 2
  %951 = load i16, ptr %950, align 2, !tbaa !45
  %952 = load i8, ptr %947, align 2, !tbaa !5
  %953 = icmp ult i8 %952, 16
  br i1 %953, label %954, label %1019

954:                                              ; preds = %942
  %955 = zext nneg i8 %952 to i32
  %956 = add nuw nsw i32 %949, %955
  %957 = shl nsw i32 -1, %956
  %958 = xor i32 %957, -1
  %959 = zext i16 %951 to i32
  %960 = trunc i64 %945 to i32
  %961 = and i32 %960, %958
  %962 = lshr i32 %961, %949
  %963 = add nuw i32 %962, %959
  %964 = zext i32 %963 to i64
  %965 = getelementptr inbounds nuw %struct.code, ptr %943, i64 %964
  %966 = getelementptr inbounds nuw i8, ptr %965, i64 1
  %967 = load i8, ptr %966, align 1, !tbaa !5
  %968 = zext i8 %967 to i32
  %969 = add nuw nsw i32 %949, %968
  %970 = icmp ugt i32 %969, %946
  br i1 %970, label %971, label %1007

971:                                              ; preds = %991, %954
  %972 = phi i32 [ %994, %991 ], [ %946, %954 ]
  %973 = phi i64 [ %992, %991 ], [ %945, %954 ]
  %974 = phi i32 [ %993, %991 ], [ %944, %954 ]
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %980

976:                                              ; preds = %971
  %977 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %979, label %980

979:                                              ; preds = %976
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

980:                                              ; preds = %976, %971
  %981 = phi i32 [ %977, %976 ], [ %974, %971 ]
  %982 = load ptr, ptr %6, align 8, !tbaa !32
  %983 = getelementptr inbounds nuw i8, ptr %982, i64 1
  store ptr %983, ptr %6, align 8, !tbaa !32
  %984 = load i8, ptr %982, align 1, !tbaa !5
  %985 = zext i8 %984 to i64
  %986 = zext nneg i32 %972 to i64
  %987 = shl i64 %985, %986
  %988 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %973, i64 %987), !nosanitize !34
  %989 = extractvalue { i64, i1 } %988, 1, !nosanitize !34
  br i1 %989, label %990, label %991, !prof !35, !nosanitize !34

990:                                              ; preds = %980
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

991:                                              ; preds = %980
  %992 = extractvalue { i64, i1 } %988, 0, !nosanitize !34
  %993 = add i32 %981, -1
  %994 = add nuw nsw i32 %972, 8
  %995 = load ptr, ptr %39, align 8, !tbaa !59
  %996 = trunc i64 %992 to i32
  %997 = and i32 %996, %958
  %998 = lshr i32 %997, %949
  %999 = add nuw i32 %998, %959
  %1000 = zext i32 %999 to i64
  %1001 = getelementptr inbounds nuw %struct.code, ptr %995, i64 %1000
  %1002 = getelementptr inbounds nuw i8, ptr %1001, i64 1
  %1003 = load i8, ptr %1002, align 1, !tbaa !5
  %1004 = zext i8 %1003 to i32
  %1005 = add nuw nsw i32 %949, %1004
  %1006 = icmp ugt i32 %1005, %994
  br i1 %1006, label %971, label %1007

1007:                                             ; preds = %991, %954
  %1008 = phi i32 [ %944, %954 ], [ %993, %991 ]
  %1009 = phi i64 [ %945, %954 ], [ %992, %991 ]
  %1010 = phi i32 [ %946, %954 ], [ %994, %991 ]
  %1011 = phi ptr [ %965, %954 ], [ %1001, %991 ]
  %1012 = phi i8 [ %967, %954 ], [ %1003, %991 ]
  %1013 = getelementptr inbounds nuw i8, ptr %1011, i64 2
  %1014 = load i16, ptr %1013, align 2, !tbaa !45
  %1015 = load i8, ptr %1011, align 2, !tbaa !5
  %1016 = sub nuw i32 %1010, %949
  %1017 = zext nneg i8 %948 to i64
  %1018 = lshr i64 %1009, %1017
  br label %1019

1019:                                             ; preds = %1007, %942
  %1020 = phi i32 [ %1008, %1007 ], [ %944, %942 ]
  %1021 = phi i64 [ %1018, %1007 ], [ %945, %942 ]
  %1022 = phi i32 [ %1016, %1007 ], [ %946, %942 ]
  %1023 = phi i16 [ %1014, %1007 ], [ %951, %942 ]
  %1024 = phi i8 [ %1012, %1007 ], [ %948, %942 ]
  %1025 = phi i8 [ %1015, %1007 ], [ %952, %942 ]
  %1026 = zext i8 %1024 to i32
  %1027 = zext nneg i8 %1024 to i64
  %1028 = lshr i64 %1021, %1027
  %1029 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1022, i32 %1026), !nosanitize !34
  %1030 = extractvalue { i32, i1 } %1029, 0, !nosanitize !34
  %1031 = extractvalue { i32, i1 } %1029, 1, !nosanitize !34
  br i1 %1031, label %1032, label %1033, !prof !35, !nosanitize !34

1032:                                             ; preds = %1019
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1033:                                             ; preds = %1019
  %1034 = zext i8 %1025 to i32
  %1035 = and i32 %1034, 64
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1038, label %1037

1037:                                             ; preds = %1033
  store ptr @.str.10, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

1038:                                             ; preds = %1033
  %1039 = zext i16 %1023 to i32
  store i32 %1039, ptr %43, align 8, !tbaa !67
  %1040 = and i32 %1034, 15
  store i32 %1040, ptr %42, align 4, !tbaa !65
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1099, label %1042

1042:                                             ; preds = %1038
  %1043 = icmp ult i32 %1030, %1040
  br i1 %1043, label %1044, label %1077

1044:                                             ; preds = %1042
  %1045 = zext nneg i32 %1030 to i64
  br label %1046

1046:                                             ; preds = %1070, %1044
  %1047 = phi i64 [ %1045, %1044 ], [ %1071, %1070 ]
  %1048 = phi i64 [ %1028, %1044 ], [ %1064, %1070 ]
  %1049 = phi i32 [ %1020, %1044 ], [ %1057, %1070 ]
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1055

1051:                                             ; preds = %1046
  %1052 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1054, label %1055

1054:                                             ; preds = %1051
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1181

1055:                                             ; preds = %1051, %1046
  %1056 = phi i32 [ %1052, %1051 ], [ %1049, %1046 ]
  %1057 = add i32 %1056, -1
  %1058 = load ptr, ptr %6, align 8, !tbaa !32
  %1059 = getelementptr inbounds nuw i8, ptr %1058, i64 1
  store ptr %1059, ptr %6, align 8, !tbaa !32
  %1060 = load i8, ptr %1058, align 1, !tbaa !5
  %1061 = zext i8 %1060 to i64
  %1062 = shl i64 %1061, %1047
  %1063 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1048, i64 %1062), !nosanitize !34
  %1064 = extractvalue { i64, i1 } %1063, 0, !nosanitize !34
  %1065 = extractvalue { i64, i1 } %1063, 1, !nosanitize !34
  br i1 %1065, label %1066, label %1067, !prof !35, !nosanitize !34

1066:                                             ; preds = %1055
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1067:                                             ; preds = %1055
  %1068 = icmp samesign ugt i64 %1047, 4294967287
  br i1 false, label %1069, label %1070, !prof !35, !nosanitize !34

1069:                                             ; preds = %1067
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1070:                                             ; preds = %1067
  %1071 = add nuw nsw i64 %1047, 8
  %1072 = trunc nuw i64 %1071 to i32
  %1073 = load i32, ptr %42, align 4, !tbaa !65
  %1074 = icmp ugt i32 %1073, %1072
  br i1 %1074, label %1046, label %1075, !llvm.loop !68

1075:                                             ; preds = %1070
  %1076 = load i32, ptr %43, align 8, !tbaa !67
  br label %1077

1077:                                             ; preds = %1075, %1042
  %1078 = phi i32 [ %1039, %1042 ], [ %1076, %1075 ]
  %1079 = phi i32 [ %1020, %1042 ], [ %1057, %1075 ]
  %1080 = phi i64 [ %1028, %1042 ], [ %1064, %1075 ]
  %1081 = phi i32 [ %1030, %1042 ], [ %1072, %1075 ]
  %1082 = phi i32 [ %1040, %1042 ], [ %1073, %1075 ]
  %1083 = shl nsw i32 -1, %1082
  %1084 = xor i32 %1083, -1
  %1085 = trunc i64 %1080 to i32
  %1086 = and i32 %1084, %1085
  %1087 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1078, i32 %1086), !nosanitize !34
  %1088 = extractvalue { i32, i1 } %1087, 1, !nosanitize !34
  br i1 %1088, label %1089, label %1090, !prof !35, !nosanitize !34

1089:                                             ; preds = %1077
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1090:                                             ; preds = %1077
  %1091 = extractvalue { i32, i1 } %1087, 0, !nosanitize !34
  store i32 %1091, ptr %43, align 8, !tbaa !67
  %1092 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1081, i32 %1082), !nosanitize !34
  %1093 = extractvalue { i32, i1 } %1092, 1, !nosanitize !34
  br i1 %1093, label %1094, label %1095, !prof !35, !nosanitize !34

1094:                                             ; preds = %1090
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1095:                                             ; preds = %1090
  %1096 = extractvalue { i32, i1 } %1092, 0, !nosanitize !34
  %1097 = zext nneg i32 %1082 to i64
  %1098 = lshr i64 %1080, %1097
  br label %1099

1099:                                             ; preds = %1095, %1038
  %1100 = phi i32 [ %1091, %1095 ], [ %1039, %1038 ]
  %1101 = phi i32 [ %1079, %1095 ], [ %1020, %1038 ]
  %1102 = phi i64 [ %1098, %1095 ], [ %1028, %1038 ]
  %1103 = phi i32 [ %1096, %1095 ], [ %1030, %1038 ]
  %1104 = load i32, ptr %26, align 4, !tbaa !24
  %1105 = load i32, ptr %16, align 8, !tbaa !27
  %1106 = icmp ult i32 %1105, %1104
  %1107 = select i1 %1106, i32 %53, i32 0
  %1108 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1104, i32 %1107), !nosanitize !34
  %1109 = extractvalue { i32, i1 } %1108, 1, !nosanitize !34
  br i1 %1109, label %1110, label %1111, !prof !35, !nosanitize !34

1110:                                             ; preds = %1099
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1111:                                             ; preds = %1099
  %1112 = extractvalue { i32, i1 } %1108, 0, !nosanitize !34
  %1113 = icmp ugt i32 %1100, %1112
  br i1 %1113, label %1114, label %1115

1114:                                             ; preds = %1111
  store ptr @.str.11, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1172

1115:                                             ; preds = %1169, %1111
  %1116 = phi ptr [ %1165, %1169 ], [ %51, %1111 ]
  %1117 = phi i32 [ %1147, %1169 ], [ %53, %1111 ]
  %1118 = icmp eq i32 %1117, 0
  %1119 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1118, label %1120, label %1126

1120:                                             ; preds = %1115
  %1121 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1119, ptr %16, align 8, !tbaa !27
  %1122 = call i32 %3(ptr noundef %4, ptr noundef %1121, i32 noundef %1119) #6
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1124, label %1181

1124:                                             ; preds = %1120
  %1125 = load i32, ptr %26, align 4, !tbaa !24
  br label %1126

1126:                                             ; preds = %1124, %1115
  %1127 = phi i32 [ %1125, %1124 ], [ %1119, %1115 ]
  %1128 = phi ptr [ %1121, %1124 ], [ %1116, %1115 ]
  %1129 = phi i32 [ %1119, %1124 ], [ %1117, %1115 ]
  %1130 = load i32, ptr %43, align 8, !tbaa !67
  %1131 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1127, i32 %1130), !nosanitize !34
  %1132 = extractvalue { i32, i1 } %1131, 1, !nosanitize !34
  br i1 %1132, label %1133, label %1134, !prof !35, !nosanitize !34

1133:                                             ; preds = %1126
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1134:                                             ; preds = %1126
  %1135 = extractvalue { i32, i1 } %1131, 0, !nosanitize !34
  %1136 = icmp ult i32 %1135, %1129
  %1137 = select i1 %1136, i32 %1135, i32 0
  %1138 = sub nuw i32 %1129, %1137
  %1139 = load i32, ptr %41, align 4, !tbaa !38
  %1140 = call i32 @llvm.umin.i32(i32 %1138, i32 %1139)
  %1141 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1139, i32 %1140), !nosanitize !34
  %1142 = extractvalue { i32, i1 } %1141, 1, !nosanitize !34
  br i1 false, label %1143, label %1144, !prof !35, !nosanitize !34

1143:                                             ; preds = %1134
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1144:                                             ; preds = %1134
  %1145 = extractvalue { i32, i1 } %1141, 0, !nosanitize !34
  store i32 %1145, ptr %41, align 4, !tbaa !38
  %1146 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1129, i32 %1140), !nosanitize !34
  %1147 = extractvalue { i32, i1 } %1146, 0, !nosanitize !34
  %1148 = extractvalue { i32, i1 } %1146, 1, !nosanitize !34
  br i1 %1148, label %1155, label %1149, !prof !35, !nosanitize !34

1149:                                             ; preds = %1144
  %1150 = zext i32 %1135 to i64
  %1151 = zext i32 %1130 to i64
  %1152 = sub nsw i64 0, %1151
  %1153 = select i1 %1136, i64 %1150, i64 %1152
  %1154 = getelementptr inbounds i8, ptr %1128, i64 %1153
  br label %1156

1155:                                             ; preds = %1144
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1156:                                             ; preds = %1164, %1149
  %1157 = phi ptr [ %1165, %1164 ], [ %1128, %1149 ]
  %1158 = phi i32 [ %1166, %1164 ], [ %1140, %1149 ]
  %1159 = phi ptr [ %1167, %1164 ], [ %1154, %1149 ]
  %1160 = load i8, ptr %1159, align 1, !tbaa !5
  store i8 %1160, ptr %1157, align 1, !tbaa !5
  %1161 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1158, i32 1), !nosanitize !34
  %1162 = extractvalue { i32, i1 } %1161, 1, !nosanitize !34
  br i1 %1162, label %1163, label %1164, !prof !35, !nosanitize !34

1163:                                             ; preds = %1156
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1164:                                             ; preds = %1156
  %1165 = getelementptr inbounds nuw i8, ptr %1157, i64 1
  %1166 = extractvalue { i32, i1 } %1161, 0, !nosanitize !34
  %1167 = getelementptr inbounds nuw i8, ptr %1159, i64 1
  %1168 = icmp eq i32 %1166, 0
  br i1 %1168, label %1169, label %1156, !llvm.loop !69

1169:                                             ; preds = %1164
  %1170 = load i32, ptr %41, align 4, !tbaa !38
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1172, label %1115, !llvm.loop !70

1172:                                             ; preds = %1169, %1114, %1037, %825, %821, %815, %655, %631, %622, %618, %608, %586, %465, %320, %256, %208, %158, %107, %73
  %1173 = phi ptr [ %51, %73 ], [ %51, %107 ], [ %51, %158 ], [ %209, %208 ], [ %51, %256 ], [ %51, %320 ], [ %51, %608 ], [ %51, %618 ], [ %51, %622 ], [ %51, %631 ], [ %658, %655 ], [ %817, %815 ], [ %51, %821 ], [ %51, %825 ], [ %51, %1037 ], [ %51, %1114 ], [ %51, %586 ], [ %51, %465 ], [ %1165, %1169 ]
  %1174 = phi i32 [ %52, %73 ], [ %96, %107 ], [ %151, %158 ], [ %210, %208 ], [ %239, %256 ], [ %288, %320 ], [ %612, %608 ], [ %612, %618 ], [ %612, %622 ], [ %612, %631 ], [ %661, %655 ], [ %781, %815 ], [ %781, %821 ], [ %781, %825 ], [ %1020, %1037 ], [ %1101, %1114 ], [ %562, %586 ], [ %457, %465 ], [ %1101, %1169 ]
  %1175 = phi i32 [ %53, %73 ], [ %53, %107 ], [ %53, %158 ], [ %211, %208 ], [ %53, %256 ], [ %53, %320 ], [ %53, %608 ], [ %53, %618 ], [ %53, %622 ], [ %53, %631 ], [ %659, %655 ], [ %816, %815 ], [ %53, %821 ], [ %53, %825 ], [ %53, %1037 ], [ %53, %1114 ], [ %53, %586 ], [ %53, %465 ], [ %1147, %1169 ]
  %1176 = phi i64 [ %76, %73 ], [ %110, %107 ], [ %152, %158 ], [ 0, %208 ], [ %251, %256 ], [ %304, %320 ], [ %611, %608 ], [ %611, %618 ], [ %611, %622 ], [ %611, %631 ], [ %662, %655 ], [ %789, %815 ], [ %789, %821 ], [ %789, %825 ], [ %1028, %1037 ], [ %1102, %1114 ], [ %563, %586 ], [ %461, %465 ], [ %1102, %1169 ]
  %1177 = phi i32 [ %74, %73 ], [ %109, %107 ], [ %153, %158 ], [ 0, %208 ], [ %252, %256 ], [ %303, %320 ], [ %610, %608 ], [ %610, %618 ], [ %610, %622 ], [ %610, %631 ], [ %663, %655 ], [ %791, %815 ], [ %791, %821 ], [ %791, %825 ], [ %1030, %1037 ], [ %1103, %1114 ], [ %567, %586 ], [ %462, %465 ], [ %1103, %1169 ]
  %1178 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

1179:                                             ; preds = %49
  br label %1181

1180:                                             ; preds = %49
  br label %1181

1181:                                             ; preds = %1180, %1179, %1120, %1054, %979, %912, %841, %800, %740, %672, %528, %487, %438, %359, %274, %220, %176, %172, %132, %80, %49
  %1182 = phi i32 [ 0, %80 ], [ 0, %132 ], [ 0, %172 ], [ 0, %220 ], [ 0, %274 ], [ 0, %438 ], [ 0, %841 ], [ 0, %1054 ], [ 0, %979 ], [ 0, %912 ], [ 0, %740 ], [ 0, %672 ], [ 0, %487 ], [ 0, %528 ], [ 0, %359 ], [ %52, %1179 ], [ %52, %49 ], [ %174, %176 ], [ %1101, %1120 ], [ %781, %800 ], [ %52, %1180 ]
  %1183 = phi i32 [ %53, %80 ], [ %53, %132 ], [ %164, %172 ], [ %53, %220 ], [ %53, %274 ], [ %53, %438 ], [ %53, %841 ], [ %53, %1054 ], [ %53, %979 ], [ %53, %912 ], [ %53, %740 ], [ %53, %672 ], [ %53, %487 ], [ %53, %528 ], [ %53, %359 ], [ %53, %1179 ], [ %53, %49 ], [ %178, %176 ], [ %1119, %1120 ], [ %802, %800 ], [ %53, %1180 ]
  %1184 = phi i1 [ false, %80 ], [ false, %132 ], [ false, %172 ], [ false, %220 ], [ false, %274 ], [ false, %438 ], [ false, %841 ], [ false, %1054 ], [ false, %979 ], [ false, %912 ], [ false, %740 ], [ false, %672 ], [ false, %487 ], [ false, %528 ], [ false, %359 ], [ true, %1179 ], [ false, %49 ], [ false, %176 ], [ false, %1120 ], [ false, %800 ], [ false, %1180 ]
  %1185 = phi i32 [ -5, %80 ], [ -5, %132 ], [ -5, %172 ], [ -5, %220 ], [ -5, %274 ], [ -5, %438 ], [ -5, %841 ], [ -5, %1054 ], [ -5, %979 ], [ -5, %912 ], [ -5, %740 ], [ -5, %672 ], [ -5, %487 ], [ -5, %528 ], [ -5, %359 ], [ 1, %1179 ], [ -2, %49 ], [ -5, %176 ], [ -5, %1120 ], [ -5, %800 ], [ -3, %1180 ]
  %1186 = load i32, ptr %26, align 4, !tbaa !24
  %1187 = icmp ult i32 %1183, %1186
  br i1 %1187, label %1188, label %1195

1188:                                             ; preds = %1181
  %1189 = sub nuw i32 %1186, %1183
  %1190 = load ptr, ptr %24, align 8, !tbaa !25
  %1191 = call i32 %3(ptr noundef %4, ptr noundef %1190, i32 noundef %1189) #6
  %1192 = icmp ne i32 %1191, 0
  %1193 = and i1 %1184, %1192
  %1194 = select i1 %1193, i32 -5, i32 %1185
  br label %1195

1195:                                             ; preds = %1188, %1181
  %1196 = phi i32 [ %1194, %1188 ], [ %1185, %1181 ]
  %1197 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1197, ptr %0, align 8, !tbaa !31
  store i32 %1182, ptr %46, align 8, !tbaa !33
  br label %1198

1198:                                             ; preds = %1195, %8, %5
  %1199 = phi i32 [ %1196, %1195 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr %6)
  ret i32 %1199
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @inflateBackEnd(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  tail call void %9(ptr noundef %13, ptr noundef nonnull %5) #6
  store ptr null, ptr %4, align 8, !tbaa !18
  br label %14

14:                                               ; preds = %11, %7, %3, %1
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

declare void @llvm.lifetime.start.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @llvm.lifetime.end.i64(i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nomerge noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0 (https://github.com/swiftlang/llvm-project.git 82cdc19fa54d566969527b56f587ea8ea30bef51)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 48}
!9 = !{!"z_stream_s", !10, i64 0, !12, i64 8, !13, i64 16, !10, i64 24, !12, i64 32, !13, i64 40, !10, i64 48, !14, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !12, i64 88, !13, i64 96, !13, i64 104}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!15 = !{!9, !11, i64 64}
!16 = !{!9, !11, i64 80}
!17 = !{!9, !11, i64 72}
!18 = !{!9, !14, i64 56}
!19 = !{!20, !12, i64 28}
!20 = !{!"inflate_state", !21, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !13, i64 32, !13, i64 40, !22, i64 48, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !10, i64 72, !13, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !11, i64 104, !11, i64 112, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !11, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !12, i64 7144, !12, i64 7148, !12, i64 7152}
!21 = !{!"p1 _ZTS10z_stream_s", !11, i64 0}
!22 = !{!"p1 _ZTS11gz_header_s", !11, i64 0}
!23 = !{!20, !12, i64 56}
!24 = !{!20, !12, i64 60}
!25 = !{!20, !10, i64 72}
!26 = !{!20, !12, i64 68}
!27 = !{!20, !12, i64 64}
!28 = !{!20, !12, i64 7144}
!29 = !{!20, !12, i64 8}
!30 = !{!20, !12, i64 12}
!31 = !{!9, !10, i64 0}
!32 = !{!10, !10, i64 0}
!33 = !{!9, !12, i64 8}
!34 = !{}
!35 = !{!"branch_weights", i32 1, i32 1048575}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!20, !12, i64 92}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = !{!20, !12, i64 132}
!42 = !{!20, !12, i64 136}
!43 = !{!20, !12, i64 128}
!44 = !{!20, !12, i64 140}
!45 = !{!46, !46, i64 0}
!46 = !{!"short", !6, i64 0}
!47 = distinct !{!47, !37}
!48 = distinct !{!48, !37}
!49 = !{!20, !11, i64 144}
!50 = !{!20, !11, i64 104}
!51 = !{!20, !12, i64 120}
!52 = !{!"branch_weights", i32 1, i32 127}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = !{!"branch_weights", i32 127, i32 134217473}
!58 = distinct !{!58, !37}
!59 = !{!20, !11, i64 112}
!60 = !{!20, !12, i64 124}
!61 = !{!9, !10, i64 24}
!62 = !{!9, !12, i64 32}
!63 = !{!20, !13, i64 80}
!64 = !{!20, !12, i64 88}
!65 = !{!20, !12, i64 100}
!66 = distinct !{!66, !37}
!67 = !{!20, !12, i64 96}
!68 = distinct !{!68, !37}
!69 = distinct !{!69, !37}
!70 = distinct !{!70, !37}
