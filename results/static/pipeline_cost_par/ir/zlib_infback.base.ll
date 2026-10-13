; ModuleID = 'results/static/pipeline_cost_par/ir/zlib_infback.ll'
source_filename = "/mydata/zlib/infback.c"
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1236, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1236, label %12

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

49:                                               ; preds = %.loopexit105, %22
  %50 = phi i32 [ 16191, %22 ], [ %1219, %.loopexit105 ]
  %51 = phi ptr [ %25, %22 ], [ %1214, %.loopexit105 ]
  %52 = phi i32 [ %23, %22 ], [ %1215, %.loopexit105 ]
  %53 = phi i32 [ %27, %22 ], [ %1216, %.loopexit105 ]
  %54 = phi i64 [ 0, %22 ], [ %1217, %.loopexit105 ]
  %55 = phi i32 [ 0, %22 ], [ %1218, %.loopexit105 ]
  switch i32 %50, label %.loopexit.loopexit1080 [
    i32 16191, label %60
    i32 16193, label %110
    i32 16196, label %56
    i32 16200, label %643
    i32 16208, label %.loopexit.loopexit1389
    i32 16209, label %.loopexit
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %235

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %209

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
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

73:                                               ; preds = %68
  %74 = extractvalue { i32, i1 } %70, 0, !nosanitize !34
  %75 = zext nneg i32 %69 to i64
  %76 = lshr i64 %54, %75
  store i32 16208, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

77:                                               ; preds = %65
  %78 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

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
  switch i32 %102, label %default.unreachable791 [
    i32 0, label %106
    i32 1, label %103
    i32 2, label %104
    i32 3, label %105
  ]

103:                                              ; preds = %95
  call void @inflate_fixed(ptr noundef nonnull %10) #6
  br label %106

104:                                              ; preds = %95
  br label %106

default.unreachable791:                           ; preds = %95
  unreachable

105:                                              ; preds = %95
  store ptr @.str.1, ptr %13, align 8, !tbaa !8
  br label %106

106:                                              ; preds = %105, %104, %103, %95
  %107 = phi i32 [ 16209, %105 ], [ 16196, %104 ], [ 16200, %103 ], [ 16193, %95 ]
  store i32 %107, ptr %14, align 8, !tbaa !29
  %108 = add i32 %98, -3
  %109 = lshr i64 %97, 3
  br label %.loopexit105

110:                                              ; preds = %49
  %111 = and i32 %55, 7
  %112 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %111), !nosanitize !34
  %113 = extractvalue { i32, i1 } %112, 1, !nosanitize !34
  br i1 %113, label %114, label %115, !prof !35, !nosanitize !34

114:                                              ; preds = %110
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

115:                                              ; preds = %110
  %116 = zext nneg i32 %111 to i64
  %117 = lshr i64 %54, %116
  %118 = extractvalue { i32, i1 } %112, 0
  %119 = icmp ult i32 %118, 32
  br i1 %119, label %120, label %149

120:                                              ; preds = %115
  %121 = and i32 %55, -8
  %122 = zext i32 %121 to i64
  br label %123

123:                                              ; preds = %142, %120
  %124 = phi i64 [ %122, %120 ], [ %145, %142 ]
  %125 = phi i64 [ %117, %120 ], [ %143, %142 ]
  %126 = phi i32 [ %52, %120 ], [ %144, %142 ]
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

132:                                              ; preds = %128, %123
  %133 = phi i32 [ %129, %128 ], [ %126, %123 ]
  %134 = load ptr, ptr %6, align 8, !tbaa !32
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 1
  store ptr %135, ptr %6, align 8, !tbaa !32
  %136 = load i8, ptr %134, align 1, !tbaa !5
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, %124
  %139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 %138), !nosanitize !34
  %140 = extractvalue { i64, i1 } %139, 1, !nosanitize !34
  br i1 %140, label %141, label %142, !prof !35, !nosanitize !34

141:                                              ; preds = %132
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

142:                                              ; preds = %132
  %143 = extractvalue { i64, i1 } %139, 0, !nosanitize !34
  %144 = add i32 %133, -1
  %145 = add nuw nsw i64 %124, 8
  %146 = icmp samesign ult i64 %124, 24
  br i1 %146, label %123, label %147, !llvm.loop !36

147:                                              ; preds = %142
  %148 = trunc nuw nsw i64 %145 to i32
  br label %149

149:                                              ; preds = %147, %115
  %150 = phi i32 [ %52, %115 ], [ %144, %147 ]
  %151 = phi i64 [ %117, %115 ], [ %143, %147 ]
  %152 = phi i32 [ %118, %115 ], [ %148, %147 ]
  %153 = and i64 %151, 65535
  %154 = lshr i64 %151, 16
  %155 = xor i64 %154, %153
  %156 = icmp eq i64 %155, 65535
  br i1 %156, label %158, label %157

157:                                              ; preds = %149
  store ptr @.str.2, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

158:                                              ; preds = %149
  %159 = trunc i64 %151 to i32
  %160 = and i32 %159, 65535
  store i32 %160, ptr %41, align 4, !tbaa !38
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %.loopexit102, label %.preheader

.preheader:                                       ; preds = %158, %202
  %162 = phi i32 [ %194, %202 ], [ %53, %158 ]
  %163 = phi i32 [ %187, %202 ], [ %150, %158 ]
  %164 = phi ptr [ %204, %202 ], [ %51, %158 ]
  %165 = phi i32 [ %203, %202 ], [ %160, %158 ]
  %166 = icmp eq i32 %163, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %.preheader
  %168 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

171:                                              ; preds = %167, %.preheader
  %172 = phi i32 [ %168, %167 ], [ %163, %.preheader ]
  %173 = icmp eq i32 %162, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load ptr, ptr %24, align 8, !tbaa !25
  %176 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %176, ptr %16, align 8, !tbaa !27
  %177 = call i32 %3(ptr noundef %4, ptr noundef %175, i32 noundef %176) #6
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %.loopexit

179:                                              ; preds = %174, %171
  %180 = phi ptr [ %175, %174 ], [ %164, %171 ]
  %181 = phi i32 [ %176, %174 ], [ %162, %171 ]
  %182 = call i32 @llvm.umin.i32(i32 %165, i32 %172)
  %183 = call i32 @llvm.umin.i32(i32 %182, i32 %181)
  %184 = load ptr, ptr %6, align 8, !tbaa !32
  %185 = zext i32 %183 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %180, ptr align 1 %184, i64 %185, i1 false)
  %186 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %172, i32 %183), !nosanitize !34
  %187 = extractvalue { i32, i1 } %186, 0, !nosanitize !34
  %188 = extractvalue { i32, i1 } %186, 1, !nosanitize !34
  br i1 %188, label %189, label %190, !prof !35, !nosanitize !34

189:                                              ; preds = %179
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

190:                                              ; preds = %179
  %191 = load ptr, ptr %6, align 8, !tbaa !32
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 %185
  store ptr %192, ptr %6, align 8, !tbaa !32
  %193 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 %183), !nosanitize !34
  %194 = extractvalue { i32, i1 } %193, 0, !nosanitize !34
  %195 = extractvalue { i32, i1 } %193, 1, !nosanitize !34
  br i1 %195, label %196, label %197, !prof !35, !nosanitize !34

196:                                              ; preds = %190
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

197:                                              ; preds = %190
  %198 = load i32, ptr %41, align 4, !tbaa !38
  %199 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %198, i32 %183), !nosanitize !34
  %200 = extractvalue { i32, i1 } %199, 1, !nosanitize !34
  br i1 %200, label %201, label %202, !prof !35, !nosanitize !34

201:                                              ; preds = %197
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

202:                                              ; preds = %197
  %203 = extractvalue { i32, i1 } %199, 0, !nosanitize !34
  %204 = getelementptr inbounds nuw i8, ptr %180, i64 %185
  store i32 %203, ptr %41, align 4, !tbaa !38
  %205 = icmp eq i32 %203, 0
  br i1 %205, label %.loopexit102, label %.preheader, !llvm.loop !39

.loopexit102:                                     ; preds = %202, %158
  %206 = phi ptr [ %51, %158 ], [ %204, %202 ]
  %207 = phi i32 [ %150, %158 ], [ %187, %202 ]
  %208 = phi i32 [ %53, %158 ], [ %194, %202 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

209:                                              ; preds = %228, %58
  %210 = phi i64 [ %59, %58 ], [ %231, %228 ]
  %211 = phi i64 [ %54, %58 ], [ %229, %228 ]
  %212 = phi i32 [ %52, %58 ], [ %230, %228 ]
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

218:                                              ; preds = %214, %209
  %219 = phi i32 [ %215, %214 ], [ %212, %209 ]
  %220 = load ptr, ptr %6, align 8, !tbaa !32
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 1
  store ptr %221, ptr %6, align 8, !tbaa !32
  %222 = load i8, ptr %220, align 1, !tbaa !5
  %223 = zext i8 %222 to i64
  %224 = shl nuw nsw i64 %223, %210
  %225 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %211, i64 %224), !nosanitize !34
  %226 = extractvalue { i64, i1 } %225, 1, !nosanitize !34
  br i1 %226, label %227, label %228, !prof !35, !nosanitize !34

227:                                              ; preds = %218
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

228:                                              ; preds = %218
  %229 = extractvalue { i64, i1 } %225, 0, !nosanitize !34
  %230 = add i32 %219, -1
  %231 = add nuw nsw i64 %210, 8
  %232 = icmp samesign ult i64 %210, 6
  br i1 %232, label %209, label %233, !llvm.loop !40

233:                                              ; preds = %228
  %234 = trunc nuw nsw i64 %231 to i32
  br label %235

235:                                              ; preds = %233, %56
  %236 = phi i32 [ %52, %56 ], [ %230, %233 ]
  %237 = phi i64 [ %54, %56 ], [ %229, %233 ]
  %238 = phi i32 [ %55, %56 ], [ %234, %233 ]
  %239 = trunc i64 %237 to i32
  %240 = and i32 %239, 31
  %241 = add nuw nsw i32 %240, 257
  store i32 %241, ptr %28, align 4, !tbaa !41
  %242 = lshr i32 %239, 5
  %243 = and i32 %242, 31
  %244 = add nuw nsw i32 %243, 1
  store i32 %244, ptr %29, align 8, !tbaa !42
  %245 = lshr i32 %239, 10
  %246 = and i32 %245, 15
  %247 = add nuw nsw i32 %246, 4
  store i32 %247, ptr %30, align 8, !tbaa !43
  %248 = lshr i64 %237, 14
  %249 = add i32 %238, -14
  %250 = icmp samesign ugt i32 %240, 29
  %251 = icmp samesign ugt i32 %243, 29
  %252 = select i1 %250, i1 true, i1 %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %235
  store ptr @.str.3, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

254:                                              ; preds = %235
  store i32 0, ptr %31, align 4, !tbaa !44
  br label %259

255:                                              ; preds = %291
  %256 = icmp ult i32 %292, 19
  br i1 %256, label %257, label %314

257:                                              ; preds = %255
  %258 = zext nneg i32 %292 to i64
  br label %304

259:                                              ; preds = %291, %254
  %260 = phi i32 [ %292, %291 ], [ 0, %254 ]
  %261 = phi i32 [ %300, %291 ], [ %249, %254 ]
  %262 = phi i64 [ %301, %291 ], [ %248, %254 ]
  %263 = phi i32 [ %285, %291 ], [ %236, %254 ]
  %264 = icmp ult i32 %261, 3
  br i1 %264, label %265, label %283

265:                                              ; preds = %259
  %266 = or disjoint i32 %261, 8
  %267 = icmp eq i32 %263, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %._crit_edge

._crit_edge:                                      ; preds = %268
  %.pre = load i32, ptr %31, align 4, !tbaa !44
  br label %272

271:                                              ; preds = %268
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

272:                                              ; preds = %._crit_edge, %265
  %273 = phi i32 [ %.pre, %._crit_edge ], [ %260, %265 ]
  %274 = phi i32 [ %269, %._crit_edge ], [ %263, %265 ]
  %275 = load ptr, ptr %6, align 8, !tbaa !32
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 1
  store ptr %276, ptr %6, align 8, !tbaa !32
  %277 = load i8, ptr %275, align 1, !tbaa !5
  %278 = zext i8 %277 to i64
  %279 = zext nneg i32 %261 to i64
  %280 = shl nuw nsw i64 %278, %279
  %281 = add nuw nsw i64 %280, %262
  %282 = add i32 %274, -1
  br label %283

283:                                              ; preds = %272, %259
  %284 = phi i32 [ %273, %272 ], [ %260, %259 ]
  %285 = phi i32 [ %282, %272 ], [ %263, %259 ]
  %286 = phi i64 [ %281, %272 ], [ %262, %259 ]
  %287 = phi i32 [ %266, %272 ], [ %261, %259 ]
  %288 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %284, i32 1), !nosanitize !34
  %289 = extractvalue { i32, i1 } %288, 1, !nosanitize !34
  br i1 %289, label %290, label %291, !prof !35, !nosanitize !34

290:                                              ; preds = %283
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

291:                                              ; preds = %283
  %292 = extractvalue { i32, i1 } %288, 0, !nosanitize !34
  %293 = trunc i64 %286 to i16
  %294 = and i16 %293, 7
  store i32 %292, ptr %31, align 4, !tbaa !44
  %295 = zext i32 %284 to i64
  %296 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %295
  %297 = load i16, ptr %296, align 2, !tbaa !45
  %298 = zext i16 %297 to i64
  %299 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %298
  store i16 %294, ptr %299, align 2, !tbaa !45
  %300 = add i32 %287, -3
  %301 = lshr i64 %286, 3
  %302 = load i32, ptr %30, align 8, !tbaa !43
  %303 = icmp ult i32 %292, %302
  br i1 %303, label %259, label %255, !llvm.loop !47

304:                                              ; preds = %304, %257
  %305 = phi i64 [ %258, %257 ], [ %306, %304 ]
  %306 = add nuw nsw i64 %305, 1
  %307 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %305
  %308 = load i16, ptr %307, align 2, !tbaa !45
  %309 = zext i16 %308 to i64
  %310 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %309
  store i16 0, ptr %310, align 2, !tbaa !45
  %311 = and i64 %306, 4294967295
  %312 = icmp eq i64 %311, 19
  br i1 %312, label %313, label %304, !llvm.loop !48

313:                                              ; preds = %304
  store i32 19, ptr %31, align 4, !tbaa !44
  br label %314

314:                                              ; preds = %313, %255
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 7, ptr %36, align 8, !tbaa !51
  %315 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %314
  store ptr @.str.4, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

318:                                              ; preds = %314
  store i32 0, ptr %31, align 4, !tbaa !44
  %319 = load i32, ptr %28, align 4, !tbaa !41
  %320 = load i32, ptr %29, align 8, !tbaa !42
  %321 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %319, i32 %320), !nosanitize !34
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !34
  br i1 %322, label %.loopexit111, label %323, !prof !52, !nosanitize !34

323:                                              ; preds = %318
  %324 = extractvalue { i32, i1 } %321, 0, !nosanitize !34
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %.loopexit112, label %.preheader110.preheader

.preheader110.preheader:                          ; preds = %323
  %.pre691 = load i32, ptr %36, align 8, !tbaa !51
  %.pre692 = load ptr, ptr %35, align 8, !tbaa !50
  br label %.preheader110

.loopexit111:                                     ; preds = %318, %611
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

326:                                              ; preds = %611
  %327 = extractvalue { i32, i1 } %617, 0, !nosanitize !34
  %328 = icmp ult i32 %612, %327
  br i1 %328, label %.preheader110, label %.loopexit112, !llvm.loop !53

.preheader110:                                    ; preds = %.preheader110.preheader, %326
  %329 = phi ptr [ %385, %326 ], [ %.pre692, %.preheader110.preheader ]
  %330 = phi i32 [ %386, %326 ], [ %.pre691, %.preheader110.preheader ]
  %331 = phi i32 [ %387, %326 ], [ %285, %.preheader110.preheader ]
  %332 = phi i64 [ %398, %326 ], [ %301, %.preheader110.preheader ]
  %333 = phi i32 [ %400, %326 ], [ %300, %.preheader110.preheader ]
  %334 = shl nsw i32 -1, %330
  %335 = xor i32 %334, -1
  %336 = trunc i64 %332 to i32
  %337 = and i32 %335, %336
  %338 = zext nneg i32 %337 to i64
  %339 = getelementptr inbounds nuw [4 x i8], ptr %329, i64 %338
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 1
  %341 = load i8, ptr %340, align 1, !tbaa !5
  %342 = zext i8 %341 to i32
  %343 = icmp ult i32 %333, %342
  br i1 %343, label %344, label %384

344:                                              ; preds = %.preheader110
  %345 = zext nneg i32 %333 to i64
  br label %346

346:                                              ; preds = %365, %344
  %347 = phi i64 [ %345, %344 ], [ %368, %365 ]
  %348 = phi i64 [ %332, %344 ], [ %366, %365 ]
  %349 = phi i32 [ %331, %344 ], [ %367, %365 ]
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %346
  %352 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

355:                                              ; preds = %351, %346
  %356 = phi i32 [ %352, %351 ], [ %349, %346 ]
  %357 = load ptr, ptr %6, align 8, !tbaa !32
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 1
  store ptr %358, ptr %6, align 8, !tbaa !32
  %359 = load i8, ptr %357, align 1, !tbaa !5
  %360 = zext i8 %359 to i64
  %361 = shl i64 %360, %347
  %362 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %348, i64 %361), !nosanitize !34
  %363 = extractvalue { i64, i1 } %362, 1, !nosanitize !34
  br i1 %363, label %364, label %365, !prof !35, !nosanitize !34

364:                                              ; preds = %355
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

365:                                              ; preds = %355
  %366 = extractvalue { i64, i1 } %362, 0, !nosanitize !34
  %367 = add i32 %356, -1
  %368 = add nuw nsw i64 %347, 8
  %369 = load i32, ptr %36, align 8, !tbaa !51
  %370 = shl nsw i32 -1, %369
  %371 = xor i32 %370, -1
  %372 = trunc i64 %366 to i32
  %373 = load ptr, ptr %35, align 8, !tbaa !50
  %374 = and i32 %371, %372
  %375 = zext nneg i32 %374 to i64
  %376 = getelementptr inbounds nuw [4 x i8], ptr %373, i64 %375
  %377 = getelementptr inbounds nuw i8, ptr %376, i64 1
  %378 = load i8, ptr %377, align 1, !tbaa !5
  %379 = zext i8 %378 to i64
  %380 = icmp samesign ult i64 %368, %379
  br i1 %380, label %346, label %381

381:                                              ; preds = %365
  %382 = zext i8 %378 to i32
  %383 = trunc nuw nsw i64 %368 to i32
  br label %384

384:                                              ; preds = %381, %.preheader110
  %385 = phi ptr [ %329, %.preheader110 ], [ %373, %381 ]
  %386 = phi i32 [ %330, %.preheader110 ], [ %369, %381 ]
  %387 = phi i32 [ %331, %.preheader110 ], [ %367, %381 ]
  %388 = phi i64 [ %332, %.preheader110 ], [ %366, %381 ]
  %389 = phi i32 [ %333, %.preheader110 ], [ %383, %381 ]
  %390 = phi i8 [ %341, %.preheader110 ], [ %378, %381 ]
  %391 = phi ptr [ %339, %.preheader110 ], [ %376, %381 ]
  %392 = phi i32 [ %342, %.preheader110 ], [ %382, %381 ]
  %393 = getelementptr inbounds nuw i8, ptr %391, i64 2
  %394 = load i16, ptr %393, align 2, !tbaa !45
  %395 = icmp ult i16 %394, 16
  br i1 %395, label %396, label %408

396:                                              ; preds = %384
  %397 = zext nneg i8 %390 to i64
  %398 = lshr i64 %388, %397
  %399 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %389, i32 %392), !nosanitize !34
  %400 = extractvalue { i32, i1 } %399, 0, !nosanitize !34
  %401 = extractvalue { i32, i1 } %399, 1, !nosanitize !34
  br i1 %401, label %402, label %403, !prof !35, !nosanitize !34

402:                                              ; preds = %396
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

403:                                              ; preds = %396
  %404 = load i32, ptr %31, align 4, !tbaa !44
  %405 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %404, i32 1), !nosanitize !34
  %406 = extractvalue { i32, i1 } %405, 1, !nosanitize !34
  br i1 %406, label %407, label %611, !prof !35, !nosanitize !34

407:                                              ; preds = %403
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

408:                                              ; preds = %384
  switch i16 %394, label %421 [
    i16 16, label %415
    i16 17, label %409
  ]

409:                                              ; preds = %408
  %410 = add nuw nsw i32 %392, 3
  %411 = icmp ult i32 %389, %410
  br i1 %411, label %412, label %502

412:                                              ; preds = %409
  %413 = zext nneg i32 %389 to i64
  %414 = zext nneg i32 %410 to i64
  br label %476

415:                                              ; preds = %408
  %416 = add nuw nsw i32 %392, 2
  %417 = icmp ult i32 %389, %416
  br i1 %417, label %418, label %453

418:                                              ; preds = %415
  %419 = zext nneg i32 %389 to i64
  %420 = zext nneg i32 %416 to i64
  br label %427

421:                                              ; preds = %408
  %422 = add nuw nsw i32 %392, 7
  %423 = icmp ult i32 %389, %422
  br i1 %423, label %424, label %543

424:                                              ; preds = %421
  %425 = zext nneg i32 %389 to i64
  %426 = zext nneg i32 %422 to i64
  br label %517

427:                                              ; preds = %446, %418
  %428 = phi i64 [ %419, %418 ], [ %449, %446 ]
  %429 = phi i64 [ %388, %418 ], [ %447, %446 ]
  %430 = phi i32 [ %387, %418 ], [ %448, %446 ]
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %427
  %433 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %432
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

436:                                              ; preds = %432, %427
  %437 = phi i32 [ %433, %432 ], [ %430, %427 ]
  %438 = load ptr, ptr %6, align 8, !tbaa !32
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 1
  store ptr %439, ptr %6, align 8, !tbaa !32
  %440 = load i8, ptr %438, align 1, !tbaa !5
  %441 = zext i8 %440 to i64
  %442 = shl i64 %441, %428
  %443 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %429, i64 %442), !nosanitize !34
  %444 = extractvalue { i64, i1 } %443, 1, !nosanitize !34
  br i1 %444, label %445, label %446, !prof !35, !nosanitize !34

445:                                              ; preds = %436
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

446:                                              ; preds = %436
  %447 = extractvalue { i64, i1 } %443, 0, !nosanitize !34
  %448 = add i32 %437, -1
  %449 = add nuw nsw i64 %428, 8
  %450 = icmp samesign ult i64 %449, %420
  br i1 %450, label %427, label %451, !llvm.loop !54

451:                                              ; preds = %446
  %452 = trunc nuw nsw i64 %449 to i32
  br label %453

453:                                              ; preds = %451, %415
  %454 = phi i32 [ %387, %415 ], [ %448, %451 ]
  %455 = phi i64 [ %388, %415 ], [ %447, %451 ]
  %456 = phi i32 [ %389, %415 ], [ %452, %451 ]
  %457 = zext nneg i8 %390 to i64
  %458 = lshr i64 %455, %457
  %459 = sub nuw i32 %456, %392
  %460 = load i32, ptr %31, align 4, !tbaa !44
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %453
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

463:                                              ; preds = %453
  %464 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %459, i32 2), !nosanitize !34
  %465 = extractvalue { i32, i1 } %464, 1, !nosanitize !34
  br i1 %465, label %466, label %467, !prof !35, !nosanitize !34

466:                                              ; preds = %463
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

467:                                              ; preds = %463
  %468 = trunc i64 %458 to i32
  %469 = and i32 %468, 3
  %470 = add nuw nsw i32 %469, 3
  %471 = add i32 %460, -1
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %472
  %474 = load i16, ptr %473, align 2, !tbaa !45
  %475 = lshr i64 %458, 2
  br label %558

476:                                              ; preds = %495, %412
  %477 = phi i64 [ %413, %412 ], [ %498, %495 ]
  %478 = phi i64 [ %388, %412 ], [ %496, %495 ]
  %479 = phi i32 [ %387, %412 ], [ %497, %495 ]
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %476
  %482 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %481
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

485:                                              ; preds = %481, %476
  %486 = phi i32 [ %482, %481 ], [ %479, %476 ]
  %487 = load ptr, ptr %6, align 8, !tbaa !32
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 1
  store ptr %488, ptr %6, align 8, !tbaa !32
  %489 = load i8, ptr %487, align 1, !tbaa !5
  %490 = zext i8 %489 to i64
  %491 = shl i64 %490, %477
  %492 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %478, i64 %491), !nosanitize !34
  %493 = extractvalue { i64, i1 } %492, 1, !nosanitize !34
  br i1 %493, label %494, label %495, !prof !35, !nosanitize !34

494:                                              ; preds = %485
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

495:                                              ; preds = %485
  %496 = extractvalue { i64, i1 } %492, 0, !nosanitize !34
  %497 = add i32 %486, -1
  %498 = add nuw nsw i64 %477, 8
  %499 = icmp samesign ult i64 %498, %414
  br i1 %499, label %476, label %500, !llvm.loop !55

500:                                              ; preds = %495
  %501 = trunc nuw nsw i64 %498 to i32
  br label %502

502:                                              ; preds = %500, %409
  %503 = phi i32 [ %387, %409 ], [ %497, %500 ]
  %504 = phi i64 [ %388, %409 ], [ %496, %500 ]
  %505 = phi i32 [ %389, %409 ], [ %501, %500 ]
  %506 = sub nuw i32 %505, %392
  %507 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %506, i32 3), !nosanitize !34
  %508 = extractvalue { i32, i1 } %507, 1, !nosanitize !34
  br i1 %508, label %509, label %510, !prof !35, !nosanitize !34

509:                                              ; preds = %502
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

510:                                              ; preds = %502
  %511 = zext nneg i8 %390 to i64
  %512 = lshr i64 %504, %511
  %513 = trunc i64 %512 to i32
  %514 = and i32 %513, 7
  %515 = add nuw nsw i32 %514, 3
  %516 = lshr i64 %512, 3
  br label %558

517:                                              ; preds = %536, %424
  %518 = phi i64 [ %425, %424 ], [ %539, %536 ]
  %519 = phi i64 [ %388, %424 ], [ %537, %536 ]
  %520 = phi i32 [ %387, %424 ], [ %538, %536 ]
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %526

522:                                              ; preds = %517
  %523 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %522
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

526:                                              ; preds = %522, %517
  %527 = phi i32 [ %523, %522 ], [ %520, %517 ]
  %528 = load ptr, ptr %6, align 8, !tbaa !32
  %529 = getelementptr inbounds nuw i8, ptr %528, i64 1
  store ptr %529, ptr %6, align 8, !tbaa !32
  %530 = load i8, ptr %528, align 1, !tbaa !5
  %531 = zext i8 %530 to i64
  %532 = shl i64 %531, %518
  %533 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %519, i64 %532), !nosanitize !34
  %534 = extractvalue { i64, i1 } %533, 1, !nosanitize !34
  br i1 %534, label %535, label %536, !prof !35, !nosanitize !34

535:                                              ; preds = %526
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

536:                                              ; preds = %526
  %537 = extractvalue { i64, i1 } %533, 0, !nosanitize !34
  %538 = add i32 %527, -1
  %539 = add nuw nsw i64 %518, 8
  %540 = icmp samesign ult i64 %539, %426
  br i1 %540, label %517, label %541, !llvm.loop !56

541:                                              ; preds = %536
  %542 = trunc nuw nsw i64 %539 to i32
  br label %543

543:                                              ; preds = %541, %421
  %544 = phi i32 [ %387, %421 ], [ %538, %541 ]
  %545 = phi i64 [ %388, %421 ], [ %537, %541 ]
  %546 = phi i32 [ %389, %421 ], [ %542, %541 ]
  %547 = sub nuw i32 %546, %392
  %548 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %547, i32 7), !nosanitize !34
  %549 = extractvalue { i32, i1 } %548, 1, !nosanitize !34
  br i1 %549, label %550, label %551, !prof !35, !nosanitize !34

550:                                              ; preds = %543
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

551:                                              ; preds = %543
  %552 = zext nneg i8 %390 to i64
  %553 = lshr i64 %545, %552
  %554 = trunc i64 %553 to i32
  %555 = and i32 %554, 127
  %556 = add nuw nsw i32 %555, 11
  %557 = lshr i64 %553, 7
  br label %558

558:                                              ; preds = %551, %510, %467
  %559 = phi i32 [ %454, %467 ], [ %503, %510 ], [ %544, %551 ]
  %560 = phi i64 [ %475, %467 ], [ %516, %510 ], [ %557, %551 ]
  %561 = phi { i32, i1 } [ %464, %467 ], [ %507, %510 ], [ %548, %551 ]
  %562 = phi i32 [ %470, %467 ], [ %515, %510 ], [ %556, %551 ]
  %563 = phi i16 [ %474, %467 ], [ 0, %510 ], [ 0, %551 ]
  %564 = extractvalue { i32, i1 } %561, 0
  %565 = load i32, ptr %31, align 4, !tbaa !44
  %.fr1685 = freeze i32 %565
  %566 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.fr1685, i32 %562), !nosanitize !34
  %567 = extractvalue { i32, i1 } %566, 0, !nosanitize !34
  %568 = extractvalue { i32, i1 } %566, 1, !nosanitize !34
  br i1 %568, label %569, label %570, !prof !35, !nosanitize !34

569:                                              ; preds = %558
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

570:                                              ; preds = %558
  %571 = load i32, ptr %28, align 4, !tbaa !41
  %572 = load i32, ptr %29, align 8, !tbaa !42
  %573 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %571, i32 %572), !nosanitize !34
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !34
  br i1 %574, label %575, label %576, !prof !35, !nosanitize !34

575:                                              ; preds = %570
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

576:                                              ; preds = %570
  %577 = extractvalue { i32, i1 } %573, 0, !nosanitize !34
  %578 = icmp ugt i32 %567, %577
  br i1 %578, label %591, label %579

579:                                              ; preds = %576
  %580 = icmp eq i32 %.fr1685, -1
  br i1 %580, label %._crit_edge1367, label %.lr.ph, !prof !52, !nosanitize !34

.lr.ph:                                           ; preds = %579
  %581 = zext i32 %.fr1685 to i64
  %582 = add nsw i32 %562, -1
  %583 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %582, 0
  %584 = and i64 %581, 1
  %lcmp.mod1680.not.not = icmp eq i64 %584, 0
  br i1 %lcmp.mod1680.not.not, label %.prol.preheader, label %.prol.loopexit, !prof !52

.prol.preheader:                                  ; preds = %.lr.ph
  %585 = or disjoint i64 %581, 1
  %586 = trunc nuw i64 %585 to i32
  store i32 %586, ptr %31, align 4, !tbaa !44
  %587 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %581
  store i16 %563, ptr %587, align 2, !tbaa !45
  %588 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 1), !nosanitize !34
  %589 = extractvalue { i32, i1 } %588, 1, !nosanitize !34
  br i1 %589, label %593, label %.prol.loopexit, !prof !57, !llvm.loop !58, !nosanitize !34

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.unr1682 = phi { i32, i1 } [ %583, %.lr.ph ], [ %588, %.prol.preheader ]
  %.unr1683 = phi i64 [ %581, %.lr.ph ], [ %585, %.prol.preheader ]
  %590 = icmp eq i32 %.fr1685, -2
  br i1 %590, label %._crit_edge1367, label %.lr.ph.new, !prof !52

591:                                              ; preds = %576
  store ptr @.str.5, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

.loopexit1684:                                    ; preds = %594, %.lr.ph.new
  %592 = phi i32 [ %597, %594 ], [ %607, %.lr.ph.new ]
  store i32 %592, ptr %31, align 4, !tbaa !44
  br label %593

593:                                              ; preds = %.loopexit1684, %.prol.preheader
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

594:                                              ; preds = %.lr.ph.new
  %595 = extractvalue { i32, i1 } %609, 0
  %596 = add nuw nsw i64 %604, 2
  %597 = trunc nuw i64 %596 to i32
  %598 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %606
  store i16 %563, ptr %598, align 2, !tbaa !45
  %599 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %595, i32 1), !nosanitize !34
  %600 = extractvalue { i32, i1 } %599, 1, !nosanitize !34
  br i1 %600, label %.loopexit1684, label %601, !prof !57, !llvm.loop !58, !nosanitize !34

601:                                              ; preds = %594
  %602 = icmp eq i64 %596, 4294967295
  br i1 %602, label %._crit_edge1367.loopexit.unr-lcssa, label %.lr.ph.new, !prof !57, !llvm.loop !59, !nosanitize !34

._crit_edge1367.loopexit.unr-lcssa:               ; preds = %601
  store i32 %597, ptr %31, align 4, !tbaa !44
  br label %._crit_edge1367

._crit_edge1367:                                  ; preds = %._crit_edge1367.loopexit.unr-lcssa, %.prol.loopexit, %579
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

.lr.ph.new:                                       ; preds = %.prol.loopexit, %601
  %603 = phi { i32, i1 } [ %599, %601 ], [ %.unr1682, %.prol.loopexit ]
  %604 = phi i64 [ %596, %601 ], [ %.unr1683, %.prol.loopexit ]
  %605 = extractvalue { i32, i1 } %603, 0
  %606 = add nuw nsw i64 %604, 1
  %607 = trunc nuw i64 %606 to i32
  %608 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %604
  store i16 %563, ptr %608, align 2, !tbaa !45
  %609 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %605, i32 1), !nosanitize !34
  %610 = extractvalue { i32, i1 } %609, 1, !nosanitize !34
  br i1 %610, label %.loopexit1684, label %594, !prof !57, !llvm.loop !58, !nosanitize !34

611:                                              ; preds = %403
  %612 = extractvalue { i32, i1 } %405, 0, !nosanitize !34
  store i32 %612, ptr %31, align 4, !tbaa !44
  %613 = zext i32 %404 to i64
  %614 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %613
  store i16 %394, ptr %614, align 2, !tbaa !45
  %615 = load i32, ptr %28, align 4, !tbaa !41
  %616 = load i32, ptr %29, align 8, !tbaa !42
  %617 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %615, i32 %616), !nosanitize !34
  %618 = extractvalue { i32, i1 } %617, 1, !nosanitize !34
  br i1 %618, label %.loopexit111, label %326, !prof !57, !llvm.loop !53, !nosanitize !34

.loopexit112:                                     ; preds = %326, %323
  %619 = phi i32 [ %319, %323 ], [ %615, %326 ]
  %620 = phi i32 [ %300, %323 ], [ %400, %326 ]
  %621 = phi i64 [ %301, %323 ], [ %398, %326 ]
  %622 = phi i32 [ %285, %323 ], [ %387, %326 ]
  %623 = load i32, ptr %14, align 8, !tbaa !29
  %624 = icmp eq i32 %623, 16209
  br i1 %624, label %.loopexit105, label %625

625:                                              ; preds = %.loopexit112
  %626 = load i16, ptr %38, align 8, !tbaa !45
  %627 = icmp eq i16 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %625
  store ptr @.str.6, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

629:                                              ; preds = %625
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 9, ptr %36, align 8, !tbaa !51
  %630 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %619, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %633, label %632

632:                                              ; preds = %629
  store ptr @.str.7, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

633:                                              ; preds = %629
  %634 = load ptr, ptr %34, align 8, !tbaa !49
  store ptr %634, ptr %39, align 8, !tbaa !61
  store i32 6, ptr %40, align 4, !tbaa !62
  %635 = load i32, ptr %28, align 4, !tbaa !41
  %636 = zext i32 %635 to i64
  %637 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %636
  %638 = load i32, ptr %29, align 8, !tbaa !42
  %639 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %637, i32 noundef %638, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #6
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %642, label %641

641:                                              ; preds = %633
  store ptr @.str.8, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

642:                                              ; preds = %633
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %643

643:                                              ; preds = %642, %49
  %644 = phi i32 [ %622, %642 ], [ %52, %49 ]
  %645 = phi i64 [ %621, %642 ], [ %54, %49 ]
  %646 = phi i32 [ %620, %642 ], [ %55, %49 ]
  %647 = icmp ugt i32 %644, 5
  %648 = icmp ugt i32 %53, 257
  %649 = select i1 %647, i1 %648, i1 false
  br i1 %649, label %665, label %650

650:                                              ; preds = %643
  %651 = load i32, ptr %36, align 8, !tbaa !51
  %652 = shl nsw i32 -1, %651
  %653 = xor i32 %652, -1
  %654 = trunc i64 %645 to i32
  %655 = load ptr, ptr %35, align 8, !tbaa !50
  %656 = and i32 %653, %654
  %657 = zext nneg i32 %656 to i64
  %658 = getelementptr inbounds nuw [4 x i8], ptr %655, i64 %657
  %659 = getelementptr inbounds nuw i8, ptr %658, i64 1
  %660 = load i8, ptr %659, align 1, !tbaa !5
  %661 = zext i8 %660 to i32
  %662 = icmp ult i32 %646, %661
  br i1 %662, label %663, label %712

663:                                              ; preds = %650
  %664 = zext nneg i32 %646 to i64
  br label %674

665:                                              ; preds = %643
  store ptr %51, ptr %44, align 8, !tbaa !63
  store i32 %53, ptr %45, align 8, !tbaa !64
  %666 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %666, ptr %0, align 8, !tbaa !31
  store i32 %644, ptr %46, align 8, !tbaa !33
  store i64 %645, ptr %47, align 8, !tbaa !65
  store i32 %646, ptr %48, align 8, !tbaa !66
  %667 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %667) #6
  %668 = load ptr, ptr %44, align 8, !tbaa !63
  %669 = load i32, ptr %45, align 8, !tbaa !64
  %670 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %670, ptr %6, align 8, !tbaa !32
  %671 = load i32, ptr %46, align 8, !tbaa !33
  %672 = load i64, ptr %47, align 8, !tbaa !65
  %673 = load i32, ptr %48, align 8, !tbaa !66
  br label %.loopexit105

674:                                              ; preds = %693, %663
  %675 = phi i64 [ %664, %663 ], [ %696, %693 ]
  %676 = phi i64 [ %645, %663 ], [ %694, %693 ]
  %677 = phi i32 [ %644, %663 ], [ %695, %693 ]
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %683

679:                                              ; preds = %674
  %680 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %682, label %683

682:                                              ; preds = %679
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

683:                                              ; preds = %679, %674
  %684 = phi i32 [ %680, %679 ], [ %677, %674 ]
  %685 = load ptr, ptr %6, align 8, !tbaa !32
  %686 = getelementptr inbounds nuw i8, ptr %685, i64 1
  store ptr %686, ptr %6, align 8, !tbaa !32
  %687 = load i8, ptr %685, align 1, !tbaa !5
  %688 = zext i8 %687 to i64
  %689 = shl i64 %688, %675
  %690 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %676, i64 %689), !nosanitize !34
  %691 = extractvalue { i64, i1 } %690, 1, !nosanitize !34
  br i1 %691, label %692, label %693, !prof !35, !nosanitize !34

692:                                              ; preds = %683
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

693:                                              ; preds = %683
  %694 = extractvalue { i64, i1 } %690, 0, !nosanitize !34
  %695 = add i32 %684, -1
  %696 = add nuw nsw i64 %675, 8
  %697 = load i32, ptr %36, align 8, !tbaa !51
  %698 = shl nsw i32 -1, %697
  %699 = xor i32 %698, -1
  %700 = trunc i64 %694 to i32
  %701 = load ptr, ptr %35, align 8, !tbaa !50
  %702 = and i32 %699, %700
  %703 = zext nneg i32 %702 to i64
  %704 = getelementptr inbounds nuw [4 x i8], ptr %701, i64 %703
  %705 = getelementptr inbounds nuw i8, ptr %704, i64 1
  %706 = load i8, ptr %705, align 1, !tbaa !5
  %707 = zext i8 %706 to i64
  %708 = icmp samesign ult i64 %696, %707
  br i1 %708, label %674, label %709

709:                                              ; preds = %693
  %710 = zext i8 %706 to i32
  %711 = trunc nuw nsw i64 %696 to i32
  br label %712

712:                                              ; preds = %709, %650
  %713 = phi ptr [ %655, %650 ], [ %701, %709 ]
  %714 = phi i32 [ %644, %650 ], [ %695, %709 ]
  %715 = phi i64 [ %645, %650 ], [ %694, %709 ]
  %716 = phi i32 [ %646, %650 ], [ %711, %709 ]
  %717 = phi ptr [ %658, %650 ], [ %704, %709 ]
  %718 = phi i8 [ %660, %650 ], [ %706, %709 ]
  %719 = phi i32 [ %661, %650 ], [ %710, %709 ]
  %720 = getelementptr inbounds nuw i8, ptr %717, i64 2
  %721 = load i16, ptr %720, align 2, !tbaa !45
  %722 = load i8, ptr %717, align 2, !tbaa !5
  %723 = add i8 %722, -1
  %724 = icmp ult i8 %723, 15
  br i1 %724, label %725, label %788

725:                                              ; preds = %712
  %726 = zext nneg i8 %722 to i32
  %727 = add nuw nsw i32 %719, %726
  %728 = shl nsw i32 -1, %727
  %729 = xor i32 %728, -1
  %730 = zext i16 %721 to i32
  %731 = trunc i64 %715 to i32
  %732 = and i32 %729, %731
  %733 = lshr i32 %732, %719
  %734 = add nuw i32 %733, %730
  %735 = zext i32 %734 to i64
  %736 = getelementptr inbounds nuw [4 x i8], ptr %713, i64 %735
  %737 = getelementptr inbounds nuw i8, ptr %736, i64 1
  %738 = load i8, ptr %737, align 1, !tbaa !5
  %739 = zext i8 %738 to i32
  %740 = add nuw nsw i32 %719, %739
  %741 = icmp ugt i32 %740, %716
  br i1 %741, label %.preheader108.preheader, label %.loopexit109

.preheader108.preheader:                          ; preds = %725
  %742 = zext nneg i32 %716 to i64
  br label %.preheader108

.preheader108:                                    ; preds = %.preheader108.preheader, %760
  %indvars.iv = phi i64 [ %742, %.preheader108.preheader ], [ %indvars.iv.next, %760 ]
  %743 = phi i64 [ %715, %.preheader108.preheader ], [ %761, %760 ]
  %744 = phi i32 [ %714, %.preheader108.preheader ], [ %762, %760 ]
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %750

746:                                              ; preds = %.preheader108
  %747 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %749, label %750

749:                                              ; preds = %746
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

750:                                              ; preds = %746, %.preheader108
  %751 = phi i32 [ %747, %746 ], [ %744, %.preheader108 ]
  %752 = load ptr, ptr %6, align 8, !tbaa !32
  %753 = getelementptr inbounds nuw i8, ptr %752, i64 1
  store ptr %753, ptr %6, align 8, !tbaa !32
  %754 = load i8, ptr %752, align 1, !tbaa !5
  %755 = zext i8 %754 to i64
  %756 = shl i64 %755, %indvars.iv
  %757 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %743, i64 %756), !nosanitize !34
  %758 = extractvalue { i64, i1 } %757, 1, !nosanitize !34
  br i1 %758, label %759, label %760, !prof !35, !nosanitize !34

759:                                              ; preds = %750
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

760:                                              ; preds = %750
  %761 = extractvalue { i64, i1 } %757, 0, !nosanitize !34
  %762 = add i32 %751, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %763 = load ptr, ptr %35, align 8, !tbaa !50
  %764 = trunc i64 %761 to i32
  %765 = and i32 %764, %729
  %766 = lshr i32 %765, %719
  %767 = add nuw i32 %766, %730
  %768 = zext i32 %767 to i64
  %769 = getelementptr inbounds nuw [4 x i8], ptr %763, i64 %768
  %770 = getelementptr inbounds nuw i8, ptr %769, i64 1
  %771 = load i8, ptr %770, align 1, !tbaa !5
  %772 = zext i8 %771 to i32
  %773 = add nuw nsw i32 %719, %772
  %774 = zext nneg i32 %773 to i64
  %775 = icmp samesign ult i64 %indvars.iv.next, %774
  br i1 %775, label %.preheader108, label %.loopexit109.loopexit

.loopexit109.loopexit:                            ; preds = %760
  %776 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit109

.loopexit109:                                     ; preds = %.loopexit109.loopexit, %725
  %777 = phi i32 [ %714, %725 ], [ %762, %.loopexit109.loopexit ]
  %778 = phi i64 [ %715, %725 ], [ %761, %.loopexit109.loopexit ]
  %779 = phi i32 [ %716, %725 ], [ %776, %.loopexit109.loopexit ]
  %780 = phi ptr [ %736, %725 ], [ %769, %.loopexit109.loopexit ]
  %781 = phi i8 [ %738, %725 ], [ %771, %.loopexit109.loopexit ]
  %782 = getelementptr inbounds nuw i8, ptr %780, i64 2
  %783 = load i16, ptr %782, align 2, !tbaa !45
  %784 = load i8, ptr %780, align 2, !tbaa !5
  %785 = sub nuw i32 %779, %719
  %786 = zext nneg i8 %718 to i64
  %787 = lshr i64 %778, %786
  br label %788

788:                                              ; preds = %.loopexit109, %712
  %789 = phi i32 [ %777, %.loopexit109 ], [ %714, %712 ]
  %790 = phi i64 [ %787, %.loopexit109 ], [ %715, %712 ]
  %791 = phi i32 [ %785, %.loopexit109 ], [ %716, %712 ]
  %792 = phi i16 [ %783, %.loopexit109 ], [ %721, %712 ]
  %793 = phi i8 [ %781, %.loopexit109 ], [ %718, %712 ]
  %794 = phi i8 [ %784, %.loopexit109 ], [ %722, %712 ]
  %795 = zext i8 %793 to i32
  %796 = zext nneg i8 %793 to i64
  %797 = lshr i64 %790, %796
  %798 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %791, i32 %795), !nosanitize !34
  %799 = extractvalue { i32, i1 } %798, 0, !nosanitize !34
  %800 = extractvalue { i32, i1 } %798, 1, !nosanitize !34
  br i1 %800, label %801, label %802, !prof !35, !nosanitize !34

801:                                              ; preds = %788
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

802:                                              ; preds = %788
  %803 = zext i16 %792 to i32
  store i32 %803, ptr %41, align 4, !tbaa !38
  %804 = zext i8 %794 to i32
  %805 = icmp eq i8 %794, 0
  br i1 %805, label %806, label %826

806:                                              ; preds = %802
  %807 = icmp eq i32 %53, 0
  br i1 %807, label %808, label %815

808:                                              ; preds = %806
  %809 = load ptr, ptr %24, align 8, !tbaa !25
  %810 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %810, ptr %16, align 8, !tbaa !27
  %811 = call i32 %3(ptr noundef %4, ptr noundef %809, i32 noundef %810) #6
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %.loopexit

813:                                              ; preds = %808
  %814 = load i32, ptr %41, align 4, !tbaa !38
  br label %815

815:                                              ; preds = %813, %806
  %816 = phi i32 [ %814, %813 ], [ %803, %806 ]
  %817 = phi ptr [ %809, %813 ], [ %51, %806 ]
  %818 = phi i32 [ %810, %813 ], [ %53, %806 ]
  %819 = trunc i32 %816 to i8
  store i8 %819, ptr %817, align 1, !tbaa !5
  %820 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %818, i32 1), !nosanitize !34
  %821 = extractvalue { i32, i1 } %820, 1, !nosanitize !34
  br i1 %821, label %822, label %823, !prof !35, !nosanitize !34

822:                                              ; preds = %815
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

823:                                              ; preds = %815
  %824 = extractvalue { i32, i1 } %820, 0, !nosanitize !34
  %825 = getelementptr inbounds nuw i8, ptr %817, i64 1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

826:                                              ; preds = %802
  %827 = and i32 %804, 32
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %830, label %829

829:                                              ; preds = %826
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

830:                                              ; preds = %826
  %831 = and i32 %804, 64
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %834, label %833

833:                                              ; preds = %830
  store ptr @.str.9, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

834:                                              ; preds = %830
  %835 = and i32 %804, 15
  store i32 %835, ptr %42, align 4, !tbaa !67
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %894, label %837

837:                                              ; preds = %834
  %838 = icmp ult i32 %799, %835
  br i1 %838, label %839, label %872

839:                                              ; preds = %837
  %840 = zext nneg i32 %799 to i64
  br label %841

841:                                              ; preds = %865, %839
  %842 = phi i64 [ %840, %839 ], [ %866, %865 ]
  %843 = phi i64 [ %797, %839 ], [ %859, %865 ]
  %844 = phi i32 [ %789, %839 ], [ %852, %865 ]
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %850

846:                                              ; preds = %841
  %847 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %850

849:                                              ; preds = %846
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

850:                                              ; preds = %846, %841
  %851 = phi i32 [ %847, %846 ], [ %844, %841 ]
  %852 = add i32 %851, -1
  %853 = load ptr, ptr %6, align 8, !tbaa !32
  %854 = getelementptr inbounds nuw i8, ptr %853, i64 1
  store ptr %854, ptr %6, align 8, !tbaa !32
  %855 = load i8, ptr %853, align 1, !tbaa !5
  %856 = zext i8 %855 to i64
  %857 = shl i64 %856, %842
  %858 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %843, i64 %857), !nosanitize !34
  %859 = extractvalue { i64, i1 } %858, 0, !nosanitize !34
  %860 = extractvalue { i64, i1 } %858, 1, !nosanitize !34
  br i1 %860, label %861, label %862, !prof !35, !nosanitize !34

861:                                              ; preds = %850
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

862:                                              ; preds = %850
  %863 = icmp samesign ugt i64 %842, 4294967287
  br i1 %863, label %864, label %865, !prof !35, !nosanitize !34

864:                                              ; preds = %862
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

865:                                              ; preds = %862
  %866 = add nuw nsw i64 %842, 8
  %867 = trunc nuw i64 %866 to i32
  %868 = load i32, ptr %42, align 4, !tbaa !67
  %869 = icmp ugt i32 %868, %867
  br i1 %869, label %841, label %870, !llvm.loop !68

870:                                              ; preds = %865
  %871 = load i32, ptr %41, align 4, !tbaa !38
  br label %872

872:                                              ; preds = %870, %837
  %873 = phi i32 [ %803, %837 ], [ %871, %870 ]
  %874 = phi i32 [ %789, %837 ], [ %852, %870 ]
  %875 = phi i64 [ %797, %837 ], [ %859, %870 ]
  %876 = phi i32 [ %799, %837 ], [ %867, %870 ]
  %877 = phi i32 [ %835, %837 ], [ %868, %870 ]
  %878 = shl nsw i32 -1, %877
  %879 = xor i32 %878, -1
  %880 = trunc i64 %875 to i32
  %881 = and i32 %879, %880
  %882 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %873, i32 %881), !nosanitize !34
  %883 = extractvalue { i32, i1 } %882, 1, !nosanitize !34
  br i1 %883, label %884, label %885, !prof !35, !nosanitize !34

884:                                              ; preds = %872
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

885:                                              ; preds = %872
  %886 = extractvalue { i32, i1 } %882, 0, !nosanitize !34
  store i32 %886, ptr %41, align 4, !tbaa !38
  %887 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %876, i32 %877), !nosanitize !34
  %888 = extractvalue { i32, i1 } %887, 1, !nosanitize !34
  br i1 %888, label %889, label %890, !prof !35, !nosanitize !34

889:                                              ; preds = %885
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

890:                                              ; preds = %885
  %891 = extractvalue { i32, i1 } %887, 0, !nosanitize !34
  %892 = zext nneg i32 %877 to i64
  %893 = lshr i64 %875, %892
  br label %894

894:                                              ; preds = %890, %834
  %895 = phi i32 [ %874, %890 ], [ %789, %834 ]
  %896 = phi i64 [ %893, %890 ], [ %797, %834 ]
  %897 = phi i32 [ %891, %890 ], [ %799, %834 ]
  %898 = load i32, ptr %40, align 4, !tbaa !62
  %899 = shl nsw i32 -1, %898
  %900 = xor i32 %899, -1
  %901 = trunc i64 %896 to i32
  %902 = load ptr, ptr %39, align 8, !tbaa !61
  %903 = and i32 %900, %901
  %904 = zext nneg i32 %903 to i64
  %905 = getelementptr inbounds nuw [4 x i8], ptr %902, i64 %904
  %906 = getelementptr inbounds nuw i8, ptr %905, i64 1
  %907 = load i8, ptr %906, align 1, !tbaa !5
  %908 = zext i8 %907 to i32
  %909 = icmp ult i32 %897, %908
  br i1 %909, label %910, label %950

910:                                              ; preds = %894
  %911 = zext nneg i32 %897 to i64
  br label %912

912:                                              ; preds = %931, %910
  %913 = phi i64 [ %911, %910 ], [ %934, %931 ]
  %914 = phi i64 [ %896, %910 ], [ %932, %931 ]
  %915 = phi i32 [ %895, %910 ], [ %933, %931 ]
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %921

917:                                              ; preds = %912
  %918 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %921

920:                                              ; preds = %917
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

921:                                              ; preds = %917, %912
  %922 = phi i32 [ %918, %917 ], [ %915, %912 ]
  %923 = load ptr, ptr %6, align 8, !tbaa !32
  %924 = getelementptr inbounds nuw i8, ptr %923, i64 1
  store ptr %924, ptr %6, align 8, !tbaa !32
  %925 = load i8, ptr %923, align 1, !tbaa !5
  %926 = zext i8 %925 to i64
  %927 = shl i64 %926, %913
  %928 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %914, i64 %927), !nosanitize !34
  %929 = extractvalue { i64, i1 } %928, 1, !nosanitize !34
  br i1 %929, label %930, label %931, !prof !35, !nosanitize !34

930:                                              ; preds = %921
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

931:                                              ; preds = %921
  %932 = extractvalue { i64, i1 } %928, 0, !nosanitize !34
  %933 = add i32 %922, -1
  %934 = add nuw nsw i64 %913, 8
  %935 = load i32, ptr %40, align 4, !tbaa !62
  %936 = shl nsw i32 -1, %935
  %937 = xor i32 %936, -1
  %938 = trunc i64 %932 to i32
  %939 = load ptr, ptr %39, align 8, !tbaa !61
  %940 = and i32 %937, %938
  %941 = zext nneg i32 %940 to i64
  %942 = getelementptr inbounds nuw [4 x i8], ptr %939, i64 %941
  %943 = getelementptr inbounds nuw i8, ptr %942, i64 1
  %944 = load i8, ptr %943, align 1, !tbaa !5
  %945 = zext i8 %944 to i64
  %946 = icmp samesign ult i64 %934, %945
  br i1 %946, label %912, label %947

947:                                              ; preds = %931
  %948 = zext i8 %944 to i32
  %949 = trunc nuw nsw i64 %934 to i32
  br label %950

950:                                              ; preds = %947, %894
  %951 = phi ptr [ %902, %894 ], [ %939, %947 ]
  %952 = phi i32 [ %895, %894 ], [ %933, %947 ]
  %953 = phi i64 [ %896, %894 ], [ %932, %947 ]
  %954 = phi i32 [ %897, %894 ], [ %949, %947 ]
  %955 = phi ptr [ %905, %894 ], [ %942, %947 ]
  %956 = phi i8 [ %907, %894 ], [ %944, %947 ]
  %957 = phi i32 [ %908, %894 ], [ %948, %947 ]
  %958 = getelementptr inbounds nuw i8, ptr %955, i64 2
  %959 = load i16, ptr %958, align 2, !tbaa !45
  %960 = load i8, ptr %955, align 2, !tbaa !5
  %961 = icmp ult i8 %960, 16
  br i1 %961, label %962, label %1025

962:                                              ; preds = %950
  %963 = zext nneg i8 %960 to i32
  %964 = add nuw nsw i32 %957, %963
  %965 = shl nsw i32 -1, %964
  %966 = xor i32 %965, -1
  %967 = zext i16 %959 to i32
  %968 = trunc i64 %953 to i32
  %969 = and i32 %966, %968
  %970 = lshr i32 %969, %957
  %971 = add nuw i32 %970, %967
  %972 = zext i32 %971 to i64
  %973 = getelementptr inbounds nuw [4 x i8], ptr %951, i64 %972
  %974 = getelementptr inbounds nuw i8, ptr %973, i64 1
  %975 = load i8, ptr %974, align 1, !tbaa !5
  %976 = zext i8 %975 to i32
  %977 = add nuw nsw i32 %957, %976
  %978 = icmp ugt i32 %977, %954
  br i1 %978, label %.preheader106.preheader, label %.loopexit107

.preheader106.preheader:                          ; preds = %962
  %979 = zext nneg i32 %954 to i64
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106.preheader, %997
  %indvars.iv674 = phi i64 [ %979, %.preheader106.preheader ], [ %indvars.iv.next675, %997 ]
  %980 = phi i64 [ %953, %.preheader106.preheader ], [ %998, %997 ]
  %981 = phi i32 [ %952, %.preheader106.preheader ], [ %999, %997 ]
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %987

983:                                              ; preds = %.preheader106
  %984 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %987

986:                                              ; preds = %983
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

987:                                              ; preds = %983, %.preheader106
  %988 = phi i32 [ %984, %983 ], [ %981, %.preheader106 ]
  %989 = load ptr, ptr %6, align 8, !tbaa !32
  %990 = getelementptr inbounds nuw i8, ptr %989, i64 1
  store ptr %990, ptr %6, align 8, !tbaa !32
  %991 = load i8, ptr %989, align 1, !tbaa !5
  %992 = zext i8 %991 to i64
  %993 = shl i64 %992, %indvars.iv674
  %994 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %980, i64 %993), !nosanitize !34
  %995 = extractvalue { i64, i1 } %994, 1, !nosanitize !34
  br i1 %995, label %996, label %997, !prof !35, !nosanitize !34

996:                                              ; preds = %987
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

997:                                              ; preds = %987
  %998 = extractvalue { i64, i1 } %994, 0, !nosanitize !34
  %999 = add i32 %988, -1
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 8
  %1000 = load ptr, ptr %39, align 8, !tbaa !61
  %1001 = trunc i64 %998 to i32
  %1002 = and i32 %1001, %966
  %1003 = lshr i32 %1002, %957
  %1004 = add nuw i32 %1003, %967
  %1005 = zext i32 %1004 to i64
  %1006 = getelementptr inbounds nuw [4 x i8], ptr %1000, i64 %1005
  %1007 = getelementptr inbounds nuw i8, ptr %1006, i64 1
  %1008 = load i8, ptr %1007, align 1, !tbaa !5
  %1009 = zext i8 %1008 to i32
  %1010 = add nuw nsw i32 %957, %1009
  %1011 = zext nneg i32 %1010 to i64
  %1012 = icmp samesign ult i64 %indvars.iv.next675, %1011
  br i1 %1012, label %.preheader106, label %.loopexit107.loopexit

.loopexit107.loopexit:                            ; preds = %997
  %1013 = trunc nuw nsw i64 %indvars.iv.next675 to i32
  br label %.loopexit107

.loopexit107:                                     ; preds = %.loopexit107.loopexit, %962
  %1014 = phi i32 [ %952, %962 ], [ %999, %.loopexit107.loopexit ]
  %1015 = phi i64 [ %953, %962 ], [ %998, %.loopexit107.loopexit ]
  %1016 = phi i32 [ %954, %962 ], [ %1013, %.loopexit107.loopexit ]
  %1017 = phi ptr [ %973, %962 ], [ %1006, %.loopexit107.loopexit ]
  %1018 = phi i8 [ %975, %962 ], [ %1008, %.loopexit107.loopexit ]
  %1019 = getelementptr inbounds nuw i8, ptr %1017, i64 2
  %1020 = load i16, ptr %1019, align 2, !tbaa !45
  %1021 = load i8, ptr %1017, align 2, !tbaa !5
  %1022 = sub nuw i32 %1016, %957
  %1023 = zext nneg i8 %956 to i64
  %1024 = lshr i64 %1015, %1023
  br label %1025

1025:                                             ; preds = %.loopexit107, %950
  %1026 = phi i32 [ %1014, %.loopexit107 ], [ %952, %950 ]
  %1027 = phi i64 [ %1024, %.loopexit107 ], [ %953, %950 ]
  %1028 = phi i32 [ %1022, %.loopexit107 ], [ %954, %950 ]
  %1029 = phi i16 [ %1020, %.loopexit107 ], [ %959, %950 ]
  %1030 = phi i8 [ %1018, %.loopexit107 ], [ %956, %950 ]
  %1031 = phi i8 [ %1021, %.loopexit107 ], [ %960, %950 ]
  %1032 = zext i8 %1030 to i32
  %1033 = zext nneg i8 %1030 to i64
  %1034 = lshr i64 %1027, %1033
  %1035 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1028, i32 %1032), !nosanitize !34
  %1036 = extractvalue { i32, i1 } %1035, 0, !nosanitize !34
  %1037 = extractvalue { i32, i1 } %1035, 1, !nosanitize !34
  br i1 %1037, label %1038, label %1039, !prof !35, !nosanitize !34

1038:                                             ; preds = %1025
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1039:                                             ; preds = %1025
  %1040 = zext i8 %1031 to i32
  %1041 = and i32 %1040, 64
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1044, label %1043

1043:                                             ; preds = %1039
  store ptr @.str.10, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

1044:                                             ; preds = %1039
  %1045 = zext i16 %1029 to i32
  store i32 %1045, ptr %43, align 8, !tbaa !69
  %1046 = and i32 %1040, 15
  store i32 %1046, ptr %42, align 4, !tbaa !67
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1105, label %1048

1048:                                             ; preds = %1044
  %1049 = icmp ult i32 %1036, %1046
  br i1 %1049, label %1050, label %1083

1050:                                             ; preds = %1048
  %1051 = zext nneg i32 %1036 to i64
  br label %1052

1052:                                             ; preds = %1076, %1050
  %1053 = phi i64 [ %1051, %1050 ], [ %1077, %1076 ]
  %1054 = phi i64 [ %1034, %1050 ], [ %1070, %1076 ]
  %1055 = phi i32 [ %1026, %1050 ], [ %1063, %1076 ]
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1057, label %1061

1057:                                             ; preds = %1052
  %1058 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1060, label %1061

1060:                                             ; preds = %1057
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit

1061:                                             ; preds = %1057, %1052
  %1062 = phi i32 [ %1058, %1057 ], [ %1055, %1052 ]
  %1063 = add i32 %1062, -1
  %1064 = load ptr, ptr %6, align 8, !tbaa !32
  %1065 = getelementptr inbounds nuw i8, ptr %1064, i64 1
  store ptr %1065, ptr %6, align 8, !tbaa !32
  %1066 = load i8, ptr %1064, align 1, !tbaa !5
  %1067 = zext i8 %1066 to i64
  %1068 = shl i64 %1067, %1053
  %1069 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1054, i64 %1068), !nosanitize !34
  %1070 = extractvalue { i64, i1 } %1069, 0, !nosanitize !34
  %1071 = extractvalue { i64, i1 } %1069, 1, !nosanitize !34
  br i1 %1071, label %1072, label %1073, !prof !35, !nosanitize !34

1072:                                             ; preds = %1061
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1073:                                             ; preds = %1061
  %1074 = icmp samesign ugt i64 %1053, 4294967287
  br i1 %1074, label %1075, label %1076, !prof !35, !nosanitize !34

1075:                                             ; preds = %1073
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1076:                                             ; preds = %1073
  %1077 = add nuw nsw i64 %1053, 8
  %1078 = trunc nuw i64 %1077 to i32
  %1079 = load i32, ptr %42, align 4, !tbaa !67
  %1080 = icmp ugt i32 %1079, %1078
  br i1 %1080, label %1052, label %1081, !llvm.loop !70

1081:                                             ; preds = %1076
  %1082 = load i32, ptr %43, align 8, !tbaa !69
  br label %1083

1083:                                             ; preds = %1081, %1048
  %1084 = phi i32 [ %1045, %1048 ], [ %1082, %1081 ]
  %1085 = phi i32 [ %1026, %1048 ], [ %1063, %1081 ]
  %1086 = phi i64 [ %1034, %1048 ], [ %1070, %1081 ]
  %1087 = phi i32 [ %1036, %1048 ], [ %1078, %1081 ]
  %1088 = phi i32 [ %1046, %1048 ], [ %1079, %1081 ]
  %1089 = shl nsw i32 -1, %1088
  %1090 = xor i32 %1089, -1
  %1091 = trunc i64 %1086 to i32
  %1092 = and i32 %1090, %1091
  %1093 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1084, i32 %1092), !nosanitize !34
  %1094 = extractvalue { i32, i1 } %1093, 1, !nosanitize !34
  br i1 %1094, label %1095, label %1096, !prof !35, !nosanitize !34

1095:                                             ; preds = %1083
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1096:                                             ; preds = %1083
  %1097 = extractvalue { i32, i1 } %1093, 0, !nosanitize !34
  store i32 %1097, ptr %43, align 8, !tbaa !69
  %1098 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1087, i32 %1088), !nosanitize !34
  %1099 = extractvalue { i32, i1 } %1098, 1, !nosanitize !34
  br i1 %1099, label %1100, label %1101, !prof !35, !nosanitize !34

1100:                                             ; preds = %1096
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1101:                                             ; preds = %1096
  %1102 = extractvalue { i32, i1 } %1098, 0, !nosanitize !34
  %1103 = zext nneg i32 %1088 to i64
  %1104 = lshr i64 %1086, %1103
  br label %1105

1105:                                             ; preds = %1101, %1044
  %1106 = phi i32 [ %1097, %1101 ], [ %1045, %1044 ]
  %1107 = phi i32 [ %1085, %1101 ], [ %1026, %1044 ]
  %1108 = phi i64 [ %1104, %1101 ], [ %1034, %1044 ]
  %1109 = phi i32 [ %1102, %1101 ], [ %1036, %1044 ]
  %1110 = load i32, ptr %26, align 4, !tbaa !24
  %1111 = load i32, ptr %16, align 8, !tbaa !27
  %1112 = icmp ult i32 %1111, %1110
  %1113 = select i1 %1112, i32 %53, i32 0
  %1114 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1110, i32 %1113), !nosanitize !34
  %1115 = extractvalue { i32, i1 } %1114, 1, !nosanitize !34
  br i1 %1115, label %1116, label %1117, !prof !35, !nosanitize !34

1116:                                             ; preds = %1105
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1117:                                             ; preds = %1105
  %1118 = extractvalue { i32, i1 } %1114, 0, !nosanitize !34
  %1119 = icmp ugt i32 %1106, %1118
  br i1 %1119, label %1120, label %.preheader103

1120:                                             ; preds = %1117
  store ptr @.str.11, ptr %13, align 8, !tbaa !8
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit105

.preheader103:                                    ; preds = %1117, %.loopexit1385
  %1121 = phi ptr [ %.lcssa1183, %.loopexit1385 ], [ %51, %1117 ]
  %1122 = phi i32 [ %1152, %.loopexit1385 ], [ %53, %1117 ]
  %1123 = icmp eq i32 %1122, 0
  %1124 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1123, label %1125, label %1131

1125:                                             ; preds = %.preheader103
  %1126 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1124, ptr %16, align 8, !tbaa !27
  %1127 = call i32 %3(ptr noundef %4, ptr noundef %1126, i32 noundef %1124) #6
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1129, label %.loopexit

1129:                                             ; preds = %1125
  %1130 = load i32, ptr %26, align 4, !tbaa !24
  br label %1131

1131:                                             ; preds = %1129, %.preheader103
  %1132 = phi i32 [ %1130, %1129 ], [ %1124, %.preheader103 ]
  %1133 = phi ptr [ %1126, %1129 ], [ %1121, %.preheader103 ]
  %1134 = phi i32 [ %1124, %1129 ], [ %1122, %.preheader103 ]
  %1135 = load i32, ptr %43, align 8, !tbaa !69
  %1136 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1132, i32 %1135), !nosanitize !34
  %1137 = extractvalue { i32, i1 } %1136, 1, !nosanitize !34
  br i1 %1137, label %1138, label %1139, !prof !35, !nosanitize !34

1138:                                             ; preds = %1131
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1139:                                             ; preds = %1131
  %1140 = extractvalue { i32, i1 } %1136, 0, !nosanitize !34
  %1141 = icmp ult i32 %1140, %1134
  %1142 = select i1 %1141, i32 %1140, i32 0
  %1143 = sub i32 %1134, %1142
  %1144 = load i32, ptr %41, align 4, !tbaa !38
  %1145 = call i32 @llvm.umin.i32(i32 %1143, i32 %1144)
  %1146 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1144, i32 %1145), !nosanitize !34
  %1147 = extractvalue { i32, i1 } %1146, 1, !nosanitize !34
  br i1 %1147, label %1148, label %1149, !prof !35, !nosanitize !34

1148:                                             ; preds = %1139
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1149:                                             ; preds = %1139
  %1150 = extractvalue { i32, i1 } %1146, 0, !nosanitize !34
  store i32 %1150, ptr %41, align 4, !tbaa !38
  %1151 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1134, i32 %1145), !nosanitize !34
  %1152 = extractvalue { i32, i1 } %1151, 0, !nosanitize !34
  %1153 = extractvalue { i32, i1 } %1151, 1, !nosanitize !34
  br i1 %1153, label %1182, label %1154, !prof !35, !nosanitize !34

1154:                                             ; preds = %1149
  %1155 = zext i32 %1140 to i64
  %1156 = zext i32 %1135 to i64
  %1157 = sub nsw i64 0, %1156
  %1158 = select i1 %1141, i64 %1155, i64 %1157
  %1159 = getelementptr inbounds i8, ptr %1133, i64 %1158
  %.not.not = icmp eq i32 %1145, 0
  br i1 %.not.not, label %.split.us, label %iter.check, !prof !35, !nosanitize !34

iter.check:                                       ; preds = %1154
  %1160 = call i32 @llvm.umin.i32(i32 %1144, i32 %1143)
  %umin = zext i32 %1160 to i64
  %min.iters.check = icmp ult i32 %1160, 4
  %1161 = add nsw i64 %1158, 31
  %diff.check = icmp ult i64 %1161, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1368 = icmp ult i32 %1160, 32
  br i1 %min.iters.check1368, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %umin, 28
  %n.vec = and i64 %umin, 4294967264
  %1162 = getelementptr i8, ptr %1133, i64 %n.vec
  %.cast = trunc nuw i64 %n.vec to i32
  %1163 = sub i32 %1145, %.cast
  %1164 = getelementptr i8, ptr %1159, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %next.gep = getelementptr i8, ptr %1133, i64 %index
  %next.gep1369 = getelementptr i8, ptr %1159, i64 %index
  %1165 = getelementptr i8, ptr %next.gep1369, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep1369, align 1, !tbaa !5
  %wide.load1370 = load <16 x i8>, ptr %1165, align 1, !tbaa !5
  %1166 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !5
  store <16 x i8> %wide.load1370, ptr %1166, align 1, !tbaa !5
  %index.next = add nuw i64 %index, 32
  %1167 = icmp eq i64 %index.next, %n.vec
  br i1 %1167, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umin
  br i1 %cmp.n, label %.loopexit1385, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.split.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1374 = and i64 %umin, 4294967292
  %1168 = getelementptr i8, ptr %1133, i64 %n.vec1374
  %.cast1375 = trunc nuw i64 %n.vec1374 to i32
  %1169 = sub i32 %1145, %.cast1375
  %1170 = getelementptr i8, ptr %1159, i64 %n.vec1374
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1376 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1380, %vec.epilog.vector.body ]
  %next.gep1377 = getelementptr i8, ptr %1133, i64 %index1376
  %next.gep1378 = getelementptr i8, ptr %1159, i64 %index1376
  %wide.load1379 = load <4 x i8>, ptr %next.gep1378, align 1, !tbaa !5
  store <4 x i8> %wide.load1379, ptr %next.gep1377, align 1, !tbaa !5
  %index.next1380 = add nuw i64 %index1376, 4
  %1171 = icmp eq i64 %index.next1380, %n.vec1374
  br i1 %1171, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1381 = icmp eq i64 %n.vec1374, %umin
  br i1 %cmp.n1381, label %.loopexit1385, label %.split.preheader

.split.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %1133, %iter.check ], [ %1162, %vec.epilog.iter.check ], [ %1168, %vec.epilog.middle.block ]
  %.ph1386 = phi i32 [ %1145, %iter.check ], [ %1163, %vec.epilog.iter.check ], [ %1169, %vec.epilog.middle.block ]
  %.ph1387 = phi ptr [ %1159, %iter.check ], [ %1164, %vec.epilog.iter.check ], [ %1170, %vec.epilog.middle.block ]
  %1172 = add i32 %.ph1386, -1
  %xtraiter = and i32 %.ph1386, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.prol.loopexit, label %.split.prol

.split.prol:                                      ; preds = %.split.preheader, %.split.prol
  %1173 = phi ptr [ %1177, %.split.prol ], [ %.ph, %.split.preheader ]
  %1174 = phi i32 [ %1178, %.split.prol ], [ %.ph1386, %.split.preheader ]
  %1175 = phi ptr [ %1179, %.split.prol ], [ %.ph1387, %.split.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.split.prol ], [ 0, %.split.preheader ]
  %1176 = load i8, ptr %1175, align 1, !tbaa !5
  store i8 %1176, ptr %1173, align 1, !tbaa !5
  %1177 = getelementptr inbounds nuw i8, ptr %1173, i64 1
  %1178 = add i32 %1174, -1
  %1179 = getelementptr inbounds nuw i8, ptr %1175, i64 1
  %prol.iter.next = add i32 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.split.prol.loopexit, label %.split.prol, !llvm.loop !76

.split.prol.loopexit:                             ; preds = %.split.prol, %.split.preheader
  %.lcssa1494.unr = phi ptr [ poison, %.split.preheader ], [ %1177, %.split.prol ]
  %.unr = phi ptr [ %.ph, %.split.preheader ], [ %1177, %.split.prol ]
  %.unr1677 = phi i32 [ %.ph1386, %.split.preheader ], [ %1178, %.split.prol ]
  %.unr1678 = phi ptr [ %.ph1387, %.split.preheader ], [ %1179, %.split.prol ]
  %1180 = icmp ult i32 %1172, 7
  br i1 %1180, label %.loopexit1385, label %.split

.split.us:                                        ; preds = %1154
  %1181 = load i8, ptr %1159, align 1, !tbaa !5
  store i8 %1181, ptr %1133, align 1, !tbaa !5
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1182:                                             ; preds = %1149
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

.split:                                           ; preds = %.split.prol.loopexit, %.split
  %1183 = phi ptr [ %1208, %.split ], [ %.unr, %.split.prol.loopexit ]
  %1184 = phi i32 [ %1209, %.split ], [ %.unr1677, %.split.prol.loopexit ]
  %1185 = phi ptr [ %1210, %.split ], [ %.unr1678, %.split.prol.loopexit ]
  %1186 = load i8, ptr %1185, align 1, !tbaa !5
  store i8 %1186, ptr %1183, align 1, !tbaa !5
  %1187 = getelementptr inbounds nuw i8, ptr %1183, i64 1
  %1188 = getelementptr inbounds nuw i8, ptr %1185, i64 1
  %1189 = load i8, ptr %1188, align 1, !tbaa !5
  store i8 %1189, ptr %1187, align 1, !tbaa !5
  %1190 = getelementptr inbounds nuw i8, ptr %1183, i64 2
  %1191 = getelementptr inbounds nuw i8, ptr %1185, i64 2
  %1192 = load i8, ptr %1191, align 1, !tbaa !5
  store i8 %1192, ptr %1190, align 1, !tbaa !5
  %1193 = getelementptr inbounds nuw i8, ptr %1183, i64 3
  %1194 = getelementptr inbounds nuw i8, ptr %1185, i64 3
  %1195 = load i8, ptr %1194, align 1, !tbaa !5
  store i8 %1195, ptr %1193, align 1, !tbaa !5
  %1196 = getelementptr inbounds nuw i8, ptr %1183, i64 4
  %1197 = getelementptr inbounds nuw i8, ptr %1185, i64 4
  %1198 = load i8, ptr %1197, align 1, !tbaa !5
  store i8 %1198, ptr %1196, align 1, !tbaa !5
  %1199 = getelementptr inbounds nuw i8, ptr %1183, i64 5
  %1200 = getelementptr inbounds nuw i8, ptr %1185, i64 5
  %1201 = load i8, ptr %1200, align 1, !tbaa !5
  store i8 %1201, ptr %1199, align 1, !tbaa !5
  %1202 = getelementptr inbounds nuw i8, ptr %1183, i64 6
  %1203 = getelementptr inbounds nuw i8, ptr %1185, i64 6
  %1204 = load i8, ptr %1203, align 1, !tbaa !5
  store i8 %1204, ptr %1202, align 1, !tbaa !5
  %1205 = getelementptr inbounds nuw i8, ptr %1183, i64 7
  %1206 = getelementptr inbounds nuw i8, ptr %1185, i64 7
  %1207 = load i8, ptr %1206, align 1, !tbaa !5
  store i8 %1207, ptr %1205, align 1, !tbaa !5
  %1208 = getelementptr inbounds nuw i8, ptr %1183, i64 8
  %1209 = add i32 %1184, -8
  %1210 = getelementptr inbounds nuw i8, ptr %1185, i64 8
  %1211 = icmp eq i32 %1209, 0
  br i1 %1211, label %.loopexit1385, label %.split, !llvm.loop !78

.loopexit1385:                                    ; preds = %.split.prol.loopexit, %.split, %vec.epilog.middle.block, %middle.block
  %.lcssa1183 = phi ptr [ %1168, %vec.epilog.middle.block ], [ %1162, %middle.block ], [ %.lcssa1494.unr, %.split.prol.loopexit ], [ %1208, %.split ]
  %1212 = load i32, ptr %41, align 4, !tbaa !38
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %.loopexit105, label %.preheader103, !llvm.loop !79

.loopexit105:                                     ; preds = %.loopexit1385, %1120, %1043, %833, %829, %823, %665, %641, %632, %628, %.loopexit112, %591, %462, %317, %253, %.loopexit102, %157, %106, %73
  %1214 = phi ptr [ %51, %73 ], [ %51, %106 ], [ %51, %157 ], [ %206, %.loopexit102 ], [ %51, %253 ], [ %51, %317 ], [ %51, %.loopexit112 ], [ %51, %628 ], [ %51, %632 ], [ %51, %641 ], [ %668, %665 ], [ %825, %823 ], [ %51, %829 ], [ %51, %833 ], [ %51, %1043 ], [ %51, %1120 ], [ %51, %591 ], [ %51, %462 ], [ %.lcssa1183, %.loopexit1385 ]
  %1215 = phi i32 [ %52, %73 ], [ %96, %106 ], [ %150, %157 ], [ %207, %.loopexit102 ], [ %236, %253 ], [ %285, %317 ], [ %622, %.loopexit112 ], [ %622, %628 ], [ %622, %632 ], [ %622, %641 ], [ %671, %665 ], [ %789, %823 ], [ %789, %829 ], [ %789, %833 ], [ %1026, %1043 ], [ %1107, %1120 ], [ %559, %591 ], [ %454, %462 ], [ %1107, %.loopexit1385 ]
  %1216 = phi i32 [ %53, %73 ], [ %53, %106 ], [ %53, %157 ], [ %208, %.loopexit102 ], [ %53, %253 ], [ %53, %317 ], [ %53, %.loopexit112 ], [ %53, %628 ], [ %53, %632 ], [ %53, %641 ], [ %669, %665 ], [ %824, %823 ], [ %53, %829 ], [ %53, %833 ], [ %53, %1043 ], [ %53, %1120 ], [ %53, %591 ], [ %53, %462 ], [ %1152, %.loopexit1385 ]
  %1217 = phi i64 [ %76, %73 ], [ %109, %106 ], [ %151, %157 ], [ 0, %.loopexit102 ], [ %248, %253 ], [ %301, %317 ], [ %621, %.loopexit112 ], [ %621, %628 ], [ %621, %632 ], [ %621, %641 ], [ %672, %665 ], [ %797, %823 ], [ %797, %829 ], [ %797, %833 ], [ %1034, %1043 ], [ %1108, %1120 ], [ %560, %591 ], [ %458, %462 ], [ %1108, %.loopexit1385 ]
  %1218 = phi i32 [ %74, %73 ], [ %108, %106 ], [ %152, %157 ], [ 0, %.loopexit102 ], [ %249, %253 ], [ %300, %317 ], [ %620, %.loopexit112 ], [ %620, %628 ], [ %620, %632 ], [ %620, %641 ], [ %673, %665 ], [ %799, %823 ], [ %799, %829 ], [ %799, %833 ], [ %1036, %1043 ], [ %1109, %1120 ], [ %564, %591 ], [ %459, %462 ], [ %1109, %.loopexit1385 ]
  %1219 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

.loopexit.loopexit1080:                           ; preds = %49
  br label %.loopexit

.loopexit.loopexit1389:                           ; preds = %49
  br label %.loopexit

.loopexit:                                        ; preds = %808, %1125, %174, %49, %.loopexit.loopexit1389, %.loopexit.loopexit1080, %1060, %986, %920, %849, %749, %682, %525, %484, %435, %354, %271, %217, %170, %131, %80
  %1220 = phi i32 [ 0, %80 ], [ 0, %131 ], [ 0, %170 ], [ 0, %217 ], [ 0, %271 ], [ 0, %435 ], [ 0, %849 ], [ 0, %1060 ], [ 0, %986 ], [ 0, %920 ], [ 0, %749 ], [ 0, %682 ], [ 0, %484 ], [ 0, %525 ], [ 0, %354 ], [ %1107, %1125 ], [ %172, %174 ], [ %52, %.loopexit.loopexit1080 ], [ %52, %49 ], [ %789, %808 ], [ %52, %.loopexit.loopexit1389 ]
  %1221 = phi i32 [ %53, %80 ], [ %53, %131 ], [ %162, %170 ], [ %53, %217 ], [ %53, %271 ], [ %53, %435 ], [ %53, %849 ], [ %53, %1060 ], [ %53, %986 ], [ %53, %920 ], [ %53, %749 ], [ %53, %682 ], [ %53, %484 ], [ %53, %525 ], [ %53, %354 ], [ %1124, %1125 ], [ %176, %174 ], [ %53, %.loopexit.loopexit1080 ], [ %53, %49 ], [ %810, %808 ], [ %53, %.loopexit.loopexit1389 ]
  %1222 = phi i1 [ false, %80 ], [ false, %131 ], [ false, %170 ], [ false, %217 ], [ false, %271 ], [ false, %435 ], [ false, %849 ], [ false, %1060 ], [ false, %986 ], [ false, %920 ], [ false, %749 ], [ false, %682 ], [ false, %484 ], [ false, %525 ], [ false, %354 ], [ false, %1125 ], [ false, %174 ], [ false, %.loopexit.loopexit1080 ], [ false, %49 ], [ false, %808 ], [ true, %.loopexit.loopexit1389 ]
  %1223 = phi i32 [ -5, %80 ], [ -5, %131 ], [ -5, %170 ], [ -5, %217 ], [ -5, %271 ], [ -5, %435 ], [ -5, %849 ], [ -5, %1060 ], [ -5, %986 ], [ -5, %920 ], [ -5, %749 ], [ -5, %682 ], [ -5, %484 ], [ -5, %525 ], [ -5, %354 ], [ -5, %1125 ], [ -5, %174 ], [ -2, %.loopexit.loopexit1080 ], [ -3, %49 ], [ -5, %808 ], [ 1, %.loopexit.loopexit1389 ]
  %1224 = load i32, ptr %26, align 4, !tbaa !24
  %1225 = icmp ult i32 %1221, %1224
  br i1 %1225, label %1226, label %1233

1226:                                             ; preds = %.loopexit
  %1227 = sub nuw i32 %1224, %1221
  %1228 = load ptr, ptr %24, align 8, !tbaa !25
  %1229 = call i32 %3(ptr noundef %4, ptr noundef %1228, i32 noundef %1227) #6
  %1230 = icmp ne i32 %1229, 0
  %1231 = and i1 %1222, %1230
  %1232 = select i1 %1231, i32 -5, i32 %1223
  br label %1233

1233:                                             ; preds = %1226, %.loopexit
  %1234 = phi i32 [ %1232, %1226 ], [ %1223, %.loopexit ]
  %1235 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1235, ptr %0, align 8, !tbaa !31
  store i32 %1220, ptr %46, align 8, !tbaa !33
  br label %1236

1236:                                             ; preds = %1233, %8, %5
  %1237 = phi i32 [ %1234, %1233 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i32 %1237
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
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

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!59 = distinct !{!59, !37, !60}
!60 = !{!"llvm.loop.estimated_trip_count", i32 528415}
!61 = !{!20, !11, i64 112}
!62 = !{!20, !12, i64 124}
!63 = !{!9, !10, i64 24}
!64 = !{!9, !12, i64 32}
!65 = !{!20, !13, i64 80}
!66 = !{!20, !12, i64 88}
!67 = !{!20, !12, i64 100}
!68 = distinct !{!68, !37}
!69 = !{!20, !12, i64 96}
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
