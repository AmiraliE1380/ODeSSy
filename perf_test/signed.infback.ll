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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %1237, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1237, label %12

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

49:                                               ; preds = %1211, %22
  %50 = phi i32 [ 16191, %22 ], [ %1217, %1211 ]
  %51 = phi ptr [ %25, %22 ], [ %1212, %1211 ]
  %52 = phi i32 [ %23, %22 ], [ %1213, %1211 ]
  %53 = phi i32 [ %27, %22 ], [ %1214, %1211 ]
  %54 = phi i64 [ 0, %22 ], [ %1215, %1211 ]
  %55 = phi i32 [ 0, %22 ], [ %1216, %1211 ]
  switch i32 %50, label %1220 [
    i32 16191, label %60
    i32 16193, label %103
    i32 16196, label %56
    i32 16200, label %632
    i32 16208, label %1218
    i32 16209, label %1219
  ]

56:                                               ; preds = %49
  %57 = icmp ult i32 %55, 14
  br i1 %57, label %58, label %206

58:                                               ; preds = %56
  %59 = zext nneg i32 %55 to i64
  br label %184

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
  br label %1211

73:                                               ; preds = %65
  %74 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

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
  switch i32 %94, label %97 [
    i32 0, label %99
    i32 1, label %95
    i32 2, label %96
    i32 3, label %98
  ]

95:                                               ; preds = %87
  call void @inflate_fixed(ptr noundef nonnull %10) #5
  br label %99

96:                                               ; preds = %87
  br label %99

97:                                               ; preds = %87
  unreachable

98:                                               ; preds = %87
  store ptr @.str.1, ptr %13, align 8, !tbaa !9
  br label %99

99:                                               ; preds = %87, %95, %96, %98
  %100 = phi i32 [ 16209, %98 ], [ 16200, %95 ], [ 16196, %96 ], [ 16193, %87 ]
  store i32 %100, ptr %14, align 8, !tbaa !29
  %101 = lshr i64 %89, 3
  %102 = add i32 %90, -3
  br label %1211

103:                                              ; preds = %49
  %104 = and i32 %55, 7
  %105 = zext nneg i32 %104 to i64
  %106 = lshr i64 %54, %105
  %107 = and i32 %55, -8
  %108 = icmp ult i32 %55, 32
  br i1 %108, label %109, label %134

109:                                              ; preds = %103
  %110 = and i32 %55, 24
  %111 = zext nneg i32 %110 to i64
  br label %112

112:                                              ; preds = %109, %121
  %113 = phi i64 [ %111, %109 ], [ %130, %121 ]
  %114 = phi i64 [ %106, %109 ], [ %129, %121 ]
  %115 = phi i32 [ %52, %109 ], [ %123, %121 ]
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

121:                                              ; preds = %117, %112
  %122 = phi i32 [ %118, %117 ], [ %115, %112 ]
  %123 = add i32 %122, -1
  %124 = load ptr, ptr %6, align 8, !tbaa !32
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 1
  store ptr %125, ptr %6, align 8, !tbaa !32
  %126 = load i8, ptr %124, align 1, !tbaa !8
  %127 = zext i8 %126 to i64
  %128 = shl nuw nsw i64 %127, %113
  %129 = add i64 %128, %114
  %130 = add nuw nsw i64 %113, 8
  %131 = icmp samesign ult i64 %113, 24
  br i1 %131, label %112, label %132, !llvm.loop !34

132:                                              ; preds = %121
  %133 = trunc nuw nsw i64 %130 to i32
  br label %134

134:                                              ; preds = %132, %103
  %135 = phi i32 [ %52, %103 ], [ %123, %132 ]
  %136 = phi i64 [ %106, %103 ], [ %129, %132 ]
  %137 = phi i32 [ %107, %103 ], [ %133, %132 ]
  %138 = and i64 %136, 65535
  %139 = lshr i64 %136, 16
  %140 = xor i64 %139, %138
  %141 = icmp eq i64 %140, 65535
  br i1 %141, label %143, label %142

142:                                              ; preds = %134
  store ptr @.str.2, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

143:                                              ; preds = %134
  %144 = trunc i64 %136 to i32
  %145 = and i32 %144, 65535
  store i32 %145, ptr %41, align 4, !tbaa !36
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %180, label %147

147:                                              ; preds = %143, %165
  %148 = phi i32 [ %175, %165 ], [ %53, %143 ]
  %149 = phi i32 [ %172, %165 ], [ %135, %143 ]
  %150 = phi ptr [ %176, %165 ], [ %51, %143 ]
  %151 = phi i32 [ %178, %165 ], [ %145, %143 ]
  %152 = icmp eq i32 %149, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

157:                                              ; preds = %147, %153
  %158 = phi i32 [ %154, %153 ], [ %149, %147 ]
  %159 = icmp eq i32 %148, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load ptr, ptr %24, align 8, !tbaa !25
  %162 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %162, ptr %16, align 8, !tbaa !27
  %163 = call i32 %3(ptr noundef %4, ptr noundef %161, i32 noundef %162) #5
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %1220

165:                                              ; preds = %160, %157
  %166 = phi ptr [ %161, %160 ], [ %150, %157 ]
  %167 = phi i32 [ %162, %160 ], [ %148, %157 ]
  %168 = call i32 @llvm.umin.i32(i32 %151, i32 %158)
  %169 = call i32 @llvm.umin.i32(i32 %168, i32 %167)
  %170 = load ptr, ptr %6, align 8, !tbaa !32
  %171 = zext i32 %169 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %166, ptr align 1 %170, i64 %171, i1 false)
  %172 = sub i32 %158, %169
  %173 = load ptr, ptr %6, align 8, !tbaa !32
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 %171
  store ptr %174, ptr %6, align 8, !tbaa !32
  %175 = sub i32 %167, %169
  %176 = getelementptr inbounds nuw i8, ptr %166, i64 %171
  %177 = load i32, ptr %41, align 4, !tbaa !36
  %178 = sub i32 %177, %169
  store i32 %178, ptr %41, align 4, !tbaa !36
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %147, !llvm.loop !37

180:                                              ; preds = %165, %143
  %181 = phi ptr [ %51, %143 ], [ %176, %165 ]
  %182 = phi i32 [ %135, %143 ], [ %172, %165 ]
  %183 = phi i32 [ %53, %143 ], [ %175, %165 ]
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %1211

184:                                              ; preds = %58, %193
  %185 = phi i64 [ %59, %58 ], [ %202, %193 ]
  %186 = phi i64 [ %54, %58 ], [ %201, %193 ]
  %187 = phi i32 [ %52, %58 ], [ %195, %193 ]
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

193:                                              ; preds = %189, %184
  %194 = phi i32 [ %190, %189 ], [ %187, %184 ]
  %195 = add i32 %194, -1
  %196 = load ptr, ptr %6, align 8, !tbaa !32
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 1
  store ptr %197, ptr %6, align 8, !tbaa !32
  %198 = load i8, ptr %196, align 1, !tbaa !8
  %199 = zext i8 %198 to i64
  %200 = shl nuw nsw i64 %199, %185
  %201 = add i64 %200, %186
  %202 = add nuw nsw i64 %185, 8
  %203 = icmp samesign ult i64 %185, 6
  br i1 %203, label %184, label %204, !llvm.loop !38

204:                                              ; preds = %193
  %205 = trunc nuw nsw i64 %202 to i32
  br label %206

206:                                              ; preds = %204, %56
  %207 = phi i32 [ %52, %56 ], [ %195, %204 ]
  %208 = phi i64 [ %54, %56 ], [ %201, %204 ]
  %209 = phi i32 [ %55, %56 ], [ %205, %204 ]
  %210 = trunc i64 %208 to i32
  %211 = and i32 %210, 31
  %212 = add nuw nsw i32 %211, 257
  store i32 %212, ptr %28, align 4, !tbaa !39
  %213 = lshr i32 %210, 5
  %214 = and i32 %213, 31
  %215 = add nuw nsw i32 %214, 1
  store i32 %215, ptr %29, align 8, !tbaa !40
  %216 = lshr i32 %210, 10
  %217 = and i32 %216, 15
  %218 = add nuw nsw i32 %217, 4
  store i32 %218, ptr %30, align 8, !tbaa !41
  %219 = lshr i64 %208, 14
  %220 = add i32 %209, -14
  %221 = icmp samesign ugt i32 %211, 29
  %222 = icmp samesign ugt i32 %214, 29
  %223 = select i1 %221, i1 true, i1 %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %206
  store ptr @.str.3, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

225:                                              ; preds = %206
  store i32 0, ptr %31, align 4, !tbaa !42
  br label %230

226:                                              ; preds = %260
  %227 = icmp ult i32 %269, 19
  br i1 %227, label %228, label %288

228:                                              ; preds = %226
  %229 = zext nneg i32 %269 to i64
  br label %278

230:                                              ; preds = %225, %260
  %231 = phi i32 [ %261, %260 ], [ %218, %225 ]
  %232 = phi i32 [ %262, %260 ], [ %218, %225 ]
  %233 = phi i32 [ %269, %260 ], [ 0, %225 ]
  %234 = phi i32 [ %276, %260 ], [ %220, %225 ]
  %235 = phi i64 [ %275, %260 ], [ %219, %225 ]
  %236 = phi i32 [ %264, %260 ], [ %207, %225 ]
  %237 = icmp ult i32 %234, 3
  br i1 %237, label %238, label %260

238:                                              ; preds = %230
  %239 = or disjoint i32 %234, 8
  %240 = icmp eq i32 %236, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = load i32, ptr %31, align 4, !tbaa !42
  %246 = load i32, ptr %30, align 8, !tbaa !41
  br label %248

247:                                              ; preds = %241
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

248:                                              ; preds = %244, %238
  %249 = phi i32 [ %246, %244 ], [ %231, %238 ]
  %250 = phi i32 [ %245, %244 ], [ %233, %238 ]
  %251 = phi i32 [ %242, %244 ], [ %236, %238 ]
  %252 = add i32 %251, -1
  %253 = load ptr, ptr %6, align 8, !tbaa !32
  %254 = getelementptr inbounds nuw i8, ptr %253, i64 1
  store ptr %254, ptr %6, align 8, !tbaa !32
  %255 = load i8, ptr %253, align 1, !tbaa !8
  %256 = zext i8 %255 to i64
  %257 = zext nneg i32 %234 to i64
  %258 = shl nuw nsw i64 %256, %257
  %259 = add nuw nsw i64 %258, %235
  br label %260

260:                                              ; preds = %248, %230
  %261 = phi i32 [ %249, %248 ], [ %231, %230 ]
  %262 = phi i32 [ %249, %248 ], [ %232, %230 ]
  %263 = phi i32 [ %250, %248 ], [ %233, %230 ]
  %264 = phi i32 [ %252, %248 ], [ %236, %230 ]
  %265 = phi i64 [ %259, %248 ], [ %235, %230 ]
  %266 = phi i32 [ %239, %248 ], [ %234, %230 ]
  %267 = trunc i64 %265 to i16
  %268 = and i16 %267, 7
  %269 = add i32 %263, 1
  store i32 %269, ptr %31, align 4, !tbaa !42
  %270 = zext i32 %263 to i64
  %271 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !43
  %273 = zext i16 %272 to i64
  %274 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %273
  store i16 %268, ptr %274, align 2, !tbaa !43
  %275 = lshr i64 %265, 3
  %276 = add i32 %266, -3
  %277 = icmp ult i32 %269, %262
  br i1 %277, label %230, label %226, !llvm.loop !45

278:                                              ; preds = %228, %278
  %279 = phi i64 [ %229, %228 ], [ %280, %278 ]
  %280 = add nuw nsw i64 %279, 1
  %281 = getelementptr inbounds nuw [2 x i8], ptr @inflateBack.order, i64 %279
  %282 = load i16, ptr %281, align 2, !tbaa !43
  %283 = zext i16 %282 to i64
  %284 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %283
  store i16 0, ptr %284, align 2, !tbaa !43
  %285 = and i64 %280, 4294967295
  %286 = icmp eq i64 %285, 19
  br i1 %286, label %287, label %278, !llvm.loop !46

287:                                              ; preds = %278
  store i32 19, ptr %31, align 4, !tbaa !42
  br label %288

288:                                              ; preds = %287, %226
  store ptr %33, ptr %34, align 8, !tbaa !47
  store ptr %33, ptr %35, align 8, !tbaa !48
  store i32 7, ptr %36, align 8, !tbaa !49
  %289 = call i32 @inflate_table(i32 noundef 0, ptr noundef nonnull %32, i32 noundef 19, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #5
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %288
  store ptr @.str.4, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

292:                                              ; preds = %288
  store i32 0, ptr %31, align 4, !tbaa !42
  %293 = load i32, ptr %28, align 4, !tbaa !39
  %294 = load i32, ptr %29, align 8, !tbaa !40
  %295 = sub i32 0, %293
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %607, label %297

297:                                              ; preds = %292, %599
  %298 = phi i32 [ %605, %599 ], [ %276, %292 ]
  %299 = phi i64 [ %604, %599 ], [ %275, %292 ]
  %300 = phi i32 [ %603, %599 ], [ %264, %292 ]
  %301 = load ptr, ptr %35, align 8, !tbaa !48
  %302 = trunc i64 %299 to i32
  %303 = load i32, ptr %36, align 8, !tbaa !49
  %304 = shl nsw i32 -1, %303
  %305 = xor i32 %304, -1
  %306 = and i32 %305, %302
  %307 = zext nneg i32 %306 to i64
  %308 = getelementptr inbounds nuw [4 x i8], ptr %301, i64 %307
  %309 = getelementptr inbounds nuw i8, ptr %308, i64 1
  %310 = load i8, ptr %309, align 1, !tbaa !8
  %311 = zext i8 %310 to i32
  %312 = icmp ult i32 %298, %311
  br i1 %312, label %313, label %354

313:                                              ; preds = %297
  %314 = zext nneg i32 %298 to i64
  br label %315

315:                                              ; preds = %313, %329
  %316 = phi i32 [ %303, %313 ], [ %330, %329 ]
  %317 = phi ptr [ %301, %313 ], [ %331, %329 ]
  %318 = phi i64 [ %314, %313 ], [ %340, %329 ]
  %319 = phi i64 [ %299, %313 ], [ %339, %329 ]
  %320 = phi i32 [ %300, %313 ], [ %333, %329 ]
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %315
  %323 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  %326 = load ptr, ptr %35, align 8, !tbaa !48
  %327 = load i32, ptr %36, align 8, !tbaa !49
  br label %329

328:                                              ; preds = %322
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

329:                                              ; preds = %325, %315
  %330 = phi i32 [ %327, %325 ], [ %316, %315 ]
  %331 = phi ptr [ %326, %325 ], [ %317, %315 ]
  %332 = phi i32 [ %323, %325 ], [ %320, %315 ]
  %333 = add i32 %332, -1
  %334 = load ptr, ptr %6, align 8, !tbaa !32
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 1
  store ptr %335, ptr %6, align 8, !tbaa !32
  %336 = load i8, ptr %334, align 1, !tbaa !8
  %337 = zext i8 %336 to i64
  %338 = shl i64 %337, %318
  %339 = add i64 %338, %319
  %340 = add nuw nsw i64 %318, 8
  %341 = trunc i64 %339 to i32
  %342 = shl nsw i32 -1, %330
  %343 = xor i32 %342, -1
  %344 = and i32 %343, %341
  %345 = zext nneg i32 %344 to i64
  %346 = getelementptr inbounds nuw [4 x i8], ptr %331, i64 %345
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 1
  %348 = load i8, ptr %347, align 1, !tbaa !8
  %349 = zext i8 %348 to i64
  %350 = icmp samesign ult i64 %340, %349
  br i1 %350, label %315, label %351

351:                                              ; preds = %329
  %352 = zext i8 %348 to i32
  %353 = trunc nuw nsw i64 %340 to i32
  br label %354

354:                                              ; preds = %351, %297
  %355 = phi i32 [ %311, %297 ], [ %352, %351 ]
  %356 = phi i32 [ %300, %297 ], [ %333, %351 ]
  %357 = phi i64 [ %299, %297 ], [ %339, %351 ]
  %358 = phi i32 [ %298, %297 ], [ %353, %351 ]
  %359 = phi i8 [ %310, %297 ], [ %348, %351 ]
  %360 = phi ptr [ %308, %297 ], [ %346, %351 ]
  %361 = getelementptr inbounds nuw i8, ptr %360, i64 2
  %362 = load i16, ptr %361, align 2, !tbaa !43
  %363 = icmp ult i16 %362, 16
  br i1 %363, label %364, label %375

364:                                              ; preds = %354
  %365 = zext nneg i8 %359 to i64
  %366 = lshr i64 %357, %365
  %367 = sub i32 %358, %355
  %368 = load i32, ptr %31, align 4, !tbaa !42
  %369 = add i32 %368, 1
  store i32 %369, ptr %31, align 4, !tbaa !42
  %370 = zext i32 %368 to i64
  %371 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %370
  store i16 %362, ptr %371, align 2, !tbaa !43
  %372 = load i32, ptr %28, align 4, !tbaa !39
  %373 = load i32, ptr %29, align 8, !tbaa !40
  %374 = add i32 %373, %372
  br label %599

375:                                              ; preds = %354
  switch i16 %362, label %388 [
    i16 16, label %382
    i16 17, label %376
  ]

376:                                              ; preds = %375
  %377 = add nuw nsw i32 %355, 3
  %378 = icmp ult i32 %358, %377
  br i1 %378, label %379, label %458

379:                                              ; preds = %376
  %380 = zext nneg i32 %358 to i64
  %381 = zext nneg i32 %377 to i64
  br label %436

382:                                              ; preds = %375
  %383 = add nuw nsw i32 %355, 2
  %384 = icmp ult i32 %358, %383
  br i1 %384, label %385, label %416

385:                                              ; preds = %382
  %386 = zext nneg i32 %358 to i64
  %387 = zext nneg i32 %383 to i64
  br label %394

388:                                              ; preds = %375
  %389 = add nuw nsw i32 %355, 7
  %390 = icmp ult i32 %358, %389
  br i1 %390, label %391, label %492

391:                                              ; preds = %388
  %392 = zext nneg i32 %358 to i64
  %393 = zext nneg i32 %389 to i64
  br label %470

394:                                              ; preds = %385, %403
  %395 = phi i64 [ %386, %385 ], [ %412, %403 ]
  %396 = phi i64 [ %357, %385 ], [ %411, %403 ]
  %397 = phi i32 [ %356, %385 ], [ %405, %403 ]
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %394
  %400 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

403:                                              ; preds = %399, %394
  %404 = phi i32 [ %400, %399 ], [ %397, %394 ]
  %405 = add i32 %404, -1
  %406 = load ptr, ptr %6, align 8, !tbaa !32
  %407 = getelementptr inbounds nuw i8, ptr %406, i64 1
  store ptr %407, ptr %6, align 8, !tbaa !32
  %408 = load i8, ptr %406, align 1, !tbaa !8
  %409 = zext i8 %408 to i64
  %410 = shl i64 %409, %395
  %411 = add i64 %410, %396
  %412 = add nuw nsw i64 %395, 8
  %413 = icmp samesign ult i64 %412, %387
  br i1 %413, label %394, label %414, !llvm.loop !50

414:                                              ; preds = %403
  %415 = trunc nuw nsw i64 %412 to i32
  br label %416

416:                                              ; preds = %414, %382
  %417 = phi i32 [ %356, %382 ], [ %405, %414 ]
  %418 = phi i64 [ %357, %382 ], [ %411, %414 ]
  %419 = phi i32 [ %358, %382 ], [ %415, %414 ]
  %420 = zext nneg i8 %359 to i64
  %421 = lshr i64 %418, %420
  %422 = sub nuw i32 %419, %355
  %423 = load i32, ptr %31, align 4, !tbaa !42
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %416
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

426:                                              ; preds = %416
  %427 = add i32 %423, -1
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %428
  %430 = load i16, ptr %429, align 2, !tbaa !43
  %431 = trunc i64 %421 to i32
  %432 = and i32 %431, 3
  %433 = add nuw nsw i32 %432, 3
  %434 = lshr i64 %421, 2
  %435 = add i32 %422, -2
  br label %504

436:                                              ; preds = %379, %445
  %437 = phi i64 [ %380, %379 ], [ %454, %445 ]
  %438 = phi i64 [ %357, %379 ], [ %453, %445 ]
  %439 = phi i32 [ %356, %379 ], [ %447, %445 ]
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %436
  %442 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %445

444:                                              ; preds = %441
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

445:                                              ; preds = %441, %436
  %446 = phi i32 [ %442, %441 ], [ %439, %436 ]
  %447 = add i32 %446, -1
  %448 = load ptr, ptr %6, align 8, !tbaa !32
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 1
  store ptr %449, ptr %6, align 8, !tbaa !32
  %450 = load i8, ptr %448, align 1, !tbaa !8
  %451 = zext i8 %450 to i64
  %452 = shl i64 %451, %437
  %453 = add i64 %452, %438
  %454 = add nuw nsw i64 %437, 8
  %455 = icmp samesign ult i64 %454, %381
  br i1 %455, label %436, label %456, !llvm.loop !51

456:                                              ; preds = %445
  %457 = trunc nuw nsw i64 %454 to i32
  br label %458

458:                                              ; preds = %456, %376
  %459 = phi i32 [ %356, %376 ], [ %447, %456 ]
  %460 = phi i64 [ %357, %376 ], [ %453, %456 ]
  %461 = phi i32 [ %358, %376 ], [ %457, %456 ]
  %462 = zext nneg i8 %359 to i64
  %463 = lshr i64 %460, %462
  %464 = trunc i64 %463 to i32
  %465 = and i32 %464, 7
  %466 = add nuw nsw i32 %465, 3
  %467 = lshr i64 %463, 3
  %468 = sub i32 %461, %355
  %469 = add i32 %468, -3
  br label %504

470:                                              ; preds = %391, %479
  %471 = phi i64 [ %392, %391 ], [ %488, %479 ]
  %472 = phi i64 [ %357, %391 ], [ %487, %479 ]
  %473 = phi i32 [ %356, %391 ], [ %481, %479 ]
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %470
  %476 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %475
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

479:                                              ; preds = %475, %470
  %480 = phi i32 [ %476, %475 ], [ %473, %470 ]
  %481 = add i32 %480, -1
  %482 = load ptr, ptr %6, align 8, !tbaa !32
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 1
  store ptr %483, ptr %6, align 8, !tbaa !32
  %484 = load i8, ptr %482, align 1, !tbaa !8
  %485 = zext i8 %484 to i64
  %486 = shl i64 %485, %471
  %487 = add i64 %486, %472
  %488 = add nuw nsw i64 %471, 8
  %489 = icmp samesign ult i64 %488, %393
  br i1 %489, label %470, label %490, !llvm.loop !52

490:                                              ; preds = %479
  %491 = trunc nuw nsw i64 %488 to i32
  br label %492

492:                                              ; preds = %490, %388
  %493 = phi i32 [ %356, %388 ], [ %481, %490 ]
  %494 = phi i64 [ %357, %388 ], [ %487, %490 ]
  %495 = phi i32 [ %358, %388 ], [ %491, %490 ]
  %496 = zext nneg i8 %359 to i64
  %497 = lshr i64 %494, %496
  %498 = trunc i64 %497 to i32
  %499 = and i32 %498, 127
  %500 = add nuw nsw i32 %499, 11
  %501 = lshr i64 %497, 7
  %502 = sub i32 %495, %355
  %503 = add i32 %502, -7
  br label %504

504:                                              ; preds = %458, %492, %426
  %505 = phi i32 [ %417, %426 ], [ %459, %458 ], [ %493, %492 ]
  %506 = phi i64 [ %434, %426 ], [ %467, %458 ], [ %501, %492 ]
  %507 = phi i32 [ %435, %426 ], [ %469, %458 ], [ %503, %492 ]
  %508 = phi i32 [ %433, %426 ], [ %466, %458 ], [ %500, %492 ]
  %509 = phi i16 [ %430, %426 ], [ 0, %458 ], [ 0, %492 ]
  %510 = load i32, ptr %31, align 4, !tbaa !42
  %511 = add i32 %510, %508
  %512 = load i32, ptr %28, align 4, !tbaa !39
  %513 = load i32, ptr %29, align 8, !tbaa !40
  %514 = add i32 %513, %512
  %515 = icmp ugt i32 %511, %514
  br i1 %515, label %579, label %516

516:                                              ; preds = %504
  %517 = icmp ult i32 %508, 4
  %518 = sub nsw i32 0, %508
  %519 = icmp ugt i32 %510, %518
  %520 = select i1 %517, i1 true, i1 %519
  br i1 %520, label %558, label %521

521:                                              ; preds = %516
  %522 = icmp ult i32 %508, 16
  br i1 %522, label %542, label %523

523:                                              ; preds = %521
  %524 = and i32 %508, 12
  %525 = and i32 %508, -16
  %526 = and i32 %508, 15
  %527 = add i32 %510, %525
  %528 = insertelement <8 x i16> poison, i16 %509, i64 0
  %529 = shufflevector <8 x i16> %528, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %530

530:                                              ; preds = %530, %523
  %531 = phi i32 [ 0, %523 ], [ %536, %530 ]
  %532 = add i32 %510, %531
  %533 = zext i32 %532 to i64
  %534 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %533
  %535 = getelementptr inbounds nuw i8, ptr %534, i64 16
  store <8 x i16> %529, ptr %534, align 2, !tbaa !43
  store <8 x i16> %529, ptr %535, align 2, !tbaa !43
  %536 = add nuw i32 %531, 16
  %537 = icmp eq i32 %536, %525
  br i1 %537, label %538, label %530, !llvm.loop !53

538:                                              ; preds = %530
  %539 = icmp eq i32 %508, %525
  br i1 %539, label %597, label %540

540:                                              ; preds = %538
  %541 = icmp eq i32 %524, 0
  br i1 %541, label %558, label %542, !prof !56

542:                                              ; preds = %521, %540
  %543 = phi i32 [ %525, %540 ], [ 0, %521 ]
  %544 = and i32 %508, -4
  %545 = and i32 %508, 3
  %546 = add i32 %510, %544
  %547 = insertelement <4 x i16> poison, i16 %509, i64 0
  %548 = shufflevector <4 x i16> %547, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %549

549:                                              ; preds = %549, %542
  %550 = phi i32 [ %543, %542 ], [ %554, %549 ]
  %551 = add i32 %510, %550
  %552 = zext i32 %551 to i64
  %553 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %552
  store <4 x i16> %548, ptr %553, align 2, !tbaa !43
  %554 = add nuw i32 %550, 4
  %555 = icmp eq i32 %554, %544
  br i1 %555, label %556, label %549, !llvm.loop !57

556:                                              ; preds = %549
  %557 = icmp eq i32 %508, %544
  br i1 %557, label %597, label %558

558:                                              ; preds = %516, %540, %556
  %559 = phi i32 [ %508, %516 ], [ %526, %540 ], [ %545, %556 ]
  %560 = phi i32 [ %510, %516 ], [ %527, %540 ], [ %546, %556 ]
  %561 = add nsw i32 %559, -1
  %562 = and i32 %559, 3
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %574, label %564

564:                                              ; preds = %558, %564
  %565 = phi i32 [ %568, %564 ], [ %559, %558 ]
  %566 = phi i32 [ %569, %564 ], [ %560, %558 ]
  %567 = phi i32 [ %572, %564 ], [ 0, %558 ]
  %568 = add i32 %565, -1
  %569 = add i32 %566, 1
  %570 = zext i32 %566 to i64
  %571 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %570
  store i16 %509, ptr %571, align 2, !tbaa !43
  %572 = add i32 %567, 1
  %573 = icmp eq i32 %572, %562
  br i1 %573, label %574, label %564, !llvm.loop !58

574:                                              ; preds = %564, %558
  %575 = phi i32 [ poison, %558 ], [ %569, %564 ]
  %576 = phi i32 [ %559, %558 ], [ %568, %564 ]
  %577 = phi i32 [ %560, %558 ], [ %569, %564 ]
  %578 = icmp ult i32 %561, 3
  br i1 %578, label %597, label %580

579:                                              ; preds = %504
  store ptr @.str.5, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

580:                                              ; preds = %574, %580
  %581 = phi i32 [ %592, %580 ], [ %576, %574 ]
  %582 = phi i32 [ %593, %580 ], [ %577, %574 ]
  %583 = add i32 %582, 1
  %584 = zext i32 %582 to i64
  %585 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %584
  store i16 %509, ptr %585, align 2, !tbaa !43
  %586 = add i32 %582, 2
  %587 = zext i32 %583 to i64
  %588 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %587
  store i16 %509, ptr %588, align 2, !tbaa !43
  %589 = add i32 %582, 3
  %590 = zext i32 %586 to i64
  %591 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %590
  store i16 %509, ptr %591, align 2, !tbaa !43
  %592 = add i32 %581, -4
  %593 = add i32 %582, 4
  %594 = zext i32 %589 to i64
  %595 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %594
  store i16 %509, ptr %595, align 2, !tbaa !43
  %596 = icmp eq i32 %592, 0
  br i1 %596, label %597, label %580, !llvm.loop !60

597:                                              ; preds = %574, %580, %556, %538
  %598 = phi i32 [ %546, %556 ], [ %527, %538 ], [ %575, %574 ], [ %593, %580 ]
  store i32 %598, ptr %31, align 4, !tbaa !42
  br label %599

599:                                              ; preds = %597, %364
  %600 = phi i32 [ %514, %597 ], [ %374, %364 ]
  %601 = phi i32 [ %512, %597 ], [ %372, %364 ]
  %602 = phi i32 [ %598, %597 ], [ %369, %364 ]
  %603 = phi i32 [ %505, %597 ], [ %356, %364 ]
  %604 = phi i64 [ %506, %597 ], [ %366, %364 ]
  %605 = phi i32 [ %507, %597 ], [ %367, %364 ]
  %606 = icmp ult i32 %602, %600
  br i1 %606, label %297, label %607, !llvm.loop !61

607:                                              ; preds = %599, %292
  %608 = phi i32 [ %293, %292 ], [ %601, %599 ]
  %609 = phi i32 [ %264, %292 ], [ %603, %599 ]
  %610 = phi i64 [ %275, %292 ], [ %604, %599 ]
  %611 = phi i32 [ %276, %292 ], [ %605, %599 ]
  %612 = load i32, ptr %14, align 8, !tbaa !29
  %613 = icmp eq i32 %612, 16209
  br i1 %613, label %1211, label %614

614:                                              ; preds = %607
  %615 = load i16, ptr %38, align 8, !tbaa !43
  %616 = icmp eq i16 %615, 0
  br i1 %616, label %617, label %618

617:                                              ; preds = %614
  store ptr @.str.6, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

618:                                              ; preds = %614
  store ptr %33, ptr %34, align 8, !tbaa !47
  store ptr %33, ptr %35, align 8, !tbaa !48
  store i32 9, ptr %36, align 8, !tbaa !49
  %619 = call i32 @inflate_table(i32 noundef 1, ptr noundef nonnull %32, i32 noundef %608, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %37) #5
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %622, label %621

621:                                              ; preds = %618
  store ptr @.str.7, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

622:                                              ; preds = %618
  %623 = load ptr, ptr %34, align 8, !tbaa !47
  store ptr %623, ptr %39, align 8, !tbaa !62
  store i32 6, ptr %40, align 4, !tbaa !63
  %624 = load i32, ptr %28, align 4, !tbaa !39
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds nuw [2 x i8], ptr %32, i64 %625
  %627 = load i32, ptr %29, align 8, !tbaa !40
  %628 = call i32 @inflate_table(i32 noundef 2, ptr noundef nonnull %626, i32 noundef %627, ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %37) #5
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %631, label %630

630:                                              ; preds = %622
  store ptr @.str.8, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

631:                                              ; preds = %622
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %632

632:                                              ; preds = %49, %631
  %633 = phi i32 [ %609, %631 ], [ %52, %49 ]
  %634 = phi i64 [ %610, %631 ], [ %54, %49 ]
  %635 = phi i32 [ %611, %631 ], [ %55, %49 ]
  %636 = icmp ugt i32 %633, 5
  %637 = icmp ugt i32 %53, 257
  %638 = select i1 %636, i1 %637, i1 false
  br i1 %638, label %654, label %639

639:                                              ; preds = %632
  %640 = load ptr, ptr %35, align 8, !tbaa !48
  %641 = trunc i64 %634 to i32
  %642 = load i32, ptr %36, align 8, !tbaa !49
  %643 = shl nsw i32 -1, %642
  %644 = xor i32 %643, -1
  %645 = and i32 %644, %641
  %646 = zext nneg i32 %645 to i64
  %647 = getelementptr inbounds nuw [4 x i8], ptr %640, i64 %646
  %648 = getelementptr inbounds nuw i8, ptr %647, i64 1
  %649 = load i8, ptr %648, align 1, !tbaa !8
  %650 = zext i8 %649 to i32
  %651 = icmp ult i32 %635, %650
  br i1 %651, label %652, label %702

652:                                              ; preds = %639
  %653 = zext nneg i32 %635 to i64
  br label %663

654:                                              ; preds = %632
  store ptr %51, ptr %44, align 8, !tbaa !64
  store i32 %53, ptr %45, align 8, !tbaa !65
  %655 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %655, ptr %0, align 8, !tbaa !31
  store i32 %633, ptr %46, align 8, !tbaa !33
  store i64 %634, ptr %47, align 8, !tbaa !66
  store i32 %635, ptr %48, align 8, !tbaa !67
  %656 = load i32, ptr %26, align 4, !tbaa !24
  call void @inflate_fast(ptr noundef nonnull %0, i32 noundef %656) #5
  %657 = load ptr, ptr %44, align 8, !tbaa !64
  %658 = load i32, ptr %45, align 8, !tbaa !65
  %659 = load ptr, ptr %0, align 8, !tbaa !31
  store ptr %659, ptr %6, align 8, !tbaa !32
  %660 = load i32, ptr %46, align 8, !tbaa !33
  %661 = load i64, ptr %47, align 8, !tbaa !66
  %662 = load i32, ptr %48, align 8, !tbaa !67
  br label %1211

663:                                              ; preds = %652, %677
  %664 = phi i32 [ %642, %652 ], [ %678, %677 ]
  %665 = phi ptr [ %640, %652 ], [ %679, %677 ]
  %666 = phi i64 [ %653, %652 ], [ %688, %677 ]
  %667 = phi i64 [ %634, %652 ], [ %687, %677 ]
  %668 = phi i32 [ %633, %652 ], [ %681, %677 ]
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %677

670:                                              ; preds = %663
  %671 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %676, label %673

673:                                              ; preds = %670
  %674 = load ptr, ptr %35, align 8, !tbaa !48
  %675 = load i32, ptr %36, align 8, !tbaa !49
  br label %677

676:                                              ; preds = %670
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

677:                                              ; preds = %673, %663
  %678 = phi i32 [ %675, %673 ], [ %664, %663 ]
  %679 = phi ptr [ %674, %673 ], [ %665, %663 ]
  %680 = phi i32 [ %671, %673 ], [ %668, %663 ]
  %681 = add i32 %680, -1
  %682 = load ptr, ptr %6, align 8, !tbaa !32
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 1
  store ptr %683, ptr %6, align 8, !tbaa !32
  %684 = load i8, ptr %682, align 1, !tbaa !8
  %685 = zext i8 %684 to i64
  %686 = shl i64 %685, %666
  %687 = add i64 %686, %667
  %688 = add nuw nsw i64 %666, 8
  %689 = trunc i64 %687 to i32
  %690 = shl nsw i32 -1, %678
  %691 = xor i32 %690, -1
  %692 = and i32 %691, %689
  %693 = zext nneg i32 %692 to i64
  %694 = getelementptr inbounds nuw [4 x i8], ptr %679, i64 %693
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 1
  %696 = load i8, ptr %695, align 1, !tbaa !8
  %697 = zext i8 %696 to i64
  %698 = icmp samesign ult i64 %688, %697
  br i1 %698, label %663, label %699

699:                                              ; preds = %677
  %700 = zext i8 %696 to i32
  %701 = trunc nuw nsw i64 %688 to i32
  br label %702

702:                                              ; preds = %699, %639
  %703 = phi ptr [ %640, %639 ], [ %679, %699 ]
  %704 = phi i32 [ %633, %639 ], [ %681, %699 ]
  %705 = phi i64 [ %634, %639 ], [ %687, %699 ]
  %706 = phi i32 [ %635, %639 ], [ %701, %699 ]
  %707 = phi ptr [ %647, %639 ], [ %694, %699 ]
  %708 = phi i8 [ %649, %639 ], [ %696, %699 ]
  %709 = phi i32 [ %650, %639 ], [ %700, %699 ]
  %710 = getelementptr inbounds nuw i8, ptr %707, i64 2
  %711 = load i16, ptr %710, align 2, !tbaa !43
  %712 = load i8, ptr %707, align 2, !tbaa !8
  %713 = add i8 %712, -1
  %714 = icmp ult i8 %713, 15
  br i1 %714, label %715, label %783

715:                                              ; preds = %702
  %716 = zext nneg i8 %712 to i32
  %717 = zext i16 %711 to i32
  %718 = add nuw nsw i32 %709, %716
  %719 = shl nsw i32 -1, %718
  %720 = xor i32 %719, -1
  %721 = trunc i64 %705 to i32
  %722 = and i32 %721, %720
  %723 = lshr i32 %722, %709
  %724 = add nuw i32 %723, %717
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds nuw [4 x i8], ptr %703, i64 %725
  %727 = getelementptr inbounds nuw i8, ptr %726, i64 1
  %728 = load i8, ptr %727, align 1, !tbaa !8
  %729 = zext i8 %728 to i32
  %730 = add nuw nsw i32 %709, %729
  %731 = icmp ugt i32 %730, %706
  br i1 %731, label %732, label %771

732:                                              ; preds = %715
  %733 = zext nneg i32 %706 to i64
  br label %734

734:                                              ; preds = %732, %746
  %735 = phi ptr [ %703, %732 ], [ %747, %746 ]
  %736 = phi i64 [ %733, %732 ], [ %756, %746 ]
  %737 = phi i64 [ %705, %732 ], [ %755, %746 ]
  %738 = phi i32 [ %704, %732 ], [ %749, %746 ]
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %740, label %746

740:                                              ; preds = %734
  %741 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %745, label %743

743:                                              ; preds = %740
  %744 = load ptr, ptr %35, align 8, !tbaa !48
  br label %746

745:                                              ; preds = %740
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

746:                                              ; preds = %743, %734
  %747 = phi ptr [ %744, %743 ], [ %735, %734 ]
  %748 = phi i32 [ %741, %743 ], [ %738, %734 ]
  %749 = add i32 %748, -1
  %750 = load ptr, ptr %6, align 8, !tbaa !32
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 1
  store ptr %751, ptr %6, align 8, !tbaa !32
  %752 = load i8, ptr %750, align 1, !tbaa !8
  %753 = zext i8 %752 to i64
  %754 = shl i64 %753, %736
  %755 = add i64 %754, %737
  %756 = add nuw nsw i64 %736, 8
  %757 = trunc i64 %755 to i32
  %758 = and i32 %757, %720
  %759 = lshr i32 %758, %709
  %760 = add nuw i32 %759, %717
  %761 = zext i32 %760 to i64
  %762 = getelementptr inbounds nuw [4 x i8], ptr %747, i64 %761
  %763 = getelementptr inbounds nuw i8, ptr %762, i64 1
  %764 = load i8, ptr %763, align 1, !tbaa !8
  %765 = zext i8 %764 to i32
  %766 = add nuw nsw i32 %709, %765
  %767 = zext nneg i32 %766 to i64
  %768 = icmp samesign ult i64 %756, %767
  br i1 %768, label %734, label %769

769:                                              ; preds = %746
  %770 = trunc nuw nsw i64 %756 to i32
  br label %771

771:                                              ; preds = %769, %715
  %772 = phi i32 [ %704, %715 ], [ %749, %769 ]
  %773 = phi i64 [ %705, %715 ], [ %755, %769 ]
  %774 = phi i32 [ %706, %715 ], [ %770, %769 ]
  %775 = phi ptr [ %726, %715 ], [ %762, %769 ]
  %776 = phi i8 [ %728, %715 ], [ %764, %769 ]
  %777 = getelementptr inbounds nuw i8, ptr %775, i64 2
  %778 = load i16, ptr %777, align 2, !tbaa !43
  %779 = load i8, ptr %775, align 2, !tbaa !8
  %780 = zext nneg i8 %708 to i64
  %781 = lshr i64 %773, %780
  %782 = sub nuw i32 %774, %709
  br label %783

783:                                              ; preds = %702, %771
  %784 = phi i32 [ %772, %771 ], [ %704, %702 ]
  %785 = phi i64 [ %781, %771 ], [ %705, %702 ]
  %786 = phi i32 [ %782, %771 ], [ %706, %702 ]
  %787 = phi i16 [ %778, %771 ], [ %711, %702 ]
  %788 = phi i8 [ %776, %771 ], [ %708, %702 ]
  %789 = phi i8 [ %779, %771 ], [ %712, %702 ]
  %790 = zext i8 %788 to i32
  %791 = zext nneg i8 %788 to i64
  %792 = lshr i64 %785, %791
  %793 = sub i32 %786, %790
  %794 = zext i16 %787 to i32
  store i32 %794, ptr %41, align 4, !tbaa !36
  %795 = zext i8 %789 to i32
  %796 = icmp eq i8 %789, 0
  br i1 %796, label %797, label %813

797:                                              ; preds = %783
  %798 = icmp eq i32 %53, 0
  br i1 %798, label %799, label %806

799:                                              ; preds = %797
  %800 = load ptr, ptr %24, align 8, !tbaa !25
  %801 = load i32, ptr %26, align 4, !tbaa !24
  store i32 %801, ptr %16, align 8, !tbaa !27
  %802 = call i32 %3(ptr noundef %4, ptr noundef %800, i32 noundef %801) #5
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %1220

804:                                              ; preds = %799
  %805 = load i32, ptr %41, align 4, !tbaa !36
  br label %806

806:                                              ; preds = %804, %797
  %807 = phi i32 [ %805, %804 ], [ %794, %797 ]
  %808 = phi ptr [ %800, %804 ], [ %51, %797 ]
  %809 = phi i32 [ %801, %804 ], [ %53, %797 ]
  %810 = trunc i32 %807 to i8
  %811 = getelementptr inbounds nuw i8, ptr %808, i64 1
  store i8 %810, ptr %808, align 1, !tbaa !8
  %812 = add i32 %809, -1
  store i32 16200, ptr %14, align 8, !tbaa !29
  br label %1211

813:                                              ; preds = %783
  %814 = and i32 %795, 32
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %817, label %816

816:                                              ; preds = %813
  store i32 16191, ptr %14, align 8, !tbaa !29
  br label %1211

817:                                              ; preds = %813
  %818 = and i32 %795, 64
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %821, label %820

820:                                              ; preds = %817
  store ptr @.str.9, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

821:                                              ; preds = %817
  %822 = and i32 %795, 15
  store i32 %822, ptr %42, align 4, !tbaa !68
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %867, label %824

824:                                              ; preds = %821
  %825 = icmp ult i32 %793, %822
  br i1 %825, label %826, label %853

826:                                              ; preds = %824, %838
  %827 = phi i32 [ %839, %838 ], [ %822, %824 ]
  %828 = phi i32 [ %849, %838 ], [ %793, %824 ]
  %829 = phi i64 [ %848, %838 ], [ %792, %824 ]
  %830 = phi i32 [ %841, %838 ], [ %784, %824 ]
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %832, label %838

832:                                              ; preds = %826
  %833 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %837, label %835

835:                                              ; preds = %832
  %836 = load i32, ptr %42, align 4, !tbaa !68
  br label %838

837:                                              ; preds = %832
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

838:                                              ; preds = %835, %826
  %839 = phi i32 [ %836, %835 ], [ %827, %826 ]
  %840 = phi i32 [ %833, %835 ], [ %830, %826 ]
  %841 = add i32 %840, -1
  %842 = load ptr, ptr %6, align 8, !tbaa !32
  %843 = getelementptr inbounds nuw i8, ptr %842, i64 1
  store ptr %843, ptr %6, align 8, !tbaa !32
  %844 = load i8, ptr %842, align 1, !tbaa !8
  %845 = zext i8 %844 to i64
  %846 = zext nneg i32 %828 to i64
  %847 = shl i64 %845, %846
  %848 = add i64 %847, %829
  %849 = add i32 %828, 8
  %850 = icmp ult i32 %849, %839
  br i1 %850, label %826, label %851, !llvm.loop !69

851:                                              ; preds = %838
  %852 = load i32, ptr %41, align 4, !tbaa !36
  br label %853

853:                                              ; preds = %851, %824
  %854 = phi i32 [ %794, %824 ], [ %852, %851 ]
  %855 = phi i32 [ %784, %824 ], [ %841, %851 ]
  %856 = phi i64 [ %792, %824 ], [ %848, %851 ]
  %857 = phi i32 [ %793, %824 ], [ %849, %851 ]
  %858 = phi i32 [ %822, %824 ], [ %839, %851 ]
  %859 = trunc i64 %856 to i32
  %860 = shl nsw i32 -1, %858
  %861 = xor i32 %860, -1
  %862 = and i32 %861, %859
  %863 = add i32 %854, %862
  store i32 %863, ptr %41, align 4, !tbaa !36
  %864 = zext nneg i32 %858 to i64
  %865 = lshr i64 %856, %864
  %866 = sub nuw i32 %857, %858
  br label %867

867:                                              ; preds = %853, %821
  %868 = phi i32 [ %855, %853 ], [ %784, %821 ]
  %869 = phi i64 [ %865, %853 ], [ %792, %821 ]
  %870 = phi i32 [ %866, %853 ], [ %793, %821 ]
  %871 = load ptr, ptr %39, align 8, !tbaa !62
  %872 = trunc i64 %869 to i32
  %873 = load i32, ptr %40, align 4, !tbaa !63
  %874 = shl nsw i32 -1, %873
  %875 = xor i32 %874, -1
  %876 = and i32 %875, %872
  %877 = zext nneg i32 %876 to i64
  %878 = getelementptr inbounds nuw [4 x i8], ptr %871, i64 %877
  %879 = getelementptr inbounds nuw i8, ptr %878, i64 1
  %880 = load i8, ptr %879, align 1, !tbaa !8
  %881 = zext i8 %880 to i32
  %882 = icmp ult i32 %870, %881
  br i1 %882, label %883, label %924

883:                                              ; preds = %867
  %884 = zext nneg i32 %870 to i64
  br label %885

885:                                              ; preds = %883, %899
  %886 = phi i32 [ %873, %883 ], [ %900, %899 ]
  %887 = phi ptr [ %871, %883 ], [ %901, %899 ]
  %888 = phi i64 [ %884, %883 ], [ %910, %899 ]
  %889 = phi i64 [ %869, %883 ], [ %909, %899 ]
  %890 = phi i32 [ %868, %883 ], [ %903, %899 ]
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %892, label %899

892:                                              ; preds = %885
  %893 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %898, label %895

895:                                              ; preds = %892
  %896 = load ptr, ptr %39, align 8, !tbaa !62
  %897 = load i32, ptr %40, align 4, !tbaa !63
  br label %899

898:                                              ; preds = %892
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

899:                                              ; preds = %895, %885
  %900 = phi i32 [ %897, %895 ], [ %886, %885 ]
  %901 = phi ptr [ %896, %895 ], [ %887, %885 ]
  %902 = phi i32 [ %893, %895 ], [ %890, %885 ]
  %903 = add i32 %902, -1
  %904 = load ptr, ptr %6, align 8, !tbaa !32
  %905 = getelementptr inbounds nuw i8, ptr %904, i64 1
  store ptr %905, ptr %6, align 8, !tbaa !32
  %906 = load i8, ptr %904, align 1, !tbaa !8
  %907 = zext i8 %906 to i64
  %908 = shl i64 %907, %888
  %909 = add i64 %908, %889
  %910 = add nuw nsw i64 %888, 8
  %911 = trunc i64 %909 to i32
  %912 = shl nsw i32 -1, %900
  %913 = xor i32 %912, -1
  %914 = and i32 %913, %911
  %915 = zext nneg i32 %914 to i64
  %916 = getelementptr inbounds nuw [4 x i8], ptr %901, i64 %915
  %917 = getelementptr inbounds nuw i8, ptr %916, i64 1
  %918 = load i8, ptr %917, align 1, !tbaa !8
  %919 = zext i8 %918 to i64
  %920 = icmp samesign ult i64 %910, %919
  br i1 %920, label %885, label %921

921:                                              ; preds = %899
  %922 = zext i8 %918 to i32
  %923 = trunc nuw nsw i64 %910 to i32
  br label %924

924:                                              ; preds = %921, %867
  %925 = phi ptr [ %871, %867 ], [ %901, %921 ]
  %926 = phi i32 [ %868, %867 ], [ %903, %921 ]
  %927 = phi i64 [ %869, %867 ], [ %909, %921 ]
  %928 = phi i32 [ %870, %867 ], [ %923, %921 ]
  %929 = phi ptr [ %878, %867 ], [ %916, %921 ]
  %930 = phi i8 [ %880, %867 ], [ %918, %921 ]
  %931 = phi i32 [ %881, %867 ], [ %922, %921 ]
  %932 = getelementptr inbounds nuw i8, ptr %929, i64 2
  %933 = load i16, ptr %932, align 2, !tbaa !43
  %934 = load i8, ptr %929, align 2, !tbaa !8
  %935 = icmp ult i8 %934, 16
  br i1 %935, label %936, label %1004

936:                                              ; preds = %924
  %937 = zext nneg i8 %934 to i32
  %938 = zext i16 %933 to i32
  %939 = add nuw nsw i32 %931, %937
  %940 = shl nsw i32 -1, %939
  %941 = xor i32 %940, -1
  %942 = trunc i64 %927 to i32
  %943 = and i32 %942, %941
  %944 = lshr i32 %943, %931
  %945 = add nuw i32 %944, %938
  %946 = zext i32 %945 to i64
  %947 = getelementptr inbounds nuw [4 x i8], ptr %925, i64 %946
  %948 = getelementptr inbounds nuw i8, ptr %947, i64 1
  %949 = load i8, ptr %948, align 1, !tbaa !8
  %950 = zext i8 %949 to i32
  %951 = add nuw nsw i32 %931, %950
  %952 = icmp ugt i32 %951, %928
  br i1 %952, label %953, label %992

953:                                              ; preds = %936
  %954 = zext nneg i32 %928 to i64
  br label %955

955:                                              ; preds = %953, %967
  %956 = phi ptr [ %925, %953 ], [ %968, %967 ]
  %957 = phi i64 [ %954, %953 ], [ %977, %967 ]
  %958 = phi i64 [ %927, %953 ], [ %976, %967 ]
  %959 = phi i32 [ %926, %953 ], [ %970, %967 ]
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %961, label %967

961:                                              ; preds = %955
  %962 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %966, label %964

964:                                              ; preds = %961
  %965 = load ptr, ptr %39, align 8, !tbaa !62
  br label %967

966:                                              ; preds = %961
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

967:                                              ; preds = %964, %955
  %968 = phi ptr [ %965, %964 ], [ %956, %955 ]
  %969 = phi i32 [ %962, %964 ], [ %959, %955 ]
  %970 = add i32 %969, -1
  %971 = load ptr, ptr %6, align 8, !tbaa !32
  %972 = getelementptr inbounds nuw i8, ptr %971, i64 1
  store ptr %972, ptr %6, align 8, !tbaa !32
  %973 = load i8, ptr %971, align 1, !tbaa !8
  %974 = zext i8 %973 to i64
  %975 = shl i64 %974, %957
  %976 = add i64 %975, %958
  %977 = add nuw nsw i64 %957, 8
  %978 = trunc i64 %976 to i32
  %979 = and i32 %978, %941
  %980 = lshr i32 %979, %931
  %981 = add nuw i32 %980, %938
  %982 = zext i32 %981 to i64
  %983 = getelementptr inbounds nuw [4 x i8], ptr %968, i64 %982
  %984 = getelementptr inbounds nuw i8, ptr %983, i64 1
  %985 = load i8, ptr %984, align 1, !tbaa !8
  %986 = zext i8 %985 to i32
  %987 = add nuw nsw i32 %931, %986
  %988 = zext nneg i32 %987 to i64
  %989 = icmp samesign ult i64 %977, %988
  br i1 %989, label %955, label %990

990:                                              ; preds = %967
  %991 = trunc nuw nsw i64 %977 to i32
  br label %992

992:                                              ; preds = %990, %936
  %993 = phi i32 [ %926, %936 ], [ %970, %990 ]
  %994 = phi i64 [ %927, %936 ], [ %976, %990 ]
  %995 = phi i32 [ %928, %936 ], [ %991, %990 ]
  %996 = phi ptr [ %947, %936 ], [ %983, %990 ]
  %997 = phi i8 [ %949, %936 ], [ %985, %990 ]
  %998 = getelementptr inbounds nuw i8, ptr %996, i64 2
  %999 = load i16, ptr %998, align 2, !tbaa !43
  %1000 = load i8, ptr %996, align 2, !tbaa !8
  %1001 = zext nneg i8 %930 to i64
  %1002 = lshr i64 %994, %1001
  %1003 = sub nuw i32 %995, %931
  br label %1004

1004:                                             ; preds = %924, %992
  %1005 = phi i32 [ %993, %992 ], [ %926, %924 ]
  %1006 = phi i64 [ %1002, %992 ], [ %927, %924 ]
  %1007 = phi i32 [ %1003, %992 ], [ %928, %924 ]
  %1008 = phi i16 [ %999, %992 ], [ %933, %924 ]
  %1009 = phi i8 [ %997, %992 ], [ %930, %924 ]
  %1010 = phi i8 [ %1000, %992 ], [ %934, %924 ]
  %1011 = zext i8 %1009 to i32
  %1012 = zext nneg i8 %1009 to i64
  %1013 = lshr i64 %1006, %1012
  %1014 = sub i32 %1007, %1011
  %1015 = zext i8 %1010 to i32
  %1016 = and i32 %1015, 64
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1019, label %1018

1018:                                             ; preds = %1004
  store ptr @.str.10, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

1019:                                             ; preds = %1004
  %1020 = zext i16 %1008 to i32
  store i32 %1020, ptr %43, align 8, !tbaa !70
  %1021 = and i32 %1015, 15
  store i32 %1021, ptr %42, align 4, !tbaa !68
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1066, label %1023

1023:                                             ; preds = %1019
  %1024 = icmp ult i32 %1014, %1021
  br i1 %1024, label %1025, label %1052

1025:                                             ; preds = %1023, %1037
  %1026 = phi i32 [ %1038, %1037 ], [ %1021, %1023 ]
  %1027 = phi i32 [ %1048, %1037 ], [ %1014, %1023 ]
  %1028 = phi i64 [ %1047, %1037 ], [ %1013, %1023 ]
  %1029 = phi i32 [ %1040, %1037 ], [ %1005, %1023 ]
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1031, label %1037

1031:                                             ; preds = %1025
  %1032 = call i32 %1(ptr noundef %2, ptr noundef nonnull %6) #5
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1036, label %1034

1034:                                             ; preds = %1031
  %1035 = load i32, ptr %42, align 4, !tbaa !68
  br label %1037

1036:                                             ; preds = %1031
  store ptr null, ptr %6, align 8, !tbaa !32
  br label %1220

1037:                                             ; preds = %1034, %1025
  %1038 = phi i32 [ %1035, %1034 ], [ %1026, %1025 ]
  %1039 = phi i32 [ %1032, %1034 ], [ %1029, %1025 ]
  %1040 = add i32 %1039, -1
  %1041 = load ptr, ptr %6, align 8, !tbaa !32
  %1042 = getelementptr inbounds nuw i8, ptr %1041, i64 1
  store ptr %1042, ptr %6, align 8, !tbaa !32
  %1043 = load i8, ptr %1041, align 1, !tbaa !8
  %1044 = zext i8 %1043 to i64
  %1045 = zext nneg i32 %1027 to i64
  %1046 = shl i64 %1044, %1045
  %1047 = add i64 %1046, %1028
  %1048 = add i32 %1027, 8
  %1049 = icmp ult i32 %1048, %1038
  br i1 %1049, label %1025, label %1050, !llvm.loop !71

1050:                                             ; preds = %1037
  %1051 = load i32, ptr %43, align 8, !tbaa !70
  br label %1052

1052:                                             ; preds = %1050, %1023
  %1053 = phi i32 [ %1020, %1023 ], [ %1051, %1050 ]
  %1054 = phi i32 [ %1005, %1023 ], [ %1040, %1050 ]
  %1055 = phi i64 [ %1013, %1023 ], [ %1047, %1050 ]
  %1056 = phi i32 [ %1014, %1023 ], [ %1048, %1050 ]
  %1057 = phi i32 [ %1021, %1023 ], [ %1038, %1050 ]
  %1058 = trunc i64 %1055 to i32
  %1059 = shl nsw i32 -1, %1057
  %1060 = xor i32 %1059, -1
  %1061 = and i32 %1060, %1058
  %1062 = add i32 %1053, %1061
  store i32 %1062, ptr %43, align 8, !tbaa !70
  %1063 = zext nneg i32 %1057 to i64
  %1064 = lshr i64 %1055, %1063
  %1065 = sub nuw i32 %1056, %1057
  br label %1066

1066:                                             ; preds = %1052, %1019
  %1067 = phi i32 [ %1062, %1052 ], [ %1020, %1019 ]
  %1068 = phi i32 [ %1054, %1052 ], [ %1005, %1019 ]
  %1069 = phi i64 [ %1064, %1052 ], [ %1013, %1019 ]
  %1070 = phi i32 [ %1065, %1052 ], [ %1014, %1019 ]
  %1071 = load i32, ptr %26, align 4, !tbaa !24
  %1072 = load i32, ptr %16, align 8, !tbaa !27
  %1073 = icmp ult i32 %1072, %1071
  %1074 = select i1 %1073, i32 %53, i32 0
  %1075 = sub i32 %1071, %1074
  %1076 = icmp ugt i32 %1067, %1075
  br i1 %1076, label %1077, label %1078

1077:                                             ; preds = %1066
  store ptr @.str.11, ptr %13, align 8, !tbaa !9
  store i32 16209, ptr %14, align 8, !tbaa !29
  br label %1211

1078:                                             ; preds = %1066, %1206
  %1079 = phi ptr [ %1207, %1206 ], [ %51, %1066 ]
  %1080 = phi i32 [ %1208, %1206 ], [ %53, %1066 ]
  %1081 = icmp eq i32 %1080, 0
  %1082 = load i32, ptr %26, align 4, !tbaa !24
  br i1 %1081, label %1083, label %1089

1083:                                             ; preds = %1078
  %1084 = load ptr, ptr %24, align 8, !tbaa !25
  store i32 %1082, ptr %16, align 8, !tbaa !27
  %1085 = call i32 %3(ptr noundef %4, ptr noundef %1084, i32 noundef %1082) #5
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1087, label %1220

1087:                                             ; preds = %1083
  %1088 = load i32, ptr %26, align 4, !tbaa !24
  br label %1089

1089:                                             ; preds = %1087, %1078
  %1090 = phi i32 [ %1088, %1087 ], [ %1082, %1078 ]
  %1091 = phi ptr [ %1084, %1087 ], [ %1079, %1078 ]
  %1092 = phi i32 [ %1082, %1087 ], [ %1080, %1078 ]
  %1093 = load i32, ptr %43, align 8, !tbaa !70
  %1094 = sub i32 %1090, %1093
  %1095 = icmp ult i32 %1094, %1092
  %1096 = zext i32 %1094 to i64
  %1097 = zext i32 %1093 to i64
  %1098 = sub nsw i64 0, %1097
  %1099 = select i1 %1095, i32 %1094, i32 0
  %1100 = sub i32 %1092, %1099
  %1101 = select i1 %1095, i64 %1096, i64 %1098
  %1102 = getelementptr inbounds i8, ptr %1091, i64 %1101
  %1103 = load i32, ptr %41, align 4, !tbaa !36
  %1104 = call i32 @llvm.umin.i32(i32 %1100, i32 %1103)
  %1105 = sub i32 %1103, %1104
  store i32 %1105, ptr %41, align 4, !tbaa !36
  %1106 = add i32 %1104, -1
  %1107 = zext i32 %1106 to i64
  %1108 = add nuw nsw i64 %1107, 1
  %1109 = icmp ult i32 %1106, 3
  %1110 = add nsw i64 %1101, 31
  %1111 = icmp ult i64 %1110, 32
  %1112 = select i1 %1109, i1 true, i1 %1111
  br i1 %1112, label %1152, label %1113

1113:                                             ; preds = %1089
  %1114 = icmp ult i32 %1106, 31
  br i1 %1114, label %1136, label %1115

1115:                                             ; preds = %1113
  %1116 = and i64 %1108, 28
  %1117 = and i64 %1108, 8589934560
  %1118 = getelementptr i8, ptr %1091, i64 %1117
  %1119 = trunc i64 %1117 to i32
  %1120 = sub i32 %1104, %1119
  %1121 = getelementptr i8, ptr %1102, i64 %1117
  br label %1122

1122:                                             ; preds = %1122, %1115
  %1123 = phi i64 [ 0, %1115 ], [ %1130, %1122 ]
  %1124 = getelementptr i8, ptr %1091, i64 %1123
  %1125 = getelementptr i8, ptr %1102, i64 %1123
  %1126 = getelementptr i8, ptr %1125, i64 16
  %1127 = load <16 x i8>, ptr %1125, align 1, !tbaa !8
  %1128 = load <16 x i8>, ptr %1126, align 1, !tbaa !8
  %1129 = getelementptr i8, ptr %1124, i64 16
  store <16 x i8> %1127, ptr %1124, align 1, !tbaa !8
  store <16 x i8> %1128, ptr %1129, align 1, !tbaa !8
  %1130 = add nuw i64 %1123, 32
  %1131 = icmp eq i64 %1130, %1117
  br i1 %1131, label %1132, label %1122, !llvm.loop !72

1132:                                             ; preds = %1122
  %1133 = icmp eq i64 %1108, %1117
  br i1 %1133, label %1206, label %1134

1134:                                             ; preds = %1132
  %1135 = icmp eq i64 %1116, 0
  br i1 %1135, label %1152, label %1136, !prof !73

1136:                                             ; preds = %1113, %1134
  %1137 = phi i64 [ %1117, %1134 ], [ 0, %1113 ]
  %1138 = and i64 %1108, 8589934588
  %1139 = getelementptr i8, ptr %1091, i64 %1138
  %1140 = trunc i64 %1138 to i32
  %1141 = sub i32 %1104, %1140
  %1142 = getelementptr i8, ptr %1102, i64 %1138
  br label %1143

1143:                                             ; preds = %1143, %1136
  %1144 = phi i64 [ %1137, %1136 ], [ %1148, %1143 ]
  %1145 = getelementptr i8, ptr %1091, i64 %1144
  %1146 = getelementptr i8, ptr %1102, i64 %1144
  %1147 = load <4 x i8>, ptr %1146, align 1, !tbaa !8
  store <4 x i8> %1147, ptr %1145, align 1, !tbaa !8
  %1148 = add nuw i64 %1144, 4
  %1149 = icmp eq i64 %1148, %1138
  br i1 %1149, label %1150, label %1143, !llvm.loop !74

1150:                                             ; preds = %1143
  %1151 = icmp eq i64 %1108, %1138
  br i1 %1151, label %1206, label %1152

1152:                                             ; preds = %1089, %1134, %1150
  %1153 = phi ptr [ %1091, %1089 ], [ %1118, %1134 ], [ %1139, %1150 ]
  %1154 = phi i32 [ %1104, %1089 ], [ %1120, %1134 ], [ %1141, %1150 ]
  %1155 = phi ptr [ %1102, %1089 ], [ %1121, %1134 ], [ %1142, %1150 ]
  %1156 = add i32 %1154, -1
  %1157 = and i32 %1154, 7
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1170, label %1159

1159:                                             ; preds = %1152, %1159
  %1160 = phi ptr [ %1166, %1159 ], [ %1153, %1152 ]
  %1161 = phi i32 [ %1167, %1159 ], [ %1154, %1152 ]
  %1162 = phi ptr [ %1164, %1159 ], [ %1155, %1152 ]
  %1163 = phi i32 [ %1168, %1159 ], [ 0, %1152 ]
  %1164 = getelementptr inbounds nuw i8, ptr %1162, i64 1
  %1165 = load i8, ptr %1162, align 1, !tbaa !8
  %1166 = getelementptr inbounds nuw i8, ptr %1160, i64 1
  store i8 %1165, ptr %1160, align 1, !tbaa !8
  %1167 = add i32 %1161, -1
  %1168 = add i32 %1163, 1
  %1169 = icmp eq i32 %1168, %1157
  br i1 %1169, label %1170, label %1159, !llvm.loop !75

1170:                                             ; preds = %1159, %1152
  %1171 = phi ptr [ poison, %1152 ], [ %1166, %1159 ]
  %1172 = phi ptr [ %1153, %1152 ], [ %1166, %1159 ]
  %1173 = phi i32 [ %1154, %1152 ], [ %1167, %1159 ]
  %1174 = phi ptr [ %1155, %1152 ], [ %1164, %1159 ]
  %1175 = icmp ult i32 %1156, 7
  br i1 %1175, label %1206, label %1176

1176:                                             ; preds = %1170, %1176
  %1177 = phi ptr [ %1203, %1176 ], [ %1172, %1170 ]
  %1178 = phi i32 [ %1204, %1176 ], [ %1173, %1170 ]
  %1179 = phi ptr [ %1201, %1176 ], [ %1174, %1170 ]
  %1180 = getelementptr inbounds nuw i8, ptr %1179, i64 1
  %1181 = load i8, ptr %1179, align 1, !tbaa !8
  %1182 = getelementptr inbounds nuw i8, ptr %1177, i64 1
  store i8 %1181, ptr %1177, align 1, !tbaa !8
  %1183 = getelementptr inbounds nuw i8, ptr %1179, i64 2
  %1184 = load i8, ptr %1180, align 1, !tbaa !8
  %1185 = getelementptr inbounds nuw i8, ptr %1177, i64 2
  store i8 %1184, ptr %1182, align 1, !tbaa !8
  %1186 = getelementptr inbounds nuw i8, ptr %1179, i64 3
  %1187 = load i8, ptr %1183, align 1, !tbaa !8
  %1188 = getelementptr inbounds nuw i8, ptr %1177, i64 3
  store i8 %1187, ptr %1185, align 1, !tbaa !8
  %1189 = getelementptr inbounds nuw i8, ptr %1179, i64 4
  %1190 = load i8, ptr %1186, align 1, !tbaa !8
  %1191 = getelementptr inbounds nuw i8, ptr %1177, i64 4
  store i8 %1190, ptr %1188, align 1, !tbaa !8
  %1192 = getelementptr inbounds nuw i8, ptr %1179, i64 5
  %1193 = load i8, ptr %1189, align 1, !tbaa !8
  %1194 = getelementptr inbounds nuw i8, ptr %1177, i64 5
  store i8 %1193, ptr %1191, align 1, !tbaa !8
  %1195 = getelementptr inbounds nuw i8, ptr %1179, i64 6
  %1196 = load i8, ptr %1192, align 1, !tbaa !8
  %1197 = getelementptr inbounds nuw i8, ptr %1177, i64 6
  store i8 %1196, ptr %1194, align 1, !tbaa !8
  %1198 = getelementptr inbounds nuw i8, ptr %1179, i64 7
  %1199 = load i8, ptr %1195, align 1, !tbaa !8
  %1200 = getelementptr inbounds nuw i8, ptr %1177, i64 7
  store i8 %1199, ptr %1197, align 1, !tbaa !8
  %1201 = getelementptr inbounds nuw i8, ptr %1179, i64 8
  %1202 = load i8, ptr %1198, align 1, !tbaa !8
  %1203 = getelementptr inbounds nuw i8, ptr %1177, i64 8
  store i8 %1202, ptr %1200, align 1, !tbaa !8
  %1204 = add i32 %1178, -8
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1206, label %1176, !llvm.loop !76

1206:                                             ; preds = %1170, %1176, %1150, %1132
  %1207 = phi ptr [ %1139, %1150 ], [ %1118, %1132 ], [ %1171, %1170 ], [ %1203, %1176 ]
  %1208 = sub i32 %1092, %1104
  %1209 = load i32, ptr %41, align 4, !tbaa !36
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1211, label %1078, !llvm.loop !77

1211:                                             ; preds = %1206, %425, %579, %607, %1077, %1018, %820, %816, %806, %654, %630, %621, %617, %291, %224, %180, %142, %99, %68
  %1212 = phi ptr [ %51, %68 ], [ %51, %99 ], [ %51, %142 ], [ %181, %180 ], [ %51, %224 ], [ %51, %291 ], [ %51, %607 ], [ %51, %617 ], [ %51, %621 ], [ %51, %630 ], [ %657, %654 ], [ %811, %806 ], [ %51, %816 ], [ %51, %820 ], [ %51, %1018 ], [ %51, %1077 ], [ %51, %425 ], [ %51, %579 ], [ %1207, %1206 ]
  %1213 = phi i32 [ %52, %68 ], [ %88, %99 ], [ %135, %142 ], [ %182, %180 ], [ %207, %224 ], [ %264, %291 ], [ %609, %607 ], [ %609, %617 ], [ %609, %621 ], [ %609, %630 ], [ %660, %654 ], [ %784, %806 ], [ %784, %816 ], [ %784, %820 ], [ %1005, %1018 ], [ %1068, %1077 ], [ %417, %425 ], [ %505, %579 ], [ %1068, %1206 ]
  %1214 = phi i32 [ %53, %68 ], [ %53, %99 ], [ %53, %142 ], [ %183, %180 ], [ %53, %224 ], [ %53, %291 ], [ %53, %607 ], [ %53, %617 ], [ %53, %621 ], [ %53, %630 ], [ %658, %654 ], [ %812, %806 ], [ %53, %816 ], [ %53, %820 ], [ %53, %1018 ], [ %53, %1077 ], [ %53, %425 ], [ %53, %579 ], [ %1208, %1206 ]
  %1215 = phi i64 [ %71, %68 ], [ %101, %99 ], [ %136, %142 ], [ 0, %180 ], [ %219, %224 ], [ %275, %291 ], [ %610, %607 ], [ %610, %617 ], [ %610, %621 ], [ %610, %630 ], [ %661, %654 ], [ %792, %806 ], [ %792, %816 ], [ %792, %820 ], [ %1013, %1018 ], [ %1069, %1077 ], [ %421, %425 ], [ %506, %579 ], [ %1069, %1206 ]
  %1216 = phi i32 [ %72, %68 ], [ %102, %99 ], [ %137, %142 ], [ 0, %180 ], [ %220, %224 ], [ %276, %291 ], [ %611, %607 ], [ %611, %617 ], [ %611, %621 ], [ %611, %630 ], [ %662, %654 ], [ %793, %806 ], [ %793, %816 ], [ %793, %820 ], [ %1014, %1018 ], [ %1070, %1077 ], [ %422, %425 ], [ %507, %579 ], [ %1070, %1206 ]
  %1217 = load i32, ptr %14, align 8, !tbaa !29
  br label %49

1218:                                             ; preds = %49
  br label %1220

1219:                                             ; preds = %49
  br label %1220

1220:                                             ; preds = %799, %1083, %160, %49, %1219, %1218, %1036, %966, %898, %837, %745, %676, %478, %444, %402, %328, %247, %192, %156, %120, %76
  %1221 = phi i32 [ %52, %1218 ], [ 0, %76 ], [ 0, %120 ], [ 0, %156 ], [ %1068, %1083 ], [ 0, %192 ], [ 0, %247 ], [ 0, %402 ], [ %52, %49 ], [ 0, %837 ], [ 0, %1036 ], [ %158, %160 ], [ 0, %966 ], [ 0, %898 ], [ 0, %745 ], [ 0, %676 ], [ 0, %444 ], [ 0, %478 ], [ 0, %328 ], [ %784, %799 ], [ %52, %1219 ]
  %1222 = phi i32 [ %53, %1218 ], [ %53, %76 ], [ %53, %120 ], [ %148, %156 ], [ %1082, %1083 ], [ %53, %192 ], [ %53, %247 ], [ %53, %402 ], [ %53, %49 ], [ %53, %837 ], [ %53, %1036 ], [ %162, %160 ], [ %53, %966 ], [ %53, %898 ], [ %53, %745 ], [ %53, %676 ], [ %53, %444 ], [ %53, %478 ], [ %53, %328 ], [ %801, %799 ], [ %53, %1219 ]
  %1223 = phi i1 [ true, %1218 ], [ false, %76 ], [ false, %120 ], [ false, %156 ], [ false, %1083 ], [ false, %192 ], [ false, %247 ], [ false, %402 ], [ false, %49 ], [ false, %837 ], [ false, %1036 ], [ false, %160 ], [ false, %966 ], [ false, %898 ], [ false, %745 ], [ false, %676 ], [ false, %444 ], [ false, %478 ], [ false, %328 ], [ false, %799 ], [ false, %1219 ]
  %1224 = phi i32 [ 1, %1218 ], [ -5, %76 ], [ -5, %120 ], [ -5, %156 ], [ -5, %1083 ], [ -5, %192 ], [ -5, %247 ], [ -5, %402 ], [ -2, %49 ], [ -5, %837 ], [ -5, %1036 ], [ -5, %160 ], [ -5, %966 ], [ -5, %898 ], [ -5, %745 ], [ -5, %676 ], [ -5, %444 ], [ -5, %478 ], [ -5, %328 ], [ -5, %799 ], [ -3, %1219 ]
  %1225 = load i32, ptr %26, align 4, !tbaa !24
  %1226 = icmp ult i32 %1222, %1225
  br i1 %1226, label %1227, label %1234

1227:                                             ; preds = %1220
  %1228 = load ptr, ptr %24, align 8, !tbaa !25
  %1229 = sub nuw i32 %1225, %1222
  %1230 = call i32 %3(ptr noundef %4, ptr noundef %1228, i32 noundef %1229) #5
  %1231 = icmp ne i32 %1230, 0
  %1232 = and i1 %1223, %1231
  %1233 = select i1 %1232, i32 -5, i32 %1224
  br label %1234

1234:                                             ; preds = %1227, %1220
  %1235 = phi i32 [ %1233, %1227 ], [ %1224, %1220 ]
  %1236 = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %1236, ptr %0, align 8, !tbaa !31
  store i32 %1221, ptr %46, align 8, !tbaa !33
  br label %1237

1237:                                             ; preds = %5, %8, %1234
  %1238 = phi i32 [ %1235, %1234 ], [ -2, %8 ], [ -2, %5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  ret i32 %1238
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

14:                                               ; preds = %1, %3, %7, %11
  %15 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %15
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
