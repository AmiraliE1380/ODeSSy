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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #2

declare void @zcfree(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @inflateBack(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1308, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1308, label %12

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

49:                                               ; preds = %1282, %22
  %50 = phi i32 [ 16191, %22 ], [ %1288, %1282 ]
  %51 = phi ptr [ %25, %22 ], [ %1283, %1282 ]
  %52 = phi i32 [ %23, %22 ], [ %1284, %1282 ]
  %53 = phi i32 [ %27, %22 ], [ %1285, %1282 ]
  %54 = phi i64 [ 0, %22 ], [ %1286, %1282 ]
  %55 = phi i32 [ 0, %22 ], [ %1287, %1282 ]
  switch i32 %50, label %1291 [
    i32 16191, label %60
    i32 16193, label %108
    i32 16196, label %56
    i32 16200, label %652
    i32 16208, label %1289
    i32 16209, label %1290
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %232

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %206

60:                                               ; preds = %49
  %61 = load i32, ptr %15, align 4, !tbaa !30
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = icmp ult i32 %55, 3
  br i1 %64, label %65, label %92

65:                                               ; preds = %63
  %66 = or disjoint i32 %55, 8
  %67 = icmp eq i32 %52, 0
  br i1 %67, label %74, label %78

68:                                               ; preds = %60
  %69 = and i32 %55, 7
  %70 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %69), !nosanitize !34
  %71 = extractvalue { i32, i1 } %70, 0, !nosanitize !34
  %72 = zext nneg i32 %69 to i64
  %73 = lshr i64 %54, %72
  store i32 16208, ptr %14, align 8, !tbaa !29
  br label %1282

74:                                               ; preds = %65
  %75 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

78:                                               ; preds = %74, %65
  %79 = phi i32 [ %75, %74 ], [ %52, %65 ]
  %80 = load ptr, ptr %6, align 8, !tbaa !32
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 1
  store ptr %81, ptr %6, align 8, !tbaa !32
  %82 = load i8, ptr %80, align 1, !tbaa !8
  %83 = zext i8 %82 to i64
  %84 = zext nneg i32 %55 to i64
  %85 = shl nuw nsw i64 %83, %84
  %86 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 %85), !nosanitize !34
  %87 = extractvalue { i64, i1 } %86, 1, !nosanitize !34
  br i1 %87, label %88, label %89, !prof !35, !nosanitize !34

88:                                               ; preds = %78
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

89:                                               ; preds = %78
  %90 = extractvalue { i64, i1 } %86, 0, !nosanitize !34
  %91 = add i32 %79, -1
  br label %92

92:                                               ; preds = %89, %63
  %93 = phi i32 [ %91, %89 ], [ %52, %63 ]
  %94 = phi i64 [ %90, %89 ], [ %54, %63 ]
  %95 = phi i32 [ %66, %89 ], [ %55, %63 ]
  %96 = trunc i64 %94 to i32
  %97 = and i32 %96, 1
  store i32 %97, ptr %15, align 4, !tbaa !30
  %98 = lshr i32 %96, 1
  %99 = and i32 %98, 3
  switch i32 %99, label %102 [
    i32 0, label %104
    i32 1, label %100
    i32 2, label %101
    i32 3, label %103
  ]

100:                                              ; preds = %92
  call void @inflate_fixed(ptr noundef nonnull %10) #6
  br label %104

101:                                              ; preds = %92
  br label %104

102:                                              ; preds = %92
  unreachable

103:                                              ; preds = %92
  store ptr @.str.1, ptr %13, align 8, !tbaa !9
  br label %104

104:                                              ; preds = %103, %101, %100, %92
  %105 = phi i32 [ 16209, %103 ], [ 16196, %101 ], [ 16200, %100 ], [ 16193, %92 ]
  store i32 %105, ptr %14, align 8, !tbaa !29
  %106 = add i32 %95, -3
  %107 = lshr i64 %94, 3
  br label %1282

108:                                              ; preds = %49
  %109 = and i32 %55, 7
  %110 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %55, i32 %109), !nosanitize !34
  %111 = zext nneg i32 %109 to i64
  %112 = lshr i64 %54, %111
  %113 = extractvalue { i32, i1 } %110, 0
  %114 = icmp ult i32 %113, 32
  br i1 %114, label %115, label %144

115:                                              ; preds = %108
  %116 = and i32 %55, -8
  %117 = zext i32 %116 to i64
  br label %118

118:                                              ; preds = %137, %115
  %119 = phi i64 [ %117, %115 ], [ %140, %137 ]
  %120 = phi i64 [ %112, %115 ], [ %138, %137 ]
  %121 = phi i32 [ %52, %115 ], [ %139, %137 ]
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

127:                                              ; preds = %123, %118
  %128 = phi i32 [ %124, %123 ], [ %121, %118 ]
  %129 = load ptr, ptr %6, align 8, !tbaa !32
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 1
  store ptr %130, ptr %6, align 8, !tbaa !32
  %131 = load i8, ptr %129, align 1, !tbaa !8
  %132 = zext i8 %131 to i64
  %133 = shl nuw nsw i64 %132, %119
  %134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %120, i64 %133), !nosanitize !34
  %135 = extractvalue { i64, i1 } %134, 1, !nosanitize !34
  br i1 %135, label %136, label %137, !prof !35, !nosanitize !34

136:                                              ; preds = %127
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

137:                                              ; preds = %127
  %138 = extractvalue { i64, i1 } %134, 0, !nosanitize !34
  %139 = add i32 %128, -1
  %140 = add nuw nsw i64 %119, 8
  %141 = icmp samesign ult i64 %119, 24
  br i1 %141, label %118, label %142, !llvm.loop !36

142:                                              ; preds = %137
  %143 = trunc nuw nsw i64 %140 to i32
  br label %144

144:                                              ; preds = %142, %108
  %145 = phi i32 [ %52, %108 ], [ %139, %142 ]
  %146 = phi i64 [ %112, %108 ], [ %138, %142 ]
  %147 = phi i32 [ %113, %108 ], [ %143, %142 ]
  %148 = and i64 %146, 65535
  %149 = lshr i64 %146, 16
  %150 = xor i64 %149, %148
  %151 = icmp eq i64 %150, 65535
  br i1 %151, label %153, label %152

152:                                              ; preds = %144
  store ptr @.str.2, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

153:                                              ; preds = %144
  %154 = trunc i64 %146 to i32
  %155 = and i32 %154, 65535
  store i32 %155, ptr %41, align 4, !tbaa !38
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %202, label %157

157:                                              ; preds = %198, %153
  %158 = phi i32 [ %190, %198 ], [ %53, %153 ]
  %159 = phi i32 [ %183, %198 ], [ %145, %153 ]
  %160 = phi ptr [ %200, %198 ], [ %51, %153 ]
  %161 = phi i32 [ %199, %198 ], [ %155, %153 ]
  %162 = icmp eq i32 %159, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

167:                                              ; preds = %163, %157
  %168 = phi i32 [ %164, %163 ], [ %159, %157 ]
  %169 = icmp eq i32 %158, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load ptr, ptr %24, align 8, !tbaa !25
  %172 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %172, ptr %16, align 8, !tbaa !27
  %173 = call i32 %3(ptr noundef %4, ptr noundef %171, i32 noundef %172) #6
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %1291

175:                                              ; preds = %170, %167
  %176 = phi ptr [ %171, %170 ], [ %160, %167 ]
  %177 = phi i32 [ %172, %170 ], [ %158, %167 ]
  %178 = call i32 @llvm.umin.i32(i32 %161, i32 %168)
  %179 = call i32 @llvm.umin.i32(i32 %178, i32 %177)
  %180 = load ptr, ptr %6, align 8, !tbaa !32
  %181 = zext i32 %179 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %180, i64 %181, i1 false)
  %182 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %168, i32 %179), !nosanitize !34
  %183 = extractvalue { i32, i1 } %182, 0, !nosanitize !34
  %184 = extractvalue { i32, i1 } %182, 1, !nosanitize !34
  br i1 %184, label %185, label %186, !prof !35, !nosanitize !34

185:                                              ; preds = %175
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

186:                                              ; preds = %175
  %187 = load ptr, ptr %6, align 8, !tbaa !32
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 %181
  store ptr %188, ptr %6, align 8, !tbaa !32
  %189 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %177, i32 %179), !nosanitize !34
  %190 = extractvalue { i32, i1 } %189, 0, !nosanitize !34
  %191 = extractvalue { i32, i1 } %189, 1, !nosanitize !34
  br i1 %191, label %192, label %193, !prof !35, !nosanitize !34

192:                                              ; preds = %186
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

193:                                              ; preds = %186
  %194 = load i32, ptr %41, align 4, !tbaa !38
  %195 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %194, i32 %179), !nosanitize !34
  %196 = extractvalue { i32, i1 } %195, 1, !nosanitize !34
  br i1 %196, label %197, label %198, !prof !35, !nosanitize !34

197:                                              ; preds = %193
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

198:                                              ; preds = %193
  %199 = extractvalue { i32, i1 } %195, 0, !nosanitize !34
  %200 = getelementptr inbounds nuw i8, ptr %176, i64 %181
  store i32 %199, ptr %41, align 4, !tbaa !38
  %201 = icmp eq i32 %199, 0
  br i1 %201, label %202, label %157, !llvm.loop !39

202:                                              ; preds = %198, %153
  %203 = phi ptr [ %51, %153 ], [ %200, %198 ]
  %204 = phi i32 [ %145, %153 ], [ %183, %198 ]
  %205 = phi i32 [ %53, %153 ], [ %190, %198 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %1282

206:                                              ; preds = %225, %58
  %207 = phi i64 [ %59, %58 ], [ %228, %225 ]
  %208 = phi i64 [ %54, %58 ], [ %226, %225 ]
  %209 = phi i32 [ %52, %58 ], [ %227, %225 ]
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

215:                                              ; preds = %211, %206
  %216 = phi i32 [ %212, %211 ], [ %209, %206 ]
  %217 = load ptr, ptr %6, align 8, !tbaa !32
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 1
  store ptr %218, ptr %6, align 8, !tbaa !32
  %219 = load i8, ptr %217, align 1, !tbaa !8
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, %207
  %222 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %208, i64 %221), !nosanitize !34
  %223 = extractvalue { i64, i1 } %222, 1, !nosanitize !34
  br i1 %223, label %224, label %225, !prof !35, !nosanitize !34

224:                                              ; preds = %215
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

225:                                              ; preds = %215
  %226 = extractvalue { i64, i1 } %222, 0, !nosanitize !34
  %227 = add i32 %216, -1
  %228 = add nuw nsw i64 %207, 8
  %229 = icmp samesign ult i64 %207, 6
  br i1 %229, label %206, label %230, !llvm.loop !40

230:                                              ; preds = %225
  %231 = trunc nuw nsw i64 %228 to i32
  br label %232

232:                                              ; preds = %230, %56
  %233 = phi i32 [ %52, %56 ], [ %227, %230 ]
  %234 = phi i64 [ %54, %56 ], [ %226, %230 ]
  %235 = phi i32 [ %55, %56 ], [ %231, %230 ]
  %236 = trunc i64 %234 to i32
  %237 = and i32 %236, 31
  %238 = add nuw nsw i32 %237, 257
  store i32 %238, ptr %28, align 4, !tbaa !41
  %239 = lshr i32 %236, 5
  %240 = and i32 %239, 31
  %241 = add nuw nsw i32 %240, 1
  store i32 %241, ptr %29, align 8, !tbaa !42
  %242 = lshr i32 %236, 10
  %243 = and i32 %242, 15
  %244 = add nuw nsw i32 %243, 4
  store i32 %244, ptr %30, align 8, !tbaa !43
  %245 = lshr i64 %234, 14
  %246 = add i32 %235, -14
  %247 = icmp samesign ugt i32 %237, 29
  %248 = icmp samesign ugt i32 %240, 29
  %249 = select i1 %247, i1 true, i1 %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %232
  store ptr @.str.3, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

251:                                              ; preds = %232
  store i32 0, ptr %31, align 4, !tbaa !44
  br label %256

252:                                              ; preds = %288
  %253 = icmp ult i32 %289, 19
  br i1 %253, label %254, label %311

254:                                              ; preds = %252
  %255 = zext nneg i32 %289 to i64
  br label %301

256:                                              ; preds = %288, %251
  %257 = phi i32 [ %289, %288 ], [ 0, %251 ]
  %258 = phi i32 [ %297, %288 ], [ %246, %251 ]
  %259 = phi i64 [ %298, %288 ], [ %245, %251 ]
  %260 = phi i32 [ %282, %288 ], [ %233, %251 ]
  %261 = icmp ult i32 %258, 3
  br i1 %261, label %262, label %280

262:                                              ; preds = %256
  %263 = or disjoint i32 %258, 8
  %264 = icmp eq i32 %260, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

269:                                              ; preds = %265, %262
  %270 = phi i32 [ %266, %265 ], [ %260, %262 ]
  %271 = load ptr, ptr %6, align 8, !tbaa !32
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 1
  store ptr %272, ptr %6, align 8, !tbaa !32
  %273 = load i8, ptr %271, align 1, !tbaa !8
  %274 = zext i8 %273 to i64
  %275 = zext nneg i32 %258 to i64
  %276 = shl nuw nsw i64 %274, %275
  %277 = add nuw nsw i64 %259, %276
  %278 = add i32 %270, -1
  %279 = load i32, ptr %31, align 4, !tbaa !44
  br label %280

280:                                              ; preds = %269, %256
  %281 = phi i32 [ %279, %269 ], [ %257, %256 ]
  %282 = phi i32 [ %278, %269 ], [ %260, %256 ]
  %283 = phi i64 [ %277, %269 ], [ %259, %256 ]
  %284 = phi i32 [ %263, %269 ], [ %258, %256 ]
  %285 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %281, i32 1), !nosanitize !34
  %286 = extractvalue { i32, i1 } %285, 1, !nosanitize !34
  br i1 %286, label %287, label %288, !prof !35, !nosanitize !34

287:                                              ; preds = %280
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

288:                                              ; preds = %280
  %289 = extractvalue { i32, i1 } %285, 0, !nosanitize !34
  %290 = trunc i64 %283 to i16
  %291 = and i16 %290, 7
  store i32 %289, ptr %31, align 4, !tbaa !44
  %292 = zext i32 %281 to i64
  %293 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %292
  %294 = load i16, ptr %293, align 2, !tbaa !45
  %295 = zext i16 %294 to i64
  %296 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %295
  store i16 %291, ptr %296, align 2, !tbaa !45
  %297 = add i32 %284, -3
  %298 = lshr i64 %283, 3
  %299 = load i32, ptr %30, align 8, !tbaa !43
  %300 = icmp ult i32 %289, %299
  br i1 %300, label %256, label %252, !llvm.loop !47

301:                                              ; preds = %301, %254
  %302 = phi i64 [ %255, %254 ], [ %303, %301 ]
  %303 = add nuw nsw i64 %302, 1
  %304 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %302
  %305 = load i16, ptr %304, align 2, !tbaa !45
  %306 = zext i16 %305 to i64
  %307 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %306
  store i16 0, ptr %307, align 2, !tbaa !45
  %308 = and i64 %303, 4294967295
  %309 = icmp eq i64 %308, 19
  br i1 %309, label %310, label %301, !llvm.loop !48

310:                                              ; preds = %301
  store i32 19, ptr %31, align 4, !tbaa !44
  br label %311

311:                                              ; preds = %310, %252
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 7, ptr %36, align 8, !tbaa !51
  %312 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %311
  store ptr @.str.4, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

315:                                              ; preds = %311
  store i32 0, ptr %31, align 4, !tbaa !44
  %316 = load i32, ptr %28, align 4, !tbaa !41
  %317 = load i32, ptr %29, align 8, !tbaa !42
  %318 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %316, i32 %317), !nosanitize !34
  %319 = extractvalue { i32, i1 } %318, 1, !nosanitize !34
  br i1 %319, label %323, label %320, !prof !52, !nosanitize !34

320:                                              ; preds = %315
  %321 = extractvalue { i32, i1 } %318, 0, !nosanitize !34
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %627, label %327

323:                                              ; preds = %619, %315
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

324:                                              ; preds = %619
  %325 = extractvalue { i32, i1 } %625, 0, !nosanitize !34
  %326 = icmp ult i32 %620, %325
  br i1 %326, label %327, label %627, !llvm.loop !53

327:                                              ; preds = %324, %320
  %328 = phi i32 [ %384, %324 ], [ %282, %320 ]
  %329 = phi i64 [ %395, %324 ], [ %298, %320 ]
  %330 = phi i32 [ %397, %324 ], [ %297, %320 ]
  %331 = load i32, ptr %36, align 8, !tbaa !51
  %332 = shl nsw i32 -1, %331
  %333 = xor i32 %332, -1
  %334 = trunc i64 %329 to i32
  %335 = load ptr, ptr %35, align 8, !tbaa !50
  %336 = and i32 %333, %334
  %337 = zext nneg i32 %336 to i64
  %338 = getelementptr inbounds nuw [4 x i8], ptr %335, i64 %337
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 1
  %340 = load i8, ptr %339, align 1, !tbaa !8
  %341 = zext i8 %340 to i32
  %342 = icmp ult i32 %330, %341
  br i1 %342, label %343, label %383

343:                                              ; preds = %327
  %344 = zext nneg i32 %330 to i64
  br label %345

345:                                              ; preds = %364, %343
  %346 = phi i64 [ %344, %343 ], [ %367, %364 ]
  %347 = phi i64 [ %329, %343 ], [ %365, %364 ]
  %348 = phi i32 [ %328, %343 ], [ %366, %364 ]
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %345
  %351 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

354:                                              ; preds = %350, %345
  %355 = phi i32 [ %351, %350 ], [ %348, %345 ]
  %356 = load ptr, ptr %6, align 8, !tbaa !32
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 1
  store ptr %357, ptr %6, align 8, !tbaa !32
  %358 = load i8, ptr %356, align 1, !tbaa !8
  %359 = zext i8 %358 to i64
  %360 = shl i64 %359, %346
  %361 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %347, i64 %360), !nosanitize !34
  %362 = extractvalue { i64, i1 } %361, 1, !nosanitize !34
  br i1 %362, label %363, label %364, !prof !35, !nosanitize !34

363:                                              ; preds = %354
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

364:                                              ; preds = %354
  %365 = extractvalue { i64, i1 } %361, 0, !nosanitize !34
  %366 = add i32 %355, -1
  %367 = add nuw nsw i64 %346, 8
  %368 = load i32, ptr %36, align 8, !tbaa !51
  %369 = shl nsw i32 -1, %368
  %370 = xor i32 %369, -1
  %371 = trunc i64 %365 to i32
  %372 = load ptr, ptr %35, align 8, !tbaa !50
  %373 = and i32 %370, %371
  %374 = zext nneg i32 %373 to i64
  %375 = getelementptr inbounds nuw [4 x i8], ptr %372, i64 %374
  %376 = getelementptr inbounds nuw i8, ptr %375, i64 1
  %377 = load i8, ptr %376, align 1, !tbaa !8
  %378 = zext i8 %377 to i64
  %379 = icmp samesign ult i64 %367, %378
  br i1 %379, label %345, label %380

380:                                              ; preds = %364
  %381 = zext i8 %377 to i32
  %382 = trunc nuw nsw i64 %367 to i32
  br label %383

383:                                              ; preds = %380, %327
  %384 = phi i32 [ %328, %327 ], [ %366, %380 ]
  %385 = phi i64 [ %329, %327 ], [ %365, %380 ]
  %386 = phi i32 [ %330, %327 ], [ %382, %380 ]
  %387 = phi i8 [ %340, %327 ], [ %377, %380 ]
  %388 = phi ptr [ %338, %327 ], [ %375, %380 ]
  %389 = phi i32 [ %341, %327 ], [ %381, %380 ]
  %390 = getelementptr inbounds nuw i8, ptr %388, i64 2
  %391 = load i16, ptr %390, align 2, !tbaa !45
  %392 = icmp ult i16 %391, 16
  br i1 %392, label %393, label %405

393:                                              ; preds = %383
  %394 = zext nneg i8 %387 to i64
  %395 = lshr i64 %385, %394
  %396 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %386, i32 %389), !nosanitize !34
  %397 = extractvalue { i32, i1 } %396, 0, !nosanitize !34
  %398 = extractvalue { i32, i1 } %396, 1, !nosanitize !34
  br i1 %398, label %399, label %400, !prof !35, !nosanitize !34

399:                                              ; preds = %393
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

400:                                              ; preds = %393
  %401 = load i32, ptr %31, align 4, !tbaa !44
  %402 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %401, i32 1), !nosanitize !34
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !34
  br i1 %403, label %404, label %619, !prof !35, !nosanitize !34

404:                                              ; preds = %400
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

405:                                              ; preds = %383
  switch i16 %391, label %418 [
    i16 16, label %412
    i16 17, label %406
  ]

406:                                              ; preds = %405
  %407 = add nuw nsw i32 %389, 3
  %408 = icmp ult i32 %386, %407
  br i1 %408, label %409, label %499

409:                                              ; preds = %406
  %410 = zext nneg i32 %386 to i64
  %411 = zext nneg i32 %407 to i64
  br label %473

412:                                              ; preds = %405
  %413 = add nuw nsw i32 %389, 2
  %414 = icmp ult i32 %386, %413
  br i1 %414, label %415, label %450

415:                                              ; preds = %412
  %416 = zext nneg i32 %386 to i64
  %417 = zext nneg i32 %413 to i64
  br label %424

418:                                              ; preds = %405
  %419 = add nuw nsw i32 %389, 7
  %420 = icmp ult i32 %386, %419
  br i1 %420, label %421, label %540

421:                                              ; preds = %418
  %422 = zext nneg i32 %386 to i64
  %423 = zext nneg i32 %419 to i64
  br label %514

424:                                              ; preds = %443, %415
  %425 = phi i64 [ %416, %415 ], [ %446, %443 ]
  %426 = phi i64 [ %385, %415 ], [ %444, %443 ]
  %427 = phi i32 [ %384, %415 ], [ %445, %443 ]
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424
  %430 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %429
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

433:                                              ; preds = %429, %424
  %434 = phi i32 [ %430, %429 ], [ %427, %424 ]
  %435 = load ptr, ptr %6, align 8, !tbaa !32
  %436 = getelementptr inbounds nuw i8, ptr %435, i64 1
  store ptr %436, ptr %6, align 8, !tbaa !32
  %437 = load i8, ptr %435, align 1, !tbaa !8
  %438 = zext i8 %437 to i64
  %439 = shl i64 %438, %425
  %440 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %426, i64 %439), !nosanitize !34
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !34
  br i1 %441, label %442, label %443, !prof !35, !nosanitize !34

442:                                              ; preds = %433
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

443:                                              ; preds = %433
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !34
  %445 = add i32 %434, -1
  %446 = add nuw nsw i64 %425, 8
  %447 = icmp samesign ult i64 %446, %417
  br i1 %447, label %424, label %448, !llvm.loop !54

448:                                              ; preds = %443
  %449 = trunc nuw nsw i64 %446 to i32
  br label %450

450:                                              ; preds = %448, %412
  %451 = phi i32 [ %384, %412 ], [ %445, %448 ]
  %452 = phi i64 [ %385, %412 ], [ %444, %448 ]
  %453 = phi i32 [ %386, %412 ], [ %449, %448 ]
  %454 = zext nneg i8 %387 to i64
  %455 = lshr i64 %452, %454
  %456 = sub nuw i32 %453, %389
  %457 = load i32, ptr %31, align 4, !tbaa !44
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %450
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

460:                                              ; preds = %450
  %461 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %456, i32 2), !nosanitize !34
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !34
  br i1 %462, label %463, label %464, !prof !35, !nosanitize !34

463:                                              ; preds = %460
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

464:                                              ; preds = %460
  %465 = trunc i64 %455 to i32
  %466 = and i32 %465, 3
  %467 = add nuw nsw i32 %466, 3
  %468 = add i32 %457, -1
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %469
  %471 = load i16, ptr %470, align 2, !tbaa !45
  %472 = lshr i64 %455, 2
  br label %555

473:                                              ; preds = %492, %409
  %474 = phi i64 [ %410, %409 ], [ %495, %492 ]
  %475 = phi i64 [ %385, %409 ], [ %493, %492 ]
  %476 = phi i32 [ %384, %409 ], [ %494, %492 ]
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %482

478:                                              ; preds = %473
  %479 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %478
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

482:                                              ; preds = %478, %473
  %483 = phi i32 [ %479, %478 ], [ %476, %473 ]
  %484 = load ptr, ptr %6, align 8, !tbaa !32
  %485 = getelementptr inbounds nuw i8, ptr %484, i64 1
  store ptr %485, ptr %6, align 8, !tbaa !32
  %486 = load i8, ptr %484, align 1, !tbaa !8
  %487 = zext i8 %486 to i64
  %488 = shl i64 %487, %474
  %489 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 %488), !nosanitize !34
  %490 = extractvalue { i64, i1 } %489, 1, !nosanitize !34
  br i1 %490, label %491, label %492, !prof !35, !nosanitize !34

491:                                              ; preds = %482
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

492:                                              ; preds = %482
  %493 = extractvalue { i64, i1 } %489, 0, !nosanitize !34
  %494 = add i32 %483, -1
  %495 = add nuw nsw i64 %474, 8
  %496 = icmp samesign ult i64 %495, %411
  br i1 %496, label %473, label %497, !llvm.loop !55

497:                                              ; preds = %492
  %498 = trunc nuw nsw i64 %495 to i32
  br label %499

499:                                              ; preds = %497, %406
  %500 = phi i32 [ %384, %406 ], [ %494, %497 ]
  %501 = phi i64 [ %385, %406 ], [ %493, %497 ]
  %502 = phi i32 [ %386, %406 ], [ %498, %497 ]
  %503 = sub nuw i32 %502, %389
  %504 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %503, i32 3), !nosanitize !34
  %505 = extractvalue { i32, i1 } %504, 1, !nosanitize !34
  br i1 %505, label %506, label %507, !prof !35, !nosanitize !34

506:                                              ; preds = %499
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

507:                                              ; preds = %499
  %508 = zext nneg i8 %387 to i64
  %509 = lshr i64 %501, %508
  %510 = trunc i64 %509 to i32
  %511 = and i32 %510, 7
  %512 = add nuw nsw i32 %511, 3
  %513 = lshr i64 %509, 3
  br label %555

514:                                              ; preds = %533, %421
  %515 = phi i64 [ %422, %421 ], [ %536, %533 ]
  %516 = phi i64 [ %385, %421 ], [ %534, %533 ]
  %517 = phi i32 [ %384, %421 ], [ %535, %533 ]
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %514
  %520 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %523

522:                                              ; preds = %519
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

523:                                              ; preds = %519, %514
  %524 = phi i32 [ %520, %519 ], [ %517, %514 ]
  %525 = load ptr, ptr %6, align 8, !tbaa !32
  %526 = getelementptr inbounds nuw i8, ptr %525, i64 1
  store ptr %526, ptr %6, align 8, !tbaa !32
  %527 = load i8, ptr %525, align 1, !tbaa !8
  %528 = zext i8 %527 to i64
  %529 = shl i64 %528, %515
  %530 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %516, i64 %529), !nosanitize !34
  %531 = extractvalue { i64, i1 } %530, 1, !nosanitize !34
  br i1 %531, label %532, label %533, !prof !35, !nosanitize !34

532:                                              ; preds = %523
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

533:                                              ; preds = %523
  %534 = extractvalue { i64, i1 } %530, 0, !nosanitize !34
  %535 = add i32 %524, -1
  %536 = add nuw nsw i64 %515, 8
  %537 = icmp samesign ult i64 %536, %423
  br i1 %537, label %514, label %538, !llvm.loop !56

538:                                              ; preds = %533
  %539 = trunc nuw nsw i64 %536 to i32
  br label %540

540:                                              ; preds = %538, %418
  %541 = phi i32 [ %384, %418 ], [ %535, %538 ]
  %542 = phi i64 [ %385, %418 ], [ %534, %538 ]
  %543 = phi i32 [ %386, %418 ], [ %539, %538 ]
  %544 = sub nuw i32 %543, %389
  %545 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %544, i32 7), !nosanitize !34
  %546 = extractvalue { i32, i1 } %545, 1, !nosanitize !34
  br i1 %546, label %547, label %548, !prof !35, !nosanitize !34

547:                                              ; preds = %540
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

548:                                              ; preds = %540
  %549 = zext nneg i8 %387 to i64
  %550 = lshr i64 %542, %549
  %551 = trunc i64 %550 to i32
  %552 = and i32 %551, 127
  %553 = add nuw nsw i32 %552, 11
  %554 = lshr i64 %550, 7
  br label %555

555:                                              ; preds = %548, %507, %464
  %556 = phi i32 [ %451, %464 ], [ %500, %507 ], [ %541, %548 ]
  %557 = phi i64 [ %472, %464 ], [ %513, %507 ], [ %554, %548 ]
  %558 = phi { i32, i1 } [ %461, %464 ], [ %504, %507 ], [ %545, %548 ]
  %559 = phi i32 [ %467, %464 ], [ %512, %507 ], [ %553, %548 ]
  %560 = phi i16 [ %471, %464 ], [ 0, %507 ], [ 0, %548 ]
  %561 = extractvalue { i32, i1 } %558, 0
  %562 = load i32, ptr %31, align 4, !tbaa !44
  %563 = freeze i32 %562
  %564 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %563, i32 %559), !nosanitize !34
  %565 = extractvalue { i32, i1 } %564, 0, !nosanitize !34
  %566 = extractvalue { i32, i1 } %564, 1, !nosanitize !34
  br i1 %566, label %567, label %568, !prof !35, !nosanitize !34

567:                                              ; preds = %555
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

568:                                              ; preds = %555
  %569 = load i32, ptr %28, align 4, !tbaa !41
  %570 = load i32, ptr %29, align 8, !tbaa !42
  %571 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %569, i32 %570), !nosanitize !34
  %572 = extractvalue { i32, i1 } %571, 1, !nosanitize !34
  br i1 %572, label %573, label %574, !prof !35, !nosanitize !34

573:                                              ; preds = %568
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

574:                                              ; preds = %568
  %575 = extractvalue { i32, i1 } %571, 0, !nosanitize !34
  %576 = icmp ugt i32 %565, %575
  br i1 %576, label %595, label %577

577:                                              ; preds = %574
  %578 = icmp eq i32 %563, -1
  br i1 %578, label %609, label %579, !prof !52, !nosanitize !34

579:                                              ; preds = %577
  %580 = zext i32 %563 to i64
  %581 = add nsw i32 %559, -1
  %582 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %581, 0
  %583 = and i64 %580, 1
  %584 = icmp eq i64 %583, 0
  br i1 %584, label %585, label %591, !prof !52

585:                                              ; preds = %579
  %586 = or disjoint i64 %580, 1
  %587 = trunc nuw i64 %586 to i32
  store i32 %587, ptr %31, align 4, !tbaa !44
  %588 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %580
  store i16 %560, ptr %588, align 2, !tbaa !45
  %589 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %581, i32 1), !nosanitize !34
  %590 = extractvalue { i32, i1 } %589, 1, !nosanitize !34
  br i1 %590, label %598, label %591, !prof !57, !llvm.loop !58, !nosanitize !34

591:                                              ; preds = %585, %579
  %592 = phi { i32, i1 } [ %582, %579 ], [ %589, %585 ]
  %593 = phi i64 [ %580, %579 ], [ %586, %585 ]
  %594 = icmp eq i32 %563, -2
  br i1 %594, label %609, label %610, !prof !52

595:                                              ; preds = %574
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

596:                                              ; preds = %610, %599
  %597 = phi i32 [ %602, %599 ], [ %615, %610 ]
  store i32 %597, ptr %31, align 4, !tbaa !44
  br label %598

598:                                              ; preds = %596, %585
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

599:                                              ; preds = %610
  %600 = extractvalue { i32, i1 } %617, 0
  %601 = add nuw nsw i64 %612, 2
  %602 = trunc i64 %601 to i32
  %603 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %614
  store i16 %560, ptr %603, align 2, !tbaa !45
  %604 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %600, i32 1), !nosanitize !34
  %605 = extractvalue { i32, i1 } %604, 1, !nosanitize !34
  br i1 %605, label %596, label %606, !prof !57, !llvm.loop !58, !nosanitize !34

606:                                              ; preds = %599
  %607 = icmp eq i64 %601, 4294967295
  br i1 %607, label %608, label %610, !prof !57, !llvm.loop !59, !nosanitize !34

608:                                              ; preds = %606
  store i32 %602, ptr %31, align 4, !tbaa !44
  br label %609

609:                                              ; preds = %608, %591, %577
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

610:                                              ; preds = %606, %591
  %611 = phi { i32, i1 } [ %604, %606 ], [ %592, %591 ]
  %612 = phi i64 [ %601, %606 ], [ %593, %591 ]
  %613 = extractvalue { i32, i1 } %611, 0
  %614 = add nuw nsw i64 %612, 1
  %615 = trunc i64 %614 to i32
  %616 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %612
  store i16 %560, ptr %616, align 2, !tbaa !45
  %617 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %613, i32 1), !nosanitize !34
  %618 = extractvalue { i32, i1 } %617, 1, !nosanitize !34
  br i1 %618, label %596, label %599, !prof !57, !llvm.loop !58, !nosanitize !34

619:                                              ; preds = %400
  %620 = extractvalue { i32, i1 } %402, 0, !nosanitize !34
  store i32 %620, ptr %31, align 4, !tbaa !44
  %621 = zext i32 %401 to i64
  %622 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %621
  store i16 %391, ptr %622, align 2, !tbaa !45
  %623 = load i32, ptr %28, align 4, !tbaa !41
  %624 = load i32, ptr %29, align 8, !tbaa !42
  %625 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %623, i32 %624), !nosanitize !34
  %626 = extractvalue { i32, i1 } %625, 1, !nosanitize !34
  br i1 %626, label %323, label %324, !prof !57, !llvm.loop !53, !nosanitize !34

627:                                              ; preds = %324, %320
  %628 = phi i32 [ %316, %320 ], [ %623, %324 ]
  %629 = phi i32 [ %297, %320 ], [ %397, %324 ]
  %630 = phi i64 [ %298, %320 ], [ %395, %324 ]
  %631 = phi i32 [ %282, %320 ], [ %384, %324 ]
  %632 = load i32, ptr %14, align 8, !tbaa !29
  %633 = icmp eq i32 %632, 16209
  br i1 %633, label %1282, label %634

634:                                              ; preds = %627
  %635 = load i16, ptr %38, align 8, !tbaa !45
  %636 = icmp eq i16 %635, 0
  br i1 %636, label %637, label %638

637:                                              ; preds = %634
  store ptr @.str.6, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

638:                                              ; preds = %634
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 9, ptr %36, align 8, !tbaa !51
  %639 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %628, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %642, label %641

641:                                              ; preds = %638
  store ptr @.str.7, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

642:                                              ; preds = %638
  %643 = load ptr, ptr %34, align 8, !tbaa !49
  store ptr %643, ptr %39, align 8, !tbaa !61
  store i32 6, ptr %40, align 4, !tbaa !62
  %644 = load i32, ptr %28, align 4, !tbaa !41
  %645 = zext i32 %644 to i64
  %646 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %645
  %647 = load i32, ptr %29, align 8, !tbaa !42
  %648 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %646, i32 noundef %647, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #6
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %651, label %650

650:                                              ; preds = %642
  store ptr @.str.8, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

651:                                              ; preds = %642
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %652

652:                                              ; preds = %651, %49
  %653 = phi i32 [ %631, %651 ], [ %52, %49 ]
  %654 = phi i64 [ %630, %651 ], [ %54, %49 ]
  %655 = phi i32 [ %629, %651 ], [ %55, %49 ]
  %656 = icmp ugt i32 %653, 5
  %657 = icmp ugt i32 %53, 257
  %658 = select i1 %656, i1 %657, i1 false
  br i1 %658, label %674, label %659

659:                                              ; preds = %652
  %660 = load i32, ptr %36, align 8, !tbaa !51
  %661 = shl nsw i32 -1, %660
  %662 = xor i32 %661, -1
  %663 = trunc i64 %654 to i32
  %664 = load ptr, ptr %35, align 8, !tbaa !50
  %665 = and i32 %662, %663
  %666 = zext nneg i32 %665 to i64
  %667 = getelementptr inbounds nuw [4 x i8], ptr %664, i64 %666
  %668 = getelementptr inbounds nuw i8, ptr %667, i64 1
  %669 = load i8, ptr %668, align 1, !tbaa !8
  %670 = zext i8 %669 to i32
  %671 = icmp ult i32 %655, %670
  br i1 %671, label %672, label %721

672:                                              ; preds = %659
  %673 = zext nneg i32 %655 to i64
  br label %683

674:                                              ; preds = %652
  store ptr %51, ptr %44, align 8, !tbaa !63
  store i32 %53, ptr %45, align 8, !tbaa !64
  %675 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %675, ptr %0, align 8, !tbaa !31
  store i32 %653, ptr %46, align 8, !tbaa !33
  store i64 %654, ptr %47, align 8, !tbaa !65
  store i32 %655, ptr %48, align 8, !tbaa !66
  %676 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %676) #6
  %677 = load ptr, ptr %44, align 8, !tbaa !63
  %678 = load i32, ptr %45, align 8, !tbaa !64
  %679 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %679, ptr %6, align 8, !tbaa !32
  %680 = load i32, ptr %46, align 8, !tbaa !33
  %681 = load i64, ptr %47, align 8, !tbaa !65
  %682 = load i32, ptr %48, align 8, !tbaa !66
  br label %1282

683:                                              ; preds = %702, %672
  %684 = phi i64 [ %673, %672 ], [ %705, %702 ]
  %685 = phi i64 [ %654, %672 ], [ %703, %702 ]
  %686 = phi i32 [ %653, %672 ], [ %704, %702 ]
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %692

688:                                              ; preds = %683
  %689 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %692

691:                                              ; preds = %688
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

692:                                              ; preds = %688, %683
  %693 = phi i32 [ %689, %688 ], [ %686, %683 ]
  %694 = load ptr, ptr %6, align 8, !tbaa !32
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 1
  store ptr %695, ptr %6, align 8, !tbaa !32
  %696 = load i8, ptr %694, align 1, !tbaa !8
  %697 = zext i8 %696 to i64
  %698 = shl i64 %697, %684
  %699 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %685, i64 %698), !nosanitize !34
  %700 = extractvalue { i64, i1 } %699, 1, !nosanitize !34
  br i1 %700, label %701, label %702, !prof !35, !nosanitize !34

701:                                              ; preds = %692
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

702:                                              ; preds = %692
  %703 = extractvalue { i64, i1 } %699, 0, !nosanitize !34
  %704 = add i32 %693, -1
  %705 = add nuw nsw i64 %684, 8
  %706 = load i32, ptr %36, align 8, !tbaa !51
  %707 = shl nsw i32 -1, %706
  %708 = xor i32 %707, -1
  %709 = trunc i64 %703 to i32
  %710 = load ptr, ptr %35, align 8, !tbaa !50
  %711 = and i32 %708, %709
  %712 = zext nneg i32 %711 to i64
  %713 = getelementptr inbounds nuw [4 x i8], ptr %710, i64 %712
  %714 = getelementptr inbounds nuw i8, ptr %713, i64 1
  %715 = load i8, ptr %714, align 1, !tbaa !8
  %716 = zext i8 %715 to i64
  %717 = icmp samesign ult i64 %705, %716
  br i1 %717, label %683, label %718

718:                                              ; preds = %702
  %719 = zext i8 %715 to i32
  %720 = trunc nuw nsw i64 %705 to i32
  br label %721

721:                                              ; preds = %718, %659
  %722 = phi ptr [ %664, %659 ], [ %710, %718 ]
  %723 = phi i32 [ %653, %659 ], [ %704, %718 ]
  %724 = phi i64 [ %654, %659 ], [ %703, %718 ]
  %725 = phi i32 [ %655, %659 ], [ %720, %718 ]
  %726 = phi ptr [ %667, %659 ], [ %713, %718 ]
  %727 = phi i8 [ %669, %659 ], [ %715, %718 ]
  %728 = phi i32 [ %670, %659 ], [ %719, %718 ]
  %729 = getelementptr inbounds nuw i8, ptr %726, i64 2
  %730 = load i16, ptr %729, align 2, !tbaa !45
  %731 = load i8, ptr %726, align 2, !tbaa !8
  %732 = add i8 %731, -1
  %733 = icmp ult i8 %732, 15
  br i1 %733, label %734, label %799

734:                                              ; preds = %721
  %735 = zext nneg i8 %731 to i32
  %736 = add nuw nsw i32 %728, %735
  %737 = shl nsw i32 -1, %736
  %738 = xor i32 %737, -1
  %739 = zext i16 %730 to i32
  %740 = trunc i64 %724 to i32
  %741 = and i32 %740, %738
  %742 = lshr i32 %741, %728
  %743 = add nuw i32 %742, %739
  %744 = zext i32 %743 to i64
  %745 = getelementptr inbounds nuw [4 x i8], ptr %722, i64 %744
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 1
  %747 = load i8, ptr %746, align 1, !tbaa !8
  %748 = zext i8 %747 to i32
  %749 = add nuw nsw i32 %728, %748
  %750 = icmp ugt i32 %749, %725
  br i1 %750, label %751, label %787

751:                                              ; preds = %771, %734
  %752 = phi i32 [ %774, %771 ], [ %725, %734 ]
  %753 = phi i64 [ %772, %771 ], [ %724, %734 ]
  %754 = phi i32 [ %773, %771 ], [ %723, %734 ]
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %760

756:                                              ; preds = %751
  %757 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %760

759:                                              ; preds = %756
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

760:                                              ; preds = %756, %751
  %761 = phi i32 [ %757, %756 ], [ %754, %751 ]
  %762 = load ptr, ptr %6, align 8, !tbaa !32
  %763 = getelementptr inbounds nuw i8, ptr %762, i64 1
  store ptr %763, ptr %6, align 8, !tbaa !32
  %764 = load i8, ptr %762, align 1, !tbaa !8
  %765 = zext i8 %764 to i64
  %766 = zext nneg i32 %752 to i64
  %767 = shl i64 %765, %766
  %768 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %753, i64 %767), !nosanitize !34
  %769 = extractvalue { i64, i1 } %768, 1, !nosanitize !34
  br i1 %769, label %770, label %771, !prof !35, !nosanitize !34

770:                                              ; preds = %760
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

771:                                              ; preds = %760
  %772 = extractvalue { i64, i1 } %768, 0, !nosanitize !34
  %773 = add i32 %761, -1
  %774 = add nuw nsw i32 %752, 8
  %775 = load ptr, ptr %35, align 8, !tbaa !50
  %776 = trunc i64 %772 to i32
  %777 = and i32 %776, %738
  %778 = lshr i32 %777, %728
  %779 = add nuw i32 %778, %739
  %780 = zext i32 %779 to i64
  %781 = getelementptr inbounds nuw [4 x i8], ptr %775, i64 %780
  %782 = getelementptr inbounds nuw i8, ptr %781, i64 1
  %783 = load i8, ptr %782, align 1, !tbaa !8
  %784 = zext i8 %783 to i32
  %785 = add nuw nsw i32 %728, %784
  %786 = icmp ugt i32 %785, %774
  br i1 %786, label %751, label %787

787:                                              ; preds = %771, %734
  %788 = phi i32 [ %723, %734 ], [ %773, %771 ]
  %789 = phi i64 [ %724, %734 ], [ %772, %771 ]
  %790 = phi i32 [ %725, %734 ], [ %774, %771 ]
  %791 = phi ptr [ %745, %734 ], [ %781, %771 ]
  %792 = phi i8 [ %747, %734 ], [ %783, %771 ]
  %793 = getelementptr inbounds nuw i8, ptr %791, i64 2
  %794 = load i16, ptr %793, align 2, !tbaa !45
  %795 = load i8, ptr %791, align 2, !tbaa !8
  %796 = sub nuw i32 %790, %728
  %797 = zext nneg i8 %727 to i64
  %798 = lshr i64 %789, %797
  br label %799

799:                                              ; preds = %787, %721
  %800 = phi i32 [ %788, %787 ], [ %723, %721 ]
  %801 = phi i64 [ %798, %787 ], [ %724, %721 ]
  %802 = phi i32 [ %796, %787 ], [ %725, %721 ]
  %803 = phi i16 [ %794, %787 ], [ %730, %721 ]
  %804 = phi i8 [ %792, %787 ], [ %727, %721 ]
  %805 = phi i8 [ %795, %787 ], [ %731, %721 ]
  %806 = zext i8 %804 to i32
  %807 = zext nneg i8 %804 to i64
  %808 = lshr i64 %801, %807
  %809 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %802, i32 %806), !nosanitize !34
  %810 = extractvalue { i32, i1 } %809, 0, !nosanitize !34
  %811 = extractvalue { i32, i1 } %809, 1, !nosanitize !34
  br i1 %811, label %812, label %813, !prof !35, !nosanitize !34

812:                                              ; preds = %799
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

813:                                              ; preds = %799
  %814 = zext i16 %803 to i32
  store i32 %814, ptr %41, align 4, !tbaa !38
  %815 = zext i8 %805 to i32
  %816 = icmp eq i8 %805, 0
  br i1 %816, label %817, label %837

817:                                              ; preds = %813
  %818 = icmp eq i32 %53, 0
  br i1 %818, label %819, label %826

819:                                              ; preds = %817
  %820 = load ptr, ptr %24, align 8, !tbaa !25
  %821 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %821, ptr %16, align 8, !tbaa !27
  %822 = call i32 %3(ptr noundef %4, ptr noundef %820, i32 noundef %821) #6
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %1291

824:                                              ; preds = %819
  %825 = load i32, ptr %41, align 4, !tbaa !38
  br label %826

826:                                              ; preds = %824, %817
  %827 = phi i32 [ %825, %824 ], [ %814, %817 ]
  %828 = phi ptr [ %820, %824 ], [ %51, %817 ]
  %829 = phi i32 [ %821, %824 ], [ %53, %817 ]
  %830 = trunc i32 %827 to i8
  store i8 %830, ptr %828, align 1, !tbaa !8
  %831 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %829, i32 1), !nosanitize !34
  %832 = extractvalue { i32, i1 } %831, 1, !nosanitize !34
  br i1 %832, label %833, label %834, !prof !35, !nosanitize !34

833:                                              ; preds = %826
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

834:                                              ; preds = %826
  %835 = extractvalue { i32, i1 } %831, 0, !nosanitize !34
  %836 = getelementptr inbounds nuw i8, ptr %828, i64 1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %1282

837:                                              ; preds = %813
  %838 = and i32 %815, 32
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %841, label %840

840:                                              ; preds = %837
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %1282

841:                                              ; preds = %837
  %842 = and i32 %815, 64
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %845, label %844

844:                                              ; preds = %841
  store ptr @.str.9, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

845:                                              ; preds = %841
  %846 = and i32 %815, 15
  store i32 %846, ptr %42, align 4, !tbaa !67
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %905, label %848

848:                                              ; preds = %845
  %849 = icmp ult i32 %810, %846
  br i1 %849, label %850, label %883

850:                                              ; preds = %848
  %851 = zext nneg i32 %810 to i64
  br label %852

852:                                              ; preds = %876, %850
  %853 = phi i64 [ %851, %850 ], [ %877, %876 ]
  %854 = phi i64 [ %808, %850 ], [ %870, %876 ]
  %855 = phi i32 [ %800, %850 ], [ %863, %876 ]
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %857, label %861

857:                                              ; preds = %852
  %858 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %861

860:                                              ; preds = %857
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

861:                                              ; preds = %857, %852
  %862 = phi i32 [ %858, %857 ], [ %855, %852 ]
  %863 = add i32 %862, -1
  %864 = load ptr, ptr %6, align 8, !tbaa !32
  %865 = getelementptr inbounds nuw i8, ptr %864, i64 1
  store ptr %865, ptr %6, align 8, !tbaa !32
  %866 = load i8, ptr %864, align 1, !tbaa !8
  %867 = zext i8 %866 to i64
  %868 = shl i64 %867, %853
  %869 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %854, i64 %868), !nosanitize !34
  %870 = extractvalue { i64, i1 } %869, 0, !nosanitize !34
  %871 = extractvalue { i64, i1 } %869, 1, !nosanitize !34
  br i1 %871, label %872, label %873, !prof !35, !nosanitize !34

872:                                              ; preds = %861
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

873:                                              ; preds = %861
  %874 = icmp samesign ugt i64 %853, 4294967287
  br i1 %874, label %875, label %876, !prof !35, !nosanitize !34

875:                                              ; preds = %873
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

876:                                              ; preds = %873
  %877 = add nuw nsw i64 %853, 8
  %878 = trunc nuw i64 %877 to i32
  %879 = load i32, ptr %42, align 4, !tbaa !67
  %880 = icmp ugt i32 %879, %878
  br i1 %880, label %852, label %881, !llvm.loop !68

881:                                              ; preds = %876
  %882 = load i32, ptr %41, align 4, !tbaa !38
  br label %883

883:                                              ; preds = %881, %848
  %884 = phi i32 [ %814, %848 ], [ %882, %881 ]
  %885 = phi i32 [ %800, %848 ], [ %863, %881 ]
  %886 = phi i64 [ %808, %848 ], [ %870, %881 ]
  %887 = phi i32 [ %810, %848 ], [ %878, %881 ]
  %888 = phi i32 [ %846, %848 ], [ %879, %881 ]
  %889 = shl nsw i32 -1, %888
  %890 = xor i32 %889, -1
  %891 = trunc i64 %886 to i32
  %892 = and i32 %890, %891
  %893 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %884, i32 %892), !nosanitize !34
  %894 = extractvalue { i32, i1 } %893, 1, !nosanitize !34
  br i1 %894, label %895, label %896, !prof !35, !nosanitize !34

895:                                              ; preds = %883
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

896:                                              ; preds = %883
  %897 = extractvalue { i32, i1 } %893, 0, !nosanitize !34
  store i32 %897, ptr %41, align 4, !tbaa !38
  %898 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %887, i32 %888), !nosanitize !34
  %899 = extractvalue { i32, i1 } %898, 1, !nosanitize !34
  br i1 %899, label %900, label %901, !prof !35, !nosanitize !34

900:                                              ; preds = %896
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

901:                                              ; preds = %896
  %902 = extractvalue { i32, i1 } %898, 0, !nosanitize !34
  %903 = zext nneg i32 %888 to i64
  %904 = lshr i64 %886, %903
  br label %905

905:                                              ; preds = %901, %845
  %906 = phi i32 [ %885, %901 ], [ %800, %845 ]
  %907 = phi i64 [ %904, %901 ], [ %808, %845 ]
  %908 = phi i32 [ %902, %901 ], [ %810, %845 ]
  %909 = load i32, ptr %40, align 4, !tbaa !62
  %910 = shl nsw i32 -1, %909
  %911 = xor i32 %910, -1
  %912 = trunc i64 %907 to i32
  %913 = load ptr, ptr %39, align 8, !tbaa !61
  %914 = and i32 %911, %912
  %915 = zext nneg i32 %914 to i64
  %916 = getelementptr inbounds nuw [4 x i8], ptr %913, i64 %915
  %917 = getelementptr inbounds nuw i8, ptr %916, i64 1
  %918 = load i8, ptr %917, align 1, !tbaa !8
  %919 = zext i8 %918 to i32
  %920 = icmp ult i32 %908, %919
  br i1 %920, label %921, label %961

921:                                              ; preds = %905
  %922 = zext nneg i32 %908 to i64
  br label %923

923:                                              ; preds = %942, %921
  %924 = phi i64 [ %922, %921 ], [ %945, %942 ]
  %925 = phi i64 [ %907, %921 ], [ %943, %942 ]
  %926 = phi i32 [ %906, %921 ], [ %944, %942 ]
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %932

928:                                              ; preds = %923
  %929 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %931, label %932

931:                                              ; preds = %928
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

932:                                              ; preds = %928, %923
  %933 = phi i32 [ %929, %928 ], [ %926, %923 ]
  %934 = load ptr, ptr %6, align 8, !tbaa !32
  %935 = getelementptr inbounds nuw i8, ptr %934, i64 1
  store ptr %935, ptr %6, align 8, !tbaa !32
  %936 = load i8, ptr %934, align 1, !tbaa !8
  %937 = zext i8 %936 to i64
  %938 = shl i64 %937, %924
  %939 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %925, i64 %938), !nosanitize !34
  %940 = extractvalue { i64, i1 } %939, 1, !nosanitize !34
  br i1 %940, label %941, label %942, !prof !35, !nosanitize !34

941:                                              ; preds = %932
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

942:                                              ; preds = %932
  %943 = extractvalue { i64, i1 } %939, 0, !nosanitize !34
  %944 = add i32 %933, -1
  %945 = add nuw nsw i64 %924, 8
  %946 = load i32, ptr %40, align 4, !tbaa !62
  %947 = shl nsw i32 -1, %946
  %948 = xor i32 %947, -1
  %949 = trunc i64 %943 to i32
  %950 = load ptr, ptr %39, align 8, !tbaa !61
  %951 = and i32 %948, %949
  %952 = zext nneg i32 %951 to i64
  %953 = getelementptr inbounds nuw [4 x i8], ptr %950, i64 %952
  %954 = getelementptr inbounds nuw i8, ptr %953, i64 1
  %955 = load i8, ptr %954, align 1, !tbaa !8
  %956 = zext i8 %955 to i64
  %957 = icmp samesign ult i64 %945, %956
  br i1 %957, label %923, label %958

958:                                              ; preds = %942
  %959 = zext i8 %955 to i32
  %960 = trunc nuw nsw i64 %945 to i32
  br label %961

961:                                              ; preds = %958, %905
  %962 = phi ptr [ %913, %905 ], [ %950, %958 ]
  %963 = phi i32 [ %906, %905 ], [ %944, %958 ]
  %964 = phi i64 [ %907, %905 ], [ %943, %958 ]
  %965 = phi i32 [ %908, %905 ], [ %960, %958 ]
  %966 = phi ptr [ %916, %905 ], [ %953, %958 ]
  %967 = phi i8 [ %918, %905 ], [ %955, %958 ]
  %968 = phi i32 [ %919, %905 ], [ %959, %958 ]
  %969 = getelementptr inbounds nuw i8, ptr %966, i64 2
  %970 = load i16, ptr %969, align 2, !tbaa !45
  %971 = load i8, ptr %966, align 2, !tbaa !8
  %972 = icmp ult i8 %971, 16
  br i1 %972, label %973, label %1038

973:                                              ; preds = %961
  %974 = zext nneg i8 %971 to i32
  %975 = add nuw nsw i32 %968, %974
  %976 = shl nsw i32 -1, %975
  %977 = xor i32 %976, -1
  %978 = zext i16 %970 to i32
  %979 = trunc i64 %964 to i32
  %980 = and i32 %979, %977
  %981 = lshr i32 %980, %968
  %982 = add nuw i32 %981, %978
  %983 = zext i32 %982 to i64
  %984 = getelementptr inbounds nuw [4 x i8], ptr %962, i64 %983
  %985 = getelementptr inbounds nuw i8, ptr %984, i64 1
  %986 = load i8, ptr %985, align 1, !tbaa !8
  %987 = zext i8 %986 to i32
  %988 = add nuw nsw i32 %968, %987
  %989 = icmp ugt i32 %988, %965
  br i1 %989, label %990, label %1026

990:                                              ; preds = %1010, %973
  %991 = phi i32 [ %1013, %1010 ], [ %965, %973 ]
  %992 = phi i64 [ %1011, %1010 ], [ %964, %973 ]
  %993 = phi i32 [ %1012, %1010 ], [ %963, %973 ]
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %999

995:                                              ; preds = %990
  %996 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %999

998:                                              ; preds = %995
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

999:                                              ; preds = %995, %990
  %1000 = phi i32 [ %996, %995 ], [ %993, %990 ]
  %1001 = load ptr, ptr %6, align 8, !tbaa !32
  %1002 = getelementptr inbounds nuw i8, ptr %1001, i64 1
  store ptr %1002, ptr %6, align 8, !tbaa !32
  %1003 = load i8, ptr %1001, align 1, !tbaa !8
  %1004 = zext i8 %1003 to i64
  %1005 = zext nneg i32 %991 to i64
  %1006 = shl i64 %1004, %1005
  %1007 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %992, i64 %1006), !nosanitize !34
  %1008 = extractvalue { i64, i1 } %1007, 1, !nosanitize !34
  br i1 %1008, label %1009, label %1010, !prof !35, !nosanitize !34

1009:                                             ; preds = %999
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1010:                                             ; preds = %999
  %1011 = extractvalue { i64, i1 } %1007, 0, !nosanitize !34
  %1012 = add i32 %1000, -1
  %1013 = add nuw nsw i32 %991, 8
  %1014 = load ptr, ptr %39, align 8, !tbaa !61
  %1015 = trunc i64 %1011 to i32
  %1016 = and i32 %1015, %977
  %1017 = lshr i32 %1016, %968
  %1018 = add nuw i32 %1017, %978
  %1019 = zext i32 %1018 to i64
  %1020 = getelementptr inbounds nuw [4 x i8], ptr %1014, i64 %1019
  %1021 = getelementptr inbounds nuw i8, ptr %1020, i64 1
  %1022 = load i8, ptr %1021, align 1, !tbaa !8
  %1023 = zext i8 %1022 to i32
  %1024 = add nuw nsw i32 %968, %1023
  %1025 = icmp ugt i32 %1024, %1013
  br i1 %1025, label %990, label %1026

1026:                                             ; preds = %1010, %973
  %1027 = phi i32 [ %963, %973 ], [ %1012, %1010 ]
  %1028 = phi i64 [ %964, %973 ], [ %1011, %1010 ]
  %1029 = phi i32 [ %965, %973 ], [ %1013, %1010 ]
  %1030 = phi ptr [ %984, %973 ], [ %1020, %1010 ]
  %1031 = phi i8 [ %986, %973 ], [ %1022, %1010 ]
  %1032 = getelementptr inbounds nuw i8, ptr %1030, i64 2
  %1033 = load i16, ptr %1032, align 2, !tbaa !45
  %1034 = load i8, ptr %1030, align 2, !tbaa !8
  %1035 = sub nuw i32 %1029, %968
  %1036 = zext nneg i8 %967 to i64
  %1037 = lshr i64 %1028, %1036
  br label %1038

1038:                                             ; preds = %1026, %961
  %1039 = phi i32 [ %1027, %1026 ], [ %963, %961 ]
  %1040 = phi i64 [ %1037, %1026 ], [ %964, %961 ]
  %1041 = phi i32 [ %1035, %1026 ], [ %965, %961 ]
  %1042 = phi i16 [ %1033, %1026 ], [ %970, %961 ]
  %1043 = phi i8 [ %1031, %1026 ], [ %967, %961 ]
  %1044 = phi i8 [ %1034, %1026 ], [ %971, %961 ]
  %1045 = zext i8 %1043 to i32
  %1046 = zext nneg i8 %1043 to i64
  %1047 = lshr i64 %1040, %1046
  %1048 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1041, i32 %1045), !nosanitize !34
  %1049 = extractvalue { i32, i1 } %1048, 0, !nosanitize !34
  %1050 = extractvalue { i32, i1 } %1048, 1, !nosanitize !34
  br i1 %1050, label %1051, label %1052, !prof !35, !nosanitize !34

1051:                                             ; preds = %1038
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1052:                                             ; preds = %1038
  %1053 = zext i8 %1044 to i32
  %1054 = and i32 %1053, 64
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1057, label %1056

1056:                                             ; preds = %1052
  store ptr @.str.10, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

1057:                                             ; preds = %1052
  %1058 = zext i16 %1042 to i32
  store i32 %1058, ptr %43, align 8, !tbaa !69
  %1059 = and i32 %1053, 15
  store i32 %1059, ptr %42, align 4, !tbaa !67
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1118, label %1061

1061:                                             ; preds = %1057
  %1062 = icmp ult i32 %1049, %1059
  br i1 %1062, label %1063, label %1096

1063:                                             ; preds = %1061
  %1064 = zext nneg i32 %1049 to i64
  br label %1065

1065:                                             ; preds = %1089, %1063
  %1066 = phi i64 [ %1064, %1063 ], [ %1090, %1089 ]
  %1067 = phi i64 [ %1047, %1063 ], [ %1083, %1089 ]
  %1068 = phi i32 [ %1039, %1063 ], [ %1076, %1089 ]
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1070, label %1074

1070:                                             ; preds = %1065
  %1071 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1073, label %1074

1073:                                             ; preds = %1070
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1291

1074:                                             ; preds = %1070, %1065
  %1075 = phi i32 [ %1071, %1070 ], [ %1068, %1065 ]
  %1076 = add i32 %1075, -1
  %1077 = load ptr, ptr %6, align 8, !tbaa !32
  %1078 = getelementptr inbounds nuw i8, ptr %1077, i64 1
  store ptr %1078, ptr %6, align 8, !tbaa !32
  %1079 = load i8, ptr %1077, align 1, !tbaa !8
  %1080 = zext i8 %1079 to i64
  %1081 = shl i64 %1080, %1066
  %1082 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1067, i64 %1081), !nosanitize !34
  %1083 = extractvalue { i64, i1 } %1082, 0, !nosanitize !34
  %1084 = extractvalue { i64, i1 } %1082, 1, !nosanitize !34
  br i1 %1084, label %1085, label %1086, !prof !35, !nosanitize !34

1085:                                             ; preds = %1074
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1086:                                             ; preds = %1074
  %1087 = icmp samesign ugt i64 %1066, 4294967287
  br i1 %1087, label %1088, label %1089, !prof !35, !nosanitize !34

1088:                                             ; preds = %1086
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1089:                                             ; preds = %1086
  %1090 = add nuw nsw i64 %1066, 8
  %1091 = trunc nuw i64 %1090 to i32
  %1092 = load i32, ptr %42, align 4, !tbaa !67
  %1093 = icmp ugt i32 %1092, %1091
  br i1 %1093, label %1065, label %1094, !llvm.loop !70

1094:                                             ; preds = %1089
  %1095 = load i32, ptr %43, align 8, !tbaa !69
  br label %1096

1096:                                             ; preds = %1094, %1061
  %1097 = phi i32 [ %1058, %1061 ], [ %1095, %1094 ]
  %1098 = phi i32 [ %1039, %1061 ], [ %1076, %1094 ]
  %1099 = phi i64 [ %1047, %1061 ], [ %1083, %1094 ]
  %1100 = phi i32 [ %1049, %1061 ], [ %1091, %1094 ]
  %1101 = phi i32 [ %1059, %1061 ], [ %1092, %1094 ]
  %1102 = shl nsw i32 -1, %1101
  %1103 = xor i32 %1102, -1
  %1104 = trunc i64 %1099 to i32
  %1105 = and i32 %1103, %1104
  %1106 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1097, i32 %1105), !nosanitize !34
  %1107 = extractvalue { i32, i1 } %1106, 1, !nosanitize !34
  br i1 %1107, label %1108, label %1109, !prof !35, !nosanitize !34

1108:                                             ; preds = %1096
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1109:                                             ; preds = %1096
  %1110 = extractvalue { i32, i1 } %1106, 0, !nosanitize !34
  store i32 %1110, ptr %43, align 8, !tbaa !69
  %1111 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1100, i32 %1101), !nosanitize !34
  %1112 = extractvalue { i32, i1 } %1111, 1, !nosanitize !34
  br i1 %1112, label %1113, label %1114, !prof !35, !nosanitize !34

1113:                                             ; preds = %1109
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1114:                                             ; preds = %1109
  %1115 = extractvalue { i32, i1 } %1111, 0, !nosanitize !34
  %1116 = zext nneg i32 %1101 to i64
  %1117 = lshr i64 %1099, %1116
  br label %1118

1118:                                             ; preds = %1114, %1057
  %1119 = phi i32 [ %1110, %1114 ], [ %1058, %1057 ]
  %1120 = phi i32 [ %1098, %1114 ], [ %1039, %1057 ]
  %1121 = phi i64 [ %1117, %1114 ], [ %1047, %1057 ]
  %1122 = phi i32 [ %1115, %1114 ], [ %1049, %1057 ]
  %1123 = load i32, ptr %26, align 4, !tbaa !24
  %1124 = load i32, ptr %16, align 8, !tbaa !27
  %1125 = icmp ult i32 %1124, %1123
  %1126 = select i1 %1125, i32 %53, i32 0
  %1127 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1123, i32 %1126), !nosanitize !34
  %1128 = extractvalue { i32, i1 } %1127, 1, !nosanitize !34
  br i1 %1128, label %1129, label %1130, !prof !35, !nosanitize !34

1129:                                             ; preds = %1118
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1130:                                             ; preds = %1118
  %1131 = extractvalue { i32, i1 } %1127, 0, !nosanitize !34
  %1132 = icmp ugt i32 %1119, %1131
  br i1 %1132, label %1133, label %1134

1133:                                             ; preds = %1130
  store ptr @.str.11, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1282

1134:                                             ; preds = %1278, %1130
  %1135 = phi ptr [ %1279, %1278 ], [ %51, %1130 ]
  %1136 = phi i32 [ %1166, %1278 ], [ %53, %1130 ]
  %1137 = icmp eq i32 %1136, 0
  %1138 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1137, label %1139, label %1145

1139:                                             ; preds = %1134
  %1140 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1138, ptr %16, align 8, !tbaa !27
  %1141 = call i32 %3(ptr noundef %4, ptr noundef %1140, i32 noundef %1138) #6
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1143, label %1291

1143:                                             ; preds = %1139
  %1144 = load i32, ptr %26, align 4, !tbaa !24
  br label %1145

1145:                                             ; preds = %1143, %1134
  %1146 = phi i32 [ %1144, %1143 ], [ %1138, %1134 ]
  %1147 = phi ptr [ %1140, %1143 ], [ %1135, %1134 ]
  %1148 = phi i32 [ %1138, %1143 ], [ %1136, %1134 ]
  %1149 = load i32, ptr %43, align 8, !tbaa !69
  %1150 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1146, i32 %1149), !nosanitize !34
  %1151 = extractvalue { i32, i1 } %1150, 1, !nosanitize !34
  br i1 %1151, label %1152, label %1153, !prof !35, !nosanitize !34

1152:                                             ; preds = %1145
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1153:                                             ; preds = %1145
  %1154 = extractvalue { i32, i1 } %1150, 0, !nosanitize !34
  %1155 = icmp ult i32 %1154, %1148
  %1156 = select i1 %1155, i32 %1154, i32 0
  %1157 = sub i32 %1148, %1156
  %1158 = load i32, ptr %41, align 4, !tbaa !38
  %1159 = call i32 @llvm.umin.i32(i32 %1157, i32 %1158)
  %1160 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1158, i32 %1159), !nosanitize !34
  %1161 = extractvalue { i32, i1 } %1160, 1, !nosanitize !34
  br i1 %1161, label %1162, label %1163, !prof !35, !nosanitize !34

1162:                                             ; preds = %1153
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1163:                                             ; preds = %1153
  %1164 = extractvalue { i32, i1 } %1160, 0, !nosanitize !34
  store i32 %1164, ptr %41, align 4, !tbaa !38
  %1165 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1148, i32 %1159), !nosanitize !34
  %1166 = extractvalue { i32, i1 } %1165, 0, !nosanitize !34
  %1167 = extractvalue { i32, i1 } %1165, 1, !nosanitize !34
  br i1 %1167, label %1247, label %1168, !prof !35, !nosanitize !34

1168:                                             ; preds = %1163
  %1169 = zext i32 %1154 to i64
  %1170 = zext i32 %1149 to i64
  %1171 = sub nsw i64 0, %1170
  %1172 = select i1 %1155, i64 %1169, i64 %1171
  %1173 = getelementptr inbounds i8, ptr %1147, i64 %1172
  %1174 = icmp eq i32 %1159, 0
  br i1 %1174, label %1245, label %1175, !prof !35, !nosanitize !34

1175:                                             ; preds = %1168
  %1176 = call i32 @llvm.umin.i32(i32 %1158, i32 %1157)
  %1177 = zext i32 %1176 to i64
  %1178 = icmp ult i32 %1176, 4
  %1179 = add nsw i64 %1172, 31
  %1180 = icmp ult i64 %1179, 32
  %1181 = select i1 %1178, i1 true, i1 %1180
  br i1 %1181, label %1221, label %1182

1182:                                             ; preds = %1175
  %1183 = icmp ult i32 %1176, 32
  br i1 %1183, label %1205, label %1184

1184:                                             ; preds = %1182
  %1185 = and i64 %1177, 28
  %1186 = and i64 %1177, 4294967264
  %1187 = getelementptr i8, ptr %1147, i64 %1186
  %1188 = trunc nuw i64 %1186 to i32
  %1189 = sub i32 %1159, %1188
  %1190 = getelementptr i8, ptr %1173, i64 %1186
  br label %1191

1191:                                             ; preds = %1191, %1184
  %1192 = phi i64 [ 0, %1184 ], [ %1199, %1191 ]
  %1193 = getelementptr i8, ptr %1147, i64 %1192
  %1194 = getelementptr i8, ptr %1173, i64 %1192
  %1195 = getelementptr i8, ptr %1194, i64 16
  %1196 = load <16 x i8>, ptr %1194, align 1, !tbaa !8
  %1197 = load <16 x i8>, ptr %1195, align 1, !tbaa !8
  %1198 = getelementptr i8, ptr %1193, i64 16
  store <16 x i8> %1196, ptr %1193, align 1, !tbaa !8
  store <16 x i8> %1197, ptr %1198, align 1, !tbaa !8
  %1199 = add nuw i64 %1192, 32
  %1200 = icmp eq i64 %1199, %1186
  br i1 %1200, label %1201, label %1191, !llvm.loop !71

1201:                                             ; preds = %1191
  %1202 = icmp eq i64 %1186, %1177
  br i1 %1202, label %1278, label %1203

1203:                                             ; preds = %1201
  %1204 = icmp eq i64 %1185, 0
  br i1 %1204, label %1221, label %1205, !prof !74

1205:                                             ; preds = %1203, %1182
  %1206 = phi i64 [ %1186, %1203 ], [ 0, %1182 ]
  %1207 = and i64 %1177, 4294967292
  %1208 = getelementptr i8, ptr %1147, i64 %1207
  %1209 = trunc nuw i64 %1207 to i32
  %1210 = sub i32 %1159, %1209
  %1211 = getelementptr i8, ptr %1173, i64 %1207
  br label %1212

1212:                                             ; preds = %1212, %1205
  %1213 = phi i64 [ %1206, %1205 ], [ %1217, %1212 ]
  %1214 = getelementptr i8, ptr %1147, i64 %1213
  %1215 = getelementptr i8, ptr %1173, i64 %1213
  %1216 = load <4 x i8>, ptr %1215, align 1, !tbaa !8
  store <4 x i8> %1216, ptr %1214, align 1, !tbaa !8
  %1217 = add nuw i64 %1213, 4
  %1218 = icmp eq i64 %1217, %1207
  br i1 %1218, label %1219, label %1212, !llvm.loop !75

1219:                                             ; preds = %1212
  %1220 = icmp eq i64 %1207, %1177
  br i1 %1220, label %1278, label %1221

1221:                                             ; preds = %1219, %1203, %1175
  %1222 = phi ptr [ %1147, %1175 ], [ %1187, %1203 ], [ %1208, %1219 ]
  %1223 = phi i32 [ %1159, %1175 ], [ %1189, %1203 ], [ %1210, %1219 ]
  %1224 = phi ptr [ %1173, %1175 ], [ %1190, %1203 ], [ %1211, %1219 ]
  %1225 = add i32 %1223, -1
  %1226 = and i32 %1223, 7
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %1239, label %1228

1228:                                             ; preds = %1228, %1221
  %1229 = phi ptr [ %1234, %1228 ], [ %1222, %1221 ]
  %1230 = phi i32 [ %1235, %1228 ], [ %1223, %1221 ]
  %1231 = phi ptr [ %1236, %1228 ], [ %1224, %1221 ]
  %1232 = phi i32 [ %1237, %1228 ], [ 0, %1221 ]
  %1233 = load i8, ptr %1231, align 1, !tbaa !8
  store i8 %1233, ptr %1229, align 1, !tbaa !8
  %1234 = getelementptr inbounds nuw i8, ptr %1229, i64 1
  %1235 = add i32 %1230, -1
  %1236 = getelementptr inbounds nuw i8, ptr %1231, i64 1
  %1237 = add i32 %1232, 1
  %1238 = icmp eq i32 %1237, %1226
  br i1 %1238, label %1239, label %1228, !llvm.loop !76

1239:                                             ; preds = %1228, %1221
  %1240 = phi ptr [ poison, %1221 ], [ %1234, %1228 ]
  %1241 = phi ptr [ %1222, %1221 ], [ %1234, %1228 ]
  %1242 = phi i32 [ %1223, %1221 ], [ %1235, %1228 ]
  %1243 = phi ptr [ %1224, %1221 ], [ %1236, %1228 ]
  %1244 = icmp ult i32 %1225, 7
  br i1 %1244, label %1278, label %1248

1245:                                             ; preds = %1168
  %1246 = load i8, ptr %1173, align 1, !tbaa !8
  store i8 %1246, ptr %1147, align 1, !tbaa !8
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1247:                                             ; preds = %1163
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1248:                                             ; preds = %1248, %1239
  %1249 = phi ptr [ %1274, %1248 ], [ %1241, %1239 ]
  %1250 = phi i32 [ %1275, %1248 ], [ %1242, %1239 ]
  %1251 = phi ptr [ %1276, %1248 ], [ %1243, %1239 ]
  %1252 = load i8, ptr %1251, align 1, !tbaa !8
  store i8 %1252, ptr %1249, align 1, !tbaa !8
  %1253 = getelementptr inbounds nuw i8, ptr %1249, i64 1
  %1254 = getelementptr inbounds nuw i8, ptr %1251, i64 1
  %1255 = load i8, ptr %1254, align 1, !tbaa !8
  store i8 %1255, ptr %1253, align 1, !tbaa !8
  %1256 = getelementptr inbounds nuw i8, ptr %1249, i64 2
  %1257 = getelementptr inbounds nuw i8, ptr %1251, i64 2
  %1258 = load i8, ptr %1257, align 1, !tbaa !8
  store i8 %1258, ptr %1256, align 1, !tbaa !8
  %1259 = getelementptr inbounds nuw i8, ptr %1249, i64 3
  %1260 = getelementptr inbounds nuw i8, ptr %1251, i64 3
  %1261 = load i8, ptr %1260, align 1, !tbaa !8
  store i8 %1261, ptr %1259, align 1, !tbaa !8
  %1262 = getelementptr inbounds nuw i8, ptr %1249, i64 4
  %1263 = getelementptr inbounds nuw i8, ptr %1251, i64 4
  %1264 = load i8, ptr %1263, align 1, !tbaa !8
  store i8 %1264, ptr %1262, align 1, !tbaa !8
  %1265 = getelementptr inbounds nuw i8, ptr %1249, i64 5
  %1266 = getelementptr inbounds nuw i8, ptr %1251, i64 5
  %1267 = load i8, ptr %1266, align 1, !tbaa !8
  store i8 %1267, ptr %1265, align 1, !tbaa !8
  %1268 = getelementptr inbounds nuw i8, ptr %1249, i64 6
  %1269 = getelementptr inbounds nuw i8, ptr %1251, i64 6
  %1270 = load i8, ptr %1269, align 1, !tbaa !8
  store i8 %1270, ptr %1268, align 1, !tbaa !8
  %1271 = getelementptr inbounds nuw i8, ptr %1249, i64 7
  %1272 = getelementptr inbounds nuw i8, ptr %1251, i64 7
  %1273 = load i8, ptr %1272, align 1, !tbaa !8
  store i8 %1273, ptr %1271, align 1, !tbaa !8
  %1274 = getelementptr inbounds nuw i8, ptr %1249, i64 8
  %1275 = add i32 %1250, -8
  %1276 = getelementptr inbounds nuw i8, ptr %1251, i64 8
  %1277 = icmp eq i32 %1275, 0
  br i1 %1277, label %1278, label %1248, !llvm.loop !78

1278:                                             ; preds = %1248, %1239, %1219, %1201
  %1279 = phi ptr [ %1208, %1219 ], [ %1187, %1201 ], [ %1240, %1239 ], [ %1274, %1248 ]
  %1280 = load i32, ptr %41, align 4, !tbaa !38
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1282, label %1134, !llvm.loop !79

1282:                                             ; preds = %1278, %1133, %1056, %844, %840, %834, %674, %650, %641, %637, %627, %595, %459, %314, %250, %202, %152, %104, %68
  %1283 = phi ptr [ %51, %68 ], [ %51, %104 ], [ %51, %152 ], [ %203, %202 ], [ %51, %250 ], [ %51, %314 ], [ %51, %627 ], [ %51, %637 ], [ %51, %641 ], [ %51, %650 ], [ %677, %674 ], [ %836, %834 ], [ %51, %840 ], [ %51, %844 ], [ %51, %1056 ], [ %51, %1133 ], [ %51, %459 ], [ %51, %595 ], [ %1279, %1278 ]
  %1284 = phi i32 [ %52, %68 ], [ %93, %104 ], [ %145, %152 ], [ %204, %202 ], [ %233, %250 ], [ %282, %314 ], [ %631, %627 ], [ %631, %637 ], [ %631, %641 ], [ %631, %650 ], [ %680, %674 ], [ %800, %834 ], [ %800, %840 ], [ %800, %844 ], [ %1039, %1056 ], [ %1120, %1133 ], [ %451, %459 ], [ %556, %595 ], [ %1120, %1278 ]
  %1285 = phi i32 [ %53, %68 ], [ %53, %104 ], [ %53, %152 ], [ %205, %202 ], [ %53, %250 ], [ %53, %314 ], [ %53, %627 ], [ %53, %637 ], [ %53, %641 ], [ %53, %650 ], [ %678, %674 ], [ %835, %834 ], [ %53, %840 ], [ %53, %844 ], [ %53, %1056 ], [ %53, %1133 ], [ %53, %459 ], [ %53, %595 ], [ %1166, %1278 ]
  %1286 = phi i64 [ %73, %68 ], [ %107, %104 ], [ %146, %152 ], [ 0, %202 ], [ %245, %250 ], [ %298, %314 ], [ %630, %627 ], [ %630, %637 ], [ %630, %641 ], [ %630, %650 ], [ %681, %674 ], [ %808, %834 ], [ %808, %840 ], [ %808, %844 ], [ %1047, %1056 ], [ %1121, %1133 ], [ %455, %459 ], [ %557, %595 ], [ %1121, %1278 ]
  %1287 = phi i32 [ %71, %68 ], [ %106, %104 ], [ %147, %152 ], [ 0, %202 ], [ %246, %250 ], [ %297, %314 ], [ %629, %627 ], [ %629, %637 ], [ %629, %641 ], [ %629, %650 ], [ %682, %674 ], [ %810, %834 ], [ %810, %840 ], [ %810, %844 ], [ %1049, %1056 ], [ %1122, %1133 ], [ %456, %459 ], [ %561, %595 ], [ %1122, %1278 ]
  %1288 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

1289:                                             ; preds = %49
  br label %1291

1290:                                             ; preds = %49
  br label %1291

1291:                                             ; preds = %1290, %1289, %1139, %1073, %998, %931, %860, %819, %759, %691, %522, %481, %432, %353, %268, %214, %170, %166, %126, %77, %49
  %1292 = phi i32 [ %52, %1289 ], [ 0, %77 ], [ 0, %126 ], [ 0, %166 ], [ %1120, %1139 ], [ 0, %214 ], [ 0, %268 ], [ 0, %432 ], [ %52, %49 ], [ 0, %860 ], [ 0, %1073 ], [ %168, %170 ], [ 0, %998 ], [ 0, %931 ], [ 0, %759 ], [ 0, %691 ], [ 0, %481 ], [ 0, %522 ], [ 0, %353 ], [ %800, %819 ], [ %52, %1290 ]
  %1293 = phi i32 [ %53, %1289 ], [ %53, %77 ], [ %53, %126 ], [ %158, %166 ], [ %1138, %1139 ], [ %53, %214 ], [ %53, %268 ], [ %53, %432 ], [ %53, %49 ], [ %53, %860 ], [ %53, %1073 ], [ %172, %170 ], [ %53, %998 ], [ %53, %931 ], [ %53, %759 ], [ %53, %691 ], [ %53, %481 ], [ %53, %522 ], [ %53, %353 ], [ %821, %819 ], [ %53, %1290 ]
  %1294 = phi i1 [ true, %1289 ], [ false, %77 ], [ false, %126 ], [ false, %166 ], [ false, %1139 ], [ false, %214 ], [ false, %268 ], [ false, %432 ], [ false, %49 ], [ false, %860 ], [ false, %1073 ], [ false, %170 ], [ false, %998 ], [ false, %931 ], [ false, %759 ], [ false, %691 ], [ false, %481 ], [ false, %522 ], [ false, %353 ], [ false, %819 ], [ false, %1290 ]
  %1295 = phi i32 [ 1, %1289 ], [ -5, %77 ], [ -5, %126 ], [ -5, %166 ], [ -5, %1139 ], [ -5, %214 ], [ -5, %268 ], [ -5, %432 ], [ -2, %49 ], [ -5, %860 ], [ -5, %1073 ], [ -5, %170 ], [ -5, %998 ], [ -5, %931 ], [ -5, %759 ], [ -5, %691 ], [ -5, %481 ], [ -5, %522 ], [ -5, %353 ], [ -5, %819 ], [ -3, %1290 ]
  %1296 = load i32, ptr %26, align 4, !tbaa !24
  %1297 = icmp ult i32 %1293, %1296
  br i1 %1297, label %1298, label %1305

1298:                                             ; preds = %1291
  %1299 = sub nuw i32 %1296, %1293
  %1300 = load ptr, ptr %24, align 8, !tbaa !25
  %1301 = call i32 %3(ptr noundef %4, ptr noundef %1300, i32 noundef %1299) #6
  %1302 = icmp ne i32 %1301, 0
  %1303 = and i1 %1294, %1302
  %1304 = select i1 %1303, i32 -5, i32 %1295
  br label %1305

1305:                                             ; preds = %1298, %1291
  %1306 = phi i32 [ %1304, %1298 ], [ %1295, %1291 ]
  %1307 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1307, ptr %0, align 8, !tbaa !31
  store i32 %1292, ptr %46, align 8, !tbaa !33
  br label %1308

1308:                                             ; preds = %1305, %8, %5
  %1309 = phi i32 [ %1306, %1305 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 %1309
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
