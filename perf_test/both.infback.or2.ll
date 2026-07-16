; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/both.infback.or.ll'
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
  br i1 %7, label %1280, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1280, label %12

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
  %50 = phi i32 [ 16191, %22 ], [ %1263, %.loopexit114 ]
  %51 = phi ptr [ %25, %22 ], [ %1258, %.loopexit114 ]
  %52 = phi i32 [ %23, %22 ], [ %1259, %.loopexit114 ]
  %53 = phi i32 [ %27, %22 ], [ %1260, %.loopexit114 ]
  %54 = phi i64 [ 0, %22 ], [ %1261, %.loopexit114 ]
  %55 = phi i32 [ 0, %22 ], [ %1262, %.loopexit114 ]
  switch i32 %50, label %.loopexit110.loopexit1103 [
    i32 16191, label %60
    i32 16193, label %106
    i32 16196, label %56
    i32 16200, label %639
    i32 16208, label %.loopexit110.loopexit1389
    i32 16209, label %.loopexit110
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %227

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %201

60:                                               ; preds = %49
  %61 = load i32, ptr %15, align 4, !tbaa !30
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = icmp ult i32 %55, 3
  br i1 %64, label %65, label %91

65:                                               ; preds = %63
  %66 = or disjoint i32 %55, 8
  %67 = icmp eq i32 %52, 0
  br i1 %67, label %73, label %77

68:                                               ; preds = %60
  %69 = and i32 %55, 7
  %70 = and i32 %55, -8
  %71 = zext nneg i32 %69 to i64
  %72 = lshr i64 %54, %71
  store i32 16208, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

73:                                               ; preds = %65
  %74 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

77:                                               ; preds = %73, %65
  %78 = phi i32 [ %74, %73 ], [ %52, %65 ]
  %79 = load ptr, ptr %6, align 8, !tbaa !32
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 1
  store ptr %80, ptr %6, align 8, !tbaa !32
  %81 = load i8, ptr %79, align 1, !tbaa !8
  %82 = zext i8 %81 to i64
  %83 = zext nneg i32 %55 to i64
  %84 = shl nuw nsw i64 %82, %83
  %85 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %54, i64 %84), !nosanitize !34
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !34
  br i1 %86, label %87, label %88, !prof !35, !nosanitize !34

87:                                               ; preds = %77
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

88:                                               ; preds = %77
  %89 = extractvalue { i64, i1 } %85, 0, !nosanitize !34
  %90 = add i32 %78, -1
  br label %91

91:                                               ; preds = %88, %63
  %92 = phi i32 [ %90, %88 ], [ %52, %63 ]
  %93 = phi i64 [ %89, %88 ], [ %54, %63 ]
  %94 = phi i32 [ %66, %88 ], [ %55, %63 ]
  %95 = trunc i64 %93 to i32
  %96 = and i32 %95, 1
  store i32 %96, ptr %15, align 4, !tbaa !30
  %97 = lshr i32 %95, 1
  %98 = and i32 %97, 3
  switch i32 %98, label %default.unreachable815 [
    i32 0, label %102
    i32 1, label %99
    i32 2, label %100
    i32 3, label %101
  ]

99:                                               ; preds = %91
  call void @inflate_fixed(ptr noundef nonnull %10) #6
  br label %102

100:                                              ; preds = %91
  br label %102

default.unreachable815:                           ; preds = %91
  unreachable

101:                                              ; preds = %91
  store ptr @.str.1, ptr %13, align 8, !tbaa !9
  br label %102

102:                                              ; preds = %101, %100, %99, %91
  %103 = phi i32 [ 16209, %101 ], [ 16196, %100 ], [ 16200, %99 ], [ 16193, %91 ]
  store i32 %103, ptr %14, align 8, !tbaa !29
  %104 = add i32 %94, -3
  %105 = lshr i64 %93, 3
  br label %.loopexit114

106:                                              ; preds = %49
  %107 = and i32 %55, 7
  %108 = zext nneg i32 %107 to i64
  %109 = lshr i64 %54, %108
  %110 = and i32 %55, -8
  %111 = icmp ult i32 %55, 32
  br i1 %111, label %112, label %141

112:                                              ; preds = %106
  %113 = and i32 %55, 24
  %114 = zext nneg i32 %113 to i64
  br label %115

115:                                              ; preds = %134, %112
  %116 = phi i64 [ %114, %112 ], [ %137, %134 ]
  %117 = phi i64 [ %109, %112 ], [ %135, %134 ]
  %118 = phi i32 [ %52, %112 ], [ %136, %134 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

124:                                              ; preds = %120, %115
  %125 = phi i32 [ %121, %120 ], [ %118, %115 ]
  %126 = load ptr, ptr %6, align 8, !tbaa !32
  %127 = getelementptr inbounds nuw i8, ptr %126, i64 1
  store ptr %127, ptr %6, align 8, !tbaa !32
  %128 = load i8, ptr %126, align 1, !tbaa !8
  %129 = zext i8 %128 to i64
  %130 = shl nuw nsw i64 %129, %116
  %131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %117, i64 %130), !nosanitize !34
  %132 = extractvalue { i64, i1 } %131, 1, !nosanitize !34
  br i1 %132, label %133, label %134, !prof !35, !nosanitize !34

133:                                              ; preds = %124
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

134:                                              ; preds = %124
  %135 = extractvalue { i64, i1 } %131, 0, !nosanitize !34
  %136 = add i32 %125, -1
  %137 = add nuw nsw i64 %116, 8
  %138 = icmp samesign ult i64 %116, 24
  br i1 %138, label %115, label %139, !llvm.loop !36

139:                                              ; preds = %134
  %140 = trunc nuw nsw i64 %137 to i32
  br label %141

141:                                              ; preds = %139, %106
  %142 = phi i32 [ %52, %106 ], [ %136, %139 ]
  %143 = phi i64 [ %109, %106 ], [ %135, %139 ]
  %144 = phi i32 [ %110, %106 ], [ %140, %139 ]
  %145 = and i64 %143, 65535
  %146 = lshr i64 %143, 16
  %147 = xor i64 %146, %145
  %148 = icmp eq i64 %147, 65535
  br i1 %148, label %150, label %149

149:                                              ; preds = %141
  store ptr @.str.2, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

150:                                              ; preds = %141
  %151 = trunc i64 %143 to i32
  %152 = and i32 %151, 65535
  store i32 %152, ptr %41, align 4, !tbaa !38
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %.loopexit111, label %.preheader109

.preheader109:                                    ; preds = %150, %194
  %154 = phi i32 [ %186, %194 ], [ %53, %150 ]
  %155 = phi i32 [ %179, %194 ], [ %142, %150 ]
  %156 = phi ptr [ %196, %194 ], [ %51, %150 ]
  %157 = phi i32 [ %195, %194 ], [ %152, %150 ]
  %158 = icmp eq i32 %155, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %.preheader109
  %160 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

163:                                              ; preds = %159, %.preheader109
  %164 = phi i32 [ %160, %159 ], [ %155, %.preheader109 ]
  %165 = icmp eq i32 %154, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load ptr, ptr %24, align 8, !tbaa !25
  %168 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %168, ptr %16, align 8, !tbaa !27
  %169 = call i32 %3(ptr noundef %4, ptr noundef %167, i32 noundef %168) #6
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %.loopexit110

171:                                              ; preds = %166, %163
  %172 = phi ptr [ %167, %166 ], [ %156, %163 ]
  %173 = phi i32 [ %168, %166 ], [ %154, %163 ]
  %174 = call i32 @llvm.umin.i32(i32 %157, i32 %164)
  %175 = call i32 @llvm.umin.i32(i32 %174, i32 %173)
  %176 = load ptr, ptr %6, align 8, !tbaa !32
  %177 = zext i32 %175 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %172, ptr align 1 %176, i64 %177, i1 false)
  %178 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %164, i32 %175), !nosanitize !34
  %179 = extractvalue { i32, i1 } %178, 0, !nosanitize !34
  %180 = extractvalue { i32, i1 } %178, 1, !nosanitize !34
  br i1 %180, label %181, label %182, !prof !35, !nosanitize !34

181:                                              ; preds = %171
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

182:                                              ; preds = %171
  %183 = load ptr, ptr %6, align 8, !tbaa !32
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %177
  store ptr %184, ptr %6, align 8, !tbaa !32
  %185 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %173, i32 %175), !nosanitize !34
  %186 = extractvalue { i32, i1 } %185, 0, !nosanitize !34
  %187 = extractvalue { i32, i1 } %185, 1, !nosanitize !34
  br i1 %187, label %188, label %189, !prof !35, !nosanitize !34

188:                                              ; preds = %182
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

189:                                              ; preds = %182
  %190 = load i32, ptr %41, align 4, !tbaa !38
  %191 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %190, i32 %175), !nosanitize !34
  %192 = extractvalue { i32, i1 } %191, 1, !nosanitize !34
  br i1 %192, label %193, label %194, !prof !35, !nosanitize !34

193:                                              ; preds = %189
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

194:                                              ; preds = %189
  %195 = extractvalue { i32, i1 } %191, 0, !nosanitize !34
  %196 = getelementptr inbounds nuw i8, ptr %172, i64 %177
  store i32 %195, ptr %41, align 4, !tbaa !38
  %197 = icmp eq i32 %195, 0
  br i1 %197, label %.loopexit111, label %.preheader109, !llvm.loop !39

.loopexit111:                                     ; preds = %194, %150
  %198 = phi ptr [ %51, %150 ], [ %196, %194 ]
  %199 = phi i32 [ %142, %150 ], [ %179, %194 ]
  %200 = phi i32 [ %53, %150 ], [ %186, %194 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

201:                                              ; preds = %220, %58
  %202 = phi i64 [ %59, %58 ], [ %223, %220 ]
  %203 = phi i64 [ %54, %58 ], [ %221, %220 ]
  %204 = phi i32 [ %52, %58 ], [ %222, %220 ]
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

210:                                              ; preds = %206, %201
  %211 = phi i32 [ %207, %206 ], [ %204, %201 ]
  %212 = load ptr, ptr %6, align 8, !tbaa !32
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 1
  store ptr %213, ptr %6, align 8, !tbaa !32
  %214 = load i8, ptr %212, align 1, !tbaa !8
  %215 = zext i8 %214 to i64
  %216 = shl nuw nsw i64 %215, %202
  %217 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %203, i64 %216), !nosanitize !34
  %218 = extractvalue { i64, i1 } %217, 1, !nosanitize !34
  br i1 %218, label %219, label %220, !prof !35, !nosanitize !34

219:                                              ; preds = %210
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

220:                                              ; preds = %210
  %221 = extractvalue { i64, i1 } %217, 0, !nosanitize !34
  %222 = add i32 %211, -1
  %223 = add nuw nsw i64 %202, 8
  %224 = icmp samesign ult i64 %202, 6
  br i1 %224, label %201, label %225, !llvm.loop !40

225:                                              ; preds = %220
  %226 = trunc nuw nsw i64 %223 to i32
  br label %227

227:                                              ; preds = %225, %56
  %228 = phi i32 [ %52, %56 ], [ %222, %225 ]
  %229 = phi i64 [ %54, %56 ], [ %221, %225 ]
  %230 = phi i32 [ %55, %56 ], [ %226, %225 ]
  %231 = trunc i64 %229 to i32
  %232 = and i32 %231, 31
  %233 = add nuw nsw i32 %232, 257
  store i32 %233, ptr %28, align 4, !tbaa !41
  %234 = lshr i32 %231, 5
  %235 = and i32 %234, 31
  %236 = add nuw nsw i32 %235, 1
  store i32 %236, ptr %29, align 8, !tbaa !42
  %237 = lshr i32 %231, 10
  %238 = and i32 %237, 15
  %239 = add nuw nsw i32 %238, 4
  store i32 %239, ptr %30, align 8, !tbaa !43
  %240 = lshr i64 %229, 14
  %241 = add i32 %230, -14
  %242 = icmp samesign ugt i32 %232, 29
  %243 = icmp samesign ugt i32 %235, 29
  %244 = select i1 %242, i1 true, i1 %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %227
  store ptr @.str.3, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

246:                                              ; preds = %227
  store i32 0, ptr %31, align 4, !tbaa !44
  br label %251

247:                                              ; preds = %283
  %248 = icmp ult i32 %284, 19
  br i1 %248, label %249, label %306

249:                                              ; preds = %247
  %250 = zext nneg i32 %284 to i64
  br label %296

251:                                              ; preds = %283, %246
  %252 = phi i32 [ %284, %283 ], [ 0, %246 ]
  %253 = phi i32 [ %292, %283 ], [ %241, %246 ]
  %254 = phi i64 [ %293, %283 ], [ %240, %246 ]
  %255 = phi i32 [ %277, %283 ], [ %228, %246 ]
  %256 = icmp ult i32 %253, 3
  br i1 %256, label %257, label %275

257:                                              ; preds = %251
  %258 = or disjoint i32 %253, 8
  %259 = icmp eq i32 %255, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %._crit_edge

._crit_edge:                                      ; preds = %260
  %.pre = load i32, ptr %31, align 4, !tbaa !44
  br label %264

263:                                              ; preds = %260
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

264:                                              ; preds = %._crit_edge, %257
  %265 = phi i32 [ %.pre, %._crit_edge ], [ %252, %257 ]
  %266 = phi i32 [ %261, %._crit_edge ], [ %255, %257 ]
  %267 = load ptr, ptr %6, align 8, !tbaa !32
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 1
  store ptr %268, ptr %6, align 8, !tbaa !32
  %269 = load i8, ptr %267, align 1, !tbaa !8
  %270 = zext i8 %269 to i64
  %271 = zext nneg i32 %253 to i64
  %272 = shl nuw nsw i64 %270, %271
  %273 = add nuw nsw i64 %272, %254
  %274 = add i32 %266, -1
  br label %275

275:                                              ; preds = %264, %251
  %276 = phi i32 [ %265, %264 ], [ %252, %251 ]
  %277 = phi i32 [ %274, %264 ], [ %255, %251 ]
  %278 = phi i64 [ %273, %264 ], [ %254, %251 ]
  %279 = phi i32 [ %258, %264 ], [ %253, %251 ]
  %280 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %276, i32 1), !nosanitize !34
  %281 = extractvalue { i32, i1 } %280, 1, !nosanitize !34
  br i1 %281, label %282, label %283, !prof !35, !nosanitize !34

282:                                              ; preds = %275
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

283:                                              ; preds = %275
  %284 = extractvalue { i32, i1 } %280, 0, !nosanitize !34
  %285 = trunc i64 %278 to i16
  %286 = and i16 %285, 7
  store i32 %284, ptr %31, align 4, !tbaa !44
  %287 = zext i32 %276 to i64
  %288 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %287
  %289 = load i16, ptr %288, align 2, !tbaa !45
  %290 = zext i16 %289 to i64
  %291 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %290
  store i16 %286, ptr %291, align 2, !tbaa !45
  %292 = add i32 %279, -3
  %293 = lshr i64 %278, 3
  %294 = load i32, ptr %30, align 8, !tbaa !43
  %295 = icmp ult i32 %284, %294
  br i1 %295, label %251, label %247, !llvm.loop !47

296:                                              ; preds = %296, %249
  %297 = phi i64 [ %250, %249 ], [ %298, %296 ]
  %298 = add nuw nsw i64 %297, 1
  %299 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %297
  %300 = load i16, ptr %299, align 2, !tbaa !45
  %301 = zext i16 %300 to i64
  %302 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %301
  store i16 0, ptr %302, align 2, !tbaa !45
  %303 = and i64 %298, 4294967295
  %304 = icmp eq i64 %303, 19
  br i1 %304, label %305, label %296, !llvm.loop !48

305:                                              ; preds = %296
  store i32 19, ptr %31, align 4, !tbaa !44
  br label %306

306:                                              ; preds = %305, %247
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 7, ptr %36, align 8, !tbaa !51
  %307 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %306
  store ptr @.str.4, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

310:                                              ; preds = %306
  store i32 0, ptr %31, align 4, !tbaa !44
  %311 = load i32, ptr %28, align 4, !tbaa !41
  %312 = load i32, ptr %29, align 8, !tbaa !42
  %313 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %311, i32 %312), !nosanitize !34
  %314 = extractvalue { i32, i1 } %313, 1, !nosanitize !34
  br i1 %314, label %.loopexit120, label %315, !prof !52, !nosanitize !34

315:                                              ; preds = %310
  %316 = extractvalue { i32, i1 } %313, 0, !nosanitize !34
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %.loopexit121, label %.preheader119.preheader

.preheader119.preheader:                          ; preds = %315
  %.pre712 = load i32, ptr %36, align 8, !tbaa !51
  %.pre713 = load ptr, ptr %35, align 8, !tbaa !50
  br label %.preheader119

.loopexit120:                                     ; preds = %310, %607
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

318:                                              ; preds = %607
  %319 = extractvalue { i32, i1 } %613, 0, !nosanitize !34
  %320 = icmp ult i32 %608, %319
  br i1 %320, label %.preheader119, label %.loopexit121, !llvm.loop !53

.preheader119:                                    ; preds = %.preheader119.preheader, %318
  %321 = phi ptr [ %377, %318 ], [ %.pre713, %.preheader119.preheader ]
  %322 = phi i32 [ %378, %318 ], [ %.pre712, %.preheader119.preheader ]
  %323 = phi i32 [ %379, %318 ], [ %277, %.preheader119.preheader ]
  %324 = phi i64 [ %390, %318 ], [ %293, %.preheader119.preheader ]
  %325 = phi i32 [ %392, %318 ], [ %292, %.preheader119.preheader ]
  %326 = shl nsw i32 -1, %322
  %327 = xor i32 %326, -1
  %328 = trunc i64 %324 to i32
  %329 = and i32 %327, %328
  %330 = zext nneg i32 %329 to i64
  %331 = getelementptr inbounds nuw [4 x i8], ptr %321, i64 %330
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 1
  %333 = load i8, ptr %332, align 1, !tbaa !8
  %334 = zext i8 %333 to i32
  %335 = icmp ult i32 %325, %334
  br i1 %335, label %336, label %376

336:                                              ; preds = %.preheader119
  %337 = zext nneg i32 %325 to i64
  br label %338

338:                                              ; preds = %357, %336
  %339 = phi i64 [ %337, %336 ], [ %360, %357 ]
  %340 = phi i64 [ %324, %336 ], [ %358, %357 ]
  %341 = phi i32 [ %323, %336 ], [ %359, %357 ]
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %338
  %344 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %343
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

347:                                              ; preds = %343, %338
  %348 = phi i32 [ %344, %343 ], [ %341, %338 ]
  %349 = load ptr, ptr %6, align 8, !tbaa !32
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 1
  store ptr %350, ptr %6, align 8, !tbaa !32
  %351 = load i8, ptr %349, align 1, !tbaa !8
  %352 = zext i8 %351 to i64
  %353 = shl i64 %352, %339
  %354 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %340, i64 %353), !nosanitize !34
  %355 = extractvalue { i64, i1 } %354, 1, !nosanitize !34
  br i1 %355, label %356, label %357, !prof !35, !nosanitize !34

356:                                              ; preds = %347
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

357:                                              ; preds = %347
  %358 = extractvalue { i64, i1 } %354, 0, !nosanitize !34
  %359 = add i32 %348, -1
  %360 = add nuw nsw i64 %339, 8
  %361 = load i32, ptr %36, align 8, !tbaa !51
  %362 = shl nsw i32 -1, %361
  %363 = xor i32 %362, -1
  %364 = trunc i64 %358 to i32
  %365 = load ptr, ptr %35, align 8, !tbaa !50
  %366 = and i32 %363, %364
  %367 = zext nneg i32 %366 to i64
  %368 = getelementptr inbounds nuw [4 x i8], ptr %365, i64 %367
  %369 = getelementptr inbounds nuw i8, ptr %368, i64 1
  %370 = load i8, ptr %369, align 1, !tbaa !8
  %371 = zext i8 %370 to i64
  %372 = icmp samesign ult i64 %360, %371
  br i1 %372, label %338, label %373

373:                                              ; preds = %357
  %374 = zext i8 %370 to i32
  %375 = trunc nuw nsw i64 %360 to i32
  br label %376

376:                                              ; preds = %373, %.preheader119
  %377 = phi ptr [ %321, %.preheader119 ], [ %365, %373 ]
  %378 = phi i32 [ %322, %.preheader119 ], [ %361, %373 ]
  %379 = phi i32 [ %323, %.preheader119 ], [ %359, %373 ]
  %380 = phi i64 [ %324, %.preheader119 ], [ %358, %373 ]
  %381 = phi i32 [ %325, %.preheader119 ], [ %375, %373 ]
  %382 = phi i8 [ %333, %.preheader119 ], [ %370, %373 ]
  %383 = phi ptr [ %331, %.preheader119 ], [ %368, %373 ]
  %384 = phi i32 [ %334, %.preheader119 ], [ %374, %373 ]
  %385 = getelementptr inbounds nuw i8, ptr %383, i64 2
  %386 = load i16, ptr %385, align 2, !tbaa !45
  %387 = icmp ult i16 %386, 16
  br i1 %387, label %388, label %400

388:                                              ; preds = %376
  %389 = zext nneg i8 %382 to i64
  %390 = lshr i64 %380, %389
  %391 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %381, i32 %384), !nosanitize !34
  %392 = extractvalue { i32, i1 } %391, 0, !nosanitize !34
  %393 = extractvalue { i32, i1 } %391, 1, !nosanitize !34
  br i1 %393, label %394, label %395, !prof !35, !nosanitize !34

394:                                              ; preds = %388
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

395:                                              ; preds = %388
  %396 = load i32, ptr %31, align 4, !tbaa !44
  %397 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %396, i32 1), !nosanitize !34
  %398 = extractvalue { i32, i1 } %397, 1, !nosanitize !34
  br i1 %398, label %399, label %607, !prof !35, !nosanitize !34

399:                                              ; preds = %395
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

400:                                              ; preds = %376
  switch i16 %386, label %413 [
    i16 16, label %407
    i16 17, label %401
  ]

401:                                              ; preds = %400
  %402 = add nuw nsw i32 %384, 3
  %403 = icmp ult i32 %381, %402
  br i1 %403, label %404, label %494

404:                                              ; preds = %401
  %405 = zext nneg i32 %381 to i64
  %406 = zext nneg i32 %402 to i64
  br label %468

407:                                              ; preds = %400
  %408 = add nuw nsw i32 %384, 2
  %409 = icmp ult i32 %381, %408
  br i1 %409, label %410, label %445

410:                                              ; preds = %407
  %411 = zext nneg i32 %381 to i64
  %412 = zext nneg i32 %408 to i64
  br label %419

413:                                              ; preds = %400
  %414 = add nuw nsw i32 %384, 7
  %415 = icmp ult i32 %381, %414
  br i1 %415, label %416, label %535

416:                                              ; preds = %413
  %417 = zext nneg i32 %381 to i64
  %418 = zext nneg i32 %414 to i64
  br label %509

419:                                              ; preds = %438, %410
  %420 = phi i64 [ %411, %410 ], [ %441, %438 ]
  %421 = phi i64 [ %380, %410 ], [ %439, %438 ]
  %422 = phi i32 [ %379, %410 ], [ %440, %438 ]
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %419
  %425 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %424
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

428:                                              ; preds = %424, %419
  %429 = phi i32 [ %425, %424 ], [ %422, %419 ]
  %430 = load ptr, ptr %6, align 8, !tbaa !32
  %431 = getelementptr inbounds nuw i8, ptr %430, i64 1
  store ptr %431, ptr %6, align 8, !tbaa !32
  %432 = load i8, ptr %430, align 1, !tbaa !8
  %433 = zext i8 %432 to i64
  %434 = shl i64 %433, %420
  %435 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %421, i64 %434), !nosanitize !34
  %436 = extractvalue { i64, i1 } %435, 1, !nosanitize !34
  br i1 %436, label %437, label %438, !prof !35, !nosanitize !34

437:                                              ; preds = %428
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

438:                                              ; preds = %428
  %439 = extractvalue { i64, i1 } %435, 0, !nosanitize !34
  %440 = add i32 %429, -1
  %441 = add nuw nsw i64 %420, 8
  %442 = icmp samesign ult i64 %441, %412
  br i1 %442, label %419, label %443, !llvm.loop !54

443:                                              ; preds = %438
  %444 = trunc nuw nsw i64 %441 to i32
  br label %445

445:                                              ; preds = %443, %407
  %446 = phi i32 [ %379, %407 ], [ %440, %443 ]
  %447 = phi i64 [ %380, %407 ], [ %439, %443 ]
  %448 = phi i32 [ %381, %407 ], [ %444, %443 ]
  %449 = zext nneg i8 %382 to i64
  %450 = lshr i64 %447, %449
  %451 = sub nuw i32 %448, %384
  %452 = load i32, ptr %31, align 4, !tbaa !44
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %445
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

455:                                              ; preds = %445
  %456 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %451, i32 2), !nosanitize !34
  %457 = extractvalue { i32, i1 } %456, 1, !nosanitize !34
  br i1 %457, label %458, label %459, !prof !35, !nosanitize !34

458:                                              ; preds = %455
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

459:                                              ; preds = %455
  %460 = trunc i64 %450 to i32
  %461 = and i32 %460, 3
  %462 = add nuw nsw i32 %461, 3
  %463 = add i32 %452, -1
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %464
  %466 = load i16, ptr %465, align 2, !tbaa !45
  %467 = lshr i64 %450, 2
  br label %550

468:                                              ; preds = %487, %404
  %469 = phi i64 [ %405, %404 ], [ %490, %487 ]
  %470 = phi i64 [ %380, %404 ], [ %488, %487 ]
  %471 = phi i32 [ %379, %404 ], [ %489, %487 ]
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %477

473:                                              ; preds = %468
  %474 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %473
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

477:                                              ; preds = %473, %468
  %478 = phi i32 [ %474, %473 ], [ %471, %468 ]
  %479 = load ptr, ptr %6, align 8, !tbaa !32
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 1
  store ptr %480, ptr %6, align 8, !tbaa !32
  %481 = load i8, ptr %479, align 1, !tbaa !8
  %482 = zext i8 %481 to i64
  %483 = shl i64 %482, %469
  %484 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %470, i64 %483), !nosanitize !34
  %485 = extractvalue { i64, i1 } %484, 1, !nosanitize !34
  br i1 %485, label %486, label %487, !prof !35, !nosanitize !34

486:                                              ; preds = %477
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

487:                                              ; preds = %477
  %488 = extractvalue { i64, i1 } %484, 0, !nosanitize !34
  %489 = add i32 %478, -1
  %490 = add nuw nsw i64 %469, 8
  %491 = icmp samesign ult i64 %490, %406
  br i1 %491, label %468, label %492, !llvm.loop !55

492:                                              ; preds = %487
  %493 = trunc nuw nsw i64 %490 to i32
  br label %494

494:                                              ; preds = %492, %401
  %495 = phi i32 [ %379, %401 ], [ %489, %492 ]
  %496 = phi i64 [ %380, %401 ], [ %488, %492 ]
  %497 = phi i32 [ %381, %401 ], [ %493, %492 ]
  %498 = sub nuw i32 %497, %384
  %499 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %498, i32 3), !nosanitize !34
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !34
  br i1 %500, label %501, label %502, !prof !35, !nosanitize !34

501:                                              ; preds = %494
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

502:                                              ; preds = %494
  %503 = zext nneg i8 %382 to i64
  %504 = lshr i64 %496, %503
  %505 = trunc i64 %504 to i32
  %506 = and i32 %505, 7
  %507 = add nuw nsw i32 %506, 3
  %508 = lshr i64 %504, 3
  br label %550

509:                                              ; preds = %528, %416
  %510 = phi i64 [ %417, %416 ], [ %531, %528 ]
  %511 = phi i64 [ %380, %416 ], [ %529, %528 ]
  %512 = phi i32 [ %379, %416 ], [ %530, %528 ]
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %509
  %515 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %514
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

518:                                              ; preds = %514, %509
  %519 = phi i32 [ %515, %514 ], [ %512, %509 ]
  %520 = load ptr, ptr %6, align 8, !tbaa !32
  %521 = getelementptr inbounds nuw i8, ptr %520, i64 1
  store ptr %521, ptr %6, align 8, !tbaa !32
  %522 = load i8, ptr %520, align 1, !tbaa !8
  %523 = zext i8 %522 to i64
  %524 = shl i64 %523, %510
  %525 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %511, i64 %524), !nosanitize !34
  %526 = extractvalue { i64, i1 } %525, 1, !nosanitize !34
  br i1 %526, label %527, label %528, !prof !35, !nosanitize !34

527:                                              ; preds = %518
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

528:                                              ; preds = %518
  %529 = extractvalue { i64, i1 } %525, 0, !nosanitize !34
  %530 = add i32 %519, -1
  %531 = add nuw nsw i64 %510, 8
  %532 = icmp samesign ult i64 %531, %418
  br i1 %532, label %509, label %533, !llvm.loop !56

533:                                              ; preds = %528
  %534 = trunc nuw nsw i64 %531 to i32
  br label %535

535:                                              ; preds = %533, %413
  %536 = phi i32 [ %379, %413 ], [ %530, %533 ]
  %537 = phi i64 [ %380, %413 ], [ %529, %533 ]
  %538 = phi i32 [ %381, %413 ], [ %534, %533 ]
  %539 = sub nuw i32 %538, %384
  %540 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %539, i32 7), !nosanitize !34
  %541 = extractvalue { i32, i1 } %540, 1, !nosanitize !34
  br i1 %541, label %542, label %543, !prof !35, !nosanitize !34

542:                                              ; preds = %535
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

543:                                              ; preds = %535
  %544 = zext nneg i8 %382 to i64
  %545 = lshr i64 %537, %544
  %546 = trunc i64 %545 to i32
  %547 = and i32 %546, 127
  %548 = add nuw nsw i32 %547, 11
  %549 = lshr i64 %545, 7
  br label %550

550:                                              ; preds = %543, %502, %459
  %551 = phi i32 [ %446, %459 ], [ %495, %502 ], [ %536, %543 ]
  %552 = phi i64 [ %467, %459 ], [ %508, %502 ], [ %549, %543 ]
  %553 = phi { i32, i1 } [ %456, %459 ], [ %499, %502 ], [ %540, %543 ]
  %554 = phi i32 [ %462, %459 ], [ %507, %502 ], [ %548, %543 ]
  %555 = phi i16 [ %466, %459 ], [ 0, %502 ], [ 0, %543 ]
  %556 = extractvalue { i32, i1 } %553, 0
  %557 = load i32, ptr %31, align 4, !tbaa !44
  %558 = freeze i32 %557
  %559 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %558, i32 %554), !nosanitize !34
  %560 = extractvalue { i32, i1 } %559, 0, !nosanitize !34
  %561 = extractvalue { i32, i1 } %559, 1, !nosanitize !34
  br i1 %561, label %562, label %563, !prof !35, !nosanitize !34

562:                                              ; preds = %550
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

563:                                              ; preds = %550
  %564 = load i32, ptr %28, align 4, !tbaa !41
  %565 = load i32, ptr %29, align 8, !tbaa !42
  %566 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %564, i32 %565), !nosanitize !34
  %567 = extractvalue { i32, i1 } %566, 1, !nosanitize !34
  br i1 %567, label %568, label %569, !prof !35, !nosanitize !34

568:                                              ; preds = %563
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

569:                                              ; preds = %563
  %570 = extractvalue { i32, i1 } %566, 0, !nosanitize !34
  %571 = icmp ugt i32 %560, %570
  br i1 %571, label %588, label %572

572:                                              ; preds = %569
  %573 = icmp eq i32 %558, -1
  br i1 %573, label %599, label %574, !prof !52, !nosanitize !34

574:                                              ; preds = %572
  %575 = zext i32 %558 to i64
  %576 = add nsw i32 %554, -1
  %577 = and i64 %575, 1
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %584, !prof !52

579:                                              ; preds = %574
  %580 = or disjoint i64 %575, 1
  %581 = trunc nuw i64 %580 to i32
  store i32 %581, ptr %31, align 4, !tbaa !44
  %582 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %575
  store i16 %555, ptr %582, align 2, !tbaa !45
  %583 = add nsw i32 %554, -2
  br label %584

584:                                              ; preds = %579, %574
  %.pn105 = phi i32 [ %576, %574 ], [ %583, %579 ]
  %585 = phi i64 [ %575, %574 ], [ %580, %579 ]
  %586 = icmp eq i32 %558, -2
  br i1 %586, label %599, label %.preheader.preheader, !prof !52

.preheader.preheader:                             ; preds = %584
  %587 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %.pn105, 0
  br label %.preheader

588:                                              ; preds = %569
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

.split.loop.exit:                                 ; preds = %590, %.preheader
  %.in = phi i64 [ %603, %.preheader ], [ %592, %590 ]
  %589 = trunc i64 %.in to i32
  store i32 %589, ptr %31, align 4, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

590:                                              ; preds = %.preheader
  %591 = extractvalue { i32, i1 } %605, 0
  %592 = add nuw nsw i64 %601, 2
  %593 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %603
  store i16 %555, ptr %593, align 2, !tbaa !45
  %594 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %591, i32 1), !nosanitize !34
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !34
  br i1 %595, label %.split.loop.exit, label %596, !prof !57, !llvm.loop !58, !nosanitize !34

596:                                              ; preds = %590
  %597 = icmp eq i64 %592, 4294967295
  br i1 %597, label %598, label %.preheader, !prof !57, !llvm.loop !59, !nosanitize !34

598:                                              ; preds = %596
  store i32 -1, ptr %31, align 4, !tbaa !44
  br label %599

599:                                              ; preds = %598, %584, %572
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

.preheader:                                       ; preds = %.preheader.preheader, %596
  %600 = phi { i32, i1 } [ %594, %596 ], [ %587, %.preheader.preheader ]
  %601 = phi i64 [ %592, %596 ], [ %585, %.preheader.preheader ]
  %602 = extractvalue { i32, i1 } %600, 0
  %603 = add nuw nsw i64 %601, 1
  %604 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %601
  store i16 %555, ptr %604, align 2, !tbaa !45
  %605 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %602, i32 1), !nosanitize !34
  %606 = extractvalue { i32, i1 } %605, 1, !nosanitize !34
  br i1 %606, label %.split.loop.exit, label %590, !prof !57, !llvm.loop !58, !nosanitize !34

607:                                              ; preds = %395
  %608 = extractvalue { i32, i1 } %397, 0, !nosanitize !34
  store i32 %608, ptr %31, align 4, !tbaa !44
  %609 = zext i32 %396 to i64
  %610 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %609
  store i16 %386, ptr %610, align 2, !tbaa !45
  %611 = load i32, ptr %28, align 4, !tbaa !41
  %612 = load i32, ptr %29, align 8, !tbaa !42
  %613 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %611, i32 %612), !nosanitize !34
  %614 = extractvalue { i32, i1 } %613, 1, !nosanitize !34
  br i1 %614, label %.loopexit120, label %318, !prof !57, !llvm.loop !53, !nosanitize !34

.loopexit121:                                     ; preds = %318, %315
  %615 = phi i32 [ %311, %315 ], [ %611, %318 ]
  %616 = phi i32 [ %292, %315 ], [ %392, %318 ]
  %617 = phi i64 [ %293, %315 ], [ %390, %318 ]
  %618 = phi i32 [ %277, %315 ], [ %379, %318 ]
  %619 = load i32, ptr %14, align 8, !tbaa !29
  %620 = icmp eq i32 %619, 16209
  br i1 %620, label %.loopexit114, label %621

621:                                              ; preds = %.loopexit121
  %622 = load i16, ptr %38, align 8, !tbaa !45
  %623 = icmp eq i16 %622, 0
  br i1 %623, label %624, label %625

624:                                              ; preds = %621
  store ptr @.str.6, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

625:                                              ; preds = %621
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 9, ptr %36, align 8, !tbaa !51
  %626 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %615, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %629, label %628

628:                                              ; preds = %625
  store ptr @.str.7, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

629:                                              ; preds = %625
  %630 = load ptr, ptr %34, align 8, !tbaa !49
  store ptr %630, ptr %39, align 8, !tbaa !61
  store i32 6, ptr %40, align 4, !tbaa !62
  %631 = load i32, ptr %28, align 4, !tbaa !41
  %632 = zext i32 %631 to i64
  %633 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %632
  %634 = load i32, ptr %29, align 8, !tbaa !42
  %635 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %633, i32 noundef %634, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #6
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %638, label %637

637:                                              ; preds = %629
  store ptr @.str.8, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

638:                                              ; preds = %629
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %639

639:                                              ; preds = %638, %49
  %640 = phi i32 [ %618, %638 ], [ %52, %49 ]
  %641 = phi i64 [ %617, %638 ], [ %54, %49 ]
  %642 = phi i32 [ %616, %638 ], [ %55, %49 ]
  %643 = icmp ugt i32 %640, 5
  %644 = icmp ugt i32 %53, 257
  %645 = select i1 %643, i1 %644, i1 false
  br i1 %645, label %661, label %646

646:                                              ; preds = %639
  %647 = load i32, ptr %36, align 8, !tbaa !51
  %648 = shl nsw i32 -1, %647
  %649 = xor i32 %648, -1
  %650 = trunc i64 %641 to i32
  %651 = load ptr, ptr %35, align 8, !tbaa !50
  %652 = and i32 %649, %650
  %653 = zext nneg i32 %652 to i64
  %654 = getelementptr inbounds nuw [4 x i8], ptr %651, i64 %653
  %655 = getelementptr inbounds nuw i8, ptr %654, i64 1
  %656 = load i8, ptr %655, align 1, !tbaa !8
  %657 = zext i8 %656 to i32
  %658 = icmp ult i32 %642, %657
  br i1 %658, label %659, label %708

659:                                              ; preds = %646
  %660 = zext nneg i32 %642 to i64
  br label %670

661:                                              ; preds = %639
  store ptr %51, ptr %44, align 8, !tbaa !63
  store i32 %53, ptr %45, align 8, !tbaa !64
  %662 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %662, ptr %0, align 8, !tbaa !31
  store i32 %640, ptr %46, align 8, !tbaa !33
  store i64 %641, ptr %47, align 8, !tbaa !65
  store i32 %642, ptr %48, align 8, !tbaa !66
  %663 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %663) #6
  %664 = load ptr, ptr %44, align 8, !tbaa !63
  %665 = load i32, ptr %45, align 8, !tbaa !64
  %666 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %666, ptr %6, align 8, !tbaa !32
  %667 = load i32, ptr %46, align 8, !tbaa !33
  %668 = load i64, ptr %47, align 8, !tbaa !65
  %669 = load i32, ptr %48, align 8, !tbaa !66
  br label %.loopexit114

670:                                              ; preds = %689, %659
  %671 = phi i64 [ %660, %659 ], [ %692, %689 ]
  %672 = phi i64 [ %641, %659 ], [ %690, %689 ]
  %673 = phi i32 [ %640, %659 ], [ %691, %689 ]
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %679

675:                                              ; preds = %670
  %676 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %678, label %679

678:                                              ; preds = %675
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

679:                                              ; preds = %675, %670
  %680 = phi i32 [ %676, %675 ], [ %673, %670 ]
  %681 = load ptr, ptr %6, align 8, !tbaa !32
  %682 = getelementptr inbounds nuw i8, ptr %681, i64 1
  store ptr %682, ptr %6, align 8, !tbaa !32
  %683 = load i8, ptr %681, align 1, !tbaa !8
  %684 = zext i8 %683 to i64
  %685 = shl i64 %684, %671
  %686 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %672, i64 %685), !nosanitize !34
  %687 = extractvalue { i64, i1 } %686, 1, !nosanitize !34
  br i1 %687, label %688, label %689, !prof !35, !nosanitize !34

688:                                              ; preds = %679
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

689:                                              ; preds = %679
  %690 = extractvalue { i64, i1 } %686, 0, !nosanitize !34
  %691 = add i32 %680, -1
  %692 = add nuw nsw i64 %671, 8
  %693 = load i32, ptr %36, align 8, !tbaa !51
  %694 = shl nsw i32 -1, %693
  %695 = xor i32 %694, -1
  %696 = trunc i64 %690 to i32
  %697 = load ptr, ptr %35, align 8, !tbaa !50
  %698 = and i32 %695, %696
  %699 = zext nneg i32 %698 to i64
  %700 = getelementptr inbounds nuw [4 x i8], ptr %697, i64 %699
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 1
  %702 = load i8, ptr %701, align 1, !tbaa !8
  %703 = zext i8 %702 to i64
  %704 = icmp samesign ult i64 %692, %703
  br i1 %704, label %670, label %705

705:                                              ; preds = %689
  %706 = zext i8 %702 to i32
  %707 = trunc nuw nsw i64 %692 to i32
  br label %708

708:                                              ; preds = %705, %646
  %709 = phi ptr [ %651, %646 ], [ %697, %705 ]
  %710 = phi i32 [ %640, %646 ], [ %691, %705 ]
  %711 = phi i64 [ %641, %646 ], [ %690, %705 ]
  %712 = phi i32 [ %642, %646 ], [ %707, %705 ]
  %713 = phi ptr [ %654, %646 ], [ %700, %705 ]
  %714 = phi i8 [ %656, %646 ], [ %702, %705 ]
  %715 = phi i32 [ %657, %646 ], [ %706, %705 ]
  %716 = getelementptr inbounds nuw i8, ptr %713, i64 2
  %717 = load i16, ptr %716, align 2, !tbaa !45
  %718 = load i8, ptr %713, align 2, !tbaa !8
  %719 = add i8 %718, -1
  %720 = icmp ult i8 %719, 15
  br i1 %720, label %721, label %784

721:                                              ; preds = %708
  %722 = zext nneg i8 %718 to i32
  %723 = add nuw nsw i32 %715, %722
  %724 = shl nsw i32 -1, %723
  %725 = xor i32 %724, -1
  %726 = zext i16 %717 to i32
  %727 = trunc i64 %711 to i32
  %728 = and i32 %725, %727
  %729 = lshr i32 %728, %715
  %730 = add nuw i32 %729, %726
  %731 = zext i32 %730 to i64
  %732 = getelementptr inbounds nuw [4 x i8], ptr %709, i64 %731
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 1
  %734 = load i8, ptr %733, align 1, !tbaa !8
  %735 = zext i8 %734 to i32
  %736 = add nuw nsw i32 %715, %735
  %737 = icmp ugt i32 %736, %712
  br i1 %737, label %.preheader117.preheader, label %.loopexit118

.preheader117.preheader:                          ; preds = %721
  %738 = zext nneg i32 %712 to i64
  br label %.preheader117

.preheader117:                                    ; preds = %.preheader117.preheader, %756
  %indvars.iv = phi i64 [ %738, %.preheader117.preheader ], [ %indvars.iv.next, %756 ]
  %739 = phi i64 [ %711, %.preheader117.preheader ], [ %757, %756 ]
  %740 = phi i32 [ %710, %.preheader117.preheader ], [ %758, %756 ]
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %746

742:                                              ; preds = %.preheader117
  %743 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %746

745:                                              ; preds = %742
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

746:                                              ; preds = %742, %.preheader117
  %747 = phi i32 [ %743, %742 ], [ %740, %.preheader117 ]
  %748 = load ptr, ptr %6, align 8, !tbaa !32
  %749 = getelementptr inbounds nuw i8, ptr %748, i64 1
  store ptr %749, ptr %6, align 8, !tbaa !32
  %750 = load i8, ptr %748, align 1, !tbaa !8
  %751 = zext i8 %750 to i64
  %752 = shl i64 %751, %indvars.iv
  %753 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %739, i64 %752), !nosanitize !34
  %754 = extractvalue { i64, i1 } %753, 1, !nosanitize !34
  br i1 %754, label %755, label %756, !prof !35, !nosanitize !34

755:                                              ; preds = %746
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

756:                                              ; preds = %746
  %757 = extractvalue { i64, i1 } %753, 0, !nosanitize !34
  %758 = add i32 %747, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %759 = load ptr, ptr %35, align 8, !tbaa !50
  %760 = trunc i64 %757 to i32
  %761 = and i32 %760, %725
  %762 = lshr i32 %761, %715
  %763 = add nuw i32 %762, %726
  %764 = zext i32 %763 to i64
  %765 = getelementptr inbounds nuw [4 x i8], ptr %759, i64 %764
  %766 = getelementptr inbounds nuw i8, ptr %765, i64 1
  %767 = load i8, ptr %766, align 1, !tbaa !8
  %768 = zext i8 %767 to i32
  %769 = add nuw nsw i32 %715, %768
  %770 = zext nneg i32 %769 to i64
  %771 = icmp samesign ult i64 %indvars.iv.next, %770
  br i1 %771, label %.preheader117, label %.loopexit118.loopexit

.loopexit118.loopexit:                            ; preds = %756
  %772 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit118

.loopexit118:                                     ; preds = %.loopexit118.loopexit, %721
  %773 = phi i32 [ %710, %721 ], [ %758, %.loopexit118.loopexit ]
  %774 = phi i64 [ %711, %721 ], [ %757, %.loopexit118.loopexit ]
  %775 = phi i32 [ %712, %721 ], [ %772, %.loopexit118.loopexit ]
  %776 = phi ptr [ %732, %721 ], [ %765, %.loopexit118.loopexit ]
  %777 = phi i8 [ %734, %721 ], [ %767, %.loopexit118.loopexit ]
  %778 = getelementptr inbounds nuw i8, ptr %776, i64 2
  %779 = load i16, ptr %778, align 2, !tbaa !45
  %780 = load i8, ptr %776, align 2, !tbaa !8
  %781 = sub nuw i32 %775, %715
  %782 = zext nneg i8 %714 to i64
  %783 = lshr i64 %774, %782
  br label %784

784:                                              ; preds = %.loopexit118, %708
  %785 = phi i32 [ %773, %.loopexit118 ], [ %710, %708 ]
  %786 = phi i64 [ %783, %.loopexit118 ], [ %711, %708 ]
  %787 = phi i32 [ %781, %.loopexit118 ], [ %712, %708 ]
  %788 = phi i16 [ %779, %.loopexit118 ], [ %717, %708 ]
  %789 = phi i8 [ %777, %.loopexit118 ], [ %714, %708 ]
  %790 = phi i8 [ %780, %.loopexit118 ], [ %718, %708 ]
  %791 = zext i8 %789 to i32
  %792 = zext nneg i8 %789 to i64
  %793 = lshr i64 %786, %792
  %794 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %787, i32 %791), !nosanitize !34
  %795 = extractvalue { i32, i1 } %794, 0, !nosanitize !34
  %796 = extractvalue { i32, i1 } %794, 1, !nosanitize !34
  br i1 %796, label %797, label %798, !prof !35, !nosanitize !34

797:                                              ; preds = %784
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

798:                                              ; preds = %784
  %799 = zext i16 %788 to i32
  store i32 %799, ptr %41, align 4, !tbaa !38
  %800 = zext i8 %790 to i32
  %801 = icmp eq i8 %790, 0
  br i1 %801, label %802, label %822

802:                                              ; preds = %798
  %803 = icmp eq i32 %53, 0
  br i1 %803, label %804, label %811

804:                                              ; preds = %802
  %805 = load ptr, ptr %24, align 8, !tbaa !25
  %806 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %806, ptr %16, align 8, !tbaa !27
  %807 = call i32 %3(ptr noundef %4, ptr noundef %805, i32 noundef %806) #6
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %.loopexit110

809:                                              ; preds = %804
  %810 = load i32, ptr %41, align 4, !tbaa !38
  br label %811

811:                                              ; preds = %809, %802
  %812 = phi i32 [ %810, %809 ], [ %799, %802 ]
  %813 = phi ptr [ %805, %809 ], [ %51, %802 ]
  %814 = phi i32 [ %806, %809 ], [ %53, %802 ]
  %815 = trunc i32 %812 to i8
  store i8 %815, ptr %813, align 1, !tbaa !8
  %816 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %814, i32 1), !nosanitize !34
  %817 = extractvalue { i32, i1 } %816, 1, !nosanitize !34
  br i1 %817, label %818, label %819, !prof !35, !nosanitize !34

818:                                              ; preds = %811
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

819:                                              ; preds = %811
  %820 = extractvalue { i32, i1 } %816, 0, !nosanitize !34
  %821 = getelementptr inbounds nuw i8, ptr %813, i64 1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

822:                                              ; preds = %798
  %823 = and i32 %800, 32
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %826, label %825

825:                                              ; preds = %822
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

826:                                              ; preds = %822
  %827 = and i32 %800, 64
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %830, label %829

829:                                              ; preds = %826
  store ptr @.str.9, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

830:                                              ; preds = %826
  %831 = and i32 %800, 15
  store i32 %831, ptr %42, align 4, !tbaa !67
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %890, label %833

833:                                              ; preds = %830
  %834 = icmp ult i32 %795, %831
  br i1 %834, label %835, label %868

835:                                              ; preds = %833
  %836 = zext nneg i32 %795 to i64
  br label %837

837:                                              ; preds = %861, %835
  %838 = phi i64 [ %836, %835 ], [ %862, %861 ]
  %839 = phi i64 [ %793, %835 ], [ %855, %861 ]
  %840 = phi i32 [ %785, %835 ], [ %848, %861 ]
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %846

842:                                              ; preds = %837
  %843 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %846

845:                                              ; preds = %842
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

846:                                              ; preds = %842, %837
  %847 = phi i32 [ %843, %842 ], [ %840, %837 ]
  %848 = add i32 %847, -1
  %849 = load ptr, ptr %6, align 8, !tbaa !32
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 1
  store ptr %850, ptr %6, align 8, !tbaa !32
  %851 = load i8, ptr %849, align 1, !tbaa !8
  %852 = zext i8 %851 to i64
  %853 = shl i64 %852, %838
  %854 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %839, i64 %853), !nosanitize !34
  %855 = extractvalue { i64, i1 } %854, 0, !nosanitize !34
  %856 = extractvalue { i64, i1 } %854, 1, !nosanitize !34
  br i1 %856, label %857, label %858, !prof !35, !nosanitize !34

857:                                              ; preds = %846
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

858:                                              ; preds = %846
  %859 = icmp samesign ugt i64 %838, 4294967287
  br i1 %859, label %860, label %861, !prof !35, !nosanitize !34

860:                                              ; preds = %858
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

861:                                              ; preds = %858
  %862 = add nuw nsw i64 %838, 8
  %863 = trunc nuw i64 %862 to i32
  %864 = load i32, ptr %42, align 4, !tbaa !67
  %865 = icmp ugt i32 %864, %863
  br i1 %865, label %837, label %866, !llvm.loop !68

866:                                              ; preds = %861
  %867 = load i32, ptr %41, align 4, !tbaa !38
  br label %868

868:                                              ; preds = %866, %833
  %869 = phi i32 [ %799, %833 ], [ %867, %866 ]
  %870 = phi i32 [ %785, %833 ], [ %848, %866 ]
  %871 = phi i64 [ %793, %833 ], [ %855, %866 ]
  %872 = phi i32 [ %795, %833 ], [ %863, %866 ]
  %873 = phi i32 [ %831, %833 ], [ %864, %866 ]
  %874 = shl nsw i32 -1, %873
  %875 = xor i32 %874, -1
  %876 = trunc i64 %871 to i32
  %877 = and i32 %875, %876
  %878 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %869, i32 %877), !nosanitize !34
  %879 = extractvalue { i32, i1 } %878, 1, !nosanitize !34
  br i1 %879, label %880, label %881, !prof !35, !nosanitize !34

880:                                              ; preds = %868
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

881:                                              ; preds = %868
  %882 = extractvalue { i32, i1 } %878, 0, !nosanitize !34
  store i32 %882, ptr %41, align 4, !tbaa !38
  %883 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %872, i32 %873), !nosanitize !34
  %884 = extractvalue { i32, i1 } %883, 1, !nosanitize !34
  br i1 %884, label %885, label %886, !prof !35, !nosanitize !34

885:                                              ; preds = %881
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

886:                                              ; preds = %881
  %887 = extractvalue { i32, i1 } %883, 0, !nosanitize !34
  %888 = zext nneg i32 %873 to i64
  %889 = lshr i64 %871, %888
  br label %890

890:                                              ; preds = %886, %830
  %891 = phi i32 [ %870, %886 ], [ %785, %830 ]
  %892 = phi i64 [ %889, %886 ], [ %793, %830 ]
  %893 = phi i32 [ %887, %886 ], [ %795, %830 ]
  %894 = load i32, ptr %40, align 4, !tbaa !62
  %895 = shl nsw i32 -1, %894
  %896 = xor i32 %895, -1
  %897 = trunc i64 %892 to i32
  %898 = load ptr, ptr %39, align 8, !tbaa !61
  %899 = and i32 %896, %897
  %900 = zext nneg i32 %899 to i64
  %901 = getelementptr inbounds nuw [4 x i8], ptr %898, i64 %900
  %902 = getelementptr inbounds nuw i8, ptr %901, i64 1
  %903 = load i8, ptr %902, align 1, !tbaa !8
  %904 = zext i8 %903 to i32
  %905 = icmp ult i32 %893, %904
  br i1 %905, label %906, label %946

906:                                              ; preds = %890
  %907 = zext nneg i32 %893 to i64
  br label %908

908:                                              ; preds = %927, %906
  %909 = phi i64 [ %907, %906 ], [ %930, %927 ]
  %910 = phi i64 [ %892, %906 ], [ %928, %927 ]
  %911 = phi i32 [ %891, %906 ], [ %929, %927 ]
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %913, label %917

913:                                              ; preds = %908
  %914 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %916, label %917

916:                                              ; preds = %913
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

917:                                              ; preds = %913, %908
  %918 = phi i32 [ %914, %913 ], [ %911, %908 ]
  %919 = load ptr, ptr %6, align 8, !tbaa !32
  %920 = getelementptr inbounds nuw i8, ptr %919, i64 1
  store ptr %920, ptr %6, align 8, !tbaa !32
  %921 = load i8, ptr %919, align 1, !tbaa !8
  %922 = zext i8 %921 to i64
  %923 = shl i64 %922, %909
  %924 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %910, i64 %923), !nosanitize !34
  %925 = extractvalue { i64, i1 } %924, 1, !nosanitize !34
  br i1 %925, label %926, label %927, !prof !35, !nosanitize !34

926:                                              ; preds = %917
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

927:                                              ; preds = %917
  %928 = extractvalue { i64, i1 } %924, 0, !nosanitize !34
  %929 = add i32 %918, -1
  %930 = add nuw nsw i64 %909, 8
  %931 = load i32, ptr %40, align 4, !tbaa !62
  %932 = shl nsw i32 -1, %931
  %933 = xor i32 %932, -1
  %934 = trunc i64 %928 to i32
  %935 = load ptr, ptr %39, align 8, !tbaa !61
  %936 = and i32 %933, %934
  %937 = zext nneg i32 %936 to i64
  %938 = getelementptr inbounds nuw [4 x i8], ptr %935, i64 %937
  %939 = getelementptr inbounds nuw i8, ptr %938, i64 1
  %940 = load i8, ptr %939, align 1, !tbaa !8
  %941 = zext i8 %940 to i64
  %942 = icmp samesign ult i64 %930, %941
  br i1 %942, label %908, label %943

943:                                              ; preds = %927
  %944 = zext i8 %940 to i32
  %945 = trunc nuw nsw i64 %930 to i32
  br label %946

946:                                              ; preds = %943, %890
  %947 = phi ptr [ %898, %890 ], [ %935, %943 ]
  %948 = phi i32 [ %891, %890 ], [ %929, %943 ]
  %949 = phi i64 [ %892, %890 ], [ %928, %943 ]
  %950 = phi i32 [ %893, %890 ], [ %945, %943 ]
  %951 = phi ptr [ %901, %890 ], [ %938, %943 ]
  %952 = phi i8 [ %903, %890 ], [ %940, %943 ]
  %953 = phi i32 [ %904, %890 ], [ %944, %943 ]
  %954 = getelementptr inbounds nuw i8, ptr %951, i64 2
  %955 = load i16, ptr %954, align 2, !tbaa !45
  %956 = load i8, ptr %951, align 2, !tbaa !8
  %957 = icmp ult i8 %956, 16
  br i1 %957, label %958, label %1021

958:                                              ; preds = %946
  %959 = zext nneg i8 %956 to i32
  %960 = add nuw nsw i32 %953, %959
  %961 = shl nsw i32 -1, %960
  %962 = xor i32 %961, -1
  %963 = zext i16 %955 to i32
  %964 = trunc i64 %949 to i32
  %965 = and i32 %962, %964
  %966 = lshr i32 %965, %953
  %967 = add nuw i32 %966, %963
  %968 = zext i32 %967 to i64
  %969 = getelementptr inbounds nuw [4 x i8], ptr %947, i64 %968
  %970 = getelementptr inbounds nuw i8, ptr %969, i64 1
  %971 = load i8, ptr %970, align 1, !tbaa !8
  %972 = zext i8 %971 to i32
  %973 = add nuw nsw i32 %953, %972
  %974 = icmp ugt i32 %973, %950
  br i1 %974, label %.preheader115.preheader, label %.loopexit116

.preheader115.preheader:                          ; preds = %958
  %975 = zext nneg i32 %950 to i64
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.preheader, %993
  %indvars.iv708 = phi i64 [ %975, %.preheader115.preheader ], [ %indvars.iv.next709, %993 ]
  %976 = phi i64 [ %949, %.preheader115.preheader ], [ %994, %993 ]
  %977 = phi i32 [ %948, %.preheader115.preheader ], [ %995, %993 ]
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %979, label %983

979:                                              ; preds = %.preheader115
  %980 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %982, label %983

982:                                              ; preds = %979
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

983:                                              ; preds = %979, %.preheader115
  %984 = phi i32 [ %980, %979 ], [ %977, %.preheader115 ]
  %985 = load ptr, ptr %6, align 8, !tbaa !32
  %986 = getelementptr inbounds nuw i8, ptr %985, i64 1
  store ptr %986, ptr %6, align 8, !tbaa !32
  %987 = load i8, ptr %985, align 1, !tbaa !8
  %988 = zext i8 %987 to i64
  %989 = shl i64 %988, %indvars.iv708
  %990 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %976, i64 %989), !nosanitize !34
  %991 = extractvalue { i64, i1 } %990, 1, !nosanitize !34
  br i1 %991, label %992, label %993, !prof !35, !nosanitize !34

992:                                              ; preds = %983
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

993:                                              ; preds = %983
  %994 = extractvalue { i64, i1 } %990, 0, !nosanitize !34
  %995 = add i32 %984, -1
  %indvars.iv.next709 = add nuw nsw i64 %indvars.iv708, 8
  %996 = load ptr, ptr %39, align 8, !tbaa !61
  %997 = trunc i64 %994 to i32
  %998 = and i32 %997, %962
  %999 = lshr i32 %998, %953
  %1000 = add nuw i32 %999, %963
  %1001 = zext i32 %1000 to i64
  %1002 = getelementptr inbounds nuw [4 x i8], ptr %996, i64 %1001
  %1003 = getelementptr inbounds nuw i8, ptr %1002, i64 1
  %1004 = load i8, ptr %1003, align 1, !tbaa !8
  %1005 = zext i8 %1004 to i32
  %1006 = add nuw nsw i32 %953, %1005
  %1007 = zext nneg i32 %1006 to i64
  %1008 = icmp samesign ult i64 %indvars.iv.next709, %1007
  br i1 %1008, label %.preheader115, label %.loopexit116.loopexit

.loopexit116.loopexit:                            ; preds = %993
  %1009 = trunc nuw nsw i64 %indvars.iv.next709 to i32
  br label %.loopexit116

.loopexit116:                                     ; preds = %.loopexit116.loopexit, %958
  %1010 = phi i32 [ %948, %958 ], [ %995, %.loopexit116.loopexit ]
  %1011 = phi i64 [ %949, %958 ], [ %994, %.loopexit116.loopexit ]
  %1012 = phi i32 [ %950, %958 ], [ %1009, %.loopexit116.loopexit ]
  %1013 = phi ptr [ %969, %958 ], [ %1002, %.loopexit116.loopexit ]
  %1014 = phi i8 [ %971, %958 ], [ %1004, %.loopexit116.loopexit ]
  %1015 = getelementptr inbounds nuw i8, ptr %1013, i64 2
  %1016 = load i16, ptr %1015, align 2, !tbaa !45
  %1017 = load i8, ptr %1013, align 2, !tbaa !8
  %1018 = sub nuw i32 %1012, %953
  %1019 = zext nneg i8 %952 to i64
  %1020 = lshr i64 %1011, %1019
  br label %1021

1021:                                             ; preds = %.loopexit116, %946
  %1022 = phi i32 [ %1010, %.loopexit116 ], [ %948, %946 ]
  %1023 = phi i64 [ %1020, %.loopexit116 ], [ %949, %946 ]
  %1024 = phi i32 [ %1018, %.loopexit116 ], [ %950, %946 ]
  %1025 = phi i16 [ %1016, %.loopexit116 ], [ %955, %946 ]
  %1026 = phi i8 [ %1014, %.loopexit116 ], [ %952, %946 ]
  %1027 = phi i8 [ %1017, %.loopexit116 ], [ %956, %946 ]
  %1028 = zext i8 %1026 to i32
  %1029 = zext nneg i8 %1026 to i64
  %1030 = lshr i64 %1023, %1029
  %1031 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1024, i32 %1028), !nosanitize !34
  %1032 = extractvalue { i32, i1 } %1031, 0, !nosanitize !34
  %1033 = extractvalue { i32, i1 } %1031, 1, !nosanitize !34
  br i1 %1033, label %1034, label %1035, !prof !35, !nosanitize !34

1034:                                             ; preds = %1021
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1035:                                             ; preds = %1021
  %1036 = zext i8 %1027 to i32
  %1037 = and i32 %1036, 64
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1040, label %1039

1039:                                             ; preds = %1035
  store ptr @.str.10, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

1040:                                             ; preds = %1035
  %1041 = zext i16 %1025 to i32
  store i32 %1041, ptr %43, align 8, !tbaa !69
  %1042 = and i32 %1036, 15
  store i32 %1042, ptr %42, align 4, !tbaa !67
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1101, label %1044

1044:                                             ; preds = %1040
  %1045 = icmp ult i32 %1032, %1042
  br i1 %1045, label %1046, label %1079

1046:                                             ; preds = %1044
  %1047 = zext nneg i32 %1032 to i64
  br label %1048

1048:                                             ; preds = %1072, %1046
  %1049 = phi i64 [ %1047, %1046 ], [ %1073, %1072 ]
  %1050 = phi i64 [ %1030, %1046 ], [ %1066, %1072 ]
  %1051 = phi i32 [ %1022, %1046 ], [ %1059, %1072 ]
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1053, label %1057

1053:                                             ; preds = %1048
  %1054 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1053
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

1057:                                             ; preds = %1053, %1048
  %1058 = phi i32 [ %1054, %1053 ], [ %1051, %1048 ]
  %1059 = add i32 %1058, -1
  %1060 = load ptr, ptr %6, align 8, !tbaa !32
  %1061 = getelementptr inbounds nuw i8, ptr %1060, i64 1
  store ptr %1061, ptr %6, align 8, !tbaa !32
  %1062 = load i8, ptr %1060, align 1, !tbaa !8
  %1063 = zext i8 %1062 to i64
  %1064 = shl i64 %1063, %1049
  %1065 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1050, i64 %1064), !nosanitize !34
  %1066 = extractvalue { i64, i1 } %1065, 0, !nosanitize !34
  %1067 = extractvalue { i64, i1 } %1065, 1, !nosanitize !34
  br i1 %1067, label %1068, label %1069, !prof !35, !nosanitize !34

1068:                                             ; preds = %1057
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1069:                                             ; preds = %1057
  %1070 = icmp samesign ugt i64 %1049, 4294967287
  br i1 %1070, label %1071, label %1072, !prof !35, !nosanitize !34

1071:                                             ; preds = %1069
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1072:                                             ; preds = %1069
  %1073 = add nuw nsw i64 %1049, 8
  %1074 = trunc nuw i64 %1073 to i32
  %1075 = load i32, ptr %42, align 4, !tbaa !67
  %1076 = icmp ugt i32 %1075, %1074
  br i1 %1076, label %1048, label %1077, !llvm.loop !70

1077:                                             ; preds = %1072
  %1078 = load i32, ptr %43, align 8, !tbaa !69
  br label %1079

1079:                                             ; preds = %1077, %1044
  %1080 = phi i32 [ %1041, %1044 ], [ %1078, %1077 ]
  %1081 = phi i32 [ %1022, %1044 ], [ %1059, %1077 ]
  %1082 = phi i64 [ %1030, %1044 ], [ %1066, %1077 ]
  %1083 = phi i32 [ %1032, %1044 ], [ %1074, %1077 ]
  %1084 = phi i32 [ %1042, %1044 ], [ %1075, %1077 ]
  %1085 = shl nsw i32 -1, %1084
  %1086 = xor i32 %1085, -1
  %1087 = trunc i64 %1082 to i32
  %1088 = and i32 %1086, %1087
  %1089 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1080, i32 %1088), !nosanitize !34
  %1090 = extractvalue { i32, i1 } %1089, 1, !nosanitize !34
  br i1 %1090, label %1091, label %1092, !prof !35, !nosanitize !34

1091:                                             ; preds = %1079
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1092:                                             ; preds = %1079
  %1093 = extractvalue { i32, i1 } %1089, 0, !nosanitize !34
  store i32 %1093, ptr %43, align 8, !tbaa !69
  %1094 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1083, i32 %1084), !nosanitize !34
  %1095 = extractvalue { i32, i1 } %1094, 1, !nosanitize !34
  br i1 %1095, label %1096, label %1097, !prof !35, !nosanitize !34

1096:                                             ; preds = %1092
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1097:                                             ; preds = %1092
  %1098 = extractvalue { i32, i1 } %1094, 0, !nosanitize !34
  %1099 = zext nneg i32 %1084 to i64
  %1100 = lshr i64 %1082, %1099
  br label %1101

1101:                                             ; preds = %1097, %1040
  %1102 = phi i32 [ %1093, %1097 ], [ %1041, %1040 ]
  %1103 = phi i32 [ %1081, %1097 ], [ %1022, %1040 ]
  %1104 = phi i64 [ %1100, %1097 ], [ %1030, %1040 ]
  %1105 = phi i32 [ %1098, %1097 ], [ %1032, %1040 ]
  %1106 = load i32, ptr %26, align 4, !tbaa !24
  %1107 = load i32, ptr %16, align 8, !tbaa !27
  %1108 = icmp ult i32 %1107, %1106
  %1109 = select i1 %1108, i32 %53, i32 0
  %1110 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1106, i32 %1109), !nosanitize !34
  %1111 = extractvalue { i32, i1 } %1110, 1, !nosanitize !34
  br i1 %1111, label %1112, label %1113, !prof !35, !nosanitize !34

1112:                                             ; preds = %1101
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1113:                                             ; preds = %1101
  %1114 = extractvalue { i32, i1 } %1110, 0, !nosanitize !34
  %1115 = icmp ugt i32 %1102, %1114
  br i1 %1115, label %1116, label %.preheader112

1116:                                             ; preds = %1113
  store ptr @.str.11, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

.preheader112:                                    ; preds = %1113, %.loopexit
  %1117 = phi ptr [ %1255, %.loopexit ], [ %51, %1113 ]
  %1118 = phi i32 [ %1148, %.loopexit ], [ %53, %1113 ]
  %1119 = icmp eq i32 %1118, 0
  %1120 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1119, label %1121, label %1127

1121:                                             ; preds = %.preheader112
  %1122 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1120, ptr %16, align 8, !tbaa !27
  %1123 = call i32 %3(ptr noundef %4, ptr noundef %1122, i32 noundef %1120) #6
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1125, label %.loopexit110

1125:                                             ; preds = %1121
  %1126 = load i32, ptr %26, align 4, !tbaa !24
  br label %1127

1127:                                             ; preds = %1125, %.preheader112
  %1128 = phi i32 [ %1126, %1125 ], [ %1120, %.preheader112 ]
  %1129 = phi ptr [ %1122, %1125 ], [ %1117, %.preheader112 ]
  %1130 = phi i32 [ %1120, %1125 ], [ %1118, %.preheader112 ]
  %1131 = load i32, ptr %43, align 8, !tbaa !69
  %1132 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1128, i32 %1131), !nosanitize !34
  %1133 = extractvalue { i32, i1 } %1132, 1, !nosanitize !34
  br i1 %1133, label %1134, label %1135, !prof !35, !nosanitize !34

1134:                                             ; preds = %1127
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1135:                                             ; preds = %1127
  %1136 = extractvalue { i32, i1 } %1132, 0, !nosanitize !34
  %1137 = icmp ult i32 %1136, %1130
  %1138 = select i1 %1137, i32 %1136, i32 0
  %1139 = sub i32 %1130, %1138
  %1140 = load i32, ptr %41, align 4, !tbaa !38
  %1141 = call i32 @llvm.umin.i32(i32 %1139, i32 %1140)
  %1142 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1140, i32 %1141), !nosanitize !34
  %1143 = extractvalue { i32, i1 } %1142, 1, !nosanitize !34
  br i1 %1143, label %1144, label %1145, !prof !35, !nosanitize !34

1144:                                             ; preds = %1135
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1145:                                             ; preds = %1135
  %1146 = extractvalue { i32, i1 } %1142, 0, !nosanitize !34
  store i32 %1146, ptr %41, align 4, !tbaa !38
  %1147 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1130, i32 %1141), !nosanitize !34
  %1148 = extractvalue { i32, i1 } %1147, 0, !nosanitize !34
  %1149 = extractvalue { i32, i1 } %1147, 1, !nosanitize !34
  br i1 %1149, label %1225, label %1150, !prof !35, !nosanitize !34

1150:                                             ; preds = %1145
  %1151 = zext i32 %1136 to i64
  %1152 = zext i32 %1131 to i64
  %1153 = sub nsw i64 0, %1152
  %1154 = select i1 %1137, i64 %1151, i64 %1153
  %1155 = getelementptr inbounds i8, ptr %1129, i64 %1154
  %1156 = icmp eq i32 %1141, 0
  br i1 %1156, label %1223, label %1157, !prof !35, !nosanitize !34

1157:                                             ; preds = %1150
  %1158 = zext i32 %1141 to i64
  %1159 = icmp ult i32 %1141, 4
  %1160 = add nsw i64 %1154, 31
  %1161 = icmp ult i64 %1160, 32
  %1162 = select i1 %1159, i1 true, i1 %1161
  br i1 %1162, label %1202, label %1163

1163:                                             ; preds = %1157
  %1164 = icmp ult i32 %1141, 32
  br i1 %1164, label %1186, label %1165

1165:                                             ; preds = %1163
  %1166 = and i64 %1158, 4294967264
  br label %1167

1167:                                             ; preds = %1167, %1165
  %1168 = phi i64 [ 0, %1165 ], [ %1175, %1167 ]
  %1169 = getelementptr i8, ptr %1129, i64 %1168
  %1170 = getelementptr i8, ptr %1155, i64 %1168
  %1171 = getelementptr i8, ptr %1170, i64 16
  %1172 = load <16 x i8>, ptr %1170, align 1, !tbaa !8
  %1173 = load <16 x i8>, ptr %1171, align 1, !tbaa !8
  %1174 = getelementptr i8, ptr %1169, i64 16
  store <16 x i8> %1172, ptr %1169, align 1, !tbaa !8
  store <16 x i8> %1173, ptr %1174, align 1, !tbaa !8
  %1175 = add nuw i64 %1168, 32
  %1176 = icmp eq i64 %1175, %1166
  br i1 %1176, label %1177, label %1167, !llvm.loop !71

1177:                                             ; preds = %1167
  %1178 = getelementptr i8, ptr %1129, i64 %1166
  %1179 = icmp eq i64 %1166, %1158
  br i1 %1179, label %.loopexit, label %1180

1180:                                             ; preds = %1177
  %1181 = getelementptr i8, ptr %1155, i64 %1166
  %1182 = trunc nuw i64 %1166 to i32
  %1183 = sub i32 %1141, %1182
  %1184 = and i64 %1158, 28
  %1185 = icmp eq i64 %1184, 0
  br i1 %1185, label %1202, label %1186, !prof !74

1186:                                             ; preds = %1180, %1163
  %1187 = phi i64 [ %1166, %1180 ], [ 0, %1163 ]
  %1188 = and i64 %1158, 4294967292
  br label %1189

1189:                                             ; preds = %1189, %1186
  %1190 = phi i64 [ %1187, %1186 ], [ %1194, %1189 ]
  %1191 = getelementptr i8, ptr %1129, i64 %1190
  %1192 = getelementptr i8, ptr %1155, i64 %1190
  %1193 = load <4 x i8>, ptr %1192, align 1, !tbaa !8
  store <4 x i8> %1193, ptr %1191, align 1, !tbaa !8
  %1194 = add nuw i64 %1190, 4
  %1195 = icmp eq i64 %1194, %1188
  br i1 %1195, label %1196, label %1189, !llvm.loop !75

1196:                                             ; preds = %1189
  %1197 = getelementptr i8, ptr %1129, i64 %1188
  %1198 = trunc nuw i64 %1188 to i32
  %1199 = sub i32 %1141, %1198
  %1200 = getelementptr i8, ptr %1155, i64 %1188
  %1201 = icmp eq i64 %1188, %1158
  br i1 %1201, label %.loopexit, label %1202

1202:                                             ; preds = %1196, %1180, %1157
  %1203 = phi ptr [ %1129, %1157 ], [ %1178, %1180 ], [ %1197, %1196 ]
  %1204 = phi i32 [ %1141, %1157 ], [ %1183, %1180 ], [ %1199, %1196 ]
  %1205 = phi ptr [ %1155, %1157 ], [ %1181, %1180 ], [ %1200, %1196 ]
  %1206 = add i32 %1204, -1
  %1207 = and i32 %1204, 7
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %.loopexit108, label %.preheader107

.preheader107:                                    ; preds = %1202, %.preheader107
  %1209 = phi ptr [ %1213, %.preheader107 ], [ %1203, %1202 ]
  %1210 = phi ptr [ %1214, %.preheader107 ], [ %1205, %1202 ]
  %1211 = phi i32 [ %1215, %.preheader107 ], [ 0, %1202 ]
  %1212 = load i8, ptr %1210, align 1, !tbaa !8
  store i8 %1212, ptr %1209, align 1, !tbaa !8
  %1213 = getelementptr inbounds nuw i8, ptr %1209, i64 1
  %1214 = getelementptr inbounds nuw i8, ptr %1210, i64 1
  %1215 = add nuw nsw i32 %1211, 1
  %1216 = icmp eq i32 %1215, %1207
  br i1 %1216, label %.loopexit108.loopexit, label %.preheader107, !llvm.loop !76

.loopexit108.loopexit:                            ; preds = %.preheader107
  %1217 = and i32 %1204, -8
  br label %.loopexit108

.loopexit108:                                     ; preds = %.loopexit108.loopexit, %1202
  %1218 = phi ptr [ poison, %1202 ], [ %1213, %.loopexit108.loopexit ]
  %1219 = phi ptr [ %1203, %1202 ], [ %1213, %.loopexit108.loopexit ]
  %1220 = phi i32 [ %1204, %1202 ], [ %1217, %.loopexit108.loopexit ]
  %1221 = phi ptr [ %1205, %1202 ], [ %1214, %.loopexit108.loopexit ]
  %1222 = icmp ult i32 %1206, 7
  br i1 %1222, label %.loopexit, label %.preheader106

1223:                                             ; preds = %1150
  %1224 = load i8, ptr %1155, align 1, !tbaa !8
  store i8 %1224, ptr %1129, align 1, !tbaa !8
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1225:                                             ; preds = %1145
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

.preheader106:                                    ; preds = %.loopexit108, %.preheader106
  %1226 = phi ptr [ %1251, %.preheader106 ], [ %1219, %.loopexit108 ]
  %1227 = phi i32 [ %1252, %.preheader106 ], [ %1220, %.loopexit108 ]
  %1228 = phi ptr [ %1253, %.preheader106 ], [ %1221, %.loopexit108 ]
  %1229 = load i8, ptr %1228, align 1, !tbaa !8
  store i8 %1229, ptr %1226, align 1, !tbaa !8
  %1230 = getelementptr inbounds nuw i8, ptr %1226, i64 1
  %1231 = getelementptr inbounds nuw i8, ptr %1228, i64 1
  %1232 = load i8, ptr %1231, align 1, !tbaa !8
  store i8 %1232, ptr %1230, align 1, !tbaa !8
  %1233 = getelementptr inbounds nuw i8, ptr %1226, i64 2
  %1234 = getelementptr inbounds nuw i8, ptr %1228, i64 2
  %1235 = load i8, ptr %1234, align 1, !tbaa !8
  store i8 %1235, ptr %1233, align 1, !tbaa !8
  %1236 = getelementptr inbounds nuw i8, ptr %1226, i64 3
  %1237 = getelementptr inbounds nuw i8, ptr %1228, i64 3
  %1238 = load i8, ptr %1237, align 1, !tbaa !8
  store i8 %1238, ptr %1236, align 1, !tbaa !8
  %1239 = getelementptr inbounds nuw i8, ptr %1226, i64 4
  %1240 = getelementptr inbounds nuw i8, ptr %1228, i64 4
  %1241 = load i8, ptr %1240, align 1, !tbaa !8
  store i8 %1241, ptr %1239, align 1, !tbaa !8
  %1242 = getelementptr inbounds nuw i8, ptr %1226, i64 5
  %1243 = getelementptr inbounds nuw i8, ptr %1228, i64 5
  %1244 = load i8, ptr %1243, align 1, !tbaa !8
  store i8 %1244, ptr %1242, align 1, !tbaa !8
  %1245 = getelementptr inbounds nuw i8, ptr %1226, i64 6
  %1246 = getelementptr inbounds nuw i8, ptr %1228, i64 6
  %1247 = load i8, ptr %1246, align 1, !tbaa !8
  store i8 %1247, ptr %1245, align 1, !tbaa !8
  %1248 = getelementptr inbounds nuw i8, ptr %1226, i64 7
  %1249 = getelementptr inbounds nuw i8, ptr %1228, i64 7
  %1250 = load i8, ptr %1249, align 1, !tbaa !8
  store i8 %1250, ptr %1248, align 1, !tbaa !8
  %1251 = getelementptr inbounds nuw i8, ptr %1226, i64 8
  %1252 = add i32 %1227, -8
  %1253 = getelementptr inbounds nuw i8, ptr %1228, i64 8
  %1254 = icmp eq i32 %1252, 0
  br i1 %1254, label %.loopexit, label %.preheader106, !llvm.loop !78

.loopexit:                                        ; preds = %.preheader106, %.loopexit108, %1196, %1177
  %1255 = phi ptr [ %1197, %1196 ], [ %1178, %1177 ], [ %1218, %.loopexit108 ], [ %1251, %.preheader106 ]
  %1256 = load i32, ptr %41, align 4, !tbaa !38
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %.loopexit114, label %.preheader112, !llvm.loop !79

.loopexit114:                                     ; preds = %.loopexit, %1116, %1039, %829, %825, %819, %661, %637, %628, %624, %.loopexit121, %588, %454, %309, %245, %.loopexit111, %149, %102, %68
  %1258 = phi ptr [ %51, %68 ], [ %51, %102 ], [ %51, %149 ], [ %198, %.loopexit111 ], [ %51, %245 ], [ %51, %309 ], [ %51, %.loopexit121 ], [ %51, %624 ], [ %51, %628 ], [ %51, %637 ], [ %664, %661 ], [ %821, %819 ], [ %51, %825 ], [ %51, %829 ], [ %51, %1039 ], [ %51, %1116 ], [ %51, %454 ], [ %51, %588 ], [ %1255, %.loopexit ]
  %1259 = phi i32 [ %52, %68 ], [ %92, %102 ], [ %142, %149 ], [ %199, %.loopexit111 ], [ %228, %245 ], [ %277, %309 ], [ %618, %.loopexit121 ], [ %618, %624 ], [ %618, %628 ], [ %618, %637 ], [ %667, %661 ], [ %785, %819 ], [ %785, %825 ], [ %785, %829 ], [ %1022, %1039 ], [ %1103, %1116 ], [ %446, %454 ], [ %551, %588 ], [ %1103, %.loopexit ]
  %1260 = phi i32 [ %53, %68 ], [ %53, %102 ], [ %53, %149 ], [ %200, %.loopexit111 ], [ %53, %245 ], [ %53, %309 ], [ %53, %.loopexit121 ], [ %53, %624 ], [ %53, %628 ], [ %53, %637 ], [ %665, %661 ], [ %820, %819 ], [ %53, %825 ], [ %53, %829 ], [ %53, %1039 ], [ %53, %1116 ], [ %53, %454 ], [ %53, %588 ], [ %1148, %.loopexit ]
  %1261 = phi i64 [ %72, %68 ], [ %105, %102 ], [ %143, %149 ], [ 0, %.loopexit111 ], [ %240, %245 ], [ %293, %309 ], [ %617, %.loopexit121 ], [ %617, %624 ], [ %617, %628 ], [ %617, %637 ], [ %668, %661 ], [ %793, %819 ], [ %793, %825 ], [ %793, %829 ], [ %1030, %1039 ], [ %1104, %1116 ], [ %450, %454 ], [ %552, %588 ], [ %1104, %.loopexit ]
  %1262 = phi i32 [ %70, %68 ], [ %104, %102 ], [ %144, %149 ], [ 0, %.loopexit111 ], [ %241, %245 ], [ %292, %309 ], [ %616, %.loopexit121 ], [ %616, %624 ], [ %616, %628 ], [ %616, %637 ], [ %669, %661 ], [ %795, %819 ], [ %795, %825 ], [ %795, %829 ], [ %1032, %1039 ], [ %1105, %1116 ], [ %451, %454 ], [ %556, %588 ], [ %1105, %.loopexit ]
  %1263 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

.loopexit110.loopexit1103:                        ; preds = %49
  br label %.loopexit110

.loopexit110.loopexit1389:                        ; preds = %49
  br label %.loopexit110

.loopexit110:                                     ; preds = %804, %1121, %166, %49, %.loopexit110.loopexit1389, %.loopexit110.loopexit1103, %1056, %982, %916, %845, %745, %678, %517, %476, %427, %346, %263, %209, %162, %123, %76
  %1264 = phi i32 [ %1103, %1121 ], [ 0, %76 ], [ 0, %123 ], [ 0, %162 ], [ %52, %49 ], [ 0, %209 ], [ 0, %263 ], [ 0, %427 ], [ %164, %166 ], [ 0, %845 ], [ 0, %1056 ], [ %52, %.loopexit110.loopexit1103 ], [ 0, %982 ], [ 0, %916 ], [ 0, %745 ], [ 0, %678 ], [ 0, %476 ], [ 0, %517 ], [ 0, %346 ], [ %785, %804 ], [ %52, %.loopexit110.loopexit1389 ]
  %1265 = phi i32 [ %1120, %1121 ], [ %53, %76 ], [ %53, %123 ], [ %154, %162 ], [ %53, %49 ], [ %53, %209 ], [ %53, %263 ], [ %53, %427 ], [ %168, %166 ], [ %53, %845 ], [ %53, %1056 ], [ %53, %.loopexit110.loopexit1103 ], [ %53, %982 ], [ %53, %916 ], [ %53, %745 ], [ %53, %678 ], [ %53, %476 ], [ %53, %517 ], [ %53, %346 ], [ %806, %804 ], [ %53, %.loopexit110.loopexit1389 ]
  %1266 = phi i1 [ false, %1121 ], [ false, %76 ], [ false, %123 ], [ false, %162 ], [ false, %49 ], [ false, %209 ], [ false, %263 ], [ false, %427 ], [ false, %166 ], [ false, %845 ], [ false, %1056 ], [ false, %.loopexit110.loopexit1103 ], [ false, %982 ], [ false, %916 ], [ false, %745 ], [ false, %678 ], [ false, %476 ], [ false, %517 ], [ false, %346 ], [ false, %804 ], [ true, %.loopexit110.loopexit1389 ]
  %1267 = phi i32 [ -5, %1121 ], [ -5, %76 ], [ -5, %123 ], [ -5, %162 ], [ -3, %49 ], [ -5, %209 ], [ -5, %263 ], [ -5, %427 ], [ -5, %166 ], [ -5, %845 ], [ -5, %1056 ], [ -2, %.loopexit110.loopexit1103 ], [ -5, %982 ], [ -5, %916 ], [ -5, %745 ], [ -5, %678 ], [ -5, %476 ], [ -5, %517 ], [ -5, %346 ], [ -5, %804 ], [ 1, %.loopexit110.loopexit1389 ]
  %1268 = load i32, ptr %26, align 4, !tbaa !24
  %1269 = icmp ult i32 %1265, %1268
  br i1 %1269, label %1270, label %1277

1270:                                             ; preds = %.loopexit110
  %1271 = sub nuw i32 %1268, %1265
  %1272 = load ptr, ptr %24, align 8, !tbaa !25
  %1273 = call i32 %3(ptr noundef %4, ptr noundef %1272, i32 noundef %1271) #6
  %1274 = icmp ne i32 %1273, 0
  %1275 = and i1 %1266, %1274
  %1276 = select i1 %1275, i32 -5, i32 %1267
  br label %1277

1277:                                             ; preds = %1270, %.loopexit110
  %1278 = phi i32 [ %1276, %1270 ], [ %1267, %.loopexit110 ]
  %1279 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1279, ptr %0, align 8, !tbaa !31
  store i32 %1264, ptr %46, align 8, !tbaa !33
  br label %1280

1280:                                             ; preds = %1277, %8, %5
  %1281 = phi i32 [ %1278, %1277 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 %1281
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
