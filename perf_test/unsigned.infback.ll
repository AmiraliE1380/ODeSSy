; ModuleID = '/home/amiralie1380/michigan/pl/zlib/infback.c'
source_filename = "/home/amiralie1380/michigan/pl/zlib/infback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
  %8 = load i8, ptr %3, align 1, !tbaa !8
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
  store ptr null, ptr %20, align 8, !tbaa !9
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
  %35 = tail call ptr %27(ptr noundef %34, i32 noundef 1, i32 noundef 7160) #7
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

47:                                               ; preds = %32, %12, %5, %7, %37
  %48 = phi i32 [ 0, %37 ], [ -6, %5 ], [ -2, %12 ], [ -6, %7 ], [ -4, %32 ]
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @zcfree(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @inflateBack(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1314, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1314, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %13, align 8, !tbaa !9
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

22:                                               ; preds = %12, %19
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

49:                                               ; preds = %1288, %22
  %50 = phi i32 [ 16191, %22 ], [ %1294, %1288 ]
  %51 = phi ptr [ %25, %22 ], [ %1289, %1288 ]
  %52 = phi i32 [ %23, %22 ], [ %1290, %1288 ]
  %53 = phi i32 [ %27, %22 ], [ %1291, %1288 ]
  %54 = phi i64 [ 0, %22 ], [ %1292, %1288 ]
  %55 = phi i32 [ 0, %22 ], [ %1293, %1288 ]
  switch i32 %50, label %1297 [
    i32 16191, label %60
    i32 16193, label %111
    i32 16196, label %56
    i32 16200, label %658
    i32 16208, label %1295
    i32 16209, label %1296
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
  br i1 %71, label %72, label %73, !prof !35, !nosanitize !34

72:                                               ; preds = %68
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

73:                                               ; preds = %68
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !34
  %75 = zext nneg i32 %69 to i64
  %76 = lshr i64 %54, %75
  store i32 16208, ptr %14, align 8, !tbaa !29
  br label %1288

77:                                               ; preds = %65
  %78 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

81:                                               ; preds = %77, %65
  %82 = phi i32 [ %78, %77 ], [ %52, %65 ]
  %83 = load ptr, ptr %6, align 8, !tbaa !32
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 1
  store ptr %84, ptr %6, align 8, !tbaa !32
  %85 = load i8, ptr %83, align 1, !tbaa !8
  %86 = zext i8 %85 to i64
  %87 = zext nneg i32 %55 to i64
  %88 = shl nuw nsw i64 %86, %87
  %89 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 %88), !nosanitize !34
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !34
  br i1 %90, label %91, label %92, !prof !35, !nosanitize !34

91:                                               ; preds = %81
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
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
  call void @inflate_fixed(ptr noundef nonnull %10) #7
  br label %107

104:                                              ; preds = %95
  br label %107

105:                                              ; preds = %95
  unreachable

106:                                              ; preds = %95
  store ptr @.str.1, ptr %13, align 8, !tbaa !9
  br label %107

107:                                              ; preds = %95, %106, %104, %103
  %108 = phi i32 [ 16209, %106 ], [ 16196, %104 ], [ 16200, %103 ], [ 16193, %95 ]
  store i32 %108, ptr %14, align 8, !tbaa !29
  %109 = add i32 %98, -3
  %110 = lshr i64 %97, 3
  br label %1288

111:                                              ; preds = %49
  %112 = and i32 %55, 7
  %113 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %112), !nosanitize !34
  %114 = extractvalue { i32, i1 } %113, 1, !nosanitize !34
  br i1 %114, label %115, label %116, !prof !35, !nosanitize !34

115:                                              ; preds = %111
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
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

124:                                              ; preds = %121, %143
  %125 = phi i64 [ %123, %121 ], [ %146, %143 ]
  %126 = phi i64 [ %118, %121 ], [ %144, %143 ]
  %127 = phi i32 [ %52, %121 ], [ %145, %143 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

133:                                              ; preds = %129, %124
  %134 = phi i32 [ %130, %129 ], [ %127, %124 ]
  %135 = load ptr, ptr %6, align 8, !tbaa !32
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 1
  store ptr %136, ptr %6, align 8, !tbaa !32
  %137 = load i8, ptr %135, align 1, !tbaa !8
  %138 = zext i8 %137 to i64
  %139 = shl nuw nsw i64 %138, %125
  %140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %126, i64 %139), !nosanitize !34
  %141 = extractvalue { i64, i1 } %140, 1, !nosanitize !34
  br i1 %141, label %142, label %143, !prof !35, !nosanitize !34

142:                                              ; preds = %133
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
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
  store ptr @.str.2, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

159:                                              ; preds = %150
  %160 = trunc i64 %152 to i32
  %161 = and i32 %160, 65535
  store i32 %161, ptr %41, align 4, !tbaa !38
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %208, label %163

163:                                              ; preds = %159, %204
  %164 = phi i32 [ %196, %204 ], [ %53, %159 ]
  %165 = phi i32 [ %189, %204 ], [ %151, %159 ]
  %166 = phi ptr [ %206, %204 ], [ %51, %159 ]
  %167 = phi i32 [ %205, %204 ], [ %161, %159 ]
  %168 = icmp eq i32 %165, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

173:                                              ; preds = %163, %169
  %174 = phi i32 [ %170, %169 ], [ %165, %163 ]
  %175 = icmp eq i32 %164, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load ptr, ptr %24, align 8, !tbaa !25
  %178 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %178, ptr %16, align 8, !tbaa !27
  %179 = call i32 %3(ptr noundef %4, ptr noundef %177, i32 noundef %178) #7
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %1297

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
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
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
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

199:                                              ; preds = %192
  %200 = load i32, ptr %41, align 4, !tbaa !38
  %201 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %200, i32 %185), !nosanitize !34
  %202 = extractvalue { i32, i1 } %201, 1, !nosanitize !34
  br i1 %202, label %203, label %204, !prof !35, !nosanitize !34

203:                                              ; preds = %199
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
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
  br label %1288

212:                                              ; preds = %58, %231
  %213 = phi i64 [ %59, %58 ], [ %234, %231 ]
  %214 = phi i64 [ %54, %58 ], [ %232, %231 ]
  %215 = phi i32 [ %52, %58 ], [ %233, %231 ]
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

221:                                              ; preds = %217, %212
  %222 = phi i32 [ %218, %217 ], [ %215, %212 ]
  %223 = load ptr, ptr %6, align 8, !tbaa !32
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 1
  store ptr %224, ptr %6, align 8, !tbaa !32
  %225 = load i8, ptr %223, align 1, !tbaa !8
  %226 = zext i8 %225 to i64
  %227 = shl nuw nsw i64 %226, %213
  %228 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %214, i64 %227), !nosanitize !34
  %229 = extractvalue { i64, i1 } %228, 1, !nosanitize !34
  br i1 %229, label %230, label %231, !prof !35, !nosanitize !34

230:                                              ; preds = %221
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
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
  store ptr @.str.3, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

257:                                              ; preds = %238
  store i32 0, ptr %31, align 4, !tbaa !44
  br label %262

258:                                              ; preds = %294
  %259 = icmp ult i32 %295, 19
  br i1 %259, label %260, label %317

260:                                              ; preds = %258
  %261 = zext nneg i32 %295 to i64
  br label %307

262:                                              ; preds = %257, %294
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
  %272 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

275:                                              ; preds = %268, %271
  %276 = phi i32 [ %272, %271 ], [ %266, %268 ]
  %277 = load ptr, ptr %6, align 8, !tbaa !32
  %278 = getelementptr inbounds nuw i8, ptr %277, i64 1
  store ptr %278, ptr %6, align 8, !tbaa !32
  %279 = load i8, ptr %277, align 1, !tbaa !8
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
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

294:                                              ; preds = %286
  %295 = extractvalue { i32, i1 } %291, 0, !nosanitize !34
  %296 = trunc i64 %289 to i16
  %297 = and i16 %296, 7
  store i32 %295, ptr %31, align 4, !tbaa !44
  %298 = zext i32 %287 to i64
  %299 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %298
  %300 = load i16, ptr %299, align 2, !tbaa !45
  %301 = zext i16 %300 to i64
  %302 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %301
  store i16 %297, ptr %302, align 2, !tbaa !45
  %303 = add i32 %290, -3
  %304 = lshr i64 %289, 3
  %305 = load i32, ptr %30, align 8, !tbaa !43
  %306 = icmp ult i32 %295, %305
  br i1 %306, label %262, label %258, !llvm.loop !47

307:                                              ; preds = %260, %307
  %308 = phi i64 [ %261, %260 ], [ %309, %307 ]
  %309 = add nuw nsw i64 %308, 1
  %310 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %308
  %311 = load i16, ptr %310, align 2, !tbaa !45
  %312 = zext i16 %311 to i64
  %313 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %312
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
  %318 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #7
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %317
  store ptr @.str.4, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

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
  br i1 %328, label %633, label %333

329:                                              ; preds = %321, %625
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

330:                                              ; preds = %625
  %331 = extractvalue { i32, i1 } %631, 0, !nosanitize !34
  %332 = icmp ult i32 %626, %331
  br i1 %332, label %333, label %633, !llvm.loop !53

333:                                              ; preds = %326, %330
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
  %344 = getelementptr inbounds nuw [4 x i8], ptr %341, i64 %343
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 1
  %346 = load i8, ptr %345, align 1, !tbaa !8
  %347 = zext i8 %346 to i32
  %348 = icmp ult i32 %336, %347
  br i1 %348, label %349, label %389

349:                                              ; preds = %333
  %350 = zext nneg i32 %336 to i64
  br label %351

351:                                              ; preds = %349, %370
  %352 = phi i64 [ %350, %349 ], [ %373, %370 ]
  %353 = phi i64 [ %335, %349 ], [ %371, %370 ]
  %354 = phi i32 [ %334, %349 ], [ %372, %370 ]
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %351
  %357 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

360:                                              ; preds = %356, %351
  %361 = phi i32 [ %357, %356 ], [ %354, %351 ]
  %362 = load ptr, ptr %6, align 8, !tbaa !32
  %363 = getelementptr inbounds nuw i8, ptr %362, i64 1
  store ptr %363, ptr %6, align 8, !tbaa !32
  %364 = load i8, ptr %362, align 1, !tbaa !8
  %365 = zext i8 %364 to i64
  %366 = shl i64 %365, %352
  %367 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %353, i64 %366), !nosanitize !34
  %368 = extractvalue { i64, i1 } %367, 1, !nosanitize !34
  br i1 %368, label %369, label %370, !prof !35, !nosanitize !34

369:                                              ; preds = %360
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
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
  %381 = getelementptr inbounds nuw [4 x i8], ptr %378, i64 %380
  %382 = getelementptr inbounds nuw i8, ptr %381, i64 1
  %383 = load i8, ptr %382, align 1, !tbaa !8
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
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

406:                                              ; preds = %399
  %407 = load i32, ptr %31, align 4, !tbaa !44
  %408 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %407, i32 1), !nosanitize !34
  %409 = extractvalue { i32, i1 } %408, 1, !nosanitize !34
  br i1 %409, label %410, label %625, !prof !35, !nosanitize !34

410:                                              ; preds = %406
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
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

430:                                              ; preds = %421, %449
  %431 = phi i64 [ %422, %421 ], [ %452, %449 ]
  %432 = phi i64 [ %391, %421 ], [ %450, %449 ]
  %433 = phi i32 [ %390, %421 ], [ %451, %449 ]
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %430
  %436 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

439:                                              ; preds = %435, %430
  %440 = phi i32 [ %436, %435 ], [ %433, %430 ]
  %441 = load ptr, ptr %6, align 8, !tbaa !32
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 1
  store ptr %442, ptr %6, align 8, !tbaa !32
  %443 = load i8, ptr %441, align 1, !tbaa !8
  %444 = zext i8 %443 to i64
  %445 = shl i64 %444, %431
  %446 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %432, i64 %445), !nosanitize !34
  %447 = extractvalue { i64, i1 } %446, 1, !nosanitize !34
  br i1 %447, label %448, label %449, !prof !35, !nosanitize !34

448:                                              ; preds = %439
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

449:                                              ; preds = %439
  %450 = extractvalue { i64, i1 } %446, 0, !nosanitize !34
  %451 = add i32 %440, -1
  %452 = add nuw nsw i64 %431, 8
  %453 = icmp samesign ult i64 %452, %423
  br i1 %453, label %430, label %454, !llvm.loop !54

454:                                              ; preds = %449
  %455 = trunc nuw nsw i64 %452 to i32
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
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

466:                                              ; preds = %456
  %467 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %462, i32 2), !nosanitize !34
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !34
  br i1 %468, label %469, label %470, !prof !35, !nosanitize !34

469:                                              ; preds = %466
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

470:                                              ; preds = %466
  %471 = trunc i64 %461 to i32
  %472 = and i32 %471, 3
  %473 = add nuw nsw i32 %472, 3
  %474 = add i32 %463, -1
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %475
  %477 = load i16, ptr %476, align 2, !tbaa !45
  %478 = lshr i64 %461, 2
  br label %561

479:                                              ; preds = %415, %498
  %480 = phi i64 [ %416, %415 ], [ %501, %498 ]
  %481 = phi i64 [ %391, %415 ], [ %499, %498 ]
  %482 = phi i32 [ %390, %415 ], [ %500, %498 ]
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %488

484:                                              ; preds = %479
  %485 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %484
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

488:                                              ; preds = %484, %479
  %489 = phi i32 [ %485, %484 ], [ %482, %479 ]
  %490 = load ptr, ptr %6, align 8, !tbaa !32
  %491 = getelementptr inbounds nuw i8, ptr %490, i64 1
  store ptr %491, ptr %6, align 8, !tbaa !32
  %492 = load i8, ptr %490, align 1, !tbaa !8
  %493 = zext i8 %492 to i64
  %494 = shl i64 %493, %480
  %495 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %481, i64 %494), !nosanitize !34
  %496 = extractvalue { i64, i1 } %495, 1, !nosanitize !34
  br i1 %496, label %497, label %498, !prof !35, !nosanitize !34

497:                                              ; preds = %488
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

498:                                              ; preds = %488
  %499 = extractvalue { i64, i1 } %495, 0, !nosanitize !34
  %500 = add i32 %489, -1
  %501 = add nuw nsw i64 %480, 8
  %502 = icmp samesign ult i64 %501, %417
  br i1 %502, label %479, label %503, !llvm.loop !55

503:                                              ; preds = %498
  %504 = trunc nuw nsw i64 %501 to i32
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
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

513:                                              ; preds = %505
  %514 = zext nneg i8 %393 to i64
  %515 = lshr i64 %507, %514
  %516 = trunc i64 %515 to i32
  %517 = and i32 %516, 7
  %518 = add nuw nsw i32 %517, 3
  %519 = lshr i64 %515, 3
  br label %561

520:                                              ; preds = %427, %539
  %521 = phi i64 [ %428, %427 ], [ %542, %539 ]
  %522 = phi i64 [ %391, %427 ], [ %540, %539 ]
  %523 = phi i32 [ %390, %427 ], [ %541, %539 ]
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %529

525:                                              ; preds = %520
  %526 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %525
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

529:                                              ; preds = %525, %520
  %530 = phi i32 [ %526, %525 ], [ %523, %520 ]
  %531 = load ptr, ptr %6, align 8, !tbaa !32
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 1
  store ptr %532, ptr %6, align 8, !tbaa !32
  %533 = load i8, ptr %531, align 1, !tbaa !8
  %534 = zext i8 %533 to i64
  %535 = shl i64 %534, %521
  %536 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %522, i64 %535), !nosanitize !34
  %537 = extractvalue { i64, i1 } %536, 1, !nosanitize !34
  br i1 %537, label %538, label %539, !prof !35, !nosanitize !34

538:                                              ; preds = %529
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

539:                                              ; preds = %529
  %540 = extractvalue { i64, i1 } %536, 0, !nosanitize !34
  %541 = add i32 %530, -1
  %542 = add nuw nsw i64 %521, 8
  %543 = icmp samesign ult i64 %542, %429
  br i1 %543, label %520, label %544, !llvm.loop !56

544:                                              ; preds = %539
  %545 = trunc nuw nsw i64 %542 to i32
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
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

554:                                              ; preds = %546
  %555 = zext nneg i8 %393 to i64
  %556 = lshr i64 %548, %555
  %557 = trunc i64 %556 to i32
  %558 = and i32 %557, 127
  %559 = add nuw nsw i32 %558, 11
  %560 = lshr i64 %556, 7
  br label %561

561:                                              ; preds = %513, %554, %470
  %562 = phi i32 [ %457, %470 ], [ %506, %513 ], [ %547, %554 ]
  %563 = phi i64 [ %478, %470 ], [ %519, %513 ], [ %560, %554 ]
  %564 = phi { i32, i1 } [ %467, %470 ], [ %510, %513 ], [ %551, %554 ]
  %565 = phi i32 [ %473, %470 ], [ %518, %513 ], [ %559, %554 ]
  %566 = phi i16 [ %477, %470 ], [ 0, %513 ], [ 0, %554 ]
  %567 = extractvalue { i32, i1 } %564, 0
  %568 = load i32, ptr %31, align 4, !tbaa !44
  %569 = freeze i32 %568
  %570 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %569, i32 %565), !nosanitize !34
  %571 = extractvalue { i32, i1 } %570, 0, !nosanitize !34
  %572 = extractvalue { i32, i1 } %570, 1, !nosanitize !34
  br i1 %572, label %573, label %574, !prof !35, !nosanitize !34

573:                                              ; preds = %561
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

574:                                              ; preds = %561
  %575 = load i32, ptr %28, align 4, !tbaa !41
  %576 = load i32, ptr %29, align 8, !tbaa !42
  %577 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %575, i32 %576), !nosanitize !34
  %578 = extractvalue { i32, i1 } %577, 1, !nosanitize !34
  br i1 %578, label %579, label %580, !prof !35, !nosanitize !34

579:                                              ; preds = %574
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

580:                                              ; preds = %574
  %581 = extractvalue { i32, i1 } %577, 0, !nosanitize !34
  %582 = icmp ugt i32 %571, %581
  br i1 %582, label %601, label %583

583:                                              ; preds = %580
  %584 = icmp eq i32 %569, -1
  br i1 %584, label %615, label %585, !prof !52, !nosanitize !34

585:                                              ; preds = %583
  %586 = zext i32 %569 to i64
  %587 = add nsw i32 %565, -1
  %588 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %587, 0
  %589 = and i64 %586, 1
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %591, label %597, !prof !52

591:                                              ; preds = %585
  %592 = or disjoint i64 %586, 1
  %593 = trunc nuw i64 %592 to i32
  store i32 %593, ptr %31, align 4, !tbaa !44
  %594 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %586
  store i16 %566, ptr %594, align 2, !tbaa !45
  %595 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %587, i32 1), !nosanitize !34
  %596 = extractvalue { i32, i1 } %595, 1, !nosanitize !34
  br i1 %596, label %604, label %597, !prof !57, !llvm.loop !58, !nosanitize !34

597:                                              ; preds = %591, %585
  %598 = phi { i32, i1 } [ %588, %585 ], [ %595, %591 ]
  %599 = phi i64 [ %586, %585 ], [ %592, %591 ]
  %600 = icmp eq i32 %569, -2
  br i1 %600, label %615, label %616, !prof !52

601:                                              ; preds = %580
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

602:                                              ; preds = %605, %616
  %603 = phi i32 [ %608, %605 ], [ %621, %616 ]
  store i32 %603, ptr %31, align 4, !tbaa !44
  br label %604

604:                                              ; preds = %602, %591
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

605:                                              ; preds = %616
  %606 = extractvalue { i32, i1 } %623, 0
  %607 = add nuw nsw i64 %618, 2
  %608 = trunc i64 %607 to i32
  %609 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %620
  store i16 %566, ptr %609, align 2, !tbaa !45
  %610 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %606, i32 1), !nosanitize !34
  %611 = extractvalue { i32, i1 } %610, 1, !nosanitize !34
  br i1 %611, label %602, label %612, !prof !57, !llvm.loop !58, !nosanitize !34

612:                                              ; preds = %605
  %613 = icmp eq i64 %607, 4294967295
  br i1 %613, label %614, label %616, !prof !57, !llvm.loop !59, !nosanitize !34

614:                                              ; preds = %612
  store i32 %608, ptr %31, align 4, !tbaa !44
  br label %615

615:                                              ; preds = %614, %597, %583
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

616:                                              ; preds = %597, %612
  %617 = phi { i32, i1 } [ %610, %612 ], [ %598, %597 ]
  %618 = phi i64 [ %607, %612 ], [ %599, %597 ]
  %619 = extractvalue { i32, i1 } %617, 0
  %620 = add nuw nsw i64 %618, 1
  %621 = trunc i64 %620 to i32
  %622 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %618
  store i16 %566, ptr %622, align 2, !tbaa !45
  %623 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %619, i32 1), !nosanitize !34
  %624 = extractvalue { i32, i1 } %623, 1, !nosanitize !34
  br i1 %624, label %602, label %605, !prof !57, !llvm.loop !58, !nosanitize !34

625:                                              ; preds = %406
  %626 = extractvalue { i32, i1 } %408, 0, !nosanitize !34
  store i32 %626, ptr %31, align 4, !tbaa !44
  %627 = zext i32 %407 to i64
  %628 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %627
  store i16 %397, ptr %628, align 2, !tbaa !45
  %629 = load i32, ptr %28, align 4, !tbaa !41
  %630 = load i32, ptr %29, align 8, !tbaa !42
  %631 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %629, i32 %630), !nosanitize !34
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !34
  br i1 %632, label %329, label %330, !prof !57, !llvm.loop !53, !nosanitize !34

633:                                              ; preds = %330, %326
  %634 = phi i32 [ %322, %326 ], [ %629, %330 ]
  %635 = phi i32 [ %303, %326 ], [ %403, %330 ]
  %636 = phi i64 [ %304, %326 ], [ %401, %330 ]
  %637 = phi i32 [ %288, %326 ], [ %390, %330 ]
  %638 = load i32, ptr %14, align 8, !tbaa !29
  %639 = icmp eq i32 %638, 16209
  br i1 %639, label %1288, label %640

640:                                              ; preds = %633
  %641 = load i16, ptr %38, align 8, !tbaa !45
  %642 = icmp eq i16 %641, 0
  br i1 %642, label %643, label %644

643:                                              ; preds = %640
  store ptr @.str.6, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

644:                                              ; preds = %640
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 9, ptr %36, align 8, !tbaa !51
  %645 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %634, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #7
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %648, label %647

647:                                              ; preds = %644
  store ptr @.str.7, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

648:                                              ; preds = %644
  %649 = load ptr, ptr %34, align 8, !tbaa !49
  store ptr %649, ptr %39, align 8, !tbaa !61
  store i32 6, ptr %40, align 4, !tbaa !62
  %650 = load i32, ptr %28, align 4, !tbaa !41
  %651 = zext i32 %650 to i64
  %652 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %651
  %653 = load i32, ptr %29, align 8, !tbaa !42
  %654 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %652, i32 noundef %653, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #7
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %657, label %656

656:                                              ; preds = %648
  store ptr @.str.8, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

657:                                              ; preds = %648
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %658

658:                                              ; preds = %49, %657
  %659 = phi i32 [ %637, %657 ], [ %52, %49 ]
  %660 = phi i64 [ %636, %657 ], [ %54, %49 ]
  %661 = phi i32 [ %635, %657 ], [ %55, %49 ]
  %662 = icmp ugt i32 %659, 5
  %663 = icmp ugt i32 %53, 257
  %664 = select i1 %662, i1 %663, i1 false
  br i1 %664, label %680, label %665

665:                                              ; preds = %658
  %666 = load i32, ptr %36, align 8, !tbaa !51
  %667 = shl nsw i32 -1, %666
  %668 = xor i32 %667, -1
  %669 = trunc i64 %660 to i32
  %670 = load ptr, ptr %35, align 8, !tbaa !50
  %671 = and i32 %668, %669
  %672 = zext nneg i32 %671 to i64
  %673 = getelementptr inbounds nuw [4 x i8], ptr %670, i64 %672
  %674 = getelementptr inbounds nuw i8, ptr %673, i64 1
  %675 = load i8, ptr %674, align 1, !tbaa !8
  %676 = zext i8 %675 to i32
  %677 = icmp ult i32 %661, %676
  br i1 %677, label %678, label %727

678:                                              ; preds = %665
  %679 = zext nneg i32 %661 to i64
  br label %689

680:                                              ; preds = %658
  store ptr %51, ptr %44, align 8, !tbaa !63
  store i32 %53, ptr %45, align 8, !tbaa !64
  %681 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %681, ptr %0, align 8, !tbaa !31
  store i32 %659, ptr %46, align 8, !tbaa !33
  store i64 %660, ptr %47, align 8, !tbaa !65
  store i32 %661, ptr %48, align 8, !tbaa !66
  %682 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %682) #7
  %683 = load ptr, ptr %44, align 8, !tbaa !63
  %684 = load i32, ptr %45, align 8, !tbaa !64
  %685 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %685, ptr %6, align 8, !tbaa !32
  %686 = load i32, ptr %46, align 8, !tbaa !33
  %687 = load i64, ptr %47, align 8, !tbaa !65
  %688 = load i32, ptr %48, align 8, !tbaa !66
  br label %1288

689:                                              ; preds = %678, %708
  %690 = phi i64 [ %679, %678 ], [ %711, %708 ]
  %691 = phi i64 [ %660, %678 ], [ %709, %708 ]
  %692 = phi i32 [ %659, %678 ], [ %710, %708 ]
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %698

694:                                              ; preds = %689
  %695 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %698

697:                                              ; preds = %694
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

698:                                              ; preds = %694, %689
  %699 = phi i32 [ %695, %694 ], [ %692, %689 ]
  %700 = load ptr, ptr %6, align 8, !tbaa !32
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 1
  store ptr %701, ptr %6, align 8, !tbaa !32
  %702 = load i8, ptr %700, align 1, !tbaa !8
  %703 = zext i8 %702 to i64
  %704 = shl i64 %703, %690
  %705 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %691, i64 %704), !nosanitize !34
  %706 = extractvalue { i64, i1 } %705, 1, !nosanitize !34
  br i1 %706, label %707, label %708, !prof !35, !nosanitize !34

707:                                              ; preds = %698
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

708:                                              ; preds = %698
  %709 = extractvalue { i64, i1 } %705, 0, !nosanitize !34
  %710 = add i32 %699, -1
  %711 = add nuw nsw i64 %690, 8
  %712 = load i32, ptr %36, align 8, !tbaa !51
  %713 = shl nsw i32 -1, %712
  %714 = xor i32 %713, -1
  %715 = trunc i64 %709 to i32
  %716 = load ptr, ptr %35, align 8, !tbaa !50
  %717 = and i32 %714, %715
  %718 = zext nneg i32 %717 to i64
  %719 = getelementptr inbounds nuw [4 x i8], ptr %716, i64 %718
  %720 = getelementptr inbounds nuw i8, ptr %719, i64 1
  %721 = load i8, ptr %720, align 1, !tbaa !8
  %722 = zext i8 %721 to i64
  %723 = icmp samesign ult i64 %711, %722
  br i1 %723, label %689, label %724

724:                                              ; preds = %708
  %725 = zext i8 %721 to i32
  %726 = trunc nuw nsw i64 %711 to i32
  br label %727

727:                                              ; preds = %724, %665
  %728 = phi ptr [ %670, %665 ], [ %716, %724 ]
  %729 = phi i32 [ %659, %665 ], [ %710, %724 ]
  %730 = phi i64 [ %660, %665 ], [ %709, %724 ]
  %731 = phi i32 [ %661, %665 ], [ %726, %724 ]
  %732 = phi ptr [ %673, %665 ], [ %719, %724 ]
  %733 = phi i8 [ %675, %665 ], [ %721, %724 ]
  %734 = phi i32 [ %676, %665 ], [ %725, %724 ]
  %735 = getelementptr inbounds nuw i8, ptr %732, i64 2
  %736 = load i16, ptr %735, align 2, !tbaa !45
  %737 = load i8, ptr %732, align 2, !tbaa !8
  %738 = add i8 %737, -1
  %739 = icmp ult i8 %738, 15
  br i1 %739, label %740, label %805

740:                                              ; preds = %727
  %741 = zext nneg i8 %737 to i32
  %742 = add nuw nsw i32 %734, %741
  %743 = shl nsw i32 -1, %742
  %744 = xor i32 %743, -1
  %745 = zext i16 %736 to i32
  %746 = trunc i64 %730 to i32
  %747 = and i32 %746, %744
  %748 = lshr i32 %747, %734
  %749 = add nuw i32 %748, %745
  %750 = zext i32 %749 to i64
  %751 = getelementptr inbounds nuw [4 x i8], ptr %728, i64 %750
  %752 = getelementptr inbounds nuw i8, ptr %751, i64 1
  %753 = load i8, ptr %752, align 1, !tbaa !8
  %754 = zext i8 %753 to i32
  %755 = add nuw nsw i32 %734, %754
  %756 = icmp ugt i32 %755, %731
  br i1 %756, label %757, label %793

757:                                              ; preds = %740, %777
  %758 = phi i32 [ %780, %777 ], [ %731, %740 ]
  %759 = phi i64 [ %778, %777 ], [ %730, %740 ]
  %760 = phi i32 [ %779, %777 ], [ %729, %740 ]
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %766

762:                                              ; preds = %757
  %763 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %766

765:                                              ; preds = %762
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

766:                                              ; preds = %762, %757
  %767 = phi i32 [ %763, %762 ], [ %760, %757 ]
  %768 = load ptr, ptr %6, align 8, !tbaa !32
  %769 = getelementptr inbounds nuw i8, ptr %768, i64 1
  store ptr %769, ptr %6, align 8, !tbaa !32
  %770 = load i8, ptr %768, align 1, !tbaa !8
  %771 = zext i8 %770 to i64
  %772 = zext nneg i32 %758 to i64
  %773 = shl i64 %771, %772
  %774 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %759, i64 %773), !nosanitize !34
  %775 = extractvalue { i64, i1 } %774, 1, !nosanitize !34
  br i1 %775, label %776, label %777, !prof !35, !nosanitize !34

776:                                              ; preds = %766
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

777:                                              ; preds = %766
  %778 = extractvalue { i64, i1 } %774, 0, !nosanitize !34
  %779 = add i32 %767, -1
  %780 = add nuw nsw i32 %758, 8
  %781 = load ptr, ptr %35, align 8, !tbaa !50
  %782 = trunc i64 %778 to i32
  %783 = and i32 %782, %744
  %784 = lshr i32 %783, %734
  %785 = add nuw i32 %784, %745
  %786 = zext i32 %785 to i64
  %787 = getelementptr inbounds nuw [4 x i8], ptr %781, i64 %786
  %788 = getelementptr inbounds nuw i8, ptr %787, i64 1
  %789 = load i8, ptr %788, align 1, !tbaa !8
  %790 = zext i8 %789 to i32
  %791 = add nuw nsw i32 %734, %790
  %792 = icmp ugt i32 %791, %780
  br i1 %792, label %757, label %793

793:                                              ; preds = %777, %740
  %794 = phi i32 [ %729, %740 ], [ %779, %777 ]
  %795 = phi i64 [ %730, %740 ], [ %778, %777 ]
  %796 = phi i32 [ %731, %740 ], [ %780, %777 ]
  %797 = phi ptr [ %751, %740 ], [ %787, %777 ]
  %798 = phi i8 [ %753, %740 ], [ %789, %777 ]
  %799 = getelementptr inbounds nuw i8, ptr %797, i64 2
  %800 = load i16, ptr %799, align 2, !tbaa !45
  %801 = load i8, ptr %797, align 2, !tbaa !8
  %802 = sub nuw i32 %796, %734
  %803 = zext nneg i8 %733 to i64
  %804 = lshr i64 %795, %803
  br label %805

805:                                              ; preds = %727, %793
  %806 = phi i32 [ %794, %793 ], [ %729, %727 ]
  %807 = phi i64 [ %804, %793 ], [ %730, %727 ]
  %808 = phi i32 [ %802, %793 ], [ %731, %727 ]
  %809 = phi i16 [ %800, %793 ], [ %736, %727 ]
  %810 = phi i8 [ %798, %793 ], [ %733, %727 ]
  %811 = phi i8 [ %801, %793 ], [ %737, %727 ]
  %812 = zext i8 %810 to i32
  %813 = zext nneg i8 %810 to i64
  %814 = lshr i64 %807, %813
  %815 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %808, i32 %812), !nosanitize !34
  %816 = extractvalue { i32, i1 } %815, 0, !nosanitize !34
  %817 = extractvalue { i32, i1 } %815, 1, !nosanitize !34
  br i1 %817, label %818, label %819, !prof !35, !nosanitize !34

818:                                              ; preds = %805
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

819:                                              ; preds = %805
  %820 = zext i16 %809 to i32
  store i32 %820, ptr %41, align 4, !tbaa !38
  %821 = zext i8 %811 to i32
  %822 = icmp eq i8 %811, 0
  br i1 %822, label %823, label %843

823:                                              ; preds = %819
  %824 = icmp eq i32 %53, 0
  br i1 %824, label %825, label %832

825:                                              ; preds = %823
  %826 = load ptr, ptr %24, align 8, !tbaa !25
  %827 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %827, ptr %16, align 8, !tbaa !27
  %828 = call i32 %3(ptr noundef %4, ptr noundef %826, i32 noundef %827) #7
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %830, label %1297

830:                                              ; preds = %825
  %831 = load i32, ptr %41, align 4, !tbaa !38
  br label %832

832:                                              ; preds = %830, %823
  %833 = phi i32 [ %831, %830 ], [ %820, %823 ]
  %834 = phi ptr [ %826, %830 ], [ %51, %823 ]
  %835 = phi i32 [ %827, %830 ], [ %53, %823 ]
  %836 = trunc i32 %833 to i8
  store i8 %836, ptr %834, align 1, !tbaa !8
  %837 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %835, i32 1), !nosanitize !34
  %838 = extractvalue { i32, i1 } %837, 1, !nosanitize !34
  br i1 %838, label %839, label %840, !prof !35, !nosanitize !34

839:                                              ; preds = %832
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

840:                                              ; preds = %832
  %841 = extractvalue { i32, i1 } %837, 0, !nosanitize !34
  %842 = getelementptr inbounds nuw i8, ptr %834, i64 1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %1288

843:                                              ; preds = %819
  %844 = and i32 %821, 32
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %847, label %846

846:                                              ; preds = %843
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %1288

847:                                              ; preds = %843
  %848 = and i32 %821, 64
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %851, label %850

850:                                              ; preds = %847
  store ptr @.str.9, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

851:                                              ; preds = %847
  %852 = and i32 %821, 15
  store i32 %852, ptr %42, align 4, !tbaa !67
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %911, label %854

854:                                              ; preds = %851
  %855 = icmp ult i32 %816, %852
  br i1 %855, label %856, label %889

856:                                              ; preds = %854
  %857 = zext nneg i32 %816 to i64
  br label %858

858:                                              ; preds = %856, %882
  %859 = phi i64 [ %857, %856 ], [ %883, %882 ]
  %860 = phi i64 [ %814, %856 ], [ %876, %882 ]
  %861 = phi i32 [ %806, %856 ], [ %869, %882 ]
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %867

863:                                              ; preds = %858
  %864 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %866, label %867

866:                                              ; preds = %863
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

867:                                              ; preds = %863, %858
  %868 = phi i32 [ %864, %863 ], [ %861, %858 ]
  %869 = add i32 %868, -1
  %870 = load ptr, ptr %6, align 8, !tbaa !32
  %871 = getelementptr inbounds nuw i8, ptr %870, i64 1
  store ptr %871, ptr %6, align 8, !tbaa !32
  %872 = load i8, ptr %870, align 1, !tbaa !8
  %873 = zext i8 %872 to i64
  %874 = shl i64 %873, %859
  %875 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %860, i64 %874), !nosanitize !34
  %876 = extractvalue { i64, i1 } %875, 0, !nosanitize !34
  %877 = extractvalue { i64, i1 } %875, 1, !nosanitize !34
  br i1 %877, label %878, label %879, !prof !35, !nosanitize !34

878:                                              ; preds = %867
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

879:                                              ; preds = %867
  %880 = icmp samesign ugt i64 %859, 4294967287
  br i1 %880, label %881, label %882, !prof !35, !nosanitize !34

881:                                              ; preds = %879
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

882:                                              ; preds = %879
  %883 = add nuw nsw i64 %859, 8
  %884 = trunc nuw i64 %883 to i32
  %885 = load i32, ptr %42, align 4, !tbaa !67
  %886 = icmp ugt i32 %885, %884
  br i1 %886, label %858, label %887, !llvm.loop !68

887:                                              ; preds = %882
  %888 = load i32, ptr %41, align 4, !tbaa !38
  br label %889

889:                                              ; preds = %887, %854
  %890 = phi i32 [ %820, %854 ], [ %888, %887 ]
  %891 = phi i32 [ %806, %854 ], [ %869, %887 ]
  %892 = phi i64 [ %814, %854 ], [ %876, %887 ]
  %893 = phi i32 [ %816, %854 ], [ %884, %887 ]
  %894 = phi i32 [ %852, %854 ], [ %885, %887 ]
  %895 = shl nsw i32 -1, %894
  %896 = xor i32 %895, -1
  %897 = trunc i64 %892 to i32
  %898 = and i32 %896, %897
  %899 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %890, i32 %898), !nosanitize !34
  %900 = extractvalue { i32, i1 } %899, 1, !nosanitize !34
  br i1 %900, label %901, label %902, !prof !35, !nosanitize !34

901:                                              ; preds = %889
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

902:                                              ; preds = %889
  %903 = extractvalue { i32, i1 } %899, 0, !nosanitize !34
  store i32 %903, ptr %41, align 4, !tbaa !38
  %904 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %893, i32 %894), !nosanitize !34
  %905 = extractvalue { i32, i1 } %904, 1, !nosanitize !34
  br i1 %905, label %906, label %907, !prof !35, !nosanitize !34

906:                                              ; preds = %902
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

907:                                              ; preds = %902
  %908 = extractvalue { i32, i1 } %904, 0, !nosanitize !34
  %909 = zext nneg i32 %894 to i64
  %910 = lshr i64 %892, %909
  br label %911

911:                                              ; preds = %907, %851
  %912 = phi i32 [ %891, %907 ], [ %806, %851 ]
  %913 = phi i64 [ %910, %907 ], [ %814, %851 ]
  %914 = phi i32 [ %908, %907 ], [ %816, %851 ]
  %915 = load i32, ptr %40, align 4, !tbaa !62
  %916 = shl nsw i32 -1, %915
  %917 = xor i32 %916, -1
  %918 = trunc i64 %913 to i32
  %919 = load ptr, ptr %39, align 8, !tbaa !61
  %920 = and i32 %917, %918
  %921 = zext nneg i32 %920 to i64
  %922 = getelementptr inbounds nuw [4 x i8], ptr %919, i64 %921
  %923 = getelementptr inbounds nuw i8, ptr %922, i64 1
  %924 = load i8, ptr %923, align 1, !tbaa !8
  %925 = zext i8 %924 to i32
  %926 = icmp ult i32 %914, %925
  br i1 %926, label %927, label %967

927:                                              ; preds = %911
  %928 = zext nneg i32 %914 to i64
  br label %929

929:                                              ; preds = %927, %948
  %930 = phi i64 [ %928, %927 ], [ %951, %948 ]
  %931 = phi i64 [ %913, %927 ], [ %949, %948 ]
  %932 = phi i32 [ %912, %927 ], [ %950, %948 ]
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %934, label %938

934:                                              ; preds = %929
  %935 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %938

937:                                              ; preds = %934
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

938:                                              ; preds = %934, %929
  %939 = phi i32 [ %935, %934 ], [ %932, %929 ]
  %940 = load ptr, ptr %6, align 8, !tbaa !32
  %941 = getelementptr inbounds nuw i8, ptr %940, i64 1
  store ptr %941, ptr %6, align 8, !tbaa !32
  %942 = load i8, ptr %940, align 1, !tbaa !8
  %943 = zext i8 %942 to i64
  %944 = shl i64 %943, %930
  %945 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %931, i64 %944), !nosanitize !34
  %946 = extractvalue { i64, i1 } %945, 1, !nosanitize !34
  br i1 %946, label %947, label %948, !prof !35, !nosanitize !34

947:                                              ; preds = %938
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

948:                                              ; preds = %938
  %949 = extractvalue { i64, i1 } %945, 0, !nosanitize !34
  %950 = add i32 %939, -1
  %951 = add nuw nsw i64 %930, 8
  %952 = load i32, ptr %40, align 4, !tbaa !62
  %953 = shl nsw i32 -1, %952
  %954 = xor i32 %953, -1
  %955 = trunc i64 %949 to i32
  %956 = load ptr, ptr %39, align 8, !tbaa !61
  %957 = and i32 %954, %955
  %958 = zext nneg i32 %957 to i64
  %959 = getelementptr inbounds nuw [4 x i8], ptr %956, i64 %958
  %960 = getelementptr inbounds nuw i8, ptr %959, i64 1
  %961 = load i8, ptr %960, align 1, !tbaa !8
  %962 = zext i8 %961 to i64
  %963 = icmp samesign ult i64 %951, %962
  br i1 %963, label %929, label %964

964:                                              ; preds = %948
  %965 = zext i8 %961 to i32
  %966 = trunc nuw nsw i64 %951 to i32
  br label %967

967:                                              ; preds = %964, %911
  %968 = phi ptr [ %919, %911 ], [ %956, %964 ]
  %969 = phi i32 [ %912, %911 ], [ %950, %964 ]
  %970 = phi i64 [ %913, %911 ], [ %949, %964 ]
  %971 = phi i32 [ %914, %911 ], [ %966, %964 ]
  %972 = phi ptr [ %922, %911 ], [ %959, %964 ]
  %973 = phi i8 [ %924, %911 ], [ %961, %964 ]
  %974 = phi i32 [ %925, %911 ], [ %965, %964 ]
  %975 = getelementptr inbounds nuw i8, ptr %972, i64 2
  %976 = load i16, ptr %975, align 2, !tbaa !45
  %977 = load i8, ptr %972, align 2, !tbaa !8
  %978 = icmp ult i8 %977, 16
  br i1 %978, label %979, label %1044

979:                                              ; preds = %967
  %980 = zext nneg i8 %977 to i32
  %981 = add nuw nsw i32 %974, %980
  %982 = shl nsw i32 -1, %981
  %983 = xor i32 %982, -1
  %984 = zext i16 %976 to i32
  %985 = trunc i64 %970 to i32
  %986 = and i32 %985, %983
  %987 = lshr i32 %986, %974
  %988 = add nuw i32 %987, %984
  %989 = zext i32 %988 to i64
  %990 = getelementptr inbounds nuw [4 x i8], ptr %968, i64 %989
  %991 = getelementptr inbounds nuw i8, ptr %990, i64 1
  %992 = load i8, ptr %991, align 1, !tbaa !8
  %993 = zext i8 %992 to i32
  %994 = add nuw nsw i32 %974, %993
  %995 = icmp ugt i32 %994, %971
  br i1 %995, label %996, label %1032

996:                                              ; preds = %979, %1016
  %997 = phi i32 [ %1019, %1016 ], [ %971, %979 ]
  %998 = phi i64 [ %1017, %1016 ], [ %970, %979 ]
  %999 = phi i32 [ %1018, %1016 ], [ %969, %979 ]
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1001, label %1005

1001:                                             ; preds = %996
  %1002 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1005

1004:                                             ; preds = %1001
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

1005:                                             ; preds = %1001, %996
  %1006 = phi i32 [ %1002, %1001 ], [ %999, %996 ]
  %1007 = load ptr, ptr %6, align 8, !tbaa !32
  %1008 = getelementptr inbounds nuw i8, ptr %1007, i64 1
  store ptr %1008, ptr %6, align 8, !tbaa !32
  %1009 = load i8, ptr %1007, align 1, !tbaa !8
  %1010 = zext i8 %1009 to i64
  %1011 = zext nneg i32 %997 to i64
  %1012 = shl i64 %1010, %1011
  %1013 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %998, i64 %1012), !nosanitize !34
  %1014 = extractvalue { i64, i1 } %1013, 1, !nosanitize !34
  br i1 %1014, label %1015, label %1016, !prof !35, !nosanitize !34

1015:                                             ; preds = %1005
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

1016:                                             ; preds = %1005
  %1017 = extractvalue { i64, i1 } %1013, 0, !nosanitize !34
  %1018 = add i32 %1006, -1
  %1019 = add nuw nsw i32 %997, 8
  %1020 = load ptr, ptr %39, align 8, !tbaa !61
  %1021 = trunc i64 %1017 to i32
  %1022 = and i32 %1021, %983
  %1023 = lshr i32 %1022, %974
  %1024 = add nuw i32 %1023, %984
  %1025 = zext i32 %1024 to i64
  %1026 = getelementptr inbounds nuw [4 x i8], ptr %1020, i64 %1025
  %1027 = getelementptr inbounds nuw i8, ptr %1026, i64 1
  %1028 = load i8, ptr %1027, align 1, !tbaa !8
  %1029 = zext i8 %1028 to i32
  %1030 = add nuw nsw i32 %974, %1029
  %1031 = icmp ugt i32 %1030, %1019
  br i1 %1031, label %996, label %1032

1032:                                             ; preds = %1016, %979
  %1033 = phi i32 [ %969, %979 ], [ %1018, %1016 ]
  %1034 = phi i64 [ %970, %979 ], [ %1017, %1016 ]
  %1035 = phi i32 [ %971, %979 ], [ %1019, %1016 ]
  %1036 = phi ptr [ %990, %979 ], [ %1026, %1016 ]
  %1037 = phi i8 [ %992, %979 ], [ %1028, %1016 ]
  %1038 = getelementptr inbounds nuw i8, ptr %1036, i64 2
  %1039 = load i16, ptr %1038, align 2, !tbaa !45
  %1040 = load i8, ptr %1036, align 2, !tbaa !8
  %1041 = sub nuw i32 %1035, %974
  %1042 = zext nneg i8 %973 to i64
  %1043 = lshr i64 %1034, %1042
  br label %1044

1044:                                             ; preds = %967, %1032
  %1045 = phi i32 [ %1033, %1032 ], [ %969, %967 ]
  %1046 = phi i64 [ %1043, %1032 ], [ %970, %967 ]
  %1047 = phi i32 [ %1041, %1032 ], [ %971, %967 ]
  %1048 = phi i16 [ %1039, %1032 ], [ %976, %967 ]
  %1049 = phi i8 [ %1037, %1032 ], [ %973, %967 ]
  %1050 = phi i8 [ %1040, %1032 ], [ %977, %967 ]
  %1051 = zext i8 %1049 to i32
  %1052 = zext nneg i8 %1049 to i64
  %1053 = lshr i64 %1046, %1052
  %1054 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1047, i32 %1051), !nosanitize !34
  %1055 = extractvalue { i32, i1 } %1054, 0, !nosanitize !34
  %1056 = extractvalue { i32, i1 } %1054, 1, !nosanitize !34
  br i1 %1056, label %1057, label %1058, !prof !35, !nosanitize !34

1057:                                             ; preds = %1044
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

1058:                                             ; preds = %1044
  %1059 = zext i8 %1050 to i32
  %1060 = and i32 %1059, 64
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1063, label %1062

1062:                                             ; preds = %1058
  store ptr @.str.10, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

1063:                                             ; preds = %1058
  %1064 = zext i16 %1048 to i32
  store i32 %1064, ptr %43, align 8, !tbaa !69
  %1065 = and i32 %1059, 15
  store i32 %1065, ptr %42, align 4, !tbaa !67
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1124, label %1067

1067:                                             ; preds = %1063
  %1068 = icmp ult i32 %1055, %1065
  br i1 %1068, label %1069, label %1102

1069:                                             ; preds = %1067
  %1070 = zext nneg i32 %1055 to i64
  br label %1071

1071:                                             ; preds = %1069, %1095
  %1072 = phi i64 [ %1070, %1069 ], [ %1096, %1095 ]
  %1073 = phi i64 [ %1053, %1069 ], [ %1089, %1095 ]
  %1074 = phi i32 [ %1045, %1069 ], [ %1082, %1095 ]
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1076, label %1080

1076:                                             ; preds = %1071
  %1077 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #7
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1079, label %1080

1079:                                             ; preds = %1076
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1297

1080:                                             ; preds = %1076, %1071
  %1081 = phi i32 [ %1077, %1076 ], [ %1074, %1071 ]
  %1082 = add i32 %1081, -1
  %1083 = load ptr, ptr %6, align 8, !tbaa !32
  %1084 = getelementptr inbounds nuw i8, ptr %1083, i64 1
  store ptr %1084, ptr %6, align 8, !tbaa !32
  %1085 = load i8, ptr %1083, align 1, !tbaa !8
  %1086 = zext i8 %1085 to i64
  %1087 = shl i64 %1086, %1072
  %1088 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1073, i64 %1087), !nosanitize !34
  %1089 = extractvalue { i64, i1 } %1088, 0, !nosanitize !34
  %1090 = extractvalue { i64, i1 } %1088, 1, !nosanitize !34
  br i1 %1090, label %1091, label %1092, !prof !35, !nosanitize !34

1091:                                             ; preds = %1080
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

1092:                                             ; preds = %1080
  %1093 = icmp samesign ugt i64 %1072, 4294967287
  br i1 %1093, label %1094, label %1095, !prof !35, !nosanitize !34

1094:                                             ; preds = %1092
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

1095:                                             ; preds = %1092
  %1096 = add nuw nsw i64 %1072, 8
  %1097 = trunc nuw i64 %1096 to i32
  %1098 = load i32, ptr %42, align 4, !tbaa !67
  %1099 = icmp ugt i32 %1098, %1097
  br i1 %1099, label %1071, label %1100, !llvm.loop !70

1100:                                             ; preds = %1095
  %1101 = load i32, ptr %43, align 8, !tbaa !69
  br label %1102

1102:                                             ; preds = %1100, %1067
  %1103 = phi i32 [ %1064, %1067 ], [ %1101, %1100 ]
  %1104 = phi i32 [ %1045, %1067 ], [ %1082, %1100 ]
  %1105 = phi i64 [ %1053, %1067 ], [ %1089, %1100 ]
  %1106 = phi i32 [ %1055, %1067 ], [ %1097, %1100 ]
  %1107 = phi i32 [ %1065, %1067 ], [ %1098, %1100 ]
  %1108 = shl nsw i32 -1, %1107
  %1109 = xor i32 %1108, -1
  %1110 = trunc i64 %1105 to i32
  %1111 = and i32 %1109, %1110
  %1112 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1103, i32 %1111), !nosanitize !34
  %1113 = extractvalue { i32, i1 } %1112, 1, !nosanitize !34
  br i1 %1113, label %1114, label %1115, !prof !35, !nosanitize !34

1114:                                             ; preds = %1102
  call void @llvm.ubsantrap(i8 0) #8, !nosanitize !34
  unreachable, !nosanitize !34

1115:                                             ; preds = %1102
  %1116 = extractvalue { i32, i1 } %1112, 0, !nosanitize !34
  store i32 %1116, ptr %43, align 8, !tbaa !69
  %1117 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1106, i32 %1107), !nosanitize !34
  %1118 = extractvalue { i32, i1 } %1117, 1, !nosanitize !34
  br i1 %1118, label %1119, label %1120, !prof !35, !nosanitize !34

1119:                                             ; preds = %1115
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

1120:                                             ; preds = %1115
  %1121 = extractvalue { i32, i1 } %1117, 0, !nosanitize !34
  %1122 = zext nneg i32 %1107 to i64
  %1123 = lshr i64 %1105, %1122
  br label %1124

1124:                                             ; preds = %1120, %1063
  %1125 = phi i32 [ %1116, %1120 ], [ %1064, %1063 ]
  %1126 = phi i32 [ %1104, %1120 ], [ %1045, %1063 ]
  %1127 = phi i64 [ %1123, %1120 ], [ %1053, %1063 ]
  %1128 = phi i32 [ %1121, %1120 ], [ %1055, %1063 ]
  %1129 = load i32, ptr %26, align 4, !tbaa !24
  %1130 = load i32, ptr %16, align 8, !tbaa !27
  %1131 = icmp ult i32 %1130, %1129
  %1132 = select i1 %1131, i32 %53, i32 0
  %1133 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1129, i32 %1132), !nosanitize !34
  %1134 = extractvalue { i32, i1 } %1133, 1, !nosanitize !34
  br i1 %1134, label %1135, label %1136, !prof !35, !nosanitize !34

1135:                                             ; preds = %1124
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

1136:                                             ; preds = %1124
  %1137 = extractvalue { i32, i1 } %1133, 0, !nosanitize !34
  %1138 = icmp ugt i32 %1125, %1137
  br i1 %1138, label %1139, label %1140

1139:                                             ; preds = %1136
  store ptr @.str.11, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1288

1140:                                             ; preds = %1136, %1284
  %1141 = phi ptr [ %1285, %1284 ], [ %51, %1136 ]
  %1142 = phi i32 [ %1172, %1284 ], [ %53, %1136 ]
  %1143 = icmp eq i32 %1142, 0
  %1144 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1143, label %1145, label %1151

1145:                                             ; preds = %1140
  %1146 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1144, ptr %16, align 8, !tbaa !27
  %1147 = call i32 %3(ptr noundef %4, ptr noundef %1146, i32 noundef %1144) #7
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1149, label %1297

1149:                                             ; preds = %1145
  %1150 = load i32, ptr %26, align 4, !tbaa !24
  br label %1151

1151:                                             ; preds = %1149, %1140
  %1152 = phi i32 [ %1150, %1149 ], [ %1144, %1140 ]
  %1153 = phi ptr [ %1146, %1149 ], [ %1141, %1140 ]
  %1154 = phi i32 [ %1144, %1149 ], [ %1142, %1140 ]
  %1155 = load i32, ptr %43, align 8, !tbaa !69
  %1156 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1152, i32 %1155), !nosanitize !34
  %1157 = extractvalue { i32, i1 } %1156, 1, !nosanitize !34
  br i1 %1157, label %1158, label %1159, !prof !35, !nosanitize !34

1158:                                             ; preds = %1151
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

1159:                                             ; preds = %1151
  %1160 = extractvalue { i32, i1 } %1156, 0, !nosanitize !34
  %1161 = icmp ult i32 %1160, %1154
  %1162 = select i1 %1161, i32 %1160, i32 0
  %1163 = sub i32 %1154, %1162
  %1164 = load i32, ptr %41, align 4, !tbaa !38
  %1165 = call i32 @llvm.umin.i32(i32 %1163, i32 %1164)
  %1166 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1164, i32 %1165), !nosanitize !34
  %1167 = extractvalue { i32, i1 } %1166, 1, !nosanitize !34
  br i1 %1167, label %1168, label %1169, !prof !35, !nosanitize !34

1168:                                             ; preds = %1159
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

1169:                                             ; preds = %1159
  %1170 = extractvalue { i32, i1 } %1166, 0, !nosanitize !34
  store i32 %1170, ptr %41, align 4, !tbaa !38
  %1171 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1154, i32 %1165), !nosanitize !34
  %1172 = extractvalue { i32, i1 } %1171, 0, !nosanitize !34
  %1173 = extractvalue { i32, i1 } %1171, 1, !nosanitize !34
  br i1 %1173, label %1253, label %1174, !prof !35, !nosanitize !34

1174:                                             ; preds = %1169
  %1175 = zext i32 %1160 to i64
  %1176 = zext i32 %1155 to i64
  %1177 = sub nsw i64 0, %1176
  %1178 = select i1 %1161, i64 %1175, i64 %1177
  %1179 = getelementptr inbounds i8, ptr %1153, i64 %1178
  %1180 = icmp eq i32 %1165, 0
  br i1 %1180, label %1251, label %1181, !prof !35, !nosanitize !34

1181:                                             ; preds = %1174
  %1182 = call i32 @llvm.umin.i32(i32 %1164, i32 %1163)
  %1183 = zext i32 %1182 to i64
  %1184 = icmp ult i32 %1182, 4
  %1185 = add nsw i64 %1178, 31
  %1186 = icmp ult i64 %1185, 32
  %1187 = select i1 %1184, i1 true, i1 %1186
  br i1 %1187, label %1227, label %1188

1188:                                             ; preds = %1181
  %1189 = icmp ult i32 %1182, 32
  br i1 %1189, label %1211, label %1190

1190:                                             ; preds = %1188
  %1191 = and i64 %1183, 28
  %1192 = and i64 %1183, 4294967264
  %1193 = getelementptr i8, ptr %1153, i64 %1192
  %1194 = trunc nuw i64 %1192 to i32
  %1195 = sub i32 %1165, %1194
  %1196 = getelementptr i8, ptr %1179, i64 %1192
  br label %1197

1197:                                             ; preds = %1197, %1190
  %1198 = phi i64 [ 0, %1190 ], [ %1205, %1197 ]
  %1199 = getelementptr i8, ptr %1153, i64 %1198
  %1200 = getelementptr i8, ptr %1179, i64 %1198
  %1201 = getelementptr i8, ptr %1200, i64 16
  %1202 = load <16 x i8>, ptr %1200, align 1, !tbaa !8
  %1203 = load <16 x i8>, ptr %1201, align 1, !tbaa !8
  %1204 = getelementptr i8, ptr %1199, i64 16
  store <16 x i8> %1202, ptr %1199, align 1, !tbaa !8
  store <16 x i8> %1203, ptr %1204, align 1, !tbaa !8
  %1205 = add nuw i64 %1198, 32
  %1206 = icmp eq i64 %1205, %1192
  br i1 %1206, label %1207, label %1197, !llvm.loop !71

1207:                                             ; preds = %1197
  %1208 = icmp eq i64 %1192, %1183
  br i1 %1208, label %1284, label %1209

1209:                                             ; preds = %1207
  %1210 = icmp eq i64 %1191, 0
  br i1 %1210, label %1227, label %1211, !prof !74

1211:                                             ; preds = %1188, %1209
  %1212 = phi i64 [ %1192, %1209 ], [ 0, %1188 ]
  %1213 = and i64 %1183, 4294967292
  %1214 = getelementptr i8, ptr %1153, i64 %1213
  %1215 = trunc nuw i64 %1213 to i32
  %1216 = sub i32 %1165, %1215
  %1217 = getelementptr i8, ptr %1179, i64 %1213
  br label %1218

1218:                                             ; preds = %1218, %1211
  %1219 = phi i64 [ %1212, %1211 ], [ %1223, %1218 ]
  %1220 = getelementptr i8, ptr %1153, i64 %1219
  %1221 = getelementptr i8, ptr %1179, i64 %1219
  %1222 = load <4 x i8>, ptr %1221, align 1, !tbaa !8
  store <4 x i8> %1222, ptr %1220, align 1, !tbaa !8
  %1223 = add nuw i64 %1219, 4
  %1224 = icmp eq i64 %1223, %1213
  br i1 %1224, label %1225, label %1218, !llvm.loop !75

1225:                                             ; preds = %1218
  %1226 = icmp eq i64 %1213, %1183
  br i1 %1226, label %1284, label %1227

1227:                                             ; preds = %1181, %1209, %1225
  %1228 = phi ptr [ %1153, %1181 ], [ %1193, %1209 ], [ %1214, %1225 ]
  %1229 = phi i32 [ %1165, %1181 ], [ %1195, %1209 ], [ %1216, %1225 ]
  %1230 = phi ptr [ %1179, %1181 ], [ %1196, %1209 ], [ %1217, %1225 ]
  %1231 = add i32 %1229, -1
  %1232 = and i32 %1229, 7
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1245, label %1234

1234:                                             ; preds = %1227, %1234
  %1235 = phi ptr [ %1240, %1234 ], [ %1228, %1227 ]
  %1236 = phi i32 [ %1241, %1234 ], [ %1229, %1227 ]
  %1237 = phi ptr [ %1242, %1234 ], [ %1230, %1227 ]
  %1238 = phi i32 [ %1243, %1234 ], [ 0, %1227 ]
  %1239 = load i8, ptr %1237, align 1, !tbaa !8
  store i8 %1239, ptr %1235, align 1, !tbaa !8
  %1240 = getelementptr inbounds nuw i8, ptr %1235, i64 1
  %1241 = add i32 %1236, -1
  %1242 = getelementptr inbounds nuw i8, ptr %1237, i64 1
  %1243 = add i32 %1238, 1
  %1244 = icmp eq i32 %1243, %1232
  br i1 %1244, label %1245, label %1234, !llvm.loop !76

1245:                                             ; preds = %1234, %1227
  %1246 = phi ptr [ poison, %1227 ], [ %1240, %1234 ]
  %1247 = phi ptr [ %1228, %1227 ], [ %1240, %1234 ]
  %1248 = phi i32 [ %1229, %1227 ], [ %1241, %1234 ]
  %1249 = phi ptr [ %1230, %1227 ], [ %1242, %1234 ]
  %1250 = icmp ult i32 %1231, 7
  br i1 %1250, label %1284, label %1254

1251:                                             ; preds = %1174
  %1252 = load i8, ptr %1179, align 1, !tbaa !8
  store i8 %1252, ptr %1153, align 1, !tbaa !8
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

1253:                                             ; preds = %1169
  call void @llvm.ubsantrap(i8 21) #8, !nosanitize !34
  unreachable, !nosanitize !34

1254:                                             ; preds = %1245, %1254
  %1255 = phi ptr [ %1280, %1254 ], [ %1247, %1245 ]
  %1256 = phi i32 [ %1281, %1254 ], [ %1248, %1245 ]
  %1257 = phi ptr [ %1282, %1254 ], [ %1249, %1245 ]
  %1258 = load i8, ptr %1257, align 1, !tbaa !8
  store i8 %1258, ptr %1255, align 1, !tbaa !8
  %1259 = getelementptr inbounds nuw i8, ptr %1255, i64 1
  %1260 = getelementptr inbounds nuw i8, ptr %1257, i64 1
  %1261 = load i8, ptr %1260, align 1, !tbaa !8
  store i8 %1261, ptr %1259, align 1, !tbaa !8
  %1262 = getelementptr inbounds nuw i8, ptr %1255, i64 2
  %1263 = getelementptr inbounds nuw i8, ptr %1257, i64 2
  %1264 = load i8, ptr %1263, align 1, !tbaa !8
  store i8 %1264, ptr %1262, align 1, !tbaa !8
  %1265 = getelementptr inbounds nuw i8, ptr %1255, i64 3
  %1266 = getelementptr inbounds nuw i8, ptr %1257, i64 3
  %1267 = load i8, ptr %1266, align 1, !tbaa !8
  store i8 %1267, ptr %1265, align 1, !tbaa !8
  %1268 = getelementptr inbounds nuw i8, ptr %1255, i64 4
  %1269 = getelementptr inbounds nuw i8, ptr %1257, i64 4
  %1270 = load i8, ptr %1269, align 1, !tbaa !8
  store i8 %1270, ptr %1268, align 1, !tbaa !8
  %1271 = getelementptr inbounds nuw i8, ptr %1255, i64 5
  %1272 = getelementptr inbounds nuw i8, ptr %1257, i64 5
  %1273 = load i8, ptr %1272, align 1, !tbaa !8
  store i8 %1273, ptr %1271, align 1, !tbaa !8
  %1274 = getelementptr inbounds nuw i8, ptr %1255, i64 6
  %1275 = getelementptr inbounds nuw i8, ptr %1257, i64 6
  %1276 = load i8, ptr %1275, align 1, !tbaa !8
  store i8 %1276, ptr %1274, align 1, !tbaa !8
  %1277 = getelementptr inbounds nuw i8, ptr %1255, i64 7
  %1278 = getelementptr inbounds nuw i8, ptr %1257, i64 7
  %1279 = load i8, ptr %1278, align 1, !tbaa !8
  store i8 %1279, ptr %1277, align 1, !tbaa !8
  %1280 = getelementptr inbounds nuw i8, ptr %1255, i64 8
  %1281 = add i32 %1256, -8
  %1282 = getelementptr inbounds nuw i8, ptr %1257, i64 8
  %1283 = icmp eq i32 %1281, 0
  br i1 %1283, label %1284, label %1254, !llvm.loop !78

1284:                                             ; preds = %1245, %1254, %1225, %1207
  %1285 = phi ptr [ %1214, %1225 ], [ %1193, %1207 ], [ %1246, %1245 ], [ %1280, %1254 ]
  %1286 = load i32, ptr %41, align 4, !tbaa !38
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1288, label %1140, !llvm.loop !79

1288:                                             ; preds = %1284, %465, %601, %633, %1139, %1062, %850, %846, %840, %680, %656, %647, %643, %320, %256, %208, %158, %107, %73
  %1289 = phi ptr [ %51, %73 ], [ %51, %107 ], [ %51, %158 ], [ %209, %208 ], [ %51, %256 ], [ %51, %320 ], [ %51, %633 ], [ %51, %643 ], [ %51, %647 ], [ %51, %656 ], [ %683, %680 ], [ %842, %840 ], [ %51, %846 ], [ %51, %850 ], [ %51, %1062 ], [ %51, %1139 ], [ %51, %465 ], [ %51, %601 ], [ %1285, %1284 ]
  %1290 = phi i32 [ %52, %73 ], [ %96, %107 ], [ %151, %158 ], [ %210, %208 ], [ %239, %256 ], [ %288, %320 ], [ %637, %633 ], [ %637, %643 ], [ %637, %647 ], [ %637, %656 ], [ %686, %680 ], [ %806, %840 ], [ %806, %846 ], [ %806, %850 ], [ %1045, %1062 ], [ %1126, %1139 ], [ %457, %465 ], [ %562, %601 ], [ %1126, %1284 ]
  %1291 = phi i32 [ %53, %73 ], [ %53, %107 ], [ %53, %158 ], [ %211, %208 ], [ %53, %256 ], [ %53, %320 ], [ %53, %633 ], [ %53, %643 ], [ %53, %647 ], [ %53, %656 ], [ %684, %680 ], [ %841, %840 ], [ %53, %846 ], [ %53, %850 ], [ %53, %1062 ], [ %53, %1139 ], [ %53, %465 ], [ %53, %601 ], [ %1172, %1284 ]
  %1292 = phi i64 [ %76, %73 ], [ %110, %107 ], [ %152, %158 ], [ 0, %208 ], [ %251, %256 ], [ %304, %320 ], [ %636, %633 ], [ %636, %643 ], [ %636, %647 ], [ %636, %656 ], [ %687, %680 ], [ %814, %840 ], [ %814, %846 ], [ %814, %850 ], [ %1053, %1062 ], [ %1127, %1139 ], [ %461, %465 ], [ %563, %601 ], [ %1127, %1284 ]
  %1293 = phi i32 [ %74, %73 ], [ %109, %107 ], [ %153, %158 ], [ 0, %208 ], [ %252, %256 ], [ %303, %320 ], [ %635, %633 ], [ %635, %643 ], [ %635, %647 ], [ %635, %656 ], [ %688, %680 ], [ %816, %840 ], [ %816, %846 ], [ %816, %850 ], [ %1055, %1062 ], [ %1128, %1139 ], [ %462, %465 ], [ %567, %601 ], [ %1128, %1284 ]
  %1294 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

1295:                                             ; preds = %49
  br label %1297

1296:                                             ; preds = %49
  br label %1297

1297:                                             ; preds = %825, %1145, %176, %49, %1296, %1295, %1079, %1004, %937, %866, %765, %697, %528, %487, %438, %359, %274, %220, %172, %132, %80
  %1298 = phi i32 [ %52, %1295 ], [ 0, %80 ], [ 0, %132 ], [ 0, %172 ], [ %1126, %1145 ], [ 0, %220 ], [ 0, %274 ], [ 0, %438 ], [ %52, %49 ], [ 0, %866 ], [ 0, %1079 ], [ %174, %176 ], [ 0, %1004 ], [ 0, %937 ], [ 0, %765 ], [ 0, %697 ], [ 0, %487 ], [ 0, %528 ], [ 0, %359 ], [ %806, %825 ], [ %52, %1296 ]
  %1299 = phi i32 [ %53, %1295 ], [ %53, %80 ], [ %53, %132 ], [ %164, %172 ], [ %1144, %1145 ], [ %53, %220 ], [ %53, %274 ], [ %53, %438 ], [ %53, %49 ], [ %53, %866 ], [ %53, %1079 ], [ %178, %176 ], [ %53, %1004 ], [ %53, %937 ], [ %53, %765 ], [ %53, %697 ], [ %53, %487 ], [ %53, %528 ], [ %53, %359 ], [ %827, %825 ], [ %53, %1296 ]
  %1300 = phi i1 [ true, %1295 ], [ false, %80 ], [ false, %132 ], [ false, %172 ], [ false, %1145 ], [ false, %220 ], [ false, %274 ], [ false, %438 ], [ false, %49 ], [ false, %866 ], [ false, %1079 ], [ false, %176 ], [ false, %1004 ], [ false, %937 ], [ false, %765 ], [ false, %697 ], [ false, %487 ], [ false, %528 ], [ false, %359 ], [ false, %825 ], [ false, %1296 ]
  %1301 = phi i32 [ 1, %1295 ], [ -5, %80 ], [ -5, %132 ], [ -5, %172 ], [ -5, %1145 ], [ -5, %220 ], [ -5, %274 ], [ -5, %438 ], [ -2, %49 ], [ -5, %866 ], [ -5, %1079 ], [ -5, %176 ], [ -5, %1004 ], [ -5, %937 ], [ -5, %765 ], [ -5, %697 ], [ -5, %487 ], [ -5, %528 ], [ -5, %359 ], [ -5, %825 ], [ -3, %1296 ]
  %1302 = load i32, ptr %26, align 4, !tbaa !24
  %1303 = icmp ult i32 %1299, %1302
  br i1 %1303, label %1304, label %1311

1304:                                             ; preds = %1297
  %1305 = sub nuw i32 %1302, %1299
  %1306 = load ptr, ptr %24, align 8, !tbaa !25
  %1307 = call i32 %3(ptr noundef %4, ptr noundef %1306, i32 noundef %1305) #7
  %1308 = icmp ne i32 %1307, 0
  %1309 = and i1 %1300, %1308
  %1310 = select i1 %1309, i32 -5, i32 %1301
  br label %1311

1311:                                             ; preds = %1304, %1297
  %1312 = phi i32 [ %1310, %1304 ], [ %1301, %1297 ]
  %1313 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1313, ptr %0, align 8, !tbaa !31
  store i32 %1298, ptr %46, align 8, !tbaa !33
  br label %1314

1314:                                             ; preds = %5, %8, %1311
  %1315 = phi i32 [ %1312, %1311 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 %1315
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #2

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
  tail call void %9(ptr noundef %13, ptr noundef nonnull %5) #7
  store ptr null, ptr %4, align 8, !tbaa !18
  br label %14

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nomerge noreturn nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !11, i64 48}
!10 = !{!"z_stream_s", !11, i64 0, !5, i64 8, !13, i64 16, !11, i64 24, !5, i64 32, !13, i64 40, !11, i64 48, !14, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !5, i64 88, !13, i64 96, !13, i64 104}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!15 = !{!10, !12, i64 64}
!16 = !{!10, !12, i64 80}
!17 = !{!10, !12, i64 72}
!18 = !{!10, !14, i64 56}
!19 = !{!20, !5, i64 28}
!20 = !{!"inflate_state", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !13, i64 32, !13, i64 40, !22, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !11, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !12, i64 104, !12, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !12, i64 144, !6, i64 152, !6, i64 792, !6, i64 1368, !5, i64 7144, !5, i64 7148, !5, i64 7152}
!21 = !{!"p1 _ZTS10z_stream_s", !12, i64 0}
!22 = !{!"p1 _ZTS11gz_header_s", !12, i64 0}
!23 = !{!20, !5, i64 56}
!24 = !{!20, !5, i64 60}
!25 = !{!20, !11, i64 72}
!26 = !{!20, !5, i64 68}
!27 = !{!20, !5, i64 64}
!28 = !{!20, !5, i64 7144}
!29 = !{!20, !5, i64 8}
!30 = !{!20, !5, i64 12}
!31 = !{!10, !11, i64 0}
!32 = !{!11, !11, i64 0}
!33 = !{!10, !5, i64 8}
!34 = !{}
!35 = !{!"branch_weights", i32 1, i32 1048575}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!20, !5, i64 92}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = !{!20, !5, i64 132}
!42 = !{!20, !5, i64 136}
!43 = !{!20, !5, i64 128}
!44 = !{!20, !5, i64 140}
!45 = !{!46, !46, i64 0}
!46 = !{!"short", !6, i64 0}
!47 = distinct !{!47, !37}
!48 = distinct !{!48, !37}
!49 = !{!20, !12, i64 144}
!50 = !{!20, !12, i64 104}
!51 = !{!20, !5, i64 120}
!52 = !{!"branch_weights", i32 1, i32 127}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = !{!"branch_weights", i32 127, i32 134217473}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !37, !60}
!60 = !{!"llvm.loop.estimated_trip_count", i32 528415}
!61 = !{!20, !12, i64 112}
!62 = !{!20, !5, i64 124}
!63 = !{!10, !11, i64 24}
!64 = !{!10, !5, i64 32}
!65 = !{!20, !13, i64 80}
!66 = !{!20, !5, i64 88}
!67 = !{!20, !5, i64 100}
!68 = distinct !{!68, !37}
!69 = !{!20, !5, i64 96}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !37, !72, !73}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!"branch_weights", i32 4, i32 28}
!75 = distinct !{!75, !37, !72, !73}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !37, !72}
!79 = distinct !{!79, !37}
