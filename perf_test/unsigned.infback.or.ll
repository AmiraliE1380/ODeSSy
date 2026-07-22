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
  br i1 %7, label %1302, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1302, label %12

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

49:                                               ; preds = %1276, %22
  %50 = phi i32 [ 16191, %22 ], [ %1282, %1276 ]
  %51 = phi ptr [ %25, %22 ], [ %1277, %1276 ]
  %52 = phi i32 [ %23, %22 ], [ %1278, %1276 ]
  %53 = phi i32 [ %27, %22 ], [ %1279, %1276 ]
  %54 = phi i64 [ 0, %22 ], [ %1280, %1276 ]
  %55 = phi i32 [ 0, %22 ], [ %1281, %1276 ]
  switch i32 %50, label %1285 [
    i32 16191, label %60
    i32 16193, label %108
    i32 16196, label %56
    i32 16200, label %649
    i32 16208, label %1283
    i32 16209, label %1284
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %229

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %203

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
  br label %1276

74:                                               ; preds = %65
  %75 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

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
  br label %1276

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
  br label %1285

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
  br label %1276

153:                                              ; preds = %144
  %154 = trunc i64 %146 to i32
  %155 = and i32 %154, 65535
  store i32 %155, ptr %41, align 4, !tbaa !38
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %199, label %157

157:                                              ; preds = %195, %153
  %158 = phi i32 [ %190, %195 ], [ %53, %153 ]
  %159 = phi i32 [ %183, %195 ], [ %145, %153 ]
  %160 = phi ptr [ %197, %195 ], [ %51, %153 ]
  %161 = phi i32 [ %196, %195 ], [ %155, %153 ]
  %162 = icmp eq i32 %159, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

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
  br i1 %174, label %175, label %1285

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
  %191 = load i32, ptr %41, align 4, !tbaa !38
  %192 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %191, i32 %179), !nosanitize !34
  %193 = extractvalue { i32, i1 } %192, 1, !nosanitize !34
  br i1 %193, label %194, label %195, !prof !35, !nosanitize !34

194:                                              ; preds = %186
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

195:                                              ; preds = %186
  %196 = extractvalue { i32, i1 } %192, 0, !nosanitize !34
  %197 = getelementptr inbounds nuw i8, ptr %176, i64 %181
  store i32 %196, ptr %41, align 4, !tbaa !38
  %198 = icmp eq i32 %196, 0
  br i1 %198, label %199, label %157, !llvm.loop !39

199:                                              ; preds = %195, %153
  %200 = phi ptr [ %51, %153 ], [ %197, %195 ]
  %201 = phi i32 [ %145, %153 ], [ %183, %195 ]
  %202 = phi i32 [ %53, %153 ], [ %190, %195 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %1276

203:                                              ; preds = %222, %58
  %204 = phi i64 [ %59, %58 ], [ %225, %222 ]
  %205 = phi i64 [ %54, %58 ], [ %223, %222 ]
  %206 = phi i32 [ %52, %58 ], [ %224, %222 ]
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

212:                                              ; preds = %208, %203
  %213 = phi i32 [ %209, %208 ], [ %206, %203 ]
  %214 = load ptr, ptr %6, align 8, !tbaa !32
  %215 = getelementptr inbounds nuw i8, ptr %214, i64 1
  store ptr %215, ptr %6, align 8, !tbaa !32
  %216 = load i8, ptr %214, align 1, !tbaa !8
  %217 = zext i8 %216 to i64
  %218 = shl nuw nsw i64 %217, %204
  %219 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %205, i64 %218), !nosanitize !34
  %220 = extractvalue { i64, i1 } %219, 1, !nosanitize !34
  br i1 %220, label %221, label %222, !prof !35, !nosanitize !34

221:                                              ; preds = %212
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

222:                                              ; preds = %212
  %223 = extractvalue { i64, i1 } %219, 0, !nosanitize !34
  %224 = add i32 %213, -1
  %225 = add nuw nsw i64 %204, 8
  %226 = icmp samesign ult i64 %204, 6
  br i1 %226, label %203, label %227, !llvm.loop !40

227:                                              ; preds = %222
  %228 = trunc nuw nsw i64 %225 to i32
  br label %229

229:                                              ; preds = %227, %56
  %230 = phi i32 [ %52, %56 ], [ %224, %227 ]
  %231 = phi i64 [ %54, %56 ], [ %223, %227 ]
  %232 = phi i32 [ %55, %56 ], [ %228, %227 ]
  %233 = trunc i64 %231 to i32
  %234 = and i32 %233, 31
  %235 = add nuw nsw i32 %234, 257
  store i32 %235, ptr %28, align 4, !tbaa !41
  %236 = lshr i32 %233, 5
  %237 = and i32 %236, 31
  %238 = add nuw nsw i32 %237, 1
  store i32 %238, ptr %29, align 8, !tbaa !42
  %239 = lshr i32 %233, 10
  %240 = and i32 %239, 15
  %241 = add nuw nsw i32 %240, 4
  store i32 %241, ptr %30, align 8, !tbaa !43
  %242 = lshr i64 %231, 14
  %243 = add i32 %232, -14
  %244 = icmp samesign ugt i32 %234, 29
  %245 = icmp samesign ugt i32 %237, 29
  %246 = select i1 %244, i1 true, i1 %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %229
  store ptr @.str.3, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1276

248:                                              ; preds = %229
  store i32 0, ptr %31, align 4, !tbaa !44
  br label %253

249:                                              ; preds = %285
  %250 = icmp ult i32 %286, 19
  br i1 %250, label %251, label %308

251:                                              ; preds = %249
  %252 = zext nneg i32 %286 to i64
  br label %298

253:                                              ; preds = %285, %248
  %254 = phi i32 [ %286, %285 ], [ 0, %248 ]
  %255 = phi i32 [ %294, %285 ], [ %243, %248 ]
  %256 = phi i64 [ %295, %285 ], [ %242, %248 ]
  %257 = phi i32 [ %279, %285 ], [ %230, %248 ]
  %258 = icmp ult i32 %255, 3
  br i1 %258, label %259, label %277

259:                                              ; preds = %253
  %260 = or disjoint i32 %255, 8
  %261 = icmp eq i32 %257, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

266:                                              ; preds = %262, %259
  %267 = phi i32 [ %263, %262 ], [ %257, %259 ]
  %268 = load ptr, ptr %6, align 8, !tbaa !32
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 1
  store ptr %269, ptr %6, align 8, !tbaa !32
  %270 = load i8, ptr %268, align 1, !tbaa !8
  %271 = zext i8 %270 to i64
  %272 = zext nneg i32 %255 to i64
  %273 = shl nuw nsw i64 %271, %272
  %274 = add nuw nsw i64 %256, %273
  %275 = add i32 %267, -1
  %276 = load i32, ptr %31, align 4, !tbaa !44
  br label %277

277:                                              ; preds = %266, %253
  %278 = phi i32 [ %276, %266 ], [ %254, %253 ]
  %279 = phi i32 [ %275, %266 ], [ %257, %253 ]
  %280 = phi i64 [ %274, %266 ], [ %256, %253 ]
  %281 = phi i32 [ %260, %266 ], [ %255, %253 ]
  %282 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %278, i32 1), !nosanitize !34
  %283 = extractvalue { i32, i1 } %282, 1, !nosanitize !34
  br i1 %283, label %284, label %285, !prof !35, !nosanitize !34

284:                                              ; preds = %277
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

285:                                              ; preds = %277
  %286 = extractvalue { i32, i1 } %282, 0, !nosanitize !34
  %287 = trunc i64 %280 to i16
  %288 = and i16 %287, 7
  store i32 %286, ptr %31, align 4, !tbaa !44
  %289 = zext i32 %278 to i64
  %290 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %289
  %291 = load i16, ptr %290, align 2, !tbaa !45
  %292 = zext i16 %291 to i64
  %293 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %292
  store i16 %288, ptr %293, align 2, !tbaa !45
  %294 = add i32 %281, -3
  %295 = lshr i64 %280, 3
  %296 = load i32, ptr %30, align 8, !tbaa !43
  %297 = icmp ult i32 %286, %296
  br i1 %297, label %253, label %249, !llvm.loop !47

298:                                              ; preds = %298, %251
  %299 = phi i64 [ %252, %251 ], [ %300, %298 ]
  %300 = add nuw nsw i64 %299, 1
  %301 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %299
  %302 = load i16, ptr %301, align 2, !tbaa !45
  %303 = zext i16 %302 to i64
  %304 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %303
  store i16 0, ptr %304, align 2, !tbaa !45
  %305 = and i64 %300, 4294967295
  %306 = icmp eq i64 %305, 19
  br i1 %306, label %307, label %298, !llvm.loop !48

307:                                              ; preds = %298
  store i32 19, ptr %31, align 4, !tbaa !44
  br label %308

308:                                              ; preds = %307, %249
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 7, ptr %36, align 8, !tbaa !51
  %309 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %308
  store ptr @.str.4, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1276

312:                                              ; preds = %308
  store i32 0, ptr %31, align 4, !tbaa !44
  %313 = load i32, ptr %28, align 4, !tbaa !41
  %314 = load i32, ptr %29, align 8, !tbaa !42
  %315 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %313, i32 %314), !nosanitize !34
  %316 = extractvalue { i32, i1 } %315, 1, !nosanitize !34
  br i1 %316, label %320, label %317, !prof !52, !nosanitize !34

317:                                              ; preds = %312
  %318 = extractvalue { i32, i1 } %315, 0, !nosanitize !34
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %624, label %324

320:                                              ; preds = %616, %312
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

321:                                              ; preds = %616
  %322 = extractvalue { i32, i1 } %622, 0, !nosanitize !34
  %323 = icmp ult i32 %617, %322
  br i1 %323, label %324, label %624, !llvm.loop !53

324:                                              ; preds = %321, %317
  %325 = phi i32 [ %381, %321 ], [ %279, %317 ]
  %326 = phi i64 [ %392, %321 ], [ %295, %317 ]
  %327 = phi i32 [ %394, %321 ], [ %294, %317 ]
  %328 = load i32, ptr %36, align 8, !tbaa !51
  %329 = shl nsw i32 -1, %328
  %330 = xor i32 %329, -1
  %331 = trunc i64 %326 to i32
  %332 = load ptr, ptr %35, align 8, !tbaa !50
  %333 = and i32 %330, %331
  %334 = zext nneg i32 %333 to i64
  %335 = getelementptr inbounds nuw [4 x i8], ptr %332, i64 %334
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 1
  %337 = load i8, ptr %336, align 1, !tbaa !8
  %338 = zext i8 %337 to i32
  %339 = icmp ult i32 %327, %338
  br i1 %339, label %340, label %380

340:                                              ; preds = %324
  %341 = zext nneg i32 %327 to i64
  br label %342

342:                                              ; preds = %361, %340
  %343 = phi i64 [ %341, %340 ], [ %364, %361 ]
  %344 = phi i64 [ %326, %340 ], [ %362, %361 ]
  %345 = phi i32 [ %325, %340 ], [ %363, %361 ]
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %342
  %348 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

351:                                              ; preds = %347, %342
  %352 = phi i32 [ %348, %347 ], [ %345, %342 ]
  %353 = load ptr, ptr %6, align 8, !tbaa !32
  %354 = getelementptr inbounds nuw i8, ptr %353, i64 1
  store ptr %354, ptr %6, align 8, !tbaa !32
  %355 = load i8, ptr %353, align 1, !tbaa !8
  %356 = zext i8 %355 to i64
  %357 = shl i64 %356, %343
  %358 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %344, i64 %357), !nosanitize !34
  %359 = extractvalue { i64, i1 } %358, 1, !nosanitize !34
  br i1 %359, label %360, label %361, !prof !35, !nosanitize !34

360:                                              ; preds = %351
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

361:                                              ; preds = %351
  %362 = extractvalue { i64, i1 } %358, 0, !nosanitize !34
  %363 = add i32 %352, -1
  %364 = add nuw nsw i64 %343, 8
  %365 = load i32, ptr %36, align 8, !tbaa !51
  %366 = shl nsw i32 -1, %365
  %367 = xor i32 %366, -1
  %368 = trunc i64 %362 to i32
  %369 = load ptr, ptr %35, align 8, !tbaa !50
  %370 = and i32 %367, %368
  %371 = zext nneg i32 %370 to i64
  %372 = getelementptr inbounds nuw [4 x i8], ptr %369, i64 %371
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 1
  %374 = load i8, ptr %373, align 1, !tbaa !8
  %375 = zext i8 %374 to i64
  %376 = icmp samesign ult i64 %364, %375
  br i1 %376, label %342, label %377

377:                                              ; preds = %361
  %378 = zext i8 %374 to i32
  %379 = trunc nuw nsw i64 %364 to i32
  br label %380

380:                                              ; preds = %377, %324
  %381 = phi i32 [ %325, %324 ], [ %363, %377 ]
  %382 = phi i64 [ %326, %324 ], [ %362, %377 ]
  %383 = phi i32 [ %327, %324 ], [ %379, %377 ]
  %384 = phi i8 [ %337, %324 ], [ %374, %377 ]
  %385 = phi ptr [ %335, %324 ], [ %372, %377 ]
  %386 = phi i32 [ %338, %324 ], [ %378, %377 ]
  %387 = getelementptr inbounds nuw i8, ptr %385, i64 2
  %388 = load i16, ptr %387, align 2, !tbaa !45
  %389 = icmp ult i16 %388, 16
  br i1 %389, label %390, label %402

390:                                              ; preds = %380
  %391 = zext nneg i8 %384 to i64
  %392 = lshr i64 %382, %391
  %393 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %383, i32 %386), !nosanitize !34
  %394 = extractvalue { i32, i1 } %393, 0, !nosanitize !34
  %395 = extractvalue { i32, i1 } %393, 1, !nosanitize !34
  br i1 %395, label %396, label %397, !prof !35, !nosanitize !34

396:                                              ; preds = %390
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

397:                                              ; preds = %390
  %398 = load i32, ptr %31, align 4, !tbaa !44
  %399 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %398, i32 1), !nosanitize !34
  %400 = extractvalue { i32, i1 } %399, 1, !nosanitize !34
  br i1 %400, label %401, label %616, !prof !35, !nosanitize !34

401:                                              ; preds = %397
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

402:                                              ; preds = %380
  switch i16 %388, label %415 [
    i16 16, label %409
    i16 17, label %403
  ]

403:                                              ; preds = %402
  %404 = add nuw nsw i32 %386, 3
  %405 = icmp ult i32 %383, %404
  br i1 %405, label %406, label %496

406:                                              ; preds = %403
  %407 = zext nneg i32 %383 to i64
  %408 = zext nneg i32 %404 to i64
  br label %470

409:                                              ; preds = %402
  %410 = add nuw nsw i32 %386, 2
  %411 = icmp ult i32 %383, %410
  br i1 %411, label %412, label %447

412:                                              ; preds = %409
  %413 = zext nneg i32 %383 to i64
  %414 = zext nneg i32 %410 to i64
  br label %421

415:                                              ; preds = %402
  %416 = add nuw nsw i32 %386, 7
  %417 = icmp ult i32 %383, %416
  br i1 %417, label %418, label %537

418:                                              ; preds = %415
  %419 = zext nneg i32 %383 to i64
  %420 = zext nneg i32 %416 to i64
  br label %511

421:                                              ; preds = %440, %412
  %422 = phi i64 [ %413, %412 ], [ %443, %440 ]
  %423 = phi i64 [ %382, %412 ], [ %441, %440 ]
  %424 = phi i32 [ %381, %412 ], [ %442, %440 ]
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %421
  %427 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %426
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

430:                                              ; preds = %426, %421
  %431 = phi i32 [ %427, %426 ], [ %424, %421 ]
  %432 = load ptr, ptr %6, align 8, !tbaa !32
  %433 = getelementptr inbounds nuw i8, ptr %432, i64 1
  store ptr %433, ptr %6, align 8, !tbaa !32
  %434 = load i8, ptr %432, align 1, !tbaa !8
  %435 = zext i8 %434 to i64
  %436 = shl i64 %435, %422
  %437 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %423, i64 %436), !nosanitize !34
  %438 = extractvalue { i64, i1 } %437, 1, !nosanitize !34
  br i1 %438, label %439, label %440, !prof !35, !nosanitize !34

439:                                              ; preds = %430
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

440:                                              ; preds = %430
  %441 = extractvalue { i64, i1 } %437, 0, !nosanitize !34
  %442 = add i32 %431, -1
  %443 = add nuw nsw i64 %422, 8
  %444 = icmp samesign ult i64 %443, %414
  br i1 %444, label %421, label %445, !llvm.loop !54

445:                                              ; preds = %440
  %446 = trunc nuw nsw i64 %443 to i32
  br label %447

447:                                              ; preds = %445, %409
  %448 = phi i32 [ %381, %409 ], [ %442, %445 ]
  %449 = phi i64 [ %382, %409 ], [ %441, %445 ]
  %450 = phi i32 [ %383, %409 ], [ %446, %445 ]
  %451 = zext nneg i8 %384 to i64
  %452 = lshr i64 %449, %451
  %453 = sub nuw i32 %450, %386
  %454 = load i32, ptr %31, align 4, !tbaa !44
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %447
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1276

457:                                              ; preds = %447
  %458 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %453, i32 2), !nosanitize !34
  %459 = extractvalue { i32, i1 } %458, 1, !nosanitize !34
  br i1 %459, label %460, label %461, !prof !35, !nosanitize !34

460:                                              ; preds = %457
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

461:                                              ; preds = %457
  %462 = trunc i64 %452 to i32
  %463 = and i32 %462, 3
  %464 = add nuw nsw i32 %463, 3
  %465 = add i32 %454, -1
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %466
  %468 = load i16, ptr %467, align 2, !tbaa !45
  %469 = lshr i64 %452, 2
  br label %552

470:                                              ; preds = %489, %406
  %471 = phi i64 [ %407, %406 ], [ %492, %489 ]
  %472 = phi i64 [ %382, %406 ], [ %490, %489 ]
  %473 = phi i32 [ %381, %406 ], [ %491, %489 ]
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %470
  %476 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %475
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

479:                                              ; preds = %475, %470
  %480 = phi i32 [ %476, %475 ], [ %473, %470 ]
  %481 = load ptr, ptr %6, align 8, !tbaa !32
  %482 = getelementptr inbounds nuw i8, ptr %481, i64 1
  store ptr %482, ptr %6, align 8, !tbaa !32
  %483 = load i8, ptr %481, align 1, !tbaa !8
  %484 = zext i8 %483 to i64
  %485 = shl i64 %484, %471
  %486 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %472, i64 %485), !nosanitize !34
  %487 = extractvalue { i64, i1 } %486, 1, !nosanitize !34
  br i1 %487, label %488, label %489, !prof !35, !nosanitize !34

488:                                              ; preds = %479
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

489:                                              ; preds = %479
  %490 = extractvalue { i64, i1 } %486, 0, !nosanitize !34
  %491 = add i32 %480, -1
  %492 = add nuw nsw i64 %471, 8
  %493 = icmp samesign ult i64 %492, %408
  br i1 %493, label %470, label %494, !llvm.loop !55

494:                                              ; preds = %489
  %495 = trunc nuw nsw i64 %492 to i32
  br label %496

496:                                              ; preds = %494, %403
  %497 = phi i32 [ %381, %403 ], [ %491, %494 ]
  %498 = phi i64 [ %382, %403 ], [ %490, %494 ]
  %499 = phi i32 [ %383, %403 ], [ %495, %494 ]
  %500 = sub nuw i32 %499, %386
  %501 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %500, i32 3), !nosanitize !34
  %502 = extractvalue { i32, i1 } %501, 1, !nosanitize !34
  br i1 %502, label %503, label %504, !prof !35, !nosanitize !34

503:                                              ; preds = %496
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

504:                                              ; preds = %496
  %505 = zext nneg i8 %384 to i64
  %506 = lshr i64 %498, %505
  %507 = trunc i64 %506 to i32
  %508 = and i32 %507, 7
  %509 = add nuw nsw i32 %508, 3
  %510 = lshr i64 %506, 3
  br label %552

511:                                              ; preds = %530, %418
  %512 = phi i64 [ %419, %418 ], [ %533, %530 ]
  %513 = phi i64 [ %382, %418 ], [ %531, %530 ]
  %514 = phi i32 [ %381, %418 ], [ %532, %530 ]
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %520

516:                                              ; preds = %511
  %517 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %516
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

520:                                              ; preds = %516, %511
  %521 = phi i32 [ %517, %516 ], [ %514, %511 ]
  %522 = load ptr, ptr %6, align 8, !tbaa !32
  %523 = getelementptr inbounds nuw i8, ptr %522, i64 1
  store ptr %523, ptr %6, align 8, !tbaa !32
  %524 = load i8, ptr %522, align 1, !tbaa !8
  %525 = zext i8 %524 to i64
  %526 = shl i64 %525, %512
  %527 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %513, i64 %526), !nosanitize !34
  %528 = extractvalue { i64, i1 } %527, 1, !nosanitize !34
  br i1 %528, label %529, label %530, !prof !35, !nosanitize !34

529:                                              ; preds = %520
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

530:                                              ; preds = %520
  %531 = extractvalue { i64, i1 } %527, 0, !nosanitize !34
  %532 = add i32 %521, -1
  %533 = add nuw nsw i64 %512, 8
  %534 = icmp samesign ult i64 %533, %420
  br i1 %534, label %511, label %535, !llvm.loop !56

535:                                              ; preds = %530
  %536 = trunc nuw nsw i64 %533 to i32
  br label %537

537:                                              ; preds = %535, %415
  %538 = phi i32 [ %381, %415 ], [ %532, %535 ]
  %539 = phi i64 [ %382, %415 ], [ %531, %535 ]
  %540 = phi i32 [ %383, %415 ], [ %536, %535 ]
  %541 = sub nuw i32 %540, %386
  %542 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %541, i32 7), !nosanitize !34
  %543 = extractvalue { i32, i1 } %542, 1, !nosanitize !34
  br i1 %543, label %544, label %545, !prof !35, !nosanitize !34

544:                                              ; preds = %537
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

545:                                              ; preds = %537
  %546 = zext nneg i8 %384 to i64
  %547 = lshr i64 %539, %546
  %548 = trunc i64 %547 to i32
  %549 = and i32 %548, 127
  %550 = add nuw nsw i32 %549, 11
  %551 = lshr i64 %547, 7
  br label %552

552:                                              ; preds = %545, %504, %461
  %553 = phi i32 [ %448, %461 ], [ %497, %504 ], [ %538, %545 ]
  %554 = phi i64 [ %469, %461 ], [ %510, %504 ], [ %551, %545 ]
  %555 = phi { i32, i1 } [ %458, %461 ], [ %501, %504 ], [ %542, %545 ]
  %556 = phi i32 [ %464, %461 ], [ %509, %504 ], [ %550, %545 ]
  %557 = phi i16 [ %468, %461 ], [ 0, %504 ], [ 0, %545 ]
  %558 = extractvalue { i32, i1 } %555, 0
  %559 = load i32, ptr %31, align 4, !tbaa !44
  %560 = freeze i32 %559
  %561 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %560, i32 %556), !nosanitize !34
  %562 = extractvalue { i32, i1 } %561, 0, !nosanitize !34
  %563 = extractvalue { i32, i1 } %561, 1, !nosanitize !34
  br i1 %563, label %564, label %565, !prof !35, !nosanitize !34

564:                                              ; preds = %552
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

565:                                              ; preds = %552
  %566 = load i32, ptr %28, align 4, !tbaa !41
  %567 = load i32, ptr %29, align 8, !tbaa !42
  %568 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %566, i32 %567), !nosanitize !34
  %569 = extractvalue { i32, i1 } %568, 1, !nosanitize !34
  br i1 %569, label %570, label %571, !prof !35, !nosanitize !34

570:                                              ; preds = %565
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

571:                                              ; preds = %565
  %572 = extractvalue { i32, i1 } %568, 0, !nosanitize !34
  %573 = icmp ugt i32 %562, %572
  br i1 %573, label %592, label %574

574:                                              ; preds = %571
  %575 = icmp eq i32 %560, -1
  br i1 %575, label %606, label %576, !prof !52, !nosanitize !34

576:                                              ; preds = %574
  %577 = zext i32 %560 to i64
  %578 = add nsw i32 %556, -1
  %579 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %578, 0
  %580 = and i64 %577, 1
  %581 = icmp eq i64 %580, 0
  br i1 %581, label %582, label %588, !prof !52

582:                                              ; preds = %576
  %583 = or disjoint i64 %577, 1
  %584 = trunc nuw i64 %583 to i32
  store i32 %584, ptr %31, align 4, !tbaa !44
  %585 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %577
  store i16 %557, ptr %585, align 2, !tbaa !45
  %586 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %578, i32 1), !nosanitize !34
  %587 = extractvalue { i32, i1 } %586, 1, !nosanitize !34
  br i1 %587, label %595, label %588, !prof !57, !llvm.loop !58, !nosanitize !34

588:                                              ; preds = %582, %576
  %589 = phi { i32, i1 } [ %579, %576 ], [ %586, %582 ]
  %590 = phi i64 [ %577, %576 ], [ %583, %582 ]
  %591 = icmp eq i32 %560, -2
  br i1 %591, label %606, label %607, !prof !52

592:                                              ; preds = %571
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1276

593:                                              ; preds = %607, %596
  %594 = phi i32 [ %599, %596 ], [ %612, %607 ]
  store i32 %594, ptr %31, align 4, !tbaa !44
  br label %595

595:                                              ; preds = %593, %582
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

596:                                              ; preds = %607
  %597 = extractvalue { i32, i1 } %614, 0
  %598 = add nuw nsw i64 %609, 2
  %599 = trunc i64 %598 to i32
  %600 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %611
  store i16 %557, ptr %600, align 2, !tbaa !45
  %601 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %597, i32 1), !nosanitize !34
  %602 = extractvalue { i32, i1 } %601, 1, !nosanitize !34
  br i1 %602, label %593, label %603, !prof !57, !llvm.loop !58, !nosanitize !34

603:                                              ; preds = %596
  %604 = icmp eq i64 %598, 4294967295
  br i1 %604, label %605, label %607, !prof !57, !llvm.loop !59, !nosanitize !34

605:                                              ; preds = %603
  store i32 %599, ptr %31, align 4, !tbaa !44
  br label %606

606:                                              ; preds = %605, %588, %574
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

607:                                              ; preds = %603, %588
  %608 = phi { i32, i1 } [ %601, %603 ], [ %589, %588 ]
  %609 = phi i64 [ %598, %603 ], [ %590, %588 ]
  %610 = extractvalue { i32, i1 } %608, 0
  %611 = add nuw nsw i64 %609, 1
  %612 = trunc i64 %611 to i32
  %613 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %609
  store i16 %557, ptr %613, align 2, !tbaa !45
  %614 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %610, i32 1), !nosanitize !34
  %615 = extractvalue { i32, i1 } %614, 1, !nosanitize !34
  br i1 %615, label %593, label %596, !prof !57, !llvm.loop !58, !nosanitize !34

616:                                              ; preds = %397
  %617 = extractvalue { i32, i1 } %399, 0, !nosanitize !34
  store i32 %617, ptr %31, align 4, !tbaa !44
  %618 = zext i32 %398 to i64
  %619 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %618
  store i16 %388, ptr %619, align 2, !tbaa !45
  %620 = load i32, ptr %28, align 4, !tbaa !41
  %621 = load i32, ptr %29, align 8, !tbaa !42
  %622 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %620, i32 %621), !nosanitize !34
  %623 = extractvalue { i32, i1 } %622, 1, !nosanitize !34
  br i1 %623, label %320, label %321, !prof !57, !llvm.loop !53, !nosanitize !34

624:                                              ; preds = %321, %317
  %625 = phi i32 [ %313, %317 ], [ %620, %321 ]
  %626 = phi i32 [ %294, %317 ], [ %394, %321 ]
  %627 = phi i64 [ %295, %317 ], [ %392, %321 ]
  %628 = phi i32 [ %279, %317 ], [ %381, %321 ]
  %629 = load i32, ptr %14, align 8, !tbaa !29
  %630 = icmp eq i32 %629, 16209
  br i1 %630, label %1276, label %631

631:                                              ; preds = %624
  %632 = load i16, ptr %38, align 8, !tbaa !45
  %633 = icmp eq i16 %632, 0
  br i1 %633, label %634, label %635

634:                                              ; preds = %631
  store ptr @.str.6, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1276

635:                                              ; preds = %631
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 9, ptr %36, align 8, !tbaa !51
  %636 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %625, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %639, label %638

638:                                              ; preds = %635
  store ptr @.str.7, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1276

639:                                              ; preds = %635
  %640 = load ptr, ptr %34, align 8, !tbaa !49
  store ptr %640, ptr %39, align 8, !tbaa !61
  store i32 6, ptr %40, align 4, !tbaa !62
  %641 = load i32, ptr %28, align 4, !tbaa !41
  %642 = zext i32 %641 to i64
  %643 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %642
  %644 = load i32, ptr %29, align 8, !tbaa !42
  %645 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %643, i32 noundef %644, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #6
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %648, label %647

647:                                              ; preds = %639
  store ptr @.str.8, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1276

648:                                              ; preds = %639
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %649

649:                                              ; preds = %648, %49
  %650 = phi i32 [ %628, %648 ], [ %52, %49 ]
  %651 = phi i64 [ %627, %648 ], [ %54, %49 ]
  %652 = phi i32 [ %626, %648 ], [ %55, %49 ]
  %653 = icmp ugt i32 %650, 5
  %654 = icmp ugt i32 %53, 257
  %655 = select i1 %653, i1 %654, i1 false
  br i1 %655, label %671, label %656

656:                                              ; preds = %649
  %657 = load i32, ptr %36, align 8, !tbaa !51
  %658 = shl nsw i32 -1, %657
  %659 = xor i32 %658, -1
  %660 = trunc i64 %651 to i32
  %661 = load ptr, ptr %35, align 8, !tbaa !50
  %662 = and i32 %659, %660
  %663 = zext nneg i32 %662 to i64
  %664 = getelementptr inbounds nuw [4 x i8], ptr %661, i64 %663
  %665 = getelementptr inbounds nuw i8, ptr %664, i64 1
  %666 = load i8, ptr %665, align 1, !tbaa !8
  %667 = zext i8 %666 to i32
  %668 = icmp ult i32 %652, %667
  br i1 %668, label %669, label %718

669:                                              ; preds = %656
  %670 = zext nneg i32 %652 to i64
  br label %680

671:                                              ; preds = %649
  store ptr %51, ptr %44, align 8, !tbaa !63
  store i32 %53, ptr %45, align 8, !tbaa !64
  %672 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %672, ptr %0, align 8, !tbaa !31
  store i32 %650, ptr %46, align 8, !tbaa !33
  store i64 %651, ptr %47, align 8, !tbaa !65
  store i32 %652, ptr %48, align 8, !tbaa !66
  %673 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %673) #6
  %674 = load ptr, ptr %44, align 8, !tbaa !63
  %675 = load i32, ptr %45, align 8, !tbaa !64
  %676 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %676, ptr %6, align 8, !tbaa !32
  %677 = load i32, ptr %46, align 8, !tbaa !33
  %678 = load i64, ptr %47, align 8, !tbaa !65
  %679 = load i32, ptr %48, align 8, !tbaa !66
  br label %1276

680:                                              ; preds = %699, %669
  %681 = phi i64 [ %670, %669 ], [ %702, %699 ]
  %682 = phi i64 [ %651, %669 ], [ %700, %699 ]
  %683 = phi i32 [ %650, %669 ], [ %701, %699 ]
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %689

685:                                              ; preds = %680
  %686 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %689

688:                                              ; preds = %685
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

689:                                              ; preds = %685, %680
  %690 = phi i32 [ %686, %685 ], [ %683, %680 ]
  %691 = load ptr, ptr %6, align 8, !tbaa !32
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 1
  store ptr %692, ptr %6, align 8, !tbaa !32
  %693 = load i8, ptr %691, align 1, !tbaa !8
  %694 = zext i8 %693 to i64
  %695 = shl i64 %694, %681
  %696 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %682, i64 %695), !nosanitize !34
  %697 = extractvalue { i64, i1 } %696, 1, !nosanitize !34
  br i1 %697, label %698, label %699, !prof !35, !nosanitize !34

698:                                              ; preds = %689
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

699:                                              ; preds = %689
  %700 = extractvalue { i64, i1 } %696, 0, !nosanitize !34
  %701 = add i32 %690, -1
  %702 = add nuw nsw i64 %681, 8
  %703 = load i32, ptr %36, align 8, !tbaa !51
  %704 = shl nsw i32 -1, %703
  %705 = xor i32 %704, -1
  %706 = trunc i64 %700 to i32
  %707 = load ptr, ptr %35, align 8, !tbaa !50
  %708 = and i32 %705, %706
  %709 = zext nneg i32 %708 to i64
  %710 = getelementptr inbounds nuw [4 x i8], ptr %707, i64 %709
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 1
  %712 = load i8, ptr %711, align 1, !tbaa !8
  %713 = zext i8 %712 to i64
  %714 = icmp samesign ult i64 %702, %713
  br i1 %714, label %680, label %715

715:                                              ; preds = %699
  %716 = zext i8 %712 to i32
  %717 = trunc nuw nsw i64 %702 to i32
  br label %718

718:                                              ; preds = %715, %656
  %719 = phi ptr [ %661, %656 ], [ %707, %715 ]
  %720 = phi i32 [ %650, %656 ], [ %701, %715 ]
  %721 = phi i64 [ %651, %656 ], [ %700, %715 ]
  %722 = phi i32 [ %652, %656 ], [ %717, %715 ]
  %723 = phi ptr [ %664, %656 ], [ %710, %715 ]
  %724 = phi i8 [ %666, %656 ], [ %712, %715 ]
  %725 = phi i32 [ %667, %656 ], [ %716, %715 ]
  %726 = getelementptr inbounds nuw i8, ptr %723, i64 2
  %727 = load i16, ptr %726, align 2, !tbaa !45
  %728 = load i8, ptr %723, align 2, !tbaa !8
  %729 = add i8 %728, -1
  %730 = icmp ult i8 %729, 15
  br i1 %730, label %731, label %796

731:                                              ; preds = %718
  %732 = zext nneg i8 %728 to i32
  %733 = add nuw nsw i32 %725, %732
  %734 = shl nsw i32 -1, %733
  %735 = xor i32 %734, -1
  %736 = zext i16 %727 to i32
  %737 = trunc i64 %721 to i32
  %738 = and i32 %737, %735
  %739 = lshr i32 %738, %725
  %740 = add nuw i32 %739, %736
  %741 = zext i32 %740 to i64
  %742 = getelementptr inbounds nuw [4 x i8], ptr %719, i64 %741
  %743 = getelementptr inbounds nuw i8, ptr %742, i64 1
  %744 = load i8, ptr %743, align 1, !tbaa !8
  %745 = zext i8 %744 to i32
  %746 = add nuw nsw i32 %725, %745
  %747 = icmp ugt i32 %746, %722
  br i1 %747, label %748, label %784

748:                                              ; preds = %768, %731
  %749 = phi i32 [ %771, %768 ], [ %722, %731 ]
  %750 = phi i64 [ %769, %768 ], [ %721, %731 ]
  %751 = phi i32 [ %770, %768 ], [ %720, %731 ]
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %757

753:                                              ; preds = %748
  %754 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %757

756:                                              ; preds = %753
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

757:                                              ; preds = %753, %748
  %758 = phi i32 [ %754, %753 ], [ %751, %748 ]
  %759 = load ptr, ptr %6, align 8, !tbaa !32
  %760 = getelementptr inbounds nuw i8, ptr %759, i64 1
  store ptr %760, ptr %6, align 8, !tbaa !32
  %761 = load i8, ptr %759, align 1, !tbaa !8
  %762 = zext i8 %761 to i64
  %763 = zext nneg i32 %749 to i64
  %764 = shl i64 %762, %763
  %765 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %750, i64 %764), !nosanitize !34
  %766 = extractvalue { i64, i1 } %765, 1, !nosanitize !34
  br i1 %766, label %767, label %768, !prof !35, !nosanitize !34

767:                                              ; preds = %757
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

768:                                              ; preds = %757
  %769 = extractvalue { i64, i1 } %765, 0, !nosanitize !34
  %770 = add i32 %758, -1
  %771 = add nuw nsw i32 %749, 8
  %772 = load ptr, ptr %35, align 8, !tbaa !50
  %773 = trunc i64 %769 to i32
  %774 = and i32 %773, %735
  %775 = lshr i32 %774, %725
  %776 = add nuw i32 %775, %736
  %777 = zext i32 %776 to i64
  %778 = getelementptr inbounds nuw [4 x i8], ptr %772, i64 %777
  %779 = getelementptr inbounds nuw i8, ptr %778, i64 1
  %780 = load i8, ptr %779, align 1, !tbaa !8
  %781 = zext i8 %780 to i32
  %782 = add nuw nsw i32 %725, %781
  %783 = icmp ugt i32 %782, %771
  br i1 %783, label %748, label %784

784:                                              ; preds = %768, %731
  %785 = phi i32 [ %720, %731 ], [ %770, %768 ]
  %786 = phi i64 [ %721, %731 ], [ %769, %768 ]
  %787 = phi i32 [ %722, %731 ], [ %771, %768 ]
  %788 = phi ptr [ %742, %731 ], [ %778, %768 ]
  %789 = phi i8 [ %744, %731 ], [ %780, %768 ]
  %790 = getelementptr inbounds nuw i8, ptr %788, i64 2
  %791 = load i16, ptr %790, align 2, !tbaa !45
  %792 = load i8, ptr %788, align 2, !tbaa !8
  %793 = sub nuw i32 %787, %725
  %794 = zext nneg i8 %724 to i64
  %795 = lshr i64 %786, %794
  br label %796

796:                                              ; preds = %784, %718
  %797 = phi i32 [ %785, %784 ], [ %720, %718 ]
  %798 = phi i64 [ %795, %784 ], [ %721, %718 ]
  %799 = phi i32 [ %793, %784 ], [ %722, %718 ]
  %800 = phi i16 [ %791, %784 ], [ %727, %718 ]
  %801 = phi i8 [ %789, %784 ], [ %724, %718 ]
  %802 = phi i8 [ %792, %784 ], [ %728, %718 ]
  %803 = zext i8 %801 to i32
  %804 = zext nneg i8 %801 to i64
  %805 = lshr i64 %798, %804
  %806 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %799, i32 %803), !nosanitize !34
  %807 = extractvalue { i32, i1 } %806, 0, !nosanitize !34
  %808 = extractvalue { i32, i1 } %806, 1, !nosanitize !34
  br i1 %808, label %809, label %810, !prof !35, !nosanitize !34

809:                                              ; preds = %796
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

810:                                              ; preds = %796
  %811 = zext i16 %800 to i32
  store i32 %811, ptr %41, align 4, !tbaa !38
  %812 = zext i8 %802 to i32
  %813 = icmp eq i8 %802, 0
  br i1 %813, label %814, label %834

814:                                              ; preds = %810
  %815 = icmp eq i32 %53, 0
  br i1 %815, label %816, label %823

816:                                              ; preds = %814
  %817 = load ptr, ptr %24, align 8, !tbaa !25
  %818 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %818, ptr %16, align 8, !tbaa !27
  %819 = call i32 %3(ptr noundef %4, ptr noundef %817, i32 noundef %818) #6
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %1285

821:                                              ; preds = %816
  %822 = load i32, ptr %41, align 4, !tbaa !38
  br label %823

823:                                              ; preds = %821, %814
  %824 = phi i32 [ %822, %821 ], [ %811, %814 ]
  %825 = phi ptr [ %817, %821 ], [ %51, %814 ]
  %826 = phi i32 [ %818, %821 ], [ %53, %814 ]
  %827 = trunc i32 %824 to i8
  store i8 %827, ptr %825, align 1, !tbaa !8
  %828 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %826, i32 1), !nosanitize !34
  %829 = extractvalue { i32, i1 } %828, 1, !nosanitize !34
  br i1 %829, label %830, label %831, !prof !35, !nosanitize !34

830:                                              ; preds = %823
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

831:                                              ; preds = %823
  %832 = extractvalue { i32, i1 } %828, 0, !nosanitize !34
  %833 = getelementptr inbounds nuw i8, ptr %825, i64 1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %1276

834:                                              ; preds = %810
  %835 = and i32 %812, 32
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %838, label %837

837:                                              ; preds = %834
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %1276

838:                                              ; preds = %834
  %839 = and i32 %812, 64
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %842, label %841

841:                                              ; preds = %838
  store ptr @.str.9, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1276

842:                                              ; preds = %838
  %843 = and i32 %812, 15
  store i32 %843, ptr %42, align 4, !tbaa !67
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %902, label %845

845:                                              ; preds = %842
  %846 = icmp ult i32 %807, %843
  br i1 %846, label %847, label %880

847:                                              ; preds = %845
  %848 = zext nneg i32 %807 to i64
  br label %849

849:                                              ; preds = %873, %847
  %850 = phi i64 [ %848, %847 ], [ %874, %873 ]
  %851 = phi i64 [ %805, %847 ], [ %867, %873 ]
  %852 = phi i32 [ %797, %847 ], [ %860, %873 ]
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %854, label %858

854:                                              ; preds = %849
  %855 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %857, label %858

857:                                              ; preds = %854
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

858:                                              ; preds = %854, %849
  %859 = phi i32 [ %855, %854 ], [ %852, %849 ]
  %860 = add i32 %859, -1
  %861 = load ptr, ptr %6, align 8, !tbaa !32
  %862 = getelementptr inbounds nuw i8, ptr %861, i64 1
  store ptr %862, ptr %6, align 8, !tbaa !32
  %863 = load i8, ptr %861, align 1, !tbaa !8
  %864 = zext i8 %863 to i64
  %865 = shl i64 %864, %850
  %866 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %851, i64 %865), !nosanitize !34
  %867 = extractvalue { i64, i1 } %866, 0, !nosanitize !34
  %868 = extractvalue { i64, i1 } %866, 1, !nosanitize !34
  br i1 %868, label %869, label %870, !prof !35, !nosanitize !34

869:                                              ; preds = %858
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

870:                                              ; preds = %858
  %871 = icmp samesign ugt i64 %850, 4294967287
  br i1 %871, label %872, label %873, !prof !35, !nosanitize !34

872:                                              ; preds = %870
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

873:                                              ; preds = %870
  %874 = add nuw nsw i64 %850, 8
  %875 = trunc nuw i64 %874 to i32
  %876 = load i32, ptr %42, align 4, !tbaa !67
  %877 = icmp ugt i32 %876, %875
  br i1 %877, label %849, label %878, !llvm.loop !68

878:                                              ; preds = %873
  %879 = load i32, ptr %41, align 4, !tbaa !38
  br label %880

880:                                              ; preds = %878, %845
  %881 = phi i32 [ %811, %845 ], [ %879, %878 ]
  %882 = phi i32 [ %797, %845 ], [ %860, %878 ]
  %883 = phi i64 [ %805, %845 ], [ %867, %878 ]
  %884 = phi i32 [ %807, %845 ], [ %875, %878 ]
  %885 = phi i32 [ %843, %845 ], [ %876, %878 ]
  %886 = shl nsw i32 -1, %885
  %887 = xor i32 %886, -1
  %888 = trunc i64 %883 to i32
  %889 = and i32 %887, %888
  %890 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %881, i32 %889), !nosanitize !34
  %891 = extractvalue { i32, i1 } %890, 1, !nosanitize !34
  br i1 %891, label %892, label %893, !prof !35, !nosanitize !34

892:                                              ; preds = %880
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

893:                                              ; preds = %880
  %894 = extractvalue { i32, i1 } %890, 0, !nosanitize !34
  store i32 %894, ptr %41, align 4, !tbaa !38
  %895 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %884, i32 %885), !nosanitize !34
  %896 = extractvalue { i32, i1 } %895, 1, !nosanitize !34
  br i1 %896, label %897, label %898, !prof !35, !nosanitize !34

897:                                              ; preds = %893
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

898:                                              ; preds = %893
  %899 = extractvalue { i32, i1 } %895, 0, !nosanitize !34
  %900 = zext nneg i32 %885 to i64
  %901 = lshr i64 %883, %900
  br label %902

902:                                              ; preds = %898, %842
  %903 = phi i32 [ %882, %898 ], [ %797, %842 ]
  %904 = phi i64 [ %901, %898 ], [ %805, %842 ]
  %905 = phi i32 [ %899, %898 ], [ %807, %842 ]
  %906 = load i32, ptr %40, align 4, !tbaa !62
  %907 = shl nsw i32 -1, %906
  %908 = xor i32 %907, -1
  %909 = trunc i64 %904 to i32
  %910 = load ptr, ptr %39, align 8, !tbaa !61
  %911 = and i32 %908, %909
  %912 = zext nneg i32 %911 to i64
  %913 = getelementptr inbounds nuw [4 x i8], ptr %910, i64 %912
  %914 = getelementptr inbounds nuw i8, ptr %913, i64 1
  %915 = load i8, ptr %914, align 1, !tbaa !8
  %916 = zext i8 %915 to i32
  %917 = icmp ult i32 %905, %916
  br i1 %917, label %918, label %958

918:                                              ; preds = %902
  %919 = zext nneg i32 %905 to i64
  br label %920

920:                                              ; preds = %939, %918
  %921 = phi i64 [ %919, %918 ], [ %942, %939 ]
  %922 = phi i64 [ %904, %918 ], [ %940, %939 ]
  %923 = phi i32 [ %903, %918 ], [ %941, %939 ]
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %929

925:                                              ; preds = %920
  %926 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %929

928:                                              ; preds = %925
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

929:                                              ; preds = %925, %920
  %930 = phi i32 [ %926, %925 ], [ %923, %920 ]
  %931 = load ptr, ptr %6, align 8, !tbaa !32
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 1
  store ptr %932, ptr %6, align 8, !tbaa !32
  %933 = load i8, ptr %931, align 1, !tbaa !8
  %934 = zext i8 %933 to i64
  %935 = shl i64 %934, %921
  %936 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %922, i64 %935), !nosanitize !34
  %937 = extractvalue { i64, i1 } %936, 1, !nosanitize !34
  br i1 %937, label %938, label %939, !prof !35, !nosanitize !34

938:                                              ; preds = %929
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

939:                                              ; preds = %929
  %940 = extractvalue { i64, i1 } %936, 0, !nosanitize !34
  %941 = add i32 %930, -1
  %942 = add nuw nsw i64 %921, 8
  %943 = load i32, ptr %40, align 4, !tbaa !62
  %944 = shl nsw i32 -1, %943
  %945 = xor i32 %944, -1
  %946 = trunc i64 %940 to i32
  %947 = load ptr, ptr %39, align 8, !tbaa !61
  %948 = and i32 %945, %946
  %949 = zext nneg i32 %948 to i64
  %950 = getelementptr inbounds nuw [4 x i8], ptr %947, i64 %949
  %951 = getelementptr inbounds nuw i8, ptr %950, i64 1
  %952 = load i8, ptr %951, align 1, !tbaa !8
  %953 = zext i8 %952 to i64
  %954 = icmp samesign ult i64 %942, %953
  br i1 %954, label %920, label %955

955:                                              ; preds = %939
  %956 = zext i8 %952 to i32
  %957 = trunc nuw nsw i64 %942 to i32
  br label %958

958:                                              ; preds = %955, %902
  %959 = phi ptr [ %910, %902 ], [ %947, %955 ]
  %960 = phi i32 [ %903, %902 ], [ %941, %955 ]
  %961 = phi i64 [ %904, %902 ], [ %940, %955 ]
  %962 = phi i32 [ %905, %902 ], [ %957, %955 ]
  %963 = phi ptr [ %913, %902 ], [ %950, %955 ]
  %964 = phi i8 [ %915, %902 ], [ %952, %955 ]
  %965 = phi i32 [ %916, %902 ], [ %956, %955 ]
  %966 = getelementptr inbounds nuw i8, ptr %963, i64 2
  %967 = load i16, ptr %966, align 2, !tbaa !45
  %968 = load i8, ptr %963, align 2, !tbaa !8
  %969 = icmp ult i8 %968, 16
  br i1 %969, label %970, label %1035

970:                                              ; preds = %958
  %971 = zext nneg i8 %968 to i32
  %972 = add nuw nsw i32 %965, %971
  %973 = shl nsw i32 -1, %972
  %974 = xor i32 %973, -1
  %975 = zext i16 %967 to i32
  %976 = trunc i64 %961 to i32
  %977 = and i32 %976, %974
  %978 = lshr i32 %977, %965
  %979 = add nuw i32 %978, %975
  %980 = zext i32 %979 to i64
  %981 = getelementptr inbounds nuw [4 x i8], ptr %959, i64 %980
  %982 = getelementptr inbounds nuw i8, ptr %981, i64 1
  %983 = load i8, ptr %982, align 1, !tbaa !8
  %984 = zext i8 %983 to i32
  %985 = add nuw nsw i32 %965, %984
  %986 = icmp ugt i32 %985, %962
  br i1 %986, label %987, label %1023

987:                                              ; preds = %1007, %970
  %988 = phi i32 [ %1010, %1007 ], [ %962, %970 ]
  %989 = phi i64 [ %1008, %1007 ], [ %961, %970 ]
  %990 = phi i32 [ %1009, %1007 ], [ %960, %970 ]
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %992, label %996

992:                                              ; preds = %987
  %993 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %996

995:                                              ; preds = %992
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

996:                                              ; preds = %992, %987
  %997 = phi i32 [ %993, %992 ], [ %990, %987 ]
  %998 = load ptr, ptr %6, align 8, !tbaa !32
  %999 = getelementptr inbounds nuw i8, ptr %998, i64 1
  store ptr %999, ptr %6, align 8, !tbaa !32
  %1000 = load i8, ptr %998, align 1, !tbaa !8
  %1001 = zext i8 %1000 to i64
  %1002 = zext nneg i32 %988 to i64
  %1003 = shl i64 %1001, %1002
  %1004 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %989, i64 %1003), !nosanitize !34
  %1005 = extractvalue { i64, i1 } %1004, 1, !nosanitize !34
  br i1 %1005, label %1006, label %1007, !prof !35, !nosanitize !34

1006:                                             ; preds = %996
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1007:                                             ; preds = %996
  %1008 = extractvalue { i64, i1 } %1004, 0, !nosanitize !34
  %1009 = add i32 %997, -1
  %1010 = add nuw nsw i32 %988, 8
  %1011 = load ptr, ptr %39, align 8, !tbaa !61
  %1012 = trunc i64 %1008 to i32
  %1013 = and i32 %1012, %974
  %1014 = lshr i32 %1013, %965
  %1015 = add nuw i32 %1014, %975
  %1016 = zext i32 %1015 to i64
  %1017 = getelementptr inbounds nuw [4 x i8], ptr %1011, i64 %1016
  %1018 = getelementptr inbounds nuw i8, ptr %1017, i64 1
  %1019 = load i8, ptr %1018, align 1, !tbaa !8
  %1020 = zext i8 %1019 to i32
  %1021 = add nuw nsw i32 %965, %1020
  %1022 = icmp ugt i32 %1021, %1010
  br i1 %1022, label %987, label %1023

1023:                                             ; preds = %1007, %970
  %1024 = phi i32 [ %960, %970 ], [ %1009, %1007 ]
  %1025 = phi i64 [ %961, %970 ], [ %1008, %1007 ]
  %1026 = phi i32 [ %962, %970 ], [ %1010, %1007 ]
  %1027 = phi ptr [ %981, %970 ], [ %1017, %1007 ]
  %1028 = phi i8 [ %983, %970 ], [ %1019, %1007 ]
  %1029 = getelementptr inbounds nuw i8, ptr %1027, i64 2
  %1030 = load i16, ptr %1029, align 2, !tbaa !45
  %1031 = load i8, ptr %1027, align 2, !tbaa !8
  %1032 = sub nuw i32 %1026, %965
  %1033 = zext nneg i8 %964 to i64
  %1034 = lshr i64 %1025, %1033
  br label %1035

1035:                                             ; preds = %1023, %958
  %1036 = phi i32 [ %1024, %1023 ], [ %960, %958 ]
  %1037 = phi i64 [ %1034, %1023 ], [ %961, %958 ]
  %1038 = phi i32 [ %1032, %1023 ], [ %962, %958 ]
  %1039 = phi i16 [ %1030, %1023 ], [ %967, %958 ]
  %1040 = phi i8 [ %1028, %1023 ], [ %964, %958 ]
  %1041 = phi i8 [ %1031, %1023 ], [ %968, %958 ]
  %1042 = zext i8 %1040 to i32
  %1043 = zext nneg i8 %1040 to i64
  %1044 = lshr i64 %1037, %1043
  %1045 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1038, i32 %1042), !nosanitize !34
  %1046 = extractvalue { i32, i1 } %1045, 0, !nosanitize !34
  %1047 = extractvalue { i32, i1 } %1045, 1, !nosanitize !34
  br i1 %1047, label %1048, label %1049, !prof !35, !nosanitize !34

1048:                                             ; preds = %1035
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1049:                                             ; preds = %1035
  %1050 = zext i8 %1041 to i32
  %1051 = and i32 %1050, 64
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1054, label %1053

1053:                                             ; preds = %1049
  store ptr @.str.10, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1276

1054:                                             ; preds = %1049
  %1055 = zext i16 %1039 to i32
  store i32 %1055, ptr %43, align 8, !tbaa !69
  %1056 = and i32 %1050, 15
  store i32 %1056, ptr %42, align 4, !tbaa !67
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1115, label %1058

1058:                                             ; preds = %1054
  %1059 = icmp ult i32 %1046, %1056
  br i1 %1059, label %1060, label %1093

1060:                                             ; preds = %1058
  %1061 = zext nneg i32 %1046 to i64
  br label %1062

1062:                                             ; preds = %1086, %1060
  %1063 = phi i64 [ %1061, %1060 ], [ %1087, %1086 ]
  %1064 = phi i64 [ %1044, %1060 ], [ %1080, %1086 ]
  %1065 = phi i32 [ %1036, %1060 ], [ %1073, %1086 ]
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1067, label %1071

1067:                                             ; preds = %1062
  %1068 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1070, label %1071

1070:                                             ; preds = %1067
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1285

1071:                                             ; preds = %1067, %1062
  %1072 = phi i32 [ %1068, %1067 ], [ %1065, %1062 ]
  %1073 = add i32 %1072, -1
  %1074 = load ptr, ptr %6, align 8, !tbaa !32
  %1075 = getelementptr inbounds nuw i8, ptr %1074, i64 1
  store ptr %1075, ptr %6, align 8, !tbaa !32
  %1076 = load i8, ptr %1074, align 1, !tbaa !8
  %1077 = zext i8 %1076 to i64
  %1078 = shl i64 %1077, %1063
  %1079 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1064, i64 %1078), !nosanitize !34
  %1080 = extractvalue { i64, i1 } %1079, 0, !nosanitize !34
  %1081 = extractvalue { i64, i1 } %1079, 1, !nosanitize !34
  br i1 %1081, label %1082, label %1083, !prof !35, !nosanitize !34

1082:                                             ; preds = %1071
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1083:                                             ; preds = %1071
  %1084 = icmp samesign ugt i64 %1063, 4294967287
  br i1 %1084, label %1085, label %1086, !prof !35, !nosanitize !34

1085:                                             ; preds = %1083
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1086:                                             ; preds = %1083
  %1087 = add nuw nsw i64 %1063, 8
  %1088 = trunc nuw i64 %1087 to i32
  %1089 = load i32, ptr %42, align 4, !tbaa !67
  %1090 = icmp ugt i32 %1089, %1088
  br i1 %1090, label %1062, label %1091, !llvm.loop !70

1091:                                             ; preds = %1086
  %1092 = load i32, ptr %43, align 8, !tbaa !69
  br label %1093

1093:                                             ; preds = %1091, %1058
  %1094 = phi i32 [ %1055, %1058 ], [ %1092, %1091 ]
  %1095 = phi i32 [ %1036, %1058 ], [ %1073, %1091 ]
  %1096 = phi i64 [ %1044, %1058 ], [ %1080, %1091 ]
  %1097 = phi i32 [ %1046, %1058 ], [ %1088, %1091 ]
  %1098 = phi i32 [ %1056, %1058 ], [ %1089, %1091 ]
  %1099 = shl nsw i32 -1, %1098
  %1100 = xor i32 %1099, -1
  %1101 = trunc i64 %1096 to i32
  %1102 = and i32 %1100, %1101
  %1103 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1094, i32 %1102), !nosanitize !34
  %1104 = extractvalue { i32, i1 } %1103, 1, !nosanitize !34
  br i1 %1104, label %1105, label %1106, !prof !35, !nosanitize !34

1105:                                             ; preds = %1093
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1106:                                             ; preds = %1093
  %1107 = extractvalue { i32, i1 } %1103, 0, !nosanitize !34
  store i32 %1107, ptr %43, align 8, !tbaa !69
  %1108 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1097, i32 %1098), !nosanitize !34
  %1109 = extractvalue { i32, i1 } %1108, 1, !nosanitize !34
  br i1 %1109, label %1110, label %1111, !prof !35, !nosanitize !34

1110:                                             ; preds = %1106
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1111:                                             ; preds = %1106
  %1112 = extractvalue { i32, i1 } %1108, 0, !nosanitize !34
  %1113 = zext nneg i32 %1098 to i64
  %1114 = lshr i64 %1096, %1113
  br label %1115

1115:                                             ; preds = %1111, %1054
  %1116 = phi i32 [ %1107, %1111 ], [ %1055, %1054 ]
  %1117 = phi i32 [ %1095, %1111 ], [ %1036, %1054 ]
  %1118 = phi i64 [ %1114, %1111 ], [ %1044, %1054 ]
  %1119 = phi i32 [ %1112, %1111 ], [ %1046, %1054 ]
  %1120 = load i32, ptr %26, align 4, !tbaa !24
  %1121 = load i32, ptr %16, align 8, !tbaa !27
  %1122 = icmp ult i32 %1121, %1120
  %1123 = select i1 %1122, i32 %53, i32 0
  %1124 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1120, i32 %1123), !nosanitize !34
  %1125 = extractvalue { i32, i1 } %1124, 1, !nosanitize !34
  br i1 %1125, label %1126, label %1127, !prof !35, !nosanitize !34

1126:                                             ; preds = %1115
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1127:                                             ; preds = %1115
  %1128 = extractvalue { i32, i1 } %1124, 0, !nosanitize !34
  %1129 = icmp ugt i32 %1116, %1128
  br i1 %1129, label %1130, label %1131

1130:                                             ; preds = %1127
  store ptr @.str.11, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1276

1131:                                             ; preds = %1272, %1127
  %1132 = phi ptr [ %1273, %1272 ], [ %51, %1127 ]
  %1133 = phi i32 [ %1160, %1272 ], [ %53, %1127 ]
  %1134 = icmp eq i32 %1133, 0
  %1135 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1134, label %1136, label %1142

1136:                                             ; preds = %1131
  %1137 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1135, ptr %16, align 8, !tbaa !27
  %1138 = call i32 %3(ptr noundef %4, ptr noundef %1137, i32 noundef %1135) #6
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1140, label %1285

1140:                                             ; preds = %1136
  %1141 = load i32, ptr %26, align 4, !tbaa !24
  br label %1142

1142:                                             ; preds = %1140, %1131
  %1143 = phi i32 [ %1141, %1140 ], [ %1135, %1131 ]
  %1144 = phi ptr [ %1137, %1140 ], [ %1132, %1131 ]
  %1145 = phi i32 [ %1135, %1140 ], [ %1133, %1131 ]
  %1146 = load i32, ptr %43, align 8, !tbaa !69
  %1147 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1143, i32 %1146), !nosanitize !34
  %1148 = extractvalue { i32, i1 } %1147, 1, !nosanitize !34
  br i1 %1148, label %1149, label %1150, !prof !35, !nosanitize !34

1149:                                             ; preds = %1142
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1150:                                             ; preds = %1142
  %1151 = extractvalue { i32, i1 } %1147, 0, !nosanitize !34
  %1152 = icmp ult i32 %1151, %1145
  %1153 = select i1 %1152, i32 %1151, i32 0
  %1154 = sub i32 %1145, %1153
  %1155 = load i32, ptr %41, align 4, !tbaa !38
  %1156 = call i32 @llvm.umin.i32(i32 %1154, i32 %1155)
  %1157 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1155, i32 %1156), !nosanitize !34
  %1158 = extractvalue { i32, i1 } %1157, 0, !nosanitize !34
  store i32 %1158, ptr %41, align 4, !tbaa !38
  %1159 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1145, i32 %1156), !nosanitize !34
  %1160 = extractvalue { i32, i1 } %1159, 0, !nosanitize !34
  %1161 = extractvalue { i32, i1 } %1159, 1, !nosanitize !34
  br i1 %1161, label %1241, label %1162, !prof !35, !nosanitize !34

1162:                                             ; preds = %1150
  %1163 = zext i32 %1151 to i64
  %1164 = zext i32 %1146 to i64
  %1165 = sub nsw i64 0, %1164
  %1166 = select i1 %1152, i64 %1163, i64 %1165
  %1167 = getelementptr inbounds i8, ptr %1144, i64 %1166
  %1168 = icmp eq i32 %1156, 0
  br i1 %1168, label %1239, label %1169, !prof !35, !nosanitize !34

1169:                                             ; preds = %1162
  %1170 = call i32 @llvm.umin.i32(i32 %1155, i32 %1154)
  %1171 = zext i32 %1170 to i64
  %1172 = icmp ult i32 %1170, 4
  %1173 = add nsw i64 %1166, 31
  %1174 = icmp ult i64 %1173, 32
  %1175 = select i1 %1172, i1 true, i1 %1174
  br i1 %1175, label %1215, label %1176

1176:                                             ; preds = %1169
  %1177 = icmp ult i32 %1170, 32
  br i1 %1177, label %1199, label %1178

1178:                                             ; preds = %1176
  %1179 = and i64 %1171, 28
  %1180 = and i64 %1171, 4294967264
  %1181 = getelementptr i8, ptr %1144, i64 %1180
  %1182 = trunc nuw i64 %1180 to i32
  %1183 = sub i32 %1156, %1182
  %1184 = getelementptr i8, ptr %1167, i64 %1180
  br label %1185

1185:                                             ; preds = %1185, %1178
  %1186 = phi i64 [ 0, %1178 ], [ %1193, %1185 ]
  %1187 = getelementptr i8, ptr %1144, i64 %1186
  %1188 = getelementptr i8, ptr %1167, i64 %1186
  %1189 = getelementptr i8, ptr %1188, i64 16
  %1190 = load <16 x i8>, ptr %1188, align 1, !tbaa !8
  %1191 = load <16 x i8>, ptr %1189, align 1, !tbaa !8
  %1192 = getelementptr i8, ptr %1187, i64 16
  store <16 x i8> %1190, ptr %1187, align 1, !tbaa !8
  store <16 x i8> %1191, ptr %1192, align 1, !tbaa !8
  %1193 = add nuw i64 %1186, 32
  %1194 = icmp eq i64 %1193, %1180
  br i1 %1194, label %1195, label %1185, !llvm.loop !71

1195:                                             ; preds = %1185
  %1196 = icmp eq i64 %1180, %1171
  br i1 %1196, label %1272, label %1197

1197:                                             ; preds = %1195
  %1198 = icmp eq i64 %1179, 0
  br i1 %1198, label %1215, label %1199, !prof !74

1199:                                             ; preds = %1197, %1176
  %1200 = phi i64 [ %1180, %1197 ], [ 0, %1176 ]
  %1201 = and i64 %1171, 4294967292
  %1202 = getelementptr i8, ptr %1144, i64 %1201
  %1203 = trunc nuw i64 %1201 to i32
  %1204 = sub i32 %1156, %1203
  %1205 = getelementptr i8, ptr %1167, i64 %1201
  br label %1206

1206:                                             ; preds = %1206, %1199
  %1207 = phi i64 [ %1200, %1199 ], [ %1211, %1206 ]
  %1208 = getelementptr i8, ptr %1144, i64 %1207
  %1209 = getelementptr i8, ptr %1167, i64 %1207
  %1210 = load <4 x i8>, ptr %1209, align 1, !tbaa !8
  store <4 x i8> %1210, ptr %1208, align 1, !tbaa !8
  %1211 = add nuw i64 %1207, 4
  %1212 = icmp eq i64 %1211, %1201
  br i1 %1212, label %1213, label %1206, !llvm.loop !75

1213:                                             ; preds = %1206
  %1214 = icmp eq i64 %1201, %1171
  br i1 %1214, label %1272, label %1215

1215:                                             ; preds = %1213, %1197, %1169
  %1216 = phi ptr [ %1144, %1169 ], [ %1181, %1197 ], [ %1202, %1213 ]
  %1217 = phi i32 [ %1156, %1169 ], [ %1183, %1197 ], [ %1204, %1213 ]
  %1218 = phi ptr [ %1167, %1169 ], [ %1184, %1197 ], [ %1205, %1213 ]
  %1219 = add i32 %1217, -1
  %1220 = and i32 %1217, 7
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1233, label %1222

1222:                                             ; preds = %1222, %1215
  %1223 = phi ptr [ %1228, %1222 ], [ %1216, %1215 ]
  %1224 = phi i32 [ %1229, %1222 ], [ %1217, %1215 ]
  %1225 = phi ptr [ %1230, %1222 ], [ %1218, %1215 ]
  %1226 = phi i32 [ %1231, %1222 ], [ 0, %1215 ]
  %1227 = load i8, ptr %1225, align 1, !tbaa !8
  store i8 %1227, ptr %1223, align 1, !tbaa !8
  %1228 = getelementptr inbounds nuw i8, ptr %1223, i64 1
  %1229 = add i32 %1224, -1
  %1230 = getelementptr inbounds nuw i8, ptr %1225, i64 1
  %1231 = add i32 %1226, 1
  %1232 = icmp eq i32 %1231, %1220
  br i1 %1232, label %1233, label %1222, !llvm.loop !76

1233:                                             ; preds = %1222, %1215
  %1234 = phi ptr [ poison, %1215 ], [ %1228, %1222 ]
  %1235 = phi ptr [ %1216, %1215 ], [ %1228, %1222 ]
  %1236 = phi i32 [ %1217, %1215 ], [ %1229, %1222 ]
  %1237 = phi ptr [ %1218, %1215 ], [ %1230, %1222 ]
  %1238 = icmp ult i32 %1219, 7
  br i1 %1238, label %1272, label %1242

1239:                                             ; preds = %1162
  %1240 = load i8, ptr %1167, align 1, !tbaa !8
  store i8 %1240, ptr %1144, align 1, !tbaa !8
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1241:                                             ; preds = %1150
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1242:                                             ; preds = %1242, %1233
  %1243 = phi ptr [ %1268, %1242 ], [ %1235, %1233 ]
  %1244 = phi i32 [ %1269, %1242 ], [ %1236, %1233 ]
  %1245 = phi ptr [ %1270, %1242 ], [ %1237, %1233 ]
  %1246 = load i8, ptr %1245, align 1, !tbaa !8
  store i8 %1246, ptr %1243, align 1, !tbaa !8
  %1247 = getelementptr inbounds nuw i8, ptr %1243, i64 1
  %1248 = getelementptr inbounds nuw i8, ptr %1245, i64 1
  %1249 = load i8, ptr %1248, align 1, !tbaa !8
  store i8 %1249, ptr %1247, align 1, !tbaa !8
  %1250 = getelementptr inbounds nuw i8, ptr %1243, i64 2
  %1251 = getelementptr inbounds nuw i8, ptr %1245, i64 2
  %1252 = load i8, ptr %1251, align 1, !tbaa !8
  store i8 %1252, ptr %1250, align 1, !tbaa !8
  %1253 = getelementptr inbounds nuw i8, ptr %1243, i64 3
  %1254 = getelementptr inbounds nuw i8, ptr %1245, i64 3
  %1255 = load i8, ptr %1254, align 1, !tbaa !8
  store i8 %1255, ptr %1253, align 1, !tbaa !8
  %1256 = getelementptr inbounds nuw i8, ptr %1243, i64 4
  %1257 = getelementptr inbounds nuw i8, ptr %1245, i64 4
  %1258 = load i8, ptr %1257, align 1, !tbaa !8
  store i8 %1258, ptr %1256, align 1, !tbaa !8
  %1259 = getelementptr inbounds nuw i8, ptr %1243, i64 5
  %1260 = getelementptr inbounds nuw i8, ptr %1245, i64 5
  %1261 = load i8, ptr %1260, align 1, !tbaa !8
  store i8 %1261, ptr %1259, align 1, !tbaa !8
  %1262 = getelementptr inbounds nuw i8, ptr %1243, i64 6
  %1263 = getelementptr inbounds nuw i8, ptr %1245, i64 6
  %1264 = load i8, ptr %1263, align 1, !tbaa !8
  store i8 %1264, ptr %1262, align 1, !tbaa !8
  %1265 = getelementptr inbounds nuw i8, ptr %1243, i64 7
  %1266 = getelementptr inbounds nuw i8, ptr %1245, i64 7
  %1267 = load i8, ptr %1266, align 1, !tbaa !8
  store i8 %1267, ptr %1265, align 1, !tbaa !8
  %1268 = getelementptr inbounds nuw i8, ptr %1243, i64 8
  %1269 = add i32 %1244, -8
  %1270 = getelementptr inbounds nuw i8, ptr %1245, i64 8
  %1271 = icmp eq i32 %1269, 0
  br i1 %1271, label %1272, label %1242, !llvm.loop !78

1272:                                             ; preds = %1242, %1233, %1213, %1195
  %1273 = phi ptr [ %1202, %1213 ], [ %1181, %1195 ], [ %1234, %1233 ], [ %1268, %1242 ]
  %1274 = load i32, ptr %41, align 4, !tbaa !38
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1276, label %1131, !llvm.loop !79

1276:                                             ; preds = %1272, %1130, %1053, %841, %837, %831, %671, %647, %638, %634, %624, %592, %456, %311, %247, %199, %152, %104, %68
  %1277 = phi ptr [ %51, %68 ], [ %51, %104 ], [ %51, %152 ], [ %200, %199 ], [ %51, %247 ], [ %51, %311 ], [ %51, %624 ], [ %51, %634 ], [ %51, %638 ], [ %51, %647 ], [ %674, %671 ], [ %833, %831 ], [ %51, %837 ], [ %51, %841 ], [ %51, %1053 ], [ %51, %1130 ], [ %51, %456 ], [ %51, %592 ], [ %1273, %1272 ]
  %1278 = phi i32 [ %52, %68 ], [ %93, %104 ], [ %145, %152 ], [ %201, %199 ], [ %230, %247 ], [ %279, %311 ], [ %628, %624 ], [ %628, %634 ], [ %628, %638 ], [ %628, %647 ], [ %677, %671 ], [ %797, %831 ], [ %797, %837 ], [ %797, %841 ], [ %1036, %1053 ], [ %1117, %1130 ], [ %448, %456 ], [ %553, %592 ], [ %1117, %1272 ]
  %1279 = phi i32 [ %53, %68 ], [ %53, %104 ], [ %53, %152 ], [ %202, %199 ], [ %53, %247 ], [ %53, %311 ], [ %53, %624 ], [ %53, %634 ], [ %53, %638 ], [ %53, %647 ], [ %675, %671 ], [ %832, %831 ], [ %53, %837 ], [ %53, %841 ], [ %53, %1053 ], [ %53, %1130 ], [ %53, %456 ], [ %53, %592 ], [ %1160, %1272 ]
  %1280 = phi i64 [ %73, %68 ], [ %107, %104 ], [ %146, %152 ], [ 0, %199 ], [ %242, %247 ], [ %295, %311 ], [ %627, %624 ], [ %627, %634 ], [ %627, %638 ], [ %627, %647 ], [ %678, %671 ], [ %805, %831 ], [ %805, %837 ], [ %805, %841 ], [ %1044, %1053 ], [ %1118, %1130 ], [ %452, %456 ], [ %554, %592 ], [ %1118, %1272 ]
  %1281 = phi i32 [ %71, %68 ], [ %106, %104 ], [ %147, %152 ], [ 0, %199 ], [ %243, %247 ], [ %294, %311 ], [ %626, %624 ], [ %626, %634 ], [ %626, %638 ], [ %626, %647 ], [ %679, %671 ], [ %807, %831 ], [ %807, %837 ], [ %807, %841 ], [ %1046, %1053 ], [ %1119, %1130 ], [ %453, %456 ], [ %558, %592 ], [ %1119, %1272 ]
  %1282 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

1283:                                             ; preds = %49
  br label %1285

1284:                                             ; preds = %49
  br label %1285

1285:                                             ; preds = %1284, %1283, %1136, %1070, %995, %928, %857, %816, %756, %688, %519, %478, %429, %350, %265, %211, %170, %166, %126, %77, %49
  %1286 = phi i32 [ %52, %1283 ], [ 0, %77 ], [ 0, %126 ], [ 0, %166 ], [ %1117, %1136 ], [ 0, %211 ], [ 0, %265 ], [ 0, %429 ], [ %52, %49 ], [ 0, %857 ], [ 0, %1070 ], [ %168, %170 ], [ 0, %995 ], [ 0, %928 ], [ 0, %756 ], [ 0, %688 ], [ 0, %478 ], [ 0, %519 ], [ 0, %350 ], [ %797, %816 ], [ %52, %1284 ]
  %1287 = phi i32 [ %53, %1283 ], [ %53, %77 ], [ %53, %126 ], [ %158, %166 ], [ %1135, %1136 ], [ %53, %211 ], [ %53, %265 ], [ %53, %429 ], [ %53, %49 ], [ %53, %857 ], [ %53, %1070 ], [ %172, %170 ], [ %53, %995 ], [ %53, %928 ], [ %53, %756 ], [ %53, %688 ], [ %53, %478 ], [ %53, %519 ], [ %53, %350 ], [ %818, %816 ], [ %53, %1284 ]
  %1288 = phi i1 [ true, %1283 ], [ false, %77 ], [ false, %126 ], [ false, %166 ], [ false, %1136 ], [ false, %211 ], [ false, %265 ], [ false, %429 ], [ false, %49 ], [ false, %857 ], [ false, %1070 ], [ false, %170 ], [ false, %995 ], [ false, %928 ], [ false, %756 ], [ false, %688 ], [ false, %478 ], [ false, %519 ], [ false, %350 ], [ false, %816 ], [ false, %1284 ]
  %1289 = phi i32 [ 1, %1283 ], [ -5, %77 ], [ -5, %126 ], [ -5, %166 ], [ -5, %1136 ], [ -5, %211 ], [ -5, %265 ], [ -5, %429 ], [ -2, %49 ], [ -5, %857 ], [ -5, %1070 ], [ -5, %170 ], [ -5, %995 ], [ -5, %928 ], [ -5, %756 ], [ -5, %688 ], [ -5, %478 ], [ -5, %519 ], [ -5, %350 ], [ -5, %816 ], [ -3, %1284 ]
  %1290 = load i32, ptr %26, align 4, !tbaa !24
  %1291 = icmp ult i32 %1287, %1290
  br i1 %1291, label %1292, label %1299

1292:                                             ; preds = %1285
  %1293 = sub nuw i32 %1290, %1287
  %1294 = load ptr, ptr %24, align 8, !tbaa !25
  %1295 = call i32 %3(ptr noundef %4, ptr noundef %1294, i32 noundef %1293) #6
  %1296 = icmp ne i32 %1295, 0
  %1297 = and i1 %1288, %1296
  %1298 = select i1 %1297, i32 -5, i32 %1289
  br label %1299

1299:                                             ; preds = %1292, %1285
  %1300 = phi i32 [ %1298, %1292 ], [ %1289, %1285 ]
  %1301 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1301, ptr %0, align 8, !tbaa !31
  store i32 %1286, ptr %46, align 8, !tbaa !33
  br label %1302

1302:                                             ; preds = %1299, %8, %5
  %1303 = phi i32 [ %1300, %1299 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 %1303
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
