; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/unsigned.infback.ll'
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1288, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1288, label %12

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

49:                                               ; preds = %.loopexit114, %22
  %50 = phi i32 [ 16191, %22 ], [ %1271, %.loopexit114 ]
  %51 = phi ptr [ %25, %22 ], [ %1266, %.loopexit114 ]
  %52 = phi i32 [ %23, %22 ], [ %1267, %.loopexit114 ]
  %53 = phi i32 [ %27, %22 ], [ %1268, %.loopexit114 ]
  %54 = phi i64 [ 0, %22 ], [ %1269, %.loopexit114 ]
  %55 = phi i32 [ 0, %22 ], [ %1270, %.loopexit114 ]
  switch i32 %50, label %.loopexit110.loopexit1115 [
    i32 16191, label %60
    i32 16193, label %110
    i32 16196, label %56
    i32 16200, label %647
    i32 16208, label %.loopexit110.loopexit1405
    i32 16209, label %.loopexit110
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
  br label %.loopexit114

77:                                               ; preds = %65
  %78 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

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
  switch i32 %102, label %default.unreachable823 [
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

default.unreachable823:                           ; preds = %95
  unreachable

105:                                              ; preds = %95
  store ptr @.str.1, ptr %13, align 8, !tbaa !9
  br label %106

106:                                              ; preds = %105, %104, %103, %95
  %107 = phi i32 [ 16209, %105 ], [ 16196, %104 ], [ 16200, %103 ], [ 16193, %95 ]
  store i32 %107, ptr %14, align 8, !tbaa !29
  %108 = add i32 %98, -3
  %109 = lshr i64 %97, 3
  br label %.loopexit114

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
  br label %.loopexit110

132:                                              ; preds = %128, %123
  %133 = phi i32 [ %129, %128 ], [ %126, %123 ]
  %134 = load ptr, ptr %6, align 8, !tbaa !32
  %135 = getelementptr inbounds nuw i8, ptr %134, i64 1
  store ptr %135, ptr %6, align 8, !tbaa !32
  %136 = load i8, ptr %134, align 1, !tbaa !8
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
  store ptr @.str.2, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

158:                                              ; preds = %149
  %159 = trunc i64 %151 to i32
  %160 = and i32 %159, 65535
  store i32 %160, ptr %41, align 4, !tbaa !38
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %.loopexit111, label %.preheader109

.preheader109:                                    ; preds = %158, %202
  %162 = phi i32 [ %194, %202 ], [ %53, %158 ]
  %163 = phi i32 [ %187, %202 ], [ %150, %158 ]
  %164 = phi ptr [ %204, %202 ], [ %51, %158 ]
  %165 = phi i32 [ %203, %202 ], [ %160, %158 ]
  %166 = icmp eq i32 %163, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %.preheader109
  %168 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

171:                                              ; preds = %167, %.preheader109
  %172 = phi i32 [ %168, %167 ], [ %163, %.preheader109 ]
  %173 = icmp eq i32 %162, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load ptr, ptr %24, align 8, !tbaa !25
  %176 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %176, ptr %16, align 8, !tbaa !27
  %177 = call i32 %3(ptr noundef %4, ptr noundef %175, i32 noundef %176) #6
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %.loopexit110

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
  br i1 %205, label %.loopexit111, label %.preheader109, !llvm.loop !39

.loopexit111:                                     ; preds = %202, %158
  %206 = phi ptr [ %51, %158 ], [ %204, %202 ]
  %207 = phi i32 [ %150, %158 ], [ %187, %202 ]
  %208 = phi i32 [ %53, %158 ], [ %194, %202 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

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
  br label %.loopexit110

218:                                              ; preds = %214, %209
  %219 = phi i32 [ %215, %214 ], [ %212, %209 ]
  %220 = load ptr, ptr %6, align 8, !tbaa !32
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 1
  store ptr %221, ptr %6, align 8, !tbaa !32
  %222 = load i8, ptr %220, align 1, !tbaa !8
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
  store ptr @.str.3, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

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
  br label %.loopexit110

272:                                              ; preds = %._crit_edge, %265
  %273 = phi i32 [ %.pre, %._crit_edge ], [ %260, %265 ]
  %274 = phi i32 [ %269, %._crit_edge ], [ %263, %265 ]
  %275 = load ptr, ptr %6, align 8, !tbaa !32
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 1
  store ptr %276, ptr %6, align 8, !tbaa !32
  %277 = load i8, ptr %275, align 1, !tbaa !8
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
  store ptr @.str.4, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

318:                                              ; preds = %314
  store i32 0, ptr %31, align 4, !tbaa !44
  %319 = load i32, ptr %28, align 4, !tbaa !41
  %320 = load i32, ptr %29, align 8, !tbaa !42
  %321 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %319, i32 %320), !nosanitize !34
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !34
  br i1 %322, label %.loopexit120, label %323, !prof !52, !nosanitize !34

323:                                              ; preds = %318
  %324 = extractvalue { i32, i1 } %321, 0, !nosanitize !34
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %.loopexit121, label %.preheader119.preheader

.preheader119.preheader:                          ; preds = %323
  %.pre720 = load i32, ptr %36, align 8, !tbaa !51
  %.pre721 = load ptr, ptr %35, align 8, !tbaa !50
  br label %.preheader119

.loopexit120:                                     ; preds = %318, %615
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

326:                                              ; preds = %615
  %327 = extractvalue { i32, i1 } %621, 0, !nosanitize !34
  %328 = icmp ult i32 %616, %327
  br i1 %328, label %.preheader119, label %.loopexit121, !llvm.loop !53

.preheader119:                                    ; preds = %.preheader119.preheader, %326
  %329 = phi ptr [ %385, %326 ], [ %.pre721, %.preheader119.preheader ]
  %330 = phi i32 [ %386, %326 ], [ %.pre720, %.preheader119.preheader ]
  %331 = phi i32 [ %387, %326 ], [ %285, %.preheader119.preheader ]
  %332 = phi i64 [ %398, %326 ], [ %301, %.preheader119.preheader ]
  %333 = phi i32 [ %400, %326 ], [ %300, %.preheader119.preheader ]
  %334 = shl nsw i32 -1, %330
  %335 = xor i32 %334, -1
  %336 = trunc i64 %332 to i32
  %337 = and i32 %335, %336
  %338 = zext nneg i32 %337 to i64
  %339 = getelementptr inbounds nuw [4 x i8], ptr %329, i64 %338
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 1
  %341 = load i8, ptr %340, align 1, !tbaa !8
  %342 = zext i8 %341 to i32
  %343 = icmp ult i32 %333, %342
  br i1 %343, label %344, label %384

344:                                              ; preds = %.preheader119
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
  br label %.loopexit110

355:                                              ; preds = %351, %346
  %356 = phi i32 [ %352, %351 ], [ %349, %346 ]
  %357 = load ptr, ptr %6, align 8, !tbaa !32
  %358 = getelementptr inbounds nuw i8, ptr %357, i64 1
  store ptr %358, ptr %6, align 8, !tbaa !32
  %359 = load i8, ptr %357, align 1, !tbaa !8
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
  %378 = load i8, ptr %377, align 1, !tbaa !8
  %379 = zext i8 %378 to i64
  %380 = icmp samesign ult i64 %368, %379
  br i1 %380, label %346, label %381

381:                                              ; preds = %365
  %382 = zext i8 %378 to i32
  %383 = trunc nuw nsw i64 %368 to i32
  br label %384

384:                                              ; preds = %381, %.preheader119
  %385 = phi ptr [ %329, %.preheader119 ], [ %373, %381 ]
  %386 = phi i32 [ %330, %.preheader119 ], [ %369, %381 ]
  %387 = phi i32 [ %331, %.preheader119 ], [ %367, %381 ]
  %388 = phi i64 [ %332, %.preheader119 ], [ %366, %381 ]
  %389 = phi i32 [ %333, %.preheader119 ], [ %383, %381 ]
  %390 = phi i8 [ %341, %.preheader119 ], [ %378, %381 ]
  %391 = phi ptr [ %339, %.preheader119 ], [ %376, %381 ]
  %392 = phi i32 [ %342, %.preheader119 ], [ %382, %381 ]
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
  br i1 %406, label %407, label %615, !prof !35, !nosanitize !34

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
  br label %.loopexit110

436:                                              ; preds = %432, %427
  %437 = phi i32 [ %433, %432 ], [ %430, %427 ]
  %438 = load ptr, ptr %6, align 8, !tbaa !32
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 1
  store ptr %439, ptr %6, align 8, !tbaa !32
  %440 = load i8, ptr %438, align 1, !tbaa !8
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
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

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
  br label %.loopexit110

485:                                              ; preds = %481, %476
  %486 = phi i32 [ %482, %481 ], [ %479, %476 ]
  %487 = load ptr, ptr %6, align 8, !tbaa !32
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 1
  store ptr %488, ptr %6, align 8, !tbaa !32
  %489 = load i8, ptr %487, align 1, !tbaa !8
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
  br label %.loopexit110

526:                                              ; preds = %522, %517
  %527 = phi i32 [ %523, %522 ], [ %520, %517 ]
  %528 = load ptr, ptr %6, align 8, !tbaa !32
  %529 = getelementptr inbounds nuw i8, ptr %528, i64 1
  store ptr %529, ptr %6, align 8, !tbaa !32
  %530 = load i8, ptr %528, align 1, !tbaa !8
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
  %566 = freeze i32 %565
  %567 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %566, i32 %562), !nosanitize !34
  %568 = extractvalue { i32, i1 } %567, 0, !nosanitize !34
  %569 = extractvalue { i32, i1 } %567, 1, !nosanitize !34
  br i1 %569, label %570, label %571, !prof !35, !nosanitize !34

570:                                              ; preds = %558
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

571:                                              ; preds = %558
  %572 = load i32, ptr %28, align 4, !tbaa !41
  %573 = load i32, ptr %29, align 8, !tbaa !42
  %574 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %572, i32 %573), !nosanitize !34
  %575 = extractvalue { i32, i1 } %574, 1, !nosanitize !34
  br i1 %575, label %576, label %577, !prof !35, !nosanitize !34

576:                                              ; preds = %571
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

577:                                              ; preds = %571
  %578 = extractvalue { i32, i1 } %574, 0, !nosanitize !34
  %579 = icmp ugt i32 %568, %578
  br i1 %579, label %596, label %580

580:                                              ; preds = %577
  %581 = icmp eq i32 %566, -1
  br i1 %581, label %607, label %582, !prof !52, !nosanitize !34

582:                                              ; preds = %580
  %583 = zext i32 %566 to i64
  %584 = add nsw i32 %562, -1
  %585 = and i64 %583, 1
  %586 = icmp eq i64 %585, 0
  br i1 %586, label %587, label %592, !prof !52

587:                                              ; preds = %582
  %588 = or disjoint i64 %583, 1
  %589 = trunc nuw i64 %588 to i32
  store i32 %589, ptr %31, align 4, !tbaa !44
  %590 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %583
  store i16 %563, ptr %590, align 2, !tbaa !45
  %591 = add nsw i32 %562, -2
  br label %592

592:                                              ; preds = %587, %582
  %.pn105 = phi i32 [ %584, %582 ], [ %591, %587 ]
  %593 = phi i64 [ %583, %582 ], [ %588, %587 ]
  %594 = icmp eq i32 %566, -2
  br i1 %594, label %607, label %.preheader.preheader, !prof !52

.preheader.preheader:                             ; preds = %592
  %595 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %.pn105, 0
  br label %.preheader

596:                                              ; preds = %577
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

.split.loop.exit:                                 ; preds = %598, %.preheader
  %.in = phi i64 [ %611, %.preheader ], [ %600, %598 ]
  %597 = trunc i64 %.in to i32
  store i32 %597, ptr %31, align 4, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

598:                                              ; preds = %.preheader
  %599 = extractvalue { i32, i1 } %613, 0
  %600 = add nuw nsw i64 %609, 2
  %601 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %611
  store i16 %563, ptr %601, align 2, !tbaa !45
  %602 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %599, i32 1), !nosanitize !34
  %603 = extractvalue { i32, i1 } %602, 1, !nosanitize !34
  br i1 %603, label %.split.loop.exit, label %604, !prof !57, !llvm.loop !58, !nosanitize !34

604:                                              ; preds = %598
  %605 = icmp eq i64 %600, 4294967295
  br i1 %605, label %606, label %.preheader, !prof !57, !llvm.loop !59, !nosanitize !34

606:                                              ; preds = %604
  store i32 -1, ptr %31, align 4, !tbaa !44
  br label %607

607:                                              ; preds = %606, %592, %580
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

.preheader:                                       ; preds = %.preheader.preheader, %604
  %608 = phi { i32, i1 } [ %602, %604 ], [ %595, %.preheader.preheader ]
  %609 = phi i64 [ %600, %604 ], [ %593, %.preheader.preheader ]
  %610 = extractvalue { i32, i1 } %608, 0
  %611 = add nuw nsw i64 %609, 1
  %612 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %609
  store i16 %563, ptr %612, align 2, !tbaa !45
  %613 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %610, i32 1), !nosanitize !34
  %614 = extractvalue { i32, i1 } %613, 1, !nosanitize !34
  br i1 %614, label %.split.loop.exit, label %598, !prof !57, !llvm.loop !58, !nosanitize !34

615:                                              ; preds = %403
  %616 = extractvalue { i32, i1 } %405, 0, !nosanitize !34
  store i32 %616, ptr %31, align 4, !tbaa !44
  %617 = zext i32 %404 to i64
  %618 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %617
  store i16 %394, ptr %618, align 2, !tbaa !45
  %619 = load i32, ptr %28, align 4, !tbaa !41
  %620 = load i32, ptr %29, align 8, !tbaa !42
  %621 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %619, i32 %620), !nosanitize !34
  %622 = extractvalue { i32, i1 } %621, 1, !nosanitize !34
  br i1 %622, label %.loopexit120, label %326, !prof !57, !llvm.loop !53, !nosanitize !34

.loopexit121:                                     ; preds = %326, %323
  %623 = phi i32 [ %319, %323 ], [ %619, %326 ]
  %624 = phi i32 [ %300, %323 ], [ %400, %326 ]
  %625 = phi i64 [ %301, %323 ], [ %398, %326 ]
  %626 = phi i32 [ %285, %323 ], [ %387, %326 ]
  %627 = load i32, ptr %14, align 8, !tbaa !29
  %628 = icmp eq i32 %627, 16209
  br i1 %628, label %.loopexit114, label %629

629:                                              ; preds = %.loopexit121
  %630 = load i16, ptr %38, align 8, !tbaa !45
  %631 = icmp eq i16 %630, 0
  br i1 %631, label %632, label %633

632:                                              ; preds = %629
  store ptr @.str.6, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

633:                                              ; preds = %629
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 9, ptr %36, align 8, !tbaa !51
  %634 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %623, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %637, label %636

636:                                              ; preds = %633
  store ptr @.str.7, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

637:                                              ; preds = %633
  %638 = load ptr, ptr %34, align 8, !tbaa !49
  store ptr %638, ptr %39, align 8, !tbaa !61
  store i32 6, ptr %40, align 4, !tbaa !62
  %639 = load i32, ptr %28, align 4, !tbaa !41
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %640
  %642 = load i32, ptr %29, align 8, !tbaa !42
  %643 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %641, i32 noundef %642, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #6
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %646, label %645

645:                                              ; preds = %637
  store ptr @.str.8, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

646:                                              ; preds = %637
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %647

647:                                              ; preds = %646, %49
  %648 = phi i32 [ %626, %646 ], [ %52, %49 ]
  %649 = phi i64 [ %625, %646 ], [ %54, %49 ]
  %650 = phi i32 [ %624, %646 ], [ %55, %49 ]
  %651 = icmp ugt i32 %648, 5
  %652 = icmp ugt i32 %53, 257
  %653 = select i1 %651, i1 %652, i1 false
  br i1 %653, label %669, label %654

654:                                              ; preds = %647
  %655 = load i32, ptr %36, align 8, !tbaa !51
  %656 = shl nsw i32 -1, %655
  %657 = xor i32 %656, -1
  %658 = trunc i64 %649 to i32
  %659 = load ptr, ptr %35, align 8, !tbaa !50
  %660 = and i32 %657, %658
  %661 = zext nneg i32 %660 to i64
  %662 = getelementptr inbounds nuw [4 x i8], ptr %659, i64 %661
  %663 = getelementptr inbounds nuw i8, ptr %662, i64 1
  %664 = load i8, ptr %663, align 1, !tbaa !8
  %665 = zext i8 %664 to i32
  %666 = icmp ult i32 %650, %665
  br i1 %666, label %667, label %716

667:                                              ; preds = %654
  %668 = zext nneg i32 %650 to i64
  br label %678

669:                                              ; preds = %647
  store ptr %51, ptr %44, align 8, !tbaa !63
  store i32 %53, ptr %45, align 8, !tbaa !64
  %670 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %670, ptr %0, align 8, !tbaa !31
  store i32 %648, ptr %46, align 8, !tbaa !33
  store i64 %649, ptr %47, align 8, !tbaa !65
  store i32 %650, ptr %48, align 8, !tbaa !66
  %671 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %671) #6
  %672 = load ptr, ptr %44, align 8, !tbaa !63
  %673 = load i32, ptr %45, align 8, !tbaa !64
  %674 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %674, ptr %6, align 8, !tbaa !32
  %675 = load i32, ptr %46, align 8, !tbaa !33
  %676 = load i64, ptr %47, align 8, !tbaa !65
  %677 = load i32, ptr %48, align 8, !tbaa !66
  br label %.loopexit114

678:                                              ; preds = %697, %667
  %679 = phi i64 [ %668, %667 ], [ %700, %697 ]
  %680 = phi i64 [ %649, %667 ], [ %698, %697 ]
  %681 = phi i32 [ %648, %667 ], [ %699, %697 ]
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %683, label %687

683:                                              ; preds = %678
  %684 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %687

686:                                              ; preds = %683
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

687:                                              ; preds = %683, %678
  %688 = phi i32 [ %684, %683 ], [ %681, %678 ]
  %689 = load ptr, ptr %6, align 8, !tbaa !32
  %690 = getelementptr inbounds nuw i8, ptr %689, i64 1
  store ptr %690, ptr %6, align 8, !tbaa !32
  %691 = load i8, ptr %689, align 1, !tbaa !8
  %692 = zext i8 %691 to i64
  %693 = shl i64 %692, %679
  %694 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %680, i64 %693), !nosanitize !34
  %695 = extractvalue { i64, i1 } %694, 1, !nosanitize !34
  br i1 %695, label %696, label %697, !prof !35, !nosanitize !34

696:                                              ; preds = %687
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

697:                                              ; preds = %687
  %698 = extractvalue { i64, i1 } %694, 0, !nosanitize !34
  %699 = add i32 %688, -1
  %700 = add nuw nsw i64 %679, 8
  %701 = load i32, ptr %36, align 8, !tbaa !51
  %702 = shl nsw i32 -1, %701
  %703 = xor i32 %702, -1
  %704 = trunc i64 %698 to i32
  %705 = load ptr, ptr %35, align 8, !tbaa !50
  %706 = and i32 %703, %704
  %707 = zext nneg i32 %706 to i64
  %708 = getelementptr inbounds nuw [4 x i8], ptr %705, i64 %707
  %709 = getelementptr inbounds nuw i8, ptr %708, i64 1
  %710 = load i8, ptr %709, align 1, !tbaa !8
  %711 = zext i8 %710 to i64
  %712 = icmp samesign ult i64 %700, %711
  br i1 %712, label %678, label %713

713:                                              ; preds = %697
  %714 = zext i8 %710 to i32
  %715 = trunc nuw nsw i64 %700 to i32
  br label %716

716:                                              ; preds = %713, %654
  %717 = phi ptr [ %659, %654 ], [ %705, %713 ]
  %718 = phi i32 [ %648, %654 ], [ %699, %713 ]
  %719 = phi i64 [ %649, %654 ], [ %698, %713 ]
  %720 = phi i32 [ %650, %654 ], [ %715, %713 ]
  %721 = phi ptr [ %662, %654 ], [ %708, %713 ]
  %722 = phi i8 [ %664, %654 ], [ %710, %713 ]
  %723 = phi i32 [ %665, %654 ], [ %714, %713 ]
  %724 = getelementptr inbounds nuw i8, ptr %721, i64 2
  %725 = load i16, ptr %724, align 2, !tbaa !45
  %726 = load i8, ptr %721, align 2, !tbaa !8
  %727 = add i8 %726, -1
  %728 = icmp ult i8 %727, 15
  br i1 %728, label %729, label %792

729:                                              ; preds = %716
  %730 = zext nneg i8 %726 to i32
  %731 = add nuw nsw i32 %723, %730
  %732 = shl nsw i32 -1, %731
  %733 = xor i32 %732, -1
  %734 = zext i16 %725 to i32
  %735 = trunc i64 %719 to i32
  %736 = and i32 %733, %735
  %737 = lshr i32 %736, %723
  %738 = add nuw i32 %737, %734
  %739 = zext i32 %738 to i64
  %740 = getelementptr inbounds nuw [4 x i8], ptr %717, i64 %739
  %741 = getelementptr inbounds nuw i8, ptr %740, i64 1
  %742 = load i8, ptr %741, align 1, !tbaa !8
  %743 = zext i8 %742 to i32
  %744 = add nuw nsw i32 %723, %743
  %745 = icmp ugt i32 %744, %720
  br i1 %745, label %.preheader117.preheader, label %.loopexit118

.preheader117.preheader:                          ; preds = %729
  %746 = zext nneg i32 %720 to i64
  br label %.preheader117

.preheader117:                                    ; preds = %.preheader117.preheader, %764
  %indvars.iv = phi i64 [ %746, %.preheader117.preheader ], [ %indvars.iv.next, %764 ]
  %747 = phi i64 [ %719, %.preheader117.preheader ], [ %765, %764 ]
  %748 = phi i32 [ %718, %.preheader117.preheader ], [ %766, %764 ]
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %754

750:                                              ; preds = %.preheader117
  %751 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %754

753:                                              ; preds = %750
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

754:                                              ; preds = %750, %.preheader117
  %755 = phi i32 [ %751, %750 ], [ %748, %.preheader117 ]
  %756 = load ptr, ptr %6, align 8, !tbaa !32
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 1
  store ptr %757, ptr %6, align 8, !tbaa !32
  %758 = load i8, ptr %756, align 1, !tbaa !8
  %759 = zext i8 %758 to i64
  %760 = shl i64 %759, %indvars.iv
  %761 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %747, i64 %760), !nosanitize !34
  %762 = extractvalue { i64, i1 } %761, 1, !nosanitize !34
  br i1 %762, label %763, label %764, !prof !35, !nosanitize !34

763:                                              ; preds = %754
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

764:                                              ; preds = %754
  %765 = extractvalue { i64, i1 } %761, 0, !nosanitize !34
  %766 = add i32 %755, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %767 = load ptr, ptr %35, align 8, !tbaa !50
  %768 = trunc i64 %765 to i32
  %769 = and i32 %768, %733
  %770 = lshr i32 %769, %723
  %771 = add nuw i32 %770, %734
  %772 = zext i32 %771 to i64
  %773 = getelementptr inbounds nuw [4 x i8], ptr %767, i64 %772
  %774 = getelementptr inbounds nuw i8, ptr %773, i64 1
  %775 = load i8, ptr %774, align 1, !tbaa !8
  %776 = zext i8 %775 to i32
  %777 = add nuw nsw i32 %723, %776
  %778 = zext nneg i32 %777 to i64
  %779 = icmp samesign ult i64 %indvars.iv.next, %778
  br i1 %779, label %.preheader117, label %.loopexit118.loopexit

.loopexit118.loopexit:                            ; preds = %764
  %780 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit118

.loopexit118:                                     ; preds = %.loopexit118.loopexit, %729
  %781 = phi i32 [ %718, %729 ], [ %766, %.loopexit118.loopexit ]
  %782 = phi i64 [ %719, %729 ], [ %765, %.loopexit118.loopexit ]
  %783 = phi i32 [ %720, %729 ], [ %780, %.loopexit118.loopexit ]
  %784 = phi ptr [ %740, %729 ], [ %773, %.loopexit118.loopexit ]
  %785 = phi i8 [ %742, %729 ], [ %775, %.loopexit118.loopexit ]
  %786 = getelementptr inbounds nuw i8, ptr %784, i64 2
  %787 = load i16, ptr %786, align 2, !tbaa !45
  %788 = load i8, ptr %784, align 2, !tbaa !8
  %789 = sub nuw i32 %783, %723
  %790 = zext nneg i8 %722 to i64
  %791 = lshr i64 %782, %790
  br label %792

792:                                              ; preds = %.loopexit118, %716
  %793 = phi i32 [ %781, %.loopexit118 ], [ %718, %716 ]
  %794 = phi i64 [ %791, %.loopexit118 ], [ %719, %716 ]
  %795 = phi i32 [ %789, %.loopexit118 ], [ %720, %716 ]
  %796 = phi i16 [ %787, %.loopexit118 ], [ %725, %716 ]
  %797 = phi i8 [ %785, %.loopexit118 ], [ %722, %716 ]
  %798 = phi i8 [ %788, %.loopexit118 ], [ %726, %716 ]
  %799 = zext i8 %797 to i32
  %800 = zext nneg i8 %797 to i64
  %801 = lshr i64 %794, %800
  %802 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %795, i32 %799), !nosanitize !34
  %803 = extractvalue { i32, i1 } %802, 0, !nosanitize !34
  %804 = extractvalue { i32, i1 } %802, 1, !nosanitize !34
  br i1 %804, label %805, label %806, !prof !35, !nosanitize !34

805:                                              ; preds = %792
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

806:                                              ; preds = %792
  %807 = zext i16 %796 to i32
  store i32 %807, ptr %41, align 4, !tbaa !38
  %808 = zext i8 %798 to i32
  %809 = icmp eq i8 %798, 0
  br i1 %809, label %810, label %830

810:                                              ; preds = %806
  %811 = icmp eq i32 %53, 0
  br i1 %811, label %812, label %819

812:                                              ; preds = %810
  %813 = load ptr, ptr %24, align 8, !tbaa !25
  %814 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %814, ptr %16, align 8, !tbaa !27
  %815 = call i32 %3(ptr noundef %4, ptr noundef %813, i32 noundef %814) #6
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %817, label %.loopexit110

817:                                              ; preds = %812
  %818 = load i32, ptr %41, align 4, !tbaa !38
  br label %819

819:                                              ; preds = %817, %810
  %820 = phi i32 [ %818, %817 ], [ %807, %810 ]
  %821 = phi ptr [ %813, %817 ], [ %51, %810 ]
  %822 = phi i32 [ %814, %817 ], [ %53, %810 ]
  %823 = trunc i32 %820 to i8
  store i8 %823, ptr %821, align 1, !tbaa !8
  %824 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %822, i32 1), !nosanitize !34
  %825 = extractvalue { i32, i1 } %824, 1, !nosanitize !34
  br i1 %825, label %826, label %827, !prof !35, !nosanitize !34

826:                                              ; preds = %819
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

827:                                              ; preds = %819
  %828 = extractvalue { i32, i1 } %824, 0, !nosanitize !34
  %829 = getelementptr inbounds nuw i8, ptr %821, i64 1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

830:                                              ; preds = %806
  %831 = and i32 %808, 32
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %834, label %833

833:                                              ; preds = %830
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

834:                                              ; preds = %830
  %835 = and i32 %808, 64
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %838, label %837

837:                                              ; preds = %834
  store ptr @.str.9, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

838:                                              ; preds = %834
  %839 = and i32 %808, 15
  store i32 %839, ptr %42, align 4, !tbaa !67
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %898, label %841

841:                                              ; preds = %838
  %842 = icmp ult i32 %803, %839
  br i1 %842, label %843, label %876

843:                                              ; preds = %841
  %844 = zext nneg i32 %803 to i64
  br label %845

845:                                              ; preds = %869, %843
  %846 = phi i64 [ %844, %843 ], [ %870, %869 ]
  %847 = phi i64 [ %801, %843 ], [ %863, %869 ]
  %848 = phi i32 [ %793, %843 ], [ %856, %869 ]
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %850, label %854

850:                                              ; preds = %845
  %851 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %853, label %854

853:                                              ; preds = %850
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

854:                                              ; preds = %850, %845
  %855 = phi i32 [ %851, %850 ], [ %848, %845 ]
  %856 = add i32 %855, -1
  %857 = load ptr, ptr %6, align 8, !tbaa !32
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 1
  store ptr %858, ptr %6, align 8, !tbaa !32
  %859 = load i8, ptr %857, align 1, !tbaa !8
  %860 = zext i8 %859 to i64
  %861 = shl i64 %860, %846
  %862 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %847, i64 %861), !nosanitize !34
  %863 = extractvalue { i64, i1 } %862, 0, !nosanitize !34
  %864 = extractvalue { i64, i1 } %862, 1, !nosanitize !34
  br i1 %864, label %865, label %866, !prof !35, !nosanitize !34

865:                                              ; preds = %854
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

866:                                              ; preds = %854
  %867 = icmp samesign ugt i64 %846, 4294967287
  br i1 %867, label %868, label %869, !prof !35, !nosanitize !34

868:                                              ; preds = %866
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

869:                                              ; preds = %866
  %870 = add nuw nsw i64 %846, 8
  %871 = trunc nuw i64 %870 to i32
  %872 = load i32, ptr %42, align 4, !tbaa !67
  %873 = icmp ugt i32 %872, %871
  br i1 %873, label %845, label %874, !llvm.loop !68

874:                                              ; preds = %869
  %875 = load i32, ptr %41, align 4, !tbaa !38
  br label %876

876:                                              ; preds = %874, %841
  %877 = phi i32 [ %807, %841 ], [ %875, %874 ]
  %878 = phi i32 [ %793, %841 ], [ %856, %874 ]
  %879 = phi i64 [ %801, %841 ], [ %863, %874 ]
  %880 = phi i32 [ %803, %841 ], [ %871, %874 ]
  %881 = phi i32 [ %839, %841 ], [ %872, %874 ]
  %882 = shl nsw i32 -1, %881
  %883 = xor i32 %882, -1
  %884 = trunc i64 %879 to i32
  %885 = and i32 %883, %884
  %886 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %877, i32 %885), !nosanitize !34
  %887 = extractvalue { i32, i1 } %886, 1, !nosanitize !34
  br i1 %887, label %888, label %889, !prof !35, !nosanitize !34

888:                                              ; preds = %876
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

889:                                              ; preds = %876
  %890 = extractvalue { i32, i1 } %886, 0, !nosanitize !34
  store i32 %890, ptr %41, align 4, !tbaa !38
  %891 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %880, i32 %881), !nosanitize !34
  %892 = extractvalue { i32, i1 } %891, 1, !nosanitize !34
  br i1 %892, label %893, label %894, !prof !35, !nosanitize !34

893:                                              ; preds = %889
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

894:                                              ; preds = %889
  %895 = extractvalue { i32, i1 } %891, 0, !nosanitize !34
  %896 = zext nneg i32 %881 to i64
  %897 = lshr i64 %879, %896
  br label %898

898:                                              ; preds = %894, %838
  %899 = phi i32 [ %878, %894 ], [ %793, %838 ]
  %900 = phi i64 [ %897, %894 ], [ %801, %838 ]
  %901 = phi i32 [ %895, %894 ], [ %803, %838 ]
  %902 = load i32, ptr %40, align 4, !tbaa !62
  %903 = shl nsw i32 -1, %902
  %904 = xor i32 %903, -1
  %905 = trunc i64 %900 to i32
  %906 = load ptr, ptr %39, align 8, !tbaa !61
  %907 = and i32 %904, %905
  %908 = zext nneg i32 %907 to i64
  %909 = getelementptr inbounds nuw [4 x i8], ptr %906, i64 %908
  %910 = getelementptr inbounds nuw i8, ptr %909, i64 1
  %911 = load i8, ptr %910, align 1, !tbaa !8
  %912 = zext i8 %911 to i32
  %913 = icmp ult i32 %901, %912
  br i1 %913, label %914, label %954

914:                                              ; preds = %898
  %915 = zext nneg i32 %901 to i64
  br label %916

916:                                              ; preds = %935, %914
  %917 = phi i64 [ %915, %914 ], [ %938, %935 ]
  %918 = phi i64 [ %900, %914 ], [ %936, %935 ]
  %919 = phi i32 [ %899, %914 ], [ %937, %935 ]
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %921, label %925

921:                                              ; preds = %916
  %922 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %924, label %925

924:                                              ; preds = %921
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

925:                                              ; preds = %921, %916
  %926 = phi i32 [ %922, %921 ], [ %919, %916 ]
  %927 = load ptr, ptr %6, align 8, !tbaa !32
  %928 = getelementptr inbounds nuw i8, ptr %927, i64 1
  store ptr %928, ptr %6, align 8, !tbaa !32
  %929 = load i8, ptr %927, align 1, !tbaa !8
  %930 = zext i8 %929 to i64
  %931 = shl i64 %930, %917
  %932 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %918, i64 %931), !nosanitize !34
  %933 = extractvalue { i64, i1 } %932, 1, !nosanitize !34
  br i1 %933, label %934, label %935, !prof !35, !nosanitize !34

934:                                              ; preds = %925
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

935:                                              ; preds = %925
  %936 = extractvalue { i64, i1 } %932, 0, !nosanitize !34
  %937 = add i32 %926, -1
  %938 = add nuw nsw i64 %917, 8
  %939 = load i32, ptr %40, align 4, !tbaa !62
  %940 = shl nsw i32 -1, %939
  %941 = xor i32 %940, -1
  %942 = trunc i64 %936 to i32
  %943 = load ptr, ptr %39, align 8, !tbaa !61
  %944 = and i32 %941, %942
  %945 = zext nneg i32 %944 to i64
  %946 = getelementptr inbounds nuw [4 x i8], ptr %943, i64 %945
  %947 = getelementptr inbounds nuw i8, ptr %946, i64 1
  %948 = load i8, ptr %947, align 1, !tbaa !8
  %949 = zext i8 %948 to i64
  %950 = icmp samesign ult i64 %938, %949
  br i1 %950, label %916, label %951

951:                                              ; preds = %935
  %952 = zext i8 %948 to i32
  %953 = trunc nuw nsw i64 %938 to i32
  br label %954

954:                                              ; preds = %951, %898
  %955 = phi ptr [ %906, %898 ], [ %943, %951 ]
  %956 = phi i32 [ %899, %898 ], [ %937, %951 ]
  %957 = phi i64 [ %900, %898 ], [ %936, %951 ]
  %958 = phi i32 [ %901, %898 ], [ %953, %951 ]
  %959 = phi ptr [ %909, %898 ], [ %946, %951 ]
  %960 = phi i8 [ %911, %898 ], [ %948, %951 ]
  %961 = phi i32 [ %912, %898 ], [ %952, %951 ]
  %962 = getelementptr inbounds nuw i8, ptr %959, i64 2
  %963 = load i16, ptr %962, align 2, !tbaa !45
  %964 = load i8, ptr %959, align 2, !tbaa !8
  %965 = icmp ult i8 %964, 16
  br i1 %965, label %966, label %1029

966:                                              ; preds = %954
  %967 = zext nneg i8 %964 to i32
  %968 = add nuw nsw i32 %961, %967
  %969 = shl nsw i32 -1, %968
  %970 = xor i32 %969, -1
  %971 = zext i16 %963 to i32
  %972 = trunc i64 %957 to i32
  %973 = and i32 %970, %972
  %974 = lshr i32 %973, %961
  %975 = add nuw i32 %974, %971
  %976 = zext i32 %975 to i64
  %977 = getelementptr inbounds nuw [4 x i8], ptr %955, i64 %976
  %978 = getelementptr inbounds nuw i8, ptr %977, i64 1
  %979 = load i8, ptr %978, align 1, !tbaa !8
  %980 = zext i8 %979 to i32
  %981 = add nuw nsw i32 %961, %980
  %982 = icmp ugt i32 %981, %958
  br i1 %982, label %.preheader115.preheader, label %.loopexit116

.preheader115.preheader:                          ; preds = %966
  %983 = zext nneg i32 %958 to i64
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.preheader, %1001
  %indvars.iv716 = phi i64 [ %983, %.preheader115.preheader ], [ %indvars.iv.next717, %1001 ]
  %984 = phi i64 [ %957, %.preheader115.preheader ], [ %1002, %1001 ]
  %985 = phi i32 [ %956, %.preheader115.preheader ], [ %1003, %1001 ]
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %987, label %991

987:                                              ; preds = %.preheader115
  %988 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %990, label %991

990:                                              ; preds = %987
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

991:                                              ; preds = %987, %.preheader115
  %992 = phi i32 [ %988, %987 ], [ %985, %.preheader115 ]
  %993 = load ptr, ptr %6, align 8, !tbaa !32
  %994 = getelementptr inbounds nuw i8, ptr %993, i64 1
  store ptr %994, ptr %6, align 8, !tbaa !32
  %995 = load i8, ptr %993, align 1, !tbaa !8
  %996 = zext i8 %995 to i64
  %997 = shl i64 %996, %indvars.iv716
  %998 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %984, i64 %997), !nosanitize !34
  %999 = extractvalue { i64, i1 } %998, 1, !nosanitize !34
  br i1 %999, label %1000, label %1001, !prof !35, !nosanitize !34

1000:                                             ; preds = %991
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1001:                                             ; preds = %991
  %1002 = extractvalue { i64, i1 } %998, 0, !nosanitize !34
  %1003 = add i32 %992, -1
  %indvars.iv.next717 = add nuw nsw i64 %indvars.iv716, 8
  %1004 = load ptr, ptr %39, align 8, !tbaa !61
  %1005 = trunc i64 %1002 to i32
  %1006 = and i32 %1005, %970
  %1007 = lshr i32 %1006, %961
  %1008 = add nuw i32 %1007, %971
  %1009 = zext i32 %1008 to i64
  %1010 = getelementptr inbounds nuw [4 x i8], ptr %1004, i64 %1009
  %1011 = getelementptr inbounds nuw i8, ptr %1010, i64 1
  %1012 = load i8, ptr %1011, align 1, !tbaa !8
  %1013 = zext i8 %1012 to i32
  %1014 = add nuw nsw i32 %961, %1013
  %1015 = zext nneg i32 %1014 to i64
  %1016 = icmp samesign ult i64 %indvars.iv.next717, %1015
  br i1 %1016, label %.preheader115, label %.loopexit116.loopexit

.loopexit116.loopexit:                            ; preds = %1001
  %1017 = trunc nuw nsw i64 %indvars.iv.next717 to i32
  br label %.loopexit116

.loopexit116:                                     ; preds = %.loopexit116.loopexit, %966
  %1018 = phi i32 [ %956, %966 ], [ %1003, %.loopexit116.loopexit ]
  %1019 = phi i64 [ %957, %966 ], [ %1002, %.loopexit116.loopexit ]
  %1020 = phi i32 [ %958, %966 ], [ %1017, %.loopexit116.loopexit ]
  %1021 = phi ptr [ %977, %966 ], [ %1010, %.loopexit116.loopexit ]
  %1022 = phi i8 [ %979, %966 ], [ %1012, %.loopexit116.loopexit ]
  %1023 = getelementptr inbounds nuw i8, ptr %1021, i64 2
  %1024 = load i16, ptr %1023, align 2, !tbaa !45
  %1025 = load i8, ptr %1021, align 2, !tbaa !8
  %1026 = sub nuw i32 %1020, %961
  %1027 = zext nneg i8 %960 to i64
  %1028 = lshr i64 %1019, %1027
  br label %1029

1029:                                             ; preds = %.loopexit116, %954
  %1030 = phi i32 [ %1018, %.loopexit116 ], [ %956, %954 ]
  %1031 = phi i64 [ %1028, %.loopexit116 ], [ %957, %954 ]
  %1032 = phi i32 [ %1026, %.loopexit116 ], [ %958, %954 ]
  %1033 = phi i16 [ %1024, %.loopexit116 ], [ %963, %954 ]
  %1034 = phi i8 [ %1022, %.loopexit116 ], [ %960, %954 ]
  %1035 = phi i8 [ %1025, %.loopexit116 ], [ %964, %954 ]
  %1036 = zext i8 %1034 to i32
  %1037 = zext nneg i8 %1034 to i64
  %1038 = lshr i64 %1031, %1037
  %1039 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1032, i32 %1036), !nosanitize !34
  %1040 = extractvalue { i32, i1 } %1039, 0, !nosanitize !34
  %1041 = extractvalue { i32, i1 } %1039, 1, !nosanitize !34
  br i1 %1041, label %1042, label %1043, !prof !35, !nosanitize !34

1042:                                             ; preds = %1029
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1043:                                             ; preds = %1029
  %1044 = zext i8 %1035 to i32
  %1045 = and i32 %1044, 64
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1048, label %1047

1047:                                             ; preds = %1043
  store ptr @.str.10, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

1048:                                             ; preds = %1043
  %1049 = zext i16 %1033 to i32
  store i32 %1049, ptr %43, align 8, !tbaa !69
  %1050 = and i32 %1044, 15
  store i32 %1050, ptr %42, align 4, !tbaa !67
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1109, label %1052

1052:                                             ; preds = %1048
  %1053 = icmp ult i32 %1040, %1050
  br i1 %1053, label %1054, label %1087

1054:                                             ; preds = %1052
  %1055 = zext nneg i32 %1040 to i64
  br label %1056

1056:                                             ; preds = %1080, %1054
  %1057 = phi i64 [ %1055, %1054 ], [ %1081, %1080 ]
  %1058 = phi i64 [ %1038, %1054 ], [ %1074, %1080 ]
  %1059 = phi i32 [ %1030, %1054 ], [ %1067, %1080 ]
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1061, label %1065

1061:                                             ; preds = %1056
  %1062 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1064, label %1065

1064:                                             ; preds = %1061
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

1065:                                             ; preds = %1061, %1056
  %1066 = phi i32 [ %1062, %1061 ], [ %1059, %1056 ]
  %1067 = add i32 %1066, -1
  %1068 = load ptr, ptr %6, align 8, !tbaa !32
  %1069 = getelementptr inbounds nuw i8, ptr %1068, i64 1
  store ptr %1069, ptr %6, align 8, !tbaa !32
  %1070 = load i8, ptr %1068, align 1, !tbaa !8
  %1071 = zext i8 %1070 to i64
  %1072 = shl i64 %1071, %1057
  %1073 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1058, i64 %1072), !nosanitize !34
  %1074 = extractvalue { i64, i1 } %1073, 0, !nosanitize !34
  %1075 = extractvalue { i64, i1 } %1073, 1, !nosanitize !34
  br i1 %1075, label %1076, label %1077, !prof !35, !nosanitize !34

1076:                                             ; preds = %1065
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1077:                                             ; preds = %1065
  %1078 = icmp samesign ugt i64 %1057, 4294967287
  br i1 %1078, label %1079, label %1080, !prof !35, !nosanitize !34

1079:                                             ; preds = %1077
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1080:                                             ; preds = %1077
  %1081 = add nuw nsw i64 %1057, 8
  %1082 = trunc nuw i64 %1081 to i32
  %1083 = load i32, ptr %42, align 4, !tbaa !67
  %1084 = icmp ugt i32 %1083, %1082
  br i1 %1084, label %1056, label %1085, !llvm.loop !70

1085:                                             ; preds = %1080
  %1086 = load i32, ptr %43, align 8, !tbaa !69
  br label %1087

1087:                                             ; preds = %1085, %1052
  %1088 = phi i32 [ %1049, %1052 ], [ %1086, %1085 ]
  %1089 = phi i32 [ %1030, %1052 ], [ %1067, %1085 ]
  %1090 = phi i64 [ %1038, %1052 ], [ %1074, %1085 ]
  %1091 = phi i32 [ %1040, %1052 ], [ %1082, %1085 ]
  %1092 = phi i32 [ %1050, %1052 ], [ %1083, %1085 ]
  %1093 = shl nsw i32 -1, %1092
  %1094 = xor i32 %1093, -1
  %1095 = trunc i64 %1090 to i32
  %1096 = and i32 %1094, %1095
  %1097 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1088, i32 %1096), !nosanitize !34
  %1098 = extractvalue { i32, i1 } %1097, 1, !nosanitize !34
  br i1 %1098, label %1099, label %1100, !prof !35, !nosanitize !34

1099:                                             ; preds = %1087
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1100:                                             ; preds = %1087
  %1101 = extractvalue { i32, i1 } %1097, 0, !nosanitize !34
  store i32 %1101, ptr %43, align 8, !tbaa !69
  %1102 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1091, i32 %1092), !nosanitize !34
  %1103 = extractvalue { i32, i1 } %1102, 1, !nosanitize !34
  br i1 %1103, label %1104, label %1105, !prof !35, !nosanitize !34

1104:                                             ; preds = %1100
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1105:                                             ; preds = %1100
  %1106 = extractvalue { i32, i1 } %1102, 0, !nosanitize !34
  %1107 = zext nneg i32 %1092 to i64
  %1108 = lshr i64 %1090, %1107
  br label %1109

1109:                                             ; preds = %1105, %1048
  %1110 = phi i32 [ %1101, %1105 ], [ %1049, %1048 ]
  %1111 = phi i32 [ %1089, %1105 ], [ %1030, %1048 ]
  %1112 = phi i64 [ %1108, %1105 ], [ %1038, %1048 ]
  %1113 = phi i32 [ %1106, %1105 ], [ %1040, %1048 ]
  %1114 = load i32, ptr %26, align 4, !tbaa !24
  %1115 = load i32, ptr %16, align 8, !tbaa !27
  %1116 = icmp ult i32 %1115, %1114
  %1117 = select i1 %1116, i32 %53, i32 0
  %1118 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1114, i32 %1117), !nosanitize !34
  %1119 = extractvalue { i32, i1 } %1118, 1, !nosanitize !34
  br i1 %1119, label %1120, label %1121, !prof !35, !nosanitize !34

1120:                                             ; preds = %1109
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1121:                                             ; preds = %1109
  %1122 = extractvalue { i32, i1 } %1118, 0, !nosanitize !34
  %1123 = icmp ugt i32 %1110, %1122
  br i1 %1123, label %1124, label %.preheader112

1124:                                             ; preds = %1121
  store ptr @.str.11, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

.preheader112:                                    ; preds = %1121, %.loopexit
  %1125 = phi ptr [ %1263, %.loopexit ], [ %51, %1121 ]
  %1126 = phi i32 [ %1156, %.loopexit ], [ %53, %1121 ]
  %1127 = icmp eq i32 %1126, 0
  %1128 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1127, label %1129, label %1135

1129:                                             ; preds = %.preheader112
  %1130 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1128, ptr %16, align 8, !tbaa !27
  %1131 = call i32 %3(ptr noundef %4, ptr noundef %1130, i32 noundef %1128) #6
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1133, label %.loopexit110

1133:                                             ; preds = %1129
  %1134 = load i32, ptr %26, align 4, !tbaa !24
  br label %1135

1135:                                             ; preds = %1133, %.preheader112
  %1136 = phi i32 [ %1134, %1133 ], [ %1128, %.preheader112 ]
  %1137 = phi ptr [ %1130, %1133 ], [ %1125, %.preheader112 ]
  %1138 = phi i32 [ %1128, %1133 ], [ %1126, %.preheader112 ]
  %1139 = load i32, ptr %43, align 8, !tbaa !69
  %1140 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1136, i32 %1139), !nosanitize !34
  %1141 = extractvalue { i32, i1 } %1140, 1, !nosanitize !34
  br i1 %1141, label %1142, label %1143, !prof !35, !nosanitize !34

1142:                                             ; preds = %1135
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1143:                                             ; preds = %1135
  %1144 = extractvalue { i32, i1 } %1140, 0, !nosanitize !34
  %1145 = icmp ult i32 %1144, %1138
  %1146 = select i1 %1145, i32 %1144, i32 0
  %1147 = sub i32 %1138, %1146
  %1148 = load i32, ptr %41, align 4, !tbaa !38
  %1149 = call i32 @llvm.umin.i32(i32 %1147, i32 %1148)
  %1150 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1148, i32 %1149), !nosanitize !34
  %1151 = extractvalue { i32, i1 } %1150, 1, !nosanitize !34
  br i1 %1151, label %1152, label %1153, !prof !35, !nosanitize !34

1152:                                             ; preds = %1143
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1153:                                             ; preds = %1143
  %1154 = extractvalue { i32, i1 } %1150, 0, !nosanitize !34
  store i32 %1154, ptr %41, align 4, !tbaa !38
  %1155 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1138, i32 %1149), !nosanitize !34
  %1156 = extractvalue { i32, i1 } %1155, 0, !nosanitize !34
  %1157 = extractvalue { i32, i1 } %1155, 1, !nosanitize !34
  br i1 %1157, label %1233, label %1158, !prof !35, !nosanitize !34

1158:                                             ; preds = %1153
  %1159 = zext i32 %1144 to i64
  %1160 = zext i32 %1139 to i64
  %1161 = sub nsw i64 0, %1160
  %1162 = select i1 %1145, i64 %1159, i64 %1161
  %1163 = getelementptr inbounds i8, ptr %1137, i64 %1162
  %1164 = icmp eq i32 %1149, 0
  br i1 %1164, label %1231, label %1165, !prof !35, !nosanitize !34

1165:                                             ; preds = %1158
  %1166 = zext i32 %1149 to i64
  %1167 = icmp ult i32 %1149, 4
  %1168 = add nsw i64 %1162, 31
  %1169 = icmp ult i64 %1168, 32
  %1170 = select i1 %1167, i1 true, i1 %1169
  br i1 %1170, label %1210, label %1171

1171:                                             ; preds = %1165
  %1172 = icmp ult i32 %1149, 32
  br i1 %1172, label %1194, label %1173

1173:                                             ; preds = %1171
  %1174 = and i64 %1166, 4294967264
  br label %1175

1175:                                             ; preds = %1175, %1173
  %1176 = phi i64 [ 0, %1173 ], [ %1183, %1175 ]
  %1177 = getelementptr i8, ptr %1137, i64 %1176
  %1178 = getelementptr i8, ptr %1163, i64 %1176
  %1179 = getelementptr i8, ptr %1178, i64 16
  %1180 = load <16 x i8>, ptr %1178, align 1, !tbaa !8
  %1181 = load <16 x i8>, ptr %1179, align 1, !tbaa !8
  %1182 = getelementptr i8, ptr %1177, i64 16
  store <16 x i8> %1180, ptr %1177, align 1, !tbaa !8
  store <16 x i8> %1181, ptr %1182, align 1, !tbaa !8
  %1183 = add nuw i64 %1176, 32
  %1184 = icmp eq i64 %1183, %1174
  br i1 %1184, label %1185, label %1175, !llvm.loop !71

1185:                                             ; preds = %1175
  %1186 = getelementptr i8, ptr %1137, i64 %1174
  %1187 = icmp eq i64 %1174, %1166
  br i1 %1187, label %.loopexit, label %1188

1188:                                             ; preds = %1185
  %1189 = getelementptr i8, ptr %1163, i64 %1174
  %1190 = trunc nuw i64 %1174 to i32
  %1191 = sub i32 %1149, %1190
  %1192 = and i64 %1166, 28
  %1193 = icmp eq i64 %1192, 0
  br i1 %1193, label %1210, label %1194, !prof !74

1194:                                             ; preds = %1188, %1171
  %1195 = phi i64 [ %1174, %1188 ], [ 0, %1171 ]
  %1196 = and i64 %1166, 4294967292
  br label %1197

1197:                                             ; preds = %1197, %1194
  %1198 = phi i64 [ %1195, %1194 ], [ %1202, %1197 ]
  %1199 = getelementptr i8, ptr %1137, i64 %1198
  %1200 = getelementptr i8, ptr %1163, i64 %1198
  %1201 = load <4 x i8>, ptr %1200, align 1, !tbaa !8
  store <4 x i8> %1201, ptr %1199, align 1, !tbaa !8
  %1202 = add nuw i64 %1198, 4
  %1203 = icmp eq i64 %1202, %1196
  br i1 %1203, label %1204, label %1197, !llvm.loop !75

1204:                                             ; preds = %1197
  %1205 = getelementptr i8, ptr %1137, i64 %1196
  %1206 = trunc nuw i64 %1196 to i32
  %1207 = sub i32 %1149, %1206
  %1208 = getelementptr i8, ptr %1163, i64 %1196
  %1209 = icmp eq i64 %1196, %1166
  br i1 %1209, label %.loopexit, label %1210

1210:                                             ; preds = %1204, %1188, %1165
  %1211 = phi ptr [ %1137, %1165 ], [ %1186, %1188 ], [ %1205, %1204 ]
  %1212 = phi i32 [ %1149, %1165 ], [ %1191, %1188 ], [ %1207, %1204 ]
  %1213 = phi ptr [ %1163, %1165 ], [ %1189, %1188 ], [ %1208, %1204 ]
  %1214 = add i32 %1212, -1
  %1215 = and i32 %1212, 7
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %.loopexit108, label %.preheader107

.preheader107:                                    ; preds = %1210, %.preheader107
  %1217 = phi ptr [ %1221, %.preheader107 ], [ %1211, %1210 ]
  %1218 = phi ptr [ %1222, %.preheader107 ], [ %1213, %1210 ]
  %1219 = phi i32 [ %1223, %.preheader107 ], [ 0, %1210 ]
  %1220 = load i8, ptr %1218, align 1, !tbaa !8
  store i8 %1220, ptr %1217, align 1, !tbaa !8
  %1221 = getelementptr inbounds nuw i8, ptr %1217, i64 1
  %1222 = getelementptr inbounds nuw i8, ptr %1218, i64 1
  %1223 = add nuw nsw i32 %1219, 1
  %1224 = icmp eq i32 %1223, %1215
  br i1 %1224, label %.loopexit108.loopexit, label %.preheader107, !llvm.loop !76

.loopexit108.loopexit:                            ; preds = %.preheader107
  %1225 = and i32 %1212, -8
  br label %.loopexit108

.loopexit108:                                     ; preds = %.loopexit108.loopexit, %1210
  %1226 = phi ptr [ poison, %1210 ], [ %1221, %.loopexit108.loopexit ]
  %1227 = phi ptr [ %1211, %1210 ], [ %1221, %.loopexit108.loopexit ]
  %1228 = phi i32 [ %1212, %1210 ], [ %1225, %.loopexit108.loopexit ]
  %1229 = phi ptr [ %1213, %1210 ], [ %1222, %.loopexit108.loopexit ]
  %1230 = icmp ult i32 %1214, 7
  br i1 %1230, label %.loopexit, label %.preheader106

1231:                                             ; preds = %1158
  %1232 = load i8, ptr %1163, align 1, !tbaa !8
  store i8 %1232, ptr %1137, align 1, !tbaa !8
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1233:                                             ; preds = %1153
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

.preheader106:                                    ; preds = %.loopexit108, %.preheader106
  %1234 = phi ptr [ %1259, %.preheader106 ], [ %1227, %.loopexit108 ]
  %1235 = phi i32 [ %1260, %.preheader106 ], [ %1228, %.loopexit108 ]
  %1236 = phi ptr [ %1261, %.preheader106 ], [ %1229, %.loopexit108 ]
  %1237 = load i8, ptr %1236, align 1, !tbaa !8
  store i8 %1237, ptr %1234, align 1, !tbaa !8
  %1238 = getelementptr inbounds nuw i8, ptr %1234, i64 1
  %1239 = getelementptr inbounds nuw i8, ptr %1236, i64 1
  %1240 = load i8, ptr %1239, align 1, !tbaa !8
  store i8 %1240, ptr %1238, align 1, !tbaa !8
  %1241 = getelementptr inbounds nuw i8, ptr %1234, i64 2
  %1242 = getelementptr inbounds nuw i8, ptr %1236, i64 2
  %1243 = load i8, ptr %1242, align 1, !tbaa !8
  store i8 %1243, ptr %1241, align 1, !tbaa !8
  %1244 = getelementptr inbounds nuw i8, ptr %1234, i64 3
  %1245 = getelementptr inbounds nuw i8, ptr %1236, i64 3
  %1246 = load i8, ptr %1245, align 1, !tbaa !8
  store i8 %1246, ptr %1244, align 1, !tbaa !8
  %1247 = getelementptr inbounds nuw i8, ptr %1234, i64 4
  %1248 = getelementptr inbounds nuw i8, ptr %1236, i64 4
  %1249 = load i8, ptr %1248, align 1, !tbaa !8
  store i8 %1249, ptr %1247, align 1, !tbaa !8
  %1250 = getelementptr inbounds nuw i8, ptr %1234, i64 5
  %1251 = getelementptr inbounds nuw i8, ptr %1236, i64 5
  %1252 = load i8, ptr %1251, align 1, !tbaa !8
  store i8 %1252, ptr %1250, align 1, !tbaa !8
  %1253 = getelementptr inbounds nuw i8, ptr %1234, i64 6
  %1254 = getelementptr inbounds nuw i8, ptr %1236, i64 6
  %1255 = load i8, ptr %1254, align 1, !tbaa !8
  store i8 %1255, ptr %1253, align 1, !tbaa !8
  %1256 = getelementptr inbounds nuw i8, ptr %1234, i64 7
  %1257 = getelementptr inbounds nuw i8, ptr %1236, i64 7
  %1258 = load i8, ptr %1257, align 1, !tbaa !8
  store i8 %1258, ptr %1256, align 1, !tbaa !8
  %1259 = getelementptr inbounds nuw i8, ptr %1234, i64 8
  %1260 = add i32 %1235, -8
  %1261 = getelementptr inbounds nuw i8, ptr %1236, i64 8
  %1262 = icmp eq i32 %1260, 0
  br i1 %1262, label %.loopexit, label %.preheader106, !llvm.loop !78

.loopexit:                                        ; preds = %.preheader106, %.loopexit108, %1204, %1185
  %1263 = phi ptr [ %1205, %1204 ], [ %1186, %1185 ], [ %1226, %.loopexit108 ], [ %1259, %.preheader106 ]
  %1264 = load i32, ptr %41, align 4, !tbaa !38
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %.loopexit114, label %.preheader112, !llvm.loop !79

.loopexit114:                                     ; preds = %.loopexit, %1124, %1047, %837, %833, %827, %669, %645, %636, %632, %.loopexit121, %596, %462, %317, %253, %.loopexit111, %157, %106, %73
  %1266 = phi ptr [ %51, %73 ], [ %51, %106 ], [ %51, %157 ], [ %206, %.loopexit111 ], [ %51, %253 ], [ %51, %317 ], [ %51, %.loopexit121 ], [ %51, %632 ], [ %51, %636 ], [ %51, %645 ], [ %672, %669 ], [ %829, %827 ], [ %51, %833 ], [ %51, %837 ], [ %51, %1047 ], [ %51, %1124 ], [ %51, %462 ], [ %51, %596 ], [ %1263, %.loopexit ]
  %1267 = phi i32 [ %52, %73 ], [ %96, %106 ], [ %150, %157 ], [ %207, %.loopexit111 ], [ %236, %253 ], [ %285, %317 ], [ %626, %.loopexit121 ], [ %626, %632 ], [ %626, %636 ], [ %626, %645 ], [ %675, %669 ], [ %793, %827 ], [ %793, %833 ], [ %793, %837 ], [ %1030, %1047 ], [ %1111, %1124 ], [ %454, %462 ], [ %559, %596 ], [ %1111, %.loopexit ]
  %1268 = phi i32 [ %53, %73 ], [ %53, %106 ], [ %53, %157 ], [ %208, %.loopexit111 ], [ %53, %253 ], [ %53, %317 ], [ %53, %.loopexit121 ], [ %53, %632 ], [ %53, %636 ], [ %53, %645 ], [ %673, %669 ], [ %828, %827 ], [ %53, %833 ], [ %53, %837 ], [ %53, %1047 ], [ %53, %1124 ], [ %53, %462 ], [ %53, %596 ], [ %1156, %.loopexit ]
  %1269 = phi i64 [ %76, %73 ], [ %109, %106 ], [ %151, %157 ], [ 0, %.loopexit111 ], [ %248, %253 ], [ %301, %317 ], [ %625, %.loopexit121 ], [ %625, %632 ], [ %625, %636 ], [ %625, %645 ], [ %676, %669 ], [ %801, %827 ], [ %801, %833 ], [ %801, %837 ], [ %1038, %1047 ], [ %1112, %1124 ], [ %458, %462 ], [ %560, %596 ], [ %1112, %.loopexit ]
  %1270 = phi i32 [ %74, %73 ], [ %108, %106 ], [ %152, %157 ], [ 0, %.loopexit111 ], [ %249, %253 ], [ %300, %317 ], [ %624, %.loopexit121 ], [ %624, %632 ], [ %624, %636 ], [ %624, %645 ], [ %677, %669 ], [ %803, %827 ], [ %803, %833 ], [ %803, %837 ], [ %1040, %1047 ], [ %1113, %1124 ], [ %459, %462 ], [ %564, %596 ], [ %1113, %.loopexit ]
  %1271 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

.loopexit110.loopexit1115:                        ; preds = %49
  br label %.loopexit110

.loopexit110.loopexit1405:                        ; preds = %49
  br label %.loopexit110

.loopexit110:                                     ; preds = %812, %1129, %174, %49, %.loopexit110.loopexit1405, %.loopexit110.loopexit1115, %1064, %990, %924, %853, %753, %686, %525, %484, %435, %354, %271, %217, %170, %131, %80
  %1272 = phi i32 [ %1111, %1129 ], [ 0, %80 ], [ 0, %131 ], [ 0, %170 ], [ %52, %49 ], [ 0, %217 ], [ 0, %271 ], [ 0, %435 ], [ %172, %174 ], [ 0, %853 ], [ 0, %1064 ], [ %52, %.loopexit110.loopexit1115 ], [ 0, %990 ], [ 0, %924 ], [ 0, %753 ], [ 0, %686 ], [ 0, %484 ], [ 0, %525 ], [ 0, %354 ], [ %793, %812 ], [ %52, %.loopexit110.loopexit1405 ]
  %1273 = phi i32 [ %1128, %1129 ], [ %53, %80 ], [ %53, %131 ], [ %162, %170 ], [ %53, %49 ], [ %53, %217 ], [ %53, %271 ], [ %53, %435 ], [ %176, %174 ], [ %53, %853 ], [ %53, %1064 ], [ %53, %.loopexit110.loopexit1115 ], [ %53, %990 ], [ %53, %924 ], [ %53, %753 ], [ %53, %686 ], [ %53, %484 ], [ %53, %525 ], [ %53, %354 ], [ %814, %812 ], [ %53, %.loopexit110.loopexit1405 ]
  %1274 = phi i1 [ false, %1129 ], [ false, %80 ], [ false, %131 ], [ false, %170 ], [ false, %49 ], [ false, %217 ], [ false, %271 ], [ false, %435 ], [ false, %174 ], [ false, %853 ], [ false, %1064 ], [ false, %.loopexit110.loopexit1115 ], [ false, %990 ], [ false, %924 ], [ false, %753 ], [ false, %686 ], [ false, %484 ], [ false, %525 ], [ false, %354 ], [ false, %812 ], [ true, %.loopexit110.loopexit1405 ]
  %1275 = phi i32 [ -5, %1129 ], [ -5, %80 ], [ -5, %131 ], [ -5, %170 ], [ -3, %49 ], [ -5, %217 ], [ -5, %271 ], [ -5, %435 ], [ -5, %174 ], [ -5, %853 ], [ -5, %1064 ], [ -2, %.loopexit110.loopexit1115 ], [ -5, %990 ], [ -5, %924 ], [ -5, %753 ], [ -5, %686 ], [ -5, %484 ], [ -5, %525 ], [ -5, %354 ], [ -5, %812 ], [ 1, %.loopexit110.loopexit1405 ]
  %1276 = load i32, ptr %26, align 4, !tbaa !24
  %1277 = icmp ult i32 %1273, %1276
  br i1 %1277, label %1278, label %1285

1278:                                             ; preds = %.loopexit110
  %1279 = sub nuw i32 %1276, %1273
  %1280 = load ptr, ptr %24, align 8, !tbaa !25
  %1281 = call i32 %3(ptr noundef %4, ptr noundef %1280, i32 noundef %1279) #6
  %1282 = icmp ne i32 %1281, 0
  %1283 = and i1 %1274, %1282
  %1284 = select i1 %1283, i32 -5, i32 %1275
  br label %1285

1285:                                             ; preds = %1278, %.loopexit110
  %1286 = phi i32 [ %1284, %1278 ], [ %1275, %.loopexit110 ]
  %1287 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1287, ptr %0, align 8, !tbaa !31
  store i32 %1272, ptr %46, align 8, !tbaa !33
  br label %1288

1288:                                             ; preds = %1285, %8, %5
  %1289 = phi i32 [ %1286, %1285 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 %1289
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
  tail call void %9(ptr noundef %13, ptr noundef nonnull %5) #6
  store ptr null, ptr %4, align 8, !tbaa !18
  br label %14

14:                                               ; preds = %11, %7, %3, %1
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nomerge noreturn nounwind }

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
