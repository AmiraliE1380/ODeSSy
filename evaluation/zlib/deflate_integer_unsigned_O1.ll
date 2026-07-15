; ModuleID = '/home/amiralie1380/michigan/pl/zlib/deflate.c'
source_filename = "/home/amiralie1380/michigan/pl/zlib/deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }

@deflate_copyright = dso_local local_unnamed_addr constant [70 x i8] c" deflate 1.3.2.1 Copyright 1995-2026 Jean-loup Gailly and Mark Adler \00", align 16
@z_errmsg = external local_unnamed_addr constant [10 x ptr], align 16
@configuration_table = internal unnamed_addr constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 16
@_length_code = external local_unnamed_addr constant [0 x i8], align 1
@_dist_code = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit_(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %149, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !8
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %149, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %149, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  store ptr @zcalloc, ptr %15, align 8, !tbaa !15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %19, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store ptr @zcfree, ptr %21, align 8, !tbaa !17
  br label %25

25:                                               ; preds = %24, %20
  %26 = icmp eq i32 %1, -1
  %27 = select i1 %26, i32 6, i32 %1
  %28 = icmp ugt i32 %27, 9
  br i1 %28, label %149, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %15, align 8, !tbaa !15
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = tail call ptr %30(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #12, !inline_history !18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %149, label %35

35:                                               ; preds = %29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %33, i8 0, i64 5968, i1 false)
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %33, ptr %36, align 8, !tbaa !19
  store ptr %0, ptr %33, align 8, !tbaa !20
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i32 42, ptr %37, align 8, !tbaa !29
  %38 = getelementptr inbounds nuw i8, ptr %33, i64 48
  store i32 1, ptr %38, align 8, !tbaa !30
  %39 = getelementptr inbounds nuw i8, ptr %33, i64 56
  store ptr null, ptr %39, align 8, !tbaa !31
  %40 = getelementptr inbounds nuw i8, ptr %33, i64 84
  store i32 15, ptr %40, align 4, !tbaa !32
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 80
  store i32 32768, ptr %41, align 8, !tbaa !33
  %42 = getelementptr inbounds nuw i8, ptr %33, i64 88
  store i32 32767, ptr %42, align 8, !tbaa !34
  %43 = getelementptr inbounds nuw i8, ptr %33, i64 136
  store i32 15, ptr %43, align 8, !tbaa !35
  %44 = getelementptr inbounds nuw i8, ptr %33, i64 132
  store i32 32768, ptr %44, align 4, !tbaa !36
  %45 = getelementptr inbounds nuw i8, ptr %33, i64 140
  store i32 32767, ptr %45, align 4, !tbaa !37
  %46 = getelementptr inbounds nuw i8, ptr %33, i64 144
  store i32 5, ptr %46, align 8, !tbaa !38
  %47 = load ptr, ptr %15, align 8, !tbaa !15
  %48 = load ptr, ptr %31, align 8, !tbaa !16
  %49 = tail call ptr %47(ptr noundef %48, i32 noundef 32768, i32 noundef 2) #12, !inline_history !18
  %50 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %49, ptr %50, align 8, !tbaa !39
  %51 = load ptr, ptr %15, align 8, !tbaa !15
  %52 = load ptr, ptr %31, align 8, !tbaa !16
  %53 = load i32, ptr %41, align 8, !tbaa !33
  %54 = tail call ptr %51(ptr noundef %52, i32 noundef %53, i32 noundef 2) #12, !inline_history !18
  %55 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %54, ptr %55, align 8, !tbaa !40
  %56 = load ptr, ptr %15, align 8, !tbaa !15
  %57 = load ptr, ptr %31, align 8, !tbaa !16
  %58 = load i32, ptr %44, align 4, !tbaa !36
  %59 = tail call ptr %56(ptr noundef %57, i32 noundef %58, i32 noundef 2) #12, !inline_history !18
  %60 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %59, ptr %60, align 8, !tbaa !41
  %61 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %61, align 8, !tbaa !42
  %62 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %62, align 8, !tbaa !43
  %63 = load ptr, ptr %15, align 8, !tbaa !15
  %64 = load ptr, ptr %31, align 8, !tbaa !16
  %65 = tail call ptr %63(ptr noundef %64, i32 noundef 16384, i32 noundef 4) #12, !inline_history !18
  %66 = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %65, ptr %66, align 8, !tbaa !44
  %67 = load i32, ptr %62, align 8, !tbaa !43
  %68 = zext i32 %67 to i64
  %69 = shl nuw nsw i64 %68, 2
  %70 = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i64 %69, ptr %70, align 8, !tbaa !45
  %71 = load ptr, ptr %50, align 8, !tbaa !39
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %35
  %74 = load ptr, ptr %55, align 8, !tbaa !40
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %60, align 8, !tbaa !41
  %78 = icmp eq ptr %77, null
  %79 = icmp eq ptr %65, null
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %81, label %131

81:                                               ; preds = %76, %73, %35
  store i32 666, ptr %37, align 8, !tbaa !29
  %82 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !46
  store ptr %82, ptr %14, align 8, !tbaa !9
  %83 = load ptr, ptr %15, align 8, !tbaa !15
  %84 = icmp eq ptr %83, null
  br i1 %84, label %149, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %21, align 8, !tbaa !17
  %87 = icmp eq ptr %86, null
  br i1 %87, label %149, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %36, align 8, !tbaa !19
  %90 = icmp eq ptr %89, null
  br i1 %90, label %149, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %89, align 8, !tbaa !20
  %93 = icmp eq ptr %92, %0
  br i1 %93, label %94, label %149

94:                                               ; preds = %91
  %95 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %96 = load i32, ptr %95, align 8, !tbaa !29
  switch i32 %96, label %149 [
    i32 42, label %97
    i32 57, label %97
    i32 69, label %97
    i32 73, label %97
    i32 91, label %97
    i32 103, label %97
    i32 113, label %97
    i32 666, label %97
  ]

97:                                               ; preds = %94, %94, %94, %94, %94, %94, %94, %94
  %98 = getelementptr inbounds nuw i8, ptr %89, i64 16
  %99 = load ptr, ptr %98, align 8, !tbaa !44
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %86(ptr noundef %102, ptr noundef nonnull %99) #12, !inline_history !47
  br label %103

103:                                              ; preds = %101, %97
  %104 = load ptr, ptr %36, align 8, !tbaa !19
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 120
  %106 = load ptr, ptr %105, align 8, !tbaa !41
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr %21, align 8, !tbaa !17
  %110 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %109(ptr noundef %110, ptr noundef nonnull %106) #12, !inline_history !47
  br label %111

111:                                              ; preds = %108, %103
  %112 = load ptr, ptr %36, align 8, !tbaa !19
  %113 = getelementptr inbounds nuw i8, ptr %112, i64 112
  %114 = load ptr, ptr %113, align 8, !tbaa !40
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %21, align 8, !tbaa !17
  %118 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %117(ptr noundef %118, ptr noundef nonnull %114) #12, !inline_history !47
  br label %119

119:                                              ; preds = %116, %111
  %120 = load ptr, ptr %36, align 8, !tbaa !19
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 96
  %122 = load ptr, ptr %121, align 8, !tbaa !39
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %21, align 8, !tbaa !17
  %126 = load ptr, ptr %31, align 8, !tbaa !16
  tail call void %125(ptr noundef %126, ptr noundef nonnull %122) #12, !inline_history !47
  br label %127

127:                                              ; preds = %124, %119
  %128 = load ptr, ptr %21, align 8, !tbaa !17
  %129 = load ptr, ptr %31, align 8, !tbaa !16
  %130 = load ptr, ptr %36, align 8, !tbaa !19
  tail call void %128(ptr noundef %129, ptr noundef %130) #12, !inline_history !47
  store ptr null, ptr %36, align 8, !tbaa !19
  br label %149

131:                                              ; preds = %76
  %132 = getelementptr inbounds nuw i8, ptr %65, i64 %68
  %133 = getelementptr inbounds nuw i8, ptr %33, i64 5888
  store ptr %132, ptr %133, align 8, !tbaa !48
  %134 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 1), !nosanitize !49
  %135 = extractvalue { i32, i1 } %134, 1, !nosanitize !49
  br i1 %135, label %136, label %137, !prof !50, !nosanitize !49

136:                                              ; preds = %131
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

137:                                              ; preds = %131
  %138 = extractvalue { i32, i1 } %134, 0, !nosanitize !49
  %139 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %138, i32 3), !nosanitize !49
  %140 = extractvalue { i32, i1 } %139, 1, !nosanitize !49
  br i1 %140, label %141, label %142, !prof !50, !nosanitize !49

141:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !49
  unreachable, !nosanitize !49

142:                                              ; preds = %137
  %143 = extractvalue { i32, i1 } %139, 0, !nosanitize !49
  %144 = getelementptr inbounds nuw i8, ptr %33, i64 5904
  store i32 %143, ptr %144, align 8, !tbaa !51
  %145 = getelementptr inbounds nuw i8, ptr %33, i64 196
  store i32 %27, ptr %145, align 4, !tbaa !52
  %146 = getelementptr inbounds nuw i8, ptr %33, i64 200
  store i32 0, ptr %146, align 8, !tbaa !53
  %147 = getelementptr inbounds nuw i8, ptr %33, i64 72
  store i8 8, ptr %147, align 8, !tbaa !54
  %148 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %149

149:                                              ; preds = %4, %6, %11, %25, %29, %81, %85, %88, %91, %94, %127, %142
  %150 = phi i32 [ %148, %142 ], [ -6, %4 ], [ -2, %11 ], [ -4, %127 ], [ -2, %25 ], [ -4, %29 ], [ -6, %6 ], [ -4, %94 ], [ -4, %81 ], [ -4, %85 ], [ -4, %88 ], [ -4, %91 ]
  ret i32 %150
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %188, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %188, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %188, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store ptr @zcalloc, ptr %19, align 8, !tbaa !15
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %23, align 8, !tbaa !16
  br label %24

24:                                               ; preds = %22, %17
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr @zcfree, ptr %25, align 8, !tbaa !17
  br label %29

29:                                               ; preds = %28, %24
  %30 = icmp eq i32 %1, -1
  %31 = select i1 %30, i32 6, i32 %1
  %32 = icmp slt i32 %3, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = icmp slt i32 %3, -15
  br i1 %34, label %188, label %35

35:                                               ; preds = %33
  %36 = sub nsw i32 0, %3
  br label %41

37:                                               ; preds = %29
  %38 = icmp sgt i32 %3, 15
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = add nsw i32 %3, -16
  br label %41

41:                                               ; preds = %37, %39, %35
  %42 = phi i32 [ %36, %35 ], [ %40, %39 ], [ %3, %37 ]
  %43 = phi i1 [ true, %35 ], [ true, %39 ], [ false, %37 ]
  %44 = phi i32 [ 0, %35 ], [ 2, %39 ], [ 1, %37 ]
  %45 = add i32 %4, -10
  %46 = icmp ult i32 %45, -9
  %47 = icmp ne i32 %2, 8
  %48 = or i1 %47, %46
  %49 = add nsw i32 %42, -16
  %50 = icmp ult i32 %49, -8
  %51 = select i1 %48, i1 true, i1 %50
  %52 = icmp ugt i32 %31, 9
  %53 = or i1 %52, %51
  %54 = icmp ugt i32 %5, 4
  %55 = or i1 %54, %53
  br i1 %55, label %188, label %56

56:                                               ; preds = %41
  %57 = icmp eq i32 %42, 8
  %58 = and i1 %57, %43
  br i1 %58, label %188, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %19, align 8, !tbaa !15
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %60(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %188, label %65

65:                                               ; preds = %59
  %66 = select i1 %57, i32 9, i32 %42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %63, i8 0, i64 5968, i1 false)
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %63, ptr %67, align 8, !tbaa !19
  store ptr %0, ptr %63, align 8, !tbaa !20
  %68 = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i32 42, ptr %68, align 8, !tbaa !29
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 48
  store i32 %44, ptr %69, align 8, !tbaa !30
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 56
  store ptr null, ptr %70, align 8, !tbaa !31
  %71 = getelementptr inbounds nuw i8, ptr %63, i64 84
  store i32 %66, ptr %71, align 4, !tbaa !32
  %72 = shl nuw nsw i32 1, %66
  %73 = getelementptr inbounds nuw i8, ptr %63, i64 80
  store i32 %72, ptr %73, align 8, !tbaa !33
  %74 = add nsw i32 %72, -1
  %75 = getelementptr inbounds nuw i8, ptr %63, i64 88
  store i32 %74, ptr %75, align 8, !tbaa !34
  %76 = add nuw nsw i32 %4, 7
  %77 = getelementptr inbounds nuw i8, ptr %63, i64 136
  store i32 %76, ptr %77, align 8, !tbaa !35
  %78 = shl nuw nsw i32 128, %4
  %79 = getelementptr inbounds nuw i8, ptr %63, i64 132
  store i32 %78, ptr %79, align 4, !tbaa !36
  %80 = add nsw i32 %78, -1
  %81 = getelementptr inbounds nuw i8, ptr %63, i64 140
  store i32 %80, ptr %81, align 4, !tbaa !37
  %82 = add nuw nsw i32 %4, 9
  %83 = udiv i32 %82, 3
  %84 = getelementptr inbounds nuw i8, ptr %63, i64 144
  store i32 %83, ptr %84, align 8, !tbaa !38
  %85 = load ptr, ptr %19, align 8, !tbaa !15
  %86 = load ptr, ptr %61, align 8, !tbaa !16
  %87 = tail call ptr %85(ptr noundef %86, i32 noundef %72, i32 noundef 2) #12
  %88 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %87, ptr %88, align 8, !tbaa !39
  %89 = load ptr, ptr %19, align 8, !tbaa !15
  %90 = load ptr, ptr %61, align 8, !tbaa !16
  %91 = load i32, ptr %73, align 8, !tbaa !33
  %92 = tail call ptr %89(ptr noundef %90, i32 noundef %91, i32 noundef 2) #12
  %93 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %92, ptr %93, align 8, !tbaa !40
  %94 = load ptr, ptr %19, align 8, !tbaa !15
  %95 = load ptr, ptr %61, align 8, !tbaa !16
  %96 = load i32, ptr %79, align 4, !tbaa !36
  %97 = tail call ptr %94(ptr noundef %95, i32 noundef %96, i32 noundef 2) #12
  %98 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %97, ptr %98, align 8, !tbaa !41
  %99 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %99, align 8, !tbaa !42
  %100 = shl nuw nsw i32 64, %4
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %100, ptr %101, align 8, !tbaa !43
  %102 = load ptr, ptr %19, align 8, !tbaa !15
  %103 = load ptr, ptr %61, align 8, !tbaa !16
  %104 = tail call ptr %102(ptr noundef %103, i32 noundef %100, i32 noundef 4) #12
  %105 = getelementptr inbounds nuw i8, ptr %63, i64 16
  store ptr %104, ptr %105, align 8, !tbaa !44
  %106 = load i32, ptr %101, align 8, !tbaa !43
  %107 = zext i32 %106 to i64
  %108 = shl nuw nsw i64 %107, 2
  %109 = getelementptr inbounds nuw i8, ptr %63, i64 24
  store i64 %108, ptr %109, align 8, !tbaa !45
  %110 = load ptr, ptr %88, align 8, !tbaa !39
  %111 = icmp eq ptr %110, null
  br i1 %111, label %120, label %112

112:                                              ; preds = %65
  %113 = load ptr, ptr %93, align 8, !tbaa !40
  %114 = icmp eq ptr %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %98, align 8, !tbaa !41
  %117 = icmp eq ptr %116, null
  %118 = icmp eq ptr %104, null
  %119 = select i1 %117, i1 true, i1 %118
  br i1 %119, label %120, label %170

120:                                              ; preds = %115, %112, %65
  store i32 666, ptr %68, align 8, !tbaa !29
  %121 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 48), align 16, !tbaa !46
  store ptr %121, ptr %18, align 8, !tbaa !9
  %122 = load ptr, ptr %19, align 8, !tbaa !15
  %123 = icmp eq ptr %122, null
  br i1 %123, label %188, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %25, align 8, !tbaa !17
  %126 = icmp eq ptr %125, null
  br i1 %126, label %188, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %67, align 8, !tbaa !19
  %129 = icmp eq ptr %128, null
  br i1 %129, label %188, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %128, align 8, !tbaa !20
  %132 = icmp eq ptr %131, %0
  br i1 %132, label %133, label %188

133:                                              ; preds = %130
  %134 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %135 = load i32, ptr %134, align 8, !tbaa !29
  switch i32 %135, label %188 [
    i32 42, label %136
    i32 57, label %136
    i32 69, label %136
    i32 73, label %136
    i32 91, label %136
    i32 103, label %136
    i32 113, label %136
    i32 666, label %136
  ]

136:                                              ; preds = %133, %133, %133, %133, %133, %133, %133, %133
  %137 = getelementptr inbounds nuw i8, ptr %128, i64 16
  %138 = load ptr, ptr %137, align 8, !tbaa !44
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %125(ptr noundef %141, ptr noundef nonnull %138) #12, !inline_history !55
  br label %142

142:                                              ; preds = %140, %136
  %143 = load ptr, ptr %67, align 8, !tbaa !19
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 120
  %145 = load ptr, ptr %144, align 8, !tbaa !41
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load ptr, ptr %25, align 8, !tbaa !17
  %149 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %148(ptr noundef %149, ptr noundef nonnull %145) #12, !inline_history !55
  br label %150

150:                                              ; preds = %147, %142
  %151 = load ptr, ptr %67, align 8, !tbaa !19
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 112
  %153 = load ptr, ptr %152, align 8, !tbaa !40
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load ptr, ptr %25, align 8, !tbaa !17
  %157 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %156(ptr noundef %157, ptr noundef nonnull %153) #12, !inline_history !55
  br label %158

158:                                              ; preds = %155, %150
  %159 = load ptr, ptr %67, align 8, !tbaa !19
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 96
  %161 = load ptr, ptr %160, align 8, !tbaa !39
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = load ptr, ptr %25, align 8, !tbaa !17
  %165 = load ptr, ptr %61, align 8, !tbaa !16
  tail call void %164(ptr noundef %165, ptr noundef nonnull %161) #12, !inline_history !55
  br label %166

166:                                              ; preds = %163, %158
  %167 = load ptr, ptr %25, align 8, !tbaa !17
  %168 = load ptr, ptr %61, align 8, !tbaa !16
  %169 = load ptr, ptr %67, align 8, !tbaa !19
  tail call void %167(ptr noundef %168, ptr noundef %169) #12, !inline_history !55
  store ptr null, ptr %67, align 8, !tbaa !19
  br label %188

170:                                              ; preds = %115
  %171 = getelementptr inbounds nuw i8, ptr %104, i64 %107
  %172 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %171, ptr %172, align 8, !tbaa !48
  %173 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %106, i32 1), !nosanitize !49
  %174 = extractvalue { i32, i1 } %173, 1, !nosanitize !49
  br i1 %174, label %175, label %176, !prof !50, !nosanitize !49

175:                                              ; preds = %170
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

176:                                              ; preds = %170
  %177 = extractvalue { i32, i1 } %173, 0, !nosanitize !49
  %178 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %177, i32 3), !nosanitize !49
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !49
  br i1 %179, label %180, label %181, !prof !50, !nosanitize !49

180:                                              ; preds = %176
  tail call void @llvm.ubsantrap(i8 12) #13, !nosanitize !49
  unreachable, !nosanitize !49

181:                                              ; preds = %176
  %182 = extractvalue { i32, i1 } %178, 0, !nosanitize !49
  %183 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %182, ptr %183, align 8, !tbaa !51
  %184 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %31, ptr %184, align 4, !tbaa !52
  %185 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %185, align 8, !tbaa !53
  %186 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %186, align 8, !tbaa !54
  %187 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %188

188:                                              ; preds = %166, %133, %130, %127, %124, %120, %59, %41, %56, %33, %15, %8, %10, %181
  %189 = phi i32 [ %187, %181 ], [ -6, %8 ], [ -2, %15 ], [ -2, %33 ], [ -2, %41 ], [ -4, %59 ], [ -6, %10 ], [ -2, %56 ], [ -4, %120 ], [ -4, %124 ], [ -4, %127 ], [ -4, %130 ], [ -4, %133 ], [ -4, %166 ]
  ret i32 %189
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -3, 1) i32 @deflateEnd(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %72, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %72, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %72, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %72

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %72 [
    i32 42, label %21
    i32 57, label %21
    i32 69, label %21
    i32 73, label %21
    i32 91, label %21
    i32 103, label %21
    i32 113, label %21
    i32 666, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %23 = load ptr, ptr %22, align 8, !tbaa !19
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = load i32, ptr %24, align 8, !tbaa !29
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %31 = load ptr, ptr %30, align 8, !tbaa !17
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  tail call void %31(ptr noundef %33, ptr noundef nonnull %27) #12
  br label %34

34:                                               ; preds = %29, %21
  %35 = load ptr, ptr %22, align 8, !tbaa !19
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 120
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %41 = load ptr, ptr %40, align 8, !tbaa !17
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  tail call void %41(ptr noundef %43, ptr noundef nonnull %37) #12
  br label %44

44:                                               ; preds = %39, %34
  %45 = load ptr, ptr %22, align 8, !tbaa !19
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 112
  %47 = load ptr, ptr %46, align 8, !tbaa !40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %51 = load ptr, ptr %50, align 8, !tbaa !17
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %53 = load ptr, ptr %52, align 8, !tbaa !16
  tail call void %51(ptr noundef %53, ptr noundef nonnull %47) #12
  br label %54

54:                                               ; preds = %49, %44
  %55 = load ptr, ptr %22, align 8, !tbaa !19
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 96
  %57 = load ptr, ptr %56, align 8, !tbaa !39
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %61 = load ptr, ptr %60, align 8, !tbaa !17
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %63 = load ptr, ptr %62, align 8, !tbaa !16
  tail call void %61(ptr noundef %63, ptr noundef nonnull %57) #12
  br label %64

64:                                               ; preds = %59, %54
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %66 = load ptr, ptr %65, align 8, !tbaa !17
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %68 = load ptr, ptr %67, align 8, !tbaa !16
  %69 = load ptr, ptr %22, align 8, !tbaa !19
  tail call void %66(ptr noundef %68, ptr noundef %69) #12
  store ptr null, ptr %22, align 8, !tbaa !19
  %70 = icmp eq i32 %25, 113
  %71 = select i1 %70, i32 -3, i32 0
  br label %72

72:                                               ; preds = %18, %15, %11, %7, %3, %1, %64
  %73 = phi i32 [ %71, %64 ], [ -2, %1 ], [ -2, %3 ], [ -2, %7 ], [ -2, %11 ], [ -2, %15 ], [ -2, %18 ]
  ret i32 %73
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %46 [
    i32 42, label %21
    i32 57, label %21
    i32 69, label %21
    i32 73, label %21
    i32 91, label %21
    i32 103, label %21
    i32 113, label %21
    i32 666, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %23, align 8, !tbaa !56
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !57
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !58
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !59
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = sub nsw i32 0, %30
  store i32 %33, ptr %29, align 8, !tbaa !30
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i32, ptr %29, align 8, !tbaa !30
  %36 = icmp eq i32 %35, 2
  %37 = select i1 %36, i32 57, i32 42
  store i32 %37, ptr %19, align 8, !tbaa !29
  br i1 %36, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %42

40:                                               ; preds = %34
  %41 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %43, ptr %44, align 8, !tbaa !60
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !61
  tail call void @_tr_init(ptr noundef nonnull %13) #12
  br label %46

46:                                               ; preds = %1, %3, %7, %11, %15, %18, %42
  %47 = phi i1 [ true, %42 ], [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %11 ], [ false, %15 ], [ false, %18 ]
  %48 = phi i32 [ 0, %42 ], [ -2, %1 ], [ -2, %3 ], [ -2, %7 ], [ -2, %11 ], [ -2, %15 ], [ -2, %18 ]
  br i1 %47, label %49, label %97

49:                                               ; preds = %46
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %51 = load ptr, ptr %50, align 8, !tbaa !19
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 80
  %53 = load i32, ptr %52, align 8, !tbaa !33
  %54 = zext i32 %53 to i64
  %55 = shl nuw nsw i64 %54, 1
  %56 = getelementptr inbounds nuw i8, ptr %51, i64 104
  store i64 %55, ptr %56, align 8, !tbaa !62
  %57 = getelementptr inbounds nuw i8, ptr %51, i64 132
  %58 = load i32, ptr %57, align 4, !tbaa !36
  %59 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %58, i32 1), !nosanitize !49
  %60 = extractvalue { i32, i1 } %59, 1, !nosanitize !49
  br i1 %60, label %61, label %62, !prof !50, !nosanitize !49

61:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

62:                                               ; preds = %49
  %63 = extractvalue { i32, i1 } %59, 0, !nosanitize !49
  %64 = getelementptr inbounds nuw i8, ptr %51, i64 120
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  %66 = zext i32 %63 to i64
  %67 = getelementptr inbounds nuw [2 x i8], ptr %65, i64 %66
  store i16 0, ptr %67, align 2, !tbaa !63
  %68 = shl nuw nsw i64 %66, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %65, i8 0, i64 %68, i1 false)
  %69 = getelementptr inbounds nuw i8, ptr %51, i64 5960
  store i32 0, ptr %69, align 8, !tbaa !64
  %70 = getelementptr inbounds nuw i8, ptr %51, i64 196
  %71 = load i32, ptr %70, align 4, !tbaa !52
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %72
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 2
  %75 = load i16, ptr %74, align 2, !tbaa !65
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds nuw i8, ptr %51, i64 192
  store i32 %76, ptr %77, align 8, !tbaa !67
  %78 = load i16, ptr %73, align 16, !tbaa !68
  %79 = zext i16 %78 to i32
  %80 = getelementptr inbounds nuw i8, ptr %51, i64 204
  store i32 %79, ptr %80, align 4, !tbaa !69
  %81 = getelementptr inbounds nuw i8, ptr %73, i64 4
  %82 = load i16, ptr %81, align 4, !tbaa !70
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds nuw i8, ptr %51, i64 208
  store i32 %83, ptr %84, align 8, !tbaa !71
  %85 = getelementptr inbounds nuw i8, ptr %73, i64 6
  %86 = load i16, ptr %85, align 2, !tbaa !72
  %87 = zext i16 %86 to i32
  %88 = getelementptr inbounds nuw i8, ptr %51, i64 188
  store i32 %87, ptr %88, align 4, !tbaa !73
  %89 = getelementptr inbounds nuw i8, ptr %51, i64 172
  store i32 0, ptr %89, align 4, !tbaa !74
  %90 = getelementptr inbounds nuw i8, ptr %51, i64 152
  store i64 0, ptr %90, align 8, !tbaa !75
  %91 = getelementptr inbounds nuw i8, ptr %51, i64 180
  store i32 0, ptr %91, align 4, !tbaa !76
  %92 = getelementptr inbounds nuw i8, ptr %51, i64 5932
  store i32 0, ptr %92, align 4, !tbaa !77
  %93 = getelementptr inbounds nuw i8, ptr %51, i64 184
  store i32 2, ptr %93, align 8, !tbaa !78
  %94 = getelementptr inbounds nuw i8, ptr %51, i64 160
  store i32 2, ptr %94, align 8, !tbaa !79
  %95 = getelementptr inbounds nuw i8, ptr %51, i64 168
  store i32 0, ptr %95, align 8, !tbaa !80
  %96 = getelementptr inbounds nuw i8, ptr %51, i64 128
  store i32 0, ptr %96, align 8, !tbaa !81
  br label %97

97:                                               ; preds = %62, %46
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetDictionary(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %24 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  br label %24

24:                                               ; preds = %3, %5, %9, %13, %17, %20, %23
  %25 = phi i1 [ false, %23 ], [ true, %3 ], [ true, %9 ], [ true, %5 ], [ true, %20 ], [ true, %17 ], [ true, %13 ]
  %26 = icmp eq ptr %1, null
  %27 = or i1 %26, %25
  br i1 %27, label %732, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %32 = load i32, ptr %31, align 8, !tbaa !30
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %732, label %34

34:                                               ; preds = %28
  %35 = icmp eq i32 %32, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %38 = load i32, ptr %37, align 8, !tbaa !29
  %39 = icmp eq i32 %38, 42
  br i1 %39, label %40, label %732

40:                                               ; preds = %36, %34
  %41 = getelementptr inbounds nuw i8, ptr %30, i64 180
  %42 = load i32, ptr %41, align 4, !tbaa !76
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %732

44:                                               ; preds = %40
  br i1 %35, label %45, label %49

45:                                               ; preds = %44
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %47 = load i64, ptr %46, align 8, !tbaa !60
  %48 = tail call i64 @adler32(i64 noundef %47, ptr noundef %1, i32 noundef %2) #12
  store i64 %48, ptr %46, align 8, !tbaa !60
  br label %49

49:                                               ; preds = %45, %44
  store i32 0, ptr %31, align 8, !tbaa !30
  %50 = getelementptr inbounds nuw i8, ptr %30, i64 80
  %51 = load i32, ptr %50, align 8, !tbaa !33
  %52 = icmp ult i32 %2, %51
  br i1 %52, label %81, label %53

53:                                               ; preds = %49
  %54 = icmp eq i32 %32, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %53
  %56 = getelementptr inbounds nuw i8, ptr %30, i64 132
  %57 = load i32, ptr %56, align 4, !tbaa !36
  %58 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %57, i32 1), !nosanitize !49
  %59 = extractvalue { i32, i1 } %58, 1, !nosanitize !49
  br i1 %59, label %60, label %61, !prof !50, !nosanitize !49

60:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

61:                                               ; preds = %55
  %62 = extractvalue { i32, i1 } %58, 0, !nosanitize !49
  %63 = getelementptr inbounds nuw i8, ptr %30, i64 120
  %64 = load ptr, ptr %63, align 8, !tbaa !41
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds nuw [2 x i8], ptr %64, i64 %65
  store i16 0, ptr %66, align 2, !tbaa !63
  %67 = shl nuw nsw i64 %65, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %64, i8 0, i64 %67, i1 false)
  %68 = getelementptr inbounds nuw i8, ptr %30, i64 5960
  store i32 0, ptr %68, align 8, !tbaa !64
  %69 = getelementptr inbounds nuw i8, ptr %30, i64 172
  store i32 0, ptr %69, align 4, !tbaa !74
  %70 = getelementptr inbounds nuw i8, ptr %30, i64 152
  store i64 0, ptr %70, align 8, !tbaa !75
  %71 = getelementptr inbounds nuw i8, ptr %30, i64 5932
  store i32 0, ptr %71, align 4, !tbaa !77
  br label %72

72:                                               ; preds = %61, %53
  %73 = load i32, ptr %50, align 8, !tbaa !33
  %74 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %73), !nosanitize !49
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !49
  br i1 %75, label %76, label %77, !prof !50, !nosanitize !49

76:                                               ; preds = %72
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

77:                                               ; preds = %72
  %78 = extractvalue { i32, i1 } %74, 0, !nosanitize !49
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 %79
  br label %81

81:                                               ; preds = %77, %49
  %82 = phi i32 [ %73, %77 ], [ %2, %49 ]
  %83 = phi ptr [ %80, %77 ], [ %1, %49 ]
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %85 = load i32, ptr %84, align 8, !tbaa !82
  %86 = load ptr, ptr %0, align 8, !tbaa !83
  store i32 %82, ptr %84, align 8, !tbaa !82
  store ptr %83, ptr %0, align 8, !tbaa !83
  %87 = load i32, ptr %50, align 8, !tbaa !33
  %88 = getelementptr inbounds nuw i8, ptr %30, i64 104
  %89 = getelementptr inbounds nuw i8, ptr %30, i64 172
  %90 = zext i32 %87 to i64
  %91 = getelementptr inbounds nuw i8, ptr %30, i64 96
  %92 = getelementptr inbounds nuw i8, ptr %30, i64 176
  %93 = getelementptr inbounds nuw i8, ptr %30, i64 152
  %94 = getelementptr inbounds nuw i8, ptr %30, i64 5932
  %95 = getelementptr inbounds nuw i8, ptr %30, i64 132
  %96 = getelementptr inbounds nuw i8, ptr %30, i64 120
  %97 = getelementptr inbounds nuw i8, ptr %30, i64 112
  %98 = getelementptr inbounds nuw i8, ptr %30, i64 5960
  %99 = getelementptr inbounds nuw i8, ptr %30, i64 128
  %100 = getelementptr inbounds nuw i8, ptr %30, i64 144
  %101 = getelementptr inbounds nuw i8, ptr %30, i64 140
  %102 = getelementptr inbounds nuw i8, ptr %30, i64 88
  br label %103

103:                                              ; preds = %334, %81
  %104 = load i64, ptr %88, align 8, !tbaa !62
  %105 = load i32, ptr %41, align 4, !tbaa !76
  %106 = zext i32 %105 to i64
  %107 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %104, i64 %106), !nosanitize !49
  %108 = extractvalue { i64, i1 } %107, 1, !nosanitize !49
  br i1 %108, label %109, label %110, !prof !50, !nosanitize !49

109:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

110:                                              ; preds = %103
  %111 = extractvalue { i64, i1 } %107, 0, !nosanitize !49
  %112 = load i32, ptr %89, align 4, !tbaa !74
  %113 = zext i32 %112 to i64
  %114 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %111, i64 %113), !nosanitize !49
  %115 = extractvalue { i64, i1 } %114, 1, !nosanitize !49
  br i1 %115, label %116, label %117, !prof !50, !nosanitize !49

116:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

117:                                              ; preds = %110
  %118 = extractvalue { i64, i1 } %114, 0, !nosanitize !49
  %119 = trunc i64 %118 to i32
  %120 = load i32, ptr %50, align 8, !tbaa !33
  %121 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %120, i32 262), !nosanitize !49
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !49
  br i1 %122, label %123, label %124, !prof !50, !nosanitize !49

123:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

124:                                              ; preds = %117
  %125 = extractvalue { i32, i1 } %121, 0, !nosanitize !49
  %126 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %87, i32 %125), !nosanitize !49
  %127 = extractvalue { i32, i1 } %126, 1, !nosanitize !49
  br i1 %127, label %128, label %129, !prof !50, !nosanitize !49

128:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

129:                                              ; preds = %124
  %130 = extractvalue { i32, i1 } %126, 0, !nosanitize !49
  %131 = icmp ult i32 %112, %130
  br i1 %131, label %200, label %132

132:                                              ; preds = %129
  %133 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %87, i32 %119), !nosanitize !49
  %134 = extractvalue { i32, i1 } %133, 1, !nosanitize !49
  br i1 %134, label %135, label %136, !prof !50, !nosanitize !49

135:                                              ; preds = %132
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

136:                                              ; preds = %132
  %137 = extractvalue { i32, i1 } %133, 0, !nosanitize !49
  %138 = load ptr, ptr %91, align 8, !tbaa !39
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 %90
  %140 = zext i32 %137 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %138, ptr align 1 %139, i64 %140, i1 false)
  %141 = load i32, ptr %92, align 8, !tbaa !84
  %142 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %141, i32 %87), !nosanitize !49
  %143 = extractvalue { i32, i1 } %142, 1, !nosanitize !49
  br i1 %143, label %144, label %145, !prof !50, !nosanitize !49

144:                                              ; preds = %136
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

145:                                              ; preds = %136
  %146 = extractvalue { i32, i1 } %142, 0, !nosanitize !49
  store i32 %146, ptr %92, align 8, !tbaa !84
  %147 = load i32, ptr %89, align 4, !tbaa !74
  %148 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %147, i32 %87), !nosanitize !49
  %149 = extractvalue { i32, i1 } %148, 1, !nosanitize !49
  br i1 %149, label %150, label %151, !prof !50, !nosanitize !49

150:                                              ; preds = %145
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

151:                                              ; preds = %145
  %152 = extractvalue { i32, i1 } %148, 0, !nosanitize !49
  store i32 %152, ptr %89, align 4, !tbaa !74
  %153 = load i64, ptr %93, align 8, !tbaa !75
  %154 = sub nsw i64 %153, %90
  store i64 %154, ptr %93, align 8, !tbaa !75
  %155 = load i32, ptr %94, align 4, !tbaa !77
  %156 = icmp ugt i32 %155, %152
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 %152, ptr %94, align 4, !tbaa !77
  br label %158

158:                                              ; preds = %157, %151
  %159 = load i32, ptr %50, align 8, !tbaa !33
  %160 = load i32, ptr %95, align 4, !tbaa !36
  %161 = load ptr, ptr %96, align 8, !tbaa !41
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds nuw [2 x i8], ptr %161, i64 %162
  %164 = icmp eq i32 %160, 0
  br label %165

165:                                              ; preds = %174, %158
  %166 = phi ptr [ %163, %158 ], [ %168, %174 ]
  %167 = phi i32 [ %160, %158 ], [ %175, %174 ]
  %168 = getelementptr inbounds i8, ptr %166, i64 -2
  %169 = load i16, ptr %168, align 2, !tbaa !63
  %170 = zext i16 %169 to i32
  %171 = tail call i32 @llvm.usub.sat.i32(i32 %170, i32 %159)
  %172 = trunc nuw i32 %171 to i16
  store i16 %172, ptr %168, align 2, !tbaa !63
  br i1 %164, label %173, label %174, !prof !50, !nosanitize !49

173:                                              ; preds = %165
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

174:                                              ; preds = %165
  %175 = add i32 %167, -1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %165, !llvm.loop !85

177:                                              ; preds = %174
  %178 = load ptr, ptr %97, align 8, !tbaa !40
  %179 = zext i32 %159 to i64
  %180 = getelementptr inbounds nuw [2 x i8], ptr %178, i64 %179
  %181 = icmp eq i32 %159, 0
  br label %182

182:                                              ; preds = %191, %177
  %183 = phi ptr [ %180, %177 ], [ %185, %191 ]
  %184 = phi i32 [ %159, %177 ], [ %192, %191 ]
  %185 = getelementptr inbounds i8, ptr %183, i64 -2
  %186 = load i16, ptr %185, align 2, !tbaa !63
  %187 = zext i16 %186 to i32
  %188 = tail call i32 @llvm.usub.sat.i32(i32 %187, i32 %159)
  %189 = trunc nuw i32 %188 to i16
  store i16 %189, ptr %185, align 2, !tbaa !63
  br i1 %181, label %190, label %191, !prof !50, !nosanitize !49

190:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

191:                                              ; preds = %182
  %192 = add i32 %184, -1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %182, !llvm.loop !88

194:                                              ; preds = %191
  store i32 1, ptr %98, align 8, !tbaa !64
  %195 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %119, i32 %87), !nosanitize !49
  %196 = extractvalue { i32, i1 } %195, 1, !nosanitize !49
  br i1 %196, label %197, label %198, !prof !50, !nosanitize !49

197:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

198:                                              ; preds = %194
  %199 = extractvalue { i32, i1 } %195, 0, !nosanitize !49
  br label %200

200:                                              ; preds = %198, %129
  %201 = phi i32 [ %199, %198 ], [ %119, %129 ]
  %202 = load ptr, ptr %30, align 8, !tbaa !20
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %204 = load i32, ptr %203, align 8, !tbaa !82
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %339, label %206

206:                                              ; preds = %200
  %207 = load ptr, ptr %91, align 8, !tbaa !39
  %208 = load i32, ptr %89, align 4, !tbaa !74
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds nuw i8, ptr %207, i64 %209
  %211 = load i32, ptr %41, align 4, !tbaa !76
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds nuw i8, ptr %210, i64 %212
  %214 = tail call i32 @llvm.umin.i32(i32 %204, i32 %201)
  %215 = icmp eq i32 %201, 0
  br i1 %215, label %246, label %216

216:                                              ; preds = %206
  %217 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %204, i32 %214), !nosanitize !49
  %218 = extractvalue { i32, i1 } %217, 1, !nosanitize !49
  br i1 %218, label %219, label %220, !prof !50, !nosanitize !49

219:                                              ; preds = %216
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

220:                                              ; preds = %216
  %221 = extractvalue { i32, i1 } %217, 0, !nosanitize !49
  store i32 %221, ptr %203, align 8, !tbaa !82
  %222 = load ptr, ptr %202, align 8, !tbaa !83
  %223 = zext i32 %214 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %213, ptr align 1 %222, i64 %223, i1 false)
  %224 = getelementptr inbounds nuw i8, ptr %202, i64 56
  %225 = load ptr, ptr %224, align 8, !tbaa !19
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 48
  %227 = load i32, ptr %226, align 8, !tbaa !30
  switch i32 %227, label %236 [
    i32 1, label %228
    i32 2, label %232
  ]

228:                                              ; preds = %220
  %229 = getelementptr inbounds nuw i8, ptr %202, i64 96
  %230 = load i64, ptr %229, align 8, !tbaa !60
  %231 = tail call i64 @adler32(i64 noundef %230, ptr noundef %213, i32 noundef %214) #12
  store i64 %231, ptr %229, align 8, !tbaa !60
  br label %236

232:                                              ; preds = %220
  %233 = getelementptr inbounds nuw i8, ptr %202, i64 96
  %234 = load i64, ptr %233, align 8, !tbaa !60
  %235 = tail call i64 @crc32(i64 noundef %234, ptr noundef %213, i32 noundef %214) #12
  store i64 %235, ptr %233, align 8, !tbaa !60
  br label %236

236:                                              ; preds = %232, %228, %220
  %237 = load ptr, ptr %202, align 8, !tbaa !83
  %238 = getelementptr inbounds nuw i8, ptr %237, i64 %223
  store ptr %238, ptr %202, align 8, !tbaa !83
  %239 = getelementptr inbounds nuw i8, ptr %202, i64 16
  %240 = load i64, ptr %239, align 8, !tbaa !56
  %241 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 %223), !nosanitize !49
  %242 = extractvalue { i64, i1 } %241, 1, !nosanitize !49
  br i1 %242, label %243, label %244, !prof !50, !nosanitize !49

243:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

244:                                              ; preds = %236
  %245 = extractvalue { i64, i1 } %241, 0, !nosanitize !49
  store i64 %245, ptr %239, align 8, !tbaa !56
  br label %246

246:                                              ; preds = %244, %206
  %247 = phi i32 [ %214, %244 ], [ 0, %206 ]
  %248 = load i32, ptr %41, align 4, !tbaa !76
  %249 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %248, i32 %247), !nosanitize !49
  %250 = extractvalue { i32, i1 } %249, 1, !nosanitize !49
  br i1 %250, label %251, label %252, !prof !50, !nosanitize !49

251:                                              ; preds = %246
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

252:                                              ; preds = %246
  %253 = extractvalue { i32, i1 } %249, 0, !nosanitize !49
  store i32 %253, ptr %41, align 4, !tbaa !76
  %254 = load i32, ptr %94, align 4, !tbaa !77
  %255 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %253, i32 %254), !nosanitize !49
  %256 = extractvalue { i32, i1 } %255, 1, !nosanitize !49
  br i1 %256, label %257, label %258, !prof !50, !nosanitize !49

257:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

258:                                              ; preds = %252
  %259 = extractvalue { i32, i1 } %255, 0, !nosanitize !49
  %260 = icmp ugt i32 %259, 2
  br i1 %260, label %261, label %332

261:                                              ; preds = %258
  %262 = load i32, ptr %89, align 4, !tbaa !74
  %263 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %262, i32 %254), !nosanitize !49
  %264 = extractvalue { i32, i1 } %263, 0, !nosanitize !49
  %265 = extractvalue { i32, i1 } %263, 1, !nosanitize !49
  br i1 %265, label %266, label %267, !prof !50, !nosanitize !49

266:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

267:                                              ; preds = %261
  %268 = load ptr, ptr %91, align 8, !tbaa !39
  %269 = zext i32 %264 to i64
  %270 = getelementptr inbounds nuw i8, ptr %268, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !8
  %272 = zext i8 %271 to i32
  store i32 %272, ptr %99, align 8, !tbaa !81
  %273 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %264, i32 1), !nosanitize !49
  %274 = extractvalue { i32, i1 } %273, 1, !nosanitize !49
  br i1 %274, label %275, label %276, !prof !50, !nosanitize !49

275:                                              ; preds = %267
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

276:                                              ; preds = %267
  %277 = extractvalue { i32, i1 } %273, 0, !nosanitize !49
  %278 = load i32, ptr %100, align 8, !tbaa !38
  %279 = shl i32 %272, %278
  %280 = zext i32 %277 to i64
  %281 = getelementptr inbounds nuw i8, ptr %268, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !8
  %283 = zext i8 %282 to i32
  %284 = xor i32 %279, %283
  %285 = load i32, ptr %101, align 4, !tbaa !37
  %286 = and i32 %284, %285
  store i32 %286, ptr %99, align 8, !tbaa !81
  br label %287

287:                                              ; preds = %329, %276
  %288 = phi i32 [ %254, %276 ], [ %325, %329 ]
  %289 = phi i32 [ %264, %276 ], [ %321, %329 ]
  %290 = icmp eq i32 %288, 0
  br i1 %290, label %332, label %291

291:                                              ; preds = %287
  %292 = load i32, ptr %99, align 8, !tbaa !81
  %293 = shl i32 %292, %278
  %294 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %289, i32 3), !nosanitize !49
  %295 = extractvalue { i32, i1 } %294, 1, !nosanitize !49
  br i1 %295, label %296, label %297, !prof !50, !nosanitize !49

296:                                              ; preds = %291
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

297:                                              ; preds = %291
  %298 = extractvalue { i32, i1 } %294, 0, !nosanitize !49
  %299 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %298, i32 1), !nosanitize !49
  %300 = extractvalue { i32, i1 } %299, 1, !nosanitize !49
  br i1 %300, label %301, label %302, !prof !50, !nosanitize !49

301:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

302:                                              ; preds = %297
  %303 = extractvalue { i32, i1 } %299, 0, !nosanitize !49
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds nuw i8, ptr %268, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !8
  %307 = zext i8 %306 to i32
  %308 = xor i32 %293, %307
  %309 = and i32 %308, %285
  store i32 %309, ptr %99, align 8, !tbaa !81
  %310 = load ptr, ptr %96, align 8, !tbaa !41
  %311 = zext i32 %309 to i64
  %312 = getelementptr inbounds nuw [2 x i8], ptr %310, i64 %311
  %313 = load i16, ptr %312, align 2, !tbaa !63
  %314 = load ptr, ptr %97, align 8, !tbaa !40
  %315 = load i32, ptr %102, align 8, !tbaa !34
  %316 = and i32 %315, %289
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds nuw [2 x i8], ptr %314, i64 %317
  store i16 %313, ptr %318, align 2, !tbaa !63
  %319 = trunc i32 %289 to i16
  store i16 %319, ptr %312, align 2, !tbaa !63
  %320 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %289, i32 1), !nosanitize !49
  %321 = extractvalue { i32, i1 } %320, 0, !nosanitize !49
  %322 = extractvalue { i32, i1 } %320, 1, !nosanitize !49
  br i1 %322, label %323, label %324, !prof !50, !nosanitize !49

323:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

324:                                              ; preds = %302
  %325 = add i32 %288, -1
  store i32 %325, ptr %94, align 4, !tbaa !77
  %326 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %253, i32 %325), !nosanitize !49
  %327 = extractvalue { i32, i1 } %326, 1, !nosanitize !49
  br i1 %327, label %328, label %329, !prof !50, !nosanitize !49

328:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

329:                                              ; preds = %324
  %330 = extractvalue { i32, i1 } %326, 0, !nosanitize !49
  %331 = icmp ult i32 %330, 3
  br i1 %331, label %332, label %287, !llvm.loop !89

332:                                              ; preds = %329, %287, %258
  %333 = icmp ult i32 %253, 262
  br i1 %333, label %334, label %339

334:                                              ; preds = %332
  %335 = load ptr, ptr %30, align 8, !tbaa !20
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 8
  %337 = load i32, ptr %336, align 8, !tbaa !82
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %103, !llvm.loop !90

339:                                              ; preds = %334, %332, %200
  %340 = getelementptr inbounds nuw i8, ptr %30, i64 5952
  %341 = load i64, ptr %340, align 8, !tbaa !42
  %342 = load i64, ptr %88, align 8, !tbaa !62
  %343 = icmp ult i64 %341, %342
  br i1 %343, label %344, label %383

344:                                              ; preds = %339
  %345 = load i32, ptr %89, align 4, !tbaa !74
  %346 = zext i32 %345 to i64
  %347 = load i32, ptr %41, align 4, !tbaa !76
  %348 = zext i32 %347 to i64
  %349 = add nuw nsw i64 %348, %346
  %350 = icmp ult i64 %341, %349
  br i1 %350, label %351, label %361

351:                                              ; preds = %344
  %352 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %342, i64 %349), !nosanitize !49
  %353 = extractvalue { i64, i1 } %352, 1, !nosanitize !49
  br i1 %353, label %354, label %355, !prof !50, !nosanitize !49

354:                                              ; preds = %351
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

355:                                              ; preds = %351
  %356 = extractvalue { i64, i1 } %352, 0, !nosanitize !49
  %357 = tail call i64 @llvm.umin.i64(i64 %356, i64 258)
  %358 = load ptr, ptr %91, align 8, !tbaa !39
  %359 = getelementptr inbounds nuw i8, ptr %358, i64 %349
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %359, i8 0, i64 %357, i1 false)
  %360 = add nuw nsw i64 %357, %349
  br label %381

361:                                              ; preds = %344
  %362 = add nuw nsw i64 %349, 258
  %363 = icmp ult i64 %341, %362
  br i1 %363, label %364, label %383

364:                                              ; preds = %361
  %365 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %342, i64 %341), !nosanitize !49
  %366 = extractvalue { i64, i1 } %365, 1, !nosanitize !49
  br i1 %366, label %367, label %368, !prof !50, !nosanitize !49

367:                                              ; preds = %364
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

368:                                              ; preds = %364
  %369 = sub nuw nsw i64 %362, %341
  %370 = extractvalue { i64, i1 } %365, 0, !nosanitize !49
  %371 = tail call i64 @llvm.umin.i64(i64 %369, i64 %370)
  %372 = load ptr, ptr %91, align 8, !tbaa !39
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 %341
  %374 = and i64 %371, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %373, i8 0, i64 %374, i1 false)
  %375 = load i64, ptr %340, align 8, !tbaa !42
  %376 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %375, i64 %371), !nosanitize !49
  %377 = extractvalue { i64, i1 } %376, 1, !nosanitize !49
  br i1 %377, label %378, label %379, !prof !50, !nosanitize !49

378:                                              ; preds = %368
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

379:                                              ; preds = %368
  %380 = extractvalue { i64, i1 } %376, 0, !nosanitize !49
  br label %381

381:                                              ; preds = %379, %355
  %382 = phi i64 [ %360, %355 ], [ %380, %379 ]
  store i64 %382, ptr %340, align 8, !tbaa !42
  br label %383

383:                                              ; preds = %381, %339, %361
  %384 = load i32, ptr %41, align 4, !tbaa !76
  %385 = icmp ugt i32 %384, 2
  br i1 %385, label %386, label %720

386:                                              ; preds = %383, %717
  %387 = phi i32 [ %718, %717 ], [ %384, %383 ]
  %388 = add i32 %387, -2
  %389 = load i32, ptr %89, align 4, !tbaa !74
  %390 = load i32, ptr %100, align 8, !tbaa !38
  %391 = load ptr, ptr %91, align 8, !tbaa !39
  %392 = load i32, ptr %99, align 8, !tbaa !81
  %393 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %389)
  %394 = xor i32 %389, -1
  %395 = tail call i32 @llvm.umin.i32(i32 %393, i32 %394)
  %396 = add i32 %387, -3
  %397 = tail call i32 @llvm.umin.i32(i32 %395, i32 %396)
  %398 = sub i32 -3, %389
  %399 = tail call i32 @llvm.umin.i32(i32 %397, i32 %398)
  %400 = icmp eq i32 %393, %399
  %401 = icmp ugt i32 %398, %397
  %402 = icmp eq i32 %399, %394
  br label %403

403:                                              ; preds = %431, %386
  %404 = phi i32 [ %392, %386 ], [ %419, %431 ]
  %405 = phi i32 [ %389, %386 ], [ %432, %431 ]
  %406 = phi i32 [ %388, %386 ], [ %433, %431 ]
  %407 = shl i32 %404, %390
  br i1 %400, label %408, label %409, !prof !50, !nosanitize !49

408:                                              ; preds = %403
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

409:                                              ; preds = %403
  br i1 %401, label %411, label %410, !prof !91, !nosanitize !49

410:                                              ; preds = %409
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

411:                                              ; preds = %409
  %412 = add i32 %405, 2
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds nuw i8, ptr %391, i64 %413
  %415 = load i8, ptr %414, align 1, !tbaa !8
  %416 = zext i8 %415 to i32
  %417 = xor i32 %407, %416
  %418 = load i32, ptr %101, align 4, !tbaa !37
  %419 = and i32 %417, %418
  store i32 %419, ptr %99, align 8, !tbaa !81
  %420 = load ptr, ptr %96, align 8, !tbaa !41
  %421 = zext i32 %419 to i64
  %422 = getelementptr inbounds nuw [2 x i8], ptr %420, i64 %421
  %423 = load i16, ptr %422, align 2, !tbaa !63
  %424 = load ptr, ptr %97, align 8, !tbaa !40
  %425 = load i32, ptr %102, align 8, !tbaa !34
  %426 = and i32 %425, %405
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds nuw [2 x i8], ptr %424, i64 %427
  store i16 %423, ptr %428, align 2, !tbaa !63
  %429 = trunc i32 %405 to i16
  store i16 %429, ptr %422, align 2, !tbaa !63
  br i1 %402, label %430, label %431, !prof !50, !nosanitize !49

430:                                              ; preds = %411
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

431:                                              ; preds = %411
  %432 = add i32 %405, 1
  %433 = add i32 %406, -1
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %403, !llvm.loop !92

435:                                              ; preds = %431
  store i32 %432, ptr %89, align 4, !tbaa !74
  store i32 2, ptr %41, align 4, !tbaa !76
  %436 = load i32, ptr %50, align 8, !tbaa !33
  %437 = zext i32 %436 to i64
  br label %438

438:                                              ; preds = %669, %435
  %439 = load i64, ptr %88, align 8, !tbaa !62
  %440 = load i32, ptr %41, align 4, !tbaa !76
  %441 = zext i32 %440 to i64
  %442 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %439, i64 %441), !nosanitize !49
  %443 = extractvalue { i64, i1 } %442, 1, !nosanitize !49
  br i1 %443, label %444, label %445, !prof !50, !nosanitize !49

444:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

445:                                              ; preds = %438
  %446 = extractvalue { i64, i1 } %442, 0, !nosanitize !49
  %447 = load i32, ptr %89, align 4, !tbaa !74
  %448 = zext i32 %447 to i64
  %449 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %446, i64 %448), !nosanitize !49
  %450 = extractvalue { i64, i1 } %449, 1, !nosanitize !49
  br i1 %450, label %451, label %452, !prof !50, !nosanitize !49

451:                                              ; preds = %445
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

452:                                              ; preds = %445
  %453 = extractvalue { i64, i1 } %449, 0, !nosanitize !49
  %454 = trunc i64 %453 to i32
  %455 = load i32, ptr %50, align 8, !tbaa !33
  %456 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %455, i32 262), !nosanitize !49
  %457 = extractvalue { i32, i1 } %456, 1, !nosanitize !49
  br i1 %457, label %458, label %459, !prof !50, !nosanitize !49

458:                                              ; preds = %452
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

459:                                              ; preds = %452
  %460 = extractvalue { i32, i1 } %456, 0, !nosanitize !49
  %461 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %436, i32 %460), !nosanitize !49
  %462 = extractvalue { i32, i1 } %461, 1, !nosanitize !49
  br i1 %462, label %463, label %464, !prof !50, !nosanitize !49

463:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

464:                                              ; preds = %459
  %465 = extractvalue { i32, i1 } %461, 0, !nosanitize !49
  %466 = icmp ult i32 %447, %465
  br i1 %466, label %535, label %467

467:                                              ; preds = %464
  %468 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %436, i32 %454), !nosanitize !49
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !49
  br i1 %469, label %470, label %471, !prof !50, !nosanitize !49

470:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

471:                                              ; preds = %467
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !49
  %473 = load ptr, ptr %91, align 8, !tbaa !39
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 %437
  %475 = zext i32 %472 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %473, ptr align 1 %474, i64 %475, i1 false)
  %476 = load i32, ptr %92, align 8, !tbaa !84
  %477 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %476, i32 %436), !nosanitize !49
  %478 = extractvalue { i32, i1 } %477, 1, !nosanitize !49
  br i1 %478, label %479, label %480, !prof !50, !nosanitize !49

479:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

480:                                              ; preds = %471
  %481 = extractvalue { i32, i1 } %477, 0, !nosanitize !49
  store i32 %481, ptr %92, align 8, !tbaa !84
  %482 = load i32, ptr %89, align 4, !tbaa !74
  %483 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %482, i32 %436), !nosanitize !49
  %484 = extractvalue { i32, i1 } %483, 1, !nosanitize !49
  br i1 %484, label %485, label %486, !prof !50, !nosanitize !49

485:                                              ; preds = %480
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

486:                                              ; preds = %480
  %487 = extractvalue { i32, i1 } %483, 0, !nosanitize !49
  store i32 %487, ptr %89, align 4, !tbaa !74
  %488 = load i64, ptr %93, align 8, !tbaa !75
  %489 = sub nsw i64 %488, %437
  store i64 %489, ptr %93, align 8, !tbaa !75
  %490 = load i32, ptr %94, align 4, !tbaa !77
  %491 = icmp ugt i32 %490, %487
  br i1 %491, label %492, label %493

492:                                              ; preds = %486
  store i32 %487, ptr %94, align 4, !tbaa !77
  br label %493

493:                                              ; preds = %492, %486
  %494 = load i32, ptr %50, align 8, !tbaa !33
  %495 = load i32, ptr %95, align 4, !tbaa !36
  %496 = load ptr, ptr %96, align 8, !tbaa !41
  %497 = zext i32 %495 to i64
  %498 = getelementptr inbounds nuw [2 x i8], ptr %496, i64 %497
  %499 = icmp eq i32 %495, 0
  br label %500

500:                                              ; preds = %509, %493
  %501 = phi ptr [ %498, %493 ], [ %503, %509 ]
  %502 = phi i32 [ %495, %493 ], [ %510, %509 ]
  %503 = getelementptr inbounds i8, ptr %501, i64 -2
  %504 = load i16, ptr %503, align 2, !tbaa !63
  %505 = zext i16 %504 to i32
  %506 = tail call i32 @llvm.usub.sat.i32(i32 %505, i32 %494)
  %507 = trunc nuw i32 %506 to i16
  store i16 %507, ptr %503, align 2, !tbaa !63
  br i1 %499, label %508, label %509, !prof !50, !nosanitize !49

508:                                              ; preds = %500
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

509:                                              ; preds = %500
  %510 = add i32 %502, -1
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %500, !llvm.loop !85

512:                                              ; preds = %509
  %513 = load ptr, ptr %97, align 8, !tbaa !40
  %514 = zext i32 %494 to i64
  %515 = getelementptr inbounds nuw [2 x i8], ptr %513, i64 %514
  %516 = icmp eq i32 %494, 0
  br label %517

517:                                              ; preds = %526, %512
  %518 = phi ptr [ %515, %512 ], [ %520, %526 ]
  %519 = phi i32 [ %494, %512 ], [ %527, %526 ]
  %520 = getelementptr inbounds i8, ptr %518, i64 -2
  %521 = load i16, ptr %520, align 2, !tbaa !63
  %522 = zext i16 %521 to i32
  %523 = tail call i32 @llvm.usub.sat.i32(i32 %522, i32 %494)
  %524 = trunc nuw i32 %523 to i16
  store i16 %524, ptr %520, align 2, !tbaa !63
  br i1 %516, label %525, label %526, !prof !50, !nosanitize !49

525:                                              ; preds = %517
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

526:                                              ; preds = %517
  %527 = add i32 %519, -1
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %517, !llvm.loop !88

529:                                              ; preds = %526
  store i32 1, ptr %98, align 8, !tbaa !64
  %530 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %454, i32 %436), !nosanitize !49
  %531 = extractvalue { i32, i1 } %530, 1, !nosanitize !49
  br i1 %531, label %532, label %533, !prof !50, !nosanitize !49

532:                                              ; preds = %529
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

533:                                              ; preds = %529
  %534 = extractvalue { i32, i1 } %530, 0, !nosanitize !49
  br label %535

535:                                              ; preds = %533, %464
  %536 = phi i32 [ %534, %533 ], [ %454, %464 ]
  %537 = load ptr, ptr %30, align 8, !tbaa !20
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 8
  %539 = load i32, ptr %538, align 8, !tbaa !82
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %674, label %541

541:                                              ; preds = %535
  %542 = load ptr, ptr %91, align 8, !tbaa !39
  %543 = load i32, ptr %89, align 4, !tbaa !74
  %544 = zext i32 %543 to i64
  %545 = getelementptr inbounds nuw i8, ptr %542, i64 %544
  %546 = load i32, ptr %41, align 4, !tbaa !76
  %547 = zext i32 %546 to i64
  %548 = getelementptr inbounds nuw i8, ptr %545, i64 %547
  %549 = tail call i32 @llvm.umin.i32(i32 %539, i32 %536)
  %550 = icmp eq i32 %536, 0
  br i1 %550, label %581, label %551

551:                                              ; preds = %541
  %552 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %539, i32 %549), !nosanitize !49
  %553 = extractvalue { i32, i1 } %552, 1, !nosanitize !49
  br i1 %553, label %554, label %555, !prof !50, !nosanitize !49

554:                                              ; preds = %551
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

555:                                              ; preds = %551
  %556 = extractvalue { i32, i1 } %552, 0, !nosanitize !49
  store i32 %556, ptr %538, align 8, !tbaa !82
  %557 = load ptr, ptr %537, align 8, !tbaa !83
  %558 = zext i32 %549 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %548, ptr align 1 %557, i64 %558, i1 false)
  %559 = getelementptr inbounds nuw i8, ptr %537, i64 56
  %560 = load ptr, ptr %559, align 8, !tbaa !19
  %561 = getelementptr inbounds nuw i8, ptr %560, i64 48
  %562 = load i32, ptr %561, align 8, !tbaa !30
  switch i32 %562, label %571 [
    i32 1, label %563
    i32 2, label %567
  ]

563:                                              ; preds = %555
  %564 = getelementptr inbounds nuw i8, ptr %537, i64 96
  %565 = load i64, ptr %564, align 8, !tbaa !60
  %566 = tail call i64 @adler32(i64 noundef %565, ptr noundef %548, i32 noundef %549) #12
  store i64 %566, ptr %564, align 8, !tbaa !60
  br label %571

567:                                              ; preds = %555
  %568 = getelementptr inbounds nuw i8, ptr %537, i64 96
  %569 = load i64, ptr %568, align 8, !tbaa !60
  %570 = tail call i64 @crc32(i64 noundef %569, ptr noundef %548, i32 noundef %549) #12
  store i64 %570, ptr %568, align 8, !tbaa !60
  br label %571

571:                                              ; preds = %567, %563, %555
  %572 = load ptr, ptr %537, align 8, !tbaa !83
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 %558
  store ptr %573, ptr %537, align 8, !tbaa !83
  %574 = getelementptr inbounds nuw i8, ptr %537, i64 16
  %575 = load i64, ptr %574, align 8, !tbaa !56
  %576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %575, i64 %558), !nosanitize !49
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !49
  br i1 %577, label %578, label %579, !prof !50, !nosanitize !49

578:                                              ; preds = %571
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

579:                                              ; preds = %571
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !49
  store i64 %580, ptr %574, align 8, !tbaa !56
  br label %581

581:                                              ; preds = %579, %541
  %582 = phi i32 [ %549, %579 ], [ 0, %541 ]
  %583 = load i32, ptr %41, align 4, !tbaa !76
  %584 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %583, i32 %582), !nosanitize !49
  %585 = extractvalue { i32, i1 } %584, 1, !nosanitize !49
  br i1 %585, label %586, label %587, !prof !50, !nosanitize !49

586:                                              ; preds = %581
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

587:                                              ; preds = %581
  %588 = extractvalue { i32, i1 } %584, 0, !nosanitize !49
  store i32 %588, ptr %41, align 4, !tbaa !76
  %589 = load i32, ptr %94, align 4, !tbaa !77
  %590 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %588, i32 %589), !nosanitize !49
  %591 = extractvalue { i32, i1 } %590, 1, !nosanitize !49
  br i1 %591, label %592, label %593, !prof !50, !nosanitize !49

592:                                              ; preds = %587
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

593:                                              ; preds = %587
  %594 = extractvalue { i32, i1 } %590, 0, !nosanitize !49
  %595 = icmp ugt i32 %594, 2
  br i1 %595, label %596, label %667

596:                                              ; preds = %593
  %597 = load i32, ptr %89, align 4, !tbaa !74
  %598 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %597, i32 %589), !nosanitize !49
  %599 = extractvalue { i32, i1 } %598, 0, !nosanitize !49
  %600 = extractvalue { i32, i1 } %598, 1, !nosanitize !49
  br i1 %600, label %601, label %602, !prof !50, !nosanitize !49

601:                                              ; preds = %596
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

602:                                              ; preds = %596
  %603 = load ptr, ptr %91, align 8, !tbaa !39
  %604 = zext i32 %599 to i64
  %605 = getelementptr inbounds nuw i8, ptr %603, i64 %604
  %606 = load i8, ptr %605, align 1, !tbaa !8
  %607 = zext i8 %606 to i32
  store i32 %607, ptr %99, align 8, !tbaa !81
  %608 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %599, i32 1), !nosanitize !49
  %609 = extractvalue { i32, i1 } %608, 1, !nosanitize !49
  br i1 %609, label %610, label %611, !prof !50, !nosanitize !49

610:                                              ; preds = %602
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

611:                                              ; preds = %602
  %612 = extractvalue { i32, i1 } %608, 0, !nosanitize !49
  %613 = load i32, ptr %100, align 8, !tbaa !38
  %614 = shl i32 %607, %613
  %615 = zext i32 %612 to i64
  %616 = getelementptr inbounds nuw i8, ptr %603, i64 %615
  %617 = load i8, ptr %616, align 1, !tbaa !8
  %618 = zext i8 %617 to i32
  %619 = xor i32 %614, %618
  %620 = load i32, ptr %101, align 4, !tbaa !37
  %621 = and i32 %619, %620
  store i32 %621, ptr %99, align 8, !tbaa !81
  br label %622

622:                                              ; preds = %664, %611
  %623 = phi i32 [ %589, %611 ], [ %660, %664 ]
  %624 = phi i32 [ %599, %611 ], [ %656, %664 ]
  %625 = icmp eq i32 %623, 0
  br i1 %625, label %667, label %626

626:                                              ; preds = %622
  %627 = load i32, ptr %99, align 8, !tbaa !81
  %628 = shl i32 %627, %613
  %629 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %624, i32 3), !nosanitize !49
  %630 = extractvalue { i32, i1 } %629, 1, !nosanitize !49
  br i1 %630, label %631, label %632, !prof !50, !nosanitize !49

631:                                              ; preds = %626
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

632:                                              ; preds = %626
  %633 = extractvalue { i32, i1 } %629, 0, !nosanitize !49
  %634 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %633, i32 1), !nosanitize !49
  %635 = extractvalue { i32, i1 } %634, 1, !nosanitize !49
  br i1 %635, label %636, label %637, !prof !50, !nosanitize !49

636:                                              ; preds = %632
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

637:                                              ; preds = %632
  %638 = extractvalue { i32, i1 } %634, 0, !nosanitize !49
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds nuw i8, ptr %603, i64 %639
  %641 = load i8, ptr %640, align 1, !tbaa !8
  %642 = zext i8 %641 to i32
  %643 = xor i32 %628, %642
  %644 = and i32 %643, %620
  store i32 %644, ptr %99, align 8, !tbaa !81
  %645 = load ptr, ptr %96, align 8, !tbaa !41
  %646 = zext i32 %644 to i64
  %647 = getelementptr inbounds nuw [2 x i8], ptr %645, i64 %646
  %648 = load i16, ptr %647, align 2, !tbaa !63
  %649 = load ptr, ptr %97, align 8, !tbaa !40
  %650 = load i32, ptr %102, align 8, !tbaa !34
  %651 = and i32 %650, %624
  %652 = zext i32 %651 to i64
  %653 = getelementptr inbounds nuw [2 x i8], ptr %649, i64 %652
  store i16 %648, ptr %653, align 2, !tbaa !63
  %654 = trunc i32 %624 to i16
  store i16 %654, ptr %647, align 2, !tbaa !63
  %655 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %624, i32 1), !nosanitize !49
  %656 = extractvalue { i32, i1 } %655, 0, !nosanitize !49
  %657 = extractvalue { i32, i1 } %655, 1, !nosanitize !49
  br i1 %657, label %658, label %659, !prof !50, !nosanitize !49

658:                                              ; preds = %637
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

659:                                              ; preds = %637
  %660 = add i32 %623, -1
  store i32 %660, ptr %94, align 4, !tbaa !77
  %661 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %588, i32 %660), !nosanitize !49
  %662 = extractvalue { i32, i1 } %661, 1, !nosanitize !49
  br i1 %662, label %663, label %664, !prof !50, !nosanitize !49

663:                                              ; preds = %659
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

664:                                              ; preds = %659
  %665 = extractvalue { i32, i1 } %661, 0, !nosanitize !49
  %666 = icmp ult i32 %665, 3
  br i1 %666, label %667, label %622, !llvm.loop !89

667:                                              ; preds = %664, %622, %593
  %668 = icmp ult i32 %588, 262
  br i1 %668, label %669, label %674

669:                                              ; preds = %667
  %670 = load ptr, ptr %30, align 8, !tbaa !20
  %671 = getelementptr inbounds nuw i8, ptr %670, i64 8
  %672 = load i32, ptr %671, align 8, !tbaa !82
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %438, !llvm.loop !90

674:                                              ; preds = %669, %667, %535
  %675 = load i64, ptr %340, align 8, !tbaa !42
  %676 = load i64, ptr %88, align 8, !tbaa !62
  %677 = icmp ult i64 %675, %676
  br i1 %677, label %678, label %717

678:                                              ; preds = %674
  %679 = load i32, ptr %89, align 4, !tbaa !74
  %680 = zext i32 %679 to i64
  %681 = load i32, ptr %41, align 4, !tbaa !76
  %682 = zext i32 %681 to i64
  %683 = add nuw nsw i64 %682, %680
  %684 = icmp ult i64 %675, %683
  br i1 %684, label %685, label %695

685:                                              ; preds = %678
  %686 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %676, i64 %683), !nosanitize !49
  %687 = extractvalue { i64, i1 } %686, 1, !nosanitize !49
  br i1 %687, label %688, label %689, !prof !50, !nosanitize !49

688:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

689:                                              ; preds = %685
  %690 = extractvalue { i64, i1 } %686, 0, !nosanitize !49
  %691 = tail call i64 @llvm.umin.i64(i64 %690, i64 258)
  %692 = load ptr, ptr %91, align 8, !tbaa !39
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 %683
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %693, i8 0, i64 %691, i1 false)
  %694 = add nuw nsw i64 %691, %683
  br label %715

695:                                              ; preds = %678
  %696 = add nuw nsw i64 %683, 258
  %697 = icmp ult i64 %675, %696
  br i1 %697, label %698, label %717

698:                                              ; preds = %695
  %699 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %676, i64 %675), !nosanitize !49
  %700 = extractvalue { i64, i1 } %699, 1, !nosanitize !49
  br i1 %700, label %701, label %702, !prof !50, !nosanitize !49

701:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

702:                                              ; preds = %698
  %703 = sub nuw nsw i64 %696, %675
  %704 = extractvalue { i64, i1 } %699, 0, !nosanitize !49
  %705 = tail call i64 @llvm.umin.i64(i64 %703, i64 %704)
  %706 = load ptr, ptr %91, align 8, !tbaa !39
  %707 = getelementptr inbounds nuw i8, ptr %706, i64 %675
  %708 = and i64 %705, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %707, i8 0, i64 %708, i1 false)
  %709 = load i64, ptr %340, align 8, !tbaa !42
  %710 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %709, i64 %705), !nosanitize !49
  %711 = extractvalue { i64, i1 } %710, 1, !nosanitize !49
  br i1 %711, label %712, label %713, !prof !50, !nosanitize !49

712:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

713:                                              ; preds = %702
  %714 = extractvalue { i64, i1 } %710, 0, !nosanitize !49
  br label %715

715:                                              ; preds = %713, %689
  %716 = phi i64 [ %694, %689 ], [ %714, %713 ]
  store i64 %716, ptr %340, align 8, !tbaa !42
  br label %717

717:                                              ; preds = %715, %674, %695
  %718 = load i32, ptr %41, align 4, !tbaa !76
  %719 = icmp ugt i32 %718, 2
  br i1 %719, label %386, label %720, !llvm.loop !93

720:                                              ; preds = %717, %383
  %721 = phi i32 [ %384, %383 ], [ %718, %717 ]
  %722 = load i32, ptr %89, align 4, !tbaa !74
  %723 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %722, i32 %721), !nosanitize !49
  %724 = extractvalue { i32, i1 } %723, 1, !nosanitize !49
  br i1 %724, label %725, label %726, !prof !50, !nosanitize !49

725:                                              ; preds = %720
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

726:                                              ; preds = %720
  %727 = extractvalue { i32, i1 } %723, 0, !nosanitize !49
  store i32 %727, ptr %89, align 4, !tbaa !74
  %728 = zext i32 %727 to i64
  store i64 %728, ptr %93, align 8, !tbaa !75
  store i32 %721, ptr %94, align 4, !tbaa !77
  store i32 0, ptr %41, align 4, !tbaa !76
  %729 = getelementptr inbounds nuw i8, ptr %30, i64 184
  store i32 2, ptr %729, align 8, !tbaa !78
  %730 = getelementptr inbounds nuw i8, ptr %30, i64 160
  store i32 2, ptr %730, align 8, !tbaa !79
  %731 = getelementptr inbounds nuw i8, ptr %30, i64 168
  store i32 0, ptr %731, align 8, !tbaa !80
  store ptr %86, ptr %0, align 8, !tbaa !83
  store i32 %85, ptr %84, align 8, !tbaa !82
  store i32 %32, ptr %31, align 8, !tbaa !30
  br label %732

732:                                              ; preds = %28, %36, %40, %24, %726
  %733 = phi i32 [ 0, %726 ], [ -2, %24 ], [ -2, %40 ], [ -2, %36 ], [ -2, %28 ]
  ret i32 %733
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %54 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 172
  %27 = load i32, ptr %26, align 4, !tbaa !74
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 180
  %29 = load i32, ptr %28, align 4, !tbaa !76
  %30 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %27, i32 %29), !nosanitize !49
  %31 = extractvalue { i32, i1 } %30, 1, !nosanitize !49
  br i1 %31, label %32, label %33, !prof !50, !nosanitize !49

32:                                               ; preds = %23
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

33:                                               ; preds = %23
  %34 = extractvalue { i32, i1 } %30, 0, !nosanitize !49
  %35 = getelementptr inbounds nuw i8, ptr %25, i64 80
  %36 = load i32, ptr %35, align 8, !tbaa !33
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %36)
  %38 = icmp ne ptr %1, null
  %39 = icmp ne i32 %37, 0
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = getelementptr inbounds nuw i8, ptr %25, i64 96
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = zext i32 %27 to i64
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 %44
  %46 = zext i32 %29 to i64
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 %46
  %48 = zext i32 %37 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %50, i64 %48, i1 false)
  br label %51

51:                                               ; preds = %41, %33
  %52 = icmp eq ptr %2, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  store i32 %37, ptr %2, align 4, !tbaa !4
  br label %54

54:                                               ; preds = %20, %17, %13, %9, %5, %3, %51, %53
  %55 = phi i32 [ 0, %51 ], [ 0, %53 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ -2, %20 ]
  ret i32 %55
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %49 [
    i32 42, label %21
    i32 57, label %21
    i32 69, label %21
    i32 73, label %21
    i32 91, label %21
    i32 103, label %21
    i32 113, label %21
    i32 666, label %21
  ]

21:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %23, align 8, !tbaa !56
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !57
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 40
  store i64 0, ptr %27, align 8, !tbaa !58
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %29, ptr %30, align 8, !tbaa !59
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %32 = load i32, ptr %31, align 8, !tbaa !30
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = sub nsw i32 0, %32
  store i32 %35, ptr %31, align 8, !tbaa !30
  br label %36

36:                                               ; preds = %34, %21
  %37 = load i32, ptr %31, align 8, !tbaa !30
  %38 = icmp eq i32 %37, 2
  %39 = select i1 %38, i32 57, i32 42
  %40 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %39, ptr %40, align 8, !tbaa !29
  br i1 %38, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %45

43:                                               ; preds = %36
  %44 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %46, ptr %47, align 8, !tbaa !60
  %48 = getelementptr inbounds nuw i8, ptr %26, i64 76
  store i32 -2, ptr %48, align 4, !tbaa !61
  tail call void @_tr_init(ptr noundef %26) #12
  br label %49

49:                                               ; preds = %18, %15, %11, %7, %3, %1, %45
  %50 = phi i32 [ 0, %45 ], [ -2, %1 ], [ -2, %3 ], [ -2, %7 ], [ -2, %11 ], [ -2, %15 ], [ -2, %18 ]
  ret i32 %50
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %30 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 48
  %26 = load i32, ptr %25, align 8, !tbaa !30
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = getelementptr inbounds nuw i8, ptr %24, i64 56
  store ptr %1, ptr %29, align 8, !tbaa !31
  br label %30

30:                                               ; preds = %19, %16, %12, %8, %4, %2, %22, %28
  %31 = phi i32 [ 0, %28 ], [ -2, %22 ], [ -2, %2 ], [ -2, %4 ], [ -2, %8 ], [ -2, %12 ], [ -2, %16 ], [ -2, %19 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -5, 1) i32 @deflatePending(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %41 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = icmp eq ptr %2, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 5940
  %29 = load i32, ptr %28, align 4, !tbaa !94
  store i32 %29, ptr %2, align 4, !tbaa !4
  br label %30

30:                                               ; preds = %25, %23
  %31 = icmp eq ptr %1, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 40
  %36 = load i64, ptr %35, align 8, !tbaa !58
  %37 = trunc i64 %36 to i32
  %38 = icmp ult i64 %36, 4294967296
  %39 = select i1 %38, i32 %37, i32 -1
  store i32 %39, ptr %1, align 4
  %40 = select i1 %38, i32 0, i32 -5
  br label %41

41:                                               ; preds = %20, %17, %13, %9, %5, %3, %32, %30
  %42 = phi i32 [ %40, %32 ], [ 0, %30 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ -2, %20 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateUsed(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %29 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp eq ptr %1, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 5944
  %28 = load i32, ptr %27, align 8, !tbaa !95
  store i32 %28, ptr %1, align 4, !tbaa !4
  br label %29

29:                                               ; preds = %19, %16, %12, %8, %4, %2, %22, %24
  %30 = phi i32 [ 0, %22 ], [ 0, %24 ], [ -2, %2 ], [ -2, %4 ], [ -2, %8 ], [ -2, %12 ], [ -2, %16 ], [ -2, %19 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %54 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = icmp ugt i32 %1, 16
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 5888
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %33 = icmp ult ptr %29, %32
  br i1 %33, label %54, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds nuw i8, ptr %25, i64 5940
  %36 = getelementptr inbounds nuw i8, ptr %25, i64 5936
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi i32 [ %52, %37 ], [ %1, %34 ]
  %39 = phi i32 [ %51, %37 ], [ %2, %34 ]
  %40 = load i32, ptr %35, align 4, !tbaa !94
  %41 = sub nsw i32 16, %40
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %38)
  %43 = shl nsw i32 -1, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %39, %44
  %46 = shl i32 %45, %40
  %47 = load i16, ptr %36, align 8, !tbaa !96
  %48 = trunc i32 %46 to i16
  %49 = or i16 %47, %48
  store i16 %49, ptr %36, align 8, !tbaa !96
  %50 = add nsw i32 %42, %40
  store i32 %50, ptr %35, align 4, !tbaa !94
  tail call void @_tr_flush_bits(ptr noundef %25) #12
  %51 = ashr i32 %39, %42
  %52 = sub nsw i32 %38, %42
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %37, !llvm.loop !97

54:                                               ; preds = %37, %20, %17, %13, %9, %5, %3, %23, %27
  %55 = phi i32 [ -5, %23 ], [ -2, %20 ], [ -5, %27 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ 0, %37 ]
  ret i32 %55
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1058, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1058, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1058, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1058, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1058

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %1058 [
    i32 42, label %23
    i32 57, label %23
    i32 69, label %23
    i32 73, label %23
    i32 91, label %23
    i32 103, label %23
    i32 113, label %23
    i32 666, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = icmp eq i32 %1, -1
  %27 = select i1 %26, i32 6, i32 %1
  %28 = icmp ugt i32 %27, 9
  %29 = icmp ugt i32 %2, 4
  %30 = or i1 %29, %28
  br i1 %30, label %1058, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds nuw i8, ptr %25, i64 196
  %33 = getelementptr inbounds nuw i8, ptr %25, i64 200
  %34 = load i32, ptr %33, align 8, !tbaa !53
  %35 = icmp eq i32 %2, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, ptr %32, align 4, !tbaa !52
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8, !tbaa !98
  %42 = zext nneg i32 %27 to i64
  %43 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %45 = load ptr, ptr %44, align 8, !tbaa !98
  %46 = icmp eq ptr %41, %45
  br i1 %46, label %1015, label %47

47:                                               ; preds = %36, %31
  %48 = getelementptr inbounds nuw i8, ptr %25, i64 76
  %49 = load i32, ptr %48, align 4, !tbaa !61
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %1015, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %53 = load ptr, ptr %52, align 8, !tbaa !15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %1012, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = icmp eq ptr %57, null
  %59 = icmp eq ptr %25, null
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %1012, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %25, align 8, !tbaa !20
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %64, label %1012

64:                                               ; preds = %61
  %65 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %66 = load i32, ptr %65, align 8, !tbaa !29
  switch i32 %66, label %1012 [
    i32 42, label %67
    i32 57, label %67
    i32 69, label %67
    i32 73, label %67
    i32 91, label %67
    i32 103, label %67
    i32 113, label %67
    i32 666, label %67
  ]

67:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %69 = load ptr, ptr %68, align 8, !tbaa !99
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %73 = load i32, ptr %72, align 8, !tbaa !82
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %0, align 8, !tbaa !83
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %75, %71
  %79 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %80 = load i32, ptr %79, align 8, !tbaa !29
  %81 = icmp eq i32 %80, 666
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %75, %67
  %83 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !46
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %83, ptr %84, align 8, !tbaa !9
  br label %1012

85:                                               ; preds = %78
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %87 = load i32, ptr %86, align 8, !tbaa !100
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %90, ptr %91, align 8, !tbaa !9
  br label %996

92:                                               ; preds = %85
  store i32 5, ptr %48, align 4, !tbaa !61
  %93 = getelementptr inbounds nuw i8, ptr %25, i64 40
  %94 = load i64, ptr %93, align 8, !tbaa !58
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %138, label %96

96:                                               ; preds = %92
  tail call void @_tr_flush_bits(ptr noundef nonnull %25) #12
  %97 = load i64, ptr %93, align 8, !tbaa !58
  %98 = load i32, ptr %86, align 8, !tbaa !100
  %99 = zext i32 %98 to i64
  %100 = tail call i64 @llvm.umin.i64(i64 %97, i64 %99)
  %101 = trunc nuw i64 %100 to i32
  %102 = icmp eq i64 %100, 0
  br i1 %102, label %134, label %103

103:                                              ; preds = %96
  %104 = load ptr, ptr %68, align 8, !tbaa !99
  %105 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %106 = load ptr, ptr %105, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %104, ptr align 1 %106, i64 %100, i1 false)
  %107 = load ptr, ptr %68, align 8, !tbaa !99
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 %100
  store ptr %108, ptr %68, align 8, !tbaa !99
  %109 = load ptr, ptr %105, align 8, !tbaa !59
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 %100
  store ptr %110, ptr %105, align 8, !tbaa !59
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %112 = load i64, ptr %111, align 8, !tbaa !101
  %113 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %112, i64 %100), !nosanitize !49
  %114 = extractvalue { i64, i1 } %113, 1, !nosanitize !49
  br i1 %114, label %115, label %116, !prof !50, !nosanitize !49

115:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

116:                                              ; preds = %103
  %117 = extractvalue { i64, i1 } %113, 0, !nosanitize !49
  store i64 %117, ptr %111, align 8, !tbaa !101
  %118 = load i32, ptr %86, align 8, !tbaa !100
  %119 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %118, i32 %101), !nosanitize !49
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !49
  br i1 %120, label %121, label %122, !prof !50, !nosanitize !49

121:                                              ; preds = %116
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

122:                                              ; preds = %116
  %123 = extractvalue { i32, i1 } %119, 0, !nosanitize !49
  store i32 %123, ptr %86, align 8, !tbaa !100
  %124 = load i64, ptr %93, align 8, !tbaa !58
  %125 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %124, i64 %100), !nosanitize !49
  %126 = extractvalue { i64, i1 } %125, 1, !nosanitize !49
  br i1 %126, label %127, label %128, !prof !50, !nosanitize !49

127:                                              ; preds = %122
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

128:                                              ; preds = %122
  %129 = extractvalue { i64, i1 } %125, 0, !nosanitize !49
  store i64 %129, ptr %93, align 8, !tbaa !58
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %133 = load ptr, ptr %132, align 8, !tbaa !44
  store ptr %133, ptr %105, align 8, !tbaa !59
  br label %134

134:                                              ; preds = %131, %128, %96
  %135 = load i32, ptr %86, align 8, !tbaa !100
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %996

138:                                              ; preds = %92
  br i1 %74, label %139, label %148

139:                                              ; preds = %138
  %140 = shl nsw i32 %49, 1
  %141 = icmp sgt i32 %49, 4
  %142 = select i1 %141, i32 -9, i32 0
  %143 = add i32 %142, %140
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %147 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %146, ptr %147, align 8, !tbaa !9
  br label %996

148:                                              ; preds = %139, %138, %134
  %149 = load i32, ptr %79, align 8, !tbaa !29
  switch i32 %149, label %161 [
    i32 666, label %150
    i32 42, label %156
  ]

150:                                              ; preds = %148
  %151 = load i32, ptr %72, align 8, !tbaa !82
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %154, ptr %155, align 8, !tbaa !9
  br label %996

156:                                              ; preds = %148
  %157 = getelementptr inbounds nuw i8, ptr %25, i64 48
  %158 = load i32, ptr %157, align 8, !tbaa !30
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 113, ptr %79, align 8, !tbaa !29
  br label %161

161:                                              ; preds = %160, %156, %150, %148
  %162 = load i32, ptr %79, align 8, !tbaa !29
  %163 = icmp eq i32 %162, 42
  br i1 %163, label %164, label %265

164:                                              ; preds = %161
  %165 = getelementptr inbounds nuw i8, ptr %25, i64 84
  %166 = load i32, ptr %165, align 4, !tbaa !32
  %167 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %166, i32 8), !nosanitize !49
  %168 = extractvalue { i32, i1 } %167, 1, !nosanitize !49
  br i1 %168, label %169, label %170, !prof !50, !nosanitize !49

169:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

170:                                              ; preds = %164
  %171 = extractvalue { i32, i1 } %167, 0, !nosanitize !49
  %172 = shl i32 %171, 12
  %173 = load i32, ptr %33, align 8, !tbaa !53
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %183, label %175

175:                                              ; preds = %170
  %176 = load i32, ptr %32, align 4, !tbaa !52
  %177 = icmp slt i32 %176, 2
  br i1 %177, label %183, label %178

178:                                              ; preds = %175
  %179 = icmp slt i32 %176, 6
  br i1 %179, label %183, label %180

180:                                              ; preds = %178
  %181 = icmp eq i32 %176, 6
  %182 = select i1 %181, i32 128, i32 192
  br label %183

183:                                              ; preds = %180, %178, %175, %170
  %184 = phi i32 [ 64, %178 ], [ 0, %170 ], [ %182, %180 ], [ 0, %175 ]
  %185 = getelementptr inbounds nuw i8, ptr %25, i64 172
  %186 = or disjoint i32 %184, %172
  %187 = load i32, ptr %185, align 4, !tbaa !74
  %188 = icmp eq i32 %187, 0
  %189 = select i1 %188, i32 2048, i32 2080
  %190 = or disjoint i32 %189, %186
  %191 = urem i32 %190, 31
  %192 = or disjoint i32 %191, %190
  %193 = load i64, ptr %93, align 8, !tbaa !58
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 1), !nosanitize !49
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !49
  br i1 %195, label %196, label %197, !prof !50, !nosanitize !49

196:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

197:                                              ; preds = %183
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !49
  %199 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %200 = load ptr, ptr %199, align 8, !tbaa !44
  %201 = lshr i32 %190, 8
  %202 = trunc i32 %201 to i8
  store i64 %198, ptr %93, align 8, !tbaa !58
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 %193
  store i8 %202, ptr %203, align 1, !tbaa !8
  %204 = load i64, ptr %93, align 8, !tbaa !58
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 1), !nosanitize !49
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !49
  br i1 %206, label %207, label %208, !prof !50, !nosanitize !49

207:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

208:                                              ; preds = %197
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !49
  %210 = load ptr, ptr %199, align 8, !tbaa !44
  %211 = trunc i32 %192 to i8
  %212 = xor i8 %211, 31
  store i64 %209, ptr %93, align 8, !tbaa !58
  %213 = getelementptr inbounds nuw i8, ptr %210, i64 %204
  store i8 %212, ptr %213, align 1, !tbaa !8
  %214 = load i32, ptr %185, align 4, !tbaa !74
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %259, label %216

216:                                              ; preds = %208
  %217 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %218 = load i64, ptr %217, align 8, !tbaa !60
  %219 = lshr i64 %218, 16
  %220 = load i64, ptr %93, align 8, !tbaa !58
  %221 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %220, i64 1), !nosanitize !49
  %222 = extractvalue { i64, i1 } %221, 1, !nosanitize !49
  br i1 %222, label %223, label %224, !prof !50, !nosanitize !49

223:                                              ; preds = %216
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

224:                                              ; preds = %216
  %225 = extractvalue { i64, i1 } %221, 0, !nosanitize !49
  %226 = load ptr, ptr %199, align 8, !tbaa !44
  %227 = lshr i64 %218, 24
  %228 = trunc i64 %227 to i8
  store i64 %225, ptr %93, align 8, !tbaa !58
  %229 = getelementptr inbounds nuw i8, ptr %226, i64 %220
  store i8 %228, ptr %229, align 1, !tbaa !8
  %230 = load i64, ptr %93, align 8, !tbaa !58
  %231 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %230, i64 1), !nosanitize !49
  %232 = extractvalue { i64, i1 } %231, 1, !nosanitize !49
  br i1 %232, label %233, label %234, !prof !50, !nosanitize !49

233:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

234:                                              ; preds = %224
  %235 = extractvalue { i64, i1 } %231, 0, !nosanitize !49
  %236 = load ptr, ptr %199, align 8, !tbaa !44
  %237 = trunc i64 %219 to i8
  store i64 %235, ptr %93, align 8, !tbaa !58
  %238 = getelementptr inbounds nuw i8, ptr %236, i64 %230
  store i8 %237, ptr %238, align 1, !tbaa !8
  %239 = load i64, ptr %217, align 8, !tbaa !60
  %240 = trunc i64 %239 to i8
  %241 = load i64, ptr %93, align 8, !tbaa !58
  %242 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %241, i64 1), !nosanitize !49
  %243 = extractvalue { i64, i1 } %242, 1, !nosanitize !49
  br i1 %243, label %244, label %245, !prof !50, !nosanitize !49

244:                                              ; preds = %234
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

245:                                              ; preds = %234
  %246 = extractvalue { i64, i1 } %242, 0, !nosanitize !49
  %247 = load ptr, ptr %199, align 8, !tbaa !44
  %248 = lshr i64 %239, 8
  %249 = trunc i64 %248 to i8
  store i64 %246, ptr %93, align 8, !tbaa !58
  %250 = getelementptr inbounds nuw i8, ptr %247, i64 %241
  store i8 %249, ptr %250, align 1, !tbaa !8
  %251 = load i64, ptr %93, align 8, !tbaa !58
  %252 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %251, i64 1), !nosanitize !49
  %253 = extractvalue { i64, i1 } %252, 1, !nosanitize !49
  br i1 %253, label %254, label %255, !prof !50, !nosanitize !49

254:                                              ; preds = %245
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

255:                                              ; preds = %245
  %256 = extractvalue { i64, i1 } %252, 0, !nosanitize !49
  %257 = load ptr, ptr %199, align 8, !tbaa !44
  store i64 %256, ptr %93, align 8, !tbaa !58
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 %251
  store i8 %240, ptr %258, align 1, !tbaa !8
  br label %259

259:                                              ; preds = %255, %208
  %260 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %260, ptr %261, align 8, !tbaa !60
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %262 = load i64, ptr %93, align 8, !tbaa !58
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %259
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %996

265:                                              ; preds = %259, %161
  %266 = load i32, ptr %79, align 8, !tbaa !29
  %267 = icmp eq i32 %266, 57
  br i1 %267, label %268, label %520

268:                                              ; preds = %265
  %269 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %269, ptr %270, align 8, !tbaa !60
  %271 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %272 = load i64, ptr %93, align 8, !tbaa !58
  %273 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %272, i64 1), !nosanitize !49
  %274 = extractvalue { i64, i1 } %273, 1, !nosanitize !49
  br i1 %274, label %275, label %276, !prof !50, !nosanitize !49

275:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

276:                                              ; preds = %268
  %277 = extractvalue { i64, i1 } %273, 0, !nosanitize !49
  %278 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %277, ptr %93, align 8, !tbaa !58
  %279 = getelementptr inbounds nuw i8, ptr %278, i64 %272
  store i8 31, ptr %279, align 1, !tbaa !8
  %280 = load i64, ptr %93, align 8, !tbaa !58
  %281 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %280, i64 1), !nosanitize !49
  %282 = extractvalue { i64, i1 } %281, 1, !nosanitize !49
  br i1 %282, label %283, label %284, !prof !50, !nosanitize !49

283:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

284:                                              ; preds = %276
  %285 = extractvalue { i64, i1 } %281, 0, !nosanitize !49
  %286 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %285, ptr %93, align 8, !tbaa !58
  %287 = getelementptr inbounds nuw i8, ptr %286, i64 %280
  store i8 -117, ptr %287, align 1, !tbaa !8
  %288 = load i64, ptr %93, align 8, !tbaa !58
  %289 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %288, i64 1), !nosanitize !49
  %290 = extractvalue { i64, i1 } %289, 1, !nosanitize !49
  br i1 %290, label %291, label %292, !prof !50, !nosanitize !49

291:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

292:                                              ; preds = %284
  %293 = extractvalue { i64, i1 } %289, 0, !nosanitize !49
  %294 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %293, ptr %93, align 8, !tbaa !58
  %295 = getelementptr inbounds nuw i8, ptr %294, i64 %288
  store i8 8, ptr %295, align 1, !tbaa !8
  %296 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %297 = load ptr, ptr %296, align 8, !tbaa !31
  %298 = icmp eq ptr %297, null
  %299 = load i64, ptr %93, align 8, !tbaa !58
  %300 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %299, i64 1), !nosanitize !49
  %301 = extractvalue { i64, i1 } %300, 1, !nosanitize !49
  br i1 %298, label %302, label %369

302:                                              ; preds = %292
  br i1 %301, label %303, label %304, !prof !50, !nosanitize !49

303:                                              ; preds = %302
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

304:                                              ; preds = %302
  %305 = extractvalue { i64, i1 } %300, 0, !nosanitize !49
  %306 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %305, ptr %93, align 8, !tbaa !58
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 %299
  store i8 0, ptr %307, align 1, !tbaa !8
  %308 = load i64, ptr %93, align 8, !tbaa !58
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 1), !nosanitize !49
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !49
  br i1 %310, label %311, label %312, !prof !50, !nosanitize !49

311:                                              ; preds = %304
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

312:                                              ; preds = %304
  %313 = extractvalue { i64, i1 } %309, 0, !nosanitize !49
  %314 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %313, ptr %93, align 8, !tbaa !58
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 %308
  store i8 0, ptr %315, align 1, !tbaa !8
  %316 = load i64, ptr %93, align 8, !tbaa !58
  %317 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %316, i64 1), !nosanitize !49
  %318 = extractvalue { i64, i1 } %317, 1, !nosanitize !49
  br i1 %318, label %319, label %320, !prof !50, !nosanitize !49

319:                                              ; preds = %312
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

320:                                              ; preds = %312
  %321 = extractvalue { i64, i1 } %317, 0, !nosanitize !49
  %322 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %321, ptr %93, align 8, !tbaa !58
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 %316
  store i8 0, ptr %323, align 1, !tbaa !8
  %324 = load i64, ptr %93, align 8, !tbaa !58
  %325 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %324, i64 1), !nosanitize !49
  %326 = extractvalue { i64, i1 } %325, 1, !nosanitize !49
  br i1 %326, label %327, label %328, !prof !50, !nosanitize !49

327:                                              ; preds = %320
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

328:                                              ; preds = %320
  %329 = extractvalue { i64, i1 } %325, 0, !nosanitize !49
  %330 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %329, ptr %93, align 8, !tbaa !58
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 %324
  store i8 0, ptr %331, align 1, !tbaa !8
  %332 = load i64, ptr %93, align 8, !tbaa !58
  %333 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %332, i64 1), !nosanitize !49
  %334 = extractvalue { i64, i1 } %333, 1, !nosanitize !49
  br i1 %334, label %335, label %336, !prof !50, !nosanitize !49

335:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

336:                                              ; preds = %328
  %337 = extractvalue { i64, i1 } %333, 0, !nosanitize !49
  %338 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %337, ptr %93, align 8, !tbaa !58
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 %332
  store i8 0, ptr %339, align 1, !tbaa !8
  %340 = load i32, ptr %32, align 4, !tbaa !52
  %341 = icmp eq i32 %340, 9
  br i1 %341, label %348, label %342

342:                                              ; preds = %336
  %343 = load i32, ptr %33, align 8, !tbaa !53
  %344 = icmp sgt i32 %343, 1
  %345 = icmp slt i32 %340, 2
  %346 = or i1 %345, %344
  %347 = select i1 %346, i8 4, i8 0
  br label %348

348:                                              ; preds = %342, %336
  %349 = phi i8 [ %347, %342 ], [ 2, %336 ]
  %350 = load i64, ptr %93, align 8, !tbaa !58
  %351 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %350, i64 1), !nosanitize !49
  %352 = extractvalue { i64, i1 } %351, 1, !nosanitize !49
  br i1 %352, label %353, label %354, !prof !50, !nosanitize !49

353:                                              ; preds = %348
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

354:                                              ; preds = %348
  %355 = extractvalue { i64, i1 } %351, 0, !nosanitize !49
  %356 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %355, ptr %93, align 8, !tbaa !58
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 %350
  store i8 %349, ptr %357, align 1, !tbaa !8
  %358 = load i64, ptr %93, align 8, !tbaa !58
  %359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %358, i64 1), !nosanitize !49
  %360 = extractvalue { i64, i1 } %359, 1, !nosanitize !49
  br i1 %360, label %361, label %362, !prof !50, !nosanitize !49

361:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

362:                                              ; preds = %354
  %363 = extractvalue { i64, i1 } %359, 0, !nosanitize !49
  %364 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %363, ptr %93, align 8, !tbaa !58
  %365 = getelementptr inbounds nuw i8, ptr %364, i64 %358
  store i8 3, ptr %365, align 1, !tbaa !8
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %366 = load i64, ptr %93, align 8, !tbaa !58
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %520, label %368

368:                                              ; preds = %362
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %996

369:                                              ; preds = %292
  br i1 %301, label %370, label %371, !prof !50, !nosanitize !49

370:                                              ; preds = %369
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

371:                                              ; preds = %369
  %372 = extractvalue { i64, i1 } %300, 0, !nosanitize !49
  %373 = load ptr, ptr %271, align 8, !tbaa !44
  %374 = getelementptr inbounds nuw i8, ptr %297, i64 56
  %375 = load ptr, ptr %374, align 8, !tbaa !102
  %376 = icmp eq ptr %375, null
  %377 = getelementptr inbounds nuw i8, ptr %297, i64 40
  %378 = load ptr, ptr %377, align 8, !tbaa !104
  %379 = icmp eq ptr %378, null
  %380 = getelementptr inbounds nuw i8, ptr %297, i64 24
  %381 = load ptr, ptr %380, align 8, !tbaa !105
  %382 = icmp eq ptr %381, null
  %383 = load i32, ptr %297, align 8, !tbaa !106
  %384 = icmp ne i32 %383, 0
  %385 = getelementptr inbounds nuw i8, ptr %297, i64 68
  %386 = load i32, ptr %385, align 4, !tbaa !107
  %387 = icmp eq i32 %386, 0
  %388 = select i1 %387, i8 0, i8 2
  %389 = zext i1 %384 to i8
  %390 = select i1 %382, i8 0, i8 4
  %391 = select i1 %379, i8 0, i8 8
  %392 = select i1 %376, i8 0, i8 16
  %393 = or disjoint i8 %391, %392
  %394 = or disjoint i8 %393, %390
  %395 = or disjoint i8 %394, %389
  %396 = or disjoint i8 %395, %388
  store i64 %372, ptr %93, align 8, !tbaa !58
  %397 = getelementptr inbounds nuw i8, ptr %373, i64 %299
  store i8 %396, ptr %397, align 1, !tbaa !8
  %398 = load i64, ptr %93, align 8, !tbaa !58
  %399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %398, i64 1), !nosanitize !49
  %400 = extractvalue { i64, i1 } %399, 1, !nosanitize !49
  br i1 %400, label %401, label %402, !prof !50, !nosanitize !49

401:                                              ; preds = %371
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

402:                                              ; preds = %371
  %403 = extractvalue { i64, i1 } %399, 0, !nosanitize !49
  %404 = load ptr, ptr %271, align 8, !tbaa !44
  %405 = load ptr, ptr %296, align 8, !tbaa !31
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 8
  %407 = load i64, ptr %406, align 8, !tbaa !108
  %408 = trunc i64 %407 to i8
  store i64 %403, ptr %93, align 8, !tbaa !58
  %409 = getelementptr inbounds nuw i8, ptr %404, i64 %398
  store i8 %408, ptr %409, align 1, !tbaa !8
  %410 = load i64, ptr %93, align 8, !tbaa !58
  %411 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %410, i64 1), !nosanitize !49
  %412 = extractvalue { i64, i1 } %411, 1, !nosanitize !49
  br i1 %412, label %413, label %414, !prof !50, !nosanitize !49

413:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

414:                                              ; preds = %402
  %415 = extractvalue { i64, i1 } %411, 0, !nosanitize !49
  %416 = load ptr, ptr %271, align 8, !tbaa !44
  %417 = load ptr, ptr %296, align 8, !tbaa !31
  %418 = getelementptr inbounds nuw i8, ptr %417, i64 8
  %419 = load i64, ptr %418, align 8, !tbaa !108
  %420 = lshr i64 %419, 8
  %421 = trunc i64 %420 to i8
  store i64 %415, ptr %93, align 8, !tbaa !58
  %422 = getelementptr inbounds nuw i8, ptr %416, i64 %410
  store i8 %421, ptr %422, align 1, !tbaa !8
  %423 = load i64, ptr %93, align 8, !tbaa !58
  %424 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %423, i64 1), !nosanitize !49
  %425 = extractvalue { i64, i1 } %424, 1, !nosanitize !49
  br i1 %425, label %426, label %427, !prof !50, !nosanitize !49

426:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

427:                                              ; preds = %414
  %428 = extractvalue { i64, i1 } %424, 0, !nosanitize !49
  %429 = load ptr, ptr %271, align 8, !tbaa !44
  %430 = load ptr, ptr %296, align 8, !tbaa !31
  %431 = getelementptr inbounds nuw i8, ptr %430, i64 8
  %432 = load i64, ptr %431, align 8, !tbaa !108
  %433 = lshr i64 %432, 16
  %434 = trunc i64 %433 to i8
  store i64 %428, ptr %93, align 8, !tbaa !58
  %435 = getelementptr inbounds nuw i8, ptr %429, i64 %423
  store i8 %434, ptr %435, align 1, !tbaa !8
  %436 = load i64, ptr %93, align 8, !tbaa !58
  %437 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %436, i64 1), !nosanitize !49
  %438 = extractvalue { i64, i1 } %437, 1, !nosanitize !49
  br i1 %438, label %439, label %440, !prof !50, !nosanitize !49

439:                                              ; preds = %427
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

440:                                              ; preds = %427
  %441 = extractvalue { i64, i1 } %437, 0, !nosanitize !49
  %442 = load ptr, ptr %271, align 8, !tbaa !44
  %443 = load ptr, ptr %296, align 8, !tbaa !31
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 8
  %445 = load i64, ptr %444, align 8, !tbaa !108
  %446 = lshr i64 %445, 24
  %447 = trunc i64 %446 to i8
  store i64 %441, ptr %93, align 8, !tbaa !58
  %448 = getelementptr inbounds nuw i8, ptr %442, i64 %436
  store i8 %447, ptr %448, align 1, !tbaa !8
  %449 = load i32, ptr %32, align 4, !tbaa !52
  %450 = icmp eq i32 %449, 9
  br i1 %450, label %457, label %451

451:                                              ; preds = %440
  %452 = load i32, ptr %33, align 8, !tbaa !53
  %453 = icmp sgt i32 %452, 1
  %454 = icmp slt i32 %449, 2
  %455 = or i1 %454, %453
  %456 = select i1 %455, i8 4, i8 0
  br label %457

457:                                              ; preds = %451, %440
  %458 = phi i8 [ %456, %451 ], [ 2, %440 ]
  %459 = load i64, ptr %93, align 8, !tbaa !58
  %460 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %459, i64 1), !nosanitize !49
  %461 = extractvalue { i64, i1 } %460, 1, !nosanitize !49
  br i1 %461, label %462, label %463, !prof !50, !nosanitize !49

462:                                              ; preds = %457
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

463:                                              ; preds = %457
  %464 = extractvalue { i64, i1 } %460, 0, !nosanitize !49
  %465 = load ptr, ptr %271, align 8, !tbaa !44
  store i64 %464, ptr %93, align 8, !tbaa !58
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 %459
  store i8 %458, ptr %466, align 1, !tbaa !8
  %467 = load i64, ptr %93, align 8, !tbaa !58
  %468 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %467, i64 1), !nosanitize !49
  %469 = extractvalue { i64, i1 } %468, 1, !nosanitize !49
  br i1 %469, label %470, label %471, !prof !50, !nosanitize !49

470:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

471:                                              ; preds = %463
  %472 = extractvalue { i64, i1 } %468, 0, !nosanitize !49
  %473 = load ptr, ptr %271, align 8, !tbaa !44
  %474 = load ptr, ptr %296, align 8, !tbaa !31
  %475 = getelementptr inbounds nuw i8, ptr %474, i64 20
  %476 = load i32, ptr %475, align 4, !tbaa !109
  %477 = trunc i32 %476 to i8
  store i64 %472, ptr %93, align 8, !tbaa !58
  %478 = getelementptr inbounds nuw i8, ptr %473, i64 %467
  store i8 %477, ptr %478, align 1, !tbaa !8
  %479 = load ptr, ptr %296, align 8, !tbaa !31
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 24
  %481 = load ptr, ptr %480, align 8, !tbaa !105
  %482 = icmp eq ptr %481, null
  br i1 %482, label %508, label %483

483:                                              ; preds = %471
  %484 = load i64, ptr %93, align 8, !tbaa !58
  %485 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %484, i64 1), !nosanitize !49
  %486 = extractvalue { i64, i1 } %485, 1, !nosanitize !49
  br i1 %486, label %487, label %488, !prof !50, !nosanitize !49

487:                                              ; preds = %483
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

488:                                              ; preds = %483
  %489 = extractvalue { i64, i1 } %485, 0, !nosanitize !49
  %490 = load ptr, ptr %271, align 8, !tbaa !44
  %491 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %492 = load i32, ptr %491, align 8, !tbaa !110
  %493 = trunc i32 %492 to i8
  store i64 %489, ptr %93, align 8, !tbaa !58
  %494 = getelementptr inbounds nuw i8, ptr %490, i64 %484
  store i8 %493, ptr %494, align 1, !tbaa !8
  %495 = load i64, ptr %93, align 8, !tbaa !58
  %496 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %495, i64 1), !nosanitize !49
  %497 = extractvalue { i64, i1 } %496, 1, !nosanitize !49
  br i1 %497, label %498, label %499, !prof !50, !nosanitize !49

498:                                              ; preds = %488
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

499:                                              ; preds = %488
  %500 = extractvalue { i64, i1 } %496, 0, !nosanitize !49
  %501 = load ptr, ptr %271, align 8, !tbaa !44
  %502 = load ptr, ptr %296, align 8, !tbaa !31
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 32
  %504 = load i32, ptr %503, align 8, !tbaa !110
  %505 = lshr i32 %504, 8
  %506 = trunc i32 %505 to i8
  store i64 %500, ptr %93, align 8, !tbaa !58
  %507 = getelementptr inbounds nuw i8, ptr %501, i64 %495
  store i8 %506, ptr %507, align 1, !tbaa !8
  br label %508

508:                                              ; preds = %499, %471
  %509 = load ptr, ptr %296, align 8, !tbaa !31
  %510 = getelementptr inbounds nuw i8, ptr %509, i64 68
  %511 = load i32, ptr %510, align 4, !tbaa !107
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %518, label %513

513:                                              ; preds = %508
  %514 = load i64, ptr %270, align 8, !tbaa !60
  %515 = load ptr, ptr %271, align 8, !tbaa !44
  %516 = load i64, ptr %93, align 8, !tbaa !58
  %517 = tail call i64 @crc32_z(i64 noundef %514, ptr noundef %515, i64 noundef %516) #12
  store i64 %517, ptr %270, align 8, !tbaa !60
  br label %518

518:                                              ; preds = %513, %508
  %519 = getelementptr inbounds nuw i8, ptr %25, i64 64
  store i64 0, ptr %519, align 8, !tbaa !111
  store i32 69, ptr %79, align 8, !tbaa !29
  br label %520

520:                                              ; preds = %518, %362, %265
  %521 = load i32, ptr %79, align 8, !tbaa !29
  %522 = icmp eq i32 %521, 69
  br i1 %522, label %523, label %670

523:                                              ; preds = %520
  %524 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %525 = load ptr, ptr %524, align 8, !tbaa !31
  %526 = getelementptr inbounds nuw i8, ptr %525, i64 24
  %527 = load ptr, ptr %526, align 8, !tbaa !105
  %528 = icmp eq ptr %527, null
  br i1 %528, label %669, label %529

529:                                              ; preds = %523
  %530 = getelementptr inbounds nuw i8, ptr %525, i64 32
  %531 = load i32, ptr %530, align 8, !tbaa !110
  %532 = and i32 %531, 65535
  %533 = zext nneg i32 %532 to i64
  %534 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %535 = load i64, ptr %534, align 8, !tbaa !111
  %536 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %533, i64 %535), !nosanitize !49
  %537 = extractvalue { i64, i1 } %536, 1, !nosanitize !49
  br i1 %537, label %538, label %539, !prof !50, !nosanitize !49

538:                                              ; preds = %529
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

539:                                              ; preds = %529
  %540 = extractvalue { i64, i1 } %536, 0, !nosanitize !49
  %541 = load i64, ptr %93, align 8, !tbaa !58
  %542 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %543 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %544 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %545 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %546

546:                                              ; preds = %638, %539
  %547 = phi i64 [ %541, %539 ], [ %639, %638 ]
  %548 = phi i64 [ %540, %539 ], [ %640, %638 ]
  %549 = load i64, ptr %93, align 8, !tbaa !58
  %550 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %549, i64 %548), !nosanitize !49
  %551 = extractvalue { i64, i1 } %550, 1, !nosanitize !49
  br i1 %551, label %552, label %553, !prof !50, !nosanitize !49

552:                                              ; preds = %546
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

553:                                              ; preds = %546
  %554 = extractvalue { i64, i1 } %550, 0, !nosanitize !49
  %555 = load i64, ptr %542, align 8, !tbaa !45
  %556 = icmp ugt i64 %554, %555
  br i1 %556, label %557, label %641

557:                                              ; preds = %553
  %558 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %555, i64 %549), !nosanitize !49
  %559 = extractvalue { i64, i1 } %558, 0, !nosanitize !49
  %560 = extractvalue { i64, i1 } %558, 1, !nosanitize !49
  br i1 %560, label %561, label %562, !prof !50, !nosanitize !49

561:                                              ; preds = %557
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

562:                                              ; preds = %557
  %563 = load ptr, ptr %543, align 8, !tbaa !44
  %564 = getelementptr inbounds nuw i8, ptr %563, i64 %549
  %565 = load ptr, ptr %524, align 8, !tbaa !31
  %566 = getelementptr inbounds nuw i8, ptr %565, i64 24
  %567 = load ptr, ptr %566, align 8, !tbaa !105
  %568 = load i64, ptr %534, align 8, !tbaa !111
  %569 = getelementptr inbounds nuw i8, ptr %567, i64 %568
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %564, ptr align 1 %569, i64 %559, i1 false)
  %570 = load i64, ptr %542, align 8, !tbaa !45
  store i64 %570, ptr %93, align 8, !tbaa !58
  %571 = load ptr, ptr %524, align 8, !tbaa !31
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 68
  %573 = load i32, ptr %572, align 4, !tbaa !107
  %574 = icmp ne i32 %573, 0
  %575 = icmp ugt i64 %570, %547
  %576 = select i1 %574, i1 %575, i1 false
  br i1 %576, label %577, label %583

577:                                              ; preds = %562
  %578 = sub nuw i64 %570, %547
  %579 = load ptr, ptr %543, align 8, !tbaa !44
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 %547
  %581 = load i64, ptr %544, align 8, !tbaa !60
  %582 = tail call i64 @crc32_z(i64 noundef %581, ptr noundef %580, i64 noundef %578) #12
  store i64 %582, ptr %544, align 8, !tbaa !60
  br label %583

583:                                              ; preds = %577, %562
  %584 = load i64, ptr %534, align 8, !tbaa !111
  %585 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %584, i64 %559), !nosanitize !49
  %586 = extractvalue { i64, i1 } %585, 1, !nosanitize !49
  br i1 %586, label %587, label %588, !prof !50, !nosanitize !49

587:                                              ; preds = %583
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

588:                                              ; preds = %583
  %589 = extractvalue { i64, i1 } %585, 0, !nosanitize !49
  store i64 %589, ptr %534, align 8, !tbaa !111
  %590 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %590) #12
  %591 = getelementptr inbounds nuw i8, ptr %590, i64 40
  %592 = load i64, ptr %591, align 8, !tbaa !58
  %593 = load i32, ptr %86, align 8, !tbaa !100
  %594 = zext i32 %593 to i64
  %595 = tail call i64 @llvm.umin.i64(i64 %592, i64 %594)
  %596 = trunc nuw i64 %595 to i32
  %597 = icmp eq i64 %595, 0
  br i1 %597, label %628, label %598

598:                                              ; preds = %588
  %599 = load ptr, ptr %68, align 8, !tbaa !99
  %600 = getelementptr inbounds nuw i8, ptr %590, i64 32
  %601 = load ptr, ptr %600, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %599, ptr align 1 %601, i64 %595, i1 false)
  %602 = load ptr, ptr %68, align 8, !tbaa !99
  %603 = getelementptr inbounds nuw i8, ptr %602, i64 %595
  store ptr %603, ptr %68, align 8, !tbaa !99
  %604 = load ptr, ptr %600, align 8, !tbaa !59
  %605 = getelementptr inbounds nuw i8, ptr %604, i64 %595
  store ptr %605, ptr %600, align 8, !tbaa !59
  %606 = load i64, ptr %545, align 8, !tbaa !101
  %607 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %606, i64 %595), !nosanitize !49
  %608 = extractvalue { i64, i1 } %607, 1, !nosanitize !49
  br i1 %608, label %609, label %610, !prof !50, !nosanitize !49

609:                                              ; preds = %598
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

610:                                              ; preds = %598
  %611 = extractvalue { i64, i1 } %607, 0, !nosanitize !49
  store i64 %611, ptr %545, align 8, !tbaa !101
  %612 = load i32, ptr %86, align 8, !tbaa !100
  %613 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %612, i32 %596), !nosanitize !49
  %614 = extractvalue { i32, i1 } %613, 1, !nosanitize !49
  br i1 %614, label %615, label %616, !prof !50, !nosanitize !49

615:                                              ; preds = %610
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

616:                                              ; preds = %610
  %617 = extractvalue { i32, i1 } %613, 0, !nosanitize !49
  store i32 %617, ptr %86, align 8, !tbaa !100
  %618 = load i64, ptr %591, align 8, !tbaa !58
  %619 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %618, i64 %595), !nosanitize !49
  %620 = extractvalue { i64, i1 } %619, 1, !nosanitize !49
  br i1 %620, label %621, label %622, !prof !50, !nosanitize !49

621:                                              ; preds = %616
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

622:                                              ; preds = %616
  %623 = extractvalue { i64, i1 } %619, 0, !nosanitize !49
  store i64 %623, ptr %591, align 8, !tbaa !58
  %624 = icmp eq i64 %623, 0
  br i1 %624, label %625, label %628

625:                                              ; preds = %622
  %626 = getelementptr inbounds nuw i8, ptr %590, i64 16
  %627 = load ptr, ptr %626, align 8, !tbaa !44
  store ptr %627, ptr %600, align 8, !tbaa !59
  br label %628

628:                                              ; preds = %625, %622, %588
  %629 = load i64, ptr %93, align 8, !tbaa !58
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %632, label %631

631:                                              ; preds = %628
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %638

632:                                              ; preds = %628
  %633 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %548, i64 %559), !nosanitize !49
  %634 = extractvalue { i64, i1 } %633, 1, !nosanitize !49
  br i1 %634, label %635, label %636, !prof !50, !nosanitize !49

635:                                              ; preds = %632
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

636:                                              ; preds = %632
  %637 = extractvalue { i64, i1 } %633, 0, !nosanitize !49
  br label %638

638:                                              ; preds = %636, %631
  %639 = phi i64 [ %547, %631 ], [ 0, %636 ]
  %640 = phi i64 [ %548, %631 ], [ %637, %636 ]
  br i1 %630, label %546, label %668, !llvm.loop !112

641:                                              ; preds = %553
  %642 = load ptr, ptr %543, align 8, !tbaa !44
  %643 = getelementptr inbounds nuw i8, ptr %642, i64 %549
  %644 = load ptr, ptr %524, align 8, !tbaa !31
  %645 = getelementptr inbounds nuw i8, ptr %644, i64 24
  %646 = load ptr, ptr %645, align 8, !tbaa !105
  %647 = load i64, ptr %534, align 8, !tbaa !111
  %648 = getelementptr inbounds nuw i8, ptr %646, i64 %647
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %643, ptr align 1 %648, i64 %548, i1 false)
  %649 = load i64, ptr %93, align 8, !tbaa !58
  %650 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %649, i64 %548), !nosanitize !49
  %651 = extractvalue { i64, i1 } %650, 0, !nosanitize !49
  %652 = extractvalue { i64, i1 } %650, 1, !nosanitize !49
  br i1 %652, label %653, label %654, !prof !50, !nosanitize !49

653:                                              ; preds = %641
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

654:                                              ; preds = %641
  store i64 %651, ptr %93, align 8, !tbaa !58
  %655 = load ptr, ptr %524, align 8, !tbaa !31
  %656 = getelementptr inbounds nuw i8, ptr %655, i64 68
  %657 = load i32, ptr %656, align 4, !tbaa !107
  %658 = icmp ne i32 %657, 0
  %659 = icmp ugt i64 %651, %547
  %660 = select i1 %658, i1 %659, i1 false
  br i1 %660, label %661, label %667

661:                                              ; preds = %654
  %662 = sub nuw i64 %651, %547
  %663 = load ptr, ptr %543, align 8, !tbaa !44
  %664 = getelementptr inbounds nuw i8, ptr %663, i64 %547
  %665 = load i64, ptr %544, align 8, !tbaa !60
  %666 = tail call i64 @crc32_z(i64 noundef %665, ptr noundef %664, i64 noundef %662) #12
  store i64 %666, ptr %544, align 8, !tbaa !60
  br label %667

667:                                              ; preds = %661, %654
  store i64 0, ptr %534, align 8, !tbaa !111
  br label %668

668:                                              ; preds = %638, %667
  br i1 %556, label %996, label %669

669:                                              ; preds = %668, %523
  store i32 73, ptr %79, align 8, !tbaa !29
  br label %670

670:                                              ; preds = %669, %520
  %671 = load i32, ptr %79, align 8, !tbaa !29
  %672 = icmp eq i32 %671, 73
  br i1 %672, label %673, label %785

673:                                              ; preds = %670
  %674 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %675 = load ptr, ptr %674, align 8, !tbaa !31
  %676 = getelementptr inbounds nuw i8, ptr %675, i64 40
  %677 = load ptr, ptr %676, align 8, !tbaa !104
  %678 = icmp eq ptr %677, null
  br i1 %678, label %784, label %679

679:                                              ; preds = %673
  %680 = load i64, ptr %93, align 8, !tbaa !58
  %681 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %682 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %683 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %684 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %685 = getelementptr inbounds nuw i8, ptr %25, i64 64
  br label %686

686:                                              ; preds = %762, %679
  %687 = phi i64 [ %680, %679 ], [ %748, %762 ]
  %688 = load i64, ptr %93, align 8, !tbaa !58
  %689 = load i64, ptr %681, align 8, !tbaa !45
  %690 = icmp eq i64 %688, %689
  br i1 %690, label %691, label %747

691:                                              ; preds = %686
  %692 = load ptr, ptr %674, align 8, !tbaa !31
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 68
  %694 = load i32, ptr %693, align 4, !tbaa !107
  %695 = icmp ne i32 %694, 0
  %696 = icmp ugt i64 %688, %687
  %697 = select i1 %695, i1 %696, i1 false
  br i1 %697, label %698, label %704

698:                                              ; preds = %691
  %699 = sub nuw i64 %688, %687
  %700 = load ptr, ptr %682, align 8, !tbaa !44
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 %687
  %702 = load i64, ptr %683, align 8, !tbaa !60
  %703 = tail call i64 @crc32_z(i64 noundef %702, ptr noundef %701, i64 noundef %699) #12
  store i64 %703, ptr %683, align 8, !tbaa !60
  br label %704

704:                                              ; preds = %698, %691
  %705 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %705) #12
  %706 = getelementptr inbounds nuw i8, ptr %705, i64 40
  %707 = load i64, ptr %706, align 8, !tbaa !58
  %708 = load i32, ptr %86, align 8, !tbaa !100
  %709 = zext i32 %708 to i64
  %710 = tail call i64 @llvm.umin.i64(i64 %707, i64 %709)
  %711 = trunc nuw i64 %710 to i32
  %712 = icmp eq i64 %710, 0
  br i1 %712, label %743, label %713

713:                                              ; preds = %704
  %714 = load ptr, ptr %68, align 8, !tbaa !99
  %715 = getelementptr inbounds nuw i8, ptr %705, i64 32
  %716 = load ptr, ptr %715, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %714, ptr align 1 %716, i64 %710, i1 false)
  %717 = load ptr, ptr %68, align 8, !tbaa !99
  %718 = getelementptr inbounds nuw i8, ptr %717, i64 %710
  store ptr %718, ptr %68, align 8, !tbaa !99
  %719 = load ptr, ptr %715, align 8, !tbaa !59
  %720 = getelementptr inbounds nuw i8, ptr %719, i64 %710
  store ptr %720, ptr %715, align 8, !tbaa !59
  %721 = load i64, ptr %684, align 8, !tbaa !101
  %722 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %721, i64 %710), !nosanitize !49
  %723 = extractvalue { i64, i1 } %722, 1, !nosanitize !49
  br i1 %723, label %724, label %725, !prof !50, !nosanitize !49

724:                                              ; preds = %713
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

725:                                              ; preds = %713
  %726 = extractvalue { i64, i1 } %722, 0, !nosanitize !49
  store i64 %726, ptr %684, align 8, !tbaa !101
  %727 = load i32, ptr %86, align 8, !tbaa !100
  %728 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %727, i32 %711), !nosanitize !49
  %729 = extractvalue { i32, i1 } %728, 1, !nosanitize !49
  br i1 %729, label %730, label %731, !prof !50, !nosanitize !49

730:                                              ; preds = %725
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

731:                                              ; preds = %725
  %732 = extractvalue { i32, i1 } %728, 0, !nosanitize !49
  store i32 %732, ptr %86, align 8, !tbaa !100
  %733 = load i64, ptr %706, align 8, !tbaa !58
  %734 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %733, i64 %710), !nosanitize !49
  %735 = extractvalue { i64, i1 } %734, 1, !nosanitize !49
  br i1 %735, label %736, label %737, !prof !50, !nosanitize !49

736:                                              ; preds = %731
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

737:                                              ; preds = %731
  %738 = extractvalue { i64, i1 } %734, 0, !nosanitize !49
  store i64 %738, ptr %706, align 8, !tbaa !58
  %739 = icmp eq i64 %738, 0
  br i1 %739, label %740, label %743

740:                                              ; preds = %737
  %741 = getelementptr inbounds nuw i8, ptr %705, i64 16
  %742 = load ptr, ptr %741, align 8, !tbaa !44
  store ptr %742, ptr %715, align 8, !tbaa !59
  br label %743

743:                                              ; preds = %740, %737, %704
  %744 = load i64, ptr %93, align 8, !tbaa !58
  %745 = icmp eq i64 %744, 0
  br i1 %745, label %747, label %746

746:                                              ; preds = %743
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %996

747:                                              ; preds = %743, %686
  %748 = phi i64 [ %687, %686 ], [ 0, %743 ]
  %749 = load i64, ptr %685, align 8, !tbaa !111
  %750 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %749, i64 1), !nosanitize !49
  %751 = extractvalue { i64, i1 } %750, 1, !nosanitize !49
  br i1 %751, label %752, label %753, !prof !50, !nosanitize !49

752:                                              ; preds = %747
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

753:                                              ; preds = %747
  %754 = extractvalue { i64, i1 } %750, 0, !nosanitize !49
  %755 = load ptr, ptr %674, align 8, !tbaa !31
  %756 = getelementptr inbounds nuw i8, ptr %755, i64 40
  %757 = load ptr, ptr %756, align 8, !tbaa !104
  store i64 %754, ptr %685, align 8, !tbaa !111
  %758 = load i64, ptr %93, align 8, !tbaa !58
  %759 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %758, i64 1), !nosanitize !49
  %760 = extractvalue { i64, i1 } %759, 1, !nosanitize !49
  br i1 %760, label %761, label %762, !prof !50, !nosanitize !49

761:                                              ; preds = %753
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

762:                                              ; preds = %753
  %763 = extractvalue { i64, i1 } %759, 0, !nosanitize !49
  %764 = load ptr, ptr %682, align 8, !tbaa !44
  %765 = getelementptr inbounds nuw i8, ptr %757, i64 %749
  %766 = load i8, ptr %765, align 1, !tbaa !8
  store i64 %763, ptr %93, align 8, !tbaa !58
  %767 = getelementptr inbounds nuw i8, ptr %764, i64 %758
  store i8 %766, ptr %767, align 1, !tbaa !8
  %768 = icmp eq i8 %766, 0
  br i1 %768, label %769, label %686, !llvm.loop !113

769:                                              ; preds = %762
  %770 = load ptr, ptr %674, align 8, !tbaa !31
  %771 = getelementptr inbounds nuw i8, ptr %770, i64 68
  %772 = load i32, ptr %771, align 4, !tbaa !107
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %783, label %774

774:                                              ; preds = %769
  %775 = load i64, ptr %93, align 8, !tbaa !58
  %776 = icmp ugt i64 %775, %748
  br i1 %776, label %777, label %783

777:                                              ; preds = %774
  %778 = sub nuw i64 %775, %748
  %779 = load ptr, ptr %682, align 8, !tbaa !44
  %780 = getelementptr inbounds nuw i8, ptr %779, i64 %748
  %781 = load i64, ptr %683, align 8, !tbaa !60
  %782 = tail call i64 @crc32_z(i64 noundef %781, ptr noundef %780, i64 noundef %778) #12
  store i64 %782, ptr %683, align 8, !tbaa !60
  br label %783

783:                                              ; preds = %777, %774, %769
  store i64 0, ptr %685, align 8, !tbaa !111
  br label %784

784:                                              ; preds = %783, %673
  store i32 91, ptr %79, align 8, !tbaa !29
  br label %785

785:                                              ; preds = %784, %670
  %786 = load i32, ptr %79, align 8, !tbaa !29
  %787 = icmp eq i32 %786, 91
  br i1 %787, label %788, label %899

788:                                              ; preds = %785
  %789 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %790 = load ptr, ptr %789, align 8, !tbaa !31
  %791 = getelementptr inbounds nuw i8, ptr %790, i64 56
  %792 = load ptr, ptr %791, align 8, !tbaa !102
  %793 = icmp eq ptr %792, null
  br i1 %793, label %898, label %794

794:                                              ; preds = %788
  %795 = load i64, ptr %93, align 8, !tbaa !58
  %796 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %797 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %798 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %799 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %800 = getelementptr inbounds nuw i8, ptr %25, i64 64
  br label %801

801:                                              ; preds = %877, %794
  %802 = phi i64 [ %795, %794 ], [ %863, %877 ]
  %803 = load i64, ptr %93, align 8, !tbaa !58
  %804 = load i64, ptr %796, align 8, !tbaa !45
  %805 = icmp eq i64 %803, %804
  br i1 %805, label %806, label %862

806:                                              ; preds = %801
  %807 = load ptr, ptr %789, align 8, !tbaa !31
  %808 = getelementptr inbounds nuw i8, ptr %807, i64 68
  %809 = load i32, ptr %808, align 4, !tbaa !107
  %810 = icmp ne i32 %809, 0
  %811 = icmp ugt i64 %803, %802
  %812 = select i1 %810, i1 %811, i1 false
  br i1 %812, label %813, label %819

813:                                              ; preds = %806
  %814 = sub nuw i64 %803, %802
  %815 = load ptr, ptr %797, align 8, !tbaa !44
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 %802
  %817 = load i64, ptr %798, align 8, !tbaa !60
  %818 = tail call i64 @crc32_z(i64 noundef %817, ptr noundef %816, i64 noundef %814) #12
  store i64 %818, ptr %798, align 8, !tbaa !60
  br label %819

819:                                              ; preds = %813, %806
  %820 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %820) #12
  %821 = getelementptr inbounds nuw i8, ptr %820, i64 40
  %822 = load i64, ptr %821, align 8, !tbaa !58
  %823 = load i32, ptr %86, align 8, !tbaa !100
  %824 = zext i32 %823 to i64
  %825 = tail call i64 @llvm.umin.i64(i64 %822, i64 %824)
  %826 = trunc nuw i64 %825 to i32
  %827 = icmp eq i64 %825, 0
  br i1 %827, label %858, label %828

828:                                              ; preds = %819
  %829 = load ptr, ptr %68, align 8, !tbaa !99
  %830 = getelementptr inbounds nuw i8, ptr %820, i64 32
  %831 = load ptr, ptr %830, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %829, ptr align 1 %831, i64 %825, i1 false)
  %832 = load ptr, ptr %68, align 8, !tbaa !99
  %833 = getelementptr inbounds nuw i8, ptr %832, i64 %825
  store ptr %833, ptr %68, align 8, !tbaa !99
  %834 = load ptr, ptr %830, align 8, !tbaa !59
  %835 = getelementptr inbounds nuw i8, ptr %834, i64 %825
  store ptr %835, ptr %830, align 8, !tbaa !59
  %836 = load i64, ptr %799, align 8, !tbaa !101
  %837 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %836, i64 %825), !nosanitize !49
  %838 = extractvalue { i64, i1 } %837, 1, !nosanitize !49
  br i1 %838, label %839, label %840, !prof !50, !nosanitize !49

839:                                              ; preds = %828
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

840:                                              ; preds = %828
  %841 = extractvalue { i64, i1 } %837, 0, !nosanitize !49
  store i64 %841, ptr %799, align 8, !tbaa !101
  %842 = load i32, ptr %86, align 8, !tbaa !100
  %843 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %842, i32 %826), !nosanitize !49
  %844 = extractvalue { i32, i1 } %843, 1, !nosanitize !49
  br i1 %844, label %845, label %846, !prof !50, !nosanitize !49

845:                                              ; preds = %840
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

846:                                              ; preds = %840
  %847 = extractvalue { i32, i1 } %843, 0, !nosanitize !49
  store i32 %847, ptr %86, align 8, !tbaa !100
  %848 = load i64, ptr %821, align 8, !tbaa !58
  %849 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %848, i64 %825), !nosanitize !49
  %850 = extractvalue { i64, i1 } %849, 1, !nosanitize !49
  br i1 %850, label %851, label %852, !prof !50, !nosanitize !49

851:                                              ; preds = %846
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

852:                                              ; preds = %846
  %853 = extractvalue { i64, i1 } %849, 0, !nosanitize !49
  store i64 %853, ptr %821, align 8, !tbaa !58
  %854 = icmp eq i64 %853, 0
  br i1 %854, label %855, label %858

855:                                              ; preds = %852
  %856 = getelementptr inbounds nuw i8, ptr %820, i64 16
  %857 = load ptr, ptr %856, align 8, !tbaa !44
  store ptr %857, ptr %830, align 8, !tbaa !59
  br label %858

858:                                              ; preds = %855, %852, %819
  %859 = load i64, ptr %93, align 8, !tbaa !58
  %860 = icmp eq i64 %859, 0
  br i1 %860, label %862, label %861

861:                                              ; preds = %858
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %996

862:                                              ; preds = %858, %801
  %863 = phi i64 [ %802, %801 ], [ 0, %858 ]
  %864 = load i64, ptr %800, align 8, !tbaa !111
  %865 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %864, i64 1), !nosanitize !49
  %866 = extractvalue { i64, i1 } %865, 1, !nosanitize !49
  br i1 %866, label %867, label %868, !prof !50, !nosanitize !49

867:                                              ; preds = %862
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

868:                                              ; preds = %862
  %869 = extractvalue { i64, i1 } %865, 0, !nosanitize !49
  %870 = load ptr, ptr %789, align 8, !tbaa !31
  %871 = getelementptr inbounds nuw i8, ptr %870, i64 56
  %872 = load ptr, ptr %871, align 8, !tbaa !102
  store i64 %869, ptr %800, align 8, !tbaa !111
  %873 = load i64, ptr %93, align 8, !tbaa !58
  %874 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %873, i64 1), !nosanitize !49
  %875 = extractvalue { i64, i1 } %874, 1, !nosanitize !49
  br i1 %875, label %876, label %877, !prof !50, !nosanitize !49

876:                                              ; preds = %868
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

877:                                              ; preds = %868
  %878 = extractvalue { i64, i1 } %874, 0, !nosanitize !49
  %879 = load ptr, ptr %797, align 8, !tbaa !44
  %880 = getelementptr inbounds nuw i8, ptr %872, i64 %864
  %881 = load i8, ptr %880, align 1, !tbaa !8
  store i64 %878, ptr %93, align 8, !tbaa !58
  %882 = getelementptr inbounds nuw i8, ptr %879, i64 %873
  store i8 %881, ptr %882, align 1, !tbaa !8
  %883 = icmp eq i8 %881, 0
  br i1 %883, label %884, label %801, !llvm.loop !114

884:                                              ; preds = %877
  %885 = load ptr, ptr %789, align 8, !tbaa !31
  %886 = getelementptr inbounds nuw i8, ptr %885, i64 68
  %887 = load i32, ptr %886, align 4, !tbaa !107
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %898, label %889

889:                                              ; preds = %884
  %890 = load i64, ptr %93, align 8, !tbaa !58
  %891 = icmp ugt i64 %890, %863
  br i1 %891, label %892, label %898

892:                                              ; preds = %889
  %893 = sub nuw i64 %890, %863
  %894 = load ptr, ptr %797, align 8, !tbaa !44
  %895 = getelementptr inbounds nuw i8, ptr %894, i64 %863
  %896 = load i64, ptr %798, align 8, !tbaa !60
  %897 = tail call i64 @crc32_z(i64 noundef %896, ptr noundef %895, i64 noundef %893) #12
  store i64 %897, ptr %798, align 8, !tbaa !60
  br label %898

898:                                              ; preds = %892, %889, %884, %788
  store i32 103, ptr %79, align 8, !tbaa !29
  br label %899

899:                                              ; preds = %898, %785
  %900 = load i32, ptr %79, align 8, !tbaa !29
  %901 = icmp eq i32 %900, 103
  br i1 %901, label %902, label %951

902:                                              ; preds = %899
  %903 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %904 = load ptr, ptr %903, align 8, !tbaa !31
  %905 = getelementptr inbounds nuw i8, ptr %904, i64 68
  %906 = load i32, ptr %905, align 4, !tbaa !107
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %947, label %908

908:                                              ; preds = %902
  %909 = load i64, ptr %93, align 8, !tbaa !58
  %910 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %909, i64 2), !nosanitize !49
  %911 = extractvalue { i64, i1 } %910, 1, !nosanitize !49
  br i1 %911, label %912, label %913, !prof !50, !nosanitize !49

912:                                              ; preds = %908
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

913:                                              ; preds = %908
  %914 = extractvalue { i64, i1 } %910, 0, !nosanitize !49
  %915 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %916 = load i64, ptr %915, align 8, !tbaa !45
  %917 = icmp ugt i64 %914, %916
  br i1 %917, label %918, label %922

918:                                              ; preds = %913
  tail call fastcc void @flush_pending(ptr noundef %0)
  %919 = load i64, ptr %93, align 8, !tbaa !58
  %920 = icmp eq i64 %919, 0
  br i1 %920, label %922, label %921

921:                                              ; preds = %918
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %996

922:                                              ; preds = %918, %913
  %923 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %924 = load i64, ptr %93, align 8, !tbaa !58
  %925 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %924, i64 1), !nosanitize !49
  %926 = extractvalue { i64, i1 } %925, 1, !nosanitize !49
  br i1 %926, label %927, label %928, !prof !50, !nosanitize !49

927:                                              ; preds = %922
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

928:                                              ; preds = %922
  %929 = extractvalue { i64, i1 } %925, 0, !nosanitize !49
  %930 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %931 = load ptr, ptr %930, align 8, !tbaa !44
  %932 = load i64, ptr %923, align 8, !tbaa !60
  %933 = trunc i64 %932 to i8
  store i64 %929, ptr %93, align 8, !tbaa !58
  %934 = getelementptr inbounds nuw i8, ptr %931, i64 %924
  store i8 %933, ptr %934, align 1, !tbaa !8
  %935 = load i64, ptr %93, align 8, !tbaa !58
  %936 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %935, i64 1), !nosanitize !49
  %937 = extractvalue { i64, i1 } %936, 1, !nosanitize !49
  br i1 %937, label %938, label %939, !prof !50, !nosanitize !49

938:                                              ; preds = %928
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

939:                                              ; preds = %928
  %940 = extractvalue { i64, i1 } %936, 0, !nosanitize !49
  %941 = load ptr, ptr %930, align 8, !tbaa !44
  %942 = load i64, ptr %923, align 8, !tbaa !60
  %943 = lshr i64 %942, 8
  %944 = trunc i64 %943 to i8
  store i64 %940, ptr %93, align 8, !tbaa !58
  %945 = getelementptr inbounds nuw i8, ptr %941, i64 %935
  store i8 %944, ptr %945, align 1, !tbaa !8
  %946 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %946, ptr %923, align 8, !tbaa !60
  br label %947

947:                                              ; preds = %939, %902
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %948 = load i64, ptr %93, align 8, !tbaa !58
  %949 = icmp eq i64 %948, 0
  br i1 %949, label %951, label %950

950:                                              ; preds = %947
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %996

951:                                              ; preds = %947, %899
  %952 = load i32, ptr %72, align 8, !tbaa !82
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %961

954:                                              ; preds = %951
  %955 = getelementptr inbounds nuw i8, ptr %25, i64 180
  %956 = load i32, ptr %955, align 4, !tbaa !76
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %958, label %961

958:                                              ; preds = %954
  %959 = load i32, ptr %79, align 8, !tbaa !29
  %960 = icmp eq i32 %959, 666
  br i1 %960, label %996, label %961

961:                                              ; preds = %958, %954, %951
  %962 = load i32, ptr %32, align 4, !tbaa !52
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %964, label %966

964:                                              ; preds = %961
  %965 = tail call i32 @deflate_stored(ptr noundef nonnull %25, i32 noundef 5)
  br label %978

966:                                              ; preds = %961
  %967 = load i32, ptr %33, align 8, !tbaa !53
  switch i32 %967, label %972 [
    i32 2, label %968
    i32 3, label %970
  ]

968:                                              ; preds = %966
  %969 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %25, i32 noundef 5)
  br label %978

970:                                              ; preds = %966
  %971 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %25, i32 noundef 5)
  br label %978

972:                                              ; preds = %966
  %973 = sext i32 %962 to i64
  %974 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %973
  %975 = getelementptr inbounds nuw i8, ptr %974, i64 8
  %976 = load ptr, ptr %975, align 8, !tbaa !98
  %977 = tail call i32 %976(ptr noundef nonnull %25, i32 noundef 5) #12, !inline_history !115
  br label %978

978:                                              ; preds = %972, %970, %968, %964
  %979 = phi i32 [ %965, %964 ], [ %969, %968 ], [ %971, %970 ], [ %977, %972 ]
  %980 = and i32 %979, -2
  %981 = icmp eq i32 %980, 2
  br i1 %981, label %982, label %983

982:                                              ; preds = %978
  store i32 666, ptr %79, align 8, !tbaa !29
  br label %983

983:                                              ; preds = %982, %978
  %984 = and i32 %979, -3
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %990

986:                                              ; preds = %983
  %987 = load i32, ptr %86, align 8, !tbaa !100
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %989, label %996

989:                                              ; preds = %986
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %996

990:                                              ; preds = %983
  %991 = icmp eq i32 %979, 1
  br i1 %991, label %992, label %996

992:                                              ; preds = %990
  tail call fastcc void @flush_pending(ptr noundef %0)
  %993 = load i32, ptr %86, align 8, !tbaa !100
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %996

995:                                              ; preds = %992
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %996

996:                                              ; preds = %958, %990, %992, %264, %668, %746, %861, %986, %995, %989, %950, %921, %368, %153, %137, %89, %145
  %997 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %998 = load i32, ptr %997, align 8, !tbaa !82
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1000, label %1012

1000:                                             ; preds = %996
  %1001 = getelementptr inbounds nuw i8, ptr %25, i64 172
  %1002 = load i32, ptr %1001, align 4, !tbaa !74
  %1003 = zext i32 %1002 to i64
  %1004 = getelementptr inbounds nuw i8, ptr %25, i64 152
  %1005 = load i64, ptr %1004, align 8, !tbaa !75
  %1006 = sub nsw i64 %1003, %1005
  %1007 = getelementptr inbounds nuw i8, ptr %25, i64 180
  %1008 = load i32, ptr %1007, align 4, !tbaa !76
  %1009 = zext i32 %1008 to i64
  %1010 = sub nsw i64 0, %1009
  %1011 = icmp eq i64 %1006, %1010
  br label %1012

1012:                                             ; preds = %82, %64, %61, %55, %51, %1000, %996
  %1013 = phi i1 [ false, %996 ], [ %1011, %1000 ], [ false, %82 ], [ false, %51 ], [ false, %55 ], [ false, %61 ], [ false, %64 ]
  %1014 = phi i32 [ -5, %996 ], [ -5, %1000 ], [ -2, %82 ], [ -2, %51 ], [ -2, %55 ], [ -2, %61 ], [ -2, %64 ]
  br i1 %1013, label %1015, label %1058

1015:                                             ; preds = %1012, %47, %36
  %1016 = load i32, ptr %32, align 4, !tbaa !52
  %1017 = icmp eq i32 %1016, %27
  br i1 %1017, label %1057, label %1018

1018:                                             ; preds = %1015
  %1019 = icmp eq i32 %1016, 0
  br i1 %1019, label %1020, label %1039

1020:                                             ; preds = %1018
  %1021 = getelementptr inbounds nuw i8, ptr %25, i64 5928
  %1022 = load i32, ptr %1021, align 8, !tbaa !116
  switch i32 %1022, label %1024 [
    i32 0, label %1039
    i32 1, label %1023
  ]

1023:                                             ; preds = %1020
  tail call fastcc void @slide_hash(ptr noundef %25)
  br label %1038

1024:                                             ; preds = %1020
  %1025 = getelementptr inbounds nuw i8, ptr %25, i64 132
  %1026 = load i32, ptr %1025, align 4, !tbaa !36
  %1027 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1026, i32 1), !nosanitize !49
  %1028 = extractvalue { i32, i1 } %1027, 1, !nosanitize !49
  br i1 %1028, label %1029, label %1030, !prof !50, !nosanitize !49

1029:                                             ; preds = %1024
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

1030:                                             ; preds = %1024
  %1031 = extractvalue { i32, i1 } %1027, 0, !nosanitize !49
  %1032 = getelementptr inbounds nuw i8, ptr %25, i64 120
  %1033 = load ptr, ptr %1032, align 8, !tbaa !41
  %1034 = zext i32 %1031 to i64
  %1035 = getelementptr inbounds nuw [2 x i8], ptr %1033, i64 %1034
  store i16 0, ptr %1035, align 2, !tbaa !63
  %1036 = shl nuw nsw i64 %1034, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1033, i8 0, i64 %1036, i1 false)
  %1037 = getelementptr inbounds nuw i8, ptr %25, i64 5960
  store i32 0, ptr %1037, align 8, !tbaa !64
  br label %1038

1038:                                             ; preds = %1030, %1023
  store i32 0, ptr %1021, align 8, !tbaa !116
  br label %1039

1039:                                             ; preds = %1020, %1038, %1018
  store i32 %27, ptr %32, align 4, !tbaa !52
  %1040 = zext nneg i32 %27 to i64
  %1041 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1040
  %1042 = getelementptr inbounds nuw i8, ptr %1041, i64 2
  %1043 = load i16, ptr %1042, align 2, !tbaa !65
  %1044 = zext i16 %1043 to i32
  %1045 = getelementptr inbounds nuw i8, ptr %25, i64 192
  store i32 %1044, ptr %1045, align 8, !tbaa !67
  %1046 = load i16, ptr %1041, align 16, !tbaa !68
  %1047 = zext i16 %1046 to i32
  %1048 = getelementptr inbounds nuw i8, ptr %25, i64 204
  store i32 %1047, ptr %1048, align 4, !tbaa !69
  %1049 = getelementptr inbounds nuw i8, ptr %1041, i64 4
  %1050 = load i16, ptr %1049, align 4, !tbaa !70
  %1051 = zext i16 %1050 to i32
  %1052 = getelementptr inbounds nuw i8, ptr %25, i64 208
  store i32 %1051, ptr %1052, align 8, !tbaa !71
  %1053 = getelementptr inbounds nuw i8, ptr %1041, i64 6
  %1054 = load i16, ptr %1053, align 2, !tbaa !72
  %1055 = zext i16 %1054 to i32
  %1056 = getelementptr inbounds nuw i8, ptr %25, i64 188
  store i32 %1055, ptr %1056, align 4, !tbaa !73
  br label %1057

1057:                                             ; preds = %1039, %1015
  store i32 %2, ptr %33, align 8, !tbaa !53
  br label %1058

1058:                                             ; preds = %20, %17, %13, %9, %5, %3, %23, %1012, %1057
  %1059 = phi i32 [ %1014, %1012 ], [ -2, %23 ], [ 0, %1057 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ -2, %20 ]
  ret i32 %1059
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 2) i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %23 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  br label %23

23:                                               ; preds = %2, %4, %8, %12, %16, %19, %22
  %24 = phi i1 [ false, %22 ], [ true, %2 ], [ true, %8 ], [ true, %4 ], [ true, %19 ], [ true, %16 ], [ true, %12 ]
  %25 = icmp ugt i32 %1, 5
  %26 = or i1 %25, %24
  br i1 %26, label %1157, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = load ptr, ptr %30, align 8, !tbaa !99
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i32, ptr %34, align 8, !tbaa !82
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 8, !tbaa !83
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %42 = load i32, ptr %41, align 8, !tbaa !29
  %43 = icmp eq i32 %42, 666
  %44 = icmp ne i32 %1, 4
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %37, %27
  %47 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 32), align 16, !tbaa !46
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %47, ptr %48, align 8, !tbaa !9
  br label %1157

49:                                               ; preds = %40
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %51 = load i32, ptr %50, align 8, !tbaa !100
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %54, ptr %55, align 8, !tbaa !9
  br label %1157

56:                                               ; preds = %49
  %57 = getelementptr inbounds nuw i8, ptr %29, i64 76
  %58 = load i32, ptr %57, align 4, !tbaa !61
  store i32 %1, ptr %57, align 4, !tbaa !61
  %59 = getelementptr inbounds nuw i8, ptr %29, i64 40
  %60 = load i64, ptr %59, align 8, !tbaa !58
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %104, label %62

62:                                               ; preds = %56
  tail call void @_tr_flush_bits(ptr noundef %29) #12
  %63 = load i64, ptr %59, align 8, !tbaa !58
  %64 = load i32, ptr %50, align 8, !tbaa !100
  %65 = zext i32 %64 to i64
  %66 = tail call i64 @llvm.umin.i64(i64 %63, i64 %65)
  %67 = trunc nuw i64 %66 to i32
  %68 = icmp eq i64 %66, 0
  br i1 %68, label %100, label %69

69:                                               ; preds = %62
  %70 = load ptr, ptr %30, align 8, !tbaa !99
  %71 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %72 = load ptr, ptr %71, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 1 %72, i64 %66, i1 false)
  %73 = load ptr, ptr %30, align 8, !tbaa !99
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 %66
  store ptr %74, ptr %30, align 8, !tbaa !99
  %75 = load ptr, ptr %71, align 8, !tbaa !59
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 %66
  store ptr %76, ptr %71, align 8, !tbaa !59
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %78 = load i64, ptr %77, align 8, !tbaa !101
  %79 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %78, i64 %66), !nosanitize !49
  %80 = extractvalue { i64, i1 } %79, 1, !nosanitize !49
  br i1 %80, label %81, label %82, !prof !50, !nosanitize !49

81:                                               ; preds = %69
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %69
  %83 = extractvalue { i64, i1 } %79, 0, !nosanitize !49
  store i64 %83, ptr %77, align 8, !tbaa !101
  %84 = load i32, ptr %50, align 8, !tbaa !100
  %85 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %84, i32 %67), !nosanitize !49
  %86 = extractvalue { i32, i1 } %85, 1, !nosanitize !49
  br i1 %86, label %87, label %88, !prof !50, !nosanitize !49

87:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

88:                                               ; preds = %82
  %89 = extractvalue { i32, i1 } %85, 0, !nosanitize !49
  store i32 %89, ptr %50, align 8, !tbaa !100
  %90 = load i64, ptr %59, align 8, !tbaa !58
  %91 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %90, i64 %66), !nosanitize !49
  %92 = extractvalue { i64, i1 } %91, 1, !nosanitize !49
  br i1 %92, label %93, label %94, !prof !50, !nosanitize !49

93:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

94:                                               ; preds = %88
  %95 = extractvalue { i64, i1 } %91, 0, !nosanitize !49
  store i64 %95, ptr %59, align 8, !tbaa !58
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %99 = load ptr, ptr %98, align 8, !tbaa !44
  store ptr %99, ptr %71, align 8, !tbaa !59
  br label %100

100:                                              ; preds = %62, %94, %97
  %101 = load i32, ptr %50, align 8, !tbaa !100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1157

104:                                              ; preds = %56
  br i1 %36, label %105, label %119

105:                                              ; preds = %104
  %106 = shl nuw nsw i32 %1, 1
  %107 = icmp sgt i32 %1, 4
  %108 = select i1 %107, i32 -9, i32 0
  %109 = add nsw i32 %108, %106
  %110 = shl nsw i32 %58, 1
  %111 = icmp sgt i32 %58, 4
  %112 = select i1 %111, i32 -9, i32 0
  %113 = add i32 %112, %110
  %114 = icmp sle i32 %109, %113
  %115 = and i1 %44, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %117, ptr %118, align 8, !tbaa !9
  br label %1157

119:                                              ; preds = %104, %105, %100
  %120 = load i32, ptr %41, align 8, !tbaa !29
  switch i32 %120, label %132 [
    i32 666, label %121
    i32 42, label %127
  ]

121:                                              ; preds = %119
  %122 = load i32, ptr %34, align 8, !tbaa !82
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %125, ptr %126, align 8, !tbaa !9
  br label %1157

127:                                              ; preds = %119
  %128 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %129 = load i32, ptr %128, align 8, !tbaa !30
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 113, ptr %41, align 8, !tbaa !29
  br label %132

132:                                              ; preds = %121, %119, %131, %127
  %133 = load i32, ptr %41, align 8, !tbaa !29
  %134 = icmp eq i32 %133, 42
  br i1 %134, label %135, label %238

135:                                              ; preds = %132
  %136 = getelementptr inbounds nuw i8, ptr %29, i64 84
  %137 = load i32, ptr %136, align 4, !tbaa !32
  %138 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %137, i32 8), !nosanitize !49
  %139 = extractvalue { i32, i1 } %138, 1, !nosanitize !49
  br i1 %139, label %140, label %141, !prof !50, !nosanitize !49

140:                                              ; preds = %135
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

141:                                              ; preds = %135
  %142 = extractvalue { i32, i1 } %138, 0, !nosanitize !49
  %143 = shl i32 %142, 12
  %144 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %145 = load i32, ptr %144, align 8, !tbaa !53
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %156, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %149 = load i32, ptr %148, align 4, !tbaa !52
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %156, label %151

151:                                              ; preds = %147
  %152 = icmp slt i32 %149, 6
  br i1 %152, label %156, label %153

153:                                              ; preds = %151
  %154 = icmp eq i32 %149, 6
  %155 = select i1 %154, i32 128, i32 192
  br label %156

156:                                              ; preds = %153, %151, %141, %147
  %157 = phi i32 [ 64, %151 ], [ 0, %141 ], [ %155, %153 ], [ 0, %147 ]
  %158 = getelementptr inbounds nuw i8, ptr %29, i64 172
  %159 = or disjoint i32 %157, %143
  %160 = load i32, ptr %158, align 4, !tbaa !74
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, i32 2048, i32 2080
  %163 = or disjoint i32 %162, %159
  %164 = urem i32 %163, 31
  %165 = or disjoint i32 %164, %163
  %166 = load i64, ptr %59, align 8, !tbaa !58
  %167 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %166, i64 1), !nosanitize !49
  %168 = extractvalue { i64, i1 } %167, 1, !nosanitize !49
  br i1 %168, label %169, label %170, !prof !50, !nosanitize !49

169:                                              ; preds = %156
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

170:                                              ; preds = %156
  %171 = extractvalue { i64, i1 } %167, 0, !nosanitize !49
  %172 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %173 = load ptr, ptr %172, align 8, !tbaa !44
  %174 = lshr i32 %163, 8
  %175 = trunc i32 %174 to i8
  store i64 %171, ptr %59, align 8, !tbaa !58
  %176 = getelementptr inbounds nuw i8, ptr %173, i64 %166
  store i8 %175, ptr %176, align 1, !tbaa !8
  %177 = load i64, ptr %59, align 8, !tbaa !58
  %178 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %177, i64 1), !nosanitize !49
  %179 = extractvalue { i64, i1 } %178, 1, !nosanitize !49
  br i1 %179, label %180, label %181, !prof !50, !nosanitize !49

180:                                              ; preds = %170
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

181:                                              ; preds = %170
  %182 = extractvalue { i64, i1 } %178, 0, !nosanitize !49
  %183 = load ptr, ptr %172, align 8, !tbaa !44
  %184 = trunc i32 %165 to i8
  %185 = xor i8 %184, 31
  store i64 %182, ptr %59, align 8, !tbaa !58
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 %177
  store i8 %185, ptr %186, align 1, !tbaa !8
  %187 = load i32, ptr %158, align 4, !tbaa !74
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %232, label %189

189:                                              ; preds = %181
  %190 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %191 = load i64, ptr %190, align 8, !tbaa !60
  %192 = lshr i64 %191, 16
  %193 = load i64, ptr %59, align 8, !tbaa !58
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 1), !nosanitize !49
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !49
  br i1 %195, label %196, label %197, !prof !50, !nosanitize !49

196:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

197:                                              ; preds = %189
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !49
  %199 = load ptr, ptr %172, align 8, !tbaa !44
  %200 = lshr i64 %191, 24
  %201 = trunc i64 %200 to i8
  store i64 %198, ptr %59, align 8, !tbaa !58
  %202 = getelementptr inbounds nuw i8, ptr %199, i64 %193
  store i8 %201, ptr %202, align 1, !tbaa !8
  %203 = load i64, ptr %59, align 8, !tbaa !58
  %204 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %203, i64 1), !nosanitize !49
  %205 = extractvalue { i64, i1 } %204, 1, !nosanitize !49
  br i1 %205, label %206, label %207, !prof !50, !nosanitize !49

206:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

207:                                              ; preds = %197
  %208 = extractvalue { i64, i1 } %204, 0, !nosanitize !49
  %209 = load ptr, ptr %172, align 8, !tbaa !44
  %210 = trunc i64 %192 to i8
  store i64 %208, ptr %59, align 8, !tbaa !58
  %211 = getelementptr inbounds nuw i8, ptr %209, i64 %203
  store i8 %210, ptr %211, align 1, !tbaa !8
  %212 = load i64, ptr %190, align 8, !tbaa !60
  %213 = trunc i64 %212 to i8
  %214 = load i64, ptr %59, align 8, !tbaa !58
  %215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %214, i64 1), !nosanitize !49
  %216 = extractvalue { i64, i1 } %215, 1, !nosanitize !49
  br i1 %216, label %217, label %218, !prof !50, !nosanitize !49

217:                                              ; preds = %207
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

218:                                              ; preds = %207
  %219 = extractvalue { i64, i1 } %215, 0, !nosanitize !49
  %220 = load ptr, ptr %172, align 8, !tbaa !44
  %221 = lshr i64 %212, 8
  %222 = trunc i64 %221 to i8
  store i64 %219, ptr %59, align 8, !tbaa !58
  %223 = getelementptr inbounds nuw i8, ptr %220, i64 %214
  store i8 %222, ptr %223, align 1, !tbaa !8
  %224 = load i64, ptr %59, align 8, !tbaa !58
  %225 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %224, i64 1), !nosanitize !49
  %226 = extractvalue { i64, i1 } %225, 1, !nosanitize !49
  br i1 %226, label %227, label %228, !prof !50, !nosanitize !49

227:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

228:                                              ; preds = %218
  %229 = extractvalue { i64, i1 } %225, 0, !nosanitize !49
  %230 = load ptr, ptr %172, align 8, !tbaa !44
  store i64 %229, ptr %59, align 8, !tbaa !58
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 %224
  store i8 %213, ptr %231, align 1, !tbaa !8
  br label %232

232:                                              ; preds = %228, %181
  %233 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %233, ptr %234, align 8, !tbaa !60
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %235 = load i64, ptr %59, align 8, !tbaa !58
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %232
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1157

238:                                              ; preds = %232, %132
  %239 = load i32, ptr %41, align 8, !tbaa !29
  %240 = icmp eq i32 %239, 57
  br i1 %240, label %241, label %497

241:                                              ; preds = %238
  %242 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %242, ptr %243, align 8, !tbaa !60
  %244 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %245 = load i64, ptr %59, align 8, !tbaa !58
  %246 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %245, i64 1), !nosanitize !49
  %247 = extractvalue { i64, i1 } %246, 1, !nosanitize !49
  br i1 %247, label %248, label %249, !prof !50, !nosanitize !49

248:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

249:                                              ; preds = %241
  %250 = extractvalue { i64, i1 } %246, 0, !nosanitize !49
  %251 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %250, ptr %59, align 8, !tbaa !58
  %252 = getelementptr inbounds nuw i8, ptr %251, i64 %245
  store i8 31, ptr %252, align 1, !tbaa !8
  %253 = load i64, ptr %59, align 8, !tbaa !58
  %254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 1), !nosanitize !49
  %255 = extractvalue { i64, i1 } %254, 1, !nosanitize !49
  br i1 %255, label %256, label %257, !prof !50, !nosanitize !49

256:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

257:                                              ; preds = %249
  %258 = extractvalue { i64, i1 } %254, 0, !nosanitize !49
  %259 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %258, ptr %59, align 8, !tbaa !58
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 %253
  store i8 -117, ptr %260, align 1, !tbaa !8
  %261 = load i64, ptr %59, align 8, !tbaa !58
  %262 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %261, i64 1), !nosanitize !49
  %263 = extractvalue { i64, i1 } %262, 1, !nosanitize !49
  br i1 %263, label %264, label %265, !prof !50, !nosanitize !49

264:                                              ; preds = %257
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

265:                                              ; preds = %257
  %266 = extractvalue { i64, i1 } %262, 0, !nosanitize !49
  %267 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %266, ptr %59, align 8, !tbaa !58
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 %261
  store i8 8, ptr %268, align 1, !tbaa !8
  %269 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %270 = load ptr, ptr %269, align 8, !tbaa !31
  %271 = icmp eq ptr %270, null
  %272 = load i64, ptr %59, align 8, !tbaa !58
  %273 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %272, i64 1), !nosanitize !49
  %274 = extractvalue { i64, i1 } %273, 1, !nosanitize !49
  br i1 %271, label %275, label %344

275:                                              ; preds = %265
  br i1 %274, label %276, label %277, !prof !50, !nosanitize !49

276:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

277:                                              ; preds = %275
  %278 = extractvalue { i64, i1 } %273, 0, !nosanitize !49
  %279 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %278, ptr %59, align 8, !tbaa !58
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 %272
  store i8 0, ptr %280, align 1, !tbaa !8
  %281 = load i64, ptr %59, align 8, !tbaa !58
  %282 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %281, i64 1), !nosanitize !49
  %283 = extractvalue { i64, i1 } %282, 1, !nosanitize !49
  br i1 %283, label %284, label %285, !prof !50, !nosanitize !49

284:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

285:                                              ; preds = %277
  %286 = extractvalue { i64, i1 } %282, 0, !nosanitize !49
  %287 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %286, ptr %59, align 8, !tbaa !58
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 %281
  store i8 0, ptr %288, align 1, !tbaa !8
  %289 = load i64, ptr %59, align 8, !tbaa !58
  %290 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %289, i64 1), !nosanitize !49
  %291 = extractvalue { i64, i1 } %290, 1, !nosanitize !49
  br i1 %291, label %292, label %293, !prof !50, !nosanitize !49

292:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

293:                                              ; preds = %285
  %294 = extractvalue { i64, i1 } %290, 0, !nosanitize !49
  %295 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %294, ptr %59, align 8, !tbaa !58
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 %289
  store i8 0, ptr %296, align 1, !tbaa !8
  %297 = load i64, ptr %59, align 8, !tbaa !58
  %298 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %297, i64 1), !nosanitize !49
  %299 = extractvalue { i64, i1 } %298, 1, !nosanitize !49
  br i1 %299, label %300, label %301, !prof !50, !nosanitize !49

300:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

301:                                              ; preds = %293
  %302 = extractvalue { i64, i1 } %298, 0, !nosanitize !49
  %303 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %302, ptr %59, align 8, !tbaa !58
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 %297
  store i8 0, ptr %304, align 1, !tbaa !8
  %305 = load i64, ptr %59, align 8, !tbaa !58
  %306 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %305, i64 1), !nosanitize !49
  %307 = extractvalue { i64, i1 } %306, 1, !nosanitize !49
  br i1 %307, label %308, label %309, !prof !50, !nosanitize !49

308:                                              ; preds = %301
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

309:                                              ; preds = %301
  %310 = extractvalue { i64, i1 } %306, 0, !nosanitize !49
  %311 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %310, ptr %59, align 8, !tbaa !58
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 %305
  store i8 0, ptr %312, align 1, !tbaa !8
  %313 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %314 = load i32, ptr %313, align 4, !tbaa !52
  %315 = icmp eq i32 %314, 9
  br i1 %315, label %323, label %316

316:                                              ; preds = %309
  %317 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %318 = load i32, ptr %317, align 8, !tbaa !53
  %319 = icmp sgt i32 %318, 1
  %320 = icmp slt i32 %314, 2
  %321 = or i1 %320, %319
  %322 = select i1 %321, i8 4, i8 0
  br label %323

323:                                              ; preds = %309, %316
  %324 = phi i8 [ %322, %316 ], [ 2, %309 ]
  %325 = load i64, ptr %59, align 8, !tbaa !58
  %326 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %325, i64 1), !nosanitize !49
  %327 = extractvalue { i64, i1 } %326, 1, !nosanitize !49
  br i1 %327, label %328, label %329, !prof !50, !nosanitize !49

328:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

329:                                              ; preds = %323
  %330 = extractvalue { i64, i1 } %326, 0, !nosanitize !49
  %331 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %330, ptr %59, align 8, !tbaa !58
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 %325
  store i8 %324, ptr %332, align 1, !tbaa !8
  %333 = load i64, ptr %59, align 8, !tbaa !58
  %334 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %333, i64 1), !nosanitize !49
  %335 = extractvalue { i64, i1 } %334, 1, !nosanitize !49
  br i1 %335, label %336, label %337, !prof !50, !nosanitize !49

336:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

337:                                              ; preds = %329
  %338 = extractvalue { i64, i1 } %334, 0, !nosanitize !49
  %339 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %338, ptr %59, align 8, !tbaa !58
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 %333
  store i8 3, ptr %340, align 1, !tbaa !8
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %341 = load i64, ptr %59, align 8, !tbaa !58
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %497, label %343

343:                                              ; preds = %337
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1157

344:                                              ; preds = %265
  br i1 %274, label %345, label %346, !prof !50, !nosanitize !49

345:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

346:                                              ; preds = %344
  %347 = extractvalue { i64, i1 } %273, 0, !nosanitize !49
  %348 = load ptr, ptr %244, align 8, !tbaa !44
  %349 = getelementptr inbounds nuw i8, ptr %270, i64 56
  %350 = load ptr, ptr %349, align 8, !tbaa !102
  %351 = icmp eq ptr %350, null
  %352 = getelementptr inbounds nuw i8, ptr %270, i64 40
  %353 = load ptr, ptr %352, align 8, !tbaa !104
  %354 = icmp eq ptr %353, null
  %355 = getelementptr inbounds nuw i8, ptr %270, i64 24
  %356 = load ptr, ptr %355, align 8, !tbaa !105
  %357 = icmp eq ptr %356, null
  %358 = load i32, ptr %270, align 8, !tbaa !106
  %359 = icmp ne i32 %358, 0
  %360 = getelementptr inbounds nuw i8, ptr %270, i64 68
  %361 = load i32, ptr %360, align 4, !tbaa !107
  %362 = icmp eq i32 %361, 0
  %363 = select i1 %362, i8 0, i8 2
  %364 = zext i1 %359 to i8
  %365 = select i1 %357, i8 0, i8 4
  %366 = select i1 %354, i8 0, i8 8
  %367 = select i1 %351, i8 0, i8 16
  %368 = or disjoint i8 %366, %367
  %369 = or disjoint i8 %368, %365
  %370 = or disjoint i8 %369, %364
  %371 = or disjoint i8 %370, %363
  store i64 %347, ptr %59, align 8, !tbaa !58
  %372 = getelementptr inbounds nuw i8, ptr %348, i64 %272
  store i8 %371, ptr %372, align 1, !tbaa !8
  %373 = load i64, ptr %59, align 8, !tbaa !58
  %374 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %373, i64 1), !nosanitize !49
  %375 = extractvalue { i64, i1 } %374, 1, !nosanitize !49
  br i1 %375, label %376, label %377, !prof !50, !nosanitize !49

376:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

377:                                              ; preds = %346
  %378 = extractvalue { i64, i1 } %374, 0, !nosanitize !49
  %379 = load ptr, ptr %244, align 8, !tbaa !44
  %380 = load ptr, ptr %269, align 8, !tbaa !31
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 8
  %382 = load i64, ptr %381, align 8, !tbaa !108
  %383 = trunc i64 %382 to i8
  store i64 %378, ptr %59, align 8, !tbaa !58
  %384 = getelementptr inbounds nuw i8, ptr %379, i64 %373
  store i8 %383, ptr %384, align 1, !tbaa !8
  %385 = load i64, ptr %59, align 8, !tbaa !58
  %386 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %385, i64 1), !nosanitize !49
  %387 = extractvalue { i64, i1 } %386, 1, !nosanitize !49
  br i1 %387, label %388, label %389, !prof !50, !nosanitize !49

388:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

389:                                              ; preds = %377
  %390 = extractvalue { i64, i1 } %386, 0, !nosanitize !49
  %391 = load ptr, ptr %244, align 8, !tbaa !44
  %392 = load ptr, ptr %269, align 8, !tbaa !31
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 8
  %394 = load i64, ptr %393, align 8, !tbaa !108
  %395 = lshr i64 %394, 8
  %396 = trunc i64 %395 to i8
  store i64 %390, ptr %59, align 8, !tbaa !58
  %397 = getelementptr inbounds nuw i8, ptr %391, i64 %385
  store i8 %396, ptr %397, align 1, !tbaa !8
  %398 = load i64, ptr %59, align 8, !tbaa !58
  %399 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %398, i64 1), !nosanitize !49
  %400 = extractvalue { i64, i1 } %399, 1, !nosanitize !49
  br i1 %400, label %401, label %402, !prof !50, !nosanitize !49

401:                                              ; preds = %389
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

402:                                              ; preds = %389
  %403 = extractvalue { i64, i1 } %399, 0, !nosanitize !49
  %404 = load ptr, ptr %244, align 8, !tbaa !44
  %405 = load ptr, ptr %269, align 8, !tbaa !31
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 8
  %407 = load i64, ptr %406, align 8, !tbaa !108
  %408 = lshr i64 %407, 16
  %409 = trunc i64 %408 to i8
  store i64 %403, ptr %59, align 8, !tbaa !58
  %410 = getelementptr inbounds nuw i8, ptr %404, i64 %398
  store i8 %409, ptr %410, align 1, !tbaa !8
  %411 = load i64, ptr %59, align 8, !tbaa !58
  %412 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %411, i64 1), !nosanitize !49
  %413 = extractvalue { i64, i1 } %412, 1, !nosanitize !49
  br i1 %413, label %414, label %415, !prof !50, !nosanitize !49

414:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

415:                                              ; preds = %402
  %416 = extractvalue { i64, i1 } %412, 0, !nosanitize !49
  %417 = load ptr, ptr %244, align 8, !tbaa !44
  %418 = load ptr, ptr %269, align 8, !tbaa !31
  %419 = getelementptr inbounds nuw i8, ptr %418, i64 8
  %420 = load i64, ptr %419, align 8, !tbaa !108
  %421 = lshr i64 %420, 24
  %422 = trunc i64 %421 to i8
  store i64 %416, ptr %59, align 8, !tbaa !58
  %423 = getelementptr inbounds nuw i8, ptr %417, i64 %411
  store i8 %422, ptr %423, align 1, !tbaa !8
  %424 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %425 = load i32, ptr %424, align 4, !tbaa !52
  %426 = icmp eq i32 %425, 9
  br i1 %426, label %434, label %427

427:                                              ; preds = %415
  %428 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %429 = load i32, ptr %428, align 8, !tbaa !53
  %430 = icmp sgt i32 %429, 1
  %431 = icmp slt i32 %425, 2
  %432 = or i1 %431, %430
  %433 = select i1 %432, i8 4, i8 0
  br label %434

434:                                              ; preds = %415, %427
  %435 = phi i8 [ %433, %427 ], [ 2, %415 ]
  %436 = load i64, ptr %59, align 8, !tbaa !58
  %437 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %436, i64 1), !nosanitize !49
  %438 = extractvalue { i64, i1 } %437, 1, !nosanitize !49
  br i1 %438, label %439, label %440, !prof !50, !nosanitize !49

439:                                              ; preds = %434
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

440:                                              ; preds = %434
  %441 = extractvalue { i64, i1 } %437, 0, !nosanitize !49
  %442 = load ptr, ptr %244, align 8, !tbaa !44
  store i64 %441, ptr %59, align 8, !tbaa !58
  %443 = getelementptr inbounds nuw i8, ptr %442, i64 %436
  store i8 %435, ptr %443, align 1, !tbaa !8
  %444 = load i64, ptr %59, align 8, !tbaa !58
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %444, i64 1), !nosanitize !49
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !49
  br i1 %446, label %447, label %448, !prof !50, !nosanitize !49

447:                                              ; preds = %440
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

448:                                              ; preds = %440
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !49
  %450 = load ptr, ptr %244, align 8, !tbaa !44
  %451 = load ptr, ptr %269, align 8, !tbaa !31
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 20
  %453 = load i32, ptr %452, align 4, !tbaa !109
  %454 = trunc i32 %453 to i8
  store i64 %449, ptr %59, align 8, !tbaa !58
  %455 = getelementptr inbounds nuw i8, ptr %450, i64 %444
  store i8 %454, ptr %455, align 1, !tbaa !8
  %456 = load ptr, ptr %269, align 8, !tbaa !31
  %457 = getelementptr inbounds nuw i8, ptr %456, i64 24
  %458 = load ptr, ptr %457, align 8, !tbaa !105
  %459 = icmp eq ptr %458, null
  br i1 %459, label %485, label %460

460:                                              ; preds = %448
  %461 = load i64, ptr %59, align 8, !tbaa !58
  %462 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %461, i64 1), !nosanitize !49
  %463 = extractvalue { i64, i1 } %462, 1, !nosanitize !49
  br i1 %463, label %464, label %465, !prof !50, !nosanitize !49

464:                                              ; preds = %460
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

465:                                              ; preds = %460
  %466 = extractvalue { i64, i1 } %462, 0, !nosanitize !49
  %467 = load ptr, ptr %244, align 8, !tbaa !44
  %468 = getelementptr inbounds nuw i8, ptr %456, i64 32
  %469 = load i32, ptr %468, align 8, !tbaa !110
  %470 = trunc i32 %469 to i8
  store i64 %466, ptr %59, align 8, !tbaa !58
  %471 = getelementptr inbounds nuw i8, ptr %467, i64 %461
  store i8 %470, ptr %471, align 1, !tbaa !8
  %472 = load i64, ptr %59, align 8, !tbaa !58
  %473 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %472, i64 1), !nosanitize !49
  %474 = extractvalue { i64, i1 } %473, 1, !nosanitize !49
  br i1 %474, label %475, label %476, !prof !50, !nosanitize !49

475:                                              ; preds = %465
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

476:                                              ; preds = %465
  %477 = extractvalue { i64, i1 } %473, 0, !nosanitize !49
  %478 = load ptr, ptr %244, align 8, !tbaa !44
  %479 = load ptr, ptr %269, align 8, !tbaa !31
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %481 = load i32, ptr %480, align 8, !tbaa !110
  %482 = lshr i32 %481, 8
  %483 = trunc i32 %482 to i8
  store i64 %477, ptr %59, align 8, !tbaa !58
  %484 = getelementptr inbounds nuw i8, ptr %478, i64 %472
  store i8 %483, ptr %484, align 1, !tbaa !8
  br label %485

485:                                              ; preds = %476, %448
  %486 = load ptr, ptr %269, align 8, !tbaa !31
  %487 = getelementptr inbounds nuw i8, ptr %486, i64 68
  %488 = load i32, ptr %487, align 4, !tbaa !107
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %495, label %490

490:                                              ; preds = %485
  %491 = load i64, ptr %243, align 8, !tbaa !60
  %492 = load ptr, ptr %244, align 8, !tbaa !44
  %493 = load i64, ptr %59, align 8, !tbaa !58
  %494 = tail call i64 @crc32_z(i64 noundef %491, ptr noundef %492, i64 noundef %493) #12
  store i64 %494, ptr %243, align 8, !tbaa !60
  br label %495

495:                                              ; preds = %490, %485
  %496 = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i64 0, ptr %496, align 8, !tbaa !111
  store i32 69, ptr %41, align 8, !tbaa !29
  br label %497

497:                                              ; preds = %495, %337, %238
  %498 = load i32, ptr %41, align 8, !tbaa !29
  %499 = icmp eq i32 %498, 69
  br i1 %499, label %500, label %649

500:                                              ; preds = %497
  %501 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %502 = load ptr, ptr %501, align 8, !tbaa !31
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 24
  %504 = load ptr, ptr %503, align 8, !tbaa !105
  %505 = icmp eq ptr %504, null
  br i1 %505, label %648, label %506

506:                                              ; preds = %500
  %507 = getelementptr inbounds nuw i8, ptr %502, i64 32
  %508 = load i32, ptr %507, align 8, !tbaa !110
  %509 = and i32 %508, 65535
  %510 = zext nneg i32 %509 to i64
  %511 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %512 = load i64, ptr %511, align 8, !tbaa !111
  %513 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %510, i64 %512), !nosanitize !49
  %514 = extractvalue { i64, i1 } %513, 1, !nosanitize !49
  br i1 %514, label %515, label %516, !prof !50, !nosanitize !49

515:                                              ; preds = %506
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

516:                                              ; preds = %506
  %517 = extractvalue { i64, i1 } %513, 0, !nosanitize !49
  %518 = load i64, ptr %59, align 8, !tbaa !58
  %519 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %520 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %523

523:                                              ; preds = %615, %516
  %524 = phi i64 [ %518, %516 ], [ %616, %615 ]
  %525 = phi i64 [ %517, %516 ], [ %617, %615 ]
  %526 = load i64, ptr %59, align 8, !tbaa !58
  %527 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %526, i64 %525), !nosanitize !49
  %528 = extractvalue { i64, i1 } %527, 1, !nosanitize !49
  br i1 %528, label %529, label %530, !prof !50, !nosanitize !49

529:                                              ; preds = %523
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

530:                                              ; preds = %523
  %531 = extractvalue { i64, i1 } %527, 0, !nosanitize !49
  %532 = load i64, ptr %519, align 8, !tbaa !45
  %533 = icmp ugt i64 %531, %532
  br i1 %533, label %534, label %618

534:                                              ; preds = %530
  %535 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %526), !nosanitize !49
  %536 = extractvalue { i64, i1 } %535, 0, !nosanitize !49
  %537 = extractvalue { i64, i1 } %535, 1, !nosanitize !49
  br i1 %537, label %538, label %539, !prof !50, !nosanitize !49

538:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

539:                                              ; preds = %534
  %540 = load ptr, ptr %520, align 8, !tbaa !44
  %541 = getelementptr inbounds nuw i8, ptr %540, i64 %526
  %542 = load ptr, ptr %501, align 8, !tbaa !31
  %543 = getelementptr inbounds nuw i8, ptr %542, i64 24
  %544 = load ptr, ptr %543, align 8, !tbaa !105
  %545 = load i64, ptr %511, align 8, !tbaa !111
  %546 = getelementptr inbounds nuw i8, ptr %544, i64 %545
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %541, ptr align 1 %546, i64 %536, i1 false)
  %547 = load i64, ptr %519, align 8, !tbaa !45
  store i64 %547, ptr %59, align 8, !tbaa !58
  %548 = load ptr, ptr %501, align 8, !tbaa !31
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 68
  %550 = load i32, ptr %549, align 4, !tbaa !107
  %551 = icmp ne i32 %550, 0
  %552 = icmp ugt i64 %547, %524
  %553 = select i1 %551, i1 %552, i1 false
  br i1 %553, label %554, label %560

554:                                              ; preds = %539
  %555 = sub nuw i64 %547, %524
  %556 = load ptr, ptr %520, align 8, !tbaa !44
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 %524
  %558 = load i64, ptr %521, align 8, !tbaa !60
  %559 = tail call i64 @crc32_z(i64 noundef %558, ptr noundef %557, i64 noundef %555) #12
  store i64 %559, ptr %521, align 8, !tbaa !60
  br label %560

560:                                              ; preds = %554, %539
  %561 = load i64, ptr %511, align 8, !tbaa !111
  %562 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %561, i64 %536), !nosanitize !49
  %563 = extractvalue { i64, i1 } %562, 1, !nosanitize !49
  br i1 %563, label %564, label %565, !prof !50, !nosanitize !49

564:                                              ; preds = %560
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

565:                                              ; preds = %560
  %566 = extractvalue { i64, i1 } %562, 0, !nosanitize !49
  store i64 %566, ptr %511, align 8, !tbaa !111
  %567 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %567) #12
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 40
  %569 = load i64, ptr %568, align 8, !tbaa !58
  %570 = load i32, ptr %50, align 8, !tbaa !100
  %571 = zext i32 %570 to i64
  %572 = tail call i64 @llvm.umin.i64(i64 %569, i64 %571)
  %573 = trunc nuw i64 %572 to i32
  %574 = icmp eq i64 %572, 0
  br i1 %574, label %605, label %575

575:                                              ; preds = %565
  %576 = load ptr, ptr %30, align 8, !tbaa !99
  %577 = getelementptr inbounds nuw i8, ptr %567, i64 32
  %578 = load ptr, ptr %577, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %576, ptr align 1 %578, i64 %572, i1 false)
  %579 = load ptr, ptr %30, align 8, !tbaa !99
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 %572
  store ptr %580, ptr %30, align 8, !tbaa !99
  %581 = load ptr, ptr %577, align 8, !tbaa !59
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 %572
  store ptr %582, ptr %577, align 8, !tbaa !59
  %583 = load i64, ptr %522, align 8, !tbaa !101
  %584 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %583, i64 %572), !nosanitize !49
  %585 = extractvalue { i64, i1 } %584, 1, !nosanitize !49
  br i1 %585, label %586, label %587, !prof !50, !nosanitize !49

586:                                              ; preds = %575
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

587:                                              ; preds = %575
  %588 = extractvalue { i64, i1 } %584, 0, !nosanitize !49
  store i64 %588, ptr %522, align 8, !tbaa !101
  %589 = load i32, ptr %50, align 8, !tbaa !100
  %590 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %589, i32 %573), !nosanitize !49
  %591 = extractvalue { i32, i1 } %590, 1, !nosanitize !49
  br i1 %591, label %592, label %593, !prof !50, !nosanitize !49

592:                                              ; preds = %587
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

593:                                              ; preds = %587
  %594 = extractvalue { i32, i1 } %590, 0, !nosanitize !49
  store i32 %594, ptr %50, align 8, !tbaa !100
  %595 = load i64, ptr %568, align 8, !tbaa !58
  %596 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %595, i64 %572), !nosanitize !49
  %597 = extractvalue { i64, i1 } %596, 1, !nosanitize !49
  br i1 %597, label %598, label %599, !prof !50, !nosanitize !49

598:                                              ; preds = %593
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

599:                                              ; preds = %593
  %600 = extractvalue { i64, i1 } %596, 0, !nosanitize !49
  store i64 %600, ptr %568, align 8, !tbaa !58
  %601 = icmp eq i64 %600, 0
  br i1 %601, label %602, label %605

602:                                              ; preds = %599
  %603 = getelementptr inbounds nuw i8, ptr %567, i64 16
  %604 = load ptr, ptr %603, align 8, !tbaa !44
  store ptr %604, ptr %577, align 8, !tbaa !59
  br label %605

605:                                              ; preds = %565, %599, %602
  %606 = load i64, ptr %59, align 8, !tbaa !58
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %609, label %608

608:                                              ; preds = %605
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %615

609:                                              ; preds = %605
  %610 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %525, i64 %536), !nosanitize !49
  %611 = extractvalue { i64, i1 } %610, 1, !nosanitize !49
  br i1 %611, label %612, label %613, !prof !50, !nosanitize !49

612:                                              ; preds = %609
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

613:                                              ; preds = %609
  %614 = extractvalue { i64, i1 } %610, 0, !nosanitize !49
  br label %615

615:                                              ; preds = %613, %608
  %616 = phi i64 [ %524, %608 ], [ 0, %613 ]
  %617 = phi i64 [ %525, %608 ], [ %614, %613 ]
  br i1 %607, label %523, label %647, !llvm.loop !112

618:                                              ; preds = %530
  %619 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %620 = load ptr, ptr %619, align 8, !tbaa !44
  %621 = getelementptr inbounds nuw i8, ptr %620, i64 %526
  %622 = load ptr, ptr %501, align 8, !tbaa !31
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 24
  %624 = load ptr, ptr %623, align 8, !tbaa !105
  %625 = load i64, ptr %511, align 8, !tbaa !111
  %626 = getelementptr inbounds nuw i8, ptr %624, i64 %625
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %621, ptr align 1 %626, i64 %525, i1 false)
  %627 = load i64, ptr %59, align 8, !tbaa !58
  %628 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %627, i64 %525), !nosanitize !49
  %629 = extractvalue { i64, i1 } %628, 0, !nosanitize !49
  %630 = extractvalue { i64, i1 } %628, 1, !nosanitize !49
  br i1 %630, label %631, label %632, !prof !50, !nosanitize !49

631:                                              ; preds = %618
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

632:                                              ; preds = %618
  store i64 %629, ptr %59, align 8, !tbaa !58
  %633 = load ptr, ptr %501, align 8, !tbaa !31
  %634 = getelementptr inbounds nuw i8, ptr %633, i64 68
  %635 = load i32, ptr %634, align 4, !tbaa !107
  %636 = icmp ne i32 %635, 0
  %637 = icmp ugt i64 %629, %524
  %638 = select i1 %636, i1 %637, i1 false
  br i1 %638, label %639, label %646

639:                                              ; preds = %632
  %640 = sub nuw i64 %629, %524
  %641 = load ptr, ptr %619, align 8, !tbaa !44
  %642 = getelementptr inbounds nuw i8, ptr %641, i64 %524
  %643 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %644 = load i64, ptr %643, align 8, !tbaa !60
  %645 = tail call i64 @crc32_z(i64 noundef %644, ptr noundef %642, i64 noundef %640) #12
  store i64 %645, ptr %643, align 8, !tbaa !60
  br label %646

646:                                              ; preds = %639, %632
  store i64 0, ptr %511, align 8, !tbaa !111
  br label %647

647:                                              ; preds = %615, %646
  br i1 %533, label %1157, label %648

648:                                              ; preds = %647, %500
  store i32 73, ptr %41, align 8, !tbaa !29
  br label %649

649:                                              ; preds = %648, %497
  %650 = load i32, ptr %41, align 8, !tbaa !29
  %651 = icmp eq i32 %650, 73
  br i1 %651, label %652, label %766

652:                                              ; preds = %649
  %653 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %654 = load ptr, ptr %653, align 8, !tbaa !31
  %655 = getelementptr inbounds nuw i8, ptr %654, i64 40
  %656 = load ptr, ptr %655, align 8, !tbaa !104
  %657 = icmp eq ptr %656, null
  br i1 %657, label %765, label %658

658:                                              ; preds = %652
  %659 = load i64, ptr %59, align 8, !tbaa !58
  %660 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %661 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %662 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %663 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %664 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %665 = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %666

666:                                              ; preds = %742, %658
  %667 = phi i64 [ %659, %658 ], [ %728, %742 ]
  %668 = load i64, ptr %59, align 8, !tbaa !58
  %669 = load i64, ptr %660, align 8, !tbaa !45
  %670 = icmp eq i64 %668, %669
  br i1 %670, label %671, label %727

671:                                              ; preds = %666
  %672 = load ptr, ptr %653, align 8, !tbaa !31
  %673 = getelementptr inbounds nuw i8, ptr %672, i64 68
  %674 = load i32, ptr %673, align 4, !tbaa !107
  %675 = icmp ne i32 %674, 0
  %676 = icmp ugt i64 %668, %667
  %677 = select i1 %675, i1 %676, i1 false
  br i1 %677, label %678, label %684

678:                                              ; preds = %671
  %679 = sub nuw i64 %668, %667
  %680 = load ptr, ptr %661, align 8, !tbaa !44
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 %667
  %682 = load i64, ptr %662, align 8, !tbaa !60
  %683 = tail call i64 @crc32_z(i64 noundef %682, ptr noundef %681, i64 noundef %679) #12
  store i64 %683, ptr %662, align 8, !tbaa !60
  br label %684

684:                                              ; preds = %678, %671
  %685 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %685) #12
  %686 = getelementptr inbounds nuw i8, ptr %685, i64 40
  %687 = load i64, ptr %686, align 8, !tbaa !58
  %688 = load i32, ptr %50, align 8, !tbaa !100
  %689 = zext i32 %688 to i64
  %690 = tail call i64 @llvm.umin.i64(i64 %687, i64 %689)
  %691 = trunc nuw i64 %690 to i32
  %692 = icmp eq i64 %690, 0
  br i1 %692, label %723, label %693

693:                                              ; preds = %684
  %694 = load ptr, ptr %30, align 8, !tbaa !99
  %695 = getelementptr inbounds nuw i8, ptr %685, i64 32
  %696 = load ptr, ptr %695, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %694, ptr align 1 %696, i64 %690, i1 false)
  %697 = load ptr, ptr %30, align 8, !tbaa !99
  %698 = getelementptr inbounds nuw i8, ptr %697, i64 %690
  store ptr %698, ptr %30, align 8, !tbaa !99
  %699 = load ptr, ptr %695, align 8, !tbaa !59
  %700 = getelementptr inbounds nuw i8, ptr %699, i64 %690
  store ptr %700, ptr %695, align 8, !tbaa !59
  %701 = load i64, ptr %663, align 8, !tbaa !101
  %702 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %701, i64 %690), !nosanitize !49
  %703 = extractvalue { i64, i1 } %702, 1, !nosanitize !49
  br i1 %703, label %704, label %705, !prof !50, !nosanitize !49

704:                                              ; preds = %693
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

705:                                              ; preds = %693
  %706 = extractvalue { i64, i1 } %702, 0, !nosanitize !49
  store i64 %706, ptr %663, align 8, !tbaa !101
  %707 = load i32, ptr %50, align 8, !tbaa !100
  %708 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %707, i32 %691), !nosanitize !49
  %709 = extractvalue { i32, i1 } %708, 1, !nosanitize !49
  br i1 %709, label %710, label %711, !prof !50, !nosanitize !49

710:                                              ; preds = %705
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

711:                                              ; preds = %705
  %712 = extractvalue { i32, i1 } %708, 0, !nosanitize !49
  store i32 %712, ptr %50, align 8, !tbaa !100
  %713 = load i64, ptr %686, align 8, !tbaa !58
  %714 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %713, i64 %690), !nosanitize !49
  %715 = extractvalue { i64, i1 } %714, 1, !nosanitize !49
  br i1 %715, label %716, label %717, !prof !50, !nosanitize !49

716:                                              ; preds = %711
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

717:                                              ; preds = %711
  %718 = extractvalue { i64, i1 } %714, 0, !nosanitize !49
  store i64 %718, ptr %686, align 8, !tbaa !58
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %723

720:                                              ; preds = %717
  %721 = getelementptr inbounds nuw i8, ptr %685, i64 16
  %722 = load ptr, ptr %721, align 8, !tbaa !44
  store ptr %722, ptr %695, align 8, !tbaa !59
  br label %723

723:                                              ; preds = %684, %717, %720
  %724 = load i64, ptr %59, align 8, !tbaa !58
  %725 = icmp eq i64 %724, 0
  br i1 %725, label %727, label %726

726:                                              ; preds = %723
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1157

727:                                              ; preds = %723, %666
  %728 = phi i64 [ %667, %666 ], [ 0, %723 ]
  %729 = load i64, ptr %664, align 8, !tbaa !111
  %730 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %729, i64 1), !nosanitize !49
  %731 = extractvalue { i64, i1 } %730, 1, !nosanitize !49
  br i1 %731, label %732, label %733, !prof !50, !nosanitize !49

732:                                              ; preds = %727
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

733:                                              ; preds = %727
  %734 = extractvalue { i64, i1 } %730, 0, !nosanitize !49
  %735 = load ptr, ptr %653, align 8, !tbaa !31
  %736 = getelementptr inbounds nuw i8, ptr %735, i64 40
  %737 = load ptr, ptr %736, align 8, !tbaa !104
  store i64 %734, ptr %664, align 8, !tbaa !111
  %738 = load i64, ptr %59, align 8, !tbaa !58
  %739 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %738, i64 1), !nosanitize !49
  %740 = extractvalue { i64, i1 } %739, 1, !nosanitize !49
  br i1 %740, label %741, label %742, !prof !50, !nosanitize !49

741:                                              ; preds = %733
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

742:                                              ; preds = %733
  %743 = extractvalue { i64, i1 } %739, 0, !nosanitize !49
  %744 = load ptr, ptr %665, align 8, !tbaa !44
  %745 = getelementptr inbounds nuw i8, ptr %737, i64 %729
  %746 = load i8, ptr %745, align 1, !tbaa !8
  store i64 %743, ptr %59, align 8, !tbaa !58
  %747 = getelementptr inbounds nuw i8, ptr %744, i64 %738
  store i8 %746, ptr %747, align 1, !tbaa !8
  %748 = icmp eq i8 %746, 0
  br i1 %748, label %749, label %666, !llvm.loop !113

749:                                              ; preds = %742
  %750 = load ptr, ptr %653, align 8, !tbaa !31
  %751 = getelementptr inbounds nuw i8, ptr %750, i64 68
  %752 = load i32, ptr %751, align 4, !tbaa !107
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %764, label %754

754:                                              ; preds = %749
  %755 = load i64, ptr %59, align 8, !tbaa !58
  %756 = icmp ugt i64 %755, %728
  br i1 %756, label %757, label %764

757:                                              ; preds = %754
  %758 = sub nuw i64 %755, %728
  %759 = load ptr, ptr %665, align 8, !tbaa !44
  %760 = getelementptr inbounds nuw i8, ptr %759, i64 %728
  %761 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %762 = load i64, ptr %761, align 8, !tbaa !60
  %763 = tail call i64 @crc32_z(i64 noundef %762, ptr noundef %760, i64 noundef %758) #12
  store i64 %763, ptr %761, align 8, !tbaa !60
  br label %764

764:                                              ; preds = %757, %754, %749
  store i64 0, ptr %664, align 8, !tbaa !111
  br label %765

765:                                              ; preds = %764, %652
  store i32 91, ptr %41, align 8, !tbaa !29
  br label %766

766:                                              ; preds = %765, %649
  %767 = load i32, ptr %41, align 8, !tbaa !29
  %768 = icmp eq i32 %767, 91
  br i1 %768, label %769, label %882

769:                                              ; preds = %766
  %770 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %771 = load ptr, ptr %770, align 8, !tbaa !31
  %772 = getelementptr inbounds nuw i8, ptr %771, i64 56
  %773 = load ptr, ptr %772, align 8, !tbaa !102
  %774 = icmp eq ptr %773, null
  br i1 %774, label %881, label %775

775:                                              ; preds = %769
  %776 = load i64, ptr %59, align 8, !tbaa !58
  %777 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %778 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %779 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %780 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %781 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %782 = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %783

783:                                              ; preds = %859, %775
  %784 = phi i64 [ %776, %775 ], [ %845, %859 ]
  %785 = load i64, ptr %59, align 8, !tbaa !58
  %786 = load i64, ptr %777, align 8, !tbaa !45
  %787 = icmp eq i64 %785, %786
  br i1 %787, label %788, label %844

788:                                              ; preds = %783
  %789 = load ptr, ptr %770, align 8, !tbaa !31
  %790 = getelementptr inbounds nuw i8, ptr %789, i64 68
  %791 = load i32, ptr %790, align 4, !tbaa !107
  %792 = icmp ne i32 %791, 0
  %793 = icmp ugt i64 %785, %784
  %794 = select i1 %792, i1 %793, i1 false
  br i1 %794, label %795, label %801

795:                                              ; preds = %788
  %796 = sub nuw i64 %785, %784
  %797 = load ptr, ptr %778, align 8, !tbaa !44
  %798 = getelementptr inbounds nuw i8, ptr %797, i64 %784
  %799 = load i64, ptr %779, align 8, !tbaa !60
  %800 = tail call i64 @crc32_z(i64 noundef %799, ptr noundef %798, i64 noundef %796) #12
  store i64 %800, ptr %779, align 8, !tbaa !60
  br label %801

801:                                              ; preds = %795, %788
  %802 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %802) #12
  %803 = getelementptr inbounds nuw i8, ptr %802, i64 40
  %804 = load i64, ptr %803, align 8, !tbaa !58
  %805 = load i32, ptr %50, align 8, !tbaa !100
  %806 = zext i32 %805 to i64
  %807 = tail call i64 @llvm.umin.i64(i64 %804, i64 %806)
  %808 = trunc nuw i64 %807 to i32
  %809 = icmp eq i64 %807, 0
  br i1 %809, label %840, label %810

810:                                              ; preds = %801
  %811 = load ptr, ptr %30, align 8, !tbaa !99
  %812 = getelementptr inbounds nuw i8, ptr %802, i64 32
  %813 = load ptr, ptr %812, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %811, ptr align 1 %813, i64 %807, i1 false)
  %814 = load ptr, ptr %30, align 8, !tbaa !99
  %815 = getelementptr inbounds nuw i8, ptr %814, i64 %807
  store ptr %815, ptr %30, align 8, !tbaa !99
  %816 = load ptr, ptr %812, align 8, !tbaa !59
  %817 = getelementptr inbounds nuw i8, ptr %816, i64 %807
  store ptr %817, ptr %812, align 8, !tbaa !59
  %818 = load i64, ptr %780, align 8, !tbaa !101
  %819 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %818, i64 %807), !nosanitize !49
  %820 = extractvalue { i64, i1 } %819, 1, !nosanitize !49
  br i1 %820, label %821, label %822, !prof !50, !nosanitize !49

821:                                              ; preds = %810
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

822:                                              ; preds = %810
  %823 = extractvalue { i64, i1 } %819, 0, !nosanitize !49
  store i64 %823, ptr %780, align 8, !tbaa !101
  %824 = load i32, ptr %50, align 8, !tbaa !100
  %825 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %824, i32 %808), !nosanitize !49
  %826 = extractvalue { i32, i1 } %825, 1, !nosanitize !49
  br i1 %826, label %827, label %828, !prof !50, !nosanitize !49

827:                                              ; preds = %822
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

828:                                              ; preds = %822
  %829 = extractvalue { i32, i1 } %825, 0, !nosanitize !49
  store i32 %829, ptr %50, align 8, !tbaa !100
  %830 = load i64, ptr %803, align 8, !tbaa !58
  %831 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %830, i64 %807), !nosanitize !49
  %832 = extractvalue { i64, i1 } %831, 1, !nosanitize !49
  br i1 %832, label %833, label %834, !prof !50, !nosanitize !49

833:                                              ; preds = %828
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

834:                                              ; preds = %828
  %835 = extractvalue { i64, i1 } %831, 0, !nosanitize !49
  store i64 %835, ptr %803, align 8, !tbaa !58
  %836 = icmp eq i64 %835, 0
  br i1 %836, label %837, label %840

837:                                              ; preds = %834
  %838 = getelementptr inbounds nuw i8, ptr %802, i64 16
  %839 = load ptr, ptr %838, align 8, !tbaa !44
  store ptr %839, ptr %812, align 8, !tbaa !59
  br label %840

840:                                              ; preds = %801, %834, %837
  %841 = load i64, ptr %59, align 8, !tbaa !58
  %842 = icmp eq i64 %841, 0
  br i1 %842, label %844, label %843

843:                                              ; preds = %840
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1157

844:                                              ; preds = %840, %783
  %845 = phi i64 [ %784, %783 ], [ 0, %840 ]
  %846 = load i64, ptr %781, align 8, !tbaa !111
  %847 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %846, i64 1), !nosanitize !49
  %848 = extractvalue { i64, i1 } %847, 1, !nosanitize !49
  br i1 %848, label %849, label %850, !prof !50, !nosanitize !49

849:                                              ; preds = %844
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

850:                                              ; preds = %844
  %851 = extractvalue { i64, i1 } %847, 0, !nosanitize !49
  %852 = load ptr, ptr %770, align 8, !tbaa !31
  %853 = getelementptr inbounds nuw i8, ptr %852, i64 56
  %854 = load ptr, ptr %853, align 8, !tbaa !102
  store i64 %851, ptr %781, align 8, !tbaa !111
  %855 = load i64, ptr %59, align 8, !tbaa !58
  %856 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %855, i64 1), !nosanitize !49
  %857 = extractvalue { i64, i1 } %856, 1, !nosanitize !49
  br i1 %857, label %858, label %859, !prof !50, !nosanitize !49

858:                                              ; preds = %850
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

859:                                              ; preds = %850
  %860 = extractvalue { i64, i1 } %856, 0, !nosanitize !49
  %861 = load ptr, ptr %782, align 8, !tbaa !44
  %862 = getelementptr inbounds nuw i8, ptr %854, i64 %846
  %863 = load i8, ptr %862, align 1, !tbaa !8
  store i64 %860, ptr %59, align 8, !tbaa !58
  %864 = getelementptr inbounds nuw i8, ptr %861, i64 %855
  store i8 %863, ptr %864, align 1, !tbaa !8
  %865 = icmp eq i8 %863, 0
  br i1 %865, label %866, label %783, !llvm.loop !114

866:                                              ; preds = %859
  %867 = load ptr, ptr %770, align 8, !tbaa !31
  %868 = getelementptr inbounds nuw i8, ptr %867, i64 68
  %869 = load i32, ptr %868, align 4, !tbaa !107
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %881, label %871

871:                                              ; preds = %866
  %872 = load i64, ptr %59, align 8, !tbaa !58
  %873 = icmp ugt i64 %872, %845
  br i1 %873, label %874, label %881

874:                                              ; preds = %871
  %875 = sub nuw i64 %872, %845
  %876 = load ptr, ptr %782, align 8, !tbaa !44
  %877 = getelementptr inbounds nuw i8, ptr %876, i64 %845
  %878 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %879 = load i64, ptr %878, align 8, !tbaa !60
  %880 = tail call i64 @crc32_z(i64 noundef %879, ptr noundef %877, i64 noundef %875) #12
  store i64 %880, ptr %878, align 8, !tbaa !60
  br label %881

881:                                              ; preds = %874, %871, %866, %769
  store i32 103, ptr %41, align 8, !tbaa !29
  br label %882

882:                                              ; preds = %881, %766
  %883 = load i32, ptr %41, align 8, !tbaa !29
  %884 = icmp eq i32 %883, 103
  br i1 %884, label %885, label %934

885:                                              ; preds = %882
  %886 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %887 = load ptr, ptr %886, align 8, !tbaa !31
  %888 = getelementptr inbounds nuw i8, ptr %887, i64 68
  %889 = load i32, ptr %888, align 4, !tbaa !107
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %930, label %891

891:                                              ; preds = %885
  %892 = load i64, ptr %59, align 8, !tbaa !58
  %893 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %892, i64 2), !nosanitize !49
  %894 = extractvalue { i64, i1 } %893, 1, !nosanitize !49
  br i1 %894, label %895, label %896, !prof !50, !nosanitize !49

895:                                              ; preds = %891
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

896:                                              ; preds = %891
  %897 = extractvalue { i64, i1 } %893, 0, !nosanitize !49
  %898 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %899 = load i64, ptr %898, align 8, !tbaa !45
  %900 = icmp ugt i64 %897, %899
  br i1 %900, label %901, label %905

901:                                              ; preds = %896
  tail call fastcc void @flush_pending(ptr noundef %0)
  %902 = load i64, ptr %59, align 8, !tbaa !58
  %903 = icmp eq i64 %902, 0
  br i1 %903, label %905, label %904

904:                                              ; preds = %901
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1157

905:                                              ; preds = %901, %896
  %906 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %907 = load i64, ptr %59, align 8, !tbaa !58
  %908 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %907, i64 1), !nosanitize !49
  %909 = extractvalue { i64, i1 } %908, 1, !nosanitize !49
  br i1 %909, label %910, label %911, !prof !50, !nosanitize !49

910:                                              ; preds = %905
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

911:                                              ; preds = %905
  %912 = extractvalue { i64, i1 } %908, 0, !nosanitize !49
  %913 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %914 = load ptr, ptr %913, align 8, !tbaa !44
  %915 = load i64, ptr %906, align 8, !tbaa !60
  %916 = trunc i64 %915 to i8
  store i64 %912, ptr %59, align 8, !tbaa !58
  %917 = getelementptr inbounds nuw i8, ptr %914, i64 %907
  store i8 %916, ptr %917, align 1, !tbaa !8
  %918 = load i64, ptr %59, align 8, !tbaa !58
  %919 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %918, i64 1), !nosanitize !49
  %920 = extractvalue { i64, i1 } %919, 1, !nosanitize !49
  br i1 %920, label %921, label %922, !prof !50, !nosanitize !49

921:                                              ; preds = %911
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

922:                                              ; preds = %911
  %923 = extractvalue { i64, i1 } %919, 0, !nosanitize !49
  %924 = load ptr, ptr %913, align 8, !tbaa !44
  %925 = load i64, ptr %906, align 8, !tbaa !60
  %926 = lshr i64 %925, 8
  %927 = trunc i64 %926 to i8
  store i64 %923, ptr %59, align 8, !tbaa !58
  %928 = getelementptr inbounds nuw i8, ptr %924, i64 %918
  store i8 %927, ptr %928, align 1, !tbaa !8
  %929 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12
  store i64 %929, ptr %906, align 8, !tbaa !60
  br label %930

930:                                              ; preds = %922, %885
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %931 = load i64, ptr %59, align 8, !tbaa !58
  %932 = icmp eq i64 %931, 0
  br i1 %932, label %934, label %933

933:                                              ; preds = %930
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1157

934:                                              ; preds = %930, %882
  %935 = load i32, ptr %34, align 8, !tbaa !82
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %946

937:                                              ; preds = %934
  %938 = getelementptr inbounds nuw i8, ptr %29, i64 180
  %939 = load i32, ptr %938, align 4, !tbaa !76
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %941, label %946

941:                                              ; preds = %937
  %942 = icmp eq i32 %1, 0
  br i1 %942, label %1008, label %943

943:                                              ; preds = %941
  %944 = load i32, ptr %41, align 8, !tbaa !29
  %945 = icmp eq i32 %944, 666
  br i1 %945, label %1008, label %946

946:                                              ; preds = %943, %937, %934
  %947 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %948 = load i32, ptr %947, align 4, !tbaa !52
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %950, label %952

950:                                              ; preds = %946
  %951 = tail call i32 @deflate_stored(ptr noundef %29, i32 noundef %1)
  br label %965

952:                                              ; preds = %946
  %953 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %954 = load i32, ptr %953, align 8, !tbaa !53
  switch i32 %954, label %959 [
    i32 2, label %955
    i32 3, label %957
  ]

955:                                              ; preds = %952
  %956 = tail call fastcc i32 @deflate_huff(ptr noundef %29, i32 noundef %1)
  br label %965

957:                                              ; preds = %952
  %958 = tail call fastcc i32 @deflate_rle(ptr noundef %29, i32 noundef %1)
  br label %965

959:                                              ; preds = %952
  %960 = sext i32 %948 to i64
  %961 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %960
  %962 = getelementptr inbounds nuw i8, ptr %961, i64 8
  %963 = load ptr, ptr %962, align 8, !tbaa !98
  %964 = tail call i32 %963(ptr noundef %29, i32 noundef %1) #12
  br label %965

965:                                              ; preds = %955, %959, %957, %950
  %966 = phi i32 [ %951, %950 ], [ %956, %955 ], [ %958, %957 ], [ %964, %959 ]
  %967 = and i32 %966, -2
  %968 = icmp eq i32 %967, 2
  br i1 %968, label %969, label %970

969:                                              ; preds = %965
  store i32 666, ptr %41, align 8, !tbaa !29
  br label %970

970:                                              ; preds = %965, %969
  %971 = and i32 %966, -3
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %973, label %977

973:                                              ; preds = %970
  %974 = load i32, ptr %50, align 8, !tbaa !100
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %1157

976:                                              ; preds = %973
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1157

977:                                              ; preds = %970
  %978 = icmp eq i32 %966, 1
  br i1 %978, label %979, label %1008

979:                                              ; preds = %977
  switch i32 %1, label %981 [
    i32 1, label %980
    i32 5, label %1004
  ]

980:                                              ; preds = %979
  tail call void @_tr_align(ptr noundef %29) #12
  br label %1004

981:                                              ; preds = %979
  tail call void @_tr_stored_block(ptr noundef %29, ptr noundef null, i64 noundef 0, i32 noundef 0) #12
  %982 = icmp eq i32 %1, 3
  br i1 %982, label %983, label %1004

983:                                              ; preds = %981
  %984 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %985 = load i32, ptr %984, align 4, !tbaa !36
  %986 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %985, i32 1), !nosanitize !49
  %987 = extractvalue { i32, i1 } %986, 1, !nosanitize !49
  br i1 %987, label %988, label %989, !prof !50, !nosanitize !49

988:                                              ; preds = %983
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

989:                                              ; preds = %983
  %990 = extractvalue { i32, i1 } %986, 0, !nosanitize !49
  %991 = getelementptr inbounds nuw i8, ptr %29, i64 120
  %992 = load ptr, ptr %991, align 8, !tbaa !41
  %993 = zext i32 %990 to i64
  %994 = getelementptr inbounds nuw [2 x i8], ptr %992, i64 %993
  store i16 0, ptr %994, align 2, !tbaa !63
  %995 = shl nuw nsw i64 %993, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %992, i8 0, i64 %995, i1 false)
  %996 = getelementptr inbounds nuw i8, ptr %29, i64 5960
  store i32 0, ptr %996, align 8, !tbaa !64
  %997 = getelementptr inbounds nuw i8, ptr %29, i64 180
  %998 = load i32, ptr %997, align 4, !tbaa !76
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1000, label %1004

1000:                                             ; preds = %989
  %1001 = getelementptr inbounds nuw i8, ptr %29, i64 172
  store i32 0, ptr %1001, align 4, !tbaa !74
  %1002 = getelementptr inbounds nuw i8, ptr %29, i64 152
  store i64 0, ptr %1002, align 8, !tbaa !75
  %1003 = getelementptr inbounds nuw i8, ptr %29, i64 5932
  store i32 0, ptr %1003, align 4, !tbaa !77
  br label %1004

1004:                                             ; preds = %979, %989, %1000, %981, %980
  tail call fastcc void @flush_pending(ptr noundef %0)
  %1005 = load i32, ptr %50, align 8, !tbaa !100
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1008

1007:                                             ; preds = %1004
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1157

1008:                                             ; preds = %1004, %977, %943, %941
  br i1 %44, label %1157, label %1009

1009:                                             ; preds = %1008
  %1010 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %1011 = load i32, ptr %1010, align 8, !tbaa !30
  %1012 = icmp slt i32 %1011, 1
  br i1 %1012, label %1157, label %1013

1013:                                             ; preds = %1009
  %1014 = icmp eq i32 %1011, 2
  %1015 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1014, label %1016, label %1105

1016:                                             ; preds = %1013
  %1017 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %1018 = load i64, ptr %59, align 8, !tbaa !58
  %1019 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1018, i64 1), !nosanitize !49
  %1020 = extractvalue { i64, i1 } %1019, 1, !nosanitize !49
  br i1 %1020, label %1021, label %1022, !prof !50, !nosanitize !49

1021:                                             ; preds = %1016
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1022:                                             ; preds = %1016
  %1023 = extractvalue { i64, i1 } %1019, 0, !nosanitize !49
  %1024 = load ptr, ptr %1017, align 8, !tbaa !44
  %1025 = load i64, ptr %1015, align 8, !tbaa !60
  %1026 = trunc i64 %1025 to i8
  store i64 %1023, ptr %59, align 8, !tbaa !58
  %1027 = getelementptr inbounds nuw i8, ptr %1024, i64 %1018
  store i8 %1026, ptr %1027, align 1, !tbaa !8
  %1028 = load i64, ptr %59, align 8, !tbaa !58
  %1029 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1028, i64 1), !nosanitize !49
  %1030 = extractvalue { i64, i1 } %1029, 1, !nosanitize !49
  br i1 %1030, label %1031, label %1032, !prof !50, !nosanitize !49

1031:                                             ; preds = %1022
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1032:                                             ; preds = %1022
  %1033 = extractvalue { i64, i1 } %1029, 0, !nosanitize !49
  %1034 = load ptr, ptr %1017, align 8, !tbaa !44
  %1035 = load i64, ptr %1015, align 8, !tbaa !60
  %1036 = lshr i64 %1035, 8
  %1037 = trunc i64 %1036 to i8
  store i64 %1033, ptr %59, align 8, !tbaa !58
  %1038 = getelementptr inbounds nuw i8, ptr %1034, i64 %1028
  store i8 %1037, ptr %1038, align 1, !tbaa !8
  %1039 = load i64, ptr %59, align 8, !tbaa !58
  %1040 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1039, i64 1), !nosanitize !49
  %1041 = extractvalue { i64, i1 } %1040, 1, !nosanitize !49
  br i1 %1041, label %1042, label %1043, !prof !50, !nosanitize !49

1042:                                             ; preds = %1032
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1043:                                             ; preds = %1032
  %1044 = extractvalue { i64, i1 } %1040, 0, !nosanitize !49
  %1045 = load ptr, ptr %1017, align 8, !tbaa !44
  %1046 = load i64, ptr %1015, align 8, !tbaa !60
  %1047 = lshr i64 %1046, 16
  %1048 = trunc i64 %1047 to i8
  store i64 %1044, ptr %59, align 8, !tbaa !58
  %1049 = getelementptr inbounds nuw i8, ptr %1045, i64 %1039
  store i8 %1048, ptr %1049, align 1, !tbaa !8
  %1050 = load i64, ptr %59, align 8, !tbaa !58
  %1051 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1050, i64 1), !nosanitize !49
  %1052 = extractvalue { i64, i1 } %1051, 1, !nosanitize !49
  br i1 %1052, label %1053, label %1054, !prof !50, !nosanitize !49

1053:                                             ; preds = %1043
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1054:                                             ; preds = %1043
  %1055 = extractvalue { i64, i1 } %1051, 0, !nosanitize !49
  %1056 = load ptr, ptr %1017, align 8, !tbaa !44
  %1057 = load i64, ptr %1015, align 8, !tbaa !60
  %1058 = lshr i64 %1057, 24
  %1059 = trunc i64 %1058 to i8
  store i64 %1055, ptr %59, align 8, !tbaa !58
  %1060 = getelementptr inbounds nuw i8, ptr %1056, i64 %1050
  store i8 %1059, ptr %1060, align 1, !tbaa !8
  %1061 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1062 = load i64, ptr %59, align 8, !tbaa !58
  %1063 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1062, i64 1), !nosanitize !49
  %1064 = extractvalue { i64, i1 } %1063, 1, !nosanitize !49
  br i1 %1064, label %1065, label %1066, !prof !50, !nosanitize !49

1065:                                             ; preds = %1054
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1066:                                             ; preds = %1054
  %1067 = extractvalue { i64, i1 } %1063, 0, !nosanitize !49
  %1068 = load ptr, ptr %1017, align 8, !tbaa !44
  %1069 = load i64, ptr %1061, align 8, !tbaa !56
  %1070 = trunc i64 %1069 to i8
  store i64 %1067, ptr %59, align 8, !tbaa !58
  %1071 = getelementptr inbounds nuw i8, ptr %1068, i64 %1062
  store i8 %1070, ptr %1071, align 1, !tbaa !8
  %1072 = load i64, ptr %59, align 8, !tbaa !58
  %1073 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1072, i64 1), !nosanitize !49
  %1074 = extractvalue { i64, i1 } %1073, 1, !nosanitize !49
  br i1 %1074, label %1075, label %1076, !prof !50, !nosanitize !49

1075:                                             ; preds = %1066
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1076:                                             ; preds = %1066
  %1077 = extractvalue { i64, i1 } %1073, 0, !nosanitize !49
  %1078 = load ptr, ptr %1017, align 8, !tbaa !44
  %1079 = load i64, ptr %1061, align 8, !tbaa !56
  %1080 = lshr i64 %1079, 8
  %1081 = trunc i64 %1080 to i8
  store i64 %1077, ptr %59, align 8, !tbaa !58
  %1082 = getelementptr inbounds nuw i8, ptr %1078, i64 %1072
  store i8 %1081, ptr %1082, align 1, !tbaa !8
  %1083 = load i64, ptr %59, align 8, !tbaa !58
  %1084 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1083, i64 1), !nosanitize !49
  %1085 = extractvalue { i64, i1 } %1084, 1, !nosanitize !49
  br i1 %1085, label %1086, label %1087, !prof !50, !nosanitize !49

1086:                                             ; preds = %1076
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1087:                                             ; preds = %1076
  %1088 = extractvalue { i64, i1 } %1084, 0, !nosanitize !49
  %1089 = load ptr, ptr %1017, align 8, !tbaa !44
  %1090 = load i64, ptr %1061, align 8, !tbaa !56
  %1091 = lshr i64 %1090, 16
  %1092 = trunc i64 %1091 to i8
  store i64 %1088, ptr %59, align 8, !tbaa !58
  %1093 = getelementptr inbounds nuw i8, ptr %1089, i64 %1083
  store i8 %1092, ptr %1093, align 1, !tbaa !8
  %1094 = load i64, ptr %59, align 8, !tbaa !58
  %1095 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1094, i64 1), !nosanitize !49
  %1096 = extractvalue { i64, i1 } %1095, 1, !nosanitize !49
  br i1 %1096, label %1097, label %1098, !prof !50, !nosanitize !49

1097:                                             ; preds = %1087
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1098:                                             ; preds = %1087
  %1099 = extractvalue { i64, i1 } %1095, 0, !nosanitize !49
  %1100 = load ptr, ptr %1017, align 8, !tbaa !44
  %1101 = load i64, ptr %1061, align 8, !tbaa !56
  %1102 = lshr i64 %1101, 24
  %1103 = trunc i64 %1102 to i8
  store i64 %1099, ptr %59, align 8, !tbaa !58
  %1104 = getelementptr inbounds nuw i8, ptr %1100, i64 %1094
  store i8 %1103, ptr %1104, align 1, !tbaa !8
  br label %1148

1105:                                             ; preds = %1013
  %1106 = load i64, ptr %1015, align 8, !tbaa !60
  %1107 = lshr i64 %1106, 16
  %1108 = load i64, ptr %59, align 8, !tbaa !58
  %1109 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1108, i64 1), !nosanitize !49
  %1110 = extractvalue { i64, i1 } %1109, 1, !nosanitize !49
  br i1 %1110, label %1111, label %1112, !prof !50, !nosanitize !49

1111:                                             ; preds = %1105
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1112:                                             ; preds = %1105
  %1113 = extractvalue { i64, i1 } %1109, 0, !nosanitize !49
  %1114 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %1115 = load ptr, ptr %1114, align 8, !tbaa !44
  %1116 = lshr i64 %1106, 24
  %1117 = trunc i64 %1116 to i8
  store i64 %1113, ptr %59, align 8, !tbaa !58
  %1118 = getelementptr inbounds nuw i8, ptr %1115, i64 %1108
  store i8 %1117, ptr %1118, align 1, !tbaa !8
  %1119 = load i64, ptr %59, align 8, !tbaa !58
  %1120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1119, i64 1), !nosanitize !49
  %1121 = extractvalue { i64, i1 } %1120, 1, !nosanitize !49
  br i1 %1121, label %1122, label %1123, !prof !50, !nosanitize !49

1122:                                             ; preds = %1112
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1123:                                             ; preds = %1112
  %1124 = extractvalue { i64, i1 } %1120, 0, !nosanitize !49
  %1125 = load ptr, ptr %1114, align 8, !tbaa !44
  %1126 = trunc i64 %1107 to i8
  store i64 %1124, ptr %59, align 8, !tbaa !58
  %1127 = getelementptr inbounds nuw i8, ptr %1125, i64 %1119
  store i8 %1126, ptr %1127, align 1, !tbaa !8
  %1128 = load i64, ptr %1015, align 8, !tbaa !60
  %1129 = trunc i64 %1128 to i8
  %1130 = load i64, ptr %59, align 8, !tbaa !58
  %1131 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1130, i64 1), !nosanitize !49
  %1132 = extractvalue { i64, i1 } %1131, 1, !nosanitize !49
  br i1 %1132, label %1133, label %1134, !prof !50, !nosanitize !49

1133:                                             ; preds = %1123
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1134:                                             ; preds = %1123
  %1135 = extractvalue { i64, i1 } %1131, 0, !nosanitize !49
  %1136 = load ptr, ptr %1114, align 8, !tbaa !44
  %1137 = lshr i64 %1128, 8
  %1138 = trunc i64 %1137 to i8
  store i64 %1135, ptr %59, align 8, !tbaa !58
  %1139 = getelementptr inbounds nuw i8, ptr %1136, i64 %1130
  store i8 %1138, ptr %1139, align 1, !tbaa !8
  %1140 = load i64, ptr %59, align 8, !tbaa !58
  %1141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1140, i64 1), !nosanitize !49
  %1142 = extractvalue { i64, i1 } %1141, 1, !nosanitize !49
  br i1 %1142, label %1143, label %1144, !prof !50, !nosanitize !49

1143:                                             ; preds = %1134
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1144:                                             ; preds = %1134
  %1145 = extractvalue { i64, i1 } %1141, 0, !nosanitize !49
  %1146 = load ptr, ptr %1114, align 8, !tbaa !44
  store i64 %1145, ptr %59, align 8, !tbaa !58
  %1147 = getelementptr inbounds nuw i8, ptr %1146, i64 %1140
  store i8 %1129, ptr %1147, align 1, !tbaa !8
  br label %1148

1148:                                             ; preds = %1144, %1098
  tail call fastcc void @flush_pending(ptr noundef %0)
  %1149 = load i32, ptr %1010, align 8, !tbaa !30
  %1150 = icmp sgt i32 %1149, 0
  br i1 %1150, label %1151, label %1153

1151:                                             ; preds = %1148
  %1152 = sub nsw i32 0, %1149
  store i32 %1152, ptr %1010, align 8, !tbaa !30
  br label %1153

1153:                                             ; preds = %1151, %1148
  %1154 = load i64, ptr %59, align 8, !tbaa !58
  %1155 = icmp eq i64 %1154, 0
  %1156 = zext i1 %1155 to i32
  br label %1157

1157:                                             ; preds = %237, %973, %1007, %976, %1009, %1008, %843, %726, %23, %647, %1153, %933, %904, %343, %124, %116, %103, %53, %46
  %1158 = phi i32 [ -5, %116 ], [ -2, %46 ], [ -5, %53 ], [ 0, %103 ], [ -5, %124 ], [ 0, %343 ], [ 0, %904 ], [ 0, %933 ], [ -2, %23 ], [ 0, %1008 ], [ %1156, %1153 ], [ 1, %1009 ], [ 0, %843 ], [ 0, %726 ], [ 0, %647 ], [ 0, %237 ], [ 0, %976 ], [ 0, %1007 ], [ 0, %973 ]
  ret i32 %1158
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !33
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  %10 = icmp eq i32 %5, 0
  br label %11

11:                                               ; preds = %20, %1
  %12 = phi ptr [ %9, %1 ], [ %14, %20 ]
  %13 = phi i32 [ %5, %1 ], [ %21, %20 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 -2
  %15 = load i16, ptr %14, align 2, !tbaa !63
  %16 = zext i16 %15 to i32
  %17 = tail call i32 @llvm.usub.sat.i32(i32 %16, i32 %3)
  %18 = trunc nuw i32 %17 to i16
  store i16 %18, ptr %14, align 2, !tbaa !63
  br i1 %10, label %19, label %20, !prof !50, !nosanitize !49

19:                                               ; preds = %11
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

20:                                               ; preds = %11
  %21 = add i32 %13, -1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %11, !llvm.loop !85

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = zext i32 %3 to i64
  %27 = getelementptr inbounds nuw [2 x i8], ptr %25, i64 %26
  %28 = icmp eq i32 %3, 0
  br label %29

29:                                               ; preds = %38, %23
  %30 = phi ptr [ %27, %23 ], [ %32, %38 ]
  %31 = phi i32 [ %3, %23 ], [ %39, %38 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 -2
  %33 = load i16, ptr %32, align 2, !tbaa !63
  %34 = zext i16 %33 to i32
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 %3)
  %36 = trunc nuw i32 %35 to i16
  store i16 %36, ptr %32, align 2, !tbaa !63
  br i1 %28, label %37, label %38, !prof !50, !nosanitize !49

37:                                               ; preds = %29
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

38:                                               ; preds = %29
  %39 = add i32 %31, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %29, !llvm.loop !88

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %42, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateTune(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !20
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %24 = load i32, ptr %23, align 8, !tbaa !29
  switch i32 %24, label %32 [
    i32 42, label %25
    i32 57, label %25
    i32 69, label %25
    i32 73, label %25
    i32 91, label %25
    i32 103, label %25
    i32 113, label %25
    i32 666, label %25
  ]

25:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 204
  store i32 %1, ptr %28, align 4, !tbaa !69
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 192
  store i32 %2, ptr %29, align 8, !tbaa !67
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 208
  store i32 %3, ptr %30, align 8, !tbaa !71
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 188
  store i32 %4, ptr %31, align 4, !tbaa !73
  br label %32

32:                                               ; preds = %22, %19, %15, %11, %7, %5, %25
  %33 = phi i32 [ 0, %25 ], [ -2, %5 ], [ -2, %7 ], [ -2, %11 ], [ -2, %15 ], [ -2, %19 ], [ -2, %22 ]
  ret i32 %33
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound_z(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !49
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !49
  br i1 %5, label %6, label %7, !prof !50, !nosanitize !49

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !49
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !49
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !49
  br i1 %11, label %12, label %13, !prof !50, !nosanitize !49

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !49
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !49
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !49
  br i1 %17, label %18, label %19, !prof !50, !nosanitize !49

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !49
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !49
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !49
  br i1 %22, label %23, label %24, !prof !50, !nosanitize !49

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !49
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !49
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !49
  br i1 %30, label %31, label %32, !prof !50, !nosanitize !49

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !49
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !49
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !49
  br i1 %36, label %37, label %38, !prof !50, !nosanitize !49

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !49
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !49
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !49
  br i1 %42, label %43, label %44, !prof !50, !nosanitize !49

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !49
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !49
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !49
  br i1 %47, label %48, label %49, !prof !50, !nosanitize !49

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !49
  %51 = icmp ult i64 %50, %1
  %52 = select i1 %51, i64 -1, i64 %50
  %53 = icmp eq ptr %0, null
  br i1 %53, label %78, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %78, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  %61 = icmp eq ptr %60, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !20
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !29
  switch i32 %71, label %78 [
    i32 42, label %72
    i32 57, label %72
    i32 69, label %72
    i32 73, label %72
    i32 91, label %72
    i32 103, label %72
    i32 113, label %72
    i32 666, label %72
  ]

72:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %74 = load ptr, ptr %73, align 8, !tbaa !19
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 48
  %76 = load i32, ptr %75, align 8, !tbaa !30
  %77 = tail call i32 @llvm.abs.i32(i32 %76, i1 true)
  switch i32 %77, label %156 [
    i32 0, label %157
    i32 1, label %84
    i32 2, label %89
  ]

78:                                               ; preds = %69, %66, %62, %58, %54, %49
  %79 = tail call i64 @llvm.umax.i64(i64 %27, i64 %52)
  %80 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %79, i64 18), !nosanitize !49
  %81 = extractvalue { i64, i1 } %80, 0, !nosanitize !49
  %82 = extractvalue { i64, i1 } %80, 1, !nosanitize !49
  br i1 %82, label %83, label %217, !prof !50, !nosanitize !49

83:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

84:                                               ; preds = %72
  %85 = getelementptr inbounds nuw i8, ptr %74, i64 172
  %86 = load i32, ptr %85, align 4, !tbaa !74
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i64 6, i64 10
  br label %157

89:                                               ; preds = %72
  %90 = getelementptr inbounds nuw i8, ptr %74, i64 56
  %91 = load ptr, ptr %90, align 8, !tbaa !31
  %92 = icmp eq ptr %91, null
  br i1 %92, label %157, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw i8, ptr %91, i64 24
  %95 = load ptr, ptr %94, align 8, !tbaa !105
  %96 = icmp eq ptr %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds nuw i8, ptr %91, i64 32
  %99 = load i32, ptr %98, align 8, !tbaa !110
  %100 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %99, i32 2), !nosanitize !49
  %101 = extractvalue { i32, i1 } %100, 1, !nosanitize !49
  br i1 %101, label %102, label %103, !prof !50, !nosanitize !49

102:                                              ; preds = %97
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

103:                                              ; preds = %97
  %104 = extractvalue { i32, i1 } %100, 0, !nosanitize !49
  %105 = zext i32 %104 to i64
  %106 = add nuw nsw i64 %105, 18
  br label %107

107:                                              ; preds = %103, %93
  %108 = phi i64 [ %106, %103 ], [ 18, %93 ]
  %109 = getelementptr inbounds nuw i8, ptr %91, i64 40
  %110 = load ptr, ptr %109, align 8, !tbaa !104
  %111 = icmp eq ptr %110, null
  br i1 %111, label %126, label %112

112:                                              ; preds = %107
  %113 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %108, i64 1), !nosanitize !49
  %114 = extractvalue { i64, i1 } %113, 1, !nosanitize !49
  br i1 %114, label %119, label %120, !prof !117, !nosanitize !49

115:                                              ; preds = %120
  %116 = getelementptr inbounds nuw i8, ptr %122, i64 1
  %117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %123, i64 1), !nosanitize !49
  %118 = extractvalue { i64, i1 } %117, 1, !nosanitize !49
  br i1 %118, label %119, label %120, !prof !118, !llvm.loop !119, !nosanitize !49

119:                                              ; preds = %115, %112
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

120:                                              ; preds = %112, %115
  %121 = phi { i64, i1 } [ %117, %115 ], [ %113, %112 ]
  %122 = phi ptr [ %116, %115 ], [ %110, %112 ]
  %123 = extractvalue { i64, i1 } %121, 0, !nosanitize !49
  %124 = load i8, ptr %122, align 1, !tbaa !8
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %115, !llvm.loop !119

126:                                              ; preds = %120, %107
  %127 = phi i64 [ %108, %107 ], [ %123, %120 ]
  %128 = getelementptr inbounds nuw i8, ptr %91, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !102
  %130 = icmp eq ptr %129, null
  br i1 %130, label %145, label %131

131:                                              ; preds = %126
  %132 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %127, i64 1), !nosanitize !49
  %133 = extractvalue { i64, i1 } %132, 1, !nosanitize !49
  br i1 %133, label %138, label %139, !prof !117, !nosanitize !49

134:                                              ; preds = %139
  %135 = getelementptr inbounds nuw i8, ptr %141, i64 1
  %136 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %142, i64 1), !nosanitize !49
  %137 = extractvalue { i64, i1 } %136, 1, !nosanitize !49
  br i1 %137, label %138, label %139, !prof !118, !llvm.loop !120, !nosanitize !49

138:                                              ; preds = %134, %131
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

139:                                              ; preds = %131, %134
  %140 = phi { i64, i1 } [ %136, %134 ], [ %132, %131 ]
  %141 = phi ptr [ %135, %134 ], [ %129, %131 ]
  %142 = extractvalue { i64, i1 } %140, 0, !nosanitize !49
  %143 = load i8, ptr %141, align 1, !tbaa !8
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %134, !llvm.loop !120

145:                                              ; preds = %139, %126
  %146 = phi i64 [ %127, %126 ], [ %142, %139 ]
  %147 = getelementptr inbounds nuw i8, ptr %91, i64 68
  %148 = load i32, ptr %147, align 4, !tbaa !107
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %145
  %151 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %146, i64 2), !nosanitize !49
  %152 = extractvalue { i64, i1 } %151, 1, !nosanitize !49
  br i1 %152, label %153, label %154, !prof !50, !nosanitize !49

153:                                              ; preds = %150
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

154:                                              ; preds = %150
  %155 = extractvalue { i64, i1 } %151, 0, !nosanitize !49
  br label %157

156:                                              ; preds = %72
  br label %157

157:                                              ; preds = %145, %154, %72, %89, %156, %84
  %158 = phi i64 [ 18, %156 ], [ 18, %89 ], [ %88, %84 ], [ 0, %72 ], [ %155, %154 ], [ %146, %145 ]
  %159 = getelementptr inbounds nuw i8, ptr %74, i64 84
  %160 = load i32, ptr %159, align 4, !tbaa !32
  %161 = icmp eq i32 %160, 15
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = getelementptr inbounds nuw i8, ptr %74, i64 136
  %164 = load i32, ptr %163, align 8, !tbaa !35
  %165 = icmp eq i32 %164, 15
  br i1 %165, label %181, label %166

166:                                              ; preds = %162, %157
  %167 = getelementptr inbounds nuw i8, ptr %74, i64 136
  %168 = load i32, ptr %167, align 8, !tbaa !35
  %169 = icmp ugt i32 %160, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds nuw i8, ptr %74, i64 196
  %172 = load i32, ptr %171, align 4, !tbaa !52
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170, %166
  br label %175

175:                                              ; preds = %170, %174
  %176 = phi i64 [ %52, %174 ], [ %27, %170 ]
  %177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %176, i64 %158), !nosanitize !49
  %178 = extractvalue { i64, i1 } %177, 0, !nosanitize !49
  %179 = extractvalue { i64, i1 } %177, 1, !nosanitize !49
  br i1 %179, label %180, label %217, !prof !50, !nosanitize !49

180:                                              ; preds = %175
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

181:                                              ; preds = %162
  %182 = lshr i64 %1, 12
  %183 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %182), !nosanitize !49
  %184 = extractvalue { i64, i1 } %183, 1, !nosanitize !49
  br i1 %184, label %185, label %186, !prof !50, !nosanitize !49

185:                                              ; preds = %181
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

186:                                              ; preds = %181
  %187 = extractvalue { i64, i1 } %183, 0, !nosanitize !49
  %188 = lshr i64 %1, 14
  %189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %187, i64 %188), !nosanitize !49
  %190 = extractvalue { i64, i1 } %189, 1, !nosanitize !49
  br i1 %190, label %191, label %192, !prof !50, !nosanitize !49

191:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

192:                                              ; preds = %186
  %193 = extractvalue { i64, i1 } %189, 0, !nosanitize !49
  %194 = lshr i64 %1, 25
  %195 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %194), !nosanitize !49
  %196 = extractvalue { i64, i1 } %195, 1, !nosanitize !49
  br i1 %196, label %197, label %198, !prof !50, !nosanitize !49

197:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

198:                                              ; preds = %192
  %199 = extractvalue { i64, i1 } %195, 0, !nosanitize !49
  %200 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %199, i64 13), !nosanitize !49
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !49
  br i1 %201, label %202, label %203, !prof !50, !nosanitize !49

202:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

203:                                              ; preds = %198
  %204 = extractvalue { i64, i1 } %200, 0, !nosanitize !49
  %205 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %204, i64 6), !nosanitize !49
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !49
  br i1 %206, label %207, label %208, !prof !50, !nosanitize !49

207:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

208:                                              ; preds = %203
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !49
  %210 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %209, i64 %158), !nosanitize !49
  %211 = extractvalue { i64, i1 } %210, 1, !nosanitize !49
  br i1 %211, label %212, label %213, !prof !50, !nosanitize !49

212:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

213:                                              ; preds = %208
  %214 = extractvalue { i64, i1 } %210, 0, !nosanitize !49
  %215 = icmp ult i64 %214, %1
  %216 = select i1 %215, i64 -1, i64 %214
  br label %217

217:                                              ; preds = %175, %78, %213
  %218 = phi i64 [ %216, %213 ], [ %81, %78 ], [ %178, %175 ]
  ret i64 %218
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !49
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !49
  br i1 %5, label %6, label %7, !prof !50, !nosanitize !49

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !49
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !49
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !49
  br i1 %11, label %12, label %13, !prof !50, !nosanitize !49

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !49
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !49
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !49
  br i1 %17, label %18, label %19, !prof !50, !nosanitize !49

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !49
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !49
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !49
  br i1 %22, label %23, label %24, !prof !50, !nosanitize !49

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !49
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !49
  %30 = extractvalue { i64, i1 } %29, 1, !nosanitize !49
  br i1 %30, label %31, label %32, !prof !50, !nosanitize !49

31:                                               ; preds = %24
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !49
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !49
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !49
  br i1 %36, label %37, label %38, !prof !50, !nosanitize !49

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !49
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !49
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !49
  br i1 %42, label %43, label %44, !prof !50, !nosanitize !49

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !49
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !49
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !49
  br i1 %47, label %48, label %49, !prof !50, !nosanitize !49

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

49:                                               ; preds = %44
  %50 = extractvalue { i64, i1 } %46, 0, !nosanitize !49
  %51 = icmp ult i64 %50, %1
  %52 = select i1 %51, i64 -1, i64 %50
  %53 = icmp eq ptr %0, null
  br i1 %53, label %76, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %76, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %64 = load ptr, ptr %63, align 8, !tbaa !19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !20
  %68 = icmp eq ptr %67, %0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %71 = load i32, ptr %70, align 8, !tbaa !29
  switch i32 %71, label %76 [
    i32 42, label %72
    i32 57, label %72
    i32 69, label %72
    i32 73, label %72
    i32 91, label %72
    i32 103, label %72
    i32 113, label %72
    i32 666, label %72
  ]

72:                                               ; preds = %69, %69, %69, %69, %69, %69, %69, %69
  %73 = getelementptr inbounds nuw i8, ptr %64, i64 48
  %74 = load i32, ptr %73, align 8, !tbaa !30
  %75 = tail call i32 @llvm.abs.i32(i32 %74, i1 true)
  switch i32 %75, label %154 [
    i32 0, label %155
    i32 1, label %82
    i32 2, label %87
  ]

76:                                               ; preds = %69, %66, %62, %58, %54, %49
  %77 = tail call i64 @llvm.umax.i64(i64 %27, i64 %52)
  %78 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %77, i64 18), !nosanitize !49
  %79 = extractvalue { i64, i1 } %78, 0, !nosanitize !49
  %80 = extractvalue { i64, i1 } %78, 1, !nosanitize !49
  br i1 %80, label %81, label %215, !prof !50, !nosanitize !49

81:                                               ; preds = %76
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %72
  %83 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %84 = load i32, ptr %83, align 4, !tbaa !74
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i64 6, i64 10
  br label %155

87:                                               ; preds = %72
  %88 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %89 = load ptr, ptr %88, align 8, !tbaa !31
  %90 = icmp eq ptr %89, null
  br i1 %90, label %155, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 24
  %93 = load ptr, ptr %92, align 8, !tbaa !105
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds nuw i8, ptr %89, i64 32
  %97 = load i32, ptr %96, align 8, !tbaa !110
  %98 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %97, i32 2), !nosanitize !49
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !49
  br i1 %99, label %100, label %101, !prof !50, !nosanitize !49

100:                                              ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

101:                                              ; preds = %95
  %102 = extractvalue { i32, i1 } %98, 0, !nosanitize !49
  %103 = zext i32 %102 to i64
  %104 = add nuw nsw i64 %103, 18
  br label %105

105:                                              ; preds = %101, %91
  %106 = phi i64 [ %104, %101 ], [ 18, %91 ]
  %107 = getelementptr inbounds nuw i8, ptr %89, i64 40
  %108 = load ptr, ptr %107, align 8, !tbaa !104
  %109 = icmp eq ptr %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %105
  %111 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %106, i64 1), !nosanitize !49
  %112 = extractvalue { i64, i1 } %111, 1, !nosanitize !49
  br i1 %112, label %117, label %118, !prof !117, !nosanitize !49

113:                                              ; preds = %118
  %114 = getelementptr inbounds nuw i8, ptr %120, i64 1
  %115 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %121, i64 1), !nosanitize !49
  %116 = extractvalue { i64, i1 } %115, 1, !nosanitize !49
  br i1 %116, label %117, label %118, !prof !118, !llvm.loop !119, !nosanitize !49

117:                                              ; preds = %113, %110
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

118:                                              ; preds = %110, %113
  %119 = phi { i64, i1 } [ %115, %113 ], [ %111, %110 ]
  %120 = phi ptr [ %114, %113 ], [ %108, %110 ]
  %121 = extractvalue { i64, i1 } %119, 0, !nosanitize !49
  %122 = load i8, ptr %120, align 1, !tbaa !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %113, !llvm.loop !119

124:                                              ; preds = %118, %105
  %125 = phi i64 [ %106, %105 ], [ %121, %118 ]
  %126 = getelementptr inbounds nuw i8, ptr %89, i64 56
  %127 = load ptr, ptr %126, align 8, !tbaa !102
  %128 = icmp eq ptr %127, null
  br i1 %128, label %143, label %129

129:                                              ; preds = %124
  %130 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %125, i64 1), !nosanitize !49
  %131 = extractvalue { i64, i1 } %130, 1, !nosanitize !49
  br i1 %131, label %136, label %137, !prof !117, !nosanitize !49

132:                                              ; preds = %137
  %133 = getelementptr inbounds nuw i8, ptr %139, i64 1
  %134 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 1), !nosanitize !49
  %135 = extractvalue { i64, i1 } %134, 1, !nosanitize !49
  br i1 %135, label %136, label %137, !prof !118, !llvm.loop !120, !nosanitize !49

136:                                              ; preds = %132, %129
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

137:                                              ; preds = %129, %132
  %138 = phi { i64, i1 } [ %134, %132 ], [ %130, %129 ]
  %139 = phi ptr [ %133, %132 ], [ %127, %129 ]
  %140 = extractvalue { i64, i1 } %138, 0, !nosanitize !49
  %141 = load i8, ptr %139, align 1, !tbaa !8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %132, !llvm.loop !120

143:                                              ; preds = %137, %124
  %144 = phi i64 [ %125, %124 ], [ %140, %137 ]
  %145 = getelementptr inbounds nuw i8, ptr %89, i64 68
  %146 = load i32, ptr %145, align 4, !tbaa !107
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %143
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %144, i64 2), !nosanitize !49
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !49
  br i1 %150, label %151, label %152, !prof !50, !nosanitize !49

151:                                              ; preds = %148
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

152:                                              ; preds = %148
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !49
  br label %155

154:                                              ; preds = %72
  br label %155

155:                                              ; preds = %154, %152, %143, %87, %82, %72
  %156 = phi i64 [ 18, %154 ], [ 18, %87 ], [ %86, %82 ], [ 0, %72 ], [ %153, %152 ], [ %144, %143 ]
  %157 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %158 = load i32, ptr %157, align 4, !tbaa !32
  %159 = icmp eq i32 %158, 15
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %162 = load i32, ptr %161, align 8, !tbaa !35
  %163 = icmp eq i32 %162, 15
  br i1 %163, label %179, label %164

164:                                              ; preds = %160, %155
  %165 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %166 = load i32, ptr %165, align 8, !tbaa !35
  %167 = icmp ugt i32 %158, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %170 = load i32, ptr %169, align 4, !tbaa !52
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168, %164
  br label %173

173:                                              ; preds = %172, %168
  %174 = phi i64 [ %52, %172 ], [ %27, %168 ]
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %174, i64 %156), !nosanitize !49
  %176 = extractvalue { i64, i1 } %175, 0, !nosanitize !49
  %177 = extractvalue { i64, i1 } %175, 1, !nosanitize !49
  br i1 %177, label %178, label %215, !prof !50, !nosanitize !49

178:                                              ; preds = %173
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

179:                                              ; preds = %160
  %180 = lshr i64 %1, 12
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %180), !nosanitize !49
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !49
  br i1 %182, label %183, label %184, !prof !50, !nosanitize !49

183:                                              ; preds = %179
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

184:                                              ; preds = %179
  %185 = extractvalue { i64, i1 } %181, 0, !nosanitize !49
  %186 = lshr i64 %1, 14
  %187 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %186), !nosanitize !49
  %188 = extractvalue { i64, i1 } %187, 1, !nosanitize !49
  br i1 %188, label %189, label %190, !prof !50, !nosanitize !49

189:                                              ; preds = %184
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

190:                                              ; preds = %184
  %191 = extractvalue { i64, i1 } %187, 0, !nosanitize !49
  %192 = lshr i64 %1, 25
  %193 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %191, i64 %192), !nosanitize !49
  %194 = extractvalue { i64, i1 } %193, 1, !nosanitize !49
  br i1 %194, label %195, label %196, !prof !50, !nosanitize !49

195:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

196:                                              ; preds = %190
  %197 = extractvalue { i64, i1 } %193, 0, !nosanitize !49
  %198 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %197, i64 13), !nosanitize !49
  %199 = extractvalue { i64, i1 } %198, 1, !nosanitize !49
  br i1 %199, label %200, label %201, !prof !50, !nosanitize !49

200:                                              ; preds = %196
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

201:                                              ; preds = %196
  %202 = extractvalue { i64, i1 } %198, 0, !nosanitize !49
  %203 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %202, i64 6), !nosanitize !49
  %204 = extractvalue { i64, i1 } %203, 1, !nosanitize !49
  br i1 %204, label %205, label %206, !prof !50, !nosanitize !49

205:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

206:                                              ; preds = %201
  %207 = extractvalue { i64, i1 } %203, 0, !nosanitize !49
  %208 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %207, i64 %156), !nosanitize !49
  %209 = extractvalue { i64, i1 } %208, 1, !nosanitize !49
  br i1 %209, label %210, label %211, !prof !50, !nosanitize !49

210:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

211:                                              ; preds = %206
  %212 = extractvalue { i64, i1 } %208, 0, !nosanitize !49
  %213 = icmp ult i64 %212, %1
  %214 = select i1 %213, i64 -1, i64 %212
  br label %215

215:                                              ; preds = %76, %173, %211
  %216 = phi i64 [ %214, %211 ], [ %79, %76 ], [ %176, %173 ]
  ret i64 %216
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #12
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !100
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !99
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !99
  %19 = load ptr, ptr %15, align 8, !tbaa !59
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !59
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !101
  %23 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %22, i64 %9), !nosanitize !49
  %24 = extractvalue { i64, i1 } %23, 1, !nosanitize !49
  br i1 %24, label %25, label %26, !prof !50, !nosanitize !49

25:                                               ; preds = %12
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !49
  store i64 %27, ptr %21, align 8, !tbaa !101
  %28 = load i32, ptr %6, align 8, !tbaa !100
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !49
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !49
  br i1 %30, label %31, label %32, !prof !50, !nosanitize !49

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !49
  store i32 %33, ptr %6, align 8, !tbaa !100
  %34 = load i64, ptr %4, align 8, !tbaa !58
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !49
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !49
  br i1 %36, label %37, label %38, !prof !50, !nosanitize !49

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !49
  store i64 %39, ptr %4, align 8, !tbaa !58
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  store ptr %43, ptr %15, align 8, !tbaa !59
  br label %44

44:                                               ; preds = %38, %41, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !45
  %5 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 5), !nosanitize !49
  %6 = extractvalue { i64, i1 } %5, 1, !nosanitize !49
  br i1 %6, label %7, label %8, !prof !50, !nosanitize !49

7:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

8:                                                ; preds = %2
  %9 = extractvalue { i64, i1 } %5, 0, !nosanitize !49
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %11 = load i32, ptr %10, align 8, !tbaa !33
  %12 = zext i32 %11 to i64
  %13 = tail call i64 @llvm.umin.i64(i64 %9, i64 %12)
  %14 = trunc nuw i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !20
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !82
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %21 = icmp ne i32 %1, 4
  %22 = icmp eq i32 %1, 0
  %23 = icmp eq i32 %1, 4
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %27

27:                                               ; preds = %262, %8
  %28 = load i32, ptr %18, align 4, !tbaa !94
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !49
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !49
  br i1 %30, label %31, label %32, !prof !50, !nosanitize !49

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !49
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !100
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %264, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !74
  %42 = load i64, ptr %20, align 8, !tbaa !75
  %43 = trunc i64 %42 to i32
  %44 = sub i32 %41, %43
  %45 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %46 = load i32, ptr %45, align 8, !tbaa !82
  %47 = zext i32 %44 to i64
  %48 = zext i32 %46 to i64
  %49 = add nuw nsw i64 %47, %48
  %50 = icmp samesign ult i64 %49, 65535
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !49
  %53 = extractvalue { i32, i1 } %52, 1, !nosanitize !49
  br i1 %53, label %54, label %55, !prof !50, !nosanitize !49

54:                                               ; preds = %51
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

55:                                               ; preds = %51
  %56 = extractvalue { i32, i1 } %52, 0, !nosanitize !49
  br label %57

57:                                               ; preds = %55, %39
  %58 = phi i32 [ %56, %55 ], [ 65535, %39 ]
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 %40)
  %60 = icmp ult i32 %59, %14
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = icmp eq i32 %59, 0
  %63 = and i1 %21, %62
  %64 = or i1 %22, %63
  br i1 %64, label %264, label %65

65:                                               ; preds = %61
  %66 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !49
  %67 = extractvalue { i32, i1 } %66, 1, !nosanitize !49
  br i1 %67, label %68, label %69, !prof !50, !nosanitize !49

68:                                               ; preds = %65
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

69:                                               ; preds = %65
  %70 = extractvalue { i32, i1 } %66, 0, !nosanitize !49
  %71 = icmp eq i32 %59, %70
  br i1 %71, label %72, label %264

72:                                               ; preds = %69, %57
  br i1 %23, label %73, label %81

73:                                               ; preds = %72
  %74 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !49
  %75 = extractvalue { i32, i1 } %74, 1, !nosanitize !49
  br i1 %75, label %76, label %77, !prof !50, !nosanitize !49

76:                                               ; preds = %73
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

77:                                               ; preds = %73
  %78 = extractvalue { i32, i1 } %74, 0, !nosanitize !49
  %79 = icmp eq i32 %59, %78
  %80 = zext i1 %79 to i32
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i32 [ 0, %72 ], [ %80, %77 ]
  tail call void @_tr_stored_block(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef %82) #12
  %83 = load i64, ptr %25, align 8, !tbaa !58
  %84 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 4), !nosanitize !49
  %85 = extractvalue { i64, i1 } %84, 1, !nosanitize !49
  br i1 %85, label %86, label %87, !prof !50, !nosanitize !49

86:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

87:                                               ; preds = %81
  %88 = extractvalue { i64, i1 } %84, 0, !nosanitize !49
  %89 = load ptr, ptr %24, align 8, !tbaa !44
  %90 = trunc i32 %59 to i8
  %91 = getelementptr inbounds nuw i8, ptr %89, i64 %88
  store i8 %90, ptr %91, align 1, !tbaa !8
  %92 = load i64, ptr %25, align 8, !tbaa !58
  %93 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %92, i64 3), !nosanitize !49
  %94 = extractvalue { i64, i1 } %93, 1, !nosanitize !49
  br i1 %94, label %95, label %96, !prof !50, !nosanitize !49

95:                                               ; preds = %87
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

96:                                               ; preds = %87
  %97 = extractvalue { i64, i1 } %93, 0, !nosanitize !49
  %98 = load ptr, ptr %24, align 8, !tbaa !44
  %99 = lshr i32 %59, 8
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds nuw i8, ptr %98, i64 %97
  store i8 %100, ptr %101, align 1, !tbaa !8
  %102 = load i64, ptr %25, align 8, !tbaa !58
  %103 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %102, i64 2), !nosanitize !49
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !49
  br i1 %104, label %105, label %106, !prof !50, !nosanitize !49

105:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

106:                                              ; preds = %96
  %107 = extractvalue { i64, i1 } %103, 0, !nosanitize !49
  %108 = load ptr, ptr %24, align 8, !tbaa !44
  %109 = xor i32 %59, -1
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds nuw i8, ptr %108, i64 %107
  store i8 %110, ptr %111, align 1, !tbaa !8
  %112 = load i64, ptr %25, align 8, !tbaa !58
  %113 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %112, i64 1), !nosanitize !49
  %114 = extractvalue { i64, i1 } %113, 1, !nosanitize !49
  br i1 %114, label %115, label %116, !prof !50, !nosanitize !49

115:                                              ; preds = %106
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

116:                                              ; preds = %106
  %117 = extractvalue { i64, i1 } %113, 0, !nosanitize !49
  %118 = load ptr, ptr %24, align 8, !tbaa !44
  %119 = lshr i32 %109, 8
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds nuw i8, ptr %118, i64 %117
  store i8 %120, ptr %121, align 1, !tbaa !8
  %122 = load ptr, ptr %0, align 8, !tbaa !20
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 56
  %124 = load ptr, ptr %123, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %124) #12
  %125 = getelementptr inbounds nuw i8, ptr %124, i64 40
  %126 = load i64, ptr %125, align 8, !tbaa !58
  %127 = getelementptr inbounds nuw i8, ptr %122, i64 32
  %128 = load i32, ptr %127, align 8, !tbaa !100
  %129 = zext i32 %128 to i64
  %130 = tail call i64 @llvm.umin.i64(i64 %126, i64 %129)
  %131 = trunc nuw i64 %130 to i32
  %132 = icmp eq i64 %130, 0
  br i1 %132, label %165, label %133

133:                                              ; preds = %116
  %134 = getelementptr inbounds nuw i8, ptr %122, i64 24
  %135 = load ptr, ptr %134, align 8, !tbaa !99
  %136 = getelementptr inbounds nuw i8, ptr %124, i64 32
  %137 = load ptr, ptr %136, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %135, ptr align 1 %137, i64 %130, i1 false)
  %138 = load ptr, ptr %134, align 8, !tbaa !99
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 %130
  store ptr %139, ptr %134, align 8, !tbaa !99
  %140 = load ptr, ptr %136, align 8, !tbaa !59
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 %130
  store ptr %141, ptr %136, align 8, !tbaa !59
  %142 = getelementptr inbounds nuw i8, ptr %122, i64 40
  %143 = load i64, ptr %142, align 8, !tbaa !101
  %144 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %143, i64 %130), !nosanitize !49
  %145 = extractvalue { i64, i1 } %144, 1, !nosanitize !49
  br i1 %145, label %146, label %147, !prof !50, !nosanitize !49

146:                                              ; preds = %133
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

147:                                              ; preds = %133
  %148 = extractvalue { i64, i1 } %144, 0, !nosanitize !49
  store i64 %148, ptr %142, align 8, !tbaa !101
  %149 = load i32, ptr %127, align 8, !tbaa !100
  %150 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %131), !nosanitize !49
  %151 = extractvalue { i32, i1 } %150, 1, !nosanitize !49
  br i1 %151, label %152, label %153, !prof !50, !nosanitize !49

152:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

153:                                              ; preds = %147
  %154 = extractvalue { i32, i1 } %150, 0, !nosanitize !49
  store i32 %154, ptr %127, align 8, !tbaa !100
  %155 = load i64, ptr %125, align 8, !tbaa !58
  %156 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %155, i64 %130), !nosanitize !49
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !49
  br i1 %157, label %158, label %159, !prof !50, !nosanitize !49

158:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

159:                                              ; preds = %153
  %160 = extractvalue { i64, i1 } %156, 0, !nosanitize !49
  store i64 %160, ptr %125, align 8, !tbaa !58
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = getelementptr inbounds nuw i8, ptr %124, i64 16
  %164 = load ptr, ptr %163, align 8, !tbaa !44
  store ptr %164, ptr %136, align 8, !tbaa !59
  br label %165

165:                                              ; preds = %116, %159, %162
  %166 = icmp eq i32 %41, %43
  br i1 %166, label %201, label %167

167:                                              ; preds = %165
  %168 = tail call i32 @llvm.umin.i32(i32 %44, i32 %59)
  %169 = load ptr, ptr %0, align 8, !tbaa !20
  %170 = getelementptr inbounds nuw i8, ptr %169, i64 24
  %171 = load ptr, ptr %170, align 8, !tbaa !99
  %172 = load ptr, ptr %26, align 8, !tbaa !39
  %173 = load i64, ptr %20, align 8, !tbaa !75
  %174 = getelementptr inbounds i8, ptr %172, i64 %173
  %175 = zext i32 %168 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %171, ptr align 1 %174, i64 %175, i1 false)
  %176 = load ptr, ptr %0, align 8, !tbaa !20
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 24
  %178 = load ptr, ptr %177, align 8, !tbaa !99
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 %175
  store ptr %179, ptr %177, align 8, !tbaa !99
  %180 = getelementptr inbounds nuw i8, ptr %176, i64 32
  %181 = load i32, ptr %180, align 8, !tbaa !100
  %182 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 %168), !nosanitize !49
  %183 = extractvalue { i32, i1 } %182, 1, !nosanitize !49
  br i1 %183, label %184, label %185, !prof !50, !nosanitize !49

184:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

185:                                              ; preds = %167
  %186 = extractvalue { i32, i1 } %182, 0, !nosanitize !49
  store i32 %186, ptr %180, align 8, !tbaa !100
  %187 = getelementptr inbounds nuw i8, ptr %176, i64 40
  %188 = load i64, ptr %187, align 8, !tbaa !101
  %189 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %188, i64 %175), !nosanitize !49
  %190 = extractvalue { i64, i1 } %189, 1, !nosanitize !49
  br i1 %190, label %191, label %192, !prof !50, !nosanitize !49

191:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

192:                                              ; preds = %185
  %193 = extractvalue { i64, i1 } %189, 0, !nosanitize !49
  store i64 %193, ptr %187, align 8, !tbaa !101
  %194 = load i64, ptr %20, align 8, !tbaa !75
  %195 = add nsw i64 %194, %175
  store i64 %195, ptr %20, align 8, !tbaa !75
  %196 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %59, i32 %168), !nosanitize !49
  %197 = extractvalue { i32, i1 } %196, 1, !nosanitize !49
  br i1 %197, label %198, label %199, !prof !50, !nosanitize !49

198:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

199:                                              ; preds = %192
  %200 = extractvalue { i32, i1 } %196, 0, !nosanitize !49
  br label %201

201:                                              ; preds = %199, %165
  %202 = phi i32 [ %200, %199 ], [ %59, %165 ]
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %262, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %0, align 8, !tbaa !20
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 24
  %207 = load ptr, ptr %206, align 8, !tbaa !99
  %208 = getelementptr inbounds nuw i8, ptr %205, i64 8
  %209 = load i32, ptr %208, align 8, !tbaa !82
  %210 = tail call i32 @llvm.umin.i32(i32 %209, i32 %202)
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %242, label %212

212:                                              ; preds = %204
  %213 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %209, i32 %210), !nosanitize !49
  %214 = extractvalue { i32, i1 } %213, 1, !nosanitize !49
  br i1 %214, label %215, label %216, !prof !50, !nosanitize !49

215:                                              ; preds = %212
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

216:                                              ; preds = %212
  %217 = extractvalue { i32, i1 } %213, 0, !nosanitize !49
  store i32 %217, ptr %208, align 8, !tbaa !82
  %218 = load ptr, ptr %205, align 8, !tbaa !83
  %219 = zext i32 %210 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %207, ptr align 1 %218, i64 %219, i1 false)
  %220 = getelementptr inbounds nuw i8, ptr %205, i64 56
  %221 = load ptr, ptr %220, align 8, !tbaa !19
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 48
  %223 = load i32, ptr %222, align 8, !tbaa !30
  switch i32 %223, label %232 [
    i32 1, label %224
    i32 2, label %228
  ]

224:                                              ; preds = %216
  %225 = getelementptr inbounds nuw i8, ptr %205, i64 96
  %226 = load i64, ptr %225, align 8, !tbaa !60
  %227 = tail call i64 @adler32(i64 noundef %226, ptr noundef %207, i32 noundef %210) #12
  store i64 %227, ptr %225, align 8, !tbaa !60
  br label %232

228:                                              ; preds = %216
  %229 = getelementptr inbounds nuw i8, ptr %205, i64 96
  %230 = load i64, ptr %229, align 8, !tbaa !60
  %231 = tail call i64 @crc32(i64 noundef %230, ptr noundef %207, i32 noundef %210) #12
  store i64 %231, ptr %229, align 8, !tbaa !60
  br label %232

232:                                              ; preds = %228, %224, %216
  %233 = load ptr, ptr %205, align 8, !tbaa !83
  %234 = getelementptr inbounds nuw i8, ptr %233, i64 %219
  store ptr %234, ptr %205, align 8, !tbaa !83
  %235 = getelementptr inbounds nuw i8, ptr %205, i64 16
  %236 = load i64, ptr %235, align 8, !tbaa !56
  %237 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %236, i64 %219), !nosanitize !49
  %238 = extractvalue { i64, i1 } %237, 1, !nosanitize !49
  br i1 %238, label %239, label %240, !prof !50, !nosanitize !49

239:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

240:                                              ; preds = %232
  %241 = extractvalue { i64, i1 } %237, 0, !nosanitize !49
  store i64 %241, ptr %235, align 8, !tbaa !56
  br label %242

242:                                              ; preds = %204, %240
  %243 = load ptr, ptr %0, align 8, !tbaa !20
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 24
  %245 = load ptr, ptr %244, align 8, !tbaa !99
  %246 = zext i32 %202 to i64
  %247 = getelementptr inbounds nuw i8, ptr %245, i64 %246
  store ptr %247, ptr %244, align 8, !tbaa !99
  %248 = getelementptr inbounds nuw i8, ptr %243, i64 32
  %249 = load i32, ptr %248, align 8, !tbaa !100
  %250 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %249, i32 %202), !nosanitize !49
  %251 = extractvalue { i32, i1 } %250, 1, !nosanitize !49
  br i1 %251, label %252, label %253, !prof !50, !nosanitize !49

252:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

253:                                              ; preds = %242
  %254 = extractvalue { i32, i1 } %250, 0, !nosanitize !49
  store i32 %254, ptr %248, align 8, !tbaa !100
  %255 = getelementptr inbounds nuw i8, ptr %243, i64 40
  %256 = load i64, ptr %255, align 8, !tbaa !101
  %257 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %256, i64 %246), !nosanitize !49
  %258 = extractvalue { i64, i1 } %257, 1, !nosanitize !49
  br i1 %258, label %259, label %260, !prof !50, !nosanitize !49

259:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

260:                                              ; preds = %253
  %261 = extractvalue { i64, i1 } %257, 0, !nosanitize !49
  store i64 %261, ptr %255, align 8, !tbaa !101
  br label %262

262:                                              ; preds = %201, %260
  %263 = icmp eq i32 %82, 0
  br i1 %263, label %27, label %264, !llvm.loop !121

264:                                              ; preds = %69, %61, %32, %262
  %265 = phi i1 [ true, %32 ], [ true, %61 ], [ true, %69 ], [ false, %262 ]
  %266 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %267 = load ptr, ptr %0, align 8, !tbaa !20
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 8
  %269 = load i32, ptr %268, align 8, !tbaa !82
  %270 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %269), !nosanitize !49
  %271 = extractvalue { i32, i1 } %270, 0, !nosanitize !49
  %272 = extractvalue { i32, i1 } %270, 1, !nosanitize !49
  br i1 %272, label %273, label %274, !prof !50, !nosanitize !49

273:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

274:                                              ; preds = %264
  %275 = icmp eq i32 %271, 0
  br i1 %275, label %360, label %276

276:                                              ; preds = %274
  %277 = load i32, ptr %10, align 8, !tbaa !33
  %278 = icmp ult i32 %271, %277
  br i1 %278, label %290, label %279

279:                                              ; preds = %276
  %280 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %280, align 8, !tbaa !116
  %281 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %282 = load ptr, ptr %281, align 8, !tbaa !39
  %283 = load ptr, ptr %267, align 8, !tbaa !83
  %284 = zext i32 %277 to i64
  %285 = sub nsw i64 0, %284
  %286 = getelementptr inbounds i8, ptr %283, i64 %285
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %282, ptr align 1 %286, i64 %284, i1 false)
  %287 = load i32, ptr %10, align 8, !tbaa !33
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %287, ptr %288, align 4, !tbaa !74
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %287, ptr %289, align 4, !tbaa !77
  br label %355

290:                                              ; preds = %276
  %291 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %292 = load i64, ptr %291, align 8, !tbaa !62
  %293 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %294 = load i32, ptr %293, align 4, !tbaa !74
  %295 = zext i32 %294 to i64
  %296 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %292, i64 %295), !nosanitize !49
  %297 = extractvalue { i64, i1 } %296, 1, !nosanitize !49
  br i1 %297, label %298, label %299, !prof !50, !nosanitize !49

298:                                              ; preds = %290
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

299:                                              ; preds = %290
  %300 = extractvalue { i64, i1 } %296, 0, !nosanitize !49
  %301 = zext i32 %271 to i64
  %302 = icmp ugt i64 %300, %301
  br i1 %302, label %325, label %303

303:                                              ; preds = %299
  %304 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %294, i32 %277), !nosanitize !49
  %305 = extractvalue { i32, i1 } %304, 1, !nosanitize !49
  br i1 %305, label %306, label %307, !prof !50, !nosanitize !49

306:                                              ; preds = %303
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

307:                                              ; preds = %303
  %308 = extractvalue { i32, i1 } %304, 0, !nosanitize !49
  store i32 %308, ptr %293, align 4, !tbaa !74
  %309 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %310 = load ptr, ptr %309, align 8, !tbaa !39
  %311 = zext i32 %277 to i64
  %312 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  %313 = zext i32 %308 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %310, ptr nonnull align 1 %312, i64 %313, i1 false)
  %314 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %315 = load i32, ptr %314, align 8, !tbaa !116
  %316 = icmp ult i32 %315, 2
  br i1 %316, label %317, label %319

317:                                              ; preds = %307
  %318 = add nuw nsw i32 %315, 1
  store i32 %318, ptr %314, align 8, !tbaa !116
  br label %319

319:                                              ; preds = %317, %307
  %320 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %321 = load i32, ptr %320, align 4, !tbaa !77
  %322 = load i32, ptr %293, align 4, !tbaa !74
  %323 = icmp ugt i32 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  store i32 %322, ptr %320, align 4, !tbaa !77
  br label %325

325:                                              ; preds = %319, %324, %299
  %326 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %327 = load ptr, ptr %326, align 8, !tbaa !39
  %328 = load i32, ptr %293, align 4, !tbaa !74
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds nuw i8, ptr %327, i64 %329
  %331 = load ptr, ptr %0, align 8, !tbaa !20
  %332 = load ptr, ptr %331, align 8, !tbaa !83
  %333 = sub nsw i64 0, %301
  %334 = getelementptr inbounds i8, ptr %332, i64 %333
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %330, ptr nonnull align 1 %334, i64 %301, i1 false)
  %335 = load i32, ptr %293, align 4, !tbaa !74
  %336 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %335, i32 %271), !nosanitize !49
  %337 = extractvalue { i32, i1 } %336, 1, !nosanitize !49
  br i1 %337, label %338, label %339, !prof !50, !nosanitize !49

338:                                              ; preds = %325
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

339:                                              ; preds = %325
  %340 = extractvalue { i32, i1 } %336, 0, !nosanitize !49
  store i32 %340, ptr %293, align 4, !tbaa !74
  %341 = load i32, ptr %10, align 8, !tbaa !33
  %342 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %343 = load i32, ptr %342, align 4, !tbaa !77
  %344 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %341, i32 %343), !nosanitize !49
  %345 = extractvalue { i32, i1 } %344, 1, !nosanitize !49
  br i1 %345, label %346, label %347, !prof !50, !nosanitize !49

346:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

347:                                              ; preds = %339
  %348 = extractvalue { i32, i1 } %344, 0, !nosanitize !49
  %349 = tail call i32 @llvm.umin.i32(i32 %271, i32 %348)
  %350 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %343, i32 %349), !nosanitize !49
  %351 = extractvalue { i32, i1 } %350, 1, !nosanitize !49
  br i1 %351, label %352, label %353, !prof !50, !nosanitize !49

352:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

353:                                              ; preds = %347
  %354 = extractvalue { i32, i1 } %350, 0, !nosanitize !49
  store i32 %354, ptr %342, align 4, !tbaa !77
  br label %355

355:                                              ; preds = %353, %279
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %357 = load i32, ptr %356, align 4, !tbaa !74
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %358, ptr %359, align 8, !tbaa !75
  br label %360

360:                                              ; preds = %355, %274
  %361 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %362 = load i64, ptr %361, align 8, !tbaa !42
  %363 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %364 = load i32, ptr %363, align 4, !tbaa !74
  %365 = zext i32 %364 to i64
  %366 = icmp ult i64 %362, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %360
  store i64 %365, ptr %361, align 8, !tbaa !42
  br label %368

368:                                              ; preds = %367, %360
  br i1 %265, label %369, label %595

369:                                              ; preds = %368
  %370 = icmp ne i32 %1, 0
  switch i32 %1, label %371 [
    i32 4, label %380
    i32 0, label %380
  ]

371:                                              ; preds = %369
  %372 = load ptr, ptr %0, align 8, !tbaa !20
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 8
  %374 = load i32, ptr %373, align 8, !tbaa !82
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %371
  %377 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %378 = load i64, ptr %377, align 8, !tbaa !75
  %379 = icmp eq i64 %378, %365
  br i1 %379, label %598, label %380

380:                                              ; preds = %369, %369, %376, %371
  %381 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %382 = load i64, ptr %381, align 8, !tbaa !62
  %383 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %382, i64 %365), !nosanitize !49
  %384 = extractvalue { i64, i1 } %383, 1, !nosanitize !49
  br i1 %384, label %385, label %386, !prof !50, !nosanitize !49

385:                                              ; preds = %380
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

386:                                              ; preds = %380
  %387 = extractvalue { i64, i1 } %383, 0, !nosanitize !49
  %388 = trunc i64 %387 to i32
  %389 = load ptr, ptr %0, align 8, !tbaa !20
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 8
  %391 = load i32, ptr %390, align 8, !tbaa !82
  %392 = icmp ugt i32 %391, %388
  br i1 %392, label %393, label %427

393:                                              ; preds = %386
  %394 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %395 = load i64, ptr %394, align 8, !tbaa !75
  %396 = load i32, ptr %10, align 8, !tbaa !33
  %397 = zext i32 %396 to i64
  %398 = icmp slt i64 %395, %397
  br i1 %398, label %427, label %399

399:                                              ; preds = %393
  %400 = sub nsw i64 %395, %397
  store i64 %400, ptr %394, align 8, !tbaa !75
  %401 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %364, i32 %396), !nosanitize !49
  %402 = extractvalue { i32, i1 } %401, 1, !nosanitize !49
  br i1 %402, label %403, label %404, !prof !50, !nosanitize !49

403:                                              ; preds = %399
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

404:                                              ; preds = %399
  %405 = extractvalue { i32, i1 } %401, 0, !nosanitize !49
  store i32 %405, ptr %363, align 4, !tbaa !74
  %406 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %407 = load ptr, ptr %406, align 8, !tbaa !39
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 %397
  %409 = zext i32 %405 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %407, ptr align 1 %408, i64 %409, i1 false)
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %411 = load i32, ptr %410, align 8, !tbaa !116
  %412 = icmp ult i32 %411, 2
  br i1 %412, label %413, label %415

413:                                              ; preds = %404
  %414 = add nuw nsw i32 %411, 1
  store i32 %414, ptr %410, align 8, !tbaa !116
  br label %415

415:                                              ; preds = %413, %404
  %416 = load i32, ptr %10, align 8, !tbaa !33
  %417 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %388, i32 %416), !nosanitize !49
  %418 = extractvalue { i32, i1 } %417, 0, !nosanitize !49
  %419 = extractvalue { i32, i1 } %417, 1, !nosanitize !49
  br i1 %419, label %420, label %421, !prof !50, !nosanitize !49

420:                                              ; preds = %415
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

421:                                              ; preds = %415
  %422 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %423 = load i32, ptr %422, align 4, !tbaa !77
  %424 = load i32, ptr %363, align 4, !tbaa !74
  %425 = icmp ugt i32 %423, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %421
  store i32 %424, ptr %422, align 4, !tbaa !77
  br label %427

427:                                              ; preds = %421, %426, %393, %386
  %428 = phi i32 [ %418, %426 ], [ %418, %421 ], [ %388, %393 ], [ %388, %386 ]
  %429 = load ptr, ptr %0, align 8, !tbaa !20
  %430 = getelementptr inbounds nuw i8, ptr %429, i64 8
  %431 = load i32, ptr %430, align 8, !tbaa !82
  %432 = tail call i32 @llvm.umin.i32(i32 %428, i32 %431)
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %489, label %434

434:                                              ; preds = %427
  %435 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %436 = load ptr, ptr %435, align 8, !tbaa !39
  %437 = load i32, ptr %363, align 4, !tbaa !74
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds nuw i8, ptr %436, i64 %438
  %440 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %431, i32 %432), !nosanitize !49
  %441 = extractvalue { i32, i1 } %440, 1, !nosanitize !49
  br i1 %441, label %442, label %443, !prof !50, !nosanitize !49

442:                                              ; preds = %434
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

443:                                              ; preds = %434
  %444 = extractvalue { i32, i1 } %440, 0, !nosanitize !49
  store i32 %444, ptr %430, align 8, !tbaa !82
  %445 = load ptr, ptr %429, align 8, !tbaa !83
  %446 = zext i32 %432 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %439, ptr align 1 %445, i64 %446, i1 false)
  %447 = getelementptr inbounds nuw i8, ptr %429, i64 56
  %448 = load ptr, ptr %447, align 8, !tbaa !19
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 48
  %450 = load i32, ptr %449, align 8, !tbaa !30
  switch i32 %450, label %459 [
    i32 1, label %451
    i32 2, label %455
  ]

451:                                              ; preds = %443
  %452 = getelementptr inbounds nuw i8, ptr %429, i64 96
  %453 = load i64, ptr %452, align 8, !tbaa !60
  %454 = tail call i64 @adler32(i64 noundef %453, ptr noundef %439, i32 noundef %432) #12
  store i64 %454, ptr %452, align 8, !tbaa !60
  br label %459

455:                                              ; preds = %443
  %456 = getelementptr inbounds nuw i8, ptr %429, i64 96
  %457 = load i64, ptr %456, align 8, !tbaa !60
  %458 = tail call i64 @crc32(i64 noundef %457, ptr noundef %439, i32 noundef %432) #12
  store i64 %458, ptr %456, align 8, !tbaa !60
  br label %459

459:                                              ; preds = %455, %451, %443
  %460 = load ptr, ptr %429, align 8, !tbaa !83
  %461 = getelementptr inbounds nuw i8, ptr %460, i64 %446
  store ptr %461, ptr %429, align 8, !tbaa !83
  %462 = getelementptr inbounds nuw i8, ptr %429, i64 16
  %463 = load i64, ptr %462, align 8, !tbaa !56
  %464 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %463, i64 %446), !nosanitize !49
  %465 = extractvalue { i64, i1 } %464, 1, !nosanitize !49
  br i1 %465, label %466, label %467, !prof !50, !nosanitize !49

466:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

467:                                              ; preds = %459
  %468 = extractvalue { i64, i1 } %464, 0, !nosanitize !49
  store i64 %468, ptr %462, align 8, !tbaa !56
  %469 = load i32, ptr %363, align 4, !tbaa !74
  %470 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %469, i32 %432), !nosanitize !49
  %471 = extractvalue { i32, i1 } %470, 1, !nosanitize !49
  br i1 %471, label %472, label %473, !prof !50, !nosanitize !49

472:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

473:                                              ; preds = %467
  %474 = extractvalue { i32, i1 } %470, 0, !nosanitize !49
  store i32 %474, ptr %363, align 4, !tbaa !74
  %475 = load i32, ptr %10, align 8, !tbaa !33
  %476 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %477 = load i32, ptr %476, align 4, !tbaa !77
  %478 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %475, i32 %477), !nosanitize !49
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !49
  br i1 %479, label %480, label %481, !prof !50, !nosanitize !49

480:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

481:                                              ; preds = %473
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !49
  %483 = tail call i32 @llvm.umin.i32(i32 %432, i32 %482)
  %484 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %477, i32 %483), !nosanitize !49
  %485 = extractvalue { i32, i1 } %484, 1, !nosanitize !49
  br i1 %485, label %486, label %487, !prof !50, !nosanitize !49

486:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

487:                                              ; preds = %481
  %488 = extractvalue { i32, i1 } %484, 0, !nosanitize !49
  store i32 %488, ptr %476, align 4, !tbaa !77
  br label %489

489:                                              ; preds = %487, %427
  %490 = load i64, ptr %361, align 8, !tbaa !42
  %491 = load i32, ptr %363, align 4, !tbaa !74
  %492 = zext i32 %491 to i64
  %493 = icmp ult i64 %490, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %489
  store i64 %492, ptr %361, align 8, !tbaa !42
  br label %495

495:                                              ; preds = %494, %489
  %496 = load i32, ptr %266, align 4, !tbaa !94
  %497 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %496, i32 42), !nosanitize !49
  %498 = extractvalue { i32, i1 } %497, 1, !nosanitize !49
  br i1 %498, label %499, label %500, !prof !50, !nosanitize !49

499:                                              ; preds = %495
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

500:                                              ; preds = %495
  %501 = extractvalue { i32, i1 } %497, 0, !nosanitize !49
  %502 = lshr i32 %501, 3
  %503 = load i64, ptr %3, align 8, !tbaa !45
  %504 = zext nneg i32 %502 to i64
  %505 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %503, i64 %504), !nosanitize !49
  %506 = extractvalue { i64, i1 } %505, 1, !nosanitize !49
  br i1 %506, label %507, label %508, !prof !50, !nosanitize !49

507:                                              ; preds = %500
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

508:                                              ; preds = %500
  %509 = extractvalue { i64, i1 } %505, 0, !nosanitize !49
  %510 = tail call i64 @llvm.umin.i64(i64 %509, i64 65535)
  %511 = trunc nuw nsw i64 %510 to i32
  %512 = load i32, ptr %10, align 8, !tbaa !33
  %513 = tail call i32 @llvm.umin.i32(i32 %512, i32 %511)
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %515 = load i64, ptr %514, align 8, !tbaa !75
  %516 = trunc i64 %515 to i32
  %517 = sub i32 %491, %516
  %518 = icmp ult i32 %517, %513
  br i1 %518, label %519, label %531

519:                                              ; preds = %508
  %520 = icmp ne i32 %491, %516
  %521 = icmp eq i32 %1, 4
  %522 = or i1 %521, %520
  %523 = and i1 %370, %522
  br i1 %523, label %524, label %598

524:                                              ; preds = %519
  %525 = load ptr, ptr %0, align 8, !tbaa !20
  %526 = getelementptr inbounds nuw i8, ptr %525, i64 8
  %527 = load i32, ptr %526, align 8, !tbaa !82
  %528 = icmp ne i32 %527, 0
  %529 = icmp ugt i32 %517, %511
  %530 = or i1 %529, %528
  br i1 %530, label %598, label %531

531:                                              ; preds = %524, %508
  %532 = tail call i32 @llvm.umin.i32(i32 %517, i32 %511)
  %533 = icmp eq i32 %1, 4
  br i1 %533, label %534, label %542

534:                                              ; preds = %531
  %535 = load ptr, ptr %0, align 8, !tbaa !20
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 8
  %537 = load i32, ptr %536, align 8, !tbaa !82
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %542

539:                                              ; preds = %534
  %540 = icmp ule i32 %517, %511
  %541 = zext i1 %540 to i32
  br label %542

542:                                              ; preds = %539, %534, %531
  %543 = phi i32 [ 0, %534 ], [ 0, %531 ], [ %541, %539 ]
  %544 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %545 = load ptr, ptr %544, align 8, !tbaa !39
  %546 = getelementptr inbounds i8, ptr %545, i64 %515
  %547 = zext nneg i32 %532 to i64
  tail call void @_tr_stored_block(ptr noundef %0, ptr noundef %546, i64 noundef %547, i32 noundef %543) #12
  %548 = load i64, ptr %514, align 8, !tbaa !75
  %549 = add nsw i64 %548, %547
  store i64 %549, ptr %514, align 8, !tbaa !75
  %550 = load ptr, ptr %0, align 8, !tbaa !20
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 56
  %552 = load ptr, ptr %551, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %552) #12
  %553 = getelementptr inbounds nuw i8, ptr %552, i64 40
  %554 = load i64, ptr %553, align 8, !tbaa !58
  %555 = getelementptr inbounds nuw i8, ptr %550, i64 32
  %556 = load i32, ptr %555, align 8, !tbaa !100
  %557 = zext i32 %556 to i64
  %558 = tail call i64 @llvm.umin.i64(i64 %554, i64 %557)
  %559 = trunc nuw i64 %558 to i32
  %560 = icmp eq i64 %558, 0
  br i1 %560, label %593, label %561

561:                                              ; preds = %542
  %562 = getelementptr inbounds nuw i8, ptr %550, i64 24
  %563 = load ptr, ptr %562, align 8, !tbaa !99
  %564 = getelementptr inbounds nuw i8, ptr %552, i64 32
  %565 = load ptr, ptr %564, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %563, ptr align 1 %565, i64 %558, i1 false)
  %566 = load ptr, ptr %562, align 8, !tbaa !99
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 %558
  store ptr %567, ptr %562, align 8, !tbaa !99
  %568 = load ptr, ptr %564, align 8, !tbaa !59
  %569 = getelementptr inbounds nuw i8, ptr %568, i64 %558
  store ptr %569, ptr %564, align 8, !tbaa !59
  %570 = getelementptr inbounds nuw i8, ptr %550, i64 40
  %571 = load i64, ptr %570, align 8, !tbaa !101
  %572 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %571, i64 %558), !nosanitize !49
  %573 = extractvalue { i64, i1 } %572, 1, !nosanitize !49
  br i1 %573, label %574, label %575, !prof !50, !nosanitize !49

574:                                              ; preds = %561
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

575:                                              ; preds = %561
  %576 = extractvalue { i64, i1 } %572, 0, !nosanitize !49
  store i64 %576, ptr %570, align 8, !tbaa !101
  %577 = load i32, ptr %555, align 8, !tbaa !100
  %578 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %577, i32 %559), !nosanitize !49
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !49
  br i1 %579, label %580, label %581, !prof !50, !nosanitize !49

580:                                              ; preds = %575
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

581:                                              ; preds = %575
  %582 = extractvalue { i32, i1 } %578, 0, !nosanitize !49
  store i32 %582, ptr %555, align 8, !tbaa !100
  %583 = load i64, ptr %553, align 8, !tbaa !58
  %584 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %583, i64 %558), !nosanitize !49
  %585 = extractvalue { i64, i1 } %584, 1, !nosanitize !49
  br i1 %585, label %586, label %587, !prof !50, !nosanitize !49

586:                                              ; preds = %581
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

587:                                              ; preds = %581
  %588 = extractvalue { i64, i1 } %584, 0, !nosanitize !49
  store i64 %588, ptr %553, align 8, !tbaa !58
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %590, label %593

590:                                              ; preds = %587
  %591 = getelementptr inbounds nuw i8, ptr %552, i64 16
  %592 = load ptr, ptr %591, align 8, !tbaa !44
  store ptr %592, ptr %564, align 8, !tbaa !59
  br label %593

593:                                              ; preds = %542, %587, %590
  %594 = icmp eq i32 %543, 0
  br i1 %594, label %598, label %595

595:                                              ; preds = %593, %368
  %596 = phi i32 [ 3, %368 ], [ 2, %593 ]
  %597 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %597, align 8, !tbaa !95
  br label %598

598:                                              ; preds = %595, %593, %524, %519, %376
  %599 = phi i32 [ 0, %524 ], [ 1, %376 ], [ 0, %519 ], [ 0, %593 ], [ %596, %595 ]
  ret i32 %599
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %28

28:                                               ; preds = %431, %2
  %29 = load i32, ptr %3, align 4, !tbaa !76
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %318

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 8, !tbaa !33
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %265, %31
  %35 = load i64, ptr %5, align 8, !tbaa !62
  %36 = load i32, ptr %3, align 4, !tbaa !76
  %37 = zext i32 %36 to i64
  %38 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 %37), !nosanitize !49
  %39 = extractvalue { i64, i1 } %38, 1, !nosanitize !49
  br i1 %39, label %40, label %41, !prof !50, !nosanitize !49

40:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

41:                                               ; preds = %34
  %42 = extractvalue { i64, i1 } %38, 0, !nosanitize !49
  %43 = load i32, ptr %6, align 4, !tbaa !74
  %44 = zext i32 %43 to i64
  %45 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %42, i64 %44), !nosanitize !49
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !49
  br i1 %46, label %47, label %48, !prof !50, !nosanitize !49

47:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

48:                                               ; preds = %41
  %49 = extractvalue { i64, i1 } %45, 0, !nosanitize !49
  %50 = trunc i64 %49 to i32
  %51 = load i32, ptr %4, align 8, !tbaa !33
  %52 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %51, i32 262), !nosanitize !49
  %53 = extractvalue { i32, i1 } %52, 1, !nosanitize !49
  br i1 %53, label %54, label %55, !prof !50, !nosanitize !49

54:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

55:                                               ; preds = %48
  %56 = extractvalue { i32, i1 } %52, 0, !nosanitize !49
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %32, i32 %56), !nosanitize !49
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !49
  br i1 %58, label %59, label %60, !prof !50, !nosanitize !49

59:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

60:                                               ; preds = %55
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !49
  %62 = icmp ult i32 %43, %61
  br i1 %62, label %131, label %63

63:                                               ; preds = %60
  %64 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %32, i32 %50), !nosanitize !49
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !49
  br i1 %65, label %66, label %67, !prof !50, !nosanitize !49

66:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

67:                                               ; preds = %63
  %68 = extractvalue { i32, i1 } %64, 0, !nosanitize !49
  %69 = load ptr, ptr %7, align 8, !tbaa !39
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 %33
  %71 = zext i32 %68 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 1 %70, i64 %71, i1 false)
  %72 = load i32, ptr %8, align 8, !tbaa !84
  %73 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %72, i32 %32), !nosanitize !49
  %74 = extractvalue { i32, i1 } %73, 1, !nosanitize !49
  br i1 %74, label %75, label %76, !prof !50, !nosanitize !49

75:                                               ; preds = %67
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

76:                                               ; preds = %67
  %77 = extractvalue { i32, i1 } %73, 0, !nosanitize !49
  store i32 %77, ptr %8, align 8, !tbaa !84
  %78 = load i32, ptr %6, align 4, !tbaa !74
  %79 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %78, i32 %32), !nosanitize !49
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !49
  br i1 %80, label %81, label %82, !prof !50, !nosanitize !49

81:                                               ; preds = %76
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %76
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !49
  store i32 %83, ptr %6, align 4, !tbaa !74
  %84 = load i64, ptr %9, align 8, !tbaa !75
  %85 = sub nsw i64 %84, %33
  store i64 %85, ptr %9, align 8, !tbaa !75
  %86 = load i32, ptr %10, align 4, !tbaa !77
  %87 = icmp ugt i32 %86, %83
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 %83, ptr %10, align 4, !tbaa !77
  br label %89

89:                                               ; preds = %88, %82
  %90 = load i32, ptr %4, align 8, !tbaa !33
  %91 = load i32, ptr %11, align 4, !tbaa !36
  %92 = load ptr, ptr %12, align 8, !tbaa !41
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds nuw [2 x i8], ptr %92, i64 %93
  %95 = icmp eq i32 %91, 0
  br label %96

96:                                               ; preds = %105, %89
  %97 = phi ptr [ %94, %89 ], [ %99, %105 ]
  %98 = phi i32 [ %91, %89 ], [ %106, %105 ]
  %99 = getelementptr inbounds i8, ptr %97, i64 -2
  %100 = load i16, ptr %99, align 2, !tbaa !63
  %101 = zext i16 %100 to i32
  %102 = tail call i32 @llvm.usub.sat.i32(i32 %101, i32 %90)
  %103 = trunc nuw i32 %102 to i16
  store i16 %103, ptr %99, align 2, !tbaa !63
  br i1 %95, label %104, label %105, !prof !50, !nosanitize !49

104:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

105:                                              ; preds = %96
  %106 = add i32 %98, -1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %96, !llvm.loop !85

108:                                              ; preds = %105
  %109 = load ptr, ptr %13, align 8, !tbaa !40
  %110 = zext i32 %90 to i64
  %111 = getelementptr inbounds nuw [2 x i8], ptr %109, i64 %110
  %112 = icmp eq i32 %90, 0
  br label %113

113:                                              ; preds = %122, %108
  %114 = phi ptr [ %111, %108 ], [ %116, %122 ]
  %115 = phi i32 [ %90, %108 ], [ %123, %122 ]
  %116 = getelementptr inbounds i8, ptr %114, i64 -2
  %117 = load i16, ptr %116, align 2, !tbaa !63
  %118 = zext i16 %117 to i32
  %119 = tail call i32 @llvm.usub.sat.i32(i32 %118, i32 %90)
  %120 = trunc nuw i32 %119 to i16
  store i16 %120, ptr %116, align 2, !tbaa !63
  br i1 %112, label %121, label %122, !prof !50, !nosanitize !49

121:                                              ; preds = %113
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

122:                                              ; preds = %113
  %123 = add i32 %115, -1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %113, !llvm.loop !88

125:                                              ; preds = %122
  store i32 1, ptr %14, align 8, !tbaa !64
  %126 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %50, i32 %32), !nosanitize !49
  %127 = extractvalue { i32, i1 } %126, 1, !nosanitize !49
  br i1 %127, label %128, label %129, !prof !50, !nosanitize !49

128:                                              ; preds = %125
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

129:                                              ; preds = %125
  %130 = extractvalue { i32, i1 } %126, 0, !nosanitize !49
  br label %131

131:                                              ; preds = %129, %60
  %132 = phi i32 [ %130, %129 ], [ %50, %60 ]
  %133 = load ptr, ptr %0, align 8, !tbaa !20
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 8
  %135 = load i32, ptr %134, align 8, !tbaa !82
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %270, label %137

137:                                              ; preds = %131
  %138 = load ptr, ptr %7, align 8, !tbaa !39
  %139 = load i32, ptr %6, align 4, !tbaa !74
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds nuw i8, ptr %138, i64 %140
  %142 = load i32, ptr %3, align 4, !tbaa !76
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds nuw i8, ptr %141, i64 %143
  %145 = tail call i32 @llvm.umin.i32(i32 %135, i32 %132)
  %146 = icmp eq i32 %132, 0
  br i1 %146, label %177, label %147

147:                                              ; preds = %137
  %148 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %135, i32 %145), !nosanitize !49
  %149 = extractvalue { i32, i1 } %148, 1, !nosanitize !49
  br i1 %149, label %150, label %151, !prof !50, !nosanitize !49

150:                                              ; preds = %147
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

151:                                              ; preds = %147
  %152 = extractvalue { i32, i1 } %148, 0, !nosanitize !49
  store i32 %152, ptr %134, align 8, !tbaa !82
  %153 = load ptr, ptr %133, align 8, !tbaa !83
  %154 = zext i32 %145 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %144, ptr align 1 %153, i64 %154, i1 false)
  %155 = getelementptr inbounds nuw i8, ptr %133, i64 56
  %156 = load ptr, ptr %155, align 8, !tbaa !19
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 48
  %158 = load i32, ptr %157, align 8, !tbaa !30
  switch i32 %158, label %167 [
    i32 1, label %159
    i32 2, label %163
  ]

159:                                              ; preds = %151
  %160 = getelementptr inbounds nuw i8, ptr %133, i64 96
  %161 = load i64, ptr %160, align 8, !tbaa !60
  %162 = tail call i64 @adler32(i64 noundef %161, ptr noundef %144, i32 noundef %145) #12
  store i64 %162, ptr %160, align 8, !tbaa !60
  br label %167

163:                                              ; preds = %151
  %164 = getelementptr inbounds nuw i8, ptr %133, i64 96
  %165 = load i64, ptr %164, align 8, !tbaa !60
  %166 = tail call i64 @crc32(i64 noundef %165, ptr noundef %144, i32 noundef %145) #12
  store i64 %166, ptr %164, align 8, !tbaa !60
  br label %167

167:                                              ; preds = %163, %159, %151
  %168 = load ptr, ptr %133, align 8, !tbaa !83
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 %154
  store ptr %169, ptr %133, align 8, !tbaa !83
  %170 = getelementptr inbounds nuw i8, ptr %133, i64 16
  %171 = load i64, ptr %170, align 8, !tbaa !56
  %172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %171, i64 %154), !nosanitize !49
  %173 = extractvalue { i64, i1 } %172, 1, !nosanitize !49
  br i1 %173, label %174, label %175, !prof !50, !nosanitize !49

174:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

175:                                              ; preds = %167
  %176 = extractvalue { i64, i1 } %172, 0, !nosanitize !49
  store i64 %176, ptr %170, align 8, !tbaa !56
  br label %177

177:                                              ; preds = %175, %137
  %178 = phi i32 [ %145, %175 ], [ 0, %137 ]
  %179 = load i32, ptr %3, align 4, !tbaa !76
  %180 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %179, i32 %178), !nosanitize !49
  %181 = extractvalue { i32, i1 } %180, 1, !nosanitize !49
  br i1 %181, label %182, label %183, !prof !50, !nosanitize !49

182:                                              ; preds = %177
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

183:                                              ; preds = %177
  %184 = extractvalue { i32, i1 } %180, 0, !nosanitize !49
  store i32 %184, ptr %3, align 4, !tbaa !76
  %185 = load i32, ptr %10, align 4, !tbaa !77
  %186 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %185), !nosanitize !49
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !49
  br i1 %187, label %188, label %189, !prof !50, !nosanitize !49

188:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

189:                                              ; preds = %183
  %190 = extractvalue { i32, i1 } %186, 0, !nosanitize !49
  %191 = icmp ugt i32 %190, 2
  br i1 %191, label %192, label %263

192:                                              ; preds = %189
  %193 = load i32, ptr %6, align 4, !tbaa !74
  %194 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %193, i32 %185), !nosanitize !49
  %195 = extractvalue { i32, i1 } %194, 0, !nosanitize !49
  %196 = extractvalue { i32, i1 } %194, 1, !nosanitize !49
  br i1 %196, label %197, label %198, !prof !50, !nosanitize !49

197:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

198:                                              ; preds = %192
  %199 = load ptr, ptr %7, align 8, !tbaa !39
  %200 = zext i32 %195 to i64
  %201 = getelementptr inbounds nuw i8, ptr %199, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !8
  %203 = zext i8 %202 to i32
  store i32 %203, ptr %15, align 8, !tbaa !81
  %204 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 1), !nosanitize !49
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !49
  br i1 %205, label %206, label %207, !prof !50, !nosanitize !49

206:                                              ; preds = %198
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

207:                                              ; preds = %198
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !49
  %209 = load i32, ptr %16, align 8, !tbaa !38
  %210 = shl i32 %203, %209
  %211 = zext i32 %208 to i64
  %212 = getelementptr inbounds nuw i8, ptr %199, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !8
  %214 = zext i8 %213 to i32
  %215 = xor i32 %210, %214
  %216 = load i32, ptr %17, align 4, !tbaa !37
  %217 = and i32 %215, %216
  store i32 %217, ptr %15, align 8, !tbaa !81
  br label %218

218:                                              ; preds = %260, %207
  %219 = phi i32 [ %185, %207 ], [ %256, %260 ]
  %220 = phi i32 [ %195, %207 ], [ %252, %260 ]
  %221 = icmp eq i32 %219, 0
  br i1 %221, label %263, label %222

222:                                              ; preds = %218
  %223 = load i32, ptr %15, align 8, !tbaa !81
  %224 = shl i32 %223, %209
  %225 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %220, i32 3), !nosanitize !49
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !49
  br i1 %226, label %227, label %228, !prof !50, !nosanitize !49

227:                                              ; preds = %222
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

228:                                              ; preds = %222
  %229 = extractvalue { i32, i1 } %225, 0, !nosanitize !49
  %230 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %229, i32 1), !nosanitize !49
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !49
  br i1 %231, label %232, label %233, !prof !50, !nosanitize !49

232:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

233:                                              ; preds = %228
  %234 = extractvalue { i32, i1 } %230, 0, !nosanitize !49
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds nuw i8, ptr %199, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !8
  %238 = zext i8 %237 to i32
  %239 = xor i32 %224, %238
  %240 = and i32 %239, %216
  store i32 %240, ptr %15, align 8, !tbaa !81
  %241 = load ptr, ptr %12, align 8, !tbaa !41
  %242 = zext i32 %240 to i64
  %243 = getelementptr inbounds nuw [2 x i8], ptr %241, i64 %242
  %244 = load i16, ptr %243, align 2, !tbaa !63
  %245 = load ptr, ptr %13, align 8, !tbaa !40
  %246 = load i32, ptr %18, align 8, !tbaa !34
  %247 = and i32 %246, %220
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds nuw [2 x i8], ptr %245, i64 %248
  store i16 %244, ptr %249, align 2, !tbaa !63
  %250 = trunc i32 %220 to i16
  store i16 %250, ptr %243, align 2, !tbaa !63
  %251 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %220, i32 1), !nosanitize !49
  %252 = extractvalue { i32, i1 } %251, 0, !nosanitize !49
  %253 = extractvalue { i32, i1 } %251, 1, !nosanitize !49
  br i1 %253, label %254, label %255, !prof !50, !nosanitize !49

254:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

255:                                              ; preds = %233
  %256 = add i32 %219, -1
  store i32 %256, ptr %10, align 4, !tbaa !77
  %257 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %256), !nosanitize !49
  %258 = extractvalue { i32, i1 } %257, 1, !nosanitize !49
  br i1 %258, label %259, label %260, !prof !50, !nosanitize !49

259:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

260:                                              ; preds = %255
  %261 = extractvalue { i32, i1 } %257, 0, !nosanitize !49
  %262 = icmp ult i32 %261, 3
  br i1 %262, label %263, label %218, !llvm.loop !89

263:                                              ; preds = %260, %218, %189
  %264 = icmp ult i32 %184, 262
  br i1 %264, label %265, label %270

265:                                              ; preds = %263
  %266 = load ptr, ptr %0, align 8, !tbaa !20
  %267 = getelementptr inbounds nuw i8, ptr %266, i64 8
  %268 = load i32, ptr %267, align 8, !tbaa !82
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %34, !llvm.loop !90

270:                                              ; preds = %265, %263, %131
  %271 = load i64, ptr %19, align 8, !tbaa !42
  %272 = load i64, ptr %5, align 8, !tbaa !62
  %273 = icmp ult i64 %271, %272
  br i1 %273, label %274, label %313

274:                                              ; preds = %270
  %275 = load i32, ptr %6, align 4, !tbaa !74
  %276 = zext i32 %275 to i64
  %277 = load i32, ptr %3, align 4, !tbaa !76
  %278 = zext i32 %277 to i64
  %279 = add nuw nsw i64 %278, %276
  %280 = icmp ult i64 %271, %279
  br i1 %280, label %281, label %291

281:                                              ; preds = %274
  %282 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %272, i64 %279), !nosanitize !49
  %283 = extractvalue { i64, i1 } %282, 1, !nosanitize !49
  br i1 %283, label %284, label %285, !prof !50, !nosanitize !49

284:                                              ; preds = %281
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

285:                                              ; preds = %281
  %286 = extractvalue { i64, i1 } %282, 0, !nosanitize !49
  %287 = tail call i64 @llvm.umin.i64(i64 %286, i64 258)
  %288 = load ptr, ptr %7, align 8, !tbaa !39
  %289 = getelementptr inbounds nuw i8, ptr %288, i64 %279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %289, i8 0, i64 %287, i1 false)
  %290 = add nuw nsw i64 %287, %279
  br label %311

291:                                              ; preds = %274
  %292 = add nuw nsw i64 %279, 258
  %293 = icmp ult i64 %271, %292
  br i1 %293, label %294, label %313

294:                                              ; preds = %291
  %295 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %272, i64 %271), !nosanitize !49
  %296 = extractvalue { i64, i1 } %295, 1, !nosanitize !49
  br i1 %296, label %297, label %298, !prof !50, !nosanitize !49

297:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

298:                                              ; preds = %294
  %299 = sub nuw nsw i64 %292, %271
  %300 = extractvalue { i64, i1 } %295, 0, !nosanitize !49
  %301 = tail call i64 @llvm.umin.i64(i64 %299, i64 %300)
  %302 = load ptr, ptr %7, align 8, !tbaa !39
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 %271
  %304 = and i64 %301, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %303, i8 0, i64 %304, i1 false)
  %305 = load i64, ptr %19, align 8, !tbaa !42
  %306 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %305, i64 %301), !nosanitize !49
  %307 = extractvalue { i64, i1 } %306, 1, !nosanitize !49
  br i1 %307, label %308, label %309, !prof !50, !nosanitize !49

308:                                              ; preds = %298
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

309:                                              ; preds = %298
  %310 = extractvalue { i64, i1 } %306, 0, !nosanitize !49
  br label %311

311:                                              ; preds = %309, %285
  %312 = phi i64 [ %290, %285 ], [ %310, %309 ]
  store i64 %312, ptr %19, align 8, !tbaa !42
  br label %313

313:                                              ; preds = %311, %270, %291
  %314 = load i32, ptr %3, align 4, !tbaa !76
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = icmp eq i32 %1, 0
  br i1 %317, label %564, label %432

318:                                              ; preds = %313, %28
  store i32 0, ptr %20, align 8, !tbaa !79
  %319 = load ptr, ptr %21, align 8, !tbaa !39
  %320 = load i32, ptr %22, align 4, !tbaa !74
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds nuw i8, ptr %319, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !8
  %324 = load i32, ptr %24, align 4, !tbaa !122
  %325 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %324, i32 1), !nosanitize !49
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !49
  br i1 %326, label %327, label %328, !prof !50, !nosanitize !49

327:                                              ; preds = %318
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

328:                                              ; preds = %318
  %329 = extractvalue { i32, i1 } %325, 0, !nosanitize !49
  %330 = load ptr, ptr %23, align 8, !tbaa !48
  store i32 %329, ptr %24, align 4, !tbaa !122
  %331 = zext i32 %324 to i64
  %332 = getelementptr inbounds nuw i8, ptr %330, i64 %331
  store i8 0, ptr %332, align 1, !tbaa !8
  %333 = load i32, ptr %24, align 4, !tbaa !122
  %334 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %333, i32 1), !nosanitize !49
  %335 = extractvalue { i32, i1 } %334, 1, !nosanitize !49
  br i1 %335, label %336, label %337, !prof !50, !nosanitize !49

336:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

337:                                              ; preds = %328
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !49
  %339 = load ptr, ptr %23, align 8, !tbaa !48
  store i32 %338, ptr %24, align 4, !tbaa !122
  %340 = zext i32 %333 to i64
  %341 = getelementptr inbounds nuw i8, ptr %339, i64 %340
  store i8 0, ptr %341, align 1, !tbaa !8
  %342 = load i32, ptr %24, align 4, !tbaa !122
  %343 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %342, i32 1), !nosanitize !49
  %344 = extractvalue { i32, i1 } %343, 1, !nosanitize !49
  br i1 %344, label %345, label %346, !prof !50, !nosanitize !49

345:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

346:                                              ; preds = %337
  %347 = extractvalue { i32, i1 } %343, 0, !nosanitize !49
  %348 = load ptr, ptr %23, align 8, !tbaa !48
  store i32 %347, ptr %24, align 4, !tbaa !122
  %349 = zext i32 %342 to i64
  %350 = getelementptr inbounds nuw i8, ptr %348, i64 %349
  store i8 %323, ptr %350, align 1, !tbaa !8
  %351 = zext i8 %323 to i64
  %352 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %351
  %353 = load i16, ptr %352, align 4, !tbaa !8
  %354 = add i16 %353, 1
  store i16 %354, ptr %352, align 4, !tbaa !8
  %355 = load i32, ptr %24, align 4, !tbaa !122
  %356 = load i32, ptr %26, align 8, !tbaa !51
  %357 = icmp eq i32 %355, %356
  %358 = load i32, ptr %3, align 4, !tbaa !76
  %359 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %358, i32 1), !nosanitize !49
  %360 = extractvalue { i32, i1 } %359, 1, !nosanitize !49
  br i1 %360, label %361, label %362, !prof !50, !nosanitize !49

361:                                              ; preds = %346
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

362:                                              ; preds = %346
  %363 = extractvalue { i32, i1 } %359, 0, !nosanitize !49
  store i32 %363, ptr %3, align 4, !tbaa !76
  %364 = load i32, ptr %22, align 4, !tbaa !74
  %365 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %364, i32 1), !nosanitize !49
  %366 = extractvalue { i32, i1 } %365, 1, !nosanitize !49
  br i1 %366, label %367, label %368, !prof !50, !nosanitize !49

367:                                              ; preds = %362
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

368:                                              ; preds = %362
  %369 = extractvalue { i32, i1 } %365, 0, !nosanitize !49
  store i32 %369, ptr %22, align 4, !tbaa !74
  br i1 %357, label %370, label %431

370:                                              ; preds = %368
  %371 = load i64, ptr %27, align 8, !tbaa !75
  %372 = icmp sgt i64 %371, -1
  br i1 %372, label %373, label %377

373:                                              ; preds = %370
  %374 = load ptr, ptr %21, align 8, !tbaa !39
  %375 = and i64 %371, 4294967295
  %376 = getelementptr inbounds nuw i8, ptr %374, i64 %375
  br label %377

377:                                              ; preds = %370, %373
  %378 = phi ptr [ %376, %373 ], [ null, %370 ]
  %379 = zext i32 %369 to i64
  %380 = sub nsw i64 %379, %371
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %378, i64 noundef %380, i32 noundef 0) #12
  %381 = load i32, ptr %22, align 4, !tbaa !74
  %382 = zext i32 %381 to i64
  store i64 %382, ptr %27, align 8, !tbaa !75
  %383 = load ptr, ptr %0, align 8, !tbaa !20
  %384 = getelementptr inbounds nuw i8, ptr %383, i64 56
  %385 = load ptr, ptr %384, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %385) #12
  %386 = getelementptr inbounds nuw i8, ptr %385, i64 40
  %387 = load i64, ptr %386, align 8, !tbaa !58
  %388 = getelementptr inbounds nuw i8, ptr %383, i64 32
  %389 = load i32, ptr %388, align 8, !tbaa !100
  %390 = zext i32 %389 to i64
  %391 = tail call i64 @llvm.umin.i64(i64 %387, i64 %390)
  %392 = trunc nuw i64 %391 to i32
  %393 = icmp eq i64 %391, 0
  br i1 %393, label %426, label %394

394:                                              ; preds = %377
  %395 = getelementptr inbounds nuw i8, ptr %383, i64 24
  %396 = load ptr, ptr %395, align 8, !tbaa !99
  %397 = getelementptr inbounds nuw i8, ptr %385, i64 32
  %398 = load ptr, ptr %397, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %396, ptr align 1 %398, i64 %391, i1 false)
  %399 = load ptr, ptr %395, align 8, !tbaa !99
  %400 = getelementptr inbounds nuw i8, ptr %399, i64 %391
  store ptr %400, ptr %395, align 8, !tbaa !99
  %401 = load ptr, ptr %397, align 8, !tbaa !59
  %402 = getelementptr inbounds nuw i8, ptr %401, i64 %391
  store ptr %402, ptr %397, align 8, !tbaa !59
  %403 = getelementptr inbounds nuw i8, ptr %383, i64 40
  %404 = load i64, ptr %403, align 8, !tbaa !101
  %405 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %404, i64 %391), !nosanitize !49
  %406 = extractvalue { i64, i1 } %405, 1, !nosanitize !49
  br i1 %406, label %407, label %408, !prof !50, !nosanitize !49

407:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

408:                                              ; preds = %394
  %409 = extractvalue { i64, i1 } %405, 0, !nosanitize !49
  store i64 %409, ptr %403, align 8, !tbaa !101
  %410 = load i32, ptr %388, align 8, !tbaa !100
  %411 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %410, i32 %392), !nosanitize !49
  %412 = extractvalue { i32, i1 } %411, 1, !nosanitize !49
  br i1 %412, label %413, label %414, !prof !50, !nosanitize !49

413:                                              ; preds = %408
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

414:                                              ; preds = %408
  %415 = extractvalue { i32, i1 } %411, 0, !nosanitize !49
  store i32 %415, ptr %388, align 8, !tbaa !100
  %416 = load i64, ptr %386, align 8, !tbaa !58
  %417 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %416, i64 %391), !nosanitize !49
  %418 = extractvalue { i64, i1 } %417, 1, !nosanitize !49
  br i1 %418, label %419, label %420, !prof !50, !nosanitize !49

419:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

420:                                              ; preds = %414
  %421 = extractvalue { i64, i1 } %417, 0, !nosanitize !49
  store i64 %421, ptr %386, align 8, !tbaa !58
  %422 = icmp eq i64 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %420
  %424 = getelementptr inbounds nuw i8, ptr %385, i64 16
  %425 = load ptr, ptr %424, align 8, !tbaa !44
  store ptr %425, ptr %397, align 8, !tbaa !59
  br label %426

426:                                              ; preds = %377, %420, %423
  %427 = load ptr, ptr %0, align 8, !tbaa !20
  %428 = getelementptr inbounds nuw i8, ptr %427, i64 32
  %429 = load i32, ptr %428, align 8, !tbaa !100
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %564, label %431

431:                                              ; preds = %426, %368
  br label %28, !llvm.loop !123

432:                                              ; preds = %316
  store i32 0, ptr %10, align 4, !tbaa !77
  %433 = icmp eq i32 %1, 4
  br i1 %433, label %434, label %497

434:                                              ; preds = %432
  %435 = load i64, ptr %9, align 8, !tbaa !75
  %436 = icmp sgt i64 %435, -1
  br i1 %436, label %437, label %441

437:                                              ; preds = %434
  %438 = load ptr, ptr %7, align 8, !tbaa !39
  %439 = and i64 %435, 4294967295
  %440 = getelementptr inbounds nuw i8, ptr %438, i64 %439
  br label %441

441:                                              ; preds = %434, %437
  %442 = phi ptr [ %440, %437 ], [ null, %434 ]
  %443 = load i32, ptr %6, align 4, !tbaa !74
  %444 = zext i32 %443 to i64
  %445 = sub nsw i64 %444, %435
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %442, i64 noundef %445, i32 noundef 1) #12
  %446 = load i32, ptr %6, align 4, !tbaa !74
  %447 = zext i32 %446 to i64
  store i64 %447, ptr %9, align 8, !tbaa !75
  %448 = load ptr, ptr %0, align 8, !tbaa !20
  %449 = getelementptr inbounds nuw i8, ptr %448, i64 56
  %450 = load ptr, ptr %449, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %450) #12
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 40
  %452 = load i64, ptr %451, align 8, !tbaa !58
  %453 = getelementptr inbounds nuw i8, ptr %448, i64 32
  %454 = load i32, ptr %453, align 8, !tbaa !100
  %455 = zext i32 %454 to i64
  %456 = tail call i64 @llvm.umin.i64(i64 %452, i64 %455)
  %457 = trunc nuw i64 %456 to i32
  %458 = icmp eq i64 %456, 0
  br i1 %458, label %491, label %459

459:                                              ; preds = %441
  %460 = getelementptr inbounds nuw i8, ptr %448, i64 24
  %461 = load ptr, ptr %460, align 8, !tbaa !99
  %462 = getelementptr inbounds nuw i8, ptr %450, i64 32
  %463 = load ptr, ptr %462, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %461, ptr align 1 %463, i64 %456, i1 false)
  %464 = load ptr, ptr %460, align 8, !tbaa !99
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 %456
  store ptr %465, ptr %460, align 8, !tbaa !99
  %466 = load ptr, ptr %462, align 8, !tbaa !59
  %467 = getelementptr inbounds nuw i8, ptr %466, i64 %456
  store ptr %467, ptr %462, align 8, !tbaa !59
  %468 = getelementptr inbounds nuw i8, ptr %448, i64 40
  %469 = load i64, ptr %468, align 8, !tbaa !101
  %470 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %469, i64 %456), !nosanitize !49
  %471 = extractvalue { i64, i1 } %470, 1, !nosanitize !49
  br i1 %471, label %472, label %473, !prof !50, !nosanitize !49

472:                                              ; preds = %459
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

473:                                              ; preds = %459
  %474 = extractvalue { i64, i1 } %470, 0, !nosanitize !49
  store i64 %474, ptr %468, align 8, !tbaa !101
  %475 = load i32, ptr %453, align 8, !tbaa !100
  %476 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %475, i32 %457), !nosanitize !49
  %477 = extractvalue { i32, i1 } %476, 1, !nosanitize !49
  br i1 %477, label %478, label %479, !prof !50, !nosanitize !49

478:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

479:                                              ; preds = %473
  %480 = extractvalue { i32, i1 } %476, 0, !nosanitize !49
  store i32 %480, ptr %453, align 8, !tbaa !100
  %481 = load i64, ptr %451, align 8, !tbaa !58
  %482 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %481, i64 %456), !nosanitize !49
  %483 = extractvalue { i64, i1 } %482, 1, !nosanitize !49
  br i1 %483, label %484, label %485, !prof !50, !nosanitize !49

484:                                              ; preds = %479
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

485:                                              ; preds = %479
  %486 = extractvalue { i64, i1 } %482, 0, !nosanitize !49
  store i64 %486, ptr %451, align 8, !tbaa !58
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %485
  %489 = getelementptr inbounds nuw i8, ptr %450, i64 16
  %490 = load ptr, ptr %489, align 8, !tbaa !44
  store ptr %490, ptr %462, align 8, !tbaa !59
  br label %491

491:                                              ; preds = %441, %485, %488
  %492 = load ptr, ptr %0, align 8, !tbaa !20
  %493 = getelementptr inbounds nuw i8, ptr %492, i64 32
  %494 = load i32, ptr %493, align 8, !tbaa !100
  %495 = icmp eq i32 %494, 0
  %496 = select i1 %495, i32 2, i32 3
  br label %564

497:                                              ; preds = %432
  %498 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %499 = load i32, ptr %498, align 4, !tbaa !122
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %563, label %501

501:                                              ; preds = %497
  %502 = load i64, ptr %9, align 8, !tbaa !75
  %503 = icmp sgt i64 %502, -1
  br i1 %503, label %504, label %508

504:                                              ; preds = %501
  %505 = load ptr, ptr %7, align 8, !tbaa !39
  %506 = and i64 %502, 4294967295
  %507 = getelementptr inbounds nuw i8, ptr %505, i64 %506
  br label %508

508:                                              ; preds = %501, %504
  %509 = phi ptr [ %507, %504 ], [ null, %501 ]
  %510 = load i32, ptr %6, align 4, !tbaa !74
  %511 = zext i32 %510 to i64
  %512 = sub nsw i64 %511, %502
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %509, i64 noundef %512, i32 noundef 0) #12
  %513 = load i32, ptr %6, align 4, !tbaa !74
  %514 = zext i32 %513 to i64
  store i64 %514, ptr %9, align 8, !tbaa !75
  %515 = load ptr, ptr %0, align 8, !tbaa !20
  %516 = getelementptr inbounds nuw i8, ptr %515, i64 56
  %517 = load ptr, ptr %516, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %517) #12
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 40
  %519 = load i64, ptr %518, align 8, !tbaa !58
  %520 = getelementptr inbounds nuw i8, ptr %515, i64 32
  %521 = load i32, ptr %520, align 8, !tbaa !100
  %522 = zext i32 %521 to i64
  %523 = tail call i64 @llvm.umin.i64(i64 %519, i64 %522)
  %524 = trunc nuw i64 %523 to i32
  %525 = icmp eq i64 %523, 0
  br i1 %525, label %558, label %526

526:                                              ; preds = %508
  %527 = getelementptr inbounds nuw i8, ptr %515, i64 24
  %528 = load ptr, ptr %527, align 8, !tbaa !99
  %529 = getelementptr inbounds nuw i8, ptr %517, i64 32
  %530 = load ptr, ptr %529, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %528, ptr align 1 %530, i64 %523, i1 false)
  %531 = load ptr, ptr %527, align 8, !tbaa !99
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 %523
  store ptr %532, ptr %527, align 8, !tbaa !99
  %533 = load ptr, ptr %529, align 8, !tbaa !59
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 %523
  store ptr %534, ptr %529, align 8, !tbaa !59
  %535 = getelementptr inbounds nuw i8, ptr %515, i64 40
  %536 = load i64, ptr %535, align 8, !tbaa !101
  %537 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %536, i64 %523), !nosanitize !49
  %538 = extractvalue { i64, i1 } %537, 1, !nosanitize !49
  br i1 %538, label %539, label %540, !prof !50, !nosanitize !49

539:                                              ; preds = %526
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

540:                                              ; preds = %526
  %541 = extractvalue { i64, i1 } %537, 0, !nosanitize !49
  store i64 %541, ptr %535, align 8, !tbaa !101
  %542 = load i32, ptr %520, align 8, !tbaa !100
  %543 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %542, i32 %524), !nosanitize !49
  %544 = extractvalue { i32, i1 } %543, 1, !nosanitize !49
  br i1 %544, label %545, label %546, !prof !50, !nosanitize !49

545:                                              ; preds = %540
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

546:                                              ; preds = %540
  %547 = extractvalue { i32, i1 } %543, 0, !nosanitize !49
  store i32 %547, ptr %520, align 8, !tbaa !100
  %548 = load i64, ptr %518, align 8, !tbaa !58
  %549 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %548, i64 %523), !nosanitize !49
  %550 = extractvalue { i64, i1 } %549, 1, !nosanitize !49
  br i1 %550, label %551, label %552, !prof !50, !nosanitize !49

551:                                              ; preds = %546
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

552:                                              ; preds = %546
  %553 = extractvalue { i64, i1 } %549, 0, !nosanitize !49
  store i64 %553, ptr %518, align 8, !tbaa !58
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %555, label %558

555:                                              ; preds = %552
  %556 = getelementptr inbounds nuw i8, ptr %517, i64 16
  %557 = load ptr, ptr %556, align 8, !tbaa !44
  store ptr %557, ptr %529, align 8, !tbaa !59
  br label %558

558:                                              ; preds = %508, %552, %555
  %559 = load ptr, ptr %0, align 8, !tbaa !20
  %560 = getelementptr inbounds nuw i8, ptr %559, i64 32
  %561 = load i32, ptr %560, align 8, !tbaa !100
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %564, label %563

563:                                              ; preds = %558, %497
  br label %564

564:                                              ; preds = %426, %558, %491, %316, %563
  %565 = phi i32 [ 0, %316 ], [ %496, %491 ], [ 0, %558 ], [ 1, %563 ], [ 0, %426 ]
  ret i32 %565
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_rle(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %32 = getelementptr i8, ptr %0, i64 1240
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 172
  br label %39

39:                                               ; preds = %596, %2
  %40 = load i32, ptr %3, align 4, !tbaa !76
  %41 = icmp ult i32 %40, 259
  br i1 %41, label %42, label %330

42:                                               ; preds = %39
  %43 = load i32, ptr %4, align 8, !tbaa !33
  %44 = zext i32 %43 to i64
  br label %45

45:                                               ; preds = %276, %42
  %46 = load i64, ptr %5, align 8, !tbaa !62
  %47 = load i32, ptr %3, align 4, !tbaa !76
  %48 = zext i32 %47 to i64
  %49 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %46, i64 %48), !nosanitize !49
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !49
  br i1 %50, label %51, label %52, !prof !50, !nosanitize !49

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

52:                                               ; preds = %45
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !49
  %54 = load i32, ptr %6, align 4, !tbaa !74
  %55 = zext i32 %54 to i64
  %56 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %53, i64 %55), !nosanitize !49
  %57 = extractvalue { i64, i1 } %56, 1, !nosanitize !49
  br i1 %57, label %58, label %59, !prof !50, !nosanitize !49

58:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

59:                                               ; preds = %52
  %60 = extractvalue { i64, i1 } %56, 0, !nosanitize !49
  %61 = trunc i64 %60 to i32
  %62 = load i32, ptr %4, align 8, !tbaa !33
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %62, i32 262), !nosanitize !49
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !49
  br i1 %64, label %65, label %66, !prof !50, !nosanitize !49

65:                                               ; preds = %59
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

66:                                               ; preds = %59
  %67 = extractvalue { i32, i1 } %63, 0, !nosanitize !49
  %68 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %67), !nosanitize !49
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !49
  br i1 %69, label %70, label %71, !prof !50, !nosanitize !49

70:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

71:                                               ; preds = %66
  %72 = extractvalue { i32, i1 } %68, 0, !nosanitize !49
  %73 = icmp ult i32 %54, %72
  br i1 %73, label %142, label %74

74:                                               ; preds = %71
  %75 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %43, i32 %61), !nosanitize !49
  %76 = extractvalue { i32, i1 } %75, 1, !nosanitize !49
  br i1 %76, label %77, label %78, !prof !50, !nosanitize !49

77:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

78:                                               ; preds = %74
  %79 = extractvalue { i32, i1 } %75, 0, !nosanitize !49
  %80 = load ptr, ptr %7, align 8, !tbaa !39
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 %44
  %82 = zext i32 %79 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %80, ptr align 1 %81, i64 %82, i1 false)
  %83 = load i32, ptr %8, align 8, !tbaa !84
  %84 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %83, i32 %43), !nosanitize !49
  %85 = extractvalue { i32, i1 } %84, 1, !nosanitize !49
  br i1 %85, label %86, label %87, !prof !50, !nosanitize !49

86:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

87:                                               ; preds = %78
  %88 = extractvalue { i32, i1 } %84, 0, !nosanitize !49
  store i32 %88, ptr %8, align 8, !tbaa !84
  %89 = load i32, ptr %6, align 4, !tbaa !74
  %90 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %89, i32 %43), !nosanitize !49
  %91 = extractvalue { i32, i1 } %90, 1, !nosanitize !49
  br i1 %91, label %92, label %93, !prof !50, !nosanitize !49

92:                                               ; preds = %87
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

93:                                               ; preds = %87
  %94 = extractvalue { i32, i1 } %90, 0, !nosanitize !49
  store i32 %94, ptr %6, align 4, !tbaa !74
  %95 = load i64, ptr %9, align 8, !tbaa !75
  %96 = sub nsw i64 %95, %44
  store i64 %96, ptr %9, align 8, !tbaa !75
  %97 = load i32, ptr %10, align 4, !tbaa !77
  %98 = icmp ugt i32 %97, %94
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 %94, ptr %10, align 4, !tbaa !77
  br label %100

100:                                              ; preds = %99, %93
  %101 = load i32, ptr %4, align 8, !tbaa !33
  %102 = load i32, ptr %11, align 4, !tbaa !36
  %103 = load ptr, ptr %12, align 8, !tbaa !41
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds nuw [2 x i8], ptr %103, i64 %104
  %106 = icmp eq i32 %102, 0
  br label %107

107:                                              ; preds = %116, %100
  %108 = phi ptr [ %105, %100 ], [ %110, %116 ]
  %109 = phi i32 [ %102, %100 ], [ %117, %116 ]
  %110 = getelementptr inbounds i8, ptr %108, i64 -2
  %111 = load i16, ptr %110, align 2, !tbaa !63
  %112 = zext i16 %111 to i32
  %113 = tail call i32 @llvm.usub.sat.i32(i32 %112, i32 %101)
  %114 = trunc nuw i32 %113 to i16
  store i16 %114, ptr %110, align 2, !tbaa !63
  br i1 %106, label %115, label %116, !prof !50, !nosanitize !49

115:                                              ; preds = %107
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

116:                                              ; preds = %107
  %117 = add i32 %109, -1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %107, !llvm.loop !85

119:                                              ; preds = %116
  %120 = load ptr, ptr %13, align 8, !tbaa !40
  %121 = zext i32 %101 to i64
  %122 = getelementptr inbounds nuw [2 x i8], ptr %120, i64 %121
  %123 = icmp eq i32 %101, 0
  br label %124

124:                                              ; preds = %133, %119
  %125 = phi ptr [ %122, %119 ], [ %127, %133 ]
  %126 = phi i32 [ %101, %119 ], [ %134, %133 ]
  %127 = getelementptr inbounds i8, ptr %125, i64 -2
  %128 = load i16, ptr %127, align 2, !tbaa !63
  %129 = zext i16 %128 to i32
  %130 = tail call i32 @llvm.usub.sat.i32(i32 %129, i32 %101)
  %131 = trunc nuw i32 %130 to i16
  store i16 %131, ptr %127, align 2, !tbaa !63
  br i1 %123, label %132, label %133, !prof !50, !nosanitize !49

132:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

133:                                              ; preds = %124
  %134 = add i32 %126, -1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %124, !llvm.loop !88

136:                                              ; preds = %133
  store i32 1, ptr %14, align 8, !tbaa !64
  %137 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %61, i32 %43), !nosanitize !49
  %138 = extractvalue { i32, i1 } %137, 1, !nosanitize !49
  br i1 %138, label %139, label %140, !prof !50, !nosanitize !49

139:                                              ; preds = %136
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

140:                                              ; preds = %136
  %141 = extractvalue { i32, i1 } %137, 0, !nosanitize !49
  br label %142

142:                                              ; preds = %140, %71
  %143 = phi i32 [ %141, %140 ], [ %61, %71 ]
  %144 = load ptr, ptr %0, align 8, !tbaa !20
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 8
  %146 = load i32, ptr %145, align 8, !tbaa !82
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %281, label %148

148:                                              ; preds = %142
  %149 = load ptr, ptr %7, align 8, !tbaa !39
  %150 = load i32, ptr %6, align 4, !tbaa !74
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds nuw i8, ptr %149, i64 %151
  %153 = load i32, ptr %3, align 4, !tbaa !76
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 %154
  %156 = tail call i32 @llvm.umin.i32(i32 %146, i32 %143)
  %157 = icmp eq i32 %143, 0
  br i1 %157, label %188, label %158

158:                                              ; preds = %148
  %159 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %146, i32 %156), !nosanitize !49
  %160 = extractvalue { i32, i1 } %159, 1, !nosanitize !49
  br i1 %160, label %161, label %162, !prof !50, !nosanitize !49

161:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

162:                                              ; preds = %158
  %163 = extractvalue { i32, i1 } %159, 0, !nosanitize !49
  store i32 %163, ptr %145, align 8, !tbaa !82
  %164 = load ptr, ptr %144, align 8, !tbaa !83
  %165 = zext i32 %156 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %155, ptr align 1 %164, i64 %165, i1 false)
  %166 = getelementptr inbounds nuw i8, ptr %144, i64 56
  %167 = load ptr, ptr %166, align 8, !tbaa !19
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 48
  %169 = load i32, ptr %168, align 8, !tbaa !30
  switch i32 %169, label %178 [
    i32 1, label %170
    i32 2, label %174
  ]

170:                                              ; preds = %162
  %171 = getelementptr inbounds nuw i8, ptr %144, i64 96
  %172 = load i64, ptr %171, align 8, !tbaa !60
  %173 = tail call i64 @adler32(i64 noundef %172, ptr noundef %155, i32 noundef %156) #12
  store i64 %173, ptr %171, align 8, !tbaa !60
  br label %178

174:                                              ; preds = %162
  %175 = getelementptr inbounds nuw i8, ptr %144, i64 96
  %176 = load i64, ptr %175, align 8, !tbaa !60
  %177 = tail call i64 @crc32(i64 noundef %176, ptr noundef %155, i32 noundef %156) #12
  store i64 %177, ptr %175, align 8, !tbaa !60
  br label %178

178:                                              ; preds = %174, %170, %162
  %179 = load ptr, ptr %144, align 8, !tbaa !83
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 %165
  store ptr %180, ptr %144, align 8, !tbaa !83
  %181 = getelementptr inbounds nuw i8, ptr %144, i64 16
  %182 = load i64, ptr %181, align 8, !tbaa !56
  %183 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %182, i64 %165), !nosanitize !49
  %184 = extractvalue { i64, i1 } %183, 1, !nosanitize !49
  br i1 %184, label %185, label %186, !prof !50, !nosanitize !49

185:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

186:                                              ; preds = %178
  %187 = extractvalue { i64, i1 } %183, 0, !nosanitize !49
  store i64 %187, ptr %181, align 8, !tbaa !56
  br label %188

188:                                              ; preds = %186, %148
  %189 = phi i32 [ %156, %186 ], [ 0, %148 ]
  %190 = load i32, ptr %3, align 4, !tbaa !76
  %191 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %190, i32 %189), !nosanitize !49
  %192 = extractvalue { i32, i1 } %191, 1, !nosanitize !49
  br i1 %192, label %193, label %194, !prof !50, !nosanitize !49

193:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

194:                                              ; preds = %188
  %195 = extractvalue { i32, i1 } %191, 0, !nosanitize !49
  store i32 %195, ptr %3, align 4, !tbaa !76
  %196 = load i32, ptr %10, align 4, !tbaa !77
  %197 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %196), !nosanitize !49
  %198 = extractvalue { i32, i1 } %197, 1, !nosanitize !49
  br i1 %198, label %199, label %200, !prof !50, !nosanitize !49

199:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

200:                                              ; preds = %194
  %201 = extractvalue { i32, i1 } %197, 0, !nosanitize !49
  %202 = icmp ugt i32 %201, 2
  br i1 %202, label %203, label %274

203:                                              ; preds = %200
  %204 = load i32, ptr %6, align 4, !tbaa !74
  %205 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %204, i32 %196), !nosanitize !49
  %206 = extractvalue { i32, i1 } %205, 0, !nosanitize !49
  %207 = extractvalue { i32, i1 } %205, 1, !nosanitize !49
  br i1 %207, label %208, label %209, !prof !50, !nosanitize !49

208:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

209:                                              ; preds = %203
  %210 = load ptr, ptr %7, align 8, !tbaa !39
  %211 = zext i32 %206 to i64
  %212 = getelementptr inbounds nuw i8, ptr %210, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !8
  %214 = zext i8 %213 to i32
  store i32 %214, ptr %15, align 8, !tbaa !81
  %215 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %206, i32 1), !nosanitize !49
  %216 = extractvalue { i32, i1 } %215, 1, !nosanitize !49
  br i1 %216, label %217, label %218, !prof !50, !nosanitize !49

217:                                              ; preds = %209
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

218:                                              ; preds = %209
  %219 = extractvalue { i32, i1 } %215, 0, !nosanitize !49
  %220 = load i32, ptr %16, align 8, !tbaa !38
  %221 = shl i32 %214, %220
  %222 = zext i32 %219 to i64
  %223 = getelementptr inbounds nuw i8, ptr %210, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !8
  %225 = zext i8 %224 to i32
  %226 = xor i32 %221, %225
  %227 = load i32, ptr %17, align 4, !tbaa !37
  %228 = and i32 %226, %227
  store i32 %228, ptr %15, align 8, !tbaa !81
  br label %229

229:                                              ; preds = %271, %218
  %230 = phi i32 [ %196, %218 ], [ %267, %271 ]
  %231 = phi i32 [ %206, %218 ], [ %263, %271 ]
  %232 = icmp eq i32 %230, 0
  br i1 %232, label %274, label %233

233:                                              ; preds = %229
  %234 = load i32, ptr %15, align 8, !tbaa !81
  %235 = shl i32 %234, %220
  %236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 3), !nosanitize !49
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !49
  br i1 %237, label %238, label %239, !prof !50, !nosanitize !49

238:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

239:                                              ; preds = %233
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !49
  %241 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %240, i32 1), !nosanitize !49
  %242 = extractvalue { i32, i1 } %241, 1, !nosanitize !49
  br i1 %242, label %243, label %244, !prof !50, !nosanitize !49

243:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

244:                                              ; preds = %239
  %245 = extractvalue { i32, i1 } %241, 0, !nosanitize !49
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds nuw i8, ptr %210, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !8
  %249 = zext i8 %248 to i32
  %250 = xor i32 %235, %249
  %251 = and i32 %250, %227
  store i32 %251, ptr %15, align 8, !tbaa !81
  %252 = load ptr, ptr %12, align 8, !tbaa !41
  %253 = zext i32 %251 to i64
  %254 = getelementptr inbounds nuw [2 x i8], ptr %252, i64 %253
  %255 = load i16, ptr %254, align 2, !tbaa !63
  %256 = load ptr, ptr %13, align 8, !tbaa !40
  %257 = load i32, ptr %18, align 8, !tbaa !34
  %258 = and i32 %257, %231
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds nuw [2 x i8], ptr %256, i64 %259
  store i16 %255, ptr %260, align 2, !tbaa !63
  %261 = trunc i32 %231 to i16
  store i16 %261, ptr %254, align 2, !tbaa !63
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 1), !nosanitize !49
  %263 = extractvalue { i32, i1 } %262, 0, !nosanitize !49
  %264 = extractvalue { i32, i1 } %262, 1, !nosanitize !49
  br i1 %264, label %265, label %266, !prof !50, !nosanitize !49

265:                                              ; preds = %244
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

266:                                              ; preds = %244
  %267 = add i32 %230, -1
  store i32 %267, ptr %10, align 4, !tbaa !77
  %268 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %267), !nosanitize !49
  %269 = extractvalue { i32, i1 } %268, 1, !nosanitize !49
  br i1 %269, label %270, label %271, !prof !50, !nosanitize !49

270:                                              ; preds = %266
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

271:                                              ; preds = %266
  %272 = extractvalue { i32, i1 } %268, 0, !nosanitize !49
  %273 = icmp ult i32 %272, 3
  br i1 %273, label %274, label %229, !llvm.loop !89

274:                                              ; preds = %271, %229, %200
  %275 = icmp ult i32 %195, 262
  br i1 %275, label %276, label %281

276:                                              ; preds = %274
  %277 = load ptr, ptr %0, align 8, !tbaa !20
  %278 = getelementptr inbounds nuw i8, ptr %277, i64 8
  %279 = load i32, ptr %278, align 8, !tbaa !82
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %45, !llvm.loop !90

281:                                              ; preds = %276, %274, %142
  %282 = load i64, ptr %19, align 8, !tbaa !42
  %283 = load i64, ptr %5, align 8, !tbaa !62
  %284 = icmp ult i64 %282, %283
  br i1 %284, label %285, label %324

285:                                              ; preds = %281
  %286 = load i32, ptr %6, align 4, !tbaa !74
  %287 = zext i32 %286 to i64
  %288 = load i32, ptr %3, align 4, !tbaa !76
  %289 = zext i32 %288 to i64
  %290 = add nuw nsw i64 %289, %287
  %291 = icmp ult i64 %282, %290
  br i1 %291, label %292, label %302

292:                                              ; preds = %285
  %293 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %283, i64 %290), !nosanitize !49
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !49
  br i1 %294, label %295, label %296, !prof !50, !nosanitize !49

295:                                              ; preds = %292
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

296:                                              ; preds = %292
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !49
  %298 = tail call i64 @llvm.umin.i64(i64 %297, i64 258)
  %299 = load ptr, ptr %7, align 8, !tbaa !39
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 %290
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %300, i8 0, i64 %298, i1 false)
  %301 = add nuw nsw i64 %298, %290
  br label %322

302:                                              ; preds = %285
  %303 = add nuw nsw i64 %290, 258
  %304 = icmp ult i64 %282, %303
  br i1 %304, label %305, label %324

305:                                              ; preds = %302
  %306 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %283, i64 %282), !nosanitize !49
  %307 = extractvalue { i64, i1 } %306, 1, !nosanitize !49
  br i1 %307, label %308, label %309, !prof !50, !nosanitize !49

308:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

309:                                              ; preds = %305
  %310 = sub nuw nsw i64 %303, %282
  %311 = extractvalue { i64, i1 } %306, 0, !nosanitize !49
  %312 = tail call i64 @llvm.umin.i64(i64 %310, i64 %311)
  %313 = load ptr, ptr %7, align 8, !tbaa !39
  %314 = getelementptr inbounds nuw i8, ptr %313, i64 %282
  %315 = and i64 %312, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %314, i8 0, i64 %315, i1 false)
  %316 = load i64, ptr %19, align 8, !tbaa !42
  %317 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %316, i64 %312), !nosanitize !49
  %318 = extractvalue { i64, i1 } %317, 1, !nosanitize !49
  br i1 %318, label %319, label %320, !prof !50, !nosanitize !49

319:                                              ; preds = %309
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

320:                                              ; preds = %309
  %321 = extractvalue { i64, i1 } %317, 0, !nosanitize !49
  br label %322

322:                                              ; preds = %320, %296
  %323 = phi i64 [ %301, %296 ], [ %321, %320 ]
  store i64 %323, ptr %19, align 8, !tbaa !42
  br label %324

324:                                              ; preds = %322, %281, %302
  %325 = load i32, ptr %3, align 4, !tbaa !76
  %326 = icmp ult i32 %325, 259
  %327 = and i1 %20, %326
  br i1 %327, label %729, label %328

328:                                              ; preds = %324
  %329 = icmp eq i32 %325, 0
  br i1 %329, label %597, label %330

330:                                              ; preds = %328, %39
  store i32 0, ptr %21, align 8, !tbaa !79
  %331 = load i32, ptr %3, align 4, !tbaa !76
  %332 = icmp ugt i32 %331, 2
  br i1 %332, label %333, label %419

333:                                              ; preds = %330
  %334 = load i32, ptr %22, align 4, !tbaa !74
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %419, label %336

336:                                              ; preds = %333
  %337 = load ptr, ptr %23, align 8, !tbaa !39
  %338 = zext i32 %334 to i64
  %339 = getelementptr inbounds nuw i8, ptr %337, i64 %338
  %340 = getelementptr inbounds i8, ptr %339, i64 -1
  %341 = load i8, ptr %340, align 1, !tbaa !8
  %342 = load i8, ptr %339, align 1, !tbaa !8
  %343 = icmp eq i8 %341, %342
  br i1 %343, label %344, label %419

344:                                              ; preds = %336
  %345 = getelementptr inbounds nuw i8, ptr %339, i64 1
  %346 = load i8, ptr %345, align 1, !tbaa !8
  %347 = icmp eq i8 %341, %346
  br i1 %347, label %348, label %419

348:                                              ; preds = %344
  %349 = getelementptr inbounds nuw i8, ptr %339, i64 2
  %350 = load i8, ptr %349, align 1, !tbaa !8
  %351 = icmp eq i8 %341, %350
  br i1 %351, label %352, label %419

352:                                              ; preds = %348
  %353 = getelementptr inbounds nuw i8, ptr %339, i64 258
  br label %354

354:                                              ; preds = %384, %352
  %355 = phi i64 [ 2, %352 ], [ %385, %384 ]
  %356 = getelementptr inbounds nuw i8, ptr %339, i64 %355
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 1
  %358 = load i8, ptr %357, align 1, !tbaa !8
  %359 = icmp eq i8 %341, %358
  br i1 %359, label %360, label %405

360:                                              ; preds = %354
  %361 = getelementptr inbounds nuw i8, ptr %356, i64 2
  %362 = load i8, ptr %361, align 1, !tbaa !8
  %363 = icmp eq i8 %341, %362
  br i1 %363, label %364, label %403

364:                                              ; preds = %360
  %365 = getelementptr inbounds nuw i8, ptr %356, i64 3
  %366 = load i8, ptr %365, align 1, !tbaa !8
  %367 = icmp eq i8 %341, %366
  br i1 %367, label %368, label %401

368:                                              ; preds = %364
  %369 = getelementptr inbounds nuw i8, ptr %356, i64 4
  %370 = load i8, ptr %369, align 1, !tbaa !8
  %371 = icmp eq i8 %341, %370
  br i1 %371, label %372, label %399

372:                                              ; preds = %368
  %373 = getelementptr inbounds nuw i8, ptr %356, i64 5
  %374 = load i8, ptr %373, align 1, !tbaa !8
  %375 = icmp eq i8 %341, %374
  br i1 %375, label %376, label %397

376:                                              ; preds = %372
  %377 = getelementptr inbounds nuw i8, ptr %356, i64 6
  %378 = load i8, ptr %377, align 1, !tbaa !8
  %379 = icmp eq i8 %341, %378
  br i1 %379, label %380, label %395

380:                                              ; preds = %376
  %381 = getelementptr inbounds nuw i8, ptr %356, i64 7
  %382 = load i8, ptr %381, align 1, !tbaa !8
  %383 = icmp eq i8 %341, %382
  br i1 %383, label %384, label %393

384:                                              ; preds = %380
  %385 = add nuw nsw i64 %355, 8
  %386 = getelementptr inbounds nuw i8, ptr %339, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !8
  %388 = icmp eq i8 %341, %387
  %389 = icmp samesign ult i64 %355, 250
  %390 = select i1 %388, i1 %389, i1 false
  br i1 %390, label %354, label %391, !llvm.loop !124

391:                                              ; preds = %384
  %392 = getelementptr inbounds nuw i8, ptr %339, i64 %385
  br label %407

393:                                              ; preds = %380
  %394 = getelementptr inbounds nuw i8, ptr %356, i64 7
  br label %407

395:                                              ; preds = %376
  %396 = getelementptr inbounds nuw i8, ptr %356, i64 6
  br label %407

397:                                              ; preds = %372
  %398 = getelementptr inbounds nuw i8, ptr %356, i64 5
  br label %407

399:                                              ; preds = %368
  %400 = getelementptr inbounds nuw i8, ptr %356, i64 4
  br label %407

401:                                              ; preds = %364
  %402 = getelementptr inbounds nuw i8, ptr %356, i64 3
  br label %407

403:                                              ; preds = %360
  %404 = getelementptr inbounds nuw i8, ptr %356, i64 2
  br label %407

405:                                              ; preds = %354
  %406 = getelementptr inbounds nuw i8, ptr %356, i64 1
  br label %407

407:                                              ; preds = %405, %403, %401, %399, %397, %395, %393, %391
  %408 = phi ptr [ %404, %403 ], [ %402, %401 ], [ %392, %391 ], [ %394, %393 ], [ %396, %395 ], [ %398, %397 ], [ %400, %399 ], [ %406, %405 ]
  %409 = ptrtoint ptr %353 to i64
  %410 = ptrtoint ptr %408 to i64
  %411 = sub i64 %409, %410
  %412 = trunc i64 %411 to i32
  %413 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %412), !nosanitize !49
  %414 = extractvalue { i32, i1 } %413, 1, !nosanitize !49
  br i1 %414, label %415, label %416, !prof !50, !nosanitize !49

415:                                              ; preds = %407
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

416:                                              ; preds = %407
  %417 = extractvalue { i32, i1 } %413, 0, !nosanitize !49
  %418 = tail call i32 @llvm.umin.i32(i32 %417, i32 %331)
  store i32 %418, ptr %21, align 8
  br label %419

419:                                              ; preds = %416, %336, %344, %348, %333, %330
  %420 = load i32, ptr %21, align 8, !tbaa !79
  %421 = icmp ugt i32 %420, 2
  br i1 %421, label %422, label %480

422:                                              ; preds = %419
  %423 = trunc i32 %420 to i8
  %424 = add i8 %423, -3
  %425 = load i32, ptr %31, align 4, !tbaa !122
  %426 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %425, i32 1), !nosanitize !49
  %427 = extractvalue { i32, i1 } %426, 1, !nosanitize !49
  br i1 %427, label %428, label %429, !prof !50, !nosanitize !49

428:                                              ; preds = %422
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

429:                                              ; preds = %422
  %430 = extractvalue { i32, i1 } %426, 0, !nosanitize !49
  %431 = load ptr, ptr %30, align 8, !tbaa !48
  store i32 %430, ptr %31, align 4, !tbaa !122
  %432 = zext i32 %425 to i64
  %433 = getelementptr inbounds nuw i8, ptr %431, i64 %432
  store i8 1, ptr %433, align 1, !tbaa !8
  %434 = load i32, ptr %31, align 4, !tbaa !122
  %435 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %434, i32 1), !nosanitize !49
  %436 = extractvalue { i32, i1 } %435, 1, !nosanitize !49
  br i1 %436, label %437, label %438, !prof !50, !nosanitize !49

437:                                              ; preds = %429
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

438:                                              ; preds = %429
  %439 = extractvalue { i32, i1 } %435, 0, !nosanitize !49
  %440 = load ptr, ptr %30, align 8, !tbaa !48
  store i32 %439, ptr %31, align 4, !tbaa !122
  %441 = zext i32 %434 to i64
  %442 = getelementptr inbounds nuw i8, ptr %440, i64 %441
  store i8 0, ptr %442, align 1, !tbaa !8
  %443 = load i32, ptr %31, align 4, !tbaa !122
  %444 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %443, i32 1), !nosanitize !49
  %445 = extractvalue { i32, i1 } %444, 1, !nosanitize !49
  br i1 %445, label %446, label %447, !prof !50, !nosanitize !49

446:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

447:                                              ; preds = %438
  %448 = extractvalue { i32, i1 } %444, 0, !nosanitize !49
  %449 = load ptr, ptr %30, align 8, !tbaa !48
  store i32 %448, ptr %31, align 4, !tbaa !122
  %450 = zext i32 %443 to i64
  %451 = getelementptr inbounds nuw i8, ptr %449, i64 %450
  store i8 %424, ptr %451, align 1, !tbaa !8
  %452 = zext i8 %424 to i64
  %453 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !8
  %455 = zext i8 %454 to i64
  %456 = getelementptr [4 x i8], ptr %32, i64 %455
  %457 = load i16, ptr %456, align 4, !tbaa !8
  %458 = add i16 %457, 1
  store i16 %458, ptr %456, align 4, !tbaa !8
  %459 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %460 = zext i8 %459 to i64
  %461 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %460
  %462 = load i16, ptr %461, align 4, !tbaa !8
  %463 = add i16 %462, 1
  store i16 %463, ptr %461, align 4, !tbaa !8
  %464 = load i32, ptr %31, align 4, !tbaa !122
  %465 = load i32, ptr %34, align 8, !tbaa !51
  %466 = icmp eq i32 %464, %465
  %467 = load i32, ptr %21, align 8, !tbaa !79
  %468 = load i32, ptr %3, align 4, !tbaa !76
  %469 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %468, i32 %467), !nosanitize !49
  %470 = extractvalue { i32, i1 } %469, 1, !nosanitize !49
  br i1 %470, label %471, label %472, !prof !50, !nosanitize !49

471:                                              ; preds = %447
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

472:                                              ; preds = %447
  %473 = extractvalue { i32, i1 } %469, 0, !nosanitize !49
  store i32 %473, ptr %3, align 4, !tbaa !76
  %474 = load i32, ptr %35, align 4, !tbaa !74
  %475 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %474, i32 %467), !nosanitize !49
  %476 = extractvalue { i32, i1 } %475, 1, !nosanitize !49
  br i1 %476, label %477, label %478, !prof !50, !nosanitize !49

477:                                              ; preds = %472
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

478:                                              ; preds = %472
  %479 = extractvalue { i32, i1 } %475, 0, !nosanitize !49
  store i32 %479, ptr %35, align 4, !tbaa !74
  store i32 0, ptr %21, align 8, !tbaa !79
  br label %532

480:                                              ; preds = %419
  %481 = load ptr, ptr %24, align 8, !tbaa !39
  %482 = load i32, ptr %25, align 4, !tbaa !74
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds nuw i8, ptr %481, i64 %483
  %485 = load i8, ptr %484, align 1, !tbaa !8
  %486 = load i32, ptr %27, align 4, !tbaa !122
  %487 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %486, i32 1), !nosanitize !49
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !49
  br i1 %488, label %489, label %490, !prof !50, !nosanitize !49

489:                                              ; preds = %480
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

490:                                              ; preds = %480
  %491 = extractvalue { i32, i1 } %487, 0, !nosanitize !49
  %492 = load ptr, ptr %26, align 8, !tbaa !48
  store i32 %491, ptr %27, align 4, !tbaa !122
  %493 = zext i32 %486 to i64
  %494 = getelementptr inbounds nuw i8, ptr %492, i64 %493
  store i8 0, ptr %494, align 1, !tbaa !8
  %495 = load i32, ptr %27, align 4, !tbaa !122
  %496 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %495, i32 1), !nosanitize !49
  %497 = extractvalue { i32, i1 } %496, 1, !nosanitize !49
  br i1 %497, label %498, label %499, !prof !50, !nosanitize !49

498:                                              ; preds = %490
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

499:                                              ; preds = %490
  %500 = extractvalue { i32, i1 } %496, 0, !nosanitize !49
  %501 = load ptr, ptr %26, align 8, !tbaa !48
  store i32 %500, ptr %27, align 4, !tbaa !122
  %502 = zext i32 %495 to i64
  %503 = getelementptr inbounds nuw i8, ptr %501, i64 %502
  store i8 0, ptr %503, align 1, !tbaa !8
  %504 = load i32, ptr %27, align 4, !tbaa !122
  %505 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %504, i32 1), !nosanitize !49
  %506 = extractvalue { i32, i1 } %505, 1, !nosanitize !49
  br i1 %506, label %507, label %508, !prof !50, !nosanitize !49

507:                                              ; preds = %499
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

508:                                              ; preds = %499
  %509 = extractvalue { i32, i1 } %505, 0, !nosanitize !49
  %510 = load ptr, ptr %26, align 8, !tbaa !48
  store i32 %509, ptr %27, align 4, !tbaa !122
  %511 = zext i32 %504 to i64
  %512 = getelementptr inbounds nuw i8, ptr %510, i64 %511
  store i8 %485, ptr %512, align 1, !tbaa !8
  %513 = zext i8 %485 to i64
  %514 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %513
  %515 = load i16, ptr %514, align 4, !tbaa !8
  %516 = add i16 %515, 1
  store i16 %516, ptr %514, align 4, !tbaa !8
  %517 = load i32, ptr %27, align 4, !tbaa !122
  %518 = load i32, ptr %29, align 8, !tbaa !51
  %519 = icmp eq i32 %517, %518
  %520 = load i32, ptr %3, align 4, !tbaa !76
  %521 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %520, i32 1), !nosanitize !49
  %522 = extractvalue { i32, i1 } %521, 1, !nosanitize !49
  br i1 %522, label %523, label %524, !prof !50, !nosanitize !49

523:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

524:                                              ; preds = %508
  %525 = extractvalue { i32, i1 } %521, 0, !nosanitize !49
  store i32 %525, ptr %3, align 4, !tbaa !76
  %526 = load i32, ptr %25, align 4, !tbaa !74
  %527 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %526, i32 1), !nosanitize !49
  %528 = extractvalue { i32, i1 } %527, 1, !nosanitize !49
  br i1 %528, label %529, label %530, !prof !50, !nosanitize !49

529:                                              ; preds = %524
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

530:                                              ; preds = %524
  %531 = extractvalue { i32, i1 } %527, 0, !nosanitize !49
  store i32 %531, ptr %25, align 4, !tbaa !74
  br label %532

532:                                              ; preds = %530, %478
  %533 = phi i1 [ %466, %478 ], [ %519, %530 ]
  br i1 %533, label %534, label %596

534:                                              ; preds = %532
  %535 = load i64, ptr %36, align 8, !tbaa !75
  %536 = icmp sgt i64 %535, -1
  br i1 %536, label %537, label %541

537:                                              ; preds = %534
  %538 = load ptr, ptr %37, align 8, !tbaa !39
  %539 = and i64 %535, 4294967295
  %540 = getelementptr inbounds nuw i8, ptr %538, i64 %539
  br label %541

541:                                              ; preds = %534, %537
  %542 = phi ptr [ %540, %537 ], [ null, %534 ]
  %543 = load i32, ptr %38, align 4, !tbaa !74
  %544 = zext i32 %543 to i64
  %545 = sub nsw i64 %544, %535
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %542, i64 noundef %545, i32 noundef 0) #12
  %546 = load i32, ptr %38, align 4, !tbaa !74
  %547 = zext i32 %546 to i64
  store i64 %547, ptr %36, align 8, !tbaa !75
  %548 = load ptr, ptr %0, align 8, !tbaa !20
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 56
  %550 = load ptr, ptr %549, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %550) #12
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 40
  %552 = load i64, ptr %551, align 8, !tbaa !58
  %553 = getelementptr inbounds nuw i8, ptr %548, i64 32
  %554 = load i32, ptr %553, align 8, !tbaa !100
  %555 = zext i32 %554 to i64
  %556 = tail call i64 @llvm.umin.i64(i64 %552, i64 %555)
  %557 = trunc nuw i64 %556 to i32
  %558 = icmp eq i64 %556, 0
  br i1 %558, label %591, label %559

559:                                              ; preds = %541
  %560 = getelementptr inbounds nuw i8, ptr %548, i64 24
  %561 = load ptr, ptr %560, align 8, !tbaa !99
  %562 = getelementptr inbounds nuw i8, ptr %550, i64 32
  %563 = load ptr, ptr %562, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %561, ptr align 1 %563, i64 %556, i1 false)
  %564 = load ptr, ptr %560, align 8, !tbaa !99
  %565 = getelementptr inbounds nuw i8, ptr %564, i64 %556
  store ptr %565, ptr %560, align 8, !tbaa !99
  %566 = load ptr, ptr %562, align 8, !tbaa !59
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 %556
  store ptr %567, ptr %562, align 8, !tbaa !59
  %568 = getelementptr inbounds nuw i8, ptr %548, i64 40
  %569 = load i64, ptr %568, align 8, !tbaa !101
  %570 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %569, i64 %556), !nosanitize !49
  %571 = extractvalue { i64, i1 } %570, 1, !nosanitize !49
  br i1 %571, label %572, label %573, !prof !50, !nosanitize !49

572:                                              ; preds = %559
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

573:                                              ; preds = %559
  %574 = extractvalue { i64, i1 } %570, 0, !nosanitize !49
  store i64 %574, ptr %568, align 8, !tbaa !101
  %575 = load i32, ptr %553, align 8, !tbaa !100
  %576 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %575, i32 %557), !nosanitize !49
  %577 = extractvalue { i32, i1 } %576, 1, !nosanitize !49
  br i1 %577, label %578, label %579, !prof !50, !nosanitize !49

578:                                              ; preds = %573
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

579:                                              ; preds = %573
  %580 = extractvalue { i32, i1 } %576, 0, !nosanitize !49
  store i32 %580, ptr %553, align 8, !tbaa !100
  %581 = load i64, ptr %551, align 8, !tbaa !58
  %582 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %581, i64 %556), !nosanitize !49
  %583 = extractvalue { i64, i1 } %582, 1, !nosanitize !49
  br i1 %583, label %584, label %585, !prof !50, !nosanitize !49

584:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

585:                                              ; preds = %579
  %586 = extractvalue { i64, i1 } %582, 0, !nosanitize !49
  store i64 %586, ptr %551, align 8, !tbaa !58
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %588, label %591

588:                                              ; preds = %585
  %589 = getelementptr inbounds nuw i8, ptr %550, i64 16
  %590 = load ptr, ptr %589, align 8, !tbaa !44
  store ptr %590, ptr %562, align 8, !tbaa !59
  br label %591

591:                                              ; preds = %541, %585, %588
  %592 = load ptr, ptr %0, align 8, !tbaa !20
  %593 = getelementptr inbounds nuw i8, ptr %592, i64 32
  %594 = load i32, ptr %593, align 8, !tbaa !100
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %729, label %596

596:                                              ; preds = %591, %532
  br label %39, !llvm.loop !125

597:                                              ; preds = %328
  store i32 0, ptr %10, align 4, !tbaa !77
  %598 = icmp eq i32 %1, 4
  br i1 %598, label %599, label %662

599:                                              ; preds = %597
  %600 = load i64, ptr %9, align 8, !tbaa !75
  %601 = icmp sgt i64 %600, -1
  br i1 %601, label %602, label %606

602:                                              ; preds = %599
  %603 = load ptr, ptr %7, align 8, !tbaa !39
  %604 = and i64 %600, 4294967295
  %605 = getelementptr inbounds nuw i8, ptr %603, i64 %604
  br label %606

606:                                              ; preds = %599, %602
  %607 = phi ptr [ %605, %602 ], [ null, %599 ]
  %608 = load i32, ptr %6, align 4, !tbaa !74
  %609 = zext i32 %608 to i64
  %610 = sub nsw i64 %609, %600
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %607, i64 noundef %610, i32 noundef 1) #12
  %611 = load i32, ptr %6, align 4, !tbaa !74
  %612 = zext i32 %611 to i64
  store i64 %612, ptr %9, align 8, !tbaa !75
  %613 = load ptr, ptr %0, align 8, !tbaa !20
  %614 = getelementptr inbounds nuw i8, ptr %613, i64 56
  %615 = load ptr, ptr %614, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %615) #12
  %616 = getelementptr inbounds nuw i8, ptr %615, i64 40
  %617 = load i64, ptr %616, align 8, !tbaa !58
  %618 = getelementptr inbounds nuw i8, ptr %613, i64 32
  %619 = load i32, ptr %618, align 8, !tbaa !100
  %620 = zext i32 %619 to i64
  %621 = tail call i64 @llvm.umin.i64(i64 %617, i64 %620)
  %622 = trunc nuw i64 %621 to i32
  %623 = icmp eq i64 %621, 0
  br i1 %623, label %656, label %624

624:                                              ; preds = %606
  %625 = getelementptr inbounds nuw i8, ptr %613, i64 24
  %626 = load ptr, ptr %625, align 8, !tbaa !99
  %627 = getelementptr inbounds nuw i8, ptr %615, i64 32
  %628 = load ptr, ptr %627, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %626, ptr align 1 %628, i64 %621, i1 false)
  %629 = load ptr, ptr %625, align 8, !tbaa !99
  %630 = getelementptr inbounds nuw i8, ptr %629, i64 %621
  store ptr %630, ptr %625, align 8, !tbaa !99
  %631 = load ptr, ptr %627, align 8, !tbaa !59
  %632 = getelementptr inbounds nuw i8, ptr %631, i64 %621
  store ptr %632, ptr %627, align 8, !tbaa !59
  %633 = getelementptr inbounds nuw i8, ptr %613, i64 40
  %634 = load i64, ptr %633, align 8, !tbaa !101
  %635 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %634, i64 %621), !nosanitize !49
  %636 = extractvalue { i64, i1 } %635, 1, !nosanitize !49
  br i1 %636, label %637, label %638, !prof !50, !nosanitize !49

637:                                              ; preds = %624
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

638:                                              ; preds = %624
  %639 = extractvalue { i64, i1 } %635, 0, !nosanitize !49
  store i64 %639, ptr %633, align 8, !tbaa !101
  %640 = load i32, ptr %618, align 8, !tbaa !100
  %641 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %640, i32 %622), !nosanitize !49
  %642 = extractvalue { i32, i1 } %641, 1, !nosanitize !49
  br i1 %642, label %643, label %644, !prof !50, !nosanitize !49

643:                                              ; preds = %638
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

644:                                              ; preds = %638
  %645 = extractvalue { i32, i1 } %641, 0, !nosanitize !49
  store i32 %645, ptr %618, align 8, !tbaa !100
  %646 = load i64, ptr %616, align 8, !tbaa !58
  %647 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %646, i64 %621), !nosanitize !49
  %648 = extractvalue { i64, i1 } %647, 1, !nosanitize !49
  br i1 %648, label %649, label %650, !prof !50, !nosanitize !49

649:                                              ; preds = %644
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

650:                                              ; preds = %644
  %651 = extractvalue { i64, i1 } %647, 0, !nosanitize !49
  store i64 %651, ptr %616, align 8, !tbaa !58
  %652 = icmp eq i64 %651, 0
  br i1 %652, label %653, label %656

653:                                              ; preds = %650
  %654 = getelementptr inbounds nuw i8, ptr %615, i64 16
  %655 = load ptr, ptr %654, align 8, !tbaa !44
  store ptr %655, ptr %627, align 8, !tbaa !59
  br label %656

656:                                              ; preds = %606, %650, %653
  %657 = load ptr, ptr %0, align 8, !tbaa !20
  %658 = getelementptr inbounds nuw i8, ptr %657, i64 32
  %659 = load i32, ptr %658, align 8, !tbaa !100
  %660 = icmp eq i32 %659, 0
  %661 = select i1 %660, i32 2, i32 3
  br label %729

662:                                              ; preds = %597
  %663 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %664 = load i32, ptr %663, align 4, !tbaa !122
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %728, label %666

666:                                              ; preds = %662
  %667 = load i64, ptr %9, align 8, !tbaa !75
  %668 = icmp sgt i64 %667, -1
  br i1 %668, label %669, label %673

669:                                              ; preds = %666
  %670 = load ptr, ptr %7, align 8, !tbaa !39
  %671 = and i64 %667, 4294967295
  %672 = getelementptr inbounds nuw i8, ptr %670, i64 %671
  br label %673

673:                                              ; preds = %666, %669
  %674 = phi ptr [ %672, %669 ], [ null, %666 ]
  %675 = load i32, ptr %6, align 4, !tbaa !74
  %676 = zext i32 %675 to i64
  %677 = sub nsw i64 %676, %667
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %674, i64 noundef %677, i32 noundef 0) #12
  %678 = load i32, ptr %6, align 4, !tbaa !74
  %679 = zext i32 %678 to i64
  store i64 %679, ptr %9, align 8, !tbaa !75
  %680 = load ptr, ptr %0, align 8, !tbaa !20
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 56
  %682 = load ptr, ptr %681, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %682) #12
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 40
  %684 = load i64, ptr %683, align 8, !tbaa !58
  %685 = getelementptr inbounds nuw i8, ptr %680, i64 32
  %686 = load i32, ptr %685, align 8, !tbaa !100
  %687 = zext i32 %686 to i64
  %688 = tail call i64 @llvm.umin.i64(i64 %684, i64 %687)
  %689 = trunc nuw i64 %688 to i32
  %690 = icmp eq i64 %688, 0
  br i1 %690, label %723, label %691

691:                                              ; preds = %673
  %692 = getelementptr inbounds nuw i8, ptr %680, i64 24
  %693 = load ptr, ptr %692, align 8, !tbaa !99
  %694 = getelementptr inbounds nuw i8, ptr %682, i64 32
  %695 = load ptr, ptr %694, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %693, ptr align 1 %695, i64 %688, i1 false)
  %696 = load ptr, ptr %692, align 8, !tbaa !99
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 %688
  store ptr %697, ptr %692, align 8, !tbaa !99
  %698 = load ptr, ptr %694, align 8, !tbaa !59
  %699 = getelementptr inbounds nuw i8, ptr %698, i64 %688
  store ptr %699, ptr %694, align 8, !tbaa !59
  %700 = getelementptr inbounds nuw i8, ptr %680, i64 40
  %701 = load i64, ptr %700, align 8, !tbaa !101
  %702 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %701, i64 %688), !nosanitize !49
  %703 = extractvalue { i64, i1 } %702, 1, !nosanitize !49
  br i1 %703, label %704, label %705, !prof !50, !nosanitize !49

704:                                              ; preds = %691
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

705:                                              ; preds = %691
  %706 = extractvalue { i64, i1 } %702, 0, !nosanitize !49
  store i64 %706, ptr %700, align 8, !tbaa !101
  %707 = load i32, ptr %685, align 8, !tbaa !100
  %708 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %707, i32 %689), !nosanitize !49
  %709 = extractvalue { i32, i1 } %708, 1, !nosanitize !49
  br i1 %709, label %710, label %711, !prof !50, !nosanitize !49

710:                                              ; preds = %705
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

711:                                              ; preds = %705
  %712 = extractvalue { i32, i1 } %708, 0, !nosanitize !49
  store i32 %712, ptr %685, align 8, !tbaa !100
  %713 = load i64, ptr %683, align 8, !tbaa !58
  %714 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %713, i64 %688), !nosanitize !49
  %715 = extractvalue { i64, i1 } %714, 1, !nosanitize !49
  br i1 %715, label %716, label %717, !prof !50, !nosanitize !49

716:                                              ; preds = %711
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

717:                                              ; preds = %711
  %718 = extractvalue { i64, i1 } %714, 0, !nosanitize !49
  store i64 %718, ptr %683, align 8, !tbaa !58
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %720, label %723

720:                                              ; preds = %717
  %721 = getelementptr inbounds nuw i8, ptr %682, i64 16
  %722 = load ptr, ptr %721, align 8, !tbaa !44
  store ptr %722, ptr %694, align 8, !tbaa !59
  br label %723

723:                                              ; preds = %673, %717, %720
  %724 = load ptr, ptr %0, align 8, !tbaa !20
  %725 = getelementptr inbounds nuw i8, ptr %724, i64 32
  %726 = load i32, ptr %725, align 8, !tbaa !100
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %729, label %728

728:                                              ; preds = %723, %662
  br label %729

729:                                              ; preds = %591, %324, %723, %656, %728
  %730 = phi i32 [ 1, %728 ], [ %661, %656 ], [ 0, %723 ], [ 0, %324 ], [ 0, %591 ]
  ret i32 %730
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -4, 1) i32 @deflateCopy(ptr noundef %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %21 = load i32, ptr %20, align 8, !tbaa !29
  switch i32 %21, label %23 [
    i32 42, label %22
    i32 57, label %22
    i32 69, label %22
    i32 73, label %22
    i32 91, label %22
    i32 103, label %22
    i32 113, label %22
    i32 666, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  br label %23

23:                                               ; preds = %2, %4, %8, %12, %16, %19, %22
  %24 = phi i1 [ false, %22 ], [ true, %2 ], [ true, %8 ], [ true, %4 ], [ true, %19 ], [ true, %16 ], [ true, %12 ]
  %25 = icmp eq ptr %0, null
  %26 = or i1 %25, %24
  br i1 %26, label %185, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = tail call ptr %31(ptr noundef %33, i32 noundef 1, i32 noundef 5968) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %185, label %36

36:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %34, i8 0, i64 5968, i1 false)
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %34, ptr %37, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5968) %34, ptr noundef nonnull align 8 dereferenceable(5968) %29, i64 5968, i1 false)
  store ptr %0, ptr %34, align 8, !tbaa !20
  %38 = load ptr, ptr %30, align 8, !tbaa !15
  %39 = load ptr, ptr %32, align 8, !tbaa !16
  %40 = getelementptr inbounds nuw i8, ptr %34, i64 80
  %41 = load i32, ptr %40, align 8, !tbaa !33
  %42 = tail call ptr %38(ptr noundef %39, i32 noundef %41, i32 noundef 2) #12
  %43 = getelementptr inbounds nuw i8, ptr %34, i64 96
  store ptr %42, ptr %43, align 8, !tbaa !39
  %44 = load ptr, ptr %30, align 8, !tbaa !15
  %45 = load ptr, ptr %32, align 8, !tbaa !16
  %46 = load i32, ptr %40, align 8, !tbaa !33
  %47 = tail call ptr %44(ptr noundef %45, i32 noundef %46, i32 noundef 2) #12
  %48 = getelementptr inbounds nuw i8, ptr %34, i64 112
  store ptr %47, ptr %48, align 8, !tbaa !40
  %49 = load ptr, ptr %30, align 8, !tbaa !15
  %50 = load ptr, ptr %32, align 8, !tbaa !16
  %51 = getelementptr inbounds nuw i8, ptr %34, i64 132
  %52 = load i32, ptr %51, align 4, !tbaa !36
  %53 = tail call ptr %49(ptr noundef %50, i32 noundef %52, i32 noundef 2) #12
  %54 = getelementptr inbounds nuw i8, ptr %34, i64 120
  store ptr %53, ptr %54, align 8, !tbaa !41
  %55 = load ptr, ptr %30, align 8, !tbaa !15
  %56 = load ptr, ptr %32, align 8, !tbaa !16
  %57 = getelementptr inbounds nuw i8, ptr %34, i64 5896
  %58 = load i32, ptr %57, align 8, !tbaa !43
  %59 = tail call ptr %55(ptr noundef %56, i32 noundef %58, i32 noundef 4) #12
  %60 = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %59, ptr %60, align 8, !tbaa !44
  %61 = load ptr, ptr %43, align 8, !tbaa !39
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %36
  %64 = load ptr, ptr %48, align 8, !tbaa !40
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %54, align 8, !tbaa !41
  %68 = icmp eq ptr %67, null
  %69 = icmp eq ptr %59, null
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %71, label %121

71:                                               ; preds = %36, %63, %66
  %72 = load ptr, ptr %30, align 8, !tbaa !15
  %73 = icmp eq ptr %72, null
  br i1 %73, label %185, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %76 = load ptr, ptr %75, align 8, !tbaa !17
  %77 = icmp eq ptr %76, null
  br i1 %77, label %185, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %37, align 8, !tbaa !19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %185, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %79, align 8, !tbaa !20
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %84, label %185

84:                                               ; preds = %81
  %85 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %86 = load i32, ptr %85, align 8, !tbaa !29
  switch i32 %86, label %185 [
    i32 42, label %87
    i32 57, label %87
    i32 69, label %87
    i32 73, label %87
    i32 91, label %87
    i32 103, label %87
    i32 113, label %87
    i32 666, label %87
  ]

87:                                               ; preds = %84, %84, %84, %84, %84, %84, %84, %84
  %88 = getelementptr inbounds nuw i8, ptr %79, i64 16
  %89 = load ptr, ptr %88, align 8, !tbaa !44
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %32, align 8, !tbaa !16
  tail call void %76(ptr noundef %92, ptr noundef nonnull %89) #12, !inline_history !55
  br label %93

93:                                               ; preds = %91, %87
  %94 = load ptr, ptr %37, align 8, !tbaa !19
  %95 = getelementptr inbounds nuw i8, ptr %94, i64 120
  %96 = load ptr, ptr %95, align 8, !tbaa !41
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load ptr, ptr %75, align 8, !tbaa !17
  %100 = load ptr, ptr %32, align 8, !tbaa !16
  tail call void %99(ptr noundef %100, ptr noundef nonnull %96) #12, !inline_history !55
  br label %101

101:                                              ; preds = %98, %93
  %102 = load ptr, ptr %37, align 8, !tbaa !19
  %103 = getelementptr inbounds nuw i8, ptr %102, i64 112
  %104 = load ptr, ptr %103, align 8, !tbaa !40
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %75, align 8, !tbaa !17
  %108 = load ptr, ptr %32, align 8, !tbaa !16
  tail call void %107(ptr noundef %108, ptr noundef nonnull %104) #12, !inline_history !55
  br label %109

109:                                              ; preds = %106, %101
  %110 = load ptr, ptr %37, align 8, !tbaa !19
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 96
  %112 = load ptr, ptr %111, align 8, !tbaa !39
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load ptr, ptr %75, align 8, !tbaa !17
  %116 = load ptr, ptr %32, align 8, !tbaa !16
  tail call void %115(ptr noundef %116, ptr noundef nonnull %112) #12, !inline_history !55
  br label %117

117:                                              ; preds = %114, %109
  %118 = load ptr, ptr %75, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !16
  %120 = load ptr, ptr %37, align 8, !tbaa !19
  tail call void %118(ptr noundef %119, ptr noundef %120) #12, !inline_history !55
  store ptr null, ptr %37, align 8, !tbaa !19
  br label %185

121:                                              ; preds = %66
  %122 = getelementptr inbounds nuw i8, ptr %29, i64 96
  %123 = load ptr, ptr %122, align 8, !tbaa !39
  %124 = getelementptr inbounds nuw i8, ptr %29, i64 5952
  %125 = load i64, ptr %124, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %61, ptr align 1 %123, i64 %125, i1 false)
  %126 = load ptr, ptr %48, align 8, !tbaa !40
  %127 = getelementptr inbounds nuw i8, ptr %29, i64 112
  %128 = load ptr, ptr %127, align 8, !tbaa !40
  %129 = getelementptr inbounds nuw i8, ptr %29, i64 5960
  %130 = load i32, ptr %129, align 8, !tbaa !64
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %121
  %133 = getelementptr inbounds nuw i8, ptr %29, i64 172
  %134 = load i32, ptr %133, align 4, !tbaa !74
  %135 = getelementptr inbounds nuw i8, ptr %29, i64 5932
  %136 = load i32, ptr %135, align 4, !tbaa !77
  %137 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %134, i32 %136), !nosanitize !49
  %138 = extractvalue { i32, i1 } %137, 1, !nosanitize !49
  br i1 %138, label %139, label %140, !prof !50, !nosanitize !49

139:                                              ; preds = %132
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

140:                                              ; preds = %132
  %141 = extractvalue { i32, i1 } %137, 0, !nosanitize !49
  %142 = load i32, ptr %40, align 8, !tbaa !33
  %143 = icmp ugt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140, %121
  %145 = load i32, ptr %40, align 8, !tbaa !33
  br label %146

146:                                              ; preds = %144, %140
  %147 = phi i32 [ %145, %144 ], [ %141, %140 ]
  %148 = zext i32 %147 to i64
  %149 = shl nuw nsw i64 %148, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %126, ptr align 2 %128, i64 %149, i1 false)
  %150 = load i32, ptr %51, align 4, !tbaa !36
  %151 = zext i32 %150 to i64
  %152 = shl nuw nsw i64 %151, 1
  %153 = getelementptr inbounds nuw i8, ptr %29, i64 120
  %154 = load ptr, ptr %153, align 8, !tbaa !41
  %155 = load ptr, ptr %54, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %155, ptr align 2 %154, i64 %152, i1 false)
  %156 = load ptr, ptr %60, align 8, !tbaa !44
  %157 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %158 = load ptr, ptr %157, align 8, !tbaa !59
  %159 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %160 = load ptr, ptr %159, align 8, !tbaa !44
  %161 = ptrtoint ptr %158 to i64
  %162 = ptrtoint ptr %160 to i64
  %163 = sub i64 %161, %162
  %164 = getelementptr inbounds i8, ptr %156, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %34, i64 32
  store ptr %164, ptr %165, align 8, !tbaa !59
  %166 = load ptr, ptr %157, align 8, !tbaa !59
  %167 = getelementptr inbounds nuw i8, ptr %29, i64 40
  %168 = load i64, ptr %167, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %164, ptr align 1 %166, i64 %168, i1 false)
  %169 = load ptr, ptr %60, align 8, !tbaa !44
  %170 = load i32, ptr %57, align 8, !tbaa !43
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds nuw i8, ptr %169, i64 %171
  %173 = getelementptr inbounds nuw i8, ptr %34, i64 5888
  store ptr %172, ptr %173, align 8, !tbaa !48
  %174 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  %175 = load ptr, ptr %174, align 8, !tbaa !48
  %176 = getelementptr inbounds nuw i8, ptr %29, i64 5900
  %177 = load i32, ptr %176, align 4, !tbaa !122
  %178 = zext i32 %177 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %172, ptr align 1 %175, i64 %178, i1 false)
  %179 = getelementptr inbounds nuw i8, ptr %34, i64 212
  %180 = getelementptr inbounds nuw i8, ptr %34, i64 2904
  store ptr %179, ptr %180, align 8, !tbaa !126
  %181 = getelementptr inbounds nuw i8, ptr %34, i64 2504
  %182 = getelementptr inbounds nuw i8, ptr %34, i64 2928
  store ptr %181, ptr %182, align 8, !tbaa !127
  %183 = getelementptr inbounds nuw i8, ptr %34, i64 2748
  %184 = getelementptr inbounds nuw i8, ptr %34, i64 2952
  store ptr %183, ptr %184, align 8, !tbaa !128
  br label %185

185:                                              ; preds = %117, %84, %81, %78, %74, %71, %27, %23, %146
  %186 = phi i32 [ 0, %146 ], [ -2, %23 ], [ -4, %27 ], [ -4, %71 ], [ -4, %74 ], [ -4, %78 ], [ -4, %81 ], [ -4, %84 ], [ -4, %117 ]
  ret i32 %186
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 188
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %51 = getelementptr i8, ptr %0, i64 1240
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 172
  br label %69

69:                                               ; preds = %844, %2
  %70 = load i32, ptr %3, align 4, !tbaa !76
  %71 = icmp ult i32 %70, 262
  br i1 %71, label %72, label %360

72:                                               ; preds = %69
  %73 = load i32, ptr %4, align 8, !tbaa !33
  %74 = zext i32 %73 to i64
  br label %75

75:                                               ; preds = %306, %72
  %76 = load i64, ptr %5, align 8, !tbaa !62
  %77 = load i32, ptr %3, align 4, !tbaa !76
  %78 = zext i32 %77 to i64
  %79 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %76, i64 %78), !nosanitize !49
  %80 = extractvalue { i64, i1 } %79, 1, !nosanitize !49
  br i1 %80, label %81, label %82, !prof !50, !nosanitize !49

81:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %75
  %83 = extractvalue { i64, i1 } %79, 0, !nosanitize !49
  %84 = load i32, ptr %6, align 4, !tbaa !74
  %85 = zext i32 %84 to i64
  %86 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %85), !nosanitize !49
  %87 = extractvalue { i64, i1 } %86, 1, !nosanitize !49
  br i1 %87, label %88, label %89, !prof !50, !nosanitize !49

88:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

89:                                               ; preds = %82
  %90 = extractvalue { i64, i1 } %86, 0, !nosanitize !49
  %91 = trunc i64 %90 to i32
  %92 = load i32, ptr %4, align 8, !tbaa !33
  %93 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %92, i32 262), !nosanitize !49
  %94 = extractvalue { i32, i1 } %93, 1, !nosanitize !49
  br i1 %94, label %95, label %96, !prof !50, !nosanitize !49

95:                                               ; preds = %89
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

96:                                               ; preds = %89
  %97 = extractvalue { i32, i1 } %93, 0, !nosanitize !49
  %98 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %73, i32 %97), !nosanitize !49
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !49
  br i1 %99, label %100, label %101, !prof !50, !nosanitize !49

100:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

101:                                              ; preds = %96
  %102 = extractvalue { i32, i1 } %98, 0, !nosanitize !49
  %103 = icmp ult i32 %84, %102
  br i1 %103, label %172, label %104

104:                                              ; preds = %101
  %105 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %73, i32 %91), !nosanitize !49
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !49
  br i1 %106, label %107, label %108, !prof !50, !nosanitize !49

107:                                              ; preds = %104
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

108:                                              ; preds = %104
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !49
  %110 = load ptr, ptr %7, align 8, !tbaa !39
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 %74
  %112 = zext i32 %109 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr align 1 %111, i64 %112, i1 false)
  %113 = load i32, ptr %8, align 8, !tbaa !84
  %114 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %113, i32 %73), !nosanitize !49
  %115 = extractvalue { i32, i1 } %114, 1, !nosanitize !49
  br i1 %115, label %116, label %117, !prof !50, !nosanitize !49

116:                                              ; preds = %108
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

117:                                              ; preds = %108
  %118 = extractvalue { i32, i1 } %114, 0, !nosanitize !49
  store i32 %118, ptr %8, align 8, !tbaa !84
  %119 = load i32, ptr %6, align 4, !tbaa !74
  %120 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %119, i32 %73), !nosanitize !49
  %121 = extractvalue { i32, i1 } %120, 1, !nosanitize !49
  br i1 %121, label %122, label %123, !prof !50, !nosanitize !49

122:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

123:                                              ; preds = %117
  %124 = extractvalue { i32, i1 } %120, 0, !nosanitize !49
  store i32 %124, ptr %6, align 4, !tbaa !74
  %125 = load i64, ptr %9, align 8, !tbaa !75
  %126 = sub nsw i64 %125, %74
  store i64 %126, ptr %9, align 8, !tbaa !75
  %127 = load i32, ptr %10, align 4, !tbaa !77
  %128 = icmp ugt i32 %127, %124
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 %124, ptr %10, align 4, !tbaa !77
  br label %130

130:                                              ; preds = %129, %123
  %131 = load i32, ptr %4, align 8, !tbaa !33
  %132 = load i32, ptr %11, align 4, !tbaa !36
  %133 = load ptr, ptr %12, align 8, !tbaa !41
  %134 = zext i32 %132 to i64
  %135 = getelementptr inbounds nuw [2 x i8], ptr %133, i64 %134
  %136 = icmp eq i32 %132, 0
  br label %137

137:                                              ; preds = %146, %130
  %138 = phi ptr [ %135, %130 ], [ %140, %146 ]
  %139 = phi i32 [ %132, %130 ], [ %147, %146 ]
  %140 = getelementptr inbounds i8, ptr %138, i64 -2
  %141 = load i16, ptr %140, align 2, !tbaa !63
  %142 = zext i16 %141 to i32
  %143 = tail call i32 @llvm.usub.sat.i32(i32 %142, i32 %131)
  %144 = trunc nuw i32 %143 to i16
  store i16 %144, ptr %140, align 2, !tbaa !63
  br i1 %136, label %145, label %146, !prof !50, !nosanitize !49

145:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

146:                                              ; preds = %137
  %147 = add i32 %139, -1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %137, !llvm.loop !85

149:                                              ; preds = %146
  %150 = load ptr, ptr %13, align 8, !tbaa !40
  %151 = zext i32 %131 to i64
  %152 = getelementptr inbounds nuw [2 x i8], ptr %150, i64 %151
  %153 = icmp eq i32 %131, 0
  br label %154

154:                                              ; preds = %163, %149
  %155 = phi ptr [ %152, %149 ], [ %157, %163 ]
  %156 = phi i32 [ %131, %149 ], [ %164, %163 ]
  %157 = getelementptr inbounds i8, ptr %155, i64 -2
  %158 = load i16, ptr %157, align 2, !tbaa !63
  %159 = zext i16 %158 to i32
  %160 = tail call i32 @llvm.usub.sat.i32(i32 %159, i32 %131)
  %161 = trunc nuw i32 %160 to i16
  store i16 %161, ptr %157, align 2, !tbaa !63
  br i1 %153, label %162, label %163, !prof !50, !nosanitize !49

162:                                              ; preds = %154
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

163:                                              ; preds = %154
  %164 = add i32 %156, -1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %154, !llvm.loop !88

166:                                              ; preds = %163
  store i32 1, ptr %14, align 8, !tbaa !64
  %167 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %91, i32 %73), !nosanitize !49
  %168 = extractvalue { i32, i1 } %167, 1, !nosanitize !49
  br i1 %168, label %169, label %170, !prof !50, !nosanitize !49

169:                                              ; preds = %166
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

170:                                              ; preds = %166
  %171 = extractvalue { i32, i1 } %167, 0, !nosanitize !49
  br label %172

172:                                              ; preds = %170, %101
  %173 = phi i32 [ %171, %170 ], [ %91, %101 ]
  %174 = load ptr, ptr %0, align 8, !tbaa !20
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 8
  %176 = load i32, ptr %175, align 8, !tbaa !82
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %311, label %178

178:                                              ; preds = %172
  %179 = load ptr, ptr %7, align 8, !tbaa !39
  %180 = load i32, ptr %6, align 4, !tbaa !74
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds nuw i8, ptr %179, i64 %181
  %183 = load i32, ptr %3, align 4, !tbaa !76
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds nuw i8, ptr %182, i64 %184
  %186 = tail call i32 @llvm.umin.i32(i32 %176, i32 %173)
  %187 = icmp eq i32 %173, 0
  br i1 %187, label %218, label %188

188:                                              ; preds = %178
  %189 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %176, i32 %186), !nosanitize !49
  %190 = extractvalue { i32, i1 } %189, 1, !nosanitize !49
  br i1 %190, label %191, label %192, !prof !50, !nosanitize !49

191:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

192:                                              ; preds = %188
  %193 = extractvalue { i32, i1 } %189, 0, !nosanitize !49
  store i32 %193, ptr %175, align 8, !tbaa !82
  %194 = load ptr, ptr %174, align 8, !tbaa !83
  %195 = zext i32 %186 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %185, ptr align 1 %194, i64 %195, i1 false)
  %196 = getelementptr inbounds nuw i8, ptr %174, i64 56
  %197 = load ptr, ptr %196, align 8, !tbaa !19
  %198 = getelementptr inbounds nuw i8, ptr %197, i64 48
  %199 = load i32, ptr %198, align 8, !tbaa !30
  switch i32 %199, label %208 [
    i32 1, label %200
    i32 2, label %204
  ]

200:                                              ; preds = %192
  %201 = getelementptr inbounds nuw i8, ptr %174, i64 96
  %202 = load i64, ptr %201, align 8, !tbaa !60
  %203 = tail call i64 @adler32(i64 noundef %202, ptr noundef %185, i32 noundef %186) #12
  store i64 %203, ptr %201, align 8, !tbaa !60
  br label %208

204:                                              ; preds = %192
  %205 = getelementptr inbounds nuw i8, ptr %174, i64 96
  %206 = load i64, ptr %205, align 8, !tbaa !60
  %207 = tail call i64 @crc32(i64 noundef %206, ptr noundef %185, i32 noundef %186) #12
  store i64 %207, ptr %205, align 8, !tbaa !60
  br label %208

208:                                              ; preds = %204, %200, %192
  %209 = load ptr, ptr %174, align 8, !tbaa !83
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 %195
  store ptr %210, ptr %174, align 8, !tbaa !83
  %211 = getelementptr inbounds nuw i8, ptr %174, i64 16
  %212 = load i64, ptr %211, align 8, !tbaa !56
  %213 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %212, i64 %195), !nosanitize !49
  %214 = extractvalue { i64, i1 } %213, 1, !nosanitize !49
  br i1 %214, label %215, label %216, !prof !50, !nosanitize !49

215:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

216:                                              ; preds = %208
  %217 = extractvalue { i64, i1 } %213, 0, !nosanitize !49
  store i64 %217, ptr %211, align 8, !tbaa !56
  br label %218

218:                                              ; preds = %216, %178
  %219 = phi i32 [ %186, %216 ], [ 0, %178 ]
  %220 = load i32, ptr %3, align 4, !tbaa !76
  %221 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %220, i32 %219), !nosanitize !49
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !49
  br i1 %222, label %223, label %224, !prof !50, !nosanitize !49

223:                                              ; preds = %218
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

224:                                              ; preds = %218
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !49
  store i32 %225, ptr %3, align 4, !tbaa !76
  %226 = load i32, ptr %10, align 4, !tbaa !77
  %227 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %226), !nosanitize !49
  %228 = extractvalue { i32, i1 } %227, 1, !nosanitize !49
  br i1 %228, label %229, label %230, !prof !50, !nosanitize !49

229:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

230:                                              ; preds = %224
  %231 = extractvalue { i32, i1 } %227, 0, !nosanitize !49
  %232 = icmp ugt i32 %231, 2
  br i1 %232, label %233, label %304

233:                                              ; preds = %230
  %234 = load i32, ptr %6, align 4, !tbaa !74
  %235 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %234, i32 %226), !nosanitize !49
  %236 = extractvalue { i32, i1 } %235, 0, !nosanitize !49
  %237 = extractvalue { i32, i1 } %235, 1, !nosanitize !49
  br i1 %237, label %238, label %239, !prof !50, !nosanitize !49

238:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

239:                                              ; preds = %233
  %240 = load ptr, ptr %7, align 8, !tbaa !39
  %241 = zext i32 %236 to i64
  %242 = getelementptr inbounds nuw i8, ptr %240, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !8
  %244 = zext i8 %243 to i32
  store i32 %244, ptr %15, align 8, !tbaa !81
  %245 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %236, i32 1), !nosanitize !49
  %246 = extractvalue { i32, i1 } %245, 1, !nosanitize !49
  br i1 %246, label %247, label %248, !prof !50, !nosanitize !49

247:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

248:                                              ; preds = %239
  %249 = extractvalue { i32, i1 } %245, 0, !nosanitize !49
  %250 = load i32, ptr %16, align 8, !tbaa !38
  %251 = shl i32 %244, %250
  %252 = zext i32 %249 to i64
  %253 = getelementptr inbounds nuw i8, ptr %240, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !8
  %255 = zext i8 %254 to i32
  %256 = xor i32 %251, %255
  %257 = load i32, ptr %17, align 4, !tbaa !37
  %258 = and i32 %256, %257
  store i32 %258, ptr %15, align 8, !tbaa !81
  br label %259

259:                                              ; preds = %301, %248
  %260 = phi i32 [ %226, %248 ], [ %297, %301 ]
  %261 = phi i32 [ %236, %248 ], [ %293, %301 ]
  %262 = icmp eq i32 %260, 0
  br i1 %262, label %304, label %263

263:                                              ; preds = %259
  %264 = load i32, ptr %15, align 8, !tbaa !81
  %265 = shl i32 %264, %250
  %266 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 3), !nosanitize !49
  %267 = extractvalue { i32, i1 } %266, 1, !nosanitize !49
  br i1 %267, label %268, label %269, !prof !50, !nosanitize !49

268:                                              ; preds = %263
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

269:                                              ; preds = %263
  %270 = extractvalue { i32, i1 } %266, 0, !nosanitize !49
  %271 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %270, i32 1), !nosanitize !49
  %272 = extractvalue { i32, i1 } %271, 1, !nosanitize !49
  br i1 %272, label %273, label %274, !prof !50, !nosanitize !49

273:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

274:                                              ; preds = %269
  %275 = extractvalue { i32, i1 } %271, 0, !nosanitize !49
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds nuw i8, ptr %240, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !8
  %279 = zext i8 %278 to i32
  %280 = xor i32 %265, %279
  %281 = and i32 %280, %257
  store i32 %281, ptr %15, align 8, !tbaa !81
  %282 = load ptr, ptr %12, align 8, !tbaa !41
  %283 = zext i32 %281 to i64
  %284 = getelementptr inbounds nuw [2 x i8], ptr %282, i64 %283
  %285 = load i16, ptr %284, align 2, !tbaa !63
  %286 = load ptr, ptr %13, align 8, !tbaa !40
  %287 = load i32, ptr %18, align 8, !tbaa !34
  %288 = and i32 %287, %261
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw [2 x i8], ptr %286, i64 %289
  store i16 %285, ptr %290, align 2, !tbaa !63
  %291 = trunc i32 %261 to i16
  store i16 %291, ptr %284, align 2, !tbaa !63
  %292 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 1), !nosanitize !49
  %293 = extractvalue { i32, i1 } %292, 0, !nosanitize !49
  %294 = extractvalue { i32, i1 } %292, 1, !nosanitize !49
  br i1 %294, label %295, label %296, !prof !50, !nosanitize !49

295:                                              ; preds = %274
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

296:                                              ; preds = %274
  %297 = add i32 %260, -1
  store i32 %297, ptr %10, align 4, !tbaa !77
  %298 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %297), !nosanitize !49
  %299 = extractvalue { i32, i1 } %298, 1, !nosanitize !49
  br i1 %299, label %300, label %301, !prof !50, !nosanitize !49

300:                                              ; preds = %296
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

301:                                              ; preds = %296
  %302 = extractvalue { i32, i1 } %298, 0, !nosanitize !49
  %303 = icmp ult i32 %302, 3
  br i1 %303, label %304, label %259, !llvm.loop !89

304:                                              ; preds = %301, %259, %230
  %305 = icmp ult i32 %225, 262
  br i1 %305, label %306, label %311

306:                                              ; preds = %304
  %307 = load ptr, ptr %0, align 8, !tbaa !20
  %308 = getelementptr inbounds nuw i8, ptr %307, i64 8
  %309 = load i32, ptr %308, align 8, !tbaa !82
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %75, !llvm.loop !90

311:                                              ; preds = %306, %304, %172
  %312 = load i64, ptr %19, align 8, !tbaa !42
  %313 = load i64, ptr %5, align 8, !tbaa !62
  %314 = icmp ult i64 %312, %313
  br i1 %314, label %315, label %354

315:                                              ; preds = %311
  %316 = load i32, ptr %6, align 4, !tbaa !74
  %317 = zext i32 %316 to i64
  %318 = load i32, ptr %3, align 4, !tbaa !76
  %319 = zext i32 %318 to i64
  %320 = add nuw nsw i64 %319, %317
  %321 = icmp ult i64 %312, %320
  br i1 %321, label %322, label %332

322:                                              ; preds = %315
  %323 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %313, i64 %320), !nosanitize !49
  %324 = extractvalue { i64, i1 } %323, 1, !nosanitize !49
  br i1 %324, label %325, label %326, !prof !50, !nosanitize !49

325:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

326:                                              ; preds = %322
  %327 = extractvalue { i64, i1 } %323, 0, !nosanitize !49
  %328 = tail call i64 @llvm.umin.i64(i64 %327, i64 258)
  %329 = load ptr, ptr %7, align 8, !tbaa !39
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 %320
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %330, i8 0, i64 %328, i1 false)
  %331 = add nuw nsw i64 %328, %320
  br label %352

332:                                              ; preds = %315
  %333 = add nuw nsw i64 %320, 258
  %334 = icmp ult i64 %312, %333
  br i1 %334, label %335, label %354

335:                                              ; preds = %332
  %336 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %313, i64 %312), !nosanitize !49
  %337 = extractvalue { i64, i1 } %336, 1, !nosanitize !49
  br i1 %337, label %338, label %339, !prof !50, !nosanitize !49

338:                                              ; preds = %335
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

339:                                              ; preds = %335
  %340 = sub nuw nsw i64 %333, %312
  %341 = extractvalue { i64, i1 } %336, 0, !nosanitize !49
  %342 = tail call i64 @llvm.umin.i64(i64 %340, i64 %341)
  %343 = load ptr, ptr %7, align 8, !tbaa !39
  %344 = getelementptr inbounds nuw i8, ptr %343, i64 %312
  %345 = and i64 %342, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %344, i8 0, i64 %345, i1 false)
  %346 = load i64, ptr %19, align 8, !tbaa !42
  %347 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %346, i64 %342), !nosanitize !49
  %348 = extractvalue { i64, i1 } %347, 1, !nosanitize !49
  br i1 %348, label %349, label %350, !prof !50, !nosanitize !49

349:                                              ; preds = %339
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

350:                                              ; preds = %339
  %351 = extractvalue { i64, i1 } %347, 0, !nosanitize !49
  br label %352

352:                                              ; preds = %350, %326
  %353 = phi i64 [ %331, %326 ], [ %351, %350 ]
  store i64 %353, ptr %19, align 8, !tbaa !42
  br label %354

354:                                              ; preds = %352, %311, %332
  %355 = load i32, ptr %3, align 4, !tbaa !76
  %356 = icmp ult i32 %355, 262
  %357 = and i1 %20, %356
  br i1 %357, label %977, label %358

358:                                              ; preds = %354
  %359 = icmp eq i32 %355, 0
  br i1 %359, label %845, label %360

360:                                              ; preds = %358, %69
  %361 = load i32, ptr %3, align 4, !tbaa !76
  %362 = icmp ugt i32 %361, 2
  br i1 %362, label %363, label %392

363:                                              ; preds = %360
  %364 = load i32, ptr %21, align 4, !tbaa !74
  %365 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %364, i32 2), !nosanitize !49
  %366 = extractvalue { i32, i1 } %365, 1, !nosanitize !49
  br i1 %366, label %367, label %368, !prof !50, !nosanitize !49

367:                                              ; preds = %363
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

368:                                              ; preds = %363
  %369 = extractvalue { i32, i1 } %365, 0, !nosanitize !49
  %370 = load ptr, ptr %22, align 8, !tbaa !39
  %371 = load i32, ptr %23, align 8, !tbaa !81
  %372 = load i32, ptr %24, align 8, !tbaa !38
  %373 = shl i32 %371, %372
  %374 = zext i32 %369 to i64
  %375 = getelementptr inbounds nuw i8, ptr %370, i64 %374
  %376 = load i8, ptr %375, align 1, !tbaa !8
  %377 = zext i8 %376 to i32
  %378 = xor i32 %373, %377
  %379 = load i32, ptr %25, align 4, !tbaa !37
  %380 = and i32 %378, %379
  store i32 %380, ptr %23, align 8, !tbaa !81
  %381 = load ptr, ptr %26, align 8, !tbaa !41
  %382 = zext i32 %380 to i64
  %383 = getelementptr inbounds nuw [2 x i8], ptr %381, i64 %382
  %384 = load i16, ptr %383, align 2, !tbaa !63
  %385 = load ptr, ptr %27, align 8, !tbaa !40
  %386 = load i32, ptr %28, align 8, !tbaa !34
  %387 = and i32 %386, %364
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds nuw [2 x i8], ptr %385, i64 %388
  store i16 %384, ptr %389, align 2, !tbaa !63
  %390 = zext i16 %384 to i32
  %391 = trunc i32 %364 to i16
  store i16 %391, ptr %383, align 2, !tbaa !63
  br label %392

392:                                              ; preds = %368, %360
  %393 = phi i32 [ %390, %368 ], [ 0, %360 ]
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %567, label %395

395:                                              ; preds = %392
  %396 = load i32, ptr %29, align 4, !tbaa !74
  %397 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %396, i32 %393), !nosanitize !49
  %398 = extractvalue { i32, i1 } %397, 0, !nosanitize !49
  %399 = extractvalue { i32, i1 } %397, 1, !nosanitize !49
  br i1 %399, label %400, label %401, !prof !50, !nosanitize !49

400:                                              ; preds = %395
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

401:                                              ; preds = %395
  %402 = load i32, ptr %30, align 8, !tbaa !33
  %403 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %402, i32 262), !nosanitize !49
  %404 = extractvalue { i32, i1 } %403, 1, !nosanitize !49
  br i1 %404, label %405, label %406, !prof !50, !nosanitize !49

405:                                              ; preds = %401
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

406:                                              ; preds = %401
  %407 = extractvalue { i32, i1 } %403, 0, !nosanitize !49
  %408 = icmp ugt i32 %398, %407
  br i1 %408, label %567, label %409

409:                                              ; preds = %406
  %410 = load ptr, ptr %31, align 8, !tbaa !39
  %411 = zext i32 %396 to i64
  %412 = getelementptr inbounds nuw i8, ptr %410, i64 %411
  %413 = load i32, ptr %32, align 8, !tbaa !71
  %414 = load i32, ptr %33, align 8, !tbaa !78
  %415 = load i32, ptr %34, align 4, !tbaa !73
  %416 = tail call i32 @llvm.usub.sat.i32(i32 %396, i32 %407)
  %417 = load ptr, ptr %35, align 8, !tbaa !40
  %418 = load i32, ptr %36, align 8, !tbaa !34
  %419 = getelementptr inbounds nuw i8, ptr %412, i64 258
  %420 = sext i32 %414 to i64
  %421 = getelementptr i8, ptr %412, i64 %420
  %422 = getelementptr i8, ptr %421, i64 -1
  %423 = load i8, ptr %422, align 1, !tbaa !8
  %424 = load i8, ptr %421, align 1, !tbaa !8
  %425 = load i32, ptr %37, align 4, !tbaa !69
  %426 = icmp ult i32 %414, %425
  %427 = lshr i32 %415, 2
  %428 = select i1 %426, i32 %415, i32 %427
  %429 = tail call i32 @llvm.umin.i32(i32 %413, i32 %361)
  %430 = getelementptr inbounds nuw i8, ptr %412, i64 1
  %431 = ptrtoint ptr %419 to i64
  br label %432

432:                                              ; preds = %561, %409
  %433 = phi i32 [ %414, %409 ], [ %548, %561 ]
  %434 = phi i32 [ %428, %409 ], [ %562, %561 ]
  %435 = phi i32 [ %393, %409 ], [ %555, %561 ]
  %436 = phi i8 [ %423, %409 ], [ %549, %561 ]
  %437 = phi i8 [ %424, %409 ], [ %550, %561 ]
  %438 = zext nneg i32 %435 to i64
  %439 = getelementptr inbounds nuw i8, ptr %410, i64 %438
  %440 = sext i32 %433 to i64
  %441 = getelementptr inbounds i8, ptr %439, i64 %440
  %442 = load i8, ptr %441, align 1, !tbaa !8
  %443 = icmp eq i8 %442, %437
  br i1 %443, label %444, label %547

444:                                              ; preds = %432
  %445 = getelementptr i8, ptr %441, i64 -1
  %446 = load i8, ptr %445, align 1, !tbaa !8
  %447 = icmp eq i8 %446, %436
  br i1 %447, label %448, label %547

448:                                              ; preds = %444
  %449 = load i8, ptr %439, align 1, !tbaa !8
  %450 = load i8, ptr %412, align 1, !tbaa !8
  %451 = icmp eq i8 %449, %450
  br i1 %451, label %452, label %547

452:                                              ; preds = %448
  %453 = getelementptr inbounds nuw i8, ptr %439, i64 1
  %454 = load i8, ptr %453, align 1, !tbaa !8
  %455 = load i8, ptr %430, align 1, !tbaa !8
  %456 = icmp eq i8 %454, %455
  br i1 %456, label %457, label %547

457:                                              ; preds = %452
  %458 = getelementptr inbounds nuw i8, ptr %439, i64 2
  br label %459

459:                                              ; preds = %504, %457
  %460 = phi ptr [ %458, %457 ], [ %508, %504 ]
  %461 = phi i64 [ 2, %457 ], [ %505, %504 ]
  %462 = getelementptr inbounds nuw i8, ptr %412, i64 %461
  %463 = getelementptr inbounds nuw i8, ptr %462, i64 1
  %464 = load i8, ptr %463, align 1, !tbaa !8
  %465 = getelementptr inbounds nuw i8, ptr %460, i64 1
  %466 = load i8, ptr %465, align 1, !tbaa !8
  %467 = icmp eq i8 %464, %466
  br i1 %467, label %468, label %513

468:                                              ; preds = %459
  %469 = getelementptr inbounds nuw i8, ptr %462, i64 2
  %470 = load i8, ptr %469, align 1, !tbaa !8
  %471 = getelementptr inbounds nuw i8, ptr %460, i64 2
  %472 = load i8, ptr %471, align 1, !tbaa !8
  %473 = icmp eq i8 %470, %472
  br i1 %473, label %474, label %515

474:                                              ; preds = %468
  %475 = getelementptr inbounds nuw i8, ptr %462, i64 3
  %476 = load i8, ptr %475, align 1, !tbaa !8
  %477 = getelementptr inbounds nuw i8, ptr %460, i64 3
  %478 = load i8, ptr %477, align 1, !tbaa !8
  %479 = icmp eq i8 %476, %478
  br i1 %479, label %480, label %517

480:                                              ; preds = %474
  %481 = getelementptr inbounds nuw i8, ptr %462, i64 4
  %482 = load i8, ptr %481, align 1, !tbaa !8
  %483 = getelementptr inbounds nuw i8, ptr %460, i64 4
  %484 = load i8, ptr %483, align 1, !tbaa !8
  %485 = icmp eq i8 %482, %484
  br i1 %485, label %486, label %519

486:                                              ; preds = %480
  %487 = getelementptr inbounds nuw i8, ptr %462, i64 5
  %488 = load i8, ptr %487, align 1, !tbaa !8
  %489 = getelementptr inbounds nuw i8, ptr %460, i64 5
  %490 = load i8, ptr %489, align 1, !tbaa !8
  %491 = icmp eq i8 %488, %490
  br i1 %491, label %492, label %521

492:                                              ; preds = %486
  %493 = getelementptr inbounds nuw i8, ptr %462, i64 6
  %494 = load i8, ptr %493, align 1, !tbaa !8
  %495 = getelementptr inbounds nuw i8, ptr %460, i64 6
  %496 = load i8, ptr %495, align 1, !tbaa !8
  %497 = icmp eq i8 %494, %496
  br i1 %497, label %498, label %523

498:                                              ; preds = %492
  %499 = getelementptr inbounds nuw i8, ptr %462, i64 7
  %500 = load i8, ptr %499, align 1, !tbaa !8
  %501 = getelementptr inbounds nuw i8, ptr %460, i64 7
  %502 = load i8, ptr %501, align 1, !tbaa !8
  %503 = icmp eq i8 %500, %502
  br i1 %503, label %504, label %525

504:                                              ; preds = %498
  %505 = add nuw nsw i64 %461, 8
  %506 = getelementptr inbounds nuw i8, ptr %412, i64 %505
  %507 = load i8, ptr %506, align 1, !tbaa !8
  %508 = getelementptr inbounds nuw i8, ptr %460, i64 8
  %509 = load i8, ptr %508, align 1, !tbaa !8
  %510 = icmp eq i8 %507, %509
  %511 = icmp samesign ult i64 %461, 250
  %512 = select i1 %510, i1 %511, i1 false
  br i1 %512, label %459, label %527, !llvm.loop !129

513:                                              ; preds = %459
  %514 = getelementptr inbounds nuw i8, ptr %462, i64 1
  br label %529

515:                                              ; preds = %468
  %516 = getelementptr inbounds nuw i8, ptr %462, i64 2
  br label %529

517:                                              ; preds = %474
  %518 = getelementptr inbounds nuw i8, ptr %462, i64 3
  br label %529

519:                                              ; preds = %480
  %520 = getelementptr inbounds nuw i8, ptr %462, i64 4
  br label %529

521:                                              ; preds = %486
  %522 = getelementptr inbounds nuw i8, ptr %462, i64 5
  br label %529

523:                                              ; preds = %492
  %524 = getelementptr inbounds nuw i8, ptr %462, i64 6
  br label %529

525:                                              ; preds = %498
  %526 = getelementptr inbounds nuw i8, ptr %462, i64 7
  br label %529

527:                                              ; preds = %504
  %528 = getelementptr inbounds nuw i8, ptr %412, i64 %505
  br label %529

529:                                              ; preds = %527, %525, %523, %521, %519, %517, %515, %513
  %530 = phi ptr [ %516, %515 ], [ %518, %517 ], [ %514, %513 ], [ %526, %525 ], [ %524, %523 ], [ %522, %521 ], [ %520, %519 ], [ %528, %527 ]
  %531 = ptrtoint ptr %530 to i64
  %532 = sub i64 %531, %431
  %533 = trunc i64 %532 to i32
  %534 = add i32 %533, 258
  %535 = icmp sgt i32 %534, %433
  br i1 %535, label %536, label %547

536:                                              ; preds = %529
  store i32 %435, ptr %38, align 8, !tbaa !84
  %537 = icmp slt i32 %534, %429
  br i1 %537, label %538, label %564

538:                                              ; preds = %536
  %539 = shl i64 %532, 32
  %540 = add i64 %539, 1103806595072
  %541 = ashr exact i64 %540, 32
  %542 = getelementptr inbounds i8, ptr %412, i64 %541
  %543 = load i8, ptr %542, align 1, !tbaa !8
  %544 = sext i32 %534 to i64
  %545 = getelementptr inbounds i8, ptr %412, i64 %544
  %546 = load i8, ptr %545, align 1, !tbaa !8
  br label %547

547:                                              ; preds = %538, %529, %452, %448, %444, %432
  %548 = phi i32 [ %433, %432 ], [ %433, %444 ], [ %433, %448 ], [ %433, %452 ], [ %534, %538 ], [ %433, %529 ]
  %549 = phi i8 [ %436, %432 ], [ %436, %444 ], [ %436, %448 ], [ %436, %452 ], [ %543, %538 ], [ %436, %529 ]
  %550 = phi i8 [ %437, %432 ], [ %437, %444 ], [ %437, %448 ], [ %437, %452 ], [ %546, %538 ], [ %437, %529 ]
  %551 = and i32 %435, %418
  %552 = zext nneg i32 %551 to i64
  %553 = getelementptr inbounds nuw [2 x i8], ptr %417, i64 %552
  %554 = load i16, ptr %553, align 2, !tbaa !63
  %555 = zext i16 %554 to i32
  %556 = icmp ult i32 %416, %555
  br i1 %556, label %557, label %564

557:                                              ; preds = %547
  %558 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %434, i32 1), !nosanitize !49
  %559 = extractvalue { i32, i1 } %558, 1, !nosanitize !49
  br i1 %559, label %560, label %561, !prof !50, !nosanitize !49

560:                                              ; preds = %557
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

561:                                              ; preds = %557
  %562 = extractvalue { i32, i1 } %558, 0, !nosanitize !49
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %432, !llvm.loop !130

564:                                              ; preds = %536, %547, %561
  %565 = phi i32 [ %548, %561 ], [ %548, %547 ], [ %534, %536 ]
  %566 = tail call i32 @llvm.umin.i32(i32 %565, i32 %361)
  store i32 %566, ptr %39, align 8, !tbaa !79
  br label %567

567:                                              ; preds = %564, %406, %392
  %568 = load i32, ptr %40, align 8, !tbaa !79
  %569 = icmp ugt i32 %568, 2
  br i1 %569, label %570, label %728

570:                                              ; preds = %567
  %571 = trunc i32 %568 to i8
  %572 = add i8 %571, -3
  %573 = load i32, ptr %47, align 4, !tbaa !74
  %574 = load i32, ptr %48, align 8, !tbaa !84
  %575 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %573, i32 %574), !nosanitize !49
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !49
  br i1 %576, label %577, label %578, !prof !50, !nosanitize !49

577:                                              ; preds = %570
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

578:                                              ; preds = %570
  %579 = extractvalue { i32, i1 } %575, 0, !nosanitize !49
  %580 = trunc i32 %579 to i16
  %581 = load i32, ptr %50, align 4, !tbaa !122
  %582 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %581, i32 1), !nosanitize !49
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !49
  br i1 %583, label %584, label %585, !prof !50, !nosanitize !49

584:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

585:                                              ; preds = %578
  %586 = extractvalue { i32, i1 } %582, 0, !nosanitize !49
  %587 = load ptr, ptr %49, align 8, !tbaa !48
  %588 = trunc i32 %579 to i8
  store i32 %586, ptr %50, align 4, !tbaa !122
  %589 = zext i32 %581 to i64
  %590 = getelementptr inbounds nuw i8, ptr %587, i64 %589
  store i8 %588, ptr %590, align 1, !tbaa !8
  %591 = load i32, ptr %50, align 4, !tbaa !122
  %592 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %591, i32 1), !nosanitize !49
  %593 = extractvalue { i32, i1 } %592, 1, !nosanitize !49
  br i1 %593, label %594, label %595, !prof !50, !nosanitize !49

594:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

595:                                              ; preds = %585
  %596 = extractvalue { i32, i1 } %592, 0, !nosanitize !49
  %597 = load ptr, ptr %49, align 8, !tbaa !48
  %598 = lshr i32 %579, 8
  %599 = trunc i32 %598 to i8
  store i32 %596, ptr %50, align 4, !tbaa !122
  %600 = zext i32 %591 to i64
  %601 = getelementptr inbounds nuw i8, ptr %597, i64 %600
  store i8 %599, ptr %601, align 1, !tbaa !8
  %602 = load i32, ptr %50, align 4, !tbaa !122
  %603 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %602, i32 1), !nosanitize !49
  %604 = extractvalue { i32, i1 } %603, 1, !nosanitize !49
  br i1 %604, label %605, label %606, !prof !50, !nosanitize !49

605:                                              ; preds = %595
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

606:                                              ; preds = %595
  %607 = extractvalue { i32, i1 } %603, 0, !nosanitize !49
  %608 = load ptr, ptr %49, align 8, !tbaa !48
  store i32 %607, ptr %50, align 4, !tbaa !122
  %609 = zext i32 %602 to i64
  %610 = getelementptr inbounds nuw i8, ptr %608, i64 %609
  store i8 %572, ptr %610, align 1, !tbaa !8
  %611 = add i16 %580, -1
  %612 = zext i8 %572 to i64
  %613 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %612
  %614 = load i8, ptr %613, align 1, !tbaa !8
  %615 = zext i8 %614 to i64
  %616 = getelementptr [4 x i8], ptr %51, i64 %615
  %617 = load i16, ptr %616, align 4, !tbaa !8
  %618 = add i16 %617, 1
  store i16 %618, ptr %616, align 4, !tbaa !8
  %619 = icmp ult i16 %611, 256
  br i1 %619, label %620, label %623

620:                                              ; preds = %606
  %621 = zext nneg i16 %611 to i64
  %622 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %621
  br label %628

623:                                              ; preds = %606
  %624 = lshr i16 %611, 7
  %625 = zext nneg i16 %624 to i64
  %626 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %625
  %627 = getelementptr inbounds nuw i8, ptr %626, i64 256
  br label %628

628:                                              ; preds = %623, %620
  %629 = phi ptr [ %622, %620 ], [ %627, %623 ]
  %630 = load i8, ptr %629, align 1, !tbaa !8
  %631 = zext i8 %630 to i64
  %632 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %631
  %633 = load i16, ptr %632, align 4, !tbaa !8
  %634 = add i16 %633, 1
  store i16 %634, ptr %632, align 4, !tbaa !8
  %635 = load i32, ptr %50, align 4, !tbaa !122
  %636 = load i32, ptr %53, align 8, !tbaa !51
  %637 = icmp eq i32 %635, %636
  %638 = load i32, ptr %40, align 8, !tbaa !79
  %639 = load i32, ptr %3, align 4, !tbaa !76
  %640 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %639, i32 %638), !nosanitize !49
  %641 = extractvalue { i32, i1 } %640, 1, !nosanitize !49
  br i1 %641, label %642, label %643, !prof !50, !nosanitize !49

642:                                              ; preds = %628
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

643:                                              ; preds = %628
  %644 = extractvalue { i32, i1 } %640, 0, !nosanitize !49
  store i32 %644, ptr %3, align 4, !tbaa !76
  %645 = load i32, ptr %54, align 8, !tbaa !67
  %646 = icmp ule i32 %638, %645
  %647 = icmp ugt i32 %644, 2
  %648 = select i1 %646, i1 %647, i1 false
  br i1 %648, label %649, label %702

649:                                              ; preds = %643
  %650 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %638, i32 1), !nosanitize !49
  %651 = extractvalue { i32, i1 } %650, 1, !nosanitize !49
  br i1 %651, label %652, label %653, !prof !50, !nosanitize !49

652:                                              ; preds = %649
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

653:                                              ; preds = %649
  %654 = extractvalue { i32, i1 } %650, 0, !nosanitize !49
  store i32 %654, ptr %40, align 8, !tbaa !79
  %655 = load i32, ptr %47, align 4, !tbaa !74
  %656 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %655, i32 1), !nosanitize !49
  %657 = extractvalue { i32, i1 } %656, 1, !nosanitize !49
  br i1 %657, label %659, label %660, !prof !117, !nosanitize !49

658:                                              ; preds = %693
  br i1 %697, label %659, label %660, !prof !118, !llvm.loop !131, !nosanitize !49

659:                                              ; preds = %653, %658
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

660:                                              ; preds = %653, %658
  %661 = phi { i32, i1 } [ %696, %658 ], [ %656, %653 ]
  %662 = extractvalue { i32, i1 } %661, 0, !nosanitize !49
  store i32 %662, ptr %47, align 4, !tbaa !74
  %663 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %662, i32 2), !nosanitize !49
  %664 = extractvalue { i32, i1 } %663, 1, !nosanitize !49
  br i1 %664, label %665, label %666, !prof !50, !nosanitize !49

665:                                              ; preds = %660
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

666:                                              ; preds = %660
  %667 = extractvalue { i32, i1 } %663, 0, !nosanitize !49
  %668 = load ptr, ptr %59, align 8, !tbaa !39
  %669 = load i32, ptr %60, align 8, !tbaa !81
  %670 = load i32, ptr %61, align 8, !tbaa !38
  %671 = shl i32 %669, %670
  %672 = zext i32 %667 to i64
  %673 = getelementptr inbounds nuw i8, ptr %668, i64 %672
  %674 = load i8, ptr %673, align 1, !tbaa !8
  %675 = zext i8 %674 to i32
  %676 = xor i32 %671, %675
  %677 = load i32, ptr %62, align 4, !tbaa !37
  %678 = and i32 %676, %677
  store i32 %678, ptr %60, align 8, !tbaa !81
  %679 = load ptr, ptr %63, align 8, !tbaa !41
  %680 = zext i32 %678 to i64
  %681 = getelementptr inbounds nuw [2 x i8], ptr %679, i64 %680
  %682 = load i16, ptr %681, align 2, !tbaa !63
  %683 = load ptr, ptr %64, align 8, !tbaa !40
  %684 = load i32, ptr %65, align 8, !tbaa !34
  %685 = and i32 %684, %662
  %686 = zext i32 %685 to i64
  %687 = getelementptr inbounds nuw [2 x i8], ptr %683, i64 %686
  store i16 %682, ptr %687, align 2, !tbaa !63
  %688 = trunc i32 %662 to i16
  store i16 %688, ptr %681, align 2, !tbaa !63
  %689 = load i32, ptr %40, align 8, !tbaa !79
  %690 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %689, i32 1), !nosanitize !49
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !49
  br i1 %691, label %692, label %693, !prof !50, !nosanitize !49

692:                                              ; preds = %666
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

693:                                              ; preds = %666
  %694 = extractvalue { i32, i1 } %690, 0, !nosanitize !49
  store i32 %694, ptr %40, align 8, !tbaa !79
  %695 = icmp eq i32 %694, 0
  %696 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %662, i32 1), !nosanitize !49
  %697 = extractvalue { i32, i1 } %696, 1, !nosanitize !49
  br i1 %695, label %698, label %658, !llvm.loop !131

698:                                              ; preds = %693
  br i1 %697, label %699, label %700, !prof !50, !nosanitize !49

699:                                              ; preds = %698
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

700:                                              ; preds = %698
  %701 = extractvalue { i32, i1 } %696, 0, !nosanitize !49
  store i32 %701, ptr %47, align 4, !tbaa !74
  br label %780

702:                                              ; preds = %643
  %703 = load i32, ptr %47, align 4, !tbaa !74
  %704 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %703, i32 %638), !nosanitize !49
  %705 = extractvalue { i32, i1 } %704, 1, !nosanitize !49
  br i1 %705, label %706, label %707, !prof !50, !nosanitize !49

706:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

707:                                              ; preds = %702
  %708 = extractvalue { i32, i1 } %704, 0, !nosanitize !49
  store i32 %708, ptr %47, align 4, !tbaa !74
  store i32 0, ptr %40, align 8, !tbaa !79
  %709 = load ptr, ptr %55, align 8, !tbaa !39
  %710 = zext i32 %708 to i64
  %711 = getelementptr inbounds nuw i8, ptr %709, i64 %710
  %712 = load i8, ptr %711, align 1, !tbaa !8
  %713 = zext i8 %712 to i32
  store i32 %713, ptr %56, align 8, !tbaa !81
  %714 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %708, i32 1), !nosanitize !49
  %715 = extractvalue { i32, i1 } %714, 1, !nosanitize !49
  br i1 %715, label %716, label %717, !prof !50, !nosanitize !49

716:                                              ; preds = %707
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

717:                                              ; preds = %707
  %718 = extractvalue { i32, i1 } %714, 0, !nosanitize !49
  %719 = load i32, ptr %57, align 8, !tbaa !38
  %720 = shl i32 %713, %719
  %721 = zext i32 %718 to i64
  %722 = getelementptr inbounds nuw i8, ptr %709, i64 %721
  %723 = load i8, ptr %722, align 1, !tbaa !8
  %724 = zext i8 %723 to i32
  %725 = xor i32 %720, %724
  %726 = load i32, ptr %58, align 4, !tbaa !37
  %727 = and i32 %725, %726
  store i32 %727, ptr %56, align 8, !tbaa !81
  br label %780

728:                                              ; preds = %567
  %729 = load ptr, ptr %41, align 8, !tbaa !39
  %730 = load i32, ptr %42, align 4, !tbaa !74
  %731 = zext i32 %730 to i64
  %732 = getelementptr inbounds nuw i8, ptr %729, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !8
  %734 = load i32, ptr %44, align 4, !tbaa !122
  %735 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %734, i32 1), !nosanitize !49
  %736 = extractvalue { i32, i1 } %735, 1, !nosanitize !49
  br i1 %736, label %737, label %738, !prof !50, !nosanitize !49

737:                                              ; preds = %728
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

738:                                              ; preds = %728
  %739 = extractvalue { i32, i1 } %735, 0, !nosanitize !49
  %740 = load ptr, ptr %43, align 8, !tbaa !48
  store i32 %739, ptr %44, align 4, !tbaa !122
  %741 = zext i32 %734 to i64
  %742 = getelementptr inbounds nuw i8, ptr %740, i64 %741
  store i8 0, ptr %742, align 1, !tbaa !8
  %743 = load i32, ptr %44, align 4, !tbaa !122
  %744 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %743, i32 1), !nosanitize !49
  %745 = extractvalue { i32, i1 } %744, 1, !nosanitize !49
  br i1 %745, label %746, label %747, !prof !50, !nosanitize !49

746:                                              ; preds = %738
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

747:                                              ; preds = %738
  %748 = extractvalue { i32, i1 } %744, 0, !nosanitize !49
  %749 = load ptr, ptr %43, align 8, !tbaa !48
  store i32 %748, ptr %44, align 4, !tbaa !122
  %750 = zext i32 %743 to i64
  %751 = getelementptr inbounds nuw i8, ptr %749, i64 %750
  store i8 0, ptr %751, align 1, !tbaa !8
  %752 = load i32, ptr %44, align 4, !tbaa !122
  %753 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %752, i32 1), !nosanitize !49
  %754 = extractvalue { i32, i1 } %753, 1, !nosanitize !49
  br i1 %754, label %755, label %756, !prof !50, !nosanitize !49

755:                                              ; preds = %747
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

756:                                              ; preds = %747
  %757 = extractvalue { i32, i1 } %753, 0, !nosanitize !49
  %758 = load ptr, ptr %43, align 8, !tbaa !48
  store i32 %757, ptr %44, align 4, !tbaa !122
  %759 = zext i32 %752 to i64
  %760 = getelementptr inbounds nuw i8, ptr %758, i64 %759
  store i8 %733, ptr %760, align 1, !tbaa !8
  %761 = zext i8 %733 to i64
  %762 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %761
  %763 = load i16, ptr %762, align 4, !tbaa !8
  %764 = add i16 %763, 1
  store i16 %764, ptr %762, align 4, !tbaa !8
  %765 = load i32, ptr %44, align 4, !tbaa !122
  %766 = load i32, ptr %46, align 8, !tbaa !51
  %767 = icmp eq i32 %765, %766
  %768 = load i32, ptr %3, align 4, !tbaa !76
  %769 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %768, i32 1), !nosanitize !49
  %770 = extractvalue { i32, i1 } %769, 1, !nosanitize !49
  br i1 %770, label %771, label %772, !prof !50, !nosanitize !49

771:                                              ; preds = %756
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

772:                                              ; preds = %756
  %773 = extractvalue { i32, i1 } %769, 0, !nosanitize !49
  store i32 %773, ptr %3, align 4, !tbaa !76
  %774 = load i32, ptr %42, align 4, !tbaa !74
  %775 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %774, i32 1), !nosanitize !49
  %776 = extractvalue { i32, i1 } %775, 1, !nosanitize !49
  br i1 %776, label %777, label %778, !prof !50, !nosanitize !49

777:                                              ; preds = %772
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

778:                                              ; preds = %772
  %779 = extractvalue { i32, i1 } %775, 0, !nosanitize !49
  store i32 %779, ptr %42, align 4, !tbaa !74
  br label %780

780:                                              ; preds = %700, %717, %778
  %781 = phi i1 [ %637, %700 ], [ %637, %717 ], [ %767, %778 ]
  br i1 %781, label %782, label %844

782:                                              ; preds = %780
  %783 = load i64, ptr %66, align 8, !tbaa !75
  %784 = icmp sgt i64 %783, -1
  br i1 %784, label %785, label %789

785:                                              ; preds = %782
  %786 = load ptr, ptr %67, align 8, !tbaa !39
  %787 = and i64 %783, 4294967295
  %788 = getelementptr inbounds nuw i8, ptr %786, i64 %787
  br label %789

789:                                              ; preds = %782, %785
  %790 = phi ptr [ %788, %785 ], [ null, %782 ]
  %791 = load i32, ptr %68, align 4, !tbaa !74
  %792 = zext i32 %791 to i64
  %793 = sub nsw i64 %792, %783
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %790, i64 noundef %793, i32 noundef 0) #12
  %794 = load i32, ptr %68, align 4, !tbaa !74
  %795 = zext i32 %794 to i64
  store i64 %795, ptr %66, align 8, !tbaa !75
  %796 = load ptr, ptr %0, align 8, !tbaa !20
  %797 = getelementptr inbounds nuw i8, ptr %796, i64 56
  %798 = load ptr, ptr %797, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %798) #12
  %799 = getelementptr inbounds nuw i8, ptr %798, i64 40
  %800 = load i64, ptr %799, align 8, !tbaa !58
  %801 = getelementptr inbounds nuw i8, ptr %796, i64 32
  %802 = load i32, ptr %801, align 8, !tbaa !100
  %803 = zext i32 %802 to i64
  %804 = tail call i64 @llvm.umin.i64(i64 %800, i64 %803)
  %805 = trunc nuw i64 %804 to i32
  %806 = icmp eq i64 %804, 0
  br i1 %806, label %839, label %807

807:                                              ; preds = %789
  %808 = getelementptr inbounds nuw i8, ptr %796, i64 24
  %809 = load ptr, ptr %808, align 8, !tbaa !99
  %810 = getelementptr inbounds nuw i8, ptr %798, i64 32
  %811 = load ptr, ptr %810, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %809, ptr align 1 %811, i64 %804, i1 false)
  %812 = load ptr, ptr %808, align 8, !tbaa !99
  %813 = getelementptr inbounds nuw i8, ptr %812, i64 %804
  store ptr %813, ptr %808, align 8, !tbaa !99
  %814 = load ptr, ptr %810, align 8, !tbaa !59
  %815 = getelementptr inbounds nuw i8, ptr %814, i64 %804
  store ptr %815, ptr %810, align 8, !tbaa !59
  %816 = getelementptr inbounds nuw i8, ptr %796, i64 40
  %817 = load i64, ptr %816, align 8, !tbaa !101
  %818 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %817, i64 %804), !nosanitize !49
  %819 = extractvalue { i64, i1 } %818, 1, !nosanitize !49
  br i1 %819, label %820, label %821, !prof !50, !nosanitize !49

820:                                              ; preds = %807
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

821:                                              ; preds = %807
  %822 = extractvalue { i64, i1 } %818, 0, !nosanitize !49
  store i64 %822, ptr %816, align 8, !tbaa !101
  %823 = load i32, ptr %801, align 8, !tbaa !100
  %824 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %823, i32 %805), !nosanitize !49
  %825 = extractvalue { i32, i1 } %824, 1, !nosanitize !49
  br i1 %825, label %826, label %827, !prof !50, !nosanitize !49

826:                                              ; preds = %821
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

827:                                              ; preds = %821
  %828 = extractvalue { i32, i1 } %824, 0, !nosanitize !49
  store i32 %828, ptr %801, align 8, !tbaa !100
  %829 = load i64, ptr %799, align 8, !tbaa !58
  %830 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %829, i64 %804), !nosanitize !49
  %831 = extractvalue { i64, i1 } %830, 1, !nosanitize !49
  br i1 %831, label %832, label %833, !prof !50, !nosanitize !49

832:                                              ; preds = %827
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

833:                                              ; preds = %827
  %834 = extractvalue { i64, i1 } %830, 0, !nosanitize !49
  store i64 %834, ptr %799, align 8, !tbaa !58
  %835 = icmp eq i64 %834, 0
  br i1 %835, label %836, label %839

836:                                              ; preds = %833
  %837 = getelementptr inbounds nuw i8, ptr %798, i64 16
  %838 = load ptr, ptr %837, align 8, !tbaa !44
  store ptr %838, ptr %810, align 8, !tbaa !59
  br label %839

839:                                              ; preds = %789, %833, %836
  %840 = load ptr, ptr %0, align 8, !tbaa !20
  %841 = getelementptr inbounds nuw i8, ptr %840, i64 32
  %842 = load i32, ptr %841, align 8, !tbaa !100
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %977, label %844

844:                                              ; preds = %839, %780
  br label %69, !llvm.loop !132

845:                                              ; preds = %358
  %846 = load i32, ptr %6, align 4, !tbaa !74
  %847 = tail call i32 @llvm.umin.i32(i32 %846, i32 2)
  store i32 %847, ptr %10, align 4, !tbaa !77
  %848 = icmp eq i32 %1, 4
  br i1 %848, label %849, label %911

849:                                              ; preds = %845
  %850 = load i64, ptr %9, align 8, !tbaa !75
  %851 = icmp sgt i64 %850, -1
  br i1 %851, label %852, label %856

852:                                              ; preds = %849
  %853 = load ptr, ptr %7, align 8, !tbaa !39
  %854 = and i64 %850, 4294967295
  %855 = getelementptr inbounds nuw i8, ptr %853, i64 %854
  br label %856

856:                                              ; preds = %849, %852
  %857 = phi ptr [ %855, %852 ], [ null, %849 ]
  %858 = zext i32 %846 to i64
  %859 = sub nsw i64 %858, %850
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %857, i64 noundef %859, i32 noundef 1) #12
  %860 = load i32, ptr %6, align 4, !tbaa !74
  %861 = zext i32 %860 to i64
  store i64 %861, ptr %9, align 8, !tbaa !75
  %862 = load ptr, ptr %0, align 8, !tbaa !20
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 56
  %864 = load ptr, ptr %863, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %864) #12
  %865 = getelementptr inbounds nuw i8, ptr %864, i64 40
  %866 = load i64, ptr %865, align 8, !tbaa !58
  %867 = getelementptr inbounds nuw i8, ptr %862, i64 32
  %868 = load i32, ptr %867, align 8, !tbaa !100
  %869 = zext i32 %868 to i64
  %870 = tail call i64 @llvm.umin.i64(i64 %866, i64 %869)
  %871 = trunc nuw i64 %870 to i32
  %872 = icmp eq i64 %870, 0
  br i1 %872, label %905, label %873

873:                                              ; preds = %856
  %874 = getelementptr inbounds nuw i8, ptr %862, i64 24
  %875 = load ptr, ptr %874, align 8, !tbaa !99
  %876 = getelementptr inbounds nuw i8, ptr %864, i64 32
  %877 = load ptr, ptr %876, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %875, ptr align 1 %877, i64 %870, i1 false)
  %878 = load ptr, ptr %874, align 8, !tbaa !99
  %879 = getelementptr inbounds nuw i8, ptr %878, i64 %870
  store ptr %879, ptr %874, align 8, !tbaa !99
  %880 = load ptr, ptr %876, align 8, !tbaa !59
  %881 = getelementptr inbounds nuw i8, ptr %880, i64 %870
  store ptr %881, ptr %876, align 8, !tbaa !59
  %882 = getelementptr inbounds nuw i8, ptr %862, i64 40
  %883 = load i64, ptr %882, align 8, !tbaa !101
  %884 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %883, i64 %870), !nosanitize !49
  %885 = extractvalue { i64, i1 } %884, 1, !nosanitize !49
  br i1 %885, label %886, label %887, !prof !50, !nosanitize !49

886:                                              ; preds = %873
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

887:                                              ; preds = %873
  %888 = extractvalue { i64, i1 } %884, 0, !nosanitize !49
  store i64 %888, ptr %882, align 8, !tbaa !101
  %889 = load i32, ptr %867, align 8, !tbaa !100
  %890 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %889, i32 %871), !nosanitize !49
  %891 = extractvalue { i32, i1 } %890, 1, !nosanitize !49
  br i1 %891, label %892, label %893, !prof !50, !nosanitize !49

892:                                              ; preds = %887
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

893:                                              ; preds = %887
  %894 = extractvalue { i32, i1 } %890, 0, !nosanitize !49
  store i32 %894, ptr %867, align 8, !tbaa !100
  %895 = load i64, ptr %865, align 8, !tbaa !58
  %896 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %895, i64 %870), !nosanitize !49
  %897 = extractvalue { i64, i1 } %896, 1, !nosanitize !49
  br i1 %897, label %898, label %899, !prof !50, !nosanitize !49

898:                                              ; preds = %893
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

899:                                              ; preds = %893
  %900 = extractvalue { i64, i1 } %896, 0, !nosanitize !49
  store i64 %900, ptr %865, align 8, !tbaa !58
  %901 = icmp eq i64 %900, 0
  br i1 %901, label %902, label %905

902:                                              ; preds = %899
  %903 = getelementptr inbounds nuw i8, ptr %864, i64 16
  %904 = load ptr, ptr %903, align 8, !tbaa !44
  store ptr %904, ptr %876, align 8, !tbaa !59
  br label %905

905:                                              ; preds = %856, %899, %902
  %906 = load ptr, ptr %0, align 8, !tbaa !20
  %907 = getelementptr inbounds nuw i8, ptr %906, i64 32
  %908 = load i32, ptr %907, align 8, !tbaa !100
  %909 = icmp eq i32 %908, 0
  %910 = select i1 %909, i32 2, i32 3
  br label %977

911:                                              ; preds = %845
  %912 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %913 = load i32, ptr %912, align 4, !tbaa !122
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %976, label %915

915:                                              ; preds = %911
  %916 = load i64, ptr %9, align 8, !tbaa !75
  %917 = icmp sgt i64 %916, -1
  br i1 %917, label %918, label %922

918:                                              ; preds = %915
  %919 = load ptr, ptr %7, align 8, !tbaa !39
  %920 = and i64 %916, 4294967295
  %921 = getelementptr inbounds nuw i8, ptr %919, i64 %920
  br label %922

922:                                              ; preds = %915, %918
  %923 = phi ptr [ %921, %918 ], [ null, %915 ]
  %924 = zext i32 %846 to i64
  %925 = sub nsw i64 %924, %916
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %923, i64 noundef %925, i32 noundef 0) #12
  %926 = load i32, ptr %6, align 4, !tbaa !74
  %927 = zext i32 %926 to i64
  store i64 %927, ptr %9, align 8, !tbaa !75
  %928 = load ptr, ptr %0, align 8, !tbaa !20
  %929 = getelementptr inbounds nuw i8, ptr %928, i64 56
  %930 = load ptr, ptr %929, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %930) #12
  %931 = getelementptr inbounds nuw i8, ptr %930, i64 40
  %932 = load i64, ptr %931, align 8, !tbaa !58
  %933 = getelementptr inbounds nuw i8, ptr %928, i64 32
  %934 = load i32, ptr %933, align 8, !tbaa !100
  %935 = zext i32 %934 to i64
  %936 = tail call i64 @llvm.umin.i64(i64 %932, i64 %935)
  %937 = trunc nuw i64 %936 to i32
  %938 = icmp eq i64 %936, 0
  br i1 %938, label %971, label %939

939:                                              ; preds = %922
  %940 = getelementptr inbounds nuw i8, ptr %928, i64 24
  %941 = load ptr, ptr %940, align 8, !tbaa !99
  %942 = getelementptr inbounds nuw i8, ptr %930, i64 32
  %943 = load ptr, ptr %942, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %941, ptr align 1 %943, i64 %936, i1 false)
  %944 = load ptr, ptr %940, align 8, !tbaa !99
  %945 = getelementptr inbounds nuw i8, ptr %944, i64 %936
  store ptr %945, ptr %940, align 8, !tbaa !99
  %946 = load ptr, ptr %942, align 8, !tbaa !59
  %947 = getelementptr inbounds nuw i8, ptr %946, i64 %936
  store ptr %947, ptr %942, align 8, !tbaa !59
  %948 = getelementptr inbounds nuw i8, ptr %928, i64 40
  %949 = load i64, ptr %948, align 8, !tbaa !101
  %950 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %949, i64 %936), !nosanitize !49
  %951 = extractvalue { i64, i1 } %950, 1, !nosanitize !49
  br i1 %951, label %952, label %953, !prof !50, !nosanitize !49

952:                                              ; preds = %939
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

953:                                              ; preds = %939
  %954 = extractvalue { i64, i1 } %950, 0, !nosanitize !49
  store i64 %954, ptr %948, align 8, !tbaa !101
  %955 = load i32, ptr %933, align 8, !tbaa !100
  %956 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %955, i32 %937), !nosanitize !49
  %957 = extractvalue { i32, i1 } %956, 1, !nosanitize !49
  br i1 %957, label %958, label %959, !prof !50, !nosanitize !49

958:                                              ; preds = %953
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

959:                                              ; preds = %953
  %960 = extractvalue { i32, i1 } %956, 0, !nosanitize !49
  store i32 %960, ptr %933, align 8, !tbaa !100
  %961 = load i64, ptr %931, align 8, !tbaa !58
  %962 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %961, i64 %936), !nosanitize !49
  %963 = extractvalue { i64, i1 } %962, 1, !nosanitize !49
  br i1 %963, label %964, label %965, !prof !50, !nosanitize !49

964:                                              ; preds = %959
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

965:                                              ; preds = %959
  %966 = extractvalue { i64, i1 } %962, 0, !nosanitize !49
  store i64 %966, ptr %931, align 8, !tbaa !58
  %967 = icmp eq i64 %966, 0
  br i1 %967, label %968, label %971

968:                                              ; preds = %965
  %969 = getelementptr inbounds nuw i8, ptr %930, i64 16
  %970 = load ptr, ptr %969, align 8, !tbaa !44
  store ptr %970, ptr %942, align 8, !tbaa !59
  br label %971

971:                                              ; preds = %922, %965, %968
  %972 = load ptr, ptr %0, align 8, !tbaa !20
  %973 = getelementptr inbounds nuw i8, ptr %972, i64 32
  %974 = load i32, ptr %973, align 8, !tbaa !100
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %977, label %976

976:                                              ; preds = %971, %911
  br label %977

977:                                              ; preds = %839, %354, %971, %905, %976
  %978 = phi i32 [ 1, %976 ], [ %910, %905 ], [ 0, %971 ], [ 0, %354 ], [ 0, %839 ]
  ret i32 %978
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 180
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 164
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 188
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 204
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %46 = getelementptr i8, ptr %0, i64 1240
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 172
  br label %68

68:                                               ; preds = %741, %2
  %69 = load i32, ptr %3, align 4, !tbaa !76
  %70 = icmp ult i32 %69, 262
  br i1 %70, label %71, label %359

71:                                               ; preds = %68
  %72 = load i32, ptr %4, align 8, !tbaa !33
  %73 = zext i32 %72 to i64
  br label %74

74:                                               ; preds = %305, %71
  %75 = load i64, ptr %5, align 8, !tbaa !62
  %76 = load i32, ptr %3, align 4, !tbaa !76
  %77 = zext i32 %76 to i64
  %78 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %75, i64 %77), !nosanitize !49
  %79 = extractvalue { i64, i1 } %78, 1, !nosanitize !49
  br i1 %79, label %80, label %81, !prof !50, !nosanitize !49

80:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

81:                                               ; preds = %74
  %82 = extractvalue { i64, i1 } %78, 0, !nosanitize !49
  %83 = load i32, ptr %6, align 4, !tbaa !74
  %84 = zext i32 %83 to i64
  %85 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %82, i64 %84), !nosanitize !49
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !49
  br i1 %86, label %87, label %88, !prof !50, !nosanitize !49

87:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

88:                                               ; preds = %81
  %89 = extractvalue { i64, i1 } %85, 0, !nosanitize !49
  %90 = trunc i64 %89 to i32
  %91 = load i32, ptr %4, align 8, !tbaa !33
  %92 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %91, i32 262), !nosanitize !49
  %93 = extractvalue { i32, i1 } %92, 1, !nosanitize !49
  br i1 %93, label %94, label %95, !prof !50, !nosanitize !49

94:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

95:                                               ; preds = %88
  %96 = extractvalue { i32, i1 } %92, 0, !nosanitize !49
  %97 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %72, i32 %96), !nosanitize !49
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !49
  br i1 %98, label %99, label %100, !prof !50, !nosanitize !49

99:                                               ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

100:                                              ; preds = %95
  %101 = extractvalue { i32, i1 } %97, 0, !nosanitize !49
  %102 = icmp ult i32 %83, %101
  br i1 %102, label %171, label %103

103:                                              ; preds = %100
  %104 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %72, i32 %90), !nosanitize !49
  %105 = extractvalue { i32, i1 } %104, 1, !nosanitize !49
  br i1 %105, label %106, label %107, !prof !50, !nosanitize !49

106:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

107:                                              ; preds = %103
  %108 = extractvalue { i32, i1 } %104, 0, !nosanitize !49
  %109 = load ptr, ptr %7, align 8, !tbaa !39
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 %73
  %111 = zext i32 %108 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %109, ptr align 1 %110, i64 %111, i1 false)
  %112 = load i32, ptr %8, align 8, !tbaa !84
  %113 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %112, i32 %72), !nosanitize !49
  %114 = extractvalue { i32, i1 } %113, 1, !nosanitize !49
  br i1 %114, label %115, label %116, !prof !50, !nosanitize !49

115:                                              ; preds = %107
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

116:                                              ; preds = %107
  %117 = extractvalue { i32, i1 } %113, 0, !nosanitize !49
  store i32 %117, ptr %8, align 8, !tbaa !84
  %118 = load i32, ptr %6, align 4, !tbaa !74
  %119 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %118, i32 %72), !nosanitize !49
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !49
  br i1 %120, label %121, label %122, !prof !50, !nosanitize !49

121:                                              ; preds = %116
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

122:                                              ; preds = %116
  %123 = extractvalue { i32, i1 } %119, 0, !nosanitize !49
  store i32 %123, ptr %6, align 4, !tbaa !74
  %124 = load i64, ptr %9, align 8, !tbaa !75
  %125 = sub nsw i64 %124, %73
  store i64 %125, ptr %9, align 8, !tbaa !75
  %126 = load i32, ptr %10, align 4, !tbaa !77
  %127 = icmp ugt i32 %126, %123
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 %123, ptr %10, align 4, !tbaa !77
  br label %129

129:                                              ; preds = %128, %122
  %130 = load i32, ptr %4, align 8, !tbaa !33
  %131 = load i32, ptr %11, align 4, !tbaa !36
  %132 = load ptr, ptr %12, align 8, !tbaa !41
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds nuw [2 x i8], ptr %132, i64 %133
  %135 = icmp eq i32 %131, 0
  br label %136

136:                                              ; preds = %145, %129
  %137 = phi ptr [ %134, %129 ], [ %139, %145 ]
  %138 = phi i32 [ %131, %129 ], [ %146, %145 ]
  %139 = getelementptr inbounds i8, ptr %137, i64 -2
  %140 = load i16, ptr %139, align 2, !tbaa !63
  %141 = zext i16 %140 to i32
  %142 = tail call i32 @llvm.usub.sat.i32(i32 %141, i32 %130)
  %143 = trunc nuw i32 %142 to i16
  store i16 %143, ptr %139, align 2, !tbaa !63
  br i1 %135, label %144, label %145, !prof !50, !nosanitize !49

144:                                              ; preds = %136
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

145:                                              ; preds = %136
  %146 = add i32 %138, -1
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %136, !llvm.loop !85

148:                                              ; preds = %145
  %149 = load ptr, ptr %13, align 8, !tbaa !40
  %150 = zext i32 %130 to i64
  %151 = getelementptr inbounds nuw [2 x i8], ptr %149, i64 %150
  %152 = icmp eq i32 %130, 0
  br label %153

153:                                              ; preds = %162, %148
  %154 = phi ptr [ %151, %148 ], [ %156, %162 ]
  %155 = phi i32 [ %130, %148 ], [ %163, %162 ]
  %156 = getelementptr inbounds i8, ptr %154, i64 -2
  %157 = load i16, ptr %156, align 2, !tbaa !63
  %158 = zext i16 %157 to i32
  %159 = tail call i32 @llvm.usub.sat.i32(i32 %158, i32 %130)
  %160 = trunc nuw i32 %159 to i16
  store i16 %160, ptr %156, align 2, !tbaa !63
  br i1 %152, label %161, label %162, !prof !50, !nosanitize !49

161:                                              ; preds = %153
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

162:                                              ; preds = %153
  %163 = add i32 %155, -1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %153, !llvm.loop !88

165:                                              ; preds = %162
  store i32 1, ptr %14, align 8, !tbaa !64
  %166 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %90, i32 %72), !nosanitize !49
  %167 = extractvalue { i32, i1 } %166, 1, !nosanitize !49
  br i1 %167, label %168, label %169, !prof !50, !nosanitize !49

168:                                              ; preds = %165
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

169:                                              ; preds = %165
  %170 = extractvalue { i32, i1 } %166, 0, !nosanitize !49
  br label %171

171:                                              ; preds = %169, %100
  %172 = phi i32 [ %170, %169 ], [ %90, %100 ]
  %173 = load ptr, ptr %0, align 8, !tbaa !20
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 8
  %175 = load i32, ptr %174, align 8, !tbaa !82
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %310, label %177

177:                                              ; preds = %171
  %178 = load ptr, ptr %7, align 8, !tbaa !39
  %179 = load i32, ptr %6, align 4, !tbaa !74
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds nuw i8, ptr %178, i64 %180
  %182 = load i32, ptr %3, align 4, !tbaa !76
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 %183
  %185 = tail call i32 @llvm.umin.i32(i32 %175, i32 %172)
  %186 = icmp eq i32 %172, 0
  br i1 %186, label %217, label %187

187:                                              ; preds = %177
  %188 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %175, i32 %185), !nosanitize !49
  %189 = extractvalue { i32, i1 } %188, 1, !nosanitize !49
  br i1 %189, label %190, label %191, !prof !50, !nosanitize !49

190:                                              ; preds = %187
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

191:                                              ; preds = %187
  %192 = extractvalue { i32, i1 } %188, 0, !nosanitize !49
  store i32 %192, ptr %174, align 8, !tbaa !82
  %193 = load ptr, ptr %173, align 8, !tbaa !83
  %194 = zext i32 %185 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %184, ptr align 1 %193, i64 %194, i1 false)
  %195 = getelementptr inbounds nuw i8, ptr %173, i64 56
  %196 = load ptr, ptr %195, align 8, !tbaa !19
  %197 = getelementptr inbounds nuw i8, ptr %196, i64 48
  %198 = load i32, ptr %197, align 8, !tbaa !30
  switch i32 %198, label %207 [
    i32 1, label %199
    i32 2, label %203
  ]

199:                                              ; preds = %191
  %200 = getelementptr inbounds nuw i8, ptr %173, i64 96
  %201 = load i64, ptr %200, align 8, !tbaa !60
  %202 = tail call i64 @adler32(i64 noundef %201, ptr noundef %184, i32 noundef %185) #12
  store i64 %202, ptr %200, align 8, !tbaa !60
  br label %207

203:                                              ; preds = %191
  %204 = getelementptr inbounds nuw i8, ptr %173, i64 96
  %205 = load i64, ptr %204, align 8, !tbaa !60
  %206 = tail call i64 @crc32(i64 noundef %205, ptr noundef %184, i32 noundef %185) #12
  store i64 %206, ptr %204, align 8, !tbaa !60
  br label %207

207:                                              ; preds = %203, %199, %191
  %208 = load ptr, ptr %173, align 8, !tbaa !83
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 %194
  store ptr %209, ptr %173, align 8, !tbaa !83
  %210 = getelementptr inbounds nuw i8, ptr %173, i64 16
  %211 = load i64, ptr %210, align 8, !tbaa !56
  %212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %211, i64 %194), !nosanitize !49
  %213 = extractvalue { i64, i1 } %212, 1, !nosanitize !49
  br i1 %213, label %214, label %215, !prof !50, !nosanitize !49

214:                                              ; preds = %207
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

215:                                              ; preds = %207
  %216 = extractvalue { i64, i1 } %212, 0, !nosanitize !49
  store i64 %216, ptr %210, align 8, !tbaa !56
  br label %217

217:                                              ; preds = %215, %177
  %218 = phi i32 [ %185, %215 ], [ 0, %177 ]
  %219 = load i32, ptr %3, align 4, !tbaa !76
  %220 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %219, i32 %218), !nosanitize !49
  %221 = extractvalue { i32, i1 } %220, 1, !nosanitize !49
  br i1 %221, label %222, label %223, !prof !50, !nosanitize !49

222:                                              ; preds = %217
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

223:                                              ; preds = %217
  %224 = extractvalue { i32, i1 } %220, 0, !nosanitize !49
  store i32 %224, ptr %3, align 4, !tbaa !76
  %225 = load i32, ptr %10, align 4, !tbaa !77
  %226 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %225), !nosanitize !49
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !49
  br i1 %227, label %228, label %229, !prof !50, !nosanitize !49

228:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

229:                                              ; preds = %223
  %230 = extractvalue { i32, i1 } %226, 0, !nosanitize !49
  %231 = icmp ugt i32 %230, 2
  br i1 %231, label %232, label %303

232:                                              ; preds = %229
  %233 = load i32, ptr %6, align 4, !tbaa !74
  %234 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %233, i32 %225), !nosanitize !49
  %235 = extractvalue { i32, i1 } %234, 0, !nosanitize !49
  %236 = extractvalue { i32, i1 } %234, 1, !nosanitize !49
  br i1 %236, label %237, label %238, !prof !50, !nosanitize !49

237:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

238:                                              ; preds = %232
  %239 = load ptr, ptr %7, align 8, !tbaa !39
  %240 = zext i32 %235 to i64
  %241 = getelementptr inbounds nuw i8, ptr %239, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !8
  %243 = zext i8 %242 to i32
  store i32 %243, ptr %15, align 8, !tbaa !81
  %244 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %235, i32 1), !nosanitize !49
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !49
  br i1 %245, label %246, label %247, !prof !50, !nosanitize !49

246:                                              ; preds = %238
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

247:                                              ; preds = %238
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !49
  %249 = load i32, ptr %16, align 8, !tbaa !38
  %250 = shl i32 %243, %249
  %251 = zext i32 %248 to i64
  %252 = getelementptr inbounds nuw i8, ptr %239, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !8
  %254 = zext i8 %253 to i32
  %255 = xor i32 %250, %254
  %256 = load i32, ptr %17, align 4, !tbaa !37
  %257 = and i32 %255, %256
  store i32 %257, ptr %15, align 8, !tbaa !81
  br label %258

258:                                              ; preds = %300, %247
  %259 = phi i32 [ %225, %247 ], [ %296, %300 ]
  %260 = phi i32 [ %235, %247 ], [ %292, %300 ]
  %261 = icmp eq i32 %259, 0
  br i1 %261, label %303, label %262

262:                                              ; preds = %258
  %263 = load i32, ptr %15, align 8, !tbaa !81
  %264 = shl i32 %263, %249
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %260, i32 3), !nosanitize !49
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !49
  br i1 %266, label %267, label %268, !prof !50, !nosanitize !49

267:                                              ; preds = %262
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

268:                                              ; preds = %262
  %269 = extractvalue { i32, i1 } %265, 0, !nosanitize !49
  %270 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %269, i32 1), !nosanitize !49
  %271 = extractvalue { i32, i1 } %270, 1, !nosanitize !49
  br i1 %271, label %272, label %273, !prof !50, !nosanitize !49

272:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

273:                                              ; preds = %268
  %274 = extractvalue { i32, i1 } %270, 0, !nosanitize !49
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds nuw i8, ptr %239, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !8
  %278 = zext i8 %277 to i32
  %279 = xor i32 %264, %278
  %280 = and i32 %279, %256
  store i32 %280, ptr %15, align 8, !tbaa !81
  %281 = load ptr, ptr %12, align 8, !tbaa !41
  %282 = zext i32 %280 to i64
  %283 = getelementptr inbounds nuw [2 x i8], ptr %281, i64 %282
  %284 = load i16, ptr %283, align 2, !tbaa !63
  %285 = load ptr, ptr %13, align 8, !tbaa !40
  %286 = load i32, ptr %18, align 8, !tbaa !34
  %287 = and i32 %286, %260
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds nuw [2 x i8], ptr %285, i64 %288
  store i16 %284, ptr %289, align 2, !tbaa !63
  %290 = trunc i32 %260 to i16
  store i16 %290, ptr %283, align 2, !tbaa !63
  %291 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %260, i32 1), !nosanitize !49
  %292 = extractvalue { i32, i1 } %291, 0, !nosanitize !49
  %293 = extractvalue { i32, i1 } %291, 1, !nosanitize !49
  br i1 %293, label %294, label %295, !prof !50, !nosanitize !49

294:                                              ; preds = %273
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

295:                                              ; preds = %273
  %296 = add i32 %259, -1
  store i32 %296, ptr %10, align 4, !tbaa !77
  %297 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %296), !nosanitize !49
  %298 = extractvalue { i32, i1 } %297, 1, !nosanitize !49
  br i1 %298, label %299, label %300, !prof !50, !nosanitize !49

299:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

300:                                              ; preds = %295
  %301 = extractvalue { i32, i1 } %297, 0, !nosanitize !49
  %302 = icmp ult i32 %301, 3
  br i1 %302, label %303, label %258, !llvm.loop !89

303:                                              ; preds = %300, %258, %229
  %304 = icmp ult i32 %224, 262
  br i1 %304, label %305, label %310

305:                                              ; preds = %303
  %306 = load ptr, ptr %0, align 8, !tbaa !20
  %307 = getelementptr inbounds nuw i8, ptr %306, i64 8
  %308 = load i32, ptr %307, align 8, !tbaa !82
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %74, !llvm.loop !90

310:                                              ; preds = %305, %303, %171
  %311 = load i64, ptr %19, align 8, !tbaa !42
  %312 = load i64, ptr %5, align 8, !tbaa !62
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %314, label %353

314:                                              ; preds = %310
  %315 = load i32, ptr %6, align 4, !tbaa !74
  %316 = zext i32 %315 to i64
  %317 = load i32, ptr %3, align 4, !tbaa !76
  %318 = zext i32 %317 to i64
  %319 = add nuw nsw i64 %318, %316
  %320 = icmp ult i64 %311, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %314
  %322 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %312, i64 %319), !nosanitize !49
  %323 = extractvalue { i64, i1 } %322, 1, !nosanitize !49
  br i1 %323, label %324, label %325, !prof !50, !nosanitize !49

324:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

325:                                              ; preds = %321
  %326 = extractvalue { i64, i1 } %322, 0, !nosanitize !49
  %327 = tail call i64 @llvm.umin.i64(i64 %326, i64 258)
  %328 = load ptr, ptr %7, align 8, !tbaa !39
  %329 = getelementptr inbounds nuw i8, ptr %328, i64 %319
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %329, i8 0, i64 %327, i1 false)
  %330 = add nuw nsw i64 %327, %319
  br label %351

331:                                              ; preds = %314
  %332 = add nuw nsw i64 %319, 258
  %333 = icmp ult i64 %311, %332
  br i1 %333, label %334, label %353

334:                                              ; preds = %331
  %335 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %312, i64 %311), !nosanitize !49
  %336 = extractvalue { i64, i1 } %335, 1, !nosanitize !49
  br i1 %336, label %337, label %338, !prof !50, !nosanitize !49

337:                                              ; preds = %334
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

338:                                              ; preds = %334
  %339 = sub nuw nsw i64 %332, %311
  %340 = extractvalue { i64, i1 } %335, 0, !nosanitize !49
  %341 = tail call i64 @llvm.umin.i64(i64 %339, i64 %340)
  %342 = load ptr, ptr %7, align 8, !tbaa !39
  %343 = getelementptr inbounds nuw i8, ptr %342, i64 %311
  %344 = and i64 %341, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %343, i8 0, i64 %344, i1 false)
  %345 = load i64, ptr %19, align 8, !tbaa !42
  %346 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %345, i64 %341), !nosanitize !49
  %347 = extractvalue { i64, i1 } %346, 1, !nosanitize !49
  br i1 %347, label %348, label %349, !prof !50, !nosanitize !49

348:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

349:                                              ; preds = %338
  %350 = extractvalue { i64, i1 } %346, 0, !nosanitize !49
  br label %351

351:                                              ; preds = %349, %325
  %352 = phi i64 [ %330, %325 ], [ %350, %349 ]
  store i64 %352, ptr %19, align 8, !tbaa !42
  br label %353

353:                                              ; preds = %351, %310, %331
  %354 = load i32, ptr %3, align 4, !tbaa !76
  %355 = icmp ult i32 %354, 262
  %356 = and i1 %20, %355
  br i1 %356, label %1118, label %357

357:                                              ; preds = %353
  %358 = icmp eq i32 %354, 0
  br i1 %358, label %937, label %359

359:                                              ; preds = %357, %68
  %360 = load i32, ptr %3, align 4, !tbaa !76
  %361 = icmp ugt i32 %360, 2
  br i1 %361, label %362, label %391

362:                                              ; preds = %359
  %363 = load i32, ptr %21, align 4, !tbaa !74
  %364 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %363, i32 2), !nosanitize !49
  %365 = extractvalue { i32, i1 } %364, 1, !nosanitize !49
  br i1 %365, label %366, label %367, !prof !50, !nosanitize !49

366:                                              ; preds = %362
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

367:                                              ; preds = %362
  %368 = extractvalue { i32, i1 } %364, 0, !nosanitize !49
  %369 = load ptr, ptr %22, align 8, !tbaa !39
  %370 = load i32, ptr %23, align 8, !tbaa !81
  %371 = load i32, ptr %24, align 8, !tbaa !38
  %372 = shl i32 %370, %371
  %373 = zext i32 %368 to i64
  %374 = getelementptr inbounds nuw i8, ptr %369, i64 %373
  %375 = load i8, ptr %374, align 1, !tbaa !8
  %376 = zext i8 %375 to i32
  %377 = xor i32 %372, %376
  %378 = load i32, ptr %25, align 4, !tbaa !37
  %379 = and i32 %377, %378
  store i32 %379, ptr %23, align 8, !tbaa !81
  %380 = load ptr, ptr %26, align 8, !tbaa !41
  %381 = zext i32 %379 to i64
  %382 = getelementptr inbounds nuw [2 x i8], ptr %380, i64 %381
  %383 = load i16, ptr %382, align 2, !tbaa !63
  %384 = load ptr, ptr %27, align 8, !tbaa !40
  %385 = load i32, ptr %28, align 8, !tbaa !34
  %386 = and i32 %385, %363
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds nuw [2 x i8], ptr %384, i64 %387
  store i16 %383, ptr %388, align 2, !tbaa !63
  %389 = zext i16 %383 to i32
  %390 = trunc i32 %363 to i16
  store i16 %390, ptr %382, align 2, !tbaa !63
  br label %391

391:                                              ; preds = %367, %359
  %392 = phi i32 [ %389, %367 ], [ 0, %359 ]
  %393 = load i32, ptr %29, align 8, !tbaa !79
  store i32 %393, ptr %30, align 8, !tbaa !78
  %394 = load i32, ptr %31, align 8, !tbaa !84
  store i32 %394, ptr %32, align 4, !tbaa !133
  store i32 2, ptr %29, align 8, !tbaa !79
  %395 = icmp eq i32 %392, 0
  br i1 %395, label %585, label %396

396:                                              ; preds = %391
  %397 = load i32, ptr %33, align 8, !tbaa !67
  %398 = icmp ult i32 %393, %397
  br i1 %398, label %399, label %585

399:                                              ; preds = %396
  %400 = load i32, ptr %34, align 4, !tbaa !74
  %401 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %400, i32 %392), !nosanitize !49
  %402 = extractvalue { i32, i1 } %401, 0, !nosanitize !49
  %403 = extractvalue { i32, i1 } %401, 1, !nosanitize !49
  br i1 %403, label %404, label %405, !prof !50, !nosanitize !49

404:                                              ; preds = %399
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

405:                                              ; preds = %399
  %406 = load i32, ptr %35, align 8, !tbaa !33
  %407 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %406, i32 262), !nosanitize !49
  %408 = extractvalue { i32, i1 } %407, 1, !nosanitize !49
  br i1 %408, label %409, label %410, !prof !50, !nosanitize !49

409:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

410:                                              ; preds = %405
  %411 = extractvalue { i32, i1 } %407, 0, !nosanitize !49
  %412 = icmp ugt i32 %402, %411
  br i1 %412, label %585, label %413

413:                                              ; preds = %410
  %414 = load ptr, ptr %36, align 8, !tbaa !39
  %415 = zext i32 %400 to i64
  %416 = getelementptr inbounds nuw i8, ptr %414, i64 %415
  %417 = load i32, ptr %37, align 8, !tbaa !71
  %418 = load i32, ptr %38, align 4, !tbaa !73
  %419 = tail call i32 @llvm.usub.sat.i32(i32 %400, i32 %411)
  %420 = load ptr, ptr %39, align 8, !tbaa !40
  %421 = load i32, ptr %40, align 8, !tbaa !34
  %422 = getelementptr inbounds nuw i8, ptr %416, i64 258
  %423 = sext i32 %393 to i64
  %424 = getelementptr i8, ptr %416, i64 %423
  %425 = getelementptr i8, ptr %424, i64 -1
  %426 = load i8, ptr %425, align 1, !tbaa !8
  %427 = load i8, ptr %424, align 1, !tbaa !8
  %428 = load i32, ptr %41, align 4, !tbaa !69
  %429 = icmp ult i32 %393, %428
  %430 = lshr i32 %418, 2
  %431 = select i1 %429, i32 %418, i32 %430
  %432 = tail call i32 @llvm.umin.i32(i32 %417, i32 %360)
  %433 = getelementptr inbounds nuw i8, ptr %416, i64 1
  %434 = ptrtoint ptr %422 to i64
  br label %435

435:                                              ; preds = %564, %413
  %436 = phi i32 [ %393, %413 ], [ %551, %564 ]
  %437 = phi i32 [ %431, %413 ], [ %565, %564 ]
  %438 = phi i32 [ %392, %413 ], [ %558, %564 ]
  %439 = phi i8 [ %426, %413 ], [ %552, %564 ]
  %440 = phi i8 [ %427, %413 ], [ %553, %564 ]
  %441 = zext nneg i32 %438 to i64
  %442 = getelementptr inbounds nuw i8, ptr %414, i64 %441
  %443 = sext i32 %436 to i64
  %444 = getelementptr inbounds i8, ptr %442, i64 %443
  %445 = load i8, ptr %444, align 1, !tbaa !8
  %446 = icmp eq i8 %445, %440
  br i1 %446, label %447, label %550

447:                                              ; preds = %435
  %448 = getelementptr i8, ptr %444, i64 -1
  %449 = load i8, ptr %448, align 1, !tbaa !8
  %450 = icmp eq i8 %449, %439
  br i1 %450, label %451, label %550

451:                                              ; preds = %447
  %452 = load i8, ptr %442, align 1, !tbaa !8
  %453 = load i8, ptr %416, align 1, !tbaa !8
  %454 = icmp eq i8 %452, %453
  br i1 %454, label %455, label %550

455:                                              ; preds = %451
  %456 = getelementptr inbounds nuw i8, ptr %442, i64 1
  %457 = load i8, ptr %456, align 1, !tbaa !8
  %458 = load i8, ptr %433, align 1, !tbaa !8
  %459 = icmp eq i8 %457, %458
  br i1 %459, label %460, label %550

460:                                              ; preds = %455
  %461 = getelementptr inbounds nuw i8, ptr %442, i64 2
  br label %462

462:                                              ; preds = %507, %460
  %463 = phi ptr [ %461, %460 ], [ %511, %507 ]
  %464 = phi i64 [ 2, %460 ], [ %508, %507 ]
  %465 = getelementptr inbounds nuw i8, ptr %416, i64 %464
  %466 = getelementptr inbounds nuw i8, ptr %465, i64 1
  %467 = load i8, ptr %466, align 1, !tbaa !8
  %468 = getelementptr inbounds nuw i8, ptr %463, i64 1
  %469 = load i8, ptr %468, align 1, !tbaa !8
  %470 = icmp eq i8 %467, %469
  br i1 %470, label %471, label %516

471:                                              ; preds = %462
  %472 = getelementptr inbounds nuw i8, ptr %465, i64 2
  %473 = load i8, ptr %472, align 1, !tbaa !8
  %474 = getelementptr inbounds nuw i8, ptr %463, i64 2
  %475 = load i8, ptr %474, align 1, !tbaa !8
  %476 = icmp eq i8 %473, %475
  br i1 %476, label %477, label %518

477:                                              ; preds = %471
  %478 = getelementptr inbounds nuw i8, ptr %465, i64 3
  %479 = load i8, ptr %478, align 1, !tbaa !8
  %480 = getelementptr inbounds nuw i8, ptr %463, i64 3
  %481 = load i8, ptr %480, align 1, !tbaa !8
  %482 = icmp eq i8 %479, %481
  br i1 %482, label %483, label %520

483:                                              ; preds = %477
  %484 = getelementptr inbounds nuw i8, ptr %465, i64 4
  %485 = load i8, ptr %484, align 1, !tbaa !8
  %486 = getelementptr inbounds nuw i8, ptr %463, i64 4
  %487 = load i8, ptr %486, align 1, !tbaa !8
  %488 = icmp eq i8 %485, %487
  br i1 %488, label %489, label %522

489:                                              ; preds = %483
  %490 = getelementptr inbounds nuw i8, ptr %465, i64 5
  %491 = load i8, ptr %490, align 1, !tbaa !8
  %492 = getelementptr inbounds nuw i8, ptr %463, i64 5
  %493 = load i8, ptr %492, align 1, !tbaa !8
  %494 = icmp eq i8 %491, %493
  br i1 %494, label %495, label %524

495:                                              ; preds = %489
  %496 = getelementptr inbounds nuw i8, ptr %465, i64 6
  %497 = load i8, ptr %496, align 1, !tbaa !8
  %498 = getelementptr inbounds nuw i8, ptr %463, i64 6
  %499 = load i8, ptr %498, align 1, !tbaa !8
  %500 = icmp eq i8 %497, %499
  br i1 %500, label %501, label %526

501:                                              ; preds = %495
  %502 = getelementptr inbounds nuw i8, ptr %465, i64 7
  %503 = load i8, ptr %502, align 1, !tbaa !8
  %504 = getelementptr inbounds nuw i8, ptr %463, i64 7
  %505 = load i8, ptr %504, align 1, !tbaa !8
  %506 = icmp eq i8 %503, %505
  br i1 %506, label %507, label %528

507:                                              ; preds = %501
  %508 = add nuw nsw i64 %464, 8
  %509 = getelementptr inbounds nuw i8, ptr %416, i64 %508
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = getelementptr inbounds nuw i8, ptr %463, i64 8
  %512 = load i8, ptr %511, align 1, !tbaa !8
  %513 = icmp eq i8 %510, %512
  %514 = icmp samesign ult i64 %464, 250
  %515 = select i1 %513, i1 %514, i1 false
  br i1 %515, label %462, label %530, !llvm.loop !129

516:                                              ; preds = %462
  %517 = getelementptr inbounds nuw i8, ptr %465, i64 1
  br label %532

518:                                              ; preds = %471
  %519 = getelementptr inbounds nuw i8, ptr %465, i64 2
  br label %532

520:                                              ; preds = %477
  %521 = getelementptr inbounds nuw i8, ptr %465, i64 3
  br label %532

522:                                              ; preds = %483
  %523 = getelementptr inbounds nuw i8, ptr %465, i64 4
  br label %532

524:                                              ; preds = %489
  %525 = getelementptr inbounds nuw i8, ptr %465, i64 5
  br label %532

526:                                              ; preds = %495
  %527 = getelementptr inbounds nuw i8, ptr %465, i64 6
  br label %532

528:                                              ; preds = %501
  %529 = getelementptr inbounds nuw i8, ptr %465, i64 7
  br label %532

530:                                              ; preds = %507
  %531 = getelementptr inbounds nuw i8, ptr %416, i64 %508
  br label %532

532:                                              ; preds = %530, %528, %526, %524, %522, %520, %518, %516
  %533 = phi ptr [ %519, %518 ], [ %521, %520 ], [ %517, %516 ], [ %529, %528 ], [ %527, %526 ], [ %525, %524 ], [ %523, %522 ], [ %531, %530 ]
  %534 = ptrtoint ptr %533 to i64
  %535 = sub i64 %534, %434
  %536 = trunc i64 %535 to i32
  %537 = add i32 %536, 258
  %538 = icmp sgt i32 %537, %436
  br i1 %538, label %539, label %550

539:                                              ; preds = %532
  store i32 %438, ptr %31, align 8, !tbaa !84
  %540 = icmp slt i32 %537, %432
  br i1 %540, label %541, label %567

541:                                              ; preds = %539
  %542 = shl i64 %535, 32
  %543 = add i64 %542, 1103806595072
  %544 = ashr exact i64 %543, 32
  %545 = getelementptr inbounds i8, ptr %416, i64 %544
  %546 = load i8, ptr %545, align 1, !tbaa !8
  %547 = sext i32 %537 to i64
  %548 = getelementptr inbounds i8, ptr %416, i64 %547
  %549 = load i8, ptr %548, align 1, !tbaa !8
  br label %550

550:                                              ; preds = %541, %532, %455, %451, %447, %435
  %551 = phi i32 [ %436, %435 ], [ %436, %447 ], [ %436, %451 ], [ %436, %455 ], [ %537, %541 ], [ %436, %532 ]
  %552 = phi i8 [ %439, %435 ], [ %439, %447 ], [ %439, %451 ], [ %439, %455 ], [ %546, %541 ], [ %439, %532 ]
  %553 = phi i8 [ %440, %435 ], [ %440, %447 ], [ %440, %451 ], [ %440, %455 ], [ %549, %541 ], [ %440, %532 ]
  %554 = and i32 %438, %421
  %555 = zext nneg i32 %554 to i64
  %556 = getelementptr inbounds nuw [2 x i8], ptr %420, i64 %555
  %557 = load i16, ptr %556, align 2, !tbaa !63
  %558 = zext i16 %557 to i32
  %559 = icmp ult i32 %419, %558
  br i1 %559, label %560, label %567

560:                                              ; preds = %550
  %561 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %437, i32 1), !nosanitize !49
  %562 = extractvalue { i32, i1 } %561, 1, !nosanitize !49
  br i1 %562, label %563, label %564, !prof !50, !nosanitize !49

563:                                              ; preds = %560
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

564:                                              ; preds = %560
  %565 = extractvalue { i32, i1 } %561, 0, !nosanitize !49
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %435, !llvm.loop !130

567:                                              ; preds = %539, %550, %564
  %568 = phi i32 [ %551, %564 ], [ %551, %550 ], [ %537, %539 ]
  %569 = tail call i32 @llvm.umin.i32(i32 %568, i32 %360)
  store i32 %569, ptr %29, align 8, !tbaa !79
  %570 = icmp ult i32 %569, 6
  br i1 %570, label %571, label %585

571:                                              ; preds = %567
  %572 = load i32, ptr %42, align 8, !tbaa !53
  %573 = icmp eq i32 %572, 1
  br i1 %573, label %584, label %574

574:                                              ; preds = %571
  %575 = icmp eq i32 %569, 3
  br i1 %575, label %576, label %585

576:                                              ; preds = %574
  %577 = load i32, ptr %31, align 8, !tbaa !84
  %578 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %400, i32 %577), !nosanitize !49
  %579 = extractvalue { i32, i1 } %578, 1, !nosanitize !49
  br i1 %579, label %580, label %581, !prof !50, !nosanitize !49

580:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

581:                                              ; preds = %576
  %582 = extractvalue { i32, i1 } %578, 0, !nosanitize !49
  %583 = icmp ugt i32 %582, 4096
  br i1 %583, label %584, label %585

584:                                              ; preds = %581, %571
  store i32 2, ptr %29, align 8, !tbaa !79
  br label %585

585:                                              ; preds = %567, %574, %581, %584, %410, %396, %391
  %586 = icmp ugt i32 %393, 2
  br i1 %586, label %587, label %803

587:                                              ; preds = %585
  %588 = load i32, ptr %29, align 8, !tbaa !79
  %589 = icmp ugt i32 %588, %393
  br i1 %589, label %803, label %590

590:                                              ; preds = %587
  %591 = load i32, ptr %43, align 4, !tbaa !74
  %592 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %591, i32 %360), !nosanitize !49
  %593 = extractvalue { i32, i1 } %592, 1, !nosanitize !49
  br i1 %593, label %594, label %595, !prof !50, !nosanitize !49

594:                                              ; preds = %590
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

595:                                              ; preds = %590
  %596 = extractvalue { i32, i1 } %592, 0, !nosanitize !49
  %597 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %596, i32 3), !nosanitize !49
  %598 = extractvalue { i32, i1 } %597, 0, !nosanitize !49
  %599 = extractvalue { i32, i1 } %597, 1, !nosanitize !49
  br i1 %599, label %600, label %601, !prof !50, !nosanitize !49

600:                                              ; preds = %595
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

601:                                              ; preds = %595
  %602 = trunc i32 %393 to i8
  %603 = add i8 %602, -3
  %604 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %591, i32 1), !nosanitize !49
  %605 = extractvalue { i32, i1 } %604, 1, !nosanitize !49
  br i1 %605, label %606, label %607, !prof !50, !nosanitize !49

606:                                              ; preds = %601
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

607:                                              ; preds = %601
  %608 = extractvalue { i32, i1 } %604, 0, !nosanitize !49
  %609 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %608, i32 %394), !nosanitize !49
  %610 = extractvalue { i32, i1 } %609, 1, !nosanitize !49
  br i1 %610, label %611, label %612, !prof !50, !nosanitize !49

611:                                              ; preds = %607
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

612:                                              ; preds = %607
  %613 = extractvalue { i32, i1 } %609, 0, !nosanitize !49
  %614 = trunc i32 %613 to i16
  %615 = load i32, ptr %45, align 4, !tbaa !122
  %616 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %615, i32 1), !nosanitize !49
  %617 = extractvalue { i32, i1 } %616, 1, !nosanitize !49
  br i1 %617, label %618, label %619, !prof !50, !nosanitize !49

618:                                              ; preds = %612
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

619:                                              ; preds = %612
  %620 = extractvalue { i32, i1 } %616, 0, !nosanitize !49
  %621 = load ptr, ptr %44, align 8, !tbaa !48
  %622 = trunc i32 %613 to i8
  store i32 %620, ptr %45, align 4, !tbaa !122
  %623 = zext i32 %615 to i64
  %624 = getelementptr inbounds nuw i8, ptr %621, i64 %623
  store i8 %622, ptr %624, align 1, !tbaa !8
  %625 = load i32, ptr %45, align 4, !tbaa !122
  %626 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %625, i32 1), !nosanitize !49
  %627 = extractvalue { i32, i1 } %626, 1, !nosanitize !49
  br i1 %627, label %628, label %629, !prof !50, !nosanitize !49

628:                                              ; preds = %619
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

629:                                              ; preds = %619
  %630 = extractvalue { i32, i1 } %626, 0, !nosanitize !49
  %631 = load ptr, ptr %44, align 8, !tbaa !48
  %632 = lshr i32 %613, 8
  %633 = trunc i32 %632 to i8
  store i32 %630, ptr %45, align 4, !tbaa !122
  %634 = zext i32 %625 to i64
  %635 = getelementptr inbounds nuw i8, ptr %631, i64 %634
  store i8 %633, ptr %635, align 1, !tbaa !8
  %636 = load i32, ptr %45, align 4, !tbaa !122
  %637 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %636, i32 1), !nosanitize !49
  %638 = extractvalue { i32, i1 } %637, 1, !nosanitize !49
  br i1 %638, label %639, label %640, !prof !50, !nosanitize !49

639:                                              ; preds = %629
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

640:                                              ; preds = %629
  %641 = extractvalue { i32, i1 } %637, 0, !nosanitize !49
  %642 = load ptr, ptr %44, align 8, !tbaa !48
  store i32 %641, ptr %45, align 4, !tbaa !122
  %643 = zext i32 %636 to i64
  %644 = getelementptr inbounds nuw i8, ptr %642, i64 %643
  store i8 %603, ptr %644, align 1, !tbaa !8
  %645 = add i16 %614, -1
  %646 = zext i8 %603 to i64
  %647 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %646
  %648 = load i8, ptr %647, align 1, !tbaa !8
  %649 = zext i8 %648 to i64
  %650 = getelementptr [4 x i8], ptr %46, i64 %649
  %651 = load i16, ptr %650, align 4, !tbaa !8
  %652 = add i16 %651, 1
  store i16 %652, ptr %650, align 4, !tbaa !8
  %653 = icmp ult i16 %645, 256
  br i1 %653, label %654, label %657

654:                                              ; preds = %640
  %655 = zext nneg i16 %645 to i64
  %656 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %655
  br label %662

657:                                              ; preds = %640
  %658 = lshr i16 %645, 7
  %659 = zext nneg i16 %658 to i64
  %660 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %659
  %661 = getelementptr inbounds nuw i8, ptr %660, i64 256
  br label %662

662:                                              ; preds = %657, %654
  %663 = phi ptr [ %656, %654 ], [ %661, %657 ]
  %664 = load i8, ptr %663, align 1, !tbaa !8
  %665 = zext i8 %664 to i64
  %666 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %665
  %667 = load i16, ptr %666, align 4, !tbaa !8
  %668 = add i16 %667, 1
  store i16 %668, ptr %666, align 4, !tbaa !8
  %669 = load i32, ptr %45, align 4, !tbaa !122
  %670 = load i32, ptr %48, align 8, !tbaa !51
  %671 = icmp eq i32 %669, %670
  %672 = load i32, ptr %30, align 8, !tbaa !78
  %673 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %672, i32 1), !nosanitize !49
  %674 = extractvalue { i32, i1 } %673, 1, !nosanitize !49
  br i1 %674, label %675, label %676, !prof !50, !nosanitize !49

675:                                              ; preds = %662
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

676:                                              ; preds = %662
  %677 = extractvalue { i32, i1 } %673, 0, !nosanitize !49
  %678 = load i32, ptr %3, align 4, !tbaa !76
  %679 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %678, i32 %677), !nosanitize !49
  %680 = extractvalue { i32, i1 } %679, 1, !nosanitize !49
  br i1 %680, label %681, label %682, !prof !50, !nosanitize !49

681:                                              ; preds = %676
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

682:                                              ; preds = %676
  %683 = extractvalue { i32, i1 } %679, 0, !nosanitize !49
  store i32 %683, ptr %3, align 4, !tbaa !76
  %684 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %672, i32 2), !nosanitize !49
  %685 = extractvalue { i32, i1 } %684, 1, !nosanitize !49
  br i1 %685, label %686, label %687, !prof !50, !nosanitize !49

686:                                              ; preds = %682
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

687:                                              ; preds = %682
  %688 = extractvalue { i32, i1 } %684, 0, !nosanitize !49
  store i32 %688, ptr %30, align 8, !tbaa !78
  %689 = load i32, ptr %43, align 4, !tbaa !74
  %690 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %689, i32 1), !nosanitize !49
  %691 = extractvalue { i32, i1 } %690, 1, !nosanitize !49
  br i1 %691, label %695, label %696, !prof !117, !nosanitize !49

692:                                              ; preds = %732
  %693 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %698, i32 1), !nosanitize !49
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !49
  br i1 %694, label %695, label %696, !prof !118, !llvm.loop !134, !nosanitize !49

695:                                              ; preds = %687, %692
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

696:                                              ; preds = %687, %692
  %697 = phi { i32, i1 } [ %693, %692 ], [ %690, %687 ]
  %698 = extractvalue { i32, i1 } %697, 0
  store i32 %698, ptr %43, align 4, !tbaa !74
  %699 = icmp ugt i32 %698, %598
  br i1 %699, label %727, label %700

700:                                              ; preds = %696
  %701 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %698, i32 2), !nosanitize !49
  %702 = extractvalue { i32, i1 } %701, 1, !nosanitize !49
  br i1 %702, label %703, label %704, !prof !50, !nosanitize !49

703:                                              ; preds = %700
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

704:                                              ; preds = %700
  %705 = extractvalue { i32, i1 } %701, 0, !nosanitize !49
  %706 = load ptr, ptr %49, align 8, !tbaa !39
  %707 = load i32, ptr %50, align 8, !tbaa !81
  %708 = load i32, ptr %51, align 8, !tbaa !38
  %709 = shl i32 %707, %708
  %710 = zext i32 %705 to i64
  %711 = getelementptr inbounds nuw i8, ptr %706, i64 %710
  %712 = load i8, ptr %711, align 1, !tbaa !8
  %713 = zext i8 %712 to i32
  %714 = xor i32 %709, %713
  %715 = load i32, ptr %52, align 4, !tbaa !37
  %716 = and i32 %714, %715
  store i32 %716, ptr %50, align 8, !tbaa !81
  %717 = load ptr, ptr %53, align 8, !tbaa !41
  %718 = zext i32 %716 to i64
  %719 = getelementptr inbounds nuw [2 x i8], ptr %717, i64 %718
  %720 = load i16, ptr %719, align 2, !tbaa !63
  %721 = load ptr, ptr %54, align 8, !tbaa !40
  %722 = load i32, ptr %55, align 8, !tbaa !34
  %723 = and i32 %722, %698
  %724 = zext i32 %723 to i64
  %725 = getelementptr inbounds nuw [2 x i8], ptr %721, i64 %724
  store i16 %720, ptr %725, align 2, !tbaa !63
  %726 = trunc i32 %698 to i16
  store i16 %726, ptr %719, align 2, !tbaa !63
  br label %727

727:                                              ; preds = %696, %704
  %728 = load i32, ptr %30, align 8, !tbaa !78
  %729 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %728, i32 1), !nosanitize !49
  %730 = extractvalue { i32, i1 } %729, 1, !nosanitize !49
  br i1 %730, label %731, label %732, !prof !50, !nosanitize !49

731:                                              ; preds = %727
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

732:                                              ; preds = %727
  %733 = extractvalue { i32, i1 } %729, 0, !nosanitize !49
  store i32 %733, ptr %30, align 8, !tbaa !78
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %692, !llvm.loop !134

735:                                              ; preds = %732
  store i32 0, ptr %56, align 8, !tbaa !80
  store i32 2, ptr %29, align 8, !tbaa !79
  %736 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %698, i32 1), !nosanitize !49
  %737 = extractvalue { i32, i1 } %736, 1, !nosanitize !49
  br i1 %737, label %738, label %739, !prof !50, !nosanitize !49

738:                                              ; preds = %735
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

739:                                              ; preds = %735
  %740 = extractvalue { i32, i1 } %736, 0, !nosanitize !49
  store i32 %740, ptr %43, align 4, !tbaa !74
  br i1 %671, label %742, label %741

741:                                              ; preds = %739, %798, %935, %919
  br label %68, !llvm.loop !135

742:                                              ; preds = %739
  %743 = load i64, ptr %57, align 8, !tbaa !75
  %744 = icmp sgt i64 %743, -1
  br i1 %744, label %745, label %749

745:                                              ; preds = %742
  %746 = load ptr, ptr %58, align 8, !tbaa !39
  %747 = and i64 %743, 4294967295
  %748 = getelementptr inbounds nuw i8, ptr %746, i64 %747
  br label %749

749:                                              ; preds = %742, %745
  %750 = phi ptr [ %748, %745 ], [ null, %742 ]
  %751 = zext i32 %740 to i64
  %752 = sub nsw i64 %751, %743
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %750, i64 noundef %752, i32 noundef 0) #12
  %753 = load i32, ptr %43, align 4, !tbaa !74
  %754 = zext i32 %753 to i64
  store i64 %754, ptr %57, align 8, !tbaa !75
  %755 = load ptr, ptr %0, align 8, !tbaa !20
  %756 = getelementptr inbounds nuw i8, ptr %755, i64 56
  %757 = load ptr, ptr %756, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %757) #12
  %758 = getelementptr inbounds nuw i8, ptr %757, i64 40
  %759 = load i64, ptr %758, align 8, !tbaa !58
  %760 = getelementptr inbounds nuw i8, ptr %755, i64 32
  %761 = load i32, ptr %760, align 8, !tbaa !100
  %762 = zext i32 %761 to i64
  %763 = tail call i64 @llvm.umin.i64(i64 %759, i64 %762)
  %764 = trunc nuw i64 %763 to i32
  %765 = icmp eq i64 %763, 0
  br i1 %765, label %798, label %766

766:                                              ; preds = %749
  %767 = getelementptr inbounds nuw i8, ptr %755, i64 24
  %768 = load ptr, ptr %767, align 8, !tbaa !99
  %769 = getelementptr inbounds nuw i8, ptr %757, i64 32
  %770 = load ptr, ptr %769, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %768, ptr align 1 %770, i64 %763, i1 false)
  %771 = load ptr, ptr %767, align 8, !tbaa !99
  %772 = getelementptr inbounds nuw i8, ptr %771, i64 %763
  store ptr %772, ptr %767, align 8, !tbaa !99
  %773 = load ptr, ptr %769, align 8, !tbaa !59
  %774 = getelementptr inbounds nuw i8, ptr %773, i64 %763
  store ptr %774, ptr %769, align 8, !tbaa !59
  %775 = getelementptr inbounds nuw i8, ptr %755, i64 40
  %776 = load i64, ptr %775, align 8, !tbaa !101
  %777 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %776, i64 %763), !nosanitize !49
  %778 = extractvalue { i64, i1 } %777, 1, !nosanitize !49
  br i1 %778, label %779, label %780, !prof !50, !nosanitize !49

779:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

780:                                              ; preds = %766
  %781 = extractvalue { i64, i1 } %777, 0, !nosanitize !49
  store i64 %781, ptr %775, align 8, !tbaa !101
  %782 = load i32, ptr %760, align 8, !tbaa !100
  %783 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %782, i32 %764), !nosanitize !49
  %784 = extractvalue { i32, i1 } %783, 1, !nosanitize !49
  br i1 %784, label %785, label %786, !prof !50, !nosanitize !49

785:                                              ; preds = %780
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

786:                                              ; preds = %780
  %787 = extractvalue { i32, i1 } %783, 0, !nosanitize !49
  store i32 %787, ptr %760, align 8, !tbaa !100
  %788 = load i64, ptr %758, align 8, !tbaa !58
  %789 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %788, i64 %763), !nosanitize !49
  %790 = extractvalue { i64, i1 } %789, 1, !nosanitize !49
  br i1 %790, label %791, label %792, !prof !50, !nosanitize !49

791:                                              ; preds = %786
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

792:                                              ; preds = %786
  %793 = extractvalue { i64, i1 } %789, 0, !nosanitize !49
  store i64 %793, ptr %758, align 8, !tbaa !58
  %794 = icmp eq i64 %793, 0
  br i1 %794, label %795, label %798

795:                                              ; preds = %792
  %796 = getelementptr inbounds nuw i8, ptr %757, i64 16
  %797 = load ptr, ptr %796, align 8, !tbaa !44
  store ptr %797, ptr %769, align 8, !tbaa !59
  br label %798

798:                                              ; preds = %749, %792, %795
  %799 = load ptr, ptr %0, align 8, !tbaa !20
  %800 = getelementptr inbounds nuw i8, ptr %799, i64 32
  %801 = load i32, ptr %800, align 8, !tbaa !100
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %1118, label %741

803:                                              ; preds = %587, %585
  %804 = load i32, ptr %59, align 8, !tbaa !80
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %925, label %806

806:                                              ; preds = %803
  %807 = load i32, ptr %61, align 4, !tbaa !74
  %808 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %807, i32 1), !nosanitize !49
  %809 = extractvalue { i32, i1 } %808, 1, !nosanitize !49
  br i1 %809, label %810, label %811, !prof !50, !nosanitize !49

810:                                              ; preds = %806
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

811:                                              ; preds = %806
  %812 = extractvalue { i32, i1 } %808, 0, !nosanitize !49
  %813 = load ptr, ptr %60, align 8, !tbaa !39
  %814 = zext i32 %812 to i64
  %815 = getelementptr inbounds nuw i8, ptr %813, i64 %814
  %816 = load i8, ptr %815, align 1, !tbaa !8
  %817 = load i32, ptr %63, align 4, !tbaa !122
  %818 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %817, i32 1), !nosanitize !49
  %819 = extractvalue { i32, i1 } %818, 1, !nosanitize !49
  br i1 %819, label %820, label %821, !prof !50, !nosanitize !49

820:                                              ; preds = %811
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

821:                                              ; preds = %811
  %822 = extractvalue { i32, i1 } %818, 0, !nosanitize !49
  %823 = load ptr, ptr %62, align 8, !tbaa !48
  store i32 %822, ptr %63, align 4, !tbaa !122
  %824 = zext i32 %817 to i64
  %825 = getelementptr inbounds nuw i8, ptr %823, i64 %824
  store i8 0, ptr %825, align 1, !tbaa !8
  %826 = load i32, ptr %63, align 4, !tbaa !122
  %827 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %826, i32 1), !nosanitize !49
  %828 = extractvalue { i32, i1 } %827, 1, !nosanitize !49
  br i1 %828, label %829, label %830, !prof !50, !nosanitize !49

829:                                              ; preds = %821
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

830:                                              ; preds = %821
  %831 = extractvalue { i32, i1 } %827, 0, !nosanitize !49
  %832 = load ptr, ptr %62, align 8, !tbaa !48
  store i32 %831, ptr %63, align 4, !tbaa !122
  %833 = zext i32 %826 to i64
  %834 = getelementptr inbounds nuw i8, ptr %832, i64 %833
  store i8 0, ptr %834, align 1, !tbaa !8
  %835 = load i32, ptr %63, align 4, !tbaa !122
  %836 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %835, i32 1), !nosanitize !49
  %837 = extractvalue { i32, i1 } %836, 1, !nosanitize !49
  br i1 %837, label %838, label %839, !prof !50, !nosanitize !49

838:                                              ; preds = %830
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

839:                                              ; preds = %830
  %840 = extractvalue { i32, i1 } %836, 0, !nosanitize !49
  %841 = load ptr, ptr %62, align 8, !tbaa !48
  store i32 %840, ptr %63, align 4, !tbaa !122
  %842 = zext i32 %835 to i64
  %843 = getelementptr inbounds nuw i8, ptr %841, i64 %842
  store i8 %816, ptr %843, align 1, !tbaa !8
  %844 = zext i8 %816 to i64
  %845 = getelementptr inbounds nuw [4 x i8], ptr %64, i64 %844
  %846 = load i16, ptr %845, align 4, !tbaa !8
  %847 = add i16 %846, 1
  store i16 %847, ptr %845, align 4, !tbaa !8
  %848 = load i32, ptr %63, align 4, !tbaa !122
  %849 = load i32, ptr %65, align 8, !tbaa !51
  %850 = icmp eq i32 %848, %849
  br i1 %850, label %851, label %908

851:                                              ; preds = %839
  %852 = load i64, ptr %66, align 8, !tbaa !75
  %853 = icmp sgt i64 %852, -1
  br i1 %853, label %854, label %858

854:                                              ; preds = %851
  %855 = load ptr, ptr %60, align 8, !tbaa !39
  %856 = and i64 %852, 4294967295
  %857 = getelementptr inbounds nuw i8, ptr %855, i64 %856
  br label %858

858:                                              ; preds = %851, %854
  %859 = phi ptr [ %857, %854 ], [ null, %851 ]
  %860 = load i32, ptr %61, align 4, !tbaa !74
  %861 = zext i32 %860 to i64
  %862 = sub nsw i64 %861, %852
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %859, i64 noundef %862, i32 noundef 0) #12
  %863 = load i32, ptr %61, align 4, !tbaa !74
  %864 = zext i32 %863 to i64
  store i64 %864, ptr %66, align 8, !tbaa !75
  %865 = load ptr, ptr %0, align 8, !tbaa !20
  %866 = getelementptr inbounds nuw i8, ptr %865, i64 56
  %867 = load ptr, ptr %866, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %867) #12
  %868 = getelementptr inbounds nuw i8, ptr %867, i64 40
  %869 = load i64, ptr %868, align 8, !tbaa !58
  %870 = getelementptr inbounds nuw i8, ptr %865, i64 32
  %871 = load i32, ptr %870, align 8, !tbaa !100
  %872 = zext i32 %871 to i64
  %873 = tail call i64 @llvm.umin.i64(i64 %869, i64 %872)
  %874 = trunc nuw i64 %873 to i32
  %875 = icmp eq i64 %873, 0
  br i1 %875, label %908, label %876

876:                                              ; preds = %858
  %877 = getelementptr inbounds nuw i8, ptr %865, i64 24
  %878 = load ptr, ptr %877, align 8, !tbaa !99
  %879 = getelementptr inbounds nuw i8, ptr %867, i64 32
  %880 = load ptr, ptr %879, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %878, ptr align 1 %880, i64 %873, i1 false)
  %881 = load ptr, ptr %877, align 8, !tbaa !99
  %882 = getelementptr inbounds nuw i8, ptr %881, i64 %873
  store ptr %882, ptr %877, align 8, !tbaa !99
  %883 = load ptr, ptr %879, align 8, !tbaa !59
  %884 = getelementptr inbounds nuw i8, ptr %883, i64 %873
  store ptr %884, ptr %879, align 8, !tbaa !59
  %885 = getelementptr inbounds nuw i8, ptr %865, i64 40
  %886 = load i64, ptr %885, align 8, !tbaa !101
  %887 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %886, i64 %873), !nosanitize !49
  %888 = extractvalue { i64, i1 } %887, 1, !nosanitize !49
  br i1 %888, label %889, label %890, !prof !50, !nosanitize !49

889:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

890:                                              ; preds = %876
  %891 = extractvalue { i64, i1 } %887, 0, !nosanitize !49
  store i64 %891, ptr %885, align 8, !tbaa !101
  %892 = load i32, ptr %870, align 8, !tbaa !100
  %893 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %892, i32 %874), !nosanitize !49
  %894 = extractvalue { i32, i1 } %893, 1, !nosanitize !49
  br i1 %894, label %895, label %896, !prof !50, !nosanitize !49

895:                                              ; preds = %890
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

896:                                              ; preds = %890
  %897 = extractvalue { i32, i1 } %893, 0, !nosanitize !49
  store i32 %897, ptr %870, align 8, !tbaa !100
  %898 = load i64, ptr %868, align 8, !tbaa !58
  %899 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %898, i64 %873), !nosanitize !49
  %900 = extractvalue { i64, i1 } %899, 1, !nosanitize !49
  br i1 %900, label %901, label %902, !prof !50, !nosanitize !49

901:                                              ; preds = %896
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

902:                                              ; preds = %896
  %903 = extractvalue { i64, i1 } %899, 0, !nosanitize !49
  store i64 %903, ptr %868, align 8, !tbaa !58
  %904 = icmp eq i64 %903, 0
  br i1 %904, label %905, label %908

905:                                              ; preds = %902
  %906 = getelementptr inbounds nuw i8, ptr %867, i64 16
  %907 = load ptr, ptr %906, align 8, !tbaa !44
  store ptr %907, ptr %879, align 8, !tbaa !59
  br label %908

908:                                              ; preds = %905, %902, %858, %839
  %909 = load i32, ptr %61, align 4, !tbaa !74
  %910 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %909, i32 1), !nosanitize !49
  %911 = extractvalue { i32, i1 } %910, 1, !nosanitize !49
  br i1 %911, label %912, label %913, !prof !50, !nosanitize !49

912:                                              ; preds = %908
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

913:                                              ; preds = %908
  %914 = extractvalue { i32, i1 } %910, 0, !nosanitize !49
  store i32 %914, ptr %61, align 4, !tbaa !74
  %915 = load i32, ptr %3, align 4, !tbaa !76
  %916 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %915, i32 1), !nosanitize !49
  %917 = extractvalue { i32, i1 } %916, 1, !nosanitize !49
  br i1 %917, label %918, label %919, !prof !50, !nosanitize !49

918:                                              ; preds = %913
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

919:                                              ; preds = %913
  %920 = extractvalue { i32, i1 } %916, 0, !nosanitize !49
  store i32 %920, ptr %3, align 4, !tbaa !76
  %921 = load ptr, ptr %0, align 8, !tbaa !20
  %922 = getelementptr inbounds nuw i8, ptr %921, i64 32
  %923 = load i32, ptr %922, align 8, !tbaa !100
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %1118, label %741

925:                                              ; preds = %803
  store i32 1, ptr %59, align 8, !tbaa !80
  %926 = load i32, ptr %67, align 4, !tbaa !74
  %927 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %926, i32 1), !nosanitize !49
  %928 = extractvalue { i32, i1 } %927, 1, !nosanitize !49
  br i1 %928, label %929, label %930, !prof !50, !nosanitize !49

929:                                              ; preds = %925
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

930:                                              ; preds = %925
  %931 = extractvalue { i32, i1 } %927, 0, !nosanitize !49
  store i32 %931, ptr %67, align 4, !tbaa !74
  %932 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %360, i32 1), !nosanitize !49
  %933 = extractvalue { i32, i1 } %932, 1, !nosanitize !49
  br i1 %933, label %934, label %935, !prof !50, !nosanitize !49

934:                                              ; preds = %930
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

935:                                              ; preds = %930
  %936 = extractvalue { i32, i1 } %932, 0, !nosanitize !49
  store i32 %936, ptr %3, align 4, !tbaa !76
  br label %741

937:                                              ; preds = %357
  %938 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %939 = load i32, ptr %938, align 8, !tbaa !80
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %986, label %941

941:                                              ; preds = %937
  %942 = load i32, ptr %6, align 4, !tbaa !74
  %943 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %942, i32 1), !nosanitize !49
  %944 = extractvalue { i32, i1 } %943, 1, !nosanitize !49
  br i1 %944, label %945, label %946, !prof !50, !nosanitize !49

945:                                              ; preds = %941
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

946:                                              ; preds = %941
  %947 = extractvalue { i32, i1 } %943, 0, !nosanitize !49
  %948 = load ptr, ptr %7, align 8, !tbaa !39
  %949 = zext i32 %947 to i64
  %950 = getelementptr inbounds nuw i8, ptr %948, i64 %949
  %951 = load i8, ptr %950, align 1, !tbaa !8
  %952 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %953 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %954 = load i32, ptr %953, align 4, !tbaa !122
  %955 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %954, i32 1), !nosanitize !49
  %956 = extractvalue { i32, i1 } %955, 1, !nosanitize !49
  br i1 %956, label %957, label %958, !prof !50, !nosanitize !49

957:                                              ; preds = %946
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

958:                                              ; preds = %946
  %959 = extractvalue { i32, i1 } %955, 0, !nosanitize !49
  %960 = load ptr, ptr %952, align 8, !tbaa !48
  store i32 %959, ptr %953, align 4, !tbaa !122
  %961 = zext i32 %954 to i64
  %962 = getelementptr inbounds nuw i8, ptr %960, i64 %961
  store i8 0, ptr %962, align 1, !tbaa !8
  %963 = load i32, ptr %953, align 4, !tbaa !122
  %964 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %963, i32 1), !nosanitize !49
  %965 = extractvalue { i32, i1 } %964, 1, !nosanitize !49
  br i1 %965, label %966, label %967, !prof !50, !nosanitize !49

966:                                              ; preds = %958
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

967:                                              ; preds = %958
  %968 = extractvalue { i32, i1 } %964, 0, !nosanitize !49
  %969 = load ptr, ptr %952, align 8, !tbaa !48
  store i32 %968, ptr %953, align 4, !tbaa !122
  %970 = zext i32 %963 to i64
  %971 = getelementptr inbounds nuw i8, ptr %969, i64 %970
  store i8 0, ptr %971, align 1, !tbaa !8
  %972 = load i32, ptr %953, align 4, !tbaa !122
  %973 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %972, i32 1), !nosanitize !49
  %974 = extractvalue { i32, i1 } %973, 1, !nosanitize !49
  br i1 %974, label %975, label %976, !prof !50, !nosanitize !49

975:                                              ; preds = %967
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

976:                                              ; preds = %967
  %977 = extractvalue { i32, i1 } %973, 0, !nosanitize !49
  %978 = load ptr, ptr %952, align 8, !tbaa !48
  store i32 %977, ptr %953, align 4, !tbaa !122
  %979 = zext i32 %972 to i64
  %980 = getelementptr inbounds nuw i8, ptr %978, i64 %979
  store i8 %951, ptr %980, align 1, !tbaa !8
  %981 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %982 = zext i8 %951 to i64
  %983 = getelementptr inbounds nuw [4 x i8], ptr %981, i64 %982
  %984 = load i16, ptr %983, align 4, !tbaa !8
  %985 = add i16 %984, 1
  store i16 %985, ptr %983, align 4, !tbaa !8
  store i32 0, ptr %938, align 8, !tbaa !80
  br label %986

986:                                              ; preds = %976, %937
  %987 = load i32, ptr %6, align 4, !tbaa !74
  %988 = tail call i32 @llvm.umin.i32(i32 %987, i32 2)
  store i32 %988, ptr %10, align 4, !tbaa !77
  %989 = icmp eq i32 %1, 4
  br i1 %989, label %990, label %1052

990:                                              ; preds = %986
  %991 = load i64, ptr %9, align 8, !tbaa !75
  %992 = icmp sgt i64 %991, -1
  br i1 %992, label %993, label %997

993:                                              ; preds = %990
  %994 = load ptr, ptr %7, align 8, !tbaa !39
  %995 = and i64 %991, 4294967295
  %996 = getelementptr inbounds nuw i8, ptr %994, i64 %995
  br label %997

997:                                              ; preds = %990, %993
  %998 = phi ptr [ %996, %993 ], [ null, %990 ]
  %999 = zext i32 %987 to i64
  %1000 = sub nsw i64 %999, %991
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %998, i64 noundef %1000, i32 noundef 1) #12
  %1001 = load i32, ptr %6, align 4, !tbaa !74
  %1002 = zext i32 %1001 to i64
  store i64 %1002, ptr %9, align 8, !tbaa !75
  %1003 = load ptr, ptr %0, align 8, !tbaa !20
  %1004 = getelementptr inbounds nuw i8, ptr %1003, i64 56
  %1005 = load ptr, ptr %1004, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1005) #12
  %1006 = getelementptr inbounds nuw i8, ptr %1005, i64 40
  %1007 = load i64, ptr %1006, align 8, !tbaa !58
  %1008 = getelementptr inbounds nuw i8, ptr %1003, i64 32
  %1009 = load i32, ptr %1008, align 8, !tbaa !100
  %1010 = zext i32 %1009 to i64
  %1011 = tail call i64 @llvm.umin.i64(i64 %1007, i64 %1010)
  %1012 = trunc nuw i64 %1011 to i32
  %1013 = icmp eq i64 %1011, 0
  br i1 %1013, label %1046, label %1014

1014:                                             ; preds = %997
  %1015 = getelementptr inbounds nuw i8, ptr %1003, i64 24
  %1016 = load ptr, ptr %1015, align 8, !tbaa !99
  %1017 = getelementptr inbounds nuw i8, ptr %1005, i64 32
  %1018 = load ptr, ptr %1017, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1016, ptr align 1 %1018, i64 %1011, i1 false)
  %1019 = load ptr, ptr %1015, align 8, !tbaa !99
  %1020 = getelementptr inbounds nuw i8, ptr %1019, i64 %1011
  store ptr %1020, ptr %1015, align 8, !tbaa !99
  %1021 = load ptr, ptr %1017, align 8, !tbaa !59
  %1022 = getelementptr inbounds nuw i8, ptr %1021, i64 %1011
  store ptr %1022, ptr %1017, align 8, !tbaa !59
  %1023 = getelementptr inbounds nuw i8, ptr %1003, i64 40
  %1024 = load i64, ptr %1023, align 8, !tbaa !101
  %1025 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1024, i64 %1011), !nosanitize !49
  %1026 = extractvalue { i64, i1 } %1025, 1, !nosanitize !49
  br i1 %1026, label %1027, label %1028, !prof !50, !nosanitize !49

1027:                                             ; preds = %1014
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1028:                                             ; preds = %1014
  %1029 = extractvalue { i64, i1 } %1025, 0, !nosanitize !49
  store i64 %1029, ptr %1023, align 8, !tbaa !101
  %1030 = load i32, ptr %1008, align 8, !tbaa !100
  %1031 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1030, i32 %1012), !nosanitize !49
  %1032 = extractvalue { i32, i1 } %1031, 1, !nosanitize !49
  br i1 %1032, label %1033, label %1034, !prof !50, !nosanitize !49

1033:                                             ; preds = %1028
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

1034:                                             ; preds = %1028
  %1035 = extractvalue { i32, i1 } %1031, 0, !nosanitize !49
  store i32 %1035, ptr %1008, align 8, !tbaa !100
  %1036 = load i64, ptr %1006, align 8, !tbaa !58
  %1037 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1036, i64 %1011), !nosanitize !49
  %1038 = extractvalue { i64, i1 } %1037, 1, !nosanitize !49
  br i1 %1038, label %1039, label %1040, !prof !50, !nosanitize !49

1039:                                             ; preds = %1034
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

1040:                                             ; preds = %1034
  %1041 = extractvalue { i64, i1 } %1037, 0, !nosanitize !49
  store i64 %1041, ptr %1006, align 8, !tbaa !58
  %1042 = icmp eq i64 %1041, 0
  br i1 %1042, label %1043, label %1046

1043:                                             ; preds = %1040
  %1044 = getelementptr inbounds nuw i8, ptr %1005, i64 16
  %1045 = load ptr, ptr %1044, align 8, !tbaa !44
  store ptr %1045, ptr %1017, align 8, !tbaa !59
  br label %1046

1046:                                             ; preds = %997, %1040, %1043
  %1047 = load ptr, ptr %0, align 8, !tbaa !20
  %1048 = getelementptr inbounds nuw i8, ptr %1047, i64 32
  %1049 = load i32, ptr %1048, align 8, !tbaa !100
  %1050 = icmp eq i32 %1049, 0
  %1051 = select i1 %1050, i32 2, i32 3
  br label %1118

1052:                                             ; preds = %986
  %1053 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %1054 = load i32, ptr %1053, align 4, !tbaa !122
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1117, label %1056

1056:                                             ; preds = %1052
  %1057 = load i64, ptr %9, align 8, !tbaa !75
  %1058 = icmp sgt i64 %1057, -1
  br i1 %1058, label %1059, label %1063

1059:                                             ; preds = %1056
  %1060 = load ptr, ptr %7, align 8, !tbaa !39
  %1061 = and i64 %1057, 4294967295
  %1062 = getelementptr inbounds nuw i8, ptr %1060, i64 %1061
  br label %1063

1063:                                             ; preds = %1056, %1059
  %1064 = phi ptr [ %1062, %1059 ], [ null, %1056 ]
  %1065 = zext i32 %987 to i64
  %1066 = sub nsw i64 %1065, %1057
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1064, i64 noundef %1066, i32 noundef 0) #12
  %1067 = load i32, ptr %6, align 4, !tbaa !74
  %1068 = zext i32 %1067 to i64
  store i64 %1068, ptr %9, align 8, !tbaa !75
  %1069 = load ptr, ptr %0, align 8, !tbaa !20
  %1070 = getelementptr inbounds nuw i8, ptr %1069, i64 56
  %1071 = load ptr, ptr %1070, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1071) #12
  %1072 = getelementptr inbounds nuw i8, ptr %1071, i64 40
  %1073 = load i64, ptr %1072, align 8, !tbaa !58
  %1074 = getelementptr inbounds nuw i8, ptr %1069, i64 32
  %1075 = load i32, ptr %1074, align 8, !tbaa !100
  %1076 = zext i32 %1075 to i64
  %1077 = tail call i64 @llvm.umin.i64(i64 %1073, i64 %1076)
  %1078 = trunc nuw i64 %1077 to i32
  %1079 = icmp eq i64 %1077, 0
  br i1 %1079, label %1112, label %1080

1080:                                             ; preds = %1063
  %1081 = getelementptr inbounds nuw i8, ptr %1069, i64 24
  %1082 = load ptr, ptr %1081, align 8, !tbaa !99
  %1083 = getelementptr inbounds nuw i8, ptr %1071, i64 32
  %1084 = load ptr, ptr %1083, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1082, ptr align 1 %1084, i64 %1077, i1 false)
  %1085 = load ptr, ptr %1081, align 8, !tbaa !99
  %1086 = getelementptr inbounds nuw i8, ptr %1085, i64 %1077
  store ptr %1086, ptr %1081, align 8, !tbaa !99
  %1087 = load ptr, ptr %1083, align 8, !tbaa !59
  %1088 = getelementptr inbounds nuw i8, ptr %1087, i64 %1077
  store ptr %1088, ptr %1083, align 8, !tbaa !59
  %1089 = getelementptr inbounds nuw i8, ptr %1069, i64 40
  %1090 = load i64, ptr %1089, align 8, !tbaa !101
  %1091 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1090, i64 %1077), !nosanitize !49
  %1092 = extractvalue { i64, i1 } %1091, 1, !nosanitize !49
  br i1 %1092, label %1093, label %1094, !prof !50, !nosanitize !49

1093:                                             ; preds = %1080
  tail call void @llvm.ubsantrap(i8 0) #13, !nosanitize !49
  unreachable, !nosanitize !49

1094:                                             ; preds = %1080
  %1095 = extractvalue { i64, i1 } %1091, 0, !nosanitize !49
  store i64 %1095, ptr %1089, align 8, !tbaa !101
  %1096 = load i32, ptr %1074, align 8, !tbaa !100
  %1097 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1096, i32 %1078), !nosanitize !49
  %1098 = extractvalue { i32, i1 } %1097, 1, !nosanitize !49
  br i1 %1098, label %1099, label %1100, !prof !50, !nosanitize !49

1099:                                             ; preds = %1094
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

1100:                                             ; preds = %1094
  %1101 = extractvalue { i32, i1 } %1097, 0, !nosanitize !49
  store i32 %1101, ptr %1074, align 8, !tbaa !100
  %1102 = load i64, ptr %1072, align 8, !tbaa !58
  %1103 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1102, i64 %1077), !nosanitize !49
  %1104 = extractvalue { i64, i1 } %1103, 1, !nosanitize !49
  br i1 %1104, label %1105, label %1106, !prof !50, !nosanitize !49

1105:                                             ; preds = %1100
  tail call void @llvm.ubsantrap(i8 21) #13, !nosanitize !49
  unreachable, !nosanitize !49

1106:                                             ; preds = %1100
  %1107 = extractvalue { i64, i1 } %1103, 0, !nosanitize !49
  store i64 %1107, ptr %1072, align 8, !tbaa !58
  %1108 = icmp eq i64 %1107, 0
  br i1 %1108, label %1109, label %1112

1109:                                             ; preds = %1106
  %1110 = getelementptr inbounds nuw i8, ptr %1071, i64 16
  %1111 = load ptr, ptr %1110, align 8, !tbaa !44
  store ptr %1111, ptr %1083, align 8, !tbaa !59
  br label %1112

1112:                                             ; preds = %1063, %1106, %1109
  %1113 = load ptr, ptr %0, align 8, !tbaa !20
  %1114 = getelementptr inbounds nuw i8, ptr %1113, i64 32
  %1115 = load i32, ptr %1114, align 8, !tbaa !100
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1118, label %1117

1117:                                             ; preds = %1112, %1052
  br label %1118

1118:                                             ; preds = %919, %798, %353, %1112, %1046, %1117
  %1119 = phi i32 [ 0, %1112 ], [ %1051, %1046 ], [ 1, %1117 ], [ 0, %353 ], [ 0, %798 ], [ 0, %919 ]
  ret i32 %1119
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nomerge noreturn nounwind }

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
!18 = !{ptr @deflateInit2_}
!19 = !{!10, !14, i64 56}
!20 = !{!21, !22, i64 0}
!21 = !{!"internal_state", !22, i64 0, !5, i64 8, !11, i64 16, !13, i64 24, !11, i64 32, !13, i64 40, !5, i64 48, !23, i64 56, !13, i64 64, !6, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !11, i64 96, !13, i64 104, !24, i64 112, !24, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !13, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !6, i64 212, !6, i64 2504, !6, i64 2748, !25, i64 2904, !25, i64 2928, !25, i64 2952, !6, i64 2976, !6, i64 3008, !5, i64 5300, !5, i64 5304, !6, i64 5308, !11, i64 5888, !5, i64 5896, !5, i64 5900, !5, i64 5904, !13, i64 5912, !13, i64 5920, !5, i64 5928, !5, i64 5932, !28, i64 5936, !5, i64 5940, !5, i64 5944, !13, i64 5952, !5, i64 5960}
!22 = !{!"p1 _ZTS10z_stream_s", !12, i64 0}
!23 = !{!"p1 _ZTS11gz_header_s", !12, i64 0}
!24 = !{!"p1 short", !12, i64 0}
!25 = !{!"tree_desc_s", !26, i64 0, !5, i64 8, !27, i64 16}
!26 = !{!"p1 _ZTS9ct_data_s", !12, i64 0}
!27 = !{!"p1 _ZTS18static_tree_desc_s", !12, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = !{!21, !5, i64 8}
!30 = !{!21, !5, i64 48}
!31 = !{!21, !23, i64 56}
!32 = !{!21, !5, i64 84}
!33 = !{!21, !5, i64 80}
!34 = !{!21, !5, i64 88}
!35 = !{!21, !5, i64 136}
!36 = !{!21, !5, i64 132}
!37 = !{!21, !5, i64 140}
!38 = !{!21, !5, i64 144}
!39 = !{!21, !11, i64 96}
!40 = !{!21, !24, i64 112}
!41 = !{!21, !24, i64 120}
!42 = !{!21, !13, i64 5952}
!43 = !{!21, !5, i64 5896}
!44 = !{!21, !11, i64 16}
!45 = !{!21, !13, i64 24}
!46 = !{!11, !11, i64 0}
!47 = !{ptr @deflateInit2_, ptr @deflateEnd}
!48 = !{!21, !11, i64 5888}
!49 = !{}
!50 = !{!"branch_weights", i32 1, i32 1048575}
!51 = !{!21, !5, i64 5904}
!52 = !{!21, !5, i64 196}
!53 = !{!21, !5, i64 200}
!54 = !{!21, !6, i64 72}
!55 = !{ptr @deflateEnd}
!56 = !{!10, !13, i64 16}
!57 = !{!10, !5, i64 88}
!58 = !{!21, !13, i64 40}
!59 = !{!21, !11, i64 32}
!60 = !{!10, !13, i64 96}
!61 = !{!21, !5, i64 76}
!62 = !{!21, !13, i64 104}
!63 = !{!28, !28, i64 0}
!64 = !{!21, !5, i64 5960}
!65 = !{!66, !28, i64 2}
!66 = !{!"config_s", !28, i64 0, !28, i64 2, !28, i64 4, !28, i64 6, !12, i64 8}
!67 = !{!21, !5, i64 192}
!68 = !{!66, !28, i64 0}
!69 = !{!21, !5, i64 204}
!70 = !{!66, !28, i64 4}
!71 = !{!21, !5, i64 208}
!72 = !{!66, !28, i64 6}
!73 = !{!21, !5, i64 188}
!74 = !{!21, !5, i64 172}
!75 = !{!21, !13, i64 152}
!76 = !{!21, !5, i64 180}
!77 = !{!21, !5, i64 5932}
!78 = !{!21, !5, i64 184}
!79 = !{!21, !5, i64 160}
!80 = !{!21, !5, i64 168}
!81 = !{!21, !5, i64 128}
!82 = !{!10, !5, i64 8}
!83 = !{!10, !11, i64 0}
!84 = !{!21, !5, i64 176}
!85 = distinct !{!85, !86, !87}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = distinct !{!88, !86, !87}
!89 = distinct !{!89, !86, !87}
!90 = distinct !{!90, !86, !87}
!91 = !{!"branch_weights", i32 1048575, i32 1}
!92 = distinct !{!92, !86, !87}
!93 = distinct !{!93, !86, !87}
!94 = !{!21, !5, i64 5940}
!95 = !{!21, !5, i64 5944}
!96 = !{!21, !28, i64 5936}
!97 = distinct !{!97, !86, !87}
!98 = !{!66, !12, i64 8}
!99 = !{!10, !11, i64 24}
!100 = !{!10, !5, i64 32}
!101 = !{!10, !13, i64 40}
!102 = !{!103, !11, i64 56}
!103 = !{!"gz_header_s", !5, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !5, i64 32, !5, i64 36, !11, i64 40, !5, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!104 = !{!103, !11, i64 40}
!105 = !{!103, !11, i64 24}
!106 = !{!103, !5, i64 0}
!107 = !{!103, !5, i64 68}
!108 = !{!103, !13, i64 8}
!109 = !{!103, !5, i64 20}
!110 = !{!103, !5, i64 32}
!111 = !{!21, !13, i64 64}
!112 = distinct !{!112, !86, !87}
!113 = distinct !{!113, !86, !87}
!114 = distinct !{!114, !86, !87}
!115 = !{ptr @deflate}
!116 = !{!21, !5, i64 5928}
!117 = !{!"branch_weights", i32 1, i32 127}
!118 = !{!"branch_weights", i32 127, i32 134217473}
!119 = distinct !{!119, !86, !87}
!120 = distinct !{!120, !86, !87}
!121 = distinct !{!121, !86, !87}
!122 = !{!21, !5, i64 5900}
!123 = distinct !{!123, !87}
!124 = distinct !{!124, !86, !87}
!125 = distinct !{!125, !87}
!126 = !{!21, !26, i64 2904}
!127 = !{!21, !26, i64 2928}
!128 = !{!21, !26, i64 2952}
!129 = distinct !{!129, !86, !87}
!130 = distinct !{!130, !86, !87}
!131 = distinct !{!131, !86, !87}
!132 = distinct !{!132, !87}
!133 = !{!21, !5, i64 164}
!134 = distinct !{!134, !86, !87}
!135 = distinct !{!135, !87}
