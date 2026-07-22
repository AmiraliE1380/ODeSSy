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
  br i1 %7, label %1272, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1272, label %12

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
  %50 = phi i32 [ 16191, %22 ], [ %1255, %.loopexit114 ]
  %51 = phi ptr [ %25, %22 ], [ %1250, %.loopexit114 ]
  %52 = phi i32 [ %23, %22 ], [ %1251, %.loopexit114 ]
  %53 = phi i32 [ %27, %22 ], [ %1252, %.loopexit114 ]
  %54 = phi i64 [ 0, %22 ], [ %1253, %.loopexit114 ]
  %55 = phi i32 [ 0, %22 ], [ %1254, %.loopexit114 ]
  switch i32 %50, label %.loopexit110.loopexit1067 [
    i32 16191, label %60
    i32 16193, label %106
    i32 16196, label %56
    i32 16200, label %635
    i32 16208, label %.loopexit110.loopexit1341
    i32 16209, label %.loopexit110
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %223

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %197

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
  switch i32 %98, label %default.unreachable791 [
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

default.unreachable791:                           ; preds = %91
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

.preheader109:                                    ; preds = %150, %189
  %154 = phi i32 [ %190, %189 ], [ %53, %150 ]
  %155 = phi i32 [ %179, %189 ], [ %142, %150 ]
  %156 = phi ptr [ %192, %189 ], [ %51, %150 ]
  %157 = phi i32 [ %191, %189 ], [ %152, %150 ]
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
  %185 = load i32, ptr %41, align 4, !tbaa !38
  %186 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %185, i32 %175), !nosanitize !34
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !34
  br i1 %187, label %188, label %189, !prof !35, !nosanitize !34

188:                                              ; preds = %182
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

189:                                              ; preds = %182
  %190 = sub i32 %173, %175
  %191 = extractvalue { i32, i1 } %186, 0, !nosanitize !34
  %192 = getelementptr inbounds nuw i8, ptr %172, i64 %177
  store i32 %191, ptr %41, align 4, !tbaa !38
  %193 = icmp eq i32 %191, 0
  br i1 %193, label %.loopexit111, label %.preheader109, !llvm.loop !39

.loopexit111:                                     ; preds = %189, %150
  %194 = phi ptr [ %51, %150 ], [ %192, %189 ]
  %195 = phi i32 [ %142, %150 ], [ %179, %189 ]
  %196 = phi i32 [ %53, %150 ], [ %190, %189 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

197:                                              ; preds = %216, %58
  %198 = phi i64 [ %59, %58 ], [ %219, %216 ]
  %199 = phi i64 [ %54, %58 ], [ %217, %216 ]
  %200 = phi i32 [ %52, %58 ], [ %218, %216 ]
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

206:                                              ; preds = %202, %197
  %207 = phi i32 [ %203, %202 ], [ %200, %197 ]
  %208 = load ptr, ptr %6, align 8, !tbaa !32
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 1
  store ptr %209, ptr %6, align 8, !tbaa !32
  %210 = load i8, ptr %208, align 1, !tbaa !8
  %211 = zext i8 %210 to i64
  %212 = shl nuw nsw i64 %211, %198
  %213 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %199, i64 %212), !nosanitize !34
  %214 = extractvalue { i64, i1 } %213, 1, !nosanitize !34
  br i1 %214, label %215, label %216, !prof !35, !nosanitize !34

215:                                              ; preds = %206
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

216:                                              ; preds = %206
  %217 = extractvalue { i64, i1 } %213, 0, !nosanitize !34
  %218 = add i32 %207, -1
  %219 = add nuw nsw i64 %198, 8
  %220 = icmp samesign ult i64 %198, 6
  br i1 %220, label %197, label %221, !llvm.loop !40

221:                                              ; preds = %216
  %222 = trunc nuw nsw i64 %219 to i32
  br label %223

223:                                              ; preds = %221, %56
  %224 = phi i32 [ %52, %56 ], [ %218, %221 ]
  %225 = phi i64 [ %54, %56 ], [ %217, %221 ]
  %226 = phi i32 [ %55, %56 ], [ %222, %221 ]
  %227 = trunc i64 %225 to i32
  %228 = and i32 %227, 31
  %229 = add nuw nsw i32 %228, 257
  store i32 %229, ptr %28, align 4, !tbaa !41
  %230 = lshr i32 %227, 5
  %231 = and i32 %230, 31
  %232 = add nuw nsw i32 %231, 1
  store i32 %232, ptr %29, align 8, !tbaa !42
  %233 = lshr i32 %227, 10
  %234 = and i32 %233, 15
  %235 = add nuw nsw i32 %234, 4
  store i32 %235, ptr %30, align 8, !tbaa !43
  %236 = lshr i64 %225, 14
  %237 = add i32 %226, -14
  %238 = icmp samesign ugt i32 %228, 29
  %239 = icmp samesign ugt i32 %231, 29
  %240 = select i1 %238, i1 true, i1 %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %223
  store ptr @.str.3, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

242:                                              ; preds = %223
  store i32 0, ptr %31, align 4, !tbaa !44
  br label %247

243:                                              ; preds = %279
  %244 = icmp ult i32 %280, 19
  br i1 %244, label %245, label %302

245:                                              ; preds = %243
  %246 = zext nneg i32 %280 to i64
  br label %292

247:                                              ; preds = %279, %242
  %248 = phi i32 [ %280, %279 ], [ 0, %242 ]
  %249 = phi i32 [ %288, %279 ], [ %237, %242 ]
  %250 = phi i64 [ %289, %279 ], [ %236, %242 ]
  %251 = phi i32 [ %273, %279 ], [ %224, %242 ]
  %252 = icmp ult i32 %249, 3
  br i1 %252, label %253, label %271

253:                                              ; preds = %247
  %254 = or disjoint i32 %249, 8
  %255 = icmp eq i32 %251, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %._crit_edge

._crit_edge:                                      ; preds = %256
  %.pre = load i32, ptr %31, align 4, !tbaa !44
  br label %260

259:                                              ; preds = %256
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

260:                                              ; preds = %._crit_edge, %253
  %261 = phi i32 [ %.pre, %._crit_edge ], [ %248, %253 ]
  %262 = phi i32 [ %257, %._crit_edge ], [ %251, %253 ]
  %263 = load ptr, ptr %6, align 8, !tbaa !32
  %264 = getelementptr inbounds nuw i8, ptr %263, i64 1
  store ptr %264, ptr %6, align 8, !tbaa !32
  %265 = load i8, ptr %263, align 1, !tbaa !8
  %266 = zext i8 %265 to i64
  %267 = zext nneg i32 %249 to i64
  %268 = shl nuw nsw i64 %266, %267
  %269 = add nuw nsw i64 %268, %250
  %270 = add i32 %262, -1
  br label %271

271:                                              ; preds = %260, %247
  %272 = phi i32 [ %261, %260 ], [ %248, %247 ]
  %273 = phi i32 [ %270, %260 ], [ %251, %247 ]
  %274 = phi i64 [ %269, %260 ], [ %250, %247 ]
  %275 = phi i32 [ %254, %260 ], [ %249, %247 ]
  %276 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %272, i32 1), !nosanitize !34
  %277 = extractvalue { i32, i1 } %276, 1, !nosanitize !34
  br i1 %277, label %278, label %279, !prof !35, !nosanitize !34

278:                                              ; preds = %271
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

279:                                              ; preds = %271
  %280 = extractvalue { i32, i1 } %276, 0, !nosanitize !34
  %281 = trunc i64 %274 to i16
  %282 = and i16 %281, 7
  store i32 %280, ptr %31, align 4, !tbaa !44
  %283 = zext i32 %272 to i64
  %284 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %283
  %285 = load i16, ptr %284, align 2, !tbaa !45
  %286 = zext i16 %285 to i64
  %287 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %286
  store i16 %282, ptr %287, align 2, !tbaa !45
  %288 = add i32 %275, -3
  %289 = lshr i64 %274, 3
  %290 = load i32, ptr %30, align 8, !tbaa !43
  %291 = icmp ult i32 %280, %290
  br i1 %291, label %247, label %243, !llvm.loop !47

292:                                              ; preds = %292, %245
  %293 = phi i64 [ %246, %245 ], [ %294, %292 ]
  %294 = add nuw nsw i64 %293, 1
  %295 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %293
  %296 = load i16, ptr %295, align 2, !tbaa !45
  %297 = zext i16 %296 to i64
  %298 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %297
  store i16 0, ptr %298, align 2, !tbaa !45
  %299 = and i64 %294, 4294967295
  %300 = icmp eq i64 %299, 19
  br i1 %300, label %301, label %292, !llvm.loop !48

301:                                              ; preds = %292
  store i32 19, ptr %31, align 4, !tbaa !44
  br label %302

302:                                              ; preds = %301, %243
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 7, ptr %36, align 8, !tbaa !51
  %303 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %302
  store ptr @.str.4, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

306:                                              ; preds = %302
  store i32 0, ptr %31, align 4, !tbaa !44
  %307 = load i32, ptr %28, align 4, !tbaa !41
  %308 = load i32, ptr %29, align 8, !tbaa !42
  %309 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %307, i32 %308), !nosanitize !34
  %310 = extractvalue { i32, i1 } %309, 1, !nosanitize !34
  br i1 %310, label %.loopexit120, label %311, !prof !52, !nosanitize !34

311:                                              ; preds = %306
  %312 = extractvalue { i32, i1 } %309, 0, !nosanitize !34
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %.loopexit121, label %.preheader119.preheader

.preheader119.preheader:                          ; preds = %311
  %.pre688 = load i32, ptr %36, align 8, !tbaa !51
  %.pre689 = load ptr, ptr %35, align 8, !tbaa !50
  br label %.preheader119

.loopexit120:                                     ; preds = %306, %603
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

314:                                              ; preds = %603
  %315 = extractvalue { i32, i1 } %609, 0, !nosanitize !34
  %316 = icmp ult i32 %604, %315
  br i1 %316, label %.preheader119, label %.loopexit121, !llvm.loop !53

.preheader119:                                    ; preds = %.preheader119.preheader, %314
  %317 = phi ptr [ %373, %314 ], [ %.pre689, %.preheader119.preheader ]
  %318 = phi i32 [ %374, %314 ], [ %.pre688, %.preheader119.preheader ]
  %319 = phi i32 [ %375, %314 ], [ %273, %.preheader119.preheader ]
  %320 = phi i64 [ %386, %314 ], [ %289, %.preheader119.preheader ]
  %321 = phi i32 [ %388, %314 ], [ %288, %.preheader119.preheader ]
  %322 = shl nsw i32 -1, %318
  %323 = xor i32 %322, -1
  %324 = trunc i64 %320 to i32
  %325 = and i32 %323, %324
  %326 = zext nneg i32 %325 to i64
  %327 = getelementptr inbounds nuw [4 x i8], ptr %317, i64 %326
  %328 = getelementptr inbounds nuw i8, ptr %327, i64 1
  %329 = load i8, ptr %328, align 1, !tbaa !8
  %330 = zext i8 %329 to i32
  %331 = icmp ult i32 %321, %330
  br i1 %331, label %332, label %372

332:                                              ; preds = %.preheader119
  %333 = zext nneg i32 %321 to i64
  br label %334

334:                                              ; preds = %353, %332
  %335 = phi i64 [ %333, %332 ], [ %356, %353 ]
  %336 = phi i64 [ %320, %332 ], [ %354, %353 ]
  %337 = phi i32 [ %319, %332 ], [ %355, %353 ]
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %334
  %340 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

343:                                              ; preds = %339, %334
  %344 = phi i32 [ %340, %339 ], [ %337, %334 ]
  %345 = load ptr, ptr %6, align 8, !tbaa !32
  %346 = getelementptr inbounds nuw i8, ptr %345, i64 1
  store ptr %346, ptr %6, align 8, !tbaa !32
  %347 = load i8, ptr %345, align 1, !tbaa !8
  %348 = zext i8 %347 to i64
  %349 = shl i64 %348, %335
  %350 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 %349), !nosanitize !34
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !34
  br i1 %351, label %352, label %353, !prof !35, !nosanitize !34

352:                                              ; preds = %343
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

353:                                              ; preds = %343
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !34
  %355 = add i32 %344, -1
  %356 = add nuw nsw i64 %335, 8
  %357 = load i32, ptr %36, align 8, !tbaa !51
  %358 = shl nsw i32 -1, %357
  %359 = xor i32 %358, -1
  %360 = trunc i64 %354 to i32
  %361 = load ptr, ptr %35, align 8, !tbaa !50
  %362 = and i32 %359, %360
  %363 = zext nneg i32 %362 to i64
  %364 = getelementptr inbounds nuw [4 x i8], ptr %361, i64 %363
  %365 = getelementptr inbounds nuw i8, ptr %364, i64 1
  %366 = load i8, ptr %365, align 1, !tbaa !8
  %367 = zext i8 %366 to i64
  %368 = icmp samesign ult i64 %356, %367
  br i1 %368, label %334, label %369

369:                                              ; preds = %353
  %370 = zext i8 %366 to i32
  %371 = trunc nuw nsw i64 %356 to i32
  br label %372

372:                                              ; preds = %369, %.preheader119
  %373 = phi ptr [ %317, %.preheader119 ], [ %361, %369 ]
  %374 = phi i32 [ %318, %.preheader119 ], [ %357, %369 ]
  %375 = phi i32 [ %319, %.preheader119 ], [ %355, %369 ]
  %376 = phi i64 [ %320, %.preheader119 ], [ %354, %369 ]
  %377 = phi i32 [ %321, %.preheader119 ], [ %371, %369 ]
  %378 = phi i8 [ %329, %.preheader119 ], [ %366, %369 ]
  %379 = phi ptr [ %327, %.preheader119 ], [ %364, %369 ]
  %380 = phi i32 [ %330, %.preheader119 ], [ %370, %369 ]
  %381 = getelementptr inbounds nuw i8, ptr %379, i64 2
  %382 = load i16, ptr %381, align 2, !tbaa !45
  %383 = icmp ult i16 %382, 16
  br i1 %383, label %384, label %396

384:                                              ; preds = %372
  %385 = zext nneg i8 %378 to i64
  %386 = lshr i64 %376, %385
  %387 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %377, i32 %380), !nosanitize !34
  %388 = extractvalue { i32, i1 } %387, 0, !nosanitize !34
  %389 = extractvalue { i32, i1 } %387, 1, !nosanitize !34
  br i1 %389, label %390, label %391, !prof !35, !nosanitize !34

390:                                              ; preds = %384
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

391:                                              ; preds = %384
  %392 = load i32, ptr %31, align 4, !tbaa !44
  %393 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %392, i32 1), !nosanitize !34
  %394 = extractvalue { i32, i1 } %393, 1, !nosanitize !34
  br i1 %394, label %395, label %603, !prof !35, !nosanitize !34

395:                                              ; preds = %391
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

396:                                              ; preds = %372
  switch i16 %382, label %409 [
    i16 16, label %403
    i16 17, label %397
  ]

397:                                              ; preds = %396
  %398 = add nuw nsw i32 %380, 3
  %399 = icmp ult i32 %377, %398
  br i1 %399, label %400, label %490

400:                                              ; preds = %397
  %401 = zext nneg i32 %377 to i64
  %402 = zext nneg i32 %398 to i64
  br label %464

403:                                              ; preds = %396
  %404 = add nuw nsw i32 %380, 2
  %405 = icmp ult i32 %377, %404
  br i1 %405, label %406, label %441

406:                                              ; preds = %403
  %407 = zext nneg i32 %377 to i64
  %408 = zext nneg i32 %404 to i64
  br label %415

409:                                              ; preds = %396
  %410 = add nuw nsw i32 %380, 7
  %411 = icmp ult i32 %377, %410
  br i1 %411, label %412, label %531

412:                                              ; preds = %409
  %413 = zext nneg i32 %377 to i64
  %414 = zext nneg i32 %410 to i64
  br label %505

415:                                              ; preds = %434, %406
  %416 = phi i64 [ %407, %406 ], [ %437, %434 ]
  %417 = phi i64 [ %376, %406 ], [ %435, %434 ]
  %418 = phi i32 [ %375, %406 ], [ %436, %434 ]
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %415
  %421 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %420
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

424:                                              ; preds = %420, %415
  %425 = phi i32 [ %421, %420 ], [ %418, %415 ]
  %426 = load ptr, ptr %6, align 8, !tbaa !32
  %427 = getelementptr inbounds nuw i8, ptr %426, i64 1
  store ptr %427, ptr %6, align 8, !tbaa !32
  %428 = load i8, ptr %426, align 1, !tbaa !8
  %429 = zext i8 %428 to i64
  %430 = shl i64 %429, %416
  %431 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %417, i64 %430), !nosanitize !34
  %432 = extractvalue { i64, i1 } %431, 1, !nosanitize !34
  br i1 %432, label %433, label %434, !prof !35, !nosanitize !34

433:                                              ; preds = %424
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

434:                                              ; preds = %424
  %435 = extractvalue { i64, i1 } %431, 0, !nosanitize !34
  %436 = add i32 %425, -1
  %437 = add nuw nsw i64 %416, 8
  %438 = icmp samesign ult i64 %437, %408
  br i1 %438, label %415, label %439, !llvm.loop !54

439:                                              ; preds = %434
  %440 = trunc nuw nsw i64 %437 to i32
  br label %441

441:                                              ; preds = %439, %403
  %442 = phi i32 [ %375, %403 ], [ %436, %439 ]
  %443 = phi i64 [ %376, %403 ], [ %435, %439 ]
  %444 = phi i32 [ %377, %403 ], [ %440, %439 ]
  %445 = zext nneg i8 %378 to i64
  %446 = lshr i64 %443, %445
  %447 = sub nuw i32 %444, %380
  %448 = load i32, ptr %31, align 4, !tbaa !44
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %441
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

451:                                              ; preds = %441
  %452 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %447, i32 2), !nosanitize !34
  %453 = extractvalue { i32, i1 } %452, 1, !nosanitize !34
  br i1 %453, label %454, label %455, !prof !35, !nosanitize !34

454:                                              ; preds = %451
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

455:                                              ; preds = %451
  %456 = trunc i64 %446 to i32
  %457 = and i32 %456, 3
  %458 = add nuw nsw i32 %457, 3
  %459 = add i32 %448, -1
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %460
  %462 = load i16, ptr %461, align 2, !tbaa !45
  %463 = lshr i64 %446, 2
  br label %546

464:                                              ; preds = %483, %400
  %465 = phi i64 [ %401, %400 ], [ %486, %483 ]
  %466 = phi i64 [ %376, %400 ], [ %484, %483 ]
  %467 = phi i32 [ %375, %400 ], [ %485, %483 ]
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %473

469:                                              ; preds = %464
  %470 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %469
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

473:                                              ; preds = %469, %464
  %474 = phi i32 [ %470, %469 ], [ %467, %464 ]
  %475 = load ptr, ptr %6, align 8, !tbaa !32
  %476 = getelementptr inbounds nuw i8, ptr %475, i64 1
  store ptr %476, ptr %6, align 8, !tbaa !32
  %477 = load i8, ptr %475, align 1, !tbaa !8
  %478 = zext i8 %477 to i64
  %479 = shl i64 %478, %465
  %480 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %466, i64 %479), !nosanitize !34
  %481 = extractvalue { i64, i1 } %480, 1, !nosanitize !34
  br i1 %481, label %482, label %483, !prof !35, !nosanitize !34

482:                                              ; preds = %473
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

483:                                              ; preds = %473
  %484 = extractvalue { i64, i1 } %480, 0, !nosanitize !34
  %485 = add i32 %474, -1
  %486 = add nuw nsw i64 %465, 8
  %487 = icmp samesign ult i64 %486, %402
  br i1 %487, label %464, label %488, !llvm.loop !55

488:                                              ; preds = %483
  %489 = trunc nuw nsw i64 %486 to i32
  br label %490

490:                                              ; preds = %488, %397
  %491 = phi i32 [ %375, %397 ], [ %485, %488 ]
  %492 = phi i64 [ %376, %397 ], [ %484, %488 ]
  %493 = phi i32 [ %377, %397 ], [ %489, %488 ]
  %494 = sub nuw i32 %493, %380
  %495 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %494, i32 3), !nosanitize !34
  %496 = extractvalue { i32, i1 } %495, 1, !nosanitize !34
  br i1 %496, label %497, label %498, !prof !35, !nosanitize !34

497:                                              ; preds = %490
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

498:                                              ; preds = %490
  %499 = zext nneg i8 %378 to i64
  %500 = lshr i64 %492, %499
  %501 = trunc i64 %500 to i32
  %502 = and i32 %501, 7
  %503 = add nuw nsw i32 %502, 3
  %504 = lshr i64 %500, 3
  br label %546

505:                                              ; preds = %524, %412
  %506 = phi i64 [ %413, %412 ], [ %527, %524 ]
  %507 = phi i64 [ %376, %412 ], [ %525, %524 ]
  %508 = phi i32 [ %375, %412 ], [ %526, %524 ]
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %514

510:                                              ; preds = %505
  %511 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %510
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

514:                                              ; preds = %510, %505
  %515 = phi i32 [ %511, %510 ], [ %508, %505 ]
  %516 = load ptr, ptr %6, align 8, !tbaa !32
  %517 = getelementptr inbounds nuw i8, ptr %516, i64 1
  store ptr %517, ptr %6, align 8, !tbaa !32
  %518 = load i8, ptr %516, align 1, !tbaa !8
  %519 = zext i8 %518 to i64
  %520 = shl i64 %519, %506
  %521 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %507, i64 %520), !nosanitize !34
  %522 = extractvalue { i64, i1 } %521, 1, !nosanitize !34
  br i1 %522, label %523, label %524, !prof !35, !nosanitize !34

523:                                              ; preds = %514
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

524:                                              ; preds = %514
  %525 = extractvalue { i64, i1 } %521, 0, !nosanitize !34
  %526 = add i32 %515, -1
  %527 = add nuw nsw i64 %506, 8
  %528 = icmp samesign ult i64 %527, %414
  br i1 %528, label %505, label %529, !llvm.loop !56

529:                                              ; preds = %524
  %530 = trunc nuw nsw i64 %527 to i32
  br label %531

531:                                              ; preds = %529, %409
  %532 = phi i32 [ %375, %409 ], [ %526, %529 ]
  %533 = phi i64 [ %376, %409 ], [ %525, %529 ]
  %534 = phi i32 [ %377, %409 ], [ %530, %529 ]
  %535 = sub nuw i32 %534, %380
  %536 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %535, i32 7), !nosanitize !34
  %537 = extractvalue { i32, i1 } %536, 1, !nosanitize !34
  br i1 %537, label %538, label %539, !prof !35, !nosanitize !34

538:                                              ; preds = %531
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

539:                                              ; preds = %531
  %540 = zext nneg i8 %378 to i64
  %541 = lshr i64 %533, %540
  %542 = trunc i64 %541 to i32
  %543 = and i32 %542, 127
  %544 = add nuw nsw i32 %543, 11
  %545 = lshr i64 %541, 7
  br label %546

546:                                              ; preds = %539, %498, %455
  %547 = phi i32 [ %442, %455 ], [ %491, %498 ], [ %532, %539 ]
  %548 = phi i64 [ %463, %455 ], [ %504, %498 ], [ %545, %539 ]
  %549 = phi { i32, i1 } [ %452, %455 ], [ %495, %498 ], [ %536, %539 ]
  %550 = phi i32 [ %458, %455 ], [ %503, %498 ], [ %544, %539 ]
  %551 = phi i16 [ %462, %455 ], [ 0, %498 ], [ 0, %539 ]
  %552 = extractvalue { i32, i1 } %549, 0
  %553 = load i32, ptr %31, align 4, !tbaa !44
  %554 = freeze i32 %553
  %555 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %554, i32 %550), !nosanitize !34
  %556 = extractvalue { i32, i1 } %555, 0, !nosanitize !34
  %557 = extractvalue { i32, i1 } %555, 1, !nosanitize !34
  br i1 %557, label %558, label %559, !prof !35, !nosanitize !34

558:                                              ; preds = %546
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

559:                                              ; preds = %546
  %560 = load i32, ptr %28, align 4, !tbaa !41
  %561 = load i32, ptr %29, align 8, !tbaa !42
  %562 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %560, i32 %561), !nosanitize !34
  %563 = extractvalue { i32, i1 } %562, 1, !nosanitize !34
  br i1 %563, label %564, label %565, !prof !35, !nosanitize !34

564:                                              ; preds = %559
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

565:                                              ; preds = %559
  %566 = extractvalue { i32, i1 } %562, 0, !nosanitize !34
  %567 = icmp ugt i32 %556, %566
  br i1 %567, label %584, label %568

568:                                              ; preds = %565
  %569 = icmp eq i32 %554, -1
  br i1 %569, label %595, label %570, !prof !52, !nosanitize !34

570:                                              ; preds = %568
  %571 = zext i32 %554 to i64
  %572 = add nsw i32 %550, -1
  %573 = and i64 %571, 1
  %574 = icmp eq i64 %573, 0
  br i1 %574, label %575, label %580, !prof !52

575:                                              ; preds = %570
  %576 = or disjoint i64 %571, 1
  %577 = trunc nuw i64 %576 to i32
  store i32 %577, ptr %31, align 4, !tbaa !44
  %578 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %571
  store i16 %551, ptr %578, align 2, !tbaa !45
  %579 = add nsw i32 %550, -2
  br label %580

580:                                              ; preds = %575, %570
  %.pn105 = phi i32 [ %572, %570 ], [ %579, %575 ]
  %581 = phi i64 [ %571, %570 ], [ %576, %575 ]
  %582 = icmp eq i32 %554, -2
  br i1 %582, label %595, label %.preheader.preheader, !prof !52

.preheader.preheader:                             ; preds = %580
  %583 = insertvalue { i32, i1 } { i32 poison, i1 false }, i32 %.pn105, 0
  br label %.preheader

584:                                              ; preds = %565
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

.split.loop.exit:                                 ; preds = %586, %.preheader
  %.in = phi i64 [ %599, %.preheader ], [ %588, %586 ]
  %585 = trunc i64 %.in to i32
  store i32 %585, ptr %31, align 4, !tbaa !44
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

586:                                              ; preds = %.preheader
  %587 = extractvalue { i32, i1 } %601, 0
  %588 = add nuw nsw i64 %597, 2
  %589 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %599
  store i16 %551, ptr %589, align 2, !tbaa !45
  %590 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %587, i32 1), !nosanitize !34
  %591 = extractvalue { i32, i1 } %590, 1, !nosanitize !34
  br i1 %591, label %.split.loop.exit, label %592, !prof !57, !llvm.loop !58, !nosanitize !34

592:                                              ; preds = %586
  %593 = icmp eq i64 %588, 4294967295
  br i1 %593, label %594, label %.preheader, !prof !57, !llvm.loop !59, !nosanitize !34

594:                                              ; preds = %592
  store i32 -1, ptr %31, align 4, !tbaa !44
  br label %595

595:                                              ; preds = %594, %580, %568
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

.preheader:                                       ; preds = %.preheader.preheader, %592
  %596 = phi { i32, i1 } [ %590, %592 ], [ %583, %.preheader.preheader ]
  %597 = phi i64 [ %588, %592 ], [ %581, %.preheader.preheader ]
  %598 = extractvalue { i32, i1 } %596, 0
  %599 = add nuw nsw i64 %597, 1
  %600 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %597
  store i16 %551, ptr %600, align 2, !tbaa !45
  %601 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %598, i32 1), !nosanitize !34
  %602 = extractvalue { i32, i1 } %601, 1, !nosanitize !34
  br i1 %602, label %.split.loop.exit, label %586, !prof !57, !llvm.loop !58, !nosanitize !34

603:                                              ; preds = %391
  %604 = extractvalue { i32, i1 } %393, 0, !nosanitize !34
  store i32 %604, ptr %31, align 4, !tbaa !44
  %605 = zext i32 %392 to i64
  %606 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %605
  store i16 %382, ptr %606, align 2, !tbaa !45
  %607 = load i32, ptr %28, align 4, !tbaa !41
  %608 = load i32, ptr %29, align 8, !tbaa !42
  %609 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %607, i32 %608), !nosanitize !34
  %610 = extractvalue { i32, i1 } %609, 1, !nosanitize !34
  br i1 %610, label %.loopexit120, label %314, !prof !57, !llvm.loop !53, !nosanitize !34

.loopexit121:                                     ; preds = %314, %311
  %611 = phi i32 [ %307, %311 ], [ %607, %314 ]
  %612 = phi i32 [ %288, %311 ], [ %388, %314 ]
  %613 = phi i64 [ %289, %311 ], [ %386, %314 ]
  %614 = phi i32 [ %273, %311 ], [ %375, %314 ]
  %615 = load i32, ptr %14, align 8, !tbaa !29
  %616 = icmp eq i32 %615, 16209
  br i1 %616, label %.loopexit114, label %617

617:                                              ; preds = %.loopexit121
  %618 = load i16, ptr %38, align 8, !tbaa !45
  %619 = icmp eq i16 %618, 0
  br i1 %619, label %620, label %621

620:                                              ; preds = %617
  store ptr @.str.6, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

621:                                              ; preds = %617
  store ptr %33, ptr %34, align 8, !tbaa !49
  store ptr %33, ptr %35, align 8, !tbaa !50
  store i32 9, ptr %36, align 8, !tbaa !51
  %622 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %611, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #6
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %625, label %624

624:                                              ; preds = %621
  store ptr @.str.7, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

625:                                              ; preds = %621
  %626 = load ptr, ptr %34, align 8, !tbaa !49
  store ptr %626, ptr %39, align 8, !tbaa !61
  store i32 6, ptr %40, align 4, !tbaa !62
  %627 = load i32, ptr %28, align 4, !tbaa !41
  %628 = zext i32 %627 to i64
  %629 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %628
  %630 = load i32, ptr %29, align 8, !tbaa !42
  %631 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %629, i32 noundef %630, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #6
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %634, label %633

633:                                              ; preds = %625
  store ptr @.str.8, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

634:                                              ; preds = %625
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %635

635:                                              ; preds = %634, %49
  %636 = phi i32 [ %614, %634 ], [ %52, %49 ]
  %637 = phi i64 [ %613, %634 ], [ %54, %49 ]
  %638 = phi i32 [ %612, %634 ], [ %55, %49 ]
  %639 = icmp ugt i32 %636, 5
  %640 = icmp ugt i32 %53, 257
  %641 = select i1 %639, i1 %640, i1 false
  br i1 %641, label %657, label %642

642:                                              ; preds = %635
  %643 = load i32, ptr %36, align 8, !tbaa !51
  %644 = shl nsw i32 -1, %643
  %645 = xor i32 %644, -1
  %646 = trunc i64 %637 to i32
  %647 = load ptr, ptr %35, align 8, !tbaa !50
  %648 = and i32 %645, %646
  %649 = zext nneg i32 %648 to i64
  %650 = getelementptr inbounds nuw [4 x i8], ptr %647, i64 %649
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 1
  %652 = load i8, ptr %651, align 1, !tbaa !8
  %653 = zext i8 %652 to i32
  %654 = icmp ult i32 %638, %653
  br i1 %654, label %655, label %704

655:                                              ; preds = %642
  %656 = zext nneg i32 %638 to i64
  br label %666

657:                                              ; preds = %635
  store ptr %51, ptr %44, align 8, !tbaa !63
  store i32 %53, ptr %45, align 8, !tbaa !64
  %658 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %658, ptr %0, align 8, !tbaa !31
  store i32 %636, ptr %46, align 8, !tbaa !33
  store i64 %637, ptr %47, align 8, !tbaa !65
  store i32 %638, ptr %48, align 8, !tbaa !66
  %659 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %659) #6
  %660 = load ptr, ptr %44, align 8, !tbaa !63
  %661 = load i32, ptr %45, align 8, !tbaa !64
  %662 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %662, ptr %6, align 8, !tbaa !32
  %663 = load i32, ptr %46, align 8, !tbaa !33
  %664 = load i64, ptr %47, align 8, !tbaa !65
  %665 = load i32, ptr %48, align 8, !tbaa !66
  br label %.loopexit114

666:                                              ; preds = %685, %655
  %667 = phi i64 [ %656, %655 ], [ %688, %685 ]
  %668 = phi i64 [ %637, %655 ], [ %686, %685 ]
  %669 = phi i32 [ %636, %655 ], [ %687, %685 ]
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %671, label %675

671:                                              ; preds = %666
  %672 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %675

674:                                              ; preds = %671
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

675:                                              ; preds = %671, %666
  %676 = phi i32 [ %672, %671 ], [ %669, %666 ]
  %677 = load ptr, ptr %6, align 8, !tbaa !32
  %678 = getelementptr inbounds nuw i8, ptr %677, i64 1
  store ptr %678, ptr %6, align 8, !tbaa !32
  %679 = load i8, ptr %677, align 1, !tbaa !8
  %680 = zext i8 %679 to i64
  %681 = shl i64 %680, %667
  %682 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %668, i64 %681), !nosanitize !34
  %683 = extractvalue { i64, i1 } %682, 1, !nosanitize !34
  br i1 %683, label %684, label %685, !prof !35, !nosanitize !34

684:                                              ; preds = %675
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

685:                                              ; preds = %675
  %686 = extractvalue { i64, i1 } %682, 0, !nosanitize !34
  %687 = add i32 %676, -1
  %688 = add nuw nsw i64 %667, 8
  %689 = load i32, ptr %36, align 8, !tbaa !51
  %690 = shl nsw i32 -1, %689
  %691 = xor i32 %690, -1
  %692 = trunc i64 %686 to i32
  %693 = load ptr, ptr %35, align 8, !tbaa !50
  %694 = and i32 %691, %692
  %695 = zext nneg i32 %694 to i64
  %696 = getelementptr inbounds nuw [4 x i8], ptr %693, i64 %695
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 1
  %698 = load i8, ptr %697, align 1, !tbaa !8
  %699 = zext i8 %698 to i64
  %700 = icmp samesign ult i64 %688, %699
  br i1 %700, label %666, label %701

701:                                              ; preds = %685
  %702 = zext i8 %698 to i32
  %703 = trunc nuw nsw i64 %688 to i32
  br label %704

704:                                              ; preds = %701, %642
  %705 = phi ptr [ %647, %642 ], [ %693, %701 ]
  %706 = phi i32 [ %636, %642 ], [ %687, %701 ]
  %707 = phi i64 [ %637, %642 ], [ %686, %701 ]
  %708 = phi i32 [ %638, %642 ], [ %703, %701 ]
  %709 = phi ptr [ %650, %642 ], [ %696, %701 ]
  %710 = phi i8 [ %652, %642 ], [ %698, %701 ]
  %711 = phi i32 [ %653, %642 ], [ %702, %701 ]
  %712 = getelementptr inbounds nuw i8, ptr %709, i64 2
  %713 = load i16, ptr %712, align 2, !tbaa !45
  %714 = load i8, ptr %709, align 2, !tbaa !8
  %715 = add i8 %714, -1
  %716 = icmp ult i8 %715, 15
  br i1 %716, label %717, label %780

717:                                              ; preds = %704
  %718 = zext nneg i8 %714 to i32
  %719 = add nuw nsw i32 %711, %718
  %720 = shl nsw i32 -1, %719
  %721 = xor i32 %720, -1
  %722 = zext i16 %713 to i32
  %723 = trunc i64 %707 to i32
  %724 = and i32 %721, %723
  %725 = lshr i32 %724, %711
  %726 = add nuw i32 %725, %722
  %727 = zext i32 %726 to i64
  %728 = getelementptr inbounds nuw [4 x i8], ptr %705, i64 %727
  %729 = getelementptr inbounds nuw i8, ptr %728, i64 1
  %730 = load i8, ptr %729, align 1, !tbaa !8
  %731 = zext i8 %730 to i32
  %732 = add nuw nsw i32 %711, %731
  %733 = icmp ugt i32 %732, %708
  br i1 %733, label %.preheader117.preheader, label %.loopexit118

.preheader117.preheader:                          ; preds = %717
  %734 = zext nneg i32 %708 to i64
  br label %.preheader117

.preheader117:                                    ; preds = %.preheader117.preheader, %752
  %indvars.iv = phi i64 [ %734, %.preheader117.preheader ], [ %indvars.iv.next, %752 ]
  %735 = phi i64 [ %707, %.preheader117.preheader ], [ %753, %752 ]
  %736 = phi i32 [ %706, %.preheader117.preheader ], [ %754, %752 ]
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %742

738:                                              ; preds = %.preheader117
  %739 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %742

741:                                              ; preds = %738
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

742:                                              ; preds = %738, %.preheader117
  %743 = phi i32 [ %739, %738 ], [ %736, %.preheader117 ]
  %744 = load ptr, ptr %6, align 8, !tbaa !32
  %745 = getelementptr inbounds nuw i8, ptr %744, i64 1
  store ptr %745, ptr %6, align 8, !tbaa !32
  %746 = load i8, ptr %744, align 1, !tbaa !8
  %747 = zext i8 %746 to i64
  %748 = shl i64 %747, %indvars.iv
  %749 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %735, i64 %748), !nosanitize !34
  %750 = extractvalue { i64, i1 } %749, 1, !nosanitize !34
  br i1 %750, label %751, label %752, !prof !35, !nosanitize !34

751:                                              ; preds = %742
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

752:                                              ; preds = %742
  %753 = extractvalue { i64, i1 } %749, 0, !nosanitize !34
  %754 = add i32 %743, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %755 = load ptr, ptr %35, align 8, !tbaa !50
  %756 = trunc i64 %753 to i32
  %757 = and i32 %756, %721
  %758 = lshr i32 %757, %711
  %759 = add nuw i32 %758, %722
  %760 = zext i32 %759 to i64
  %761 = getelementptr inbounds nuw [4 x i8], ptr %755, i64 %760
  %762 = getelementptr inbounds nuw i8, ptr %761, i64 1
  %763 = load i8, ptr %762, align 1, !tbaa !8
  %764 = zext i8 %763 to i32
  %765 = add nuw nsw i32 %711, %764
  %766 = zext nneg i32 %765 to i64
  %767 = icmp samesign ult i64 %indvars.iv.next, %766
  br i1 %767, label %.preheader117, label %.loopexit118.loopexit

.loopexit118.loopexit:                            ; preds = %752
  %768 = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit118

.loopexit118:                                     ; preds = %.loopexit118.loopexit, %717
  %769 = phi i32 [ %706, %717 ], [ %754, %.loopexit118.loopexit ]
  %770 = phi i64 [ %707, %717 ], [ %753, %.loopexit118.loopexit ]
  %771 = phi i32 [ %708, %717 ], [ %768, %.loopexit118.loopexit ]
  %772 = phi ptr [ %728, %717 ], [ %761, %.loopexit118.loopexit ]
  %773 = phi i8 [ %730, %717 ], [ %763, %.loopexit118.loopexit ]
  %774 = getelementptr inbounds nuw i8, ptr %772, i64 2
  %775 = load i16, ptr %774, align 2, !tbaa !45
  %776 = load i8, ptr %772, align 2, !tbaa !8
  %777 = sub nuw i32 %771, %711
  %778 = zext nneg i8 %710 to i64
  %779 = lshr i64 %770, %778
  br label %780

780:                                              ; preds = %.loopexit118, %704
  %781 = phi i32 [ %769, %.loopexit118 ], [ %706, %704 ]
  %782 = phi i64 [ %779, %.loopexit118 ], [ %707, %704 ]
  %783 = phi i32 [ %777, %.loopexit118 ], [ %708, %704 ]
  %784 = phi i16 [ %775, %.loopexit118 ], [ %713, %704 ]
  %785 = phi i8 [ %773, %.loopexit118 ], [ %710, %704 ]
  %786 = phi i8 [ %776, %.loopexit118 ], [ %714, %704 ]
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
  br i1 %804, label %805, label %.loopexit110

805:                                              ; preds = %800
  %806 = load i32, ptr %41, align 4, !tbaa !38
  br label %807

807:                                              ; preds = %805, %798
  %808 = phi i32 [ %806, %805 ], [ %795, %798 ]
  %809 = phi ptr [ %801, %805 ], [ %51, %798 ]
  %810 = phi i32 [ %802, %805 ], [ %53, %798 ]
  %811 = trunc i32 %808 to i8
  store i8 %811, ptr %809, align 1, !tbaa !8
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
  br label %.loopexit114

818:                                              ; preds = %794
  %819 = and i32 %796, 32
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %822, label %821

821:                                              ; preds = %818
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

822:                                              ; preds = %818
  %823 = and i32 %796, 64
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %826, label %825

825:                                              ; preds = %822
  store ptr @.str.9, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

826:                                              ; preds = %822
  %827 = and i32 %796, 15
  store i32 %827, ptr %42, align 4, !tbaa !67
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
  br label %.loopexit110

842:                                              ; preds = %838, %833
  %843 = phi i32 [ %839, %838 ], [ %836, %833 ]
  %844 = add i32 %843, -1
  %845 = load ptr, ptr %6, align 8, !tbaa !32
  %846 = getelementptr inbounds nuw i8, ptr %845, i64 1
  store ptr %846, ptr %6, align 8, !tbaa !32
  %847 = load i8, ptr %845, align 1, !tbaa !8
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
  br i1 %855, label %856, label %857, !prof !35, !nosanitize !34

856:                                              ; preds = %854
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

857:                                              ; preds = %854
  %858 = add nuw nsw i64 %834, 8
  %859 = trunc nuw i64 %858 to i32
  %860 = load i32, ptr %42, align 4, !tbaa !67
  %861 = icmp ugt i32 %860, %859
  br i1 %861, label %833, label %862, !llvm.loop !68

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
  %890 = load i32, ptr %40, align 4, !tbaa !62
  %891 = shl nsw i32 -1, %890
  %892 = xor i32 %891, -1
  %893 = trunc i64 %888 to i32
  %894 = load ptr, ptr %39, align 8, !tbaa !61
  %895 = and i32 %892, %893
  %896 = zext nneg i32 %895 to i64
  %897 = getelementptr inbounds nuw [4 x i8], ptr %894, i64 %896
  %898 = getelementptr inbounds nuw i8, ptr %897, i64 1
  %899 = load i8, ptr %898, align 1, !tbaa !8
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
  br label %.loopexit110

913:                                              ; preds = %909, %904
  %914 = phi i32 [ %910, %909 ], [ %907, %904 ]
  %915 = load ptr, ptr %6, align 8, !tbaa !32
  %916 = getelementptr inbounds nuw i8, ptr %915, i64 1
  store ptr %916, ptr %6, align 8, !tbaa !32
  %917 = load i8, ptr %915, align 1, !tbaa !8
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
  %927 = load i32, ptr %40, align 4, !tbaa !62
  %928 = shl nsw i32 -1, %927
  %929 = xor i32 %928, -1
  %930 = trunc i64 %924 to i32
  %931 = load ptr, ptr %39, align 8, !tbaa !61
  %932 = and i32 %929, %930
  %933 = zext nneg i32 %932 to i64
  %934 = getelementptr inbounds nuw [4 x i8], ptr %931, i64 %933
  %935 = getelementptr inbounds nuw i8, ptr %934, i64 1
  %936 = load i8, ptr %935, align 1, !tbaa !8
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
  %952 = load i8, ptr %947, align 2, !tbaa !8
  %953 = icmp ult i8 %952, 16
  br i1 %953, label %954, label %1017

954:                                              ; preds = %942
  %955 = zext nneg i8 %952 to i32
  %956 = add nuw nsw i32 %949, %955
  %957 = shl nsw i32 -1, %956
  %958 = xor i32 %957, -1
  %959 = zext i16 %951 to i32
  %960 = trunc i64 %945 to i32
  %961 = and i32 %958, %960
  %962 = lshr i32 %961, %949
  %963 = add nuw i32 %962, %959
  %964 = zext i32 %963 to i64
  %965 = getelementptr inbounds nuw [4 x i8], ptr %943, i64 %964
  %966 = getelementptr inbounds nuw i8, ptr %965, i64 1
  %967 = load i8, ptr %966, align 1, !tbaa !8
  %968 = zext i8 %967 to i32
  %969 = add nuw nsw i32 %949, %968
  %970 = icmp ugt i32 %969, %946
  br i1 %970, label %.preheader115.preheader, label %.loopexit116

.preheader115.preheader:                          ; preds = %954
  %971 = zext nneg i32 %946 to i64
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.preheader, %989
  %indvars.iv684 = phi i64 [ %971, %.preheader115.preheader ], [ %indvars.iv.next685, %989 ]
  %972 = phi i64 [ %945, %.preheader115.preheader ], [ %990, %989 ]
  %973 = phi i32 [ %944, %.preheader115.preheader ], [ %991, %989 ]
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %975, label %979

975:                                              ; preds = %.preheader115
  %976 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %978, label %979

978:                                              ; preds = %975
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

979:                                              ; preds = %975, %.preheader115
  %980 = phi i32 [ %976, %975 ], [ %973, %.preheader115 ]
  %981 = load ptr, ptr %6, align 8, !tbaa !32
  %982 = getelementptr inbounds nuw i8, ptr %981, i64 1
  store ptr %982, ptr %6, align 8, !tbaa !32
  %983 = load i8, ptr %981, align 1, !tbaa !8
  %984 = zext i8 %983 to i64
  %985 = shl i64 %984, %indvars.iv684
  %986 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %972, i64 %985), !nosanitize !34
  %987 = extractvalue { i64, i1 } %986, 1, !nosanitize !34
  br i1 %987, label %988, label %989, !prof !35, !nosanitize !34

988:                                              ; preds = %979
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

989:                                              ; preds = %979
  %990 = extractvalue { i64, i1 } %986, 0, !nosanitize !34
  %991 = add i32 %980, -1
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 8
  %992 = load ptr, ptr %39, align 8, !tbaa !61
  %993 = trunc i64 %990 to i32
  %994 = and i32 %993, %958
  %995 = lshr i32 %994, %949
  %996 = add nuw i32 %995, %959
  %997 = zext i32 %996 to i64
  %998 = getelementptr inbounds nuw [4 x i8], ptr %992, i64 %997
  %999 = getelementptr inbounds nuw i8, ptr %998, i64 1
  %1000 = load i8, ptr %999, align 1, !tbaa !8
  %1001 = zext i8 %1000 to i32
  %1002 = add nuw nsw i32 %949, %1001
  %1003 = zext nneg i32 %1002 to i64
  %1004 = icmp samesign ult i64 %indvars.iv.next685, %1003
  br i1 %1004, label %.preheader115, label %.loopexit116.loopexit

.loopexit116.loopexit:                            ; preds = %989
  %1005 = trunc nuw nsw i64 %indvars.iv.next685 to i32
  br label %.loopexit116

.loopexit116:                                     ; preds = %.loopexit116.loopexit, %954
  %1006 = phi i32 [ %944, %954 ], [ %991, %.loopexit116.loopexit ]
  %1007 = phi i64 [ %945, %954 ], [ %990, %.loopexit116.loopexit ]
  %1008 = phi i32 [ %946, %954 ], [ %1005, %.loopexit116.loopexit ]
  %1009 = phi ptr [ %965, %954 ], [ %998, %.loopexit116.loopexit ]
  %1010 = phi i8 [ %967, %954 ], [ %1000, %.loopexit116.loopexit ]
  %1011 = getelementptr inbounds nuw i8, ptr %1009, i64 2
  %1012 = load i16, ptr %1011, align 2, !tbaa !45
  %1013 = load i8, ptr %1009, align 2, !tbaa !8
  %1014 = sub nuw i32 %1008, %949
  %1015 = zext nneg i8 %948 to i64
  %1016 = lshr i64 %1007, %1015
  br label %1017

1017:                                             ; preds = %.loopexit116, %942
  %1018 = phi i32 [ %1006, %.loopexit116 ], [ %944, %942 ]
  %1019 = phi i64 [ %1016, %.loopexit116 ], [ %945, %942 ]
  %1020 = phi i32 [ %1014, %.loopexit116 ], [ %946, %942 ]
  %1021 = phi i16 [ %1012, %.loopexit116 ], [ %951, %942 ]
  %1022 = phi i8 [ %1010, %.loopexit116 ], [ %948, %942 ]
  %1023 = phi i8 [ %1013, %.loopexit116 ], [ %952, %942 ]
  %1024 = zext i8 %1022 to i32
  %1025 = zext nneg i8 %1022 to i64
  %1026 = lshr i64 %1019, %1025
  %1027 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1020, i32 %1024), !nosanitize !34
  %1028 = extractvalue { i32, i1 } %1027, 0, !nosanitize !34
  %1029 = extractvalue { i32, i1 } %1027, 1, !nosanitize !34
  br i1 %1029, label %1030, label %1031, !prof !35, !nosanitize !34

1030:                                             ; preds = %1017
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1031:                                             ; preds = %1017
  %1032 = zext i8 %1023 to i32
  %1033 = and i32 %1032, 64
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1036, label %1035

1035:                                             ; preds = %1031
  store ptr @.str.10, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

1036:                                             ; preds = %1031
  %1037 = zext i16 %1021 to i32
  store i32 %1037, ptr %43, align 8, !tbaa !69
  %1038 = and i32 %1032, 15
  store i32 %1038, ptr %42, align 4, !tbaa !67
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1097, label %1040

1040:                                             ; preds = %1036
  %1041 = icmp ult i32 %1028, %1038
  br i1 %1041, label %1042, label %1075

1042:                                             ; preds = %1040
  %1043 = zext nneg i32 %1028 to i64
  br label %1044

1044:                                             ; preds = %1068, %1042
  %1045 = phi i64 [ %1043, %1042 ], [ %1069, %1068 ]
  %1046 = phi i64 [ %1026, %1042 ], [ %1062, %1068 ]
  %1047 = phi i32 [ %1018, %1042 ], [ %1055, %1068 ]
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1049, label %1053

1049:                                             ; preds = %1044
  %1050 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #6
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1052, label %1053

1052:                                             ; preds = %1049
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit110

1053:                                             ; preds = %1049, %1044
  %1054 = phi i32 [ %1050, %1049 ], [ %1047, %1044 ]
  %1055 = add i32 %1054, -1
  %1056 = load ptr, ptr %6, align 8, !tbaa !32
  %1057 = getelementptr inbounds nuw i8, ptr %1056, i64 1
  store ptr %1057, ptr %6, align 8, !tbaa !32
  %1058 = load i8, ptr %1056, align 1, !tbaa !8
  %1059 = zext i8 %1058 to i64
  %1060 = shl i64 %1059, %1045
  %1061 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1046, i64 %1060), !nosanitize !34
  %1062 = extractvalue { i64, i1 } %1061, 0, !nosanitize !34
  %1063 = extractvalue { i64, i1 } %1061, 1, !nosanitize !34
  br i1 %1063, label %1064, label %1065, !prof !35, !nosanitize !34

1064:                                             ; preds = %1053
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1065:                                             ; preds = %1053
  %1066 = icmp samesign ugt i64 %1045, 4294967287
  br i1 %1066, label %1067, label %1068, !prof !35, !nosanitize !34

1067:                                             ; preds = %1065
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1068:                                             ; preds = %1065
  %1069 = add nuw nsw i64 %1045, 8
  %1070 = trunc nuw i64 %1069 to i32
  %1071 = load i32, ptr %42, align 4, !tbaa !67
  %1072 = icmp ugt i32 %1071, %1070
  br i1 %1072, label %1044, label %1073, !llvm.loop !70

1073:                                             ; preds = %1068
  %1074 = load i32, ptr %43, align 8, !tbaa !69
  br label %1075

1075:                                             ; preds = %1073, %1040
  %1076 = phi i32 [ %1037, %1040 ], [ %1074, %1073 ]
  %1077 = phi i32 [ %1018, %1040 ], [ %1055, %1073 ]
  %1078 = phi i64 [ %1026, %1040 ], [ %1062, %1073 ]
  %1079 = phi i32 [ %1028, %1040 ], [ %1070, %1073 ]
  %1080 = phi i32 [ %1038, %1040 ], [ %1071, %1073 ]
  %1081 = shl nsw i32 -1, %1080
  %1082 = xor i32 %1081, -1
  %1083 = trunc i64 %1078 to i32
  %1084 = and i32 %1082, %1083
  %1085 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1076, i32 %1084), !nosanitize !34
  %1086 = extractvalue { i32, i1 } %1085, 1, !nosanitize !34
  br i1 %1086, label %1087, label %1088, !prof !35, !nosanitize !34

1087:                                             ; preds = %1075
  call void @llvm.ubsantrap(i8 0) #7, !nosanitize !34
  unreachable, !nosanitize !34

1088:                                             ; preds = %1075
  %1089 = extractvalue { i32, i1 } %1085, 0, !nosanitize !34
  store i32 %1089, ptr %43, align 8, !tbaa !69
  %1090 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1079, i32 %1080), !nosanitize !34
  %1091 = extractvalue { i32, i1 } %1090, 1, !nosanitize !34
  br i1 %1091, label %1092, label %1093, !prof !35, !nosanitize !34

1092:                                             ; preds = %1088
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1093:                                             ; preds = %1088
  %1094 = extractvalue { i32, i1 } %1090, 0, !nosanitize !34
  %1095 = zext nneg i32 %1080 to i64
  %1096 = lshr i64 %1078, %1095
  br label %1097

1097:                                             ; preds = %1093, %1036
  %1098 = phi i32 [ %1089, %1093 ], [ %1037, %1036 ]
  %1099 = phi i32 [ %1077, %1093 ], [ %1018, %1036 ]
  %1100 = phi i64 [ %1096, %1093 ], [ %1026, %1036 ]
  %1101 = phi i32 [ %1094, %1093 ], [ %1028, %1036 ]
  %1102 = load i32, ptr %26, align 4, !tbaa !24
  %1103 = load i32, ptr %16, align 8, !tbaa !27
  %1104 = icmp ult i32 %1103, %1102
  %1105 = select i1 %1104, i32 %53, i32 0
  %1106 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1102, i32 %1105), !nosanitize !34
  %1107 = extractvalue { i32, i1 } %1106, 1, !nosanitize !34
  br i1 %1107, label %1108, label %1109, !prof !35, !nosanitize !34

1108:                                             ; preds = %1097
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1109:                                             ; preds = %1097
  %1110 = extractvalue { i32, i1 } %1106, 0, !nosanitize !34
  %1111 = icmp ugt i32 %1098, %1110
  br i1 %1111, label %1112, label %.preheader112

1112:                                             ; preds = %1109
  store ptr @.str.11, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit114

.preheader112:                                    ; preds = %1109, %.loopexit
  %1113 = phi ptr [ %1247, %.loopexit ], [ %51, %1109 ]
  %1114 = phi i32 [ %1140, %.loopexit ], [ %53, %1109 ]
  %1115 = icmp eq i32 %1114, 0
  %1116 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1115, label %1117, label %1123

1117:                                             ; preds = %.preheader112
  %1118 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1116, ptr %16, align 8, !tbaa !27
  %1119 = call i32 %3(ptr noundef %4, ptr noundef %1118, i32 noundef %1116) #6
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1121, label %.loopexit110

1121:                                             ; preds = %1117
  %1122 = load i32, ptr %26, align 4, !tbaa !24
  br label %1123

1123:                                             ; preds = %1121, %.preheader112
  %1124 = phi i32 [ %1122, %1121 ], [ %1116, %.preheader112 ]
  %1125 = phi ptr [ %1118, %1121 ], [ %1113, %.preheader112 ]
  %1126 = phi i32 [ %1116, %1121 ], [ %1114, %.preheader112 ]
  %1127 = load i32, ptr %43, align 8, !tbaa !69
  %1128 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1124, i32 %1127), !nosanitize !34
  %1129 = extractvalue { i32, i1 } %1128, 1, !nosanitize !34
  br i1 %1129, label %1130, label %1131, !prof !35, !nosanitize !34

1130:                                             ; preds = %1123
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1131:                                             ; preds = %1123
  %1132 = extractvalue { i32, i1 } %1128, 0, !nosanitize !34
  %1133 = icmp ult i32 %1132, %1126
  %1134 = select i1 %1133, i32 %1132, i32 0
  %1135 = sub i32 %1126, %1134
  %1136 = load i32, ptr %41, align 4, !tbaa !38
  %1137 = call i32 @llvm.umin.i32(i32 %1135, i32 %1136)
  %1138 = sub i32 %1136, %1137
  store i32 %1138, ptr %41, align 4, !tbaa !38
  %1139 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1126, i32 %1137), !nosanitize !34
  %1140 = extractvalue { i32, i1 } %1139, 0, !nosanitize !34
  %1141 = extractvalue { i32, i1 } %1139, 1, !nosanitize !34
  br i1 %1141, label %1217, label %1142, !prof !35, !nosanitize !34

1142:                                             ; preds = %1131
  %1143 = zext i32 %1132 to i64
  %1144 = zext i32 %1127 to i64
  %1145 = sub nsw i64 0, %1144
  %1146 = select i1 %1133, i64 %1143, i64 %1145
  %1147 = getelementptr inbounds i8, ptr %1125, i64 %1146
  %1148 = icmp eq i32 %1137, 0
  br i1 %1148, label %1215, label %1149, !prof !35, !nosanitize !34

1149:                                             ; preds = %1142
  %1150 = zext i32 %1137 to i64
  %1151 = icmp ult i32 %1137, 4
  %1152 = add nsw i64 %1146, 31
  %1153 = icmp ult i64 %1152, 32
  %1154 = select i1 %1151, i1 true, i1 %1153
  br i1 %1154, label %1194, label %1155

1155:                                             ; preds = %1149
  %1156 = icmp ult i32 %1137, 32
  br i1 %1156, label %1178, label %1157

1157:                                             ; preds = %1155
  %1158 = and i64 %1150, 4294967264
  br label %1159

1159:                                             ; preds = %1159, %1157
  %1160 = phi i64 [ 0, %1157 ], [ %1167, %1159 ]
  %1161 = getelementptr i8, ptr %1125, i64 %1160
  %1162 = getelementptr i8, ptr %1147, i64 %1160
  %1163 = getelementptr i8, ptr %1162, i64 16
  %1164 = load <16 x i8>, ptr %1162, align 1, !tbaa !8
  %1165 = load <16 x i8>, ptr %1163, align 1, !tbaa !8
  %1166 = getelementptr i8, ptr %1161, i64 16
  store <16 x i8> %1164, ptr %1161, align 1, !tbaa !8
  store <16 x i8> %1165, ptr %1166, align 1, !tbaa !8
  %1167 = add nuw i64 %1160, 32
  %1168 = icmp eq i64 %1167, %1158
  br i1 %1168, label %1169, label %1159, !llvm.loop !71

1169:                                             ; preds = %1159
  %1170 = getelementptr i8, ptr %1125, i64 %1158
  %1171 = icmp eq i64 %1158, %1150
  br i1 %1171, label %.loopexit, label %1172

1172:                                             ; preds = %1169
  %1173 = getelementptr i8, ptr %1147, i64 %1158
  %1174 = trunc nuw i64 %1158 to i32
  %1175 = sub i32 %1137, %1174
  %1176 = and i64 %1150, 28
  %1177 = icmp eq i64 %1176, 0
  br i1 %1177, label %1194, label %1178, !prof !74

1178:                                             ; preds = %1172, %1155
  %1179 = phi i64 [ %1158, %1172 ], [ 0, %1155 ]
  %1180 = and i64 %1150, 4294967292
  br label %1181

1181:                                             ; preds = %1181, %1178
  %1182 = phi i64 [ %1179, %1178 ], [ %1186, %1181 ]
  %1183 = getelementptr i8, ptr %1125, i64 %1182
  %1184 = getelementptr i8, ptr %1147, i64 %1182
  %1185 = load <4 x i8>, ptr %1184, align 1, !tbaa !8
  store <4 x i8> %1185, ptr %1183, align 1, !tbaa !8
  %1186 = add nuw i64 %1182, 4
  %1187 = icmp eq i64 %1186, %1180
  br i1 %1187, label %1188, label %1181, !llvm.loop !75

1188:                                             ; preds = %1181
  %1189 = getelementptr i8, ptr %1125, i64 %1180
  %1190 = trunc nuw i64 %1180 to i32
  %1191 = sub i32 %1137, %1190
  %1192 = getelementptr i8, ptr %1147, i64 %1180
  %1193 = icmp eq i64 %1180, %1150
  br i1 %1193, label %.loopexit, label %1194

1194:                                             ; preds = %1188, %1172, %1149
  %1195 = phi ptr [ %1125, %1149 ], [ %1170, %1172 ], [ %1189, %1188 ]
  %1196 = phi i32 [ %1137, %1149 ], [ %1175, %1172 ], [ %1191, %1188 ]
  %1197 = phi ptr [ %1147, %1149 ], [ %1173, %1172 ], [ %1192, %1188 ]
  %1198 = add i32 %1196, -1
  %1199 = and i32 %1196, 7
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %.loopexit108, label %.preheader107

.preheader107:                                    ; preds = %1194, %.preheader107
  %1201 = phi ptr [ %1205, %.preheader107 ], [ %1195, %1194 ]
  %1202 = phi ptr [ %1206, %.preheader107 ], [ %1197, %1194 ]
  %1203 = phi i32 [ %1207, %.preheader107 ], [ 0, %1194 ]
  %1204 = load i8, ptr %1202, align 1, !tbaa !8
  store i8 %1204, ptr %1201, align 1, !tbaa !8
  %1205 = getelementptr inbounds nuw i8, ptr %1201, i64 1
  %1206 = getelementptr inbounds nuw i8, ptr %1202, i64 1
  %1207 = add nuw nsw i32 %1203, 1
  %1208 = icmp eq i32 %1207, %1199
  br i1 %1208, label %.loopexit108.loopexit, label %.preheader107, !llvm.loop !76

.loopexit108.loopexit:                            ; preds = %.preheader107
  %1209 = and i32 %1196, -8
  br label %.loopexit108

.loopexit108:                                     ; preds = %.loopexit108.loopexit, %1194
  %1210 = phi ptr [ poison, %1194 ], [ %1205, %.loopexit108.loopexit ]
  %1211 = phi ptr [ %1195, %1194 ], [ %1205, %.loopexit108.loopexit ]
  %1212 = phi i32 [ %1196, %1194 ], [ %1209, %.loopexit108.loopexit ]
  %1213 = phi ptr [ %1197, %1194 ], [ %1206, %.loopexit108.loopexit ]
  %1214 = icmp ult i32 %1198, 7
  br i1 %1214, label %.loopexit, label %.preheader106

1215:                                             ; preds = %1142
  %1216 = load i8, ptr %1147, align 1, !tbaa !8
  store i8 %1216, ptr %1125, align 1, !tbaa !8
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

1217:                                             ; preds = %1131
  call void @llvm.ubsantrap(i8 21) #7, !nosanitize !34
  unreachable, !nosanitize !34

.preheader106:                                    ; preds = %.loopexit108, %.preheader106
  %1218 = phi ptr [ %1243, %.preheader106 ], [ %1211, %.loopexit108 ]
  %1219 = phi i32 [ %1244, %.preheader106 ], [ %1212, %.loopexit108 ]
  %1220 = phi ptr [ %1245, %.preheader106 ], [ %1213, %.loopexit108 ]
  %1221 = load i8, ptr %1220, align 1, !tbaa !8
  store i8 %1221, ptr %1218, align 1, !tbaa !8
  %1222 = getelementptr inbounds nuw i8, ptr %1218, i64 1
  %1223 = getelementptr inbounds nuw i8, ptr %1220, i64 1
  %1224 = load i8, ptr %1223, align 1, !tbaa !8
  store i8 %1224, ptr %1222, align 1, !tbaa !8
  %1225 = getelementptr inbounds nuw i8, ptr %1218, i64 2
  %1226 = getelementptr inbounds nuw i8, ptr %1220, i64 2
  %1227 = load i8, ptr %1226, align 1, !tbaa !8
  store i8 %1227, ptr %1225, align 1, !tbaa !8
  %1228 = getelementptr inbounds nuw i8, ptr %1218, i64 3
  %1229 = getelementptr inbounds nuw i8, ptr %1220, i64 3
  %1230 = load i8, ptr %1229, align 1, !tbaa !8
  store i8 %1230, ptr %1228, align 1, !tbaa !8
  %1231 = getelementptr inbounds nuw i8, ptr %1218, i64 4
  %1232 = getelementptr inbounds nuw i8, ptr %1220, i64 4
  %1233 = load i8, ptr %1232, align 1, !tbaa !8
  store i8 %1233, ptr %1231, align 1, !tbaa !8
  %1234 = getelementptr inbounds nuw i8, ptr %1218, i64 5
  %1235 = getelementptr inbounds nuw i8, ptr %1220, i64 5
  %1236 = load i8, ptr %1235, align 1, !tbaa !8
  store i8 %1236, ptr %1234, align 1, !tbaa !8
  %1237 = getelementptr inbounds nuw i8, ptr %1218, i64 6
  %1238 = getelementptr inbounds nuw i8, ptr %1220, i64 6
  %1239 = load i8, ptr %1238, align 1, !tbaa !8
  store i8 %1239, ptr %1237, align 1, !tbaa !8
  %1240 = getelementptr inbounds nuw i8, ptr %1218, i64 7
  %1241 = getelementptr inbounds nuw i8, ptr %1220, i64 7
  %1242 = load i8, ptr %1241, align 1, !tbaa !8
  store i8 %1242, ptr %1240, align 1, !tbaa !8
  %1243 = getelementptr inbounds nuw i8, ptr %1218, i64 8
  %1244 = add i32 %1219, -8
  %1245 = getelementptr inbounds nuw i8, ptr %1220, i64 8
  %1246 = icmp eq i32 %1244, 0
  br i1 %1246, label %.loopexit, label %.preheader106, !llvm.loop !78

.loopexit:                                        ; preds = %.preheader106, %.loopexit108, %1188, %1169
  %1247 = phi ptr [ %1189, %1188 ], [ %1170, %1169 ], [ %1210, %.loopexit108 ], [ %1243, %.preheader106 ]
  %1248 = load i32, ptr %41, align 4, !tbaa !38
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %.loopexit114, label %.preheader112, !llvm.loop !79

.loopexit114:                                     ; preds = %.loopexit, %1112, %1035, %825, %821, %815, %657, %633, %624, %620, %.loopexit121, %584, %450, %305, %241, %.loopexit111, %149, %102, %68
  %1250 = phi ptr [ %51, %68 ], [ %51, %102 ], [ %51, %149 ], [ %194, %.loopexit111 ], [ %51, %241 ], [ %51, %305 ], [ %51, %.loopexit121 ], [ %51, %620 ], [ %51, %624 ], [ %51, %633 ], [ %660, %657 ], [ %817, %815 ], [ %51, %821 ], [ %51, %825 ], [ %51, %1035 ], [ %51, %1112 ], [ %51, %450 ], [ %51, %584 ], [ %1247, %.loopexit ]
  %1251 = phi i32 [ %52, %68 ], [ %92, %102 ], [ %142, %149 ], [ %195, %.loopexit111 ], [ %224, %241 ], [ %273, %305 ], [ %614, %.loopexit121 ], [ %614, %620 ], [ %614, %624 ], [ %614, %633 ], [ %663, %657 ], [ %781, %815 ], [ %781, %821 ], [ %781, %825 ], [ %1018, %1035 ], [ %1099, %1112 ], [ %442, %450 ], [ %547, %584 ], [ %1099, %.loopexit ]
  %1252 = phi i32 [ %53, %68 ], [ %53, %102 ], [ %53, %149 ], [ %196, %.loopexit111 ], [ %53, %241 ], [ %53, %305 ], [ %53, %.loopexit121 ], [ %53, %620 ], [ %53, %624 ], [ %53, %633 ], [ %661, %657 ], [ %816, %815 ], [ %53, %821 ], [ %53, %825 ], [ %53, %1035 ], [ %53, %1112 ], [ %53, %450 ], [ %53, %584 ], [ %1140, %.loopexit ]
  %1253 = phi i64 [ %72, %68 ], [ %105, %102 ], [ %143, %149 ], [ 0, %.loopexit111 ], [ %236, %241 ], [ %289, %305 ], [ %613, %.loopexit121 ], [ %613, %620 ], [ %613, %624 ], [ %613, %633 ], [ %664, %657 ], [ %789, %815 ], [ %789, %821 ], [ %789, %825 ], [ %1026, %1035 ], [ %1100, %1112 ], [ %446, %450 ], [ %548, %584 ], [ %1100, %.loopexit ]
  %1254 = phi i32 [ %70, %68 ], [ %104, %102 ], [ %144, %149 ], [ 0, %.loopexit111 ], [ %237, %241 ], [ %288, %305 ], [ %612, %.loopexit121 ], [ %612, %620 ], [ %612, %624 ], [ %612, %633 ], [ %665, %657 ], [ %791, %815 ], [ %791, %821 ], [ %791, %825 ], [ %1028, %1035 ], [ %1101, %1112 ], [ %447, %450 ], [ %552, %584 ], [ %1101, %.loopexit ]
  %1255 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

.loopexit110.loopexit1067:                        ; preds = %49
  br label %.loopexit110

.loopexit110.loopexit1341:                        ; preds = %49
  br label %.loopexit110

.loopexit110:                                     ; preds = %800, %1117, %166, %49, %.loopexit110.loopexit1341, %.loopexit110.loopexit1067, %1052, %978, %912, %841, %741, %674, %513, %472, %423, %342, %259, %205, %162, %123, %76
  %1256 = phi i32 [ %1099, %1117 ], [ 0, %76 ], [ 0, %123 ], [ 0, %162 ], [ %52, %49 ], [ 0, %205 ], [ 0, %259 ], [ 0, %423 ], [ %164, %166 ], [ 0, %841 ], [ 0, %1052 ], [ %52, %.loopexit110.loopexit1067 ], [ 0, %978 ], [ 0, %912 ], [ 0, %741 ], [ 0, %674 ], [ 0, %472 ], [ 0, %513 ], [ 0, %342 ], [ %781, %800 ], [ %52, %.loopexit110.loopexit1341 ]
  %1257 = phi i32 [ %1116, %1117 ], [ %53, %76 ], [ %53, %123 ], [ %154, %162 ], [ %53, %49 ], [ %53, %205 ], [ %53, %259 ], [ %53, %423 ], [ %168, %166 ], [ %53, %841 ], [ %53, %1052 ], [ %53, %.loopexit110.loopexit1067 ], [ %53, %978 ], [ %53, %912 ], [ %53, %741 ], [ %53, %674 ], [ %53, %472 ], [ %53, %513 ], [ %53, %342 ], [ %802, %800 ], [ %53, %.loopexit110.loopexit1341 ]
  %1258 = phi i1 [ false, %1117 ], [ false, %76 ], [ false, %123 ], [ false, %162 ], [ false, %49 ], [ false, %205 ], [ false, %259 ], [ false, %423 ], [ false, %166 ], [ false, %841 ], [ false, %1052 ], [ false, %.loopexit110.loopexit1067 ], [ false, %978 ], [ false, %912 ], [ false, %741 ], [ false, %674 ], [ false, %472 ], [ false, %513 ], [ false, %342 ], [ false, %800 ], [ true, %.loopexit110.loopexit1341 ]
  %1259 = phi i32 [ -5, %1117 ], [ -5, %76 ], [ -5, %123 ], [ -5, %162 ], [ -3, %49 ], [ -5, %205 ], [ -5, %259 ], [ -5, %423 ], [ -5, %166 ], [ -5, %841 ], [ -5, %1052 ], [ -2, %.loopexit110.loopexit1067 ], [ -5, %978 ], [ -5, %912 ], [ -5, %741 ], [ -5, %674 ], [ -5, %472 ], [ -5, %513 ], [ -5, %342 ], [ -5, %800 ], [ 1, %.loopexit110.loopexit1341 ]
  %1260 = load i32, ptr %26, align 4, !tbaa !24
  %1261 = icmp ult i32 %1257, %1260
  br i1 %1261, label %1262, label %1269

1262:                                             ; preds = %.loopexit110
  %1263 = sub nuw i32 %1260, %1257
  %1264 = load ptr, ptr %24, align 8, !tbaa !25
  %1265 = call i32 %3(ptr noundef %4, ptr noundef %1264, i32 noundef %1263) #6
  %1266 = icmp ne i32 %1265, 0
  %1267 = and i1 %1258, %1266
  %1268 = select i1 %1267, i32 -5, i32 %1259
  br label %1269

1269:                                             ; preds = %1262, %.loopexit110
  %1270 = phi i32 [ %1268, %1262 ], [ %1259, %.loopexit110 ]
  %1271 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1271, ptr %0, align 8, !tbaa !31
  store i32 %1256, ptr %46, align 8, !tbaa !33
  br label %1272

1272:                                             ; preds = %1269, %8, %5
  %1273 = phi i32 [ %1270, %1269 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret i32 %1273
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
