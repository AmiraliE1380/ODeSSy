; ModuleID = '/home/amiralie1380/michigan/pl/smt-compiler-oracle/perf_test/signed.infback.or.ll'
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
  %35 = tail call ptr %27(ptr noundef %34, i32 noundef 1, i32 noundef 7160) #5
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1241, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1241, label %12

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

49:                                               ; preds = %.loopexit122, %22
  %50 = phi i32 [ 16191, %22 ], [ %1224, %.loopexit122 ]
  %51 = phi ptr [ %25, %22 ], [ %1219, %.loopexit122 ]
  %52 = phi i32 [ %23, %22 ], [ %1220, %.loopexit122 ]
  %53 = phi i32 [ %27, %22 ], [ %1221, %.loopexit122 ]
  %54 = phi i64 [ 0, %22 ], [ %1222, %.loopexit122 ]
  %55 = phi i32 [ 0, %22 ], [ %1223, %.loopexit122 ]
  switch i32 %50, label %.loopexit118.loopexit634 [
    i32 16191, label %60
    i32 16193, label %102
    i32 16196, label %56
    i32 16200, label %648
    i32 16208, label %.loopexit118.loopexit762
    i32 16209, label %.loopexit118
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %203

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %181

60:                                               ; preds = %49
  %61 = load i32, ptr %15, align 4, !tbaa !30
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = icmp ult i32 %55, 3
  br i1 %64, label %65, label %87

65:                                               ; preds = %63
  %66 = or disjoint i32 %55, 8
  %67 = icmp eq i32 %52, 0
  br i1 %67, label %73, label %77

68:                                               ; preds = %60
  %69 = and i32 %55, 7
  %70 = zext nneg i32 %69 to i64
  %71 = lshr i64 %54, %70
  %72 = and i32 %55, -8
  store i32 16208, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

73:                                               ; preds = %65
  %74 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

77:                                               ; preds = %73, %65
  %78 = phi i32 [ %74, %73 ], [ %52, %65 ]
  %79 = add i32 %78, -1
  %80 = load ptr, ptr %6, align 8, !tbaa !32
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 1
  store ptr %81, ptr %6, align 8, !tbaa !32
  %82 = load i8, ptr %80, align 1, !tbaa !8
  %83 = zext i8 %82 to i64
  %84 = zext nneg i32 %55 to i64
  %85 = shl nuw nsw i64 %83, %84
  %86 = add i64 %85, %54
  br label %87

87:                                               ; preds = %77, %63
  %88 = phi i32 [ %79, %77 ], [ %52, %63 ]
  %89 = phi i64 [ %86, %77 ], [ %54, %63 ]
  %90 = phi i32 [ %66, %77 ], [ %55, %63 ]
  %91 = trunc i64 %89 to i32
  %92 = and i32 %91, 1
  store i32 %92, ptr %15, align 4, !tbaa !30
  %93 = lshr i32 %91, 1
  %94 = and i32 %93, 3
  switch i32 %94, label %default.unreachable504 [
    i32 0, label %98
    i32 1, label %95
    i32 2, label %96
    i32 3, label %97
  ]

95:                                               ; preds = %87
  call void @inflate_fixed(ptr noundef nonnull %10) #5
  br label %98

96:                                               ; preds = %87
  br label %98

default.unreachable504:                           ; preds = %87
  unreachable

97:                                               ; preds = %87
  store ptr @.str.1, ptr %13, align 8, !tbaa !9
  br label %98

98:                                               ; preds = %97, %96, %95, %87
  %99 = phi i32 [ 16209, %97 ], [ 16200, %95 ], [ 16196, %96 ], [ 16193, %87 ]
  store i32 %99, ptr %14, align 8, !tbaa !29
  %100 = lshr i64 %89, 3
  %101 = add i32 %90, -3
  br label %.loopexit122

102:                                              ; preds = %49
  %103 = and i32 %55, 7
  %104 = zext nneg i32 %103 to i64
  %105 = lshr i64 %54, %104
  %106 = and i32 %55, -8
  %107 = icmp ult i32 %55, 32
  br i1 %107, label %108, label %133

108:                                              ; preds = %102
  %109 = and i32 %55, 24
  %110 = zext nneg i32 %109 to i64
  br label %111

111:                                              ; preds = %120, %108
  %112 = phi i64 [ %110, %108 ], [ %129, %120 ]
  %113 = phi i64 [ %105, %108 ], [ %128, %120 ]
  %114 = phi i32 [ %52, %108 ], [ %122, %120 ]
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

120:                                              ; preds = %116, %111
  %121 = phi i32 [ %117, %116 ], [ %114, %111 ]
  %122 = add i32 %121, -1
  %123 = load ptr, ptr %6, align 8, !tbaa !32
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 1
  store ptr %124, ptr %6, align 8, !tbaa !32
  %125 = load i8, ptr %123, align 1, !tbaa !8
  %126 = zext i8 %125 to i64
  %127 = shl nuw nsw i64 %126, %112
  %128 = add i64 %127, %113
  %129 = add nuw nsw i64 %112, 8
  %130 = icmp samesign ult i64 %112, 24
  br i1 %130, label %111, label %131, !llvm.loop !34

131:                                              ; preds = %120
  %132 = trunc nuw nsw i64 %129 to i32
  br label %133

133:                                              ; preds = %131, %102
  %134 = phi i32 [ %52, %102 ], [ %122, %131 ]
  %135 = phi i64 [ %105, %102 ], [ %128, %131 ]
  %136 = phi i32 [ %106, %102 ], [ %132, %131 ]
  %137 = and i64 %135, 65535
  %138 = lshr i64 %135, 16
  %139 = xor i64 %138, %137
  %140 = icmp eq i64 %139, 65535
  br i1 %140, label %142, label %141

141:                                              ; preds = %133
  store ptr @.str.2, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

142:                                              ; preds = %133
  %143 = trunc i64 %135 to i32
  %144 = and i32 %143, 65535
  store i32 %144, ptr %41, align 4, !tbaa !36
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %.loopexit119, label %.preheader117

.preheader117:                                    ; preds = %142, %163
  %146 = phi i32 [ %173, %163 ], [ %53, %142 ]
  %147 = phi i32 [ %170, %163 ], [ %134, %142 ]
  %148 = phi ptr [ %174, %163 ], [ %51, %142 ]
  %149 = phi i32 [ %176, %163 ], [ %144, %142 ]
  %150 = icmp eq i32 %147, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %.preheader117
  %152 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

155:                                              ; preds = %151, %.preheader117
  %156 = phi i32 [ %152, %151 ], [ %147, %.preheader117 ]
  %157 = icmp eq i32 %146, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load ptr, ptr %24, align 8, !tbaa !25
  %160 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %160, ptr %16, align 8, !tbaa !27
  %161 = call i32 %3(ptr noundef %4, ptr noundef %159, i32 noundef %160) #5
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %.loopexit118

163:                                              ; preds = %158, %155
  %164 = phi ptr [ %159, %158 ], [ %148, %155 ]
  %165 = phi i32 [ %160, %158 ], [ %146, %155 ]
  %166 = call i32 @llvm.umin.i32(i32 %149, i32 %156)
  %167 = call i32 @llvm.umin.i32(i32 %166, i32 %165)
  %168 = load ptr, ptr %6, align 8, !tbaa !32
  %169 = zext i32 %167 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %164, ptr align 1 %168, i64 %169, i1 false)
  %170 = sub i32 %156, %167
  %171 = load ptr, ptr %6, align 8, !tbaa !32
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 %169
  store ptr %172, ptr %6, align 8, !tbaa !32
  %173 = sub i32 %165, %167
  %174 = getelementptr inbounds nuw i8, ptr %164, i64 %169
  %175 = load i32, ptr %41, align 4, !tbaa !36
  %176 = sub i32 %175, %167
  store i32 %176, ptr %41, align 4, !tbaa !36
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %.loopexit119, label %.preheader117, !llvm.loop !37

.loopexit119:                                     ; preds = %163, %142
  %178 = phi ptr [ %51, %142 ], [ %174, %163 ]
  %179 = phi i32 [ %134, %142 ], [ %170, %163 ]
  %180 = phi i32 [ %53, %142 ], [ %173, %163 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

181:                                              ; preds = %190, %58
  %182 = phi i64 [ %59, %58 ], [ %199, %190 ]
  %183 = phi i64 [ %54, %58 ], [ %198, %190 ]
  %184 = phi i32 [ %52, %58 ], [ %192, %190 ]
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

190:                                              ; preds = %186, %181
  %191 = phi i32 [ %187, %186 ], [ %184, %181 ]
  %192 = add i32 %191, -1
  %193 = load ptr, ptr %6, align 8, !tbaa !32
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 1
  store ptr %194, ptr %6, align 8, !tbaa !32
  %195 = load i8, ptr %193, align 1, !tbaa !8
  %196 = zext i8 %195 to i64
  %197 = shl nuw nsw i64 %196, %182
  %198 = add i64 %197, %183
  %199 = add nuw nsw i64 %182, 8
  %200 = icmp samesign ult i64 %182, 6
  br i1 %200, label %181, label %201, !llvm.loop !38

201:                                              ; preds = %190
  %202 = trunc nuw nsw i64 %199 to i32
  br label %203

203:                                              ; preds = %201, %56
  %204 = phi i32 [ %52, %56 ], [ %192, %201 ]
  %205 = phi i64 [ %54, %56 ], [ %198, %201 ]
  %206 = phi i32 [ %55, %56 ], [ %202, %201 ]
  %207 = trunc i64 %205 to i32
  %208 = and i32 %207, 31
  %209 = add nuw nsw i32 %208, 257
  store i32 %209, ptr %28, align 4, !tbaa !39
  %210 = lshr i32 %207, 5
  %211 = and i32 %210, 31
  %212 = add nuw nsw i32 %211, 1
  store i32 %212, ptr %29, align 8, !tbaa !40
  %213 = lshr i32 %207, 10
  %214 = and i32 %213, 15
  %215 = add nuw nsw i32 %214, 4
  store i32 %215, ptr %30, align 8, !tbaa !41
  %216 = lshr i64 %205, 14
  %217 = add i32 %206, -14
  %218 = icmp samesign ugt i32 %208, 29
  %219 = icmp samesign ugt i32 %211, 29
  %220 = select i1 %218, i1 true, i1 %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %203
  store ptr @.str.3, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

222:                                              ; preds = %203
  store i32 0, ptr %31, align 4, !tbaa !42
  br label %227

223:                                              ; preds = %257
  %224 = icmp ult i32 %266, 19
  br i1 %224, label %225, label %285

225:                                              ; preds = %223
  %226 = zext nneg i32 %266 to i64
  br label %275

227:                                              ; preds = %257, %222
  %228 = phi i32 [ %258, %257 ], [ %215, %222 ]
  %229 = phi i32 [ %259, %257 ], [ %215, %222 ]
  %230 = phi i32 [ %266, %257 ], [ 0, %222 ]
  %231 = phi i32 [ %273, %257 ], [ %217, %222 ]
  %232 = phi i64 [ %272, %257 ], [ %216, %222 ]
  %233 = phi i32 [ %261, %257 ], [ %204, %222 ]
  %234 = icmp ult i32 %231, 3
  br i1 %234, label %235, label %257

235:                                              ; preds = %227
  %236 = or disjoint i32 %231, 8
  %237 = icmp eq i32 %233, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  %239 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = load i32, ptr %31, align 4, !tbaa !42
  %243 = load i32, ptr %30, align 8, !tbaa !41
  br label %245

244:                                              ; preds = %238
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

245:                                              ; preds = %241, %235
  %246 = phi i32 [ %243, %241 ], [ %228, %235 ]
  %247 = phi i32 [ %242, %241 ], [ %230, %235 ]
  %248 = phi i32 [ %239, %241 ], [ %233, %235 ]
  %249 = add i32 %248, -1
  %250 = load ptr, ptr %6, align 8, !tbaa !32
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 1
  store ptr %251, ptr %6, align 8, !tbaa !32
  %252 = load i8, ptr %250, align 1, !tbaa !8
  %253 = zext i8 %252 to i64
  %254 = zext nneg i32 %231 to i64
  %255 = shl nuw nsw i64 %253, %254
  %256 = add nuw nsw i64 %255, %232
  br label %257

257:                                              ; preds = %245, %227
  %258 = phi i32 [ %246, %245 ], [ %228, %227 ]
  %259 = phi i32 [ %246, %245 ], [ %229, %227 ]
  %260 = phi i32 [ %247, %245 ], [ %230, %227 ]
  %261 = phi i32 [ %249, %245 ], [ %233, %227 ]
  %262 = phi i64 [ %256, %245 ], [ %232, %227 ]
  %263 = phi i32 [ %236, %245 ], [ %231, %227 ]
  %264 = trunc i64 %262 to i16
  %265 = and i16 %264, 7
  %266 = add i32 %260, 1
  store i32 %266, ptr %31, align 4, !tbaa !42
  %267 = zext i32 %260 to i64
  %268 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %267
  %269 = load i16, ptr %268, align 2, !tbaa !43
  %270 = zext i16 %269 to i64
  %271 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %270
  store i16 %265, ptr %271, align 2, !tbaa !43
  %272 = lshr i64 %262, 3
  %273 = add i32 %263, -3
  %274 = icmp ult i32 %266, %259
  br i1 %274, label %227, label %223, !llvm.loop !45

275:                                              ; preds = %275, %225
  %276 = phi i64 [ %226, %225 ], [ %277, %275 ]
  %277 = add nuw nsw i64 %276, 1
  %278 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %276
  %279 = load i16, ptr %278, align 2, !tbaa !43
  %280 = zext i16 %279 to i64
  %281 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %280
  store i16 0, ptr %281, align 2, !tbaa !43
  %282 = and i64 %277, 4294967295
  %283 = icmp eq i64 %282, 19
  br i1 %283, label %284, label %275, !llvm.loop !46

284:                                              ; preds = %275
  store i32 19, ptr %31, align 4, !tbaa !42
  br label %285

285:                                              ; preds = %284, %223
  store ptr %33, ptr %34, align 8, !tbaa !47
  store ptr %33, ptr %35, align 8, !tbaa !48
  store i32 7, ptr %36, align 8, !tbaa !49
  %286 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #5
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %285
  store ptr @.str.4, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

289:                                              ; preds = %285
  store i32 0, ptr %31, align 4, !tbaa !42
  %290 = load i32, ptr %28, align 4, !tbaa !39
  %291 = load i32, ptr %29, align 8, !tbaa !40
  %292 = sub i32 0, %290
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %.loopexit126, label %.preheader125

.preheader125:                                    ; preds = %289, %616
  %294 = phi i32 [ %622, %616 ], [ %273, %289 ]
  %295 = phi i64 [ %621, %616 ], [ %272, %289 ]
  %296 = phi i32 [ %620, %616 ], [ %261, %289 ]
  %297 = load ptr, ptr %35, align 8, !tbaa !48
  %298 = trunc i64 %295 to i32
  %299 = load i32, ptr %36, align 8, !tbaa !49
  %300 = shl nsw i32 -1, %299
  %301 = xor i32 %300, -1
  %302 = and i32 %301, %298
  %303 = zext nneg i32 %302 to i64
  %304 = getelementptr inbounds nuw [4 x i8], ptr %297, i64 %303
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 1
  %306 = load i8, ptr %305, align 1, !tbaa !8
  %307 = zext i8 %306 to i32
  %308 = icmp ult i32 %294, %307
  br i1 %308, label %309, label %350

309:                                              ; preds = %.preheader125
  %310 = zext nneg i32 %294 to i64
  br label %311

311:                                              ; preds = %325, %309
  %312 = phi i32 [ %299, %309 ], [ %326, %325 ]
  %313 = phi ptr [ %297, %309 ], [ %327, %325 ]
  %314 = phi i64 [ %310, %309 ], [ %336, %325 ]
  %315 = phi i64 [ %295, %309 ], [ %335, %325 ]
  %316 = phi i32 [ %296, %309 ], [ %329, %325 ]
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %311
  %319 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %318
  %322 = load ptr, ptr %35, align 8, !tbaa !48
  %323 = load i32, ptr %36, align 8, !tbaa !49
  br label %325

324:                                              ; preds = %318
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

325:                                              ; preds = %321, %311
  %326 = phi i32 [ %323, %321 ], [ %312, %311 ]
  %327 = phi ptr [ %322, %321 ], [ %313, %311 ]
  %328 = phi i32 [ %319, %321 ], [ %316, %311 ]
  %329 = add i32 %328, -1
  %330 = load ptr, ptr %6, align 8, !tbaa !32
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 1
  store ptr %331, ptr %6, align 8, !tbaa !32
  %332 = load i8, ptr %330, align 1, !tbaa !8
  %333 = zext i8 %332 to i64
  %334 = shl i64 %333, %314
  %335 = add i64 %334, %315
  %336 = add nuw nsw i64 %314, 8
  %337 = trunc i64 %335 to i32
  %338 = shl nsw i32 -1, %326
  %339 = xor i32 %338, -1
  %340 = and i32 %337, %339
  %341 = zext nneg i32 %340 to i64
  %342 = getelementptr inbounds nuw [4 x i8], ptr %327, i64 %341
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 1
  %344 = load i8, ptr %343, align 1, !tbaa !8
  %345 = zext i8 %344 to i64
  %346 = icmp samesign ult i64 %336, %345
  br i1 %346, label %311, label %347

347:                                              ; preds = %325
  %348 = zext i8 %344 to i32
  %349 = trunc nuw nsw i64 %336 to i32
  br label %350

350:                                              ; preds = %347, %.preheader125
  %351 = phi i32 [ %307, %.preheader125 ], [ %348, %347 ]
  %352 = phi i32 [ %296, %.preheader125 ], [ %329, %347 ]
  %353 = phi i64 [ %295, %.preheader125 ], [ %335, %347 ]
  %354 = phi i32 [ %294, %.preheader125 ], [ %349, %347 ]
  %355 = phi i8 [ %306, %.preheader125 ], [ %344, %347 ]
  %356 = phi ptr [ %304, %.preheader125 ], [ %342, %347 ]
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 2
  %358 = load i16, ptr %357, align 2, !tbaa !43
  %359 = icmp ult i16 %358, 16
  br i1 %359, label %360, label %371

360:                                              ; preds = %350
  %361 = zext nneg i8 %355 to i64
  %362 = lshr i64 %353, %361
  %363 = sub i32 %354, %351
  %364 = load i32, ptr %31, align 4, !tbaa !42
  %365 = add i32 %364, 1
  store i32 %365, ptr %31, align 4, !tbaa !42
  %366 = zext i32 %364 to i64
  %367 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %366
  store i16 %358, ptr %367, align 2, !tbaa !43
  %368 = load i32, ptr %28, align 4, !tbaa !39
  %369 = load i32, ptr %29, align 8, !tbaa !40
  %370 = add i32 %369, %368
  br label %616

371:                                              ; preds = %350
  switch i16 %358, label %384 [
    i16 16, label %378
    i16 17, label %372
  ]

372:                                              ; preds = %371
  %373 = add nuw nsw i32 %351, 3
  %374 = icmp ult i32 %354, %373
  br i1 %374, label %375, label %454

375:                                              ; preds = %372
  %376 = zext nneg i32 %354 to i64
  %377 = zext nneg i32 %373 to i64
  br label %432

378:                                              ; preds = %371
  %379 = add nuw nsw i32 %351, 2
  %380 = icmp ult i32 %354, %379
  br i1 %380, label %381, label %412

381:                                              ; preds = %378
  %382 = zext nneg i32 %354 to i64
  %383 = zext nneg i32 %379 to i64
  br label %390

384:                                              ; preds = %371
  %385 = add nuw nsw i32 %351, 7
  %386 = icmp ult i32 %354, %385
  br i1 %386, label %387, label %487

387:                                              ; preds = %384
  %388 = zext nneg i32 %354 to i64
  %389 = zext nneg i32 %385 to i64
  br label %465

390:                                              ; preds = %399, %381
  %391 = phi i64 [ %382, %381 ], [ %408, %399 ]
  %392 = phi i64 [ %353, %381 ], [ %407, %399 ]
  %393 = phi i32 [ %352, %381 ], [ %401, %399 ]
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %390
  %396 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %395
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

399:                                              ; preds = %395, %390
  %400 = phi i32 [ %396, %395 ], [ %393, %390 ]
  %401 = add i32 %400, -1
  %402 = load ptr, ptr %6, align 8, !tbaa !32
  %403 = getelementptr inbounds nuw i8, ptr %402, i64 1
  store ptr %403, ptr %6, align 8, !tbaa !32
  %404 = load i8, ptr %402, align 1, !tbaa !8
  %405 = zext i8 %404 to i64
  %406 = shl i64 %405, %391
  %407 = add i64 %406, %392
  %408 = add nuw nsw i64 %391, 8
  %409 = icmp samesign ult i64 %408, %383
  br i1 %409, label %390, label %410, !llvm.loop !50

410:                                              ; preds = %399
  %411 = trunc nuw nsw i64 %408 to i32
  br label %412

412:                                              ; preds = %410, %378
  %413 = phi i32 [ %352, %378 ], [ %401, %410 ]
  %414 = phi i64 [ %353, %378 ], [ %407, %410 ]
  %415 = phi i32 [ %354, %378 ], [ %411, %410 ]
  %416 = zext nneg i8 %355 to i64
  %417 = lshr i64 %414, %416
  %418 = sub nuw i32 %415, %351
  %419 = load i32, ptr %31, align 4, !tbaa !42
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %412
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

422:                                              ; preds = %412
  %423 = add i32 %419, -1
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %424
  %426 = load i16, ptr %425, align 2, !tbaa !43
  %427 = trunc i64 %417 to i32
  %428 = and i32 %427, 3
  %429 = add nuw nsw i32 %428, 3
  %430 = lshr i64 %417, 2
  %431 = add i32 %418, -2
  br label %498

432:                                              ; preds = %441, %375
  %433 = phi i64 [ %376, %375 ], [ %450, %441 ]
  %434 = phi i64 [ %353, %375 ], [ %449, %441 ]
  %435 = phi i32 [ %352, %375 ], [ %443, %441 ]
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %441

437:                                              ; preds = %432
  %438 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %437
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

441:                                              ; preds = %437, %432
  %442 = phi i32 [ %438, %437 ], [ %435, %432 ]
  %443 = add i32 %442, -1
  %444 = load ptr, ptr %6, align 8, !tbaa !32
  %445 = getelementptr inbounds nuw i8, ptr %444, i64 1
  store ptr %445, ptr %6, align 8, !tbaa !32
  %446 = load i8, ptr %444, align 1, !tbaa !8
  %447 = zext i8 %446 to i64
  %448 = shl i64 %447, %433
  %449 = add i64 %448, %434
  %450 = add nuw nsw i64 %433, 8
  %451 = icmp samesign ult i64 %450, %377
  br i1 %451, label %432, label %452, !llvm.loop !51

452:                                              ; preds = %441
  %453 = trunc nuw nsw i64 %450 to i32
  br label %454

454:                                              ; preds = %452, %372
  %455 = phi i32 [ %352, %372 ], [ %443, %452 ]
  %456 = phi i64 [ %353, %372 ], [ %449, %452 ]
  %457 = phi i32 [ %354, %372 ], [ %453, %452 ]
  %458 = zext nneg i8 %355 to i64
  %459 = lshr i64 %456, %458
  %460 = trunc i64 %459 to i32
  %461 = and i32 %460, 7
  %462 = add nuw nsw i32 %461, 3
  %463 = lshr i64 %459, 3
  %reass.sub = sub i32 %457, %351
  %464 = add i32 %reass.sub, -3
  br label %498

465:                                              ; preds = %474, %387
  %466 = phi i64 [ %388, %387 ], [ %483, %474 ]
  %467 = phi i64 [ %353, %387 ], [ %482, %474 ]
  %468 = phi i32 [ %352, %387 ], [ %476, %474 ]
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %465
  %471 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %470
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

474:                                              ; preds = %470, %465
  %475 = phi i32 [ %471, %470 ], [ %468, %465 ]
  %476 = add i32 %475, -1
  %477 = load ptr, ptr %6, align 8, !tbaa !32
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 1
  store ptr %478, ptr %6, align 8, !tbaa !32
  %479 = load i8, ptr %477, align 1, !tbaa !8
  %480 = zext i8 %479 to i64
  %481 = shl i64 %480, %466
  %482 = add i64 %481, %467
  %483 = add nuw nsw i64 %466, 8
  %484 = icmp samesign ult i64 %483, %389
  br i1 %484, label %465, label %485, !llvm.loop !52

485:                                              ; preds = %474
  %486 = trunc nuw nsw i64 %483 to i32
  br label %487

487:                                              ; preds = %485, %384
  %488 = phi i32 [ %352, %384 ], [ %476, %485 ]
  %489 = phi i64 [ %353, %384 ], [ %482, %485 ]
  %490 = phi i32 [ %354, %384 ], [ %486, %485 ]
  %491 = zext nneg i8 %355 to i64
  %492 = lshr i64 %489, %491
  %493 = trunc i64 %492 to i32
  %494 = and i32 %493, 127
  %495 = add nuw nsw i32 %494, 11
  %496 = lshr i64 %492, 7
  %reass.sub256 = sub i32 %490, %351
  %497 = add i32 %reass.sub256, -7
  br label %498

498:                                              ; preds = %487, %454, %422
  %499 = phi i32 [ %413, %422 ], [ %455, %454 ], [ %488, %487 ]
  %500 = phi i64 [ %430, %422 ], [ %463, %454 ], [ %496, %487 ]
  %501 = phi i32 [ %431, %422 ], [ %464, %454 ], [ %497, %487 ]
  %502 = phi i32 [ %429, %422 ], [ %462, %454 ], [ %495, %487 ]
  %503 = phi i16 [ %426, %422 ], [ 0, %454 ], [ 0, %487 ]
  %504 = load i32, ptr %31, align 4, !tbaa !42
  %505 = add i32 %504, %502
  %506 = load i32, ptr %28, align 4, !tbaa !39
  %507 = load i32, ptr %29, align 8, !tbaa !40
  %508 = add i32 %507, %506
  %509 = icmp ugt i32 %505, %508
  br i1 %509, label %586, label %510

510:                                              ; preds = %498
  %511 = icmp samesign ult i32 %502, 4
  %512 = sub nsw i32 0, %502
  %513 = icmp ugt i32 %504, %512
  %514 = select i1 %511, i1 true, i1 %513
  br i1 %514, label %552, label %515

515:                                              ; preds = %510
  %516 = icmp samesign ult i32 %502, 16
  br i1 %516, label %._crit_edge, label %517

517:                                              ; preds = %515
  %518 = and i32 %502, -16
  %519 = insertelement <8 x i16> poison, i16 %503, i64 0
  %520 = shufflevector <8 x i16> %519, <8 x i16> poison, <8 x i32> zeroinitializer
  %521 = zext nneg i32 %518 to i64
  br label %522

522:                                              ; preds = %522, %517
  %indvars.iv = phi i64 [ %indvars.iv.next, %522 ], [ 0, %517 ]
  %523 = trunc nuw i64 %indvars.iv to i32
  %524 = add i32 %504, %523
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %525
  %527 = getelementptr inbounds nuw i8, ptr %526, i64 16
  store <8 x i16> %520, ptr %526, align 2, !tbaa !43
  store <8 x i16> %520, ptr %527, align 2, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %528 = icmp eq i64 %indvars.iv.next, %521
  br i1 %528, label %529, label %522, !llvm.loop !53

529:                                              ; preds = %522
  %530 = add i32 %504, %518
  %531 = icmp eq i32 %502, %518
  br i1 %531, label %.loopexit114, label %532

532:                                              ; preds = %529
  %533 = and i32 %502, 15
  %534 = and i32 %502, 12
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %552, label %._crit_edge, !prof !56

._crit_edge:                                      ; preds = %515, %532
  %536 = phi i32 [ %518, %532 ], [ 0, %515 ]
  %537 = and i32 %502, -4
  %538 = insertelement <4 x i16> poison, i16 %503, i64 0
  %539 = shufflevector <4 x i16> %538, <4 x i16> poison, <4 x i32> zeroinitializer
  %540 = zext nneg i32 %536 to i64
  %541 = zext nneg i32 %537 to i64
  br label %542

542:                                              ; preds = %542, %._crit_edge
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %542 ], [ %540, %._crit_edge ]
  %543 = trunc nuw i64 %indvars.iv389 to i32
  %544 = add i32 %504, %543
  %545 = zext i32 %544 to i64
  %546 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %545
  store <4 x i16> %539, ptr %546, align 2, !tbaa !43
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 4
  %547 = icmp eq i64 %indvars.iv.next390, %541
  br i1 %547, label %548, label %542, !llvm.loop !57

548:                                              ; preds = %542
  %549 = and i32 %502, 3
  %550 = add i32 %504, %537
  %551 = icmp eq i32 %502, %537
  br i1 %551, label %.loopexit114, label %552

552:                                              ; preds = %548, %532, %510
  %553 = phi i32 [ %502, %510 ], [ %533, %532 ], [ %549, %548 ]
  %554 = phi i32 [ %504, %510 ], [ %530, %532 ], [ %550, %548 ]
  %555 = add nsw i32 %553, -1
  %556 = and i32 %553, 3
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %.loopexit116, label %.preheader115

.preheader115:                                    ; preds = %552, %.preheader115
  %558 = phi i32 [ %560, %.preheader115 ], [ %554, %552 ]
  %559 = phi i32 [ %563, %.preheader115 ], [ 0, %552 ]
  %560 = add i32 %558, 1
  %561 = zext i32 %558 to i64
  %562 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %561
  store i16 %503, ptr %562, align 2, !tbaa !43
  %563 = add nuw nsw i32 %559, 1
  %564 = icmp eq i32 %563, %556
  br i1 %564, label %.loopexit116.loopexit, label %.preheader115, !llvm.loop !58

.loopexit116.loopexit:                            ; preds = %.preheader115
  %565 = and i32 %553, -4
  br label %.loopexit116

.loopexit116:                                     ; preds = %.loopexit116.loopexit, %552
  %566 = phi i32 [ poison, %552 ], [ %560, %.loopexit116.loopexit ]
  %567 = phi i32 [ %553, %552 ], [ %565, %.loopexit116.loopexit ]
  %568 = phi i32 [ %554, %552 ], [ %560, %.loopexit116.loopexit ]
  %569 = icmp ult i32 %555, 3
  br i1 %569, label %.loopexit114, label %.preheader113.preheader

.preheader113.preheader:                          ; preds = %.loopexit116
  %570 = add nsw i32 %567, -4
  %571 = and i32 %570, 4
  %lcmp.mod.not.not = icmp eq i32 %571, 0
  br i1 %lcmp.mod.not.not, label %.preheader113.prol, label %.preheader113.prol.loopexit

.preheader113.prol:                               ; preds = %.preheader113.preheader
  %572 = add i32 %568, 1
  %573 = zext i32 %568 to i64
  %574 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %573
  store i16 %503, ptr %574, align 2, !tbaa !43
  %575 = add i32 %568, 2
  %576 = zext i32 %572 to i64
  %577 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %576
  store i16 %503, ptr %577, align 2, !tbaa !43
  %578 = add i32 %568, 3
  %579 = zext i32 %575 to i64
  %580 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %579
  store i16 %503, ptr %580, align 2, !tbaa !43
  %581 = add nsw i32 %567, -4
  %582 = add i32 %568, 4
  %583 = zext i32 %578 to i64
  %584 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %583
  store i16 %503, ptr %584, align 2, !tbaa !43
  br label %.preheader113.prol.loopexit

.preheader113.prol.loopexit:                      ; preds = %.preheader113.prol, %.preheader113.preheader
  %.lcssa787.unr = phi i32 [ poison, %.preheader113.preheader ], [ %582, %.preheader113.prol ]
  %.unr = phi i32 [ %567, %.preheader113.preheader ], [ %581, %.preheader113.prol ]
  %.unr890 = phi i32 [ %568, %.preheader113.preheader ], [ %582, %.preheader113.prol ]
  %585 = icmp ult i32 %570, 4
  br i1 %585, label %.loopexit114, label %.preheader113

586:                                              ; preds = %498
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

.preheader113:                                    ; preds = %.preheader113.prol.loopexit, %.preheader113
  %587 = phi i32 [ %610, %.preheader113 ], [ %.unr, %.preheader113.prol.loopexit ]
  %588 = phi i32 [ %611, %.preheader113 ], [ %.unr890, %.preheader113.prol.loopexit ]
  %589 = add i32 %588, 1
  %590 = zext i32 %588 to i64
  %591 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %590
  store i16 %503, ptr %591, align 2, !tbaa !43
  %592 = add i32 %588, 2
  %593 = zext i32 %589 to i64
  %594 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %593
  store i16 %503, ptr %594, align 2, !tbaa !43
  %595 = add i32 %588, 3
  %596 = zext i32 %592 to i64
  %597 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %596
  store i16 %503, ptr %597, align 2, !tbaa !43
  %598 = add i32 %588, 4
  %599 = zext i32 %595 to i64
  %600 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %599
  store i16 %503, ptr %600, align 2, !tbaa !43
  %601 = add i32 %588, 5
  %602 = zext i32 %598 to i64
  %603 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %602
  store i16 %503, ptr %603, align 2, !tbaa !43
  %604 = add i32 %588, 6
  %605 = zext i32 %601 to i64
  %606 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %605
  store i16 %503, ptr %606, align 2, !tbaa !43
  %607 = add i32 %588, 7
  %608 = zext i32 %604 to i64
  %609 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %608
  store i16 %503, ptr %609, align 2, !tbaa !43
  %610 = add i32 %587, -8
  %611 = add i32 %588, 8
  %612 = zext i32 %607 to i64
  %613 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %612
  store i16 %503, ptr %613, align 2, !tbaa !43
  %614 = icmp eq i32 %610, 0
  br i1 %614, label %.loopexit114, label %.preheader113, !llvm.loop !60

.loopexit114:                                     ; preds = %.preheader113.prol.loopexit, %.preheader113, %.loopexit116, %548, %529
  %615 = phi i32 [ %550, %548 ], [ %530, %529 ], [ %566, %.loopexit116 ], [ %.lcssa787.unr, %.preheader113.prol.loopexit ], [ %611, %.preheader113 ]
  store i32 %615, ptr %31, align 4, !tbaa !42
  br label %616

616:                                              ; preds = %.loopexit114, %360
  %617 = phi i32 [ %508, %.loopexit114 ], [ %370, %360 ]
  %618 = phi i32 [ %506, %.loopexit114 ], [ %368, %360 ]
  %619 = phi i32 [ %615, %.loopexit114 ], [ %365, %360 ]
  %620 = phi i32 [ %499, %.loopexit114 ], [ %352, %360 ]
  %621 = phi i64 [ %500, %.loopexit114 ], [ %362, %360 ]
  %622 = phi i32 [ %501, %.loopexit114 ], [ %363, %360 ]
  %623 = icmp ult i32 %619, %617
  br i1 %623, label %.preheader125, label %.loopexit126, !llvm.loop !61

.loopexit126:                                     ; preds = %616, %289
  %624 = phi i32 [ %290, %289 ], [ %618, %616 ]
  %625 = phi i32 [ %261, %289 ], [ %620, %616 ]
  %626 = phi i64 [ %272, %289 ], [ %621, %616 ]
  %627 = phi i32 [ %273, %289 ], [ %622, %616 ]
  %628 = load i32, ptr %14, align 8, !tbaa !29
  %629 = icmp eq i32 %628, 16209
  br i1 %629, label %.loopexit122, label %630

630:                                              ; preds = %.loopexit126
  %631 = load i16, ptr %38, align 8, !tbaa !43
  %632 = icmp eq i16 %631, 0
  br i1 %632, label %633, label %634

633:                                              ; preds = %630
  store ptr @.str.6, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

634:                                              ; preds = %630
  store ptr %33, ptr %34, align 8, !tbaa !47
  store ptr %33, ptr %35, align 8, !tbaa !48
  store i32 9, ptr %36, align 8, !tbaa !49
  %635 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %624, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #5
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %638, label %637

637:                                              ; preds = %634
  store ptr @.str.7, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

638:                                              ; preds = %634
  %639 = load ptr, ptr %34, align 8, !tbaa !47
  store ptr %639, ptr %39, align 8, !tbaa !62
  store i32 6, ptr %40, align 4, !tbaa !63
  %640 = load i32, ptr %28, align 4, !tbaa !39
  %641 = zext i32 %640 to i64
  %642 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %641
  %643 = load i32, ptr %29, align 8, !tbaa !40
  %644 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %642, i32 noundef %643, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #5
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %647, label %646

646:                                              ; preds = %638
  store ptr @.str.8, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

647:                                              ; preds = %638
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %648

648:                                              ; preds = %647, %49
  %649 = phi i32 [ %625, %647 ], [ %52, %49 ]
  %650 = phi i64 [ %626, %647 ], [ %54, %49 ]
  %651 = phi i32 [ %627, %647 ], [ %55, %49 ]
  %652 = icmp ugt i32 %649, 5
  %653 = icmp ugt i32 %53, 257
  %654 = select i1 %652, i1 %653, i1 false
  br i1 %654, label %670, label %655

655:                                              ; preds = %648
  %656 = load ptr, ptr %35, align 8, !tbaa !48
  %657 = trunc i64 %650 to i32
  %658 = load i32, ptr %36, align 8, !tbaa !49
  %659 = shl nsw i32 -1, %658
  %660 = xor i32 %659, -1
  %661 = and i32 %660, %657
  %662 = zext nneg i32 %661 to i64
  %663 = getelementptr inbounds nuw [4 x i8], ptr %656, i64 %662
  %664 = getelementptr inbounds nuw i8, ptr %663, i64 1
  %665 = load i8, ptr %664, align 1, !tbaa !8
  %666 = zext i8 %665 to i32
  %667 = icmp ult i32 %651, %666
  br i1 %667, label %668, label %718

668:                                              ; preds = %655
  %669 = zext nneg i32 %651 to i64
  br label %679

670:                                              ; preds = %648
  store ptr %51, ptr %44, align 8, !tbaa !64
  store i32 %53, ptr %45, align 8, !tbaa !65
  %671 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %671, ptr %0, align 8, !tbaa !31
  store i32 %649, ptr %46, align 8, !tbaa !33
  store i64 %650, ptr %47, align 8, !tbaa !66
  store i32 %651, ptr %48, align 8, !tbaa !67
  %672 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %672) #5
  %673 = load ptr, ptr %44, align 8, !tbaa !64
  %674 = load i32, ptr %45, align 8, !tbaa !65
  %675 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %675, ptr %6, align 8, !tbaa !32
  %676 = load i32, ptr %46, align 8, !tbaa !33
  %677 = load i64, ptr %47, align 8, !tbaa !66
  %678 = load i32, ptr %48, align 8, !tbaa !67
  br label %.loopexit122

679:                                              ; preds = %693, %668
  %680 = phi i32 [ %658, %668 ], [ %694, %693 ]
  %681 = phi ptr [ %656, %668 ], [ %695, %693 ]
  %682 = phi i64 [ %669, %668 ], [ %704, %693 ]
  %683 = phi i64 [ %650, %668 ], [ %703, %693 ]
  %684 = phi i32 [ %649, %668 ], [ %697, %693 ]
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %693

686:                                              ; preds = %679
  %687 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %692, label %689

689:                                              ; preds = %686
  %690 = load ptr, ptr %35, align 8, !tbaa !48
  %691 = load i32, ptr %36, align 8, !tbaa !49
  br label %693

692:                                              ; preds = %686
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

693:                                              ; preds = %689, %679
  %694 = phi i32 [ %691, %689 ], [ %680, %679 ]
  %695 = phi ptr [ %690, %689 ], [ %681, %679 ]
  %696 = phi i32 [ %687, %689 ], [ %684, %679 ]
  %697 = add i32 %696, -1
  %698 = load ptr, ptr %6, align 8, !tbaa !32
  %699 = getelementptr inbounds nuw i8, ptr %698, i64 1
  store ptr %699, ptr %6, align 8, !tbaa !32
  %700 = load i8, ptr %698, align 1, !tbaa !8
  %701 = zext i8 %700 to i64
  %702 = shl i64 %701, %682
  %703 = add i64 %702, %683
  %704 = add nuw nsw i64 %682, 8
  %705 = trunc i64 %703 to i32
  %706 = shl nsw i32 -1, %694
  %707 = xor i32 %706, -1
  %708 = and i32 %705, %707
  %709 = zext nneg i32 %708 to i64
  %710 = getelementptr inbounds nuw [4 x i8], ptr %695, i64 %709
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 1
  %712 = load i8, ptr %711, align 1, !tbaa !8
  %713 = zext i8 %712 to i64
  %714 = icmp samesign ult i64 %704, %713
  br i1 %714, label %679, label %715

715:                                              ; preds = %693
  %716 = zext i8 %712 to i32
  %717 = trunc nuw nsw i64 %704 to i32
  br label %718

718:                                              ; preds = %715, %655
  %719 = phi ptr [ %656, %655 ], [ %695, %715 ]
  %720 = phi i32 [ %649, %655 ], [ %697, %715 ]
  %721 = phi i64 [ %650, %655 ], [ %703, %715 ]
  %722 = phi i32 [ %651, %655 ], [ %717, %715 ]
  %723 = phi ptr [ %663, %655 ], [ %710, %715 ]
  %724 = phi i8 [ %665, %655 ], [ %712, %715 ]
  %725 = phi i32 [ %666, %655 ], [ %716, %715 ]
  %726 = getelementptr inbounds nuw i8, ptr %723, i64 2
  %727 = load i16, ptr %726, align 2, !tbaa !43
  %728 = load i8, ptr %723, align 2, !tbaa !8
  %729 = add i8 %728, -1
  %730 = icmp ult i8 %729, 15
  br i1 %730, label %731, label %799

731:                                              ; preds = %718
  %732 = zext nneg i8 %728 to i32
  %733 = zext i16 %727 to i32
  %734 = add nuw nsw i32 %725, %732
  %735 = shl nsw i32 -1, %734
  %736 = xor i32 %735, -1
  %737 = trunc i64 %721 to i32
  %738 = and i32 %736, %737
  %739 = lshr i32 %738, %725
  %740 = add nuw i32 %739, %733
  %741 = zext i32 %740 to i64
  %742 = getelementptr inbounds nuw [4 x i8], ptr %719, i64 %741
  %743 = getelementptr inbounds nuw i8, ptr %742, i64 1
  %744 = load i8, ptr %743, align 1, !tbaa !8
  %745 = zext i8 %744 to i32
  %746 = add nuw nsw i32 %725, %745
  %747 = icmp ugt i32 %746, %722
  br i1 %747, label %748, label %787

748:                                              ; preds = %731
  %749 = zext nneg i32 %722 to i64
  br label %750

750:                                              ; preds = %762, %748
  %751 = phi ptr [ %719, %748 ], [ %763, %762 ]
  %752 = phi i64 [ %749, %748 ], [ %772, %762 ]
  %753 = phi i64 [ %721, %748 ], [ %771, %762 ]
  %754 = phi i32 [ %720, %748 ], [ %765, %762 ]
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %762

756:                                              ; preds = %750
  %757 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %761, label %759

759:                                              ; preds = %756
  %760 = load ptr, ptr %35, align 8, !tbaa !48
  br label %762

761:                                              ; preds = %756
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

762:                                              ; preds = %759, %750
  %763 = phi ptr [ %760, %759 ], [ %751, %750 ]
  %764 = phi i32 [ %757, %759 ], [ %754, %750 ]
  %765 = add i32 %764, -1
  %766 = load ptr, ptr %6, align 8, !tbaa !32
  %767 = getelementptr inbounds nuw i8, ptr %766, i64 1
  store ptr %767, ptr %6, align 8, !tbaa !32
  %768 = load i8, ptr %766, align 1, !tbaa !8
  %769 = zext i8 %768 to i64
  %770 = shl i64 %769, %752
  %771 = add i64 %770, %753
  %772 = add nuw nsw i64 %752, 8
  %773 = trunc i64 %771 to i32
  %774 = and i32 %773, %736
  %775 = lshr i32 %774, %725
  %776 = add nuw i32 %775, %733
  %777 = zext i32 %776 to i64
  %778 = getelementptr inbounds nuw [4 x i8], ptr %763, i64 %777
  %779 = getelementptr inbounds nuw i8, ptr %778, i64 1
  %780 = load i8, ptr %779, align 1, !tbaa !8
  %781 = zext i8 %780 to i32
  %782 = add nuw nsw i32 %725, %781
  %783 = zext nneg i32 %782 to i64
  %784 = icmp samesign ult i64 %772, %783
  br i1 %784, label %750, label %785

785:                                              ; preds = %762
  %786 = trunc nuw nsw i64 %772 to i32
  br label %787

787:                                              ; preds = %785, %731
  %788 = phi i32 [ %720, %731 ], [ %765, %785 ]
  %789 = phi i64 [ %721, %731 ], [ %771, %785 ]
  %790 = phi i32 [ %722, %731 ], [ %786, %785 ]
  %791 = phi ptr [ %742, %731 ], [ %778, %785 ]
  %792 = phi i8 [ %744, %731 ], [ %780, %785 ]
  %793 = getelementptr inbounds nuw i8, ptr %791, i64 2
  %794 = load i16, ptr %793, align 2, !tbaa !43
  %795 = load i8, ptr %791, align 2, !tbaa !8
  %796 = zext nneg i8 %724 to i64
  %797 = lshr i64 %789, %796
  %798 = sub nuw i32 %790, %725
  br label %799

799:                                              ; preds = %787, %718
  %800 = phi i32 [ %788, %787 ], [ %720, %718 ]
  %801 = phi i64 [ %797, %787 ], [ %721, %718 ]
  %802 = phi i32 [ %798, %787 ], [ %722, %718 ]
  %803 = phi i16 [ %794, %787 ], [ %727, %718 ]
  %804 = phi i8 [ %792, %787 ], [ %724, %718 ]
  %805 = phi i8 [ %795, %787 ], [ %728, %718 ]
  %806 = zext i8 %804 to i32
  %807 = zext nneg i8 %804 to i64
  %808 = lshr i64 %801, %807
  %809 = sub i32 %802, %806
  %810 = zext i16 %803 to i32
  store i32 %810, ptr %41, align 4, !tbaa !36
  %811 = zext i8 %805 to i32
  %812 = icmp eq i8 %805, 0
  br i1 %812, label %813, label %829

813:                                              ; preds = %799
  %814 = icmp eq i32 %53, 0
  br i1 %814, label %815, label %822

815:                                              ; preds = %813
  %816 = load ptr, ptr %24, align 8, !tbaa !25
  %817 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %817, ptr %16, align 8, !tbaa !27
  %818 = call i32 %3(ptr noundef %4, ptr noundef %816, i32 noundef %817) #5
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %.loopexit118

820:                                              ; preds = %815
  %821 = load i32, ptr %41, align 4, !tbaa !36
  br label %822

822:                                              ; preds = %820, %813
  %823 = phi i32 [ %821, %820 ], [ %810, %813 ]
  %824 = phi ptr [ %816, %820 ], [ %51, %813 ]
  %825 = phi i32 [ %817, %820 ], [ %53, %813 ]
  %826 = trunc i32 %823 to i8
  %827 = getelementptr inbounds nuw i8, ptr %824, i64 1
  store i8 %826, ptr %824, align 1, !tbaa !8
  %828 = add i32 %825, -1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

829:                                              ; preds = %799
  %830 = and i32 %811, 32
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %833, label %832

832:                                              ; preds = %829
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

833:                                              ; preds = %829
  %834 = and i32 %811, 64
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %837, label %836

836:                                              ; preds = %833
  store ptr @.str.9, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

837:                                              ; preds = %833
  %838 = and i32 %811, 15
  store i32 %838, ptr %42, align 4, !tbaa !68
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %882, label %840

840:                                              ; preds = %837
  %841 = icmp ult i32 %809, %838
  br i1 %841, label %.preheader124, label %868

.preheader124:                                    ; preds = %840, %853
  %842 = phi i32 [ %854, %853 ], [ %838, %840 ]
  %843 = phi i32 [ %864, %853 ], [ %809, %840 ]
  %844 = phi i64 [ %863, %853 ], [ %808, %840 ]
  %845 = phi i32 [ %856, %853 ], [ %800, %840 ]
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %853

847:                                              ; preds = %.preheader124
  %848 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %852, label %850

850:                                              ; preds = %847
  %851 = load i32, ptr %42, align 4, !tbaa !68
  br label %853

852:                                              ; preds = %847
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

853:                                              ; preds = %850, %.preheader124
  %854 = phi i32 [ %851, %850 ], [ %842, %.preheader124 ]
  %855 = phi i32 [ %848, %850 ], [ %845, %.preheader124 ]
  %856 = add i32 %855, -1
  %857 = load ptr, ptr %6, align 8, !tbaa !32
  %858 = getelementptr inbounds nuw i8, ptr %857, i64 1
  store ptr %858, ptr %6, align 8, !tbaa !32
  %859 = load i8, ptr %857, align 1, !tbaa !8
  %860 = zext i8 %859 to i64
  %861 = zext nneg i32 %843 to i64
  %862 = shl i64 %860, %861
  %863 = add i64 %862, %844
  %864 = add i32 %843, 8
  %865 = icmp ult i32 %864, %854
  br i1 %865, label %.preheader124, label %866, !llvm.loop !69

866:                                              ; preds = %853
  %867 = load i32, ptr %41, align 4, !tbaa !36
  br label %868

868:                                              ; preds = %866, %840
  %869 = phi i32 [ %810, %840 ], [ %867, %866 ]
  %870 = phi i32 [ %800, %840 ], [ %856, %866 ]
  %871 = phi i64 [ %808, %840 ], [ %863, %866 ]
  %872 = phi i32 [ %809, %840 ], [ %864, %866 ]
  %873 = phi i32 [ %838, %840 ], [ %854, %866 ]
  %874 = trunc i64 %871 to i32
  %875 = shl nsw i32 -1, %873
  %876 = xor i32 %875, -1
  %877 = and i32 %876, %874
  %878 = add i32 %877, %869
  store i32 %878, ptr %41, align 4, !tbaa !36
  %879 = zext nneg i32 %873 to i64
  %880 = lshr i64 %871, %879
  %881 = sub nuw i32 %872, %873
  br label %882

882:                                              ; preds = %868, %837
  %883 = phi i32 [ %870, %868 ], [ %800, %837 ]
  %884 = phi i64 [ %880, %868 ], [ %808, %837 ]
  %885 = phi i32 [ %881, %868 ], [ %809, %837 ]
  %886 = load ptr, ptr %39, align 8, !tbaa !62
  %887 = trunc i64 %884 to i32
  %888 = load i32, ptr %40, align 4, !tbaa !63
  %889 = shl nsw i32 -1, %888
  %890 = xor i32 %889, -1
  %891 = and i32 %890, %887
  %892 = zext nneg i32 %891 to i64
  %893 = getelementptr inbounds nuw [4 x i8], ptr %886, i64 %892
  %894 = getelementptr inbounds nuw i8, ptr %893, i64 1
  %895 = load i8, ptr %894, align 1, !tbaa !8
  %896 = zext i8 %895 to i32
  %897 = icmp ult i32 %885, %896
  br i1 %897, label %898, label %939

898:                                              ; preds = %882
  %899 = zext nneg i32 %885 to i64
  br label %900

900:                                              ; preds = %914, %898
  %901 = phi i32 [ %888, %898 ], [ %915, %914 ]
  %902 = phi ptr [ %886, %898 ], [ %916, %914 ]
  %903 = phi i64 [ %899, %898 ], [ %925, %914 ]
  %904 = phi i64 [ %884, %898 ], [ %924, %914 ]
  %905 = phi i32 [ %883, %898 ], [ %918, %914 ]
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %914

907:                                              ; preds = %900
  %908 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %913, label %910

910:                                              ; preds = %907
  %911 = load ptr, ptr %39, align 8, !tbaa !62
  %912 = load i32, ptr %40, align 4, !tbaa !63
  br label %914

913:                                              ; preds = %907
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

914:                                              ; preds = %910, %900
  %915 = phi i32 [ %912, %910 ], [ %901, %900 ]
  %916 = phi ptr [ %911, %910 ], [ %902, %900 ]
  %917 = phi i32 [ %908, %910 ], [ %905, %900 ]
  %918 = add i32 %917, -1
  %919 = load ptr, ptr %6, align 8, !tbaa !32
  %920 = getelementptr inbounds nuw i8, ptr %919, i64 1
  store ptr %920, ptr %6, align 8, !tbaa !32
  %921 = load i8, ptr %919, align 1, !tbaa !8
  %922 = zext i8 %921 to i64
  %923 = shl i64 %922, %903
  %924 = add i64 %923, %904
  %925 = add nuw nsw i64 %903, 8
  %926 = trunc i64 %924 to i32
  %927 = shl nsw i32 -1, %915
  %928 = xor i32 %927, -1
  %929 = and i32 %926, %928
  %930 = zext nneg i32 %929 to i64
  %931 = getelementptr inbounds nuw [4 x i8], ptr %916, i64 %930
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 1
  %933 = load i8, ptr %932, align 1, !tbaa !8
  %934 = zext i8 %933 to i64
  %935 = icmp samesign ult i64 %925, %934
  br i1 %935, label %900, label %936

936:                                              ; preds = %914
  %937 = zext i8 %933 to i32
  %938 = trunc nuw nsw i64 %925 to i32
  br label %939

939:                                              ; preds = %936, %882
  %940 = phi ptr [ %886, %882 ], [ %916, %936 ]
  %941 = phi i32 [ %883, %882 ], [ %918, %936 ]
  %942 = phi i64 [ %884, %882 ], [ %924, %936 ]
  %943 = phi i32 [ %885, %882 ], [ %938, %936 ]
  %944 = phi ptr [ %893, %882 ], [ %931, %936 ]
  %945 = phi i8 [ %895, %882 ], [ %933, %936 ]
  %946 = phi i32 [ %896, %882 ], [ %937, %936 ]
  %947 = getelementptr inbounds nuw i8, ptr %944, i64 2
  %948 = load i16, ptr %947, align 2, !tbaa !43
  %949 = load i8, ptr %944, align 2, !tbaa !8
  %950 = icmp ult i8 %949, 16
  br i1 %950, label %951, label %1019

951:                                              ; preds = %939
  %952 = zext nneg i8 %949 to i32
  %953 = zext i16 %948 to i32
  %954 = add nuw nsw i32 %946, %952
  %955 = shl nsw i32 -1, %954
  %956 = xor i32 %955, -1
  %957 = trunc i64 %942 to i32
  %958 = and i32 %956, %957
  %959 = lshr i32 %958, %946
  %960 = add nuw i32 %959, %953
  %961 = zext i32 %960 to i64
  %962 = getelementptr inbounds nuw [4 x i8], ptr %940, i64 %961
  %963 = getelementptr inbounds nuw i8, ptr %962, i64 1
  %964 = load i8, ptr %963, align 1, !tbaa !8
  %965 = zext i8 %964 to i32
  %966 = add nuw nsw i32 %946, %965
  %967 = icmp ugt i32 %966, %943
  br i1 %967, label %968, label %1007

968:                                              ; preds = %951
  %969 = zext nneg i32 %943 to i64
  br label %970

970:                                              ; preds = %982, %968
  %971 = phi ptr [ %940, %968 ], [ %983, %982 ]
  %972 = phi i64 [ %969, %968 ], [ %992, %982 ]
  %973 = phi i64 [ %942, %968 ], [ %991, %982 ]
  %974 = phi i32 [ %941, %968 ], [ %985, %982 ]
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %982

976:                                              ; preds = %970
  %977 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %981, label %979

979:                                              ; preds = %976
  %980 = load ptr, ptr %39, align 8, !tbaa !62
  br label %982

981:                                              ; preds = %976
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

982:                                              ; preds = %979, %970
  %983 = phi ptr [ %980, %979 ], [ %971, %970 ]
  %984 = phi i32 [ %977, %979 ], [ %974, %970 ]
  %985 = add i32 %984, -1
  %986 = load ptr, ptr %6, align 8, !tbaa !32
  %987 = getelementptr inbounds nuw i8, ptr %986, i64 1
  store ptr %987, ptr %6, align 8, !tbaa !32
  %988 = load i8, ptr %986, align 1, !tbaa !8
  %989 = zext i8 %988 to i64
  %990 = shl i64 %989, %972
  %991 = add i64 %990, %973
  %992 = add nuw nsw i64 %972, 8
  %993 = trunc i64 %991 to i32
  %994 = and i32 %993, %956
  %995 = lshr i32 %994, %946
  %996 = add nuw i32 %995, %953
  %997 = zext i32 %996 to i64
  %998 = getelementptr inbounds nuw [4 x i8], ptr %983, i64 %997
  %999 = getelementptr inbounds nuw i8, ptr %998, i64 1
  %1000 = load i8, ptr %999, align 1, !tbaa !8
  %1001 = zext i8 %1000 to i32
  %1002 = add nuw nsw i32 %946, %1001
  %1003 = zext nneg i32 %1002 to i64
  %1004 = icmp samesign ult i64 %992, %1003
  br i1 %1004, label %970, label %1005

1005:                                             ; preds = %982
  %1006 = trunc nuw nsw i64 %992 to i32
  br label %1007

1007:                                             ; preds = %1005, %951
  %1008 = phi i32 [ %941, %951 ], [ %985, %1005 ]
  %1009 = phi i64 [ %942, %951 ], [ %991, %1005 ]
  %1010 = phi i32 [ %943, %951 ], [ %1006, %1005 ]
  %1011 = phi ptr [ %962, %951 ], [ %998, %1005 ]
  %1012 = phi i8 [ %964, %951 ], [ %1000, %1005 ]
  %1013 = getelementptr inbounds nuw i8, ptr %1011, i64 2
  %1014 = load i16, ptr %1013, align 2, !tbaa !43
  %1015 = load i8, ptr %1011, align 2, !tbaa !8
  %1016 = zext nneg i8 %945 to i64
  %1017 = lshr i64 %1009, %1016
  %1018 = sub nuw i32 %1010, %946
  br label %1019

1019:                                             ; preds = %1007, %939
  %1020 = phi i32 [ %1008, %1007 ], [ %941, %939 ]
  %1021 = phi i64 [ %1017, %1007 ], [ %942, %939 ]
  %1022 = phi i32 [ %1018, %1007 ], [ %943, %939 ]
  %1023 = phi i16 [ %1014, %1007 ], [ %948, %939 ]
  %1024 = phi i8 [ %1012, %1007 ], [ %945, %939 ]
  %1025 = phi i8 [ %1015, %1007 ], [ %949, %939 ]
  %1026 = zext i8 %1024 to i32
  %1027 = zext nneg i8 %1024 to i64
  %1028 = lshr i64 %1021, %1027
  %1029 = sub i32 %1022, %1026
  %1030 = zext i8 %1025 to i32
  %1031 = and i32 %1030, 64
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1034, label %1033

1033:                                             ; preds = %1019
  store ptr @.str.10, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

1034:                                             ; preds = %1019
  %1035 = zext i16 %1023 to i32
  store i32 %1035, ptr %43, align 8, !tbaa !70
  %1036 = and i32 %1030, 15
  store i32 %1036, ptr %42, align 4, !tbaa !68
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1080, label %1038

1038:                                             ; preds = %1034
  %1039 = icmp ult i32 %1029, %1036
  br i1 %1039, label %.preheader123, label %1066

.preheader123:                                    ; preds = %1038, %1051
  %1040 = phi i32 [ %1052, %1051 ], [ %1036, %1038 ]
  %1041 = phi i32 [ %1062, %1051 ], [ %1029, %1038 ]
  %1042 = phi i64 [ %1061, %1051 ], [ %1028, %1038 ]
  %1043 = phi i32 [ %1054, %1051 ], [ %1020, %1038 ]
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %1045, label %1051

1045:                                             ; preds = %.preheader123
  %1046 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1050, label %1048

1048:                                             ; preds = %1045
  %1049 = load i32, ptr %42, align 4, !tbaa !68
  br label %1051

1050:                                             ; preds = %1045
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %.loopexit118

1051:                                             ; preds = %1048, %.preheader123
  %1052 = phi i32 [ %1049, %1048 ], [ %1040, %.preheader123 ]
  %1053 = phi i32 [ %1046, %1048 ], [ %1043, %.preheader123 ]
  %1054 = add i32 %1053, -1
  %1055 = load ptr, ptr %6, align 8, !tbaa !32
  %1056 = getelementptr inbounds nuw i8, ptr %1055, i64 1
  store ptr %1056, ptr %6, align 8, !tbaa !32
  %1057 = load i8, ptr %1055, align 1, !tbaa !8
  %1058 = zext i8 %1057 to i64
  %1059 = zext nneg i32 %1041 to i64
  %1060 = shl i64 %1058, %1059
  %1061 = add i64 %1060, %1042
  %1062 = add i32 %1041, 8
  %1063 = icmp ult i32 %1062, %1052
  br i1 %1063, label %.preheader123, label %1064, !llvm.loop !71

1064:                                             ; preds = %1051
  %1065 = load i32, ptr %43, align 8, !tbaa !70
  br label %1066

1066:                                             ; preds = %1064, %1038
  %1067 = phi i32 [ %1035, %1038 ], [ %1065, %1064 ]
  %1068 = phi i32 [ %1020, %1038 ], [ %1054, %1064 ]
  %1069 = phi i64 [ %1028, %1038 ], [ %1061, %1064 ]
  %1070 = phi i32 [ %1029, %1038 ], [ %1062, %1064 ]
  %1071 = phi i32 [ %1036, %1038 ], [ %1052, %1064 ]
  %1072 = trunc i64 %1069 to i32
  %1073 = shl nsw i32 -1, %1071
  %1074 = xor i32 %1073, -1
  %1075 = and i32 %1074, %1072
  %1076 = add i32 %1075, %1067
  store i32 %1076, ptr %43, align 8, !tbaa !70
  %1077 = zext nneg i32 %1071 to i64
  %1078 = lshr i64 %1069, %1077
  %1079 = sub nuw i32 %1070, %1071
  br label %1080

1080:                                             ; preds = %1066, %1034
  %1081 = phi i32 [ %1076, %1066 ], [ %1035, %1034 ]
  %1082 = phi i32 [ %1068, %1066 ], [ %1020, %1034 ]
  %1083 = phi i64 [ %1078, %1066 ], [ %1028, %1034 ]
  %1084 = phi i32 [ %1079, %1066 ], [ %1029, %1034 ]
  %1085 = load i32, ptr %26, align 4, !tbaa !24
  %1086 = load i32, ptr %16, align 8, !tbaa !27
  %1087 = icmp ult i32 %1086, %1085
  %1088 = select i1 %1087, i32 %53, i32 0
  %1089 = sub i32 %1085, %1088
  %1090 = icmp ugt i32 %1081, %1089
  br i1 %1090, label %1091, label %.preheader120

1091:                                             ; preds = %1080
  store ptr @.str.11, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %.loopexit122

.preheader120:                                    ; preds = %1080, %.loopexit
  %1092 = phi ptr [ %1215, %.loopexit ], [ %51, %1080 ]
  %1093 = phi i32 [ %1216, %.loopexit ], [ %53, %1080 ]
  %1094 = icmp eq i32 %1093, 0
  %1095 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1094, label %1096, label %1102

1096:                                             ; preds = %.preheader120
  %1097 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1095, ptr %16, align 8, !tbaa !27
  %1098 = call i32 %3(ptr noundef %4, ptr noundef %1097, i32 noundef %1095) #5
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1100, label %.loopexit118

1100:                                             ; preds = %1096
  %1101 = load i32, ptr %26, align 4, !tbaa !24
  br label %1102

1102:                                             ; preds = %1100, %.preheader120
  %1103 = phi i32 [ %1101, %1100 ], [ %1095, %.preheader120 ]
  %1104 = phi ptr [ %1097, %1100 ], [ %1092, %.preheader120 ]
  %1105 = phi i32 [ %1095, %1100 ], [ %1093, %.preheader120 ]
  %1106 = load i32, ptr %43, align 8, !tbaa !70
  %1107 = sub i32 %1103, %1106
  %1108 = icmp ult i32 %1107, %1105
  %1109 = zext i32 %1107 to i64
  %1110 = zext i32 %1106 to i64
  %1111 = sub nsw i64 0, %1110
  %1112 = select i1 %1108, i32 %1107, i32 0
  %1113 = sub i32 %1105, %1112
  %1114 = select i1 %1108, i64 %1109, i64 %1111
  %1115 = getelementptr inbounds i8, ptr %1104, i64 %1114
  %1116 = load i32, ptr %41, align 4, !tbaa !36
  %1117 = call i32 @llvm.umin.i32(i32 %1113, i32 %1116)
  %1118 = sub i32 %1116, %1117
  store i32 %1118, ptr %41, align 4, !tbaa !36
  %1119 = add i32 %1117, -1
  %1120 = zext i32 %1119 to i64
  %1121 = add nuw nsw i64 %1120, 1
  %1122 = icmp ult i32 %1119, 3
  %1123 = add nsw i64 %1114, 31
  %1124 = icmp ult i64 %1123, 32
  %1125 = select i1 %1122, i1 true, i1 %1124
  br i1 %1125, label %1165, label %1126

1126:                                             ; preds = %1102
  %1127 = icmp ult i32 %1119, 31
  br i1 %1127, label %1149, label %1128

1128:                                             ; preds = %1126
  %1129 = and i64 %1121, 8589934560
  br label %1130

1130:                                             ; preds = %1130, %1128
  %1131 = phi i64 [ 0, %1128 ], [ %1138, %1130 ]
  %1132 = getelementptr i8, ptr %1104, i64 %1131
  %1133 = getelementptr i8, ptr %1115, i64 %1131
  %1134 = getelementptr i8, ptr %1133, i64 16
  %1135 = load <16 x i8>, ptr %1133, align 1, !tbaa !8
  %1136 = load <16 x i8>, ptr %1134, align 1, !tbaa !8
  %1137 = getelementptr i8, ptr %1132, i64 16
  store <16 x i8> %1135, ptr %1132, align 1, !tbaa !8
  store <16 x i8> %1136, ptr %1137, align 1, !tbaa !8
  %1138 = add nuw i64 %1131, 32
  %1139 = icmp eq i64 %1138, %1129
  br i1 %1139, label %1140, label %1130, !llvm.loop !72

1140:                                             ; preds = %1130
  %1141 = getelementptr i8, ptr %1104, i64 %1129
  %1142 = icmp eq i64 %1121, %1129
  br i1 %1142, label %.loopexit, label %1143

1143:                                             ; preds = %1140
  %1144 = getelementptr i8, ptr %1115, i64 %1129
  %1145 = trunc i64 %1129 to i32
  %1146 = sub i32 %1117, %1145
  %1147 = and i64 %1121, 28
  %1148 = icmp eq i64 %1147, 0
  br i1 %1148, label %1165, label %1149, !prof !73

1149:                                             ; preds = %1143, %1126
  %1150 = phi i64 [ %1129, %1143 ], [ 0, %1126 ]
  %1151 = and i64 %1121, 8589934588
  br label %1152

1152:                                             ; preds = %1152, %1149
  %1153 = phi i64 [ %1150, %1149 ], [ %1157, %1152 ]
  %1154 = getelementptr i8, ptr %1104, i64 %1153
  %1155 = getelementptr i8, ptr %1115, i64 %1153
  %1156 = load <4 x i8>, ptr %1155, align 1, !tbaa !8
  store <4 x i8> %1156, ptr %1154, align 1, !tbaa !8
  %1157 = add nuw i64 %1153, 4
  %1158 = icmp eq i64 %1157, %1151
  br i1 %1158, label %1159, label %1152, !llvm.loop !74

1159:                                             ; preds = %1152
  %1160 = getelementptr i8, ptr %1104, i64 %1151
  %1161 = trunc i64 %1151 to i32
  %1162 = sub i32 %1117, %1161
  %1163 = getelementptr i8, ptr %1115, i64 %1151
  %1164 = icmp eq i64 %1121, %1151
  br i1 %1164, label %.loopexit, label %1165

1165:                                             ; preds = %1159, %1143, %1102
  %1166 = phi ptr [ %1104, %1102 ], [ %1141, %1143 ], [ %1160, %1159 ]
  %1167 = phi i32 [ %1117, %1102 ], [ %1146, %1143 ], [ %1162, %1159 ]
  %1168 = phi ptr [ %1115, %1102 ], [ %1144, %1143 ], [ %1163, %1159 ]
  %1169 = add i32 %1167, -1
  %1170 = and i32 %1167, 7
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %.loopexit112, label %.preheader111

.preheader111:                                    ; preds = %1165, %.preheader111
  %1172 = phi ptr [ %1177, %.preheader111 ], [ %1166, %1165 ]
  %1173 = phi ptr [ %1175, %.preheader111 ], [ %1168, %1165 ]
  %1174 = phi i32 [ %1178, %.preheader111 ], [ 0, %1165 ]
  %1175 = getelementptr inbounds nuw i8, ptr %1173, i64 1
  %1176 = load i8, ptr %1173, align 1, !tbaa !8
  %1177 = getelementptr inbounds nuw i8, ptr %1172, i64 1
  store i8 %1176, ptr %1172, align 1, !tbaa !8
  %1178 = add nuw nsw i32 %1174, 1
  %1179 = icmp eq i32 %1178, %1170
  br i1 %1179, label %.loopexit112.loopexit, label %.preheader111, !llvm.loop !75

.loopexit112.loopexit:                            ; preds = %.preheader111
  %1180 = and i32 %1167, -8
  br label %.loopexit112

.loopexit112:                                     ; preds = %.loopexit112.loopexit, %1165
  %1181 = phi ptr [ poison, %1165 ], [ %1177, %.loopexit112.loopexit ]
  %1182 = phi ptr [ %1166, %1165 ], [ %1177, %.loopexit112.loopexit ]
  %1183 = phi i32 [ %1167, %1165 ], [ %1180, %.loopexit112.loopexit ]
  %1184 = phi ptr [ %1168, %1165 ], [ %1175, %.loopexit112.loopexit ]
  %1185 = icmp ult i32 %1169, 7
  br i1 %1185, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit112, %.preheader
  %1186 = phi ptr [ %1212, %.preheader ], [ %1182, %.loopexit112 ]
  %1187 = phi i32 [ %1213, %.preheader ], [ %1183, %.loopexit112 ]
  %1188 = phi ptr [ %1210, %.preheader ], [ %1184, %.loopexit112 ]
  %1189 = getelementptr inbounds nuw i8, ptr %1188, i64 1
  %1190 = load i8, ptr %1188, align 1, !tbaa !8
  %1191 = getelementptr inbounds nuw i8, ptr %1186, i64 1
  store i8 %1190, ptr %1186, align 1, !tbaa !8
  %1192 = getelementptr inbounds nuw i8, ptr %1188, i64 2
  %1193 = load i8, ptr %1189, align 1, !tbaa !8
  %1194 = getelementptr inbounds nuw i8, ptr %1186, i64 2
  store i8 %1193, ptr %1191, align 1, !tbaa !8
  %1195 = getelementptr inbounds nuw i8, ptr %1188, i64 3
  %1196 = load i8, ptr %1192, align 1, !tbaa !8
  %1197 = getelementptr inbounds nuw i8, ptr %1186, i64 3
  store i8 %1196, ptr %1194, align 1, !tbaa !8
  %1198 = getelementptr inbounds nuw i8, ptr %1188, i64 4
  %1199 = load i8, ptr %1195, align 1, !tbaa !8
  %1200 = getelementptr inbounds nuw i8, ptr %1186, i64 4
  store i8 %1199, ptr %1197, align 1, !tbaa !8
  %1201 = getelementptr inbounds nuw i8, ptr %1188, i64 5
  %1202 = load i8, ptr %1198, align 1, !tbaa !8
  %1203 = getelementptr inbounds nuw i8, ptr %1186, i64 5
  store i8 %1202, ptr %1200, align 1, !tbaa !8
  %1204 = getelementptr inbounds nuw i8, ptr %1188, i64 6
  %1205 = load i8, ptr %1201, align 1, !tbaa !8
  %1206 = getelementptr inbounds nuw i8, ptr %1186, i64 6
  store i8 %1205, ptr %1203, align 1, !tbaa !8
  %1207 = getelementptr inbounds nuw i8, ptr %1188, i64 7
  %1208 = load i8, ptr %1204, align 1, !tbaa !8
  %1209 = getelementptr inbounds nuw i8, ptr %1186, i64 7
  store i8 %1208, ptr %1206, align 1, !tbaa !8
  %1210 = getelementptr inbounds nuw i8, ptr %1188, i64 8
  %1211 = load i8, ptr %1207, align 1, !tbaa !8
  %1212 = getelementptr inbounds nuw i8, ptr %1186, i64 8
  store i8 %1211, ptr %1209, align 1, !tbaa !8
  %1213 = add i32 %1187, -8
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %.loopexit, label %.preheader, !llvm.loop !76

.loopexit:                                        ; preds = %.preheader, %.loopexit112, %1159, %1140
  %1215 = phi ptr [ %1160, %1159 ], [ %1141, %1140 ], [ %1181, %.loopexit112 ], [ %1212, %.preheader ]
  %1216 = sub i32 %1105, %1117
  %1217 = load i32, ptr %41, align 4, !tbaa !36
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %.loopexit122, label %.preheader120, !llvm.loop !77

.loopexit122:                                     ; preds = %.loopexit, %1091, %1033, %836, %832, %822, %670, %646, %637, %633, %.loopexit126, %586, %421, %288, %221, %.loopexit119, %141, %98, %68
  %1219 = phi ptr [ %51, %68 ], [ %51, %98 ], [ %51, %141 ], [ %178, %.loopexit119 ], [ %51, %221 ], [ %51, %288 ], [ %51, %.loopexit126 ], [ %51, %633 ], [ %51, %637 ], [ %51, %646 ], [ %673, %670 ], [ %827, %822 ], [ %51, %832 ], [ %51, %836 ], [ %51, %1033 ], [ %51, %1091 ], [ %51, %421 ], [ %51, %586 ], [ %1215, %.loopexit ]
  %1220 = phi i32 [ %52, %68 ], [ %88, %98 ], [ %134, %141 ], [ %179, %.loopexit119 ], [ %204, %221 ], [ %261, %288 ], [ %625, %.loopexit126 ], [ %625, %633 ], [ %625, %637 ], [ %625, %646 ], [ %676, %670 ], [ %800, %822 ], [ %800, %832 ], [ %800, %836 ], [ %1020, %1033 ], [ %1082, %1091 ], [ %413, %421 ], [ %499, %586 ], [ %1082, %.loopexit ]
  %1221 = phi i32 [ %53, %68 ], [ %53, %98 ], [ %53, %141 ], [ %180, %.loopexit119 ], [ %53, %221 ], [ %53, %288 ], [ %53, %.loopexit126 ], [ %53, %633 ], [ %53, %637 ], [ %53, %646 ], [ %674, %670 ], [ %828, %822 ], [ %53, %832 ], [ %53, %836 ], [ %53, %1033 ], [ %53, %1091 ], [ %53, %421 ], [ %53, %586 ], [ %1216, %.loopexit ]
  %1222 = phi i64 [ %71, %68 ], [ %100, %98 ], [ %135, %141 ], [ 0, %.loopexit119 ], [ %216, %221 ], [ %272, %288 ], [ %626, %.loopexit126 ], [ %626, %633 ], [ %626, %637 ], [ %626, %646 ], [ %677, %670 ], [ %808, %822 ], [ %808, %832 ], [ %808, %836 ], [ %1028, %1033 ], [ %1083, %1091 ], [ %417, %421 ], [ %500, %586 ], [ %1083, %.loopexit ]
  %1223 = phi i32 [ %72, %68 ], [ %101, %98 ], [ %136, %141 ], [ 0, %.loopexit119 ], [ %217, %221 ], [ %273, %288 ], [ %627, %.loopexit126 ], [ %627, %633 ], [ %627, %637 ], [ %627, %646 ], [ %678, %670 ], [ %809, %822 ], [ %809, %832 ], [ %809, %836 ], [ %1029, %1033 ], [ %1084, %1091 ], [ %418, %421 ], [ %501, %586 ], [ %1084, %.loopexit ]
  %1224 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

.loopexit118.loopexit634:                         ; preds = %49
  br label %.loopexit118

.loopexit118.loopexit762:                         ; preds = %49
  br label %.loopexit118

.loopexit118:                                     ; preds = %815, %1096, %158, %49, %.loopexit118.loopexit762, %.loopexit118.loopexit634, %1050, %981, %913, %852, %761, %692, %473, %440, %398, %324, %244, %189, %154, %119, %76
  %1225 = phi i32 [ %1082, %1096 ], [ 0, %76 ], [ 0, %119 ], [ 0, %154 ], [ %52, %49 ], [ 0, %189 ], [ 0, %244 ], [ 0, %398 ], [ %156, %158 ], [ 0, %852 ], [ 0, %1050 ], [ %52, %.loopexit118.loopexit634 ], [ 0, %981 ], [ 0, %913 ], [ 0, %761 ], [ 0, %692 ], [ 0, %440 ], [ 0, %473 ], [ 0, %324 ], [ %800, %815 ], [ %52, %.loopexit118.loopexit762 ]
  %1226 = phi i32 [ %1095, %1096 ], [ %53, %76 ], [ %53, %119 ], [ %146, %154 ], [ %53, %49 ], [ %53, %189 ], [ %53, %244 ], [ %53, %398 ], [ %160, %158 ], [ %53, %852 ], [ %53, %1050 ], [ %53, %.loopexit118.loopexit634 ], [ %53, %981 ], [ %53, %913 ], [ %53, %761 ], [ %53, %692 ], [ %53, %440 ], [ %53, %473 ], [ %53, %324 ], [ %817, %815 ], [ %53, %.loopexit118.loopexit762 ]
  %1227 = phi i1 [ false, %1096 ], [ false, %76 ], [ false, %119 ], [ false, %154 ], [ false, %49 ], [ false, %189 ], [ false, %244 ], [ false, %398 ], [ false, %158 ], [ false, %852 ], [ false, %1050 ], [ false, %.loopexit118.loopexit634 ], [ false, %981 ], [ false, %913 ], [ false, %761 ], [ false, %692 ], [ false, %440 ], [ false, %473 ], [ false, %324 ], [ false, %815 ], [ true, %.loopexit118.loopexit762 ]
  %1228 = phi i32 [ -5, %1096 ], [ -5, %76 ], [ -5, %119 ], [ -5, %154 ], [ -3, %49 ], [ -5, %189 ], [ -5, %244 ], [ -5, %398 ], [ -5, %158 ], [ -5, %852 ], [ -5, %1050 ], [ -2, %.loopexit118.loopexit634 ], [ -5, %981 ], [ -5, %913 ], [ -5, %761 ], [ -5, %692 ], [ -5, %440 ], [ -5, %473 ], [ -5, %324 ], [ -5, %815 ], [ 1, %.loopexit118.loopexit762 ]
  %1229 = load i32, ptr %26, align 4, !tbaa !24
  %1230 = icmp ult i32 %1226, %1229
  br i1 %1230, label %1231, label %1238

1231:                                             ; preds = %.loopexit118
  %1232 = load ptr, ptr %24, align 8, !tbaa !25
  %1233 = sub nuw i32 %1229, %1226
  %1234 = call i32 %3(ptr noundef %4, ptr noundef %1232, i32 noundef %1233) #5
  %1235 = icmp ne i32 %1234, 0
  %1236 = and i1 %1227, %1235
  %1237 = select i1 %1236, i32 -5, i32 %1228
  br label %1238

1238:                                             ; preds = %1231, %.loopexit118
  %1239 = phi i32 [ %1237, %1231 ], [ %1228, %.loopexit118 ]
  %1240 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1240, ptr %0, align 8, !tbaa !31
  store i32 %1225, ptr %46, align 8, !tbaa !33
  br label %1241

1241:                                             ; preds = %1238, %8, %5
  %1242 = phi i32 [ %1239, %1238 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  ret i32 %1242
}

declare void @inflate_fixed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

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
  tail call void %9(ptr noundef %13, ptr noundef nonnull %5) #5
  store ptr null, ptr %4, align 8, !tbaa !18
  br label %14

14:                                               ; preds = %11, %7, %3, %1
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!20, !5, i64 92}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = !{!20, !5, i64 132}
!40 = !{!20, !5, i64 136}
!41 = !{!20, !5, i64 128}
!42 = !{!20, !5, i64 140}
!43 = !{!44, !44, i64 0}
!44 = !{!"short", !6, i64 0}
!45 = distinct !{!45, !35}
!46 = distinct !{!46, !35}
!47 = !{!20, !12, i64 144}
!48 = !{!20, !12, i64 104}
!49 = !{!20, !5, i64 120}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35}
!52 = distinct !{!52, !35}
!53 = distinct !{!53, !35, !54, !55}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = !{!"branch_weights", i32 4, i32 12}
!57 = distinct !{!57, !35, !54, !55}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !35, !54}
!61 = distinct !{!61, !35}
!62 = !{!20, !12, i64 112}
!63 = !{!20, !5, i64 124}
!64 = !{!10, !11, i64 24}
!65 = !{!10, !5, i64 32}
!66 = !{!20, !13, i64 80}
!67 = !{!20, !5, i64 88}
!68 = !{!20, !5, i64 100}
!69 = distinct !{!69, !35}
!70 = !{!20, !5, i64 96}
!71 = distinct !{!71, !35}
!72 = distinct !{!72, !35, !54, !55}
!73 = !{!"branch_weights", i32 4, i32 28}
!74 = distinct !{!74, !35, !54, !55}
!75 = distinct !{!75, !59}
!76 = distinct !{!76, !35, !54}
!77 = distinct !{!77, !35}
