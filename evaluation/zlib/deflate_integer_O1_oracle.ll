; ModuleID = 'evaluation/zlib/deflate_integer_O1.ll'
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
  %33 = tail call ptr %30(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #10, !inline_history !18
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
  %49 = tail call ptr %47(ptr noundef %48, i32 noundef 32768, i32 noundef 2) #10, !inline_history !18
  %50 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %49, ptr %50, align 8, !tbaa !39
  %51 = load ptr, ptr %15, align 8, !tbaa !15
  %52 = load ptr, ptr %31, align 8, !tbaa !16
  %53 = load i32, ptr %41, align 8, !tbaa !33
  %54 = tail call ptr %51(ptr noundef %52, i32 noundef %53, i32 noundef 2) #10, !inline_history !18
  %55 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %54, ptr %55, align 8, !tbaa !40
  %56 = load ptr, ptr %15, align 8, !tbaa !15
  %57 = load ptr, ptr %31, align 8, !tbaa !16
  %58 = load i32, ptr %44, align 4, !tbaa !36
  %59 = tail call ptr %56(ptr noundef %57, i32 noundef %58, i32 noundef 2) #10, !inline_history !18
  %60 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %59, ptr %60, align 8, !tbaa !41
  %61 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %61, align 8, !tbaa !42
  %62 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %62, align 8, !tbaa !43
  %63 = load ptr, ptr %15, align 8, !tbaa !15
  %64 = load ptr, ptr %31, align 8, !tbaa !16
  %65 = tail call ptr %63(ptr noundef %64, i32 noundef 16384, i32 noundef 4) #10, !inline_history !18
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
  tail call void %86(ptr noundef %102, ptr noundef nonnull %99) #10, !inline_history !47
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
  tail call void %109(ptr noundef %110, ptr noundef nonnull %106) #10, !inline_history !47
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
  tail call void %117(ptr noundef %118, ptr noundef nonnull %114) #10, !inline_history !47
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
  tail call void %125(ptr noundef %126, ptr noundef nonnull %122) #10, !inline_history !47
  br label %127

127:                                              ; preds = %124, %119
  %128 = load ptr, ptr %21, align 8, !tbaa !17
  %129 = load ptr, ptr %31, align 8, !tbaa !16
  %130 = load ptr, ptr %36, align 8, !tbaa !19
  tail call void %128(ptr noundef %129, ptr noundef %130) #10, !inline_history !47
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

137:                                              ; preds = %131
  %138 = extractvalue { i32, i1 } %134, 0, !nosanitize !49
  %139 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %138, i32 3), !nosanitize !49
  %140 = extractvalue { i32, i1 } %139, 1, !nosanitize !49
  br i1 %140, label %141, label %142, !prof !50, !nosanitize !49

141:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !49
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

149:                                              ; preds = %142, %127, %94, %91, %88, %85, %81, %29, %25, %11, %6, %4
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

41:                                               ; preds = %39, %37, %35
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
  %63 = tail call ptr %60(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #10
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
  %87 = tail call ptr %85(ptr noundef %86, i32 noundef %72, i32 noundef 2) #10
  %88 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %87, ptr %88, align 8, !tbaa !39
  %89 = load ptr, ptr %19, align 8, !tbaa !15
  %90 = load ptr, ptr %61, align 8, !tbaa !16
  %91 = load i32, ptr %73, align 8, !tbaa !33
  %92 = tail call ptr %89(ptr noundef %90, i32 noundef %91, i32 noundef 2) #10
  %93 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %92, ptr %93, align 8, !tbaa !40
  %94 = load ptr, ptr %19, align 8, !tbaa !15
  %95 = load ptr, ptr %61, align 8, !tbaa !16
  %96 = load i32, ptr %79, align 4, !tbaa !36
  %97 = tail call ptr %94(ptr noundef %95, i32 noundef %96, i32 noundef 2) #10
  %98 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %97, ptr %98, align 8, !tbaa !41
  %99 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %99, align 8, !tbaa !42
  %100 = shl nuw nsw i32 64, %4
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %100, ptr %101, align 8, !tbaa !43
  %102 = load ptr, ptr %19, align 8, !tbaa !15
  %103 = load ptr, ptr %61, align 8, !tbaa !16
  %104 = tail call ptr %102(ptr noundef %103, i32 noundef %100, i32 noundef 4) #10
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
  tail call void %125(ptr noundef %141, ptr noundef nonnull %138) #10, !inline_history !55
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
  tail call void %148(ptr noundef %149, ptr noundef nonnull %145) #10, !inline_history !55
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
  tail call void %156(ptr noundef %157, ptr noundef nonnull %153) #10, !inline_history !55
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
  tail call void %164(ptr noundef %165, ptr noundef nonnull %161) #10, !inline_history !55
  br label %166

166:                                              ; preds = %163, %158
  %167 = load ptr, ptr %25, align 8, !tbaa !17
  %168 = load ptr, ptr %61, align 8, !tbaa !16
  %169 = load ptr, ptr %67, align 8, !tbaa !19
  tail call void %167(ptr noundef %168, ptr noundef %169) #10, !inline_history !55
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

176:                                              ; preds = %170
  %177 = extractvalue { i32, i1 } %173, 0, !nosanitize !49
  %178 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %177, i32 3), !nosanitize !49
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !49
  br i1 %179, label %180, label %181, !prof !50, !nosanitize !49

180:                                              ; preds = %176
  tail call void @llvm.ubsantrap(i8 12) #11, !nosanitize !49
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

188:                                              ; preds = %181, %166, %133, %130, %127, %124, %120, %59, %56, %41, %33, %15, %10, %8
  %189 = phi i32 [ %187, %181 ], [ -6, %8 ], [ -2, %15 ], [ -2, %33 ], [ -2, %41 ], [ -4, %59 ], [ -6, %10 ], [ -2, %56 ], [ -4, %120 ], [ -4, %124 ], [ -4, %127 ], [ -4, %130 ], [ -4, %133 ], [ -4, %166 ]
  ret i32 %189
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #2

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
  tail call void %31(ptr noundef %33, ptr noundef nonnull %27) #10
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
  tail call void %41(ptr noundef %43, ptr noundef nonnull %37) #10
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
  tail call void %51(ptr noundef %53, ptr noundef nonnull %47) #10
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
  tail call void %61(ptr noundef %63, ptr noundef nonnull %57) #10
  br label %64

64:                                               ; preds = %59, %54
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %66 = load ptr, ptr %65, align 8, !tbaa !17
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %68 = load ptr, ptr %67, align 8, !tbaa !16
  %69 = load ptr, ptr %22, align 8, !tbaa !19
  tail call void %66(ptr noundef %68, ptr noundef %69) #10
  store ptr null, ptr %22, align 8, !tbaa !19
  %70 = icmp eq i32 %25, 113
  %71 = select i1 %70, i32 -3, i32 0
  br label %72

72:                                               ; preds = %64, %18, %15, %11, %7, %3, %1
  %73 = phi i32 [ %71, %64 ], [ -2, %1 ], [ -2, %3 ], [ -2, %7 ], [ -2, %11 ], [ -2, %15 ], [ -2, %18 ]
  ret i32 %73
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateReset(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %50 [
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
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !49
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !49
  br i1 %34, label %35, label %36, !prof !50, !nosanitize !49

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !49
  unreachable, !nosanitize !49

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !49
  store i32 %37, ptr %29, align 8, !tbaa !30
  br label %38

38:                                               ; preds = %36, %21
  %39 = load i32, ptr %29, align 8, !tbaa !30
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !29
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !60
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !61
  tail call void @_tr_init(ptr noundef nonnull %13) #10
  br label %50

50:                                               ; preds = %46, %18, %15, %11, %7, %3, %1
  %51 = phi i1 [ true, %46 ], [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %11 ], [ false, %15 ], [ false, %18 ]
  %52 = phi i32 [ 0, %46 ], [ -2, %1 ], [ -2, %3 ], [ -2, %7 ], [ -2, %11 ], [ -2, %15 ], [ -2, %18 ]
  br i1 %51, label %53, label %101

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %55 = load ptr, ptr %54, align 8, !tbaa !19
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 80
  %57 = load i32, ptr %56, align 8, !tbaa !33
  %58 = zext i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 1
  %60 = getelementptr inbounds nuw i8, ptr %55, i64 104
  store i64 %59, ptr %60, align 8, !tbaa !62
  %61 = getelementptr inbounds nuw i8, ptr %55, i64 132
  %62 = load i32, ptr %61, align 4, !tbaa !36
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %62, i32 1), !nosanitize !49
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !49
  br i1 %64, label %65, label %66, !prof !50, !nosanitize !49

65:                                               ; preds = %53
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

66:                                               ; preds = %53
  %67 = extractvalue { i32, i1 } %63, 0, !nosanitize !49
  %68 = getelementptr inbounds nuw i8, ptr %55, i64 120
  %69 = load ptr, ptr %68, align 8, !tbaa !41
  %70 = zext i32 %67 to i64
  %71 = getelementptr inbounds nuw [2 x i8], ptr %69, i64 %70
  store i16 0, ptr %71, align 2, !tbaa !63
  %72 = shl nuw nsw i64 %70, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %69, i8 0, i64 %72, i1 false)
  %73 = getelementptr inbounds nuw i8, ptr %55, i64 5960
  store i32 0, ptr %73, align 8, !tbaa !64
  %74 = getelementptr inbounds nuw i8, ptr %55, i64 196
  %75 = load i32, ptr %74, align 4, !tbaa !52
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 2
  %79 = load i16, ptr %78, align 2, !tbaa !65
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds nuw i8, ptr %55, i64 192
  store i32 %80, ptr %81, align 8, !tbaa !67
  %82 = load i16, ptr %77, align 16, !tbaa !68
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds nuw i8, ptr %55, i64 204
  store i32 %83, ptr %84, align 4, !tbaa !69
  %85 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %86 = load i16, ptr %85, align 4, !tbaa !70
  %87 = zext i16 %86 to i32
  %88 = getelementptr inbounds nuw i8, ptr %55, i64 208
  store i32 %87, ptr %88, align 8, !tbaa !71
  %89 = getelementptr inbounds nuw i8, ptr %77, i64 6
  %90 = load i16, ptr %89, align 2, !tbaa !72
  %91 = zext i16 %90 to i32
  %92 = getelementptr inbounds nuw i8, ptr %55, i64 188
  store i32 %91, ptr %92, align 4, !tbaa !73
  %93 = getelementptr inbounds nuw i8, ptr %55, i64 172
  store i32 0, ptr %93, align 4, !tbaa !74
  %94 = getelementptr inbounds nuw i8, ptr %55, i64 152
  store i64 0, ptr %94, align 8, !tbaa !75
  %95 = getelementptr inbounds nuw i8, ptr %55, i64 180
  store i32 0, ptr %95, align 4, !tbaa !76
  %96 = getelementptr inbounds nuw i8, ptr %55, i64 5932
  store i32 0, ptr %96, align 4, !tbaa !77
  %97 = getelementptr inbounds nuw i8, ptr %55, i64 184
  store i32 2, ptr %97, align 8, !tbaa !78
  %98 = getelementptr inbounds nuw i8, ptr %55, i64 160
  store i32 2, ptr %98, align 8, !tbaa !79
  %99 = getelementptr inbounds nuw i8, ptr %55, i64 168
  store i32 0, ptr %99, align 8, !tbaa !80
  %100 = getelementptr inbounds nuw i8, ptr %55, i64 128
  store i32 0, ptr %100, align 8, !tbaa !81
  br label %101

101:                                              ; preds = %66, %50
  ret i32 %52
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

24:                                               ; preds = %23, %20, %17, %13, %9, %5, %3
  %25 = phi i1 [ false, %23 ], [ true, %3 ], [ true, %9 ], [ true, %5 ], [ true, %20 ], [ true, %17 ], [ true, %13 ]
  %26 = icmp eq ptr %1, null
  %27 = or i1 %26, %25
  br i1 %27, label %738, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %32 = load i32, ptr %31, align 8, !tbaa !30
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %738, label %34

34:                                               ; preds = %28
  %35 = icmp eq i32 %32, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %38 = load i32, ptr %37, align 8, !tbaa !29
  %39 = icmp eq i32 %38, 42
  br i1 %39, label %40, label %738

40:                                               ; preds = %36, %34
  %41 = getelementptr inbounds nuw i8, ptr %30, i64 180
  %42 = load i32, ptr %41, align 4, !tbaa !76
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %738

44:                                               ; preds = %40
  br i1 %35, label %45, label %49

45:                                               ; preds = %44
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %47 = load i64, ptr %46, align 8, !tbaa !60
  %48 = tail call i64 @adler32(i64 noundef %47, ptr noundef %1, i32 noundef %2) #10
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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

103:                                              ; preds = %337, %81
  %104 = load i64, ptr %88, align 8, !tbaa !62
  %105 = load i32, ptr %41, align 4, !tbaa !76
  %106 = zext i32 %105 to i64
  %107 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %104, i64 %106), !nosanitize !49
  %108 = extractvalue { i64, i1 } %107, 1, !nosanitize !49
  br i1 %108, label %109, label %110, !prof !50, !nosanitize !49

109:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

110:                                              ; preds = %103
  %111 = extractvalue { i64, i1 } %107, 0, !nosanitize !49
  %112 = load i32, ptr %89, align 4, !tbaa !74
  %113 = zext i32 %112 to i64
  %114 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %111, i64 %113), !nosanitize !49
  %115 = extractvalue { i64, i1 } %114, 1, !nosanitize !49
  br i1 %115, label %116, label %117, !prof !50, !nosanitize !49

116:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

117:                                              ; preds = %110
  %118 = extractvalue { i64, i1 } %114, 0, !nosanitize !49
  %119 = trunc i64 %118 to i32
  %120 = load i32, ptr %50, align 8, !tbaa !33
  %121 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %120, i32 262), !nosanitize !49
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !49
  br i1 %122, label %123, label %124, !prof !50, !nosanitize !49

123:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

124:                                              ; preds = %117
  %125 = extractvalue { i32, i1 } %121, 0, !nosanitize !49
  %126 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %87, i32 %125), !nosanitize !49
  %127 = extractvalue { i32, i1 } %126, 1, !nosanitize !49
  br i1 %127, label %128, label %129, !prof !50, !nosanitize !49

128:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

129:                                              ; preds = %124
  %130 = extractvalue { i32, i1 } %126, 0, !nosanitize !49
  %131 = icmp ult i32 %112, %130
  br i1 %131, label %203, label %132

132:                                              ; preds = %129
  %133 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %87, i32 %119), !nosanitize !49
  %134 = extractvalue { i32, i1 } %133, 1, !nosanitize !49
  br i1 %134, label %135, label %136, !prof !50, !nosanitize !49

135:                                              ; preds = %132
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

145:                                              ; preds = %136
  %146 = extractvalue { i32, i1 } %142, 0, !nosanitize !49
  store i32 %146, ptr %92, align 8, !tbaa !84
  %147 = load i32, ptr %89, align 4, !tbaa !74
  %148 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %147, i32 %87), !nosanitize !49
  %149 = extractvalue { i32, i1 } %148, 1, !nosanitize !49
  br i1 %149, label %150, label %151, !prof !50, !nosanitize !49

150:                                              ; preds = %151, %145
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

151:                                              ; preds = %145
  %152 = extractvalue { i32, i1 } %148, 0, !nosanitize !49
  store i32 %152, ptr %89, align 4, !tbaa !74
  %153 = load i64, ptr %93, align 8, !tbaa !75
  %154 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %153, i64 %90), !nosanitize !49
  %155 = extractvalue { i64, i1 } %154, 1, !nosanitize !49
  br i1 %155, label %150, label %156, !prof !50, !nosanitize !49

156:                                              ; preds = %151
  %157 = extractvalue { i64, i1 } %154, 0, !nosanitize !49
  store i64 %157, ptr %93, align 8, !tbaa !75
  %158 = load i32, ptr %94, align 4, !tbaa !77
  %159 = icmp ugt i32 %158, %152
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 %152, ptr %94, align 4, !tbaa !77
  br label %161

161:                                              ; preds = %160, %156
  %162 = load i32, ptr %50, align 8, !tbaa !33
  %163 = load i32, ptr %95, align 4, !tbaa !36
  %164 = load ptr, ptr %96, align 8, !tbaa !41
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds nuw [2 x i8], ptr %164, i64 %165
  %167 = icmp eq i32 %163, 0
  br label %168

168:                                              ; preds = %177, %161
  %169 = phi ptr [ %166, %161 ], [ %171, %177 ]
  %170 = phi i32 [ %163, %161 ], [ %178, %177 ]
  %171 = getelementptr inbounds i8, ptr %169, i64 -2
  %172 = load i16, ptr %171, align 2, !tbaa !63
  %173 = zext i16 %172 to i32
  %174 = tail call i32 @llvm.usub.sat.i32(i32 %173, i32 %162)
  %175 = trunc nuw i32 %174 to i16
  store i16 %175, ptr %171, align 2, !tbaa !63
  br i1 %167, label %176, label %177, !prof !50, !nosanitize !49

176:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

177:                                              ; preds = %168
  %178 = add i32 %170, -1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %168, !llvm.loop !85

180:                                              ; preds = %177
  %181 = load ptr, ptr %97, align 8, !tbaa !40
  %182 = zext i32 %162 to i64
  %183 = getelementptr inbounds nuw [2 x i8], ptr %181, i64 %182
  %184 = icmp eq i32 %162, 0
  br label %185

185:                                              ; preds = %194, %180
  %186 = phi ptr [ %183, %180 ], [ %188, %194 ]
  %187 = phi i32 [ %162, %180 ], [ %195, %194 ]
  %188 = getelementptr inbounds i8, ptr %186, i64 -2
  %189 = load i16, ptr %188, align 2, !tbaa !63
  %190 = zext i16 %189 to i32
  %191 = tail call i32 @llvm.usub.sat.i32(i32 %190, i32 %162)
  %192 = trunc nuw i32 %191 to i16
  store i16 %192, ptr %188, align 2, !tbaa !63
  br i1 %184, label %193, label %194, !prof !50, !nosanitize !49

193:                                              ; preds = %185
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

194:                                              ; preds = %185
  %195 = add i32 %187, -1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %185, !llvm.loop !88

197:                                              ; preds = %194
  store i32 1, ptr %98, align 8, !tbaa !64
  %198 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %119, i32 %87), !nosanitize !49
  %199 = extractvalue { i32, i1 } %198, 1, !nosanitize !49
  br i1 %199, label %200, label %201, !prof !50, !nosanitize !49

200:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

201:                                              ; preds = %197
  %202 = extractvalue { i32, i1 } %198, 0, !nosanitize !49
  br label %203

203:                                              ; preds = %201, %129
  %204 = phi i32 [ %202, %201 ], [ %119, %129 ]
  %205 = load ptr, ptr %30, align 8, !tbaa !20
  %206 = getelementptr inbounds nuw i8, ptr %205, i64 8
  %207 = load i32, ptr %206, align 8, !tbaa !82
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %342, label %209

209:                                              ; preds = %203
  %210 = load ptr, ptr %91, align 8, !tbaa !39
  %211 = load i32, ptr %89, align 4, !tbaa !74
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds nuw i8, ptr %210, i64 %212
  %214 = load i32, ptr %41, align 4, !tbaa !76
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 %215
  %217 = tail call i32 @llvm.umin.i32(i32 %207, i32 %204)
  %218 = icmp eq i32 %204, 0
  br i1 %218, label %249, label %219

219:                                              ; preds = %209
  %220 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %207, i32 %217), !nosanitize !49
  %221 = extractvalue { i32, i1 } %220, 1, !nosanitize !49
  br i1 %221, label %222, label %223, !prof !50, !nosanitize !49

222:                                              ; preds = %219
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

223:                                              ; preds = %219
  %224 = extractvalue { i32, i1 } %220, 0, !nosanitize !49
  store i32 %224, ptr %206, align 8, !tbaa !82
  %225 = load ptr, ptr %205, align 8, !tbaa !83
  %226 = zext i32 %217 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %216, ptr align 1 %225, i64 %226, i1 false)
  %227 = getelementptr inbounds nuw i8, ptr %205, i64 56
  %228 = load ptr, ptr %227, align 8, !tbaa !19
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 48
  %230 = load i32, ptr %229, align 8, !tbaa !30
  switch i32 %230, label %239 [
    i32 1, label %231
    i32 2, label %235
  ]

231:                                              ; preds = %223
  %232 = getelementptr inbounds nuw i8, ptr %205, i64 96
  %233 = load i64, ptr %232, align 8, !tbaa !60
  %234 = tail call i64 @adler32(i64 noundef %233, ptr noundef %216, i32 noundef %217) #10
  store i64 %234, ptr %232, align 8, !tbaa !60
  br label %239

235:                                              ; preds = %223
  %236 = getelementptr inbounds nuw i8, ptr %205, i64 96
  %237 = load i64, ptr %236, align 8, !tbaa !60
  %238 = tail call i64 @crc32(i64 noundef %237, ptr noundef %216, i32 noundef %217) #10
  store i64 %238, ptr %236, align 8, !tbaa !60
  br label %239

239:                                              ; preds = %235, %231, %223
  %240 = load ptr, ptr %205, align 8, !tbaa !83
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 %226
  store ptr %241, ptr %205, align 8, !tbaa !83
  %242 = getelementptr inbounds nuw i8, ptr %205, i64 16
  %243 = load i64, ptr %242, align 8, !tbaa !56
  %244 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %243, i64 %226), !nosanitize !49
  %245 = extractvalue { i64, i1 } %244, 1, !nosanitize !49
  br i1 %245, label %246, label %247, !prof !50, !nosanitize !49

246:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

247:                                              ; preds = %239
  %248 = extractvalue { i64, i1 } %244, 0, !nosanitize !49
  store i64 %248, ptr %242, align 8, !tbaa !56
  br label %249

249:                                              ; preds = %247, %209
  %250 = phi i32 [ %217, %247 ], [ 0, %209 ]
  %251 = load i32, ptr %41, align 4, !tbaa !76
  %252 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %251, i32 %250), !nosanitize !49
  %253 = extractvalue { i32, i1 } %252, 1, !nosanitize !49
  br i1 %253, label %254, label %255, !prof !50, !nosanitize !49

254:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

255:                                              ; preds = %249
  %256 = extractvalue { i32, i1 } %252, 0, !nosanitize !49
  store i32 %256, ptr %41, align 4, !tbaa !76
  %257 = load i32, ptr %94, align 4, !tbaa !77
  %258 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %256, i32 %257), !nosanitize !49
  %259 = extractvalue { i32, i1 } %258, 1, !nosanitize !49
  br i1 %259, label %260, label %261, !prof !50, !nosanitize !49

260:                                              ; preds = %255
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

261:                                              ; preds = %255
  %262 = extractvalue { i32, i1 } %258, 0, !nosanitize !49
  %263 = icmp ugt i32 %262, 2
  br i1 %263, label %264, label %335

264:                                              ; preds = %261
  %265 = load i32, ptr %89, align 4, !tbaa !74
  %266 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %265, i32 %257), !nosanitize !49
  %267 = extractvalue { i32, i1 } %266, 0, !nosanitize !49
  %268 = extractvalue { i32, i1 } %266, 1, !nosanitize !49
  br i1 %268, label %269, label %270, !prof !50, !nosanitize !49

269:                                              ; preds = %264
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

270:                                              ; preds = %264
  %271 = load ptr, ptr %91, align 8, !tbaa !39
  %272 = zext i32 %267 to i64
  %273 = getelementptr inbounds nuw i8, ptr %271, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !8
  %275 = zext i8 %274 to i32
  store i32 %275, ptr %99, align 8, !tbaa !81
  %276 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %267, i32 1), !nosanitize !49
  %277 = extractvalue { i32, i1 } %276, 1, !nosanitize !49
  br i1 %277, label %278, label %279, !prof !50, !nosanitize !49

278:                                              ; preds = %270
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

279:                                              ; preds = %270
  %280 = extractvalue { i32, i1 } %276, 0, !nosanitize !49
  %281 = load i32, ptr %100, align 8, !tbaa !38
  %282 = shl i32 %275, %281
  %283 = zext i32 %280 to i64
  %284 = getelementptr inbounds nuw i8, ptr %271, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !8
  %286 = zext i8 %285 to i32
  %287 = xor i32 %282, %286
  %288 = load i32, ptr %101, align 4, !tbaa !37
  %289 = and i32 %287, %288
  store i32 %289, ptr %99, align 8, !tbaa !81
  br label %290

290:                                              ; preds = %332, %279
  %291 = phi i32 [ %257, %279 ], [ %328, %332 ]
  %292 = phi i32 [ %267, %279 ], [ %324, %332 ]
  %293 = icmp eq i32 %291, 0
  br i1 %293, label %335, label %294

294:                                              ; preds = %290
  %295 = load i32, ptr %99, align 8, !tbaa !81
  %296 = shl i32 %295, %281
  %297 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %292, i32 3), !nosanitize !49
  %298 = extractvalue { i32, i1 } %297, 1, !nosanitize !49
  br i1 %298, label %299, label %300, !prof !50, !nosanitize !49

299:                                              ; preds = %294
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

300:                                              ; preds = %294
  %301 = extractvalue { i32, i1 } %297, 0, !nosanitize !49
  %302 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %301, i32 1), !nosanitize !49
  %303 = extractvalue { i32, i1 } %302, 1, !nosanitize !49
  br i1 %303, label %304, label %305, !prof !50, !nosanitize !49

304:                                              ; preds = %300
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

305:                                              ; preds = %300
  %306 = extractvalue { i32, i1 } %302, 0, !nosanitize !49
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds nuw i8, ptr %271, i64 %307
  %309 = load i8, ptr %308, align 1, !tbaa !8
  %310 = zext i8 %309 to i32
  %311 = xor i32 %296, %310
  %312 = and i32 %311, %288
  store i32 %312, ptr %99, align 8, !tbaa !81
  %313 = load ptr, ptr %96, align 8, !tbaa !41
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds nuw [2 x i8], ptr %313, i64 %314
  %316 = load i16, ptr %315, align 2, !tbaa !63
  %317 = load ptr, ptr %97, align 8, !tbaa !40
  %318 = load i32, ptr %102, align 8, !tbaa !34
  %319 = and i32 %318, %292
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds nuw [2 x i8], ptr %317, i64 %320
  store i16 %316, ptr %321, align 2, !tbaa !63
  %322 = trunc i32 %292 to i16
  store i16 %322, ptr %315, align 2, !tbaa !63
  %323 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %292, i32 1), !nosanitize !49
  %324 = extractvalue { i32, i1 } %323, 0, !nosanitize !49
  %325 = extractvalue { i32, i1 } %323, 1, !nosanitize !49
  br i1 %325, label %326, label %327, !prof !50, !nosanitize !49

326:                                              ; preds = %305
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

327:                                              ; preds = %305
  %328 = add i32 %291, -1
  store i32 %328, ptr %94, align 4, !tbaa !77
  %329 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %256, i32 %328), !nosanitize !49
  %330 = extractvalue { i32, i1 } %329, 1, !nosanitize !49
  br i1 %330, label %331, label %332, !prof !50, !nosanitize !49

331:                                              ; preds = %327
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

332:                                              ; preds = %327
  %333 = extractvalue { i32, i1 } %329, 0, !nosanitize !49
  %334 = icmp ult i32 %333, 3
  br i1 %334, label %335, label %290, !llvm.loop !89

335:                                              ; preds = %332, %290, %261
  %336 = icmp ult i32 %256, 262
  br i1 %336, label %337, label %342

337:                                              ; preds = %335
  %338 = load ptr, ptr %30, align 8, !tbaa !20
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 8
  %340 = load i32, ptr %339, align 8, !tbaa !82
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %103, !llvm.loop !90

342:                                              ; preds = %337, %335, %203
  %343 = getelementptr inbounds nuw i8, ptr %30, i64 5952
  %344 = load i64, ptr %343, align 8, !tbaa !42
  %345 = load i64, ptr %88, align 8, !tbaa !62
  %346 = icmp ult i64 %344, %345
  br i1 %346, label %347, label %386

347:                                              ; preds = %342
  %348 = load i32, ptr %89, align 4, !tbaa !74
  %349 = zext i32 %348 to i64
  %350 = load i32, ptr %41, align 4, !tbaa !76
  %351 = zext i32 %350 to i64
  %352 = add nuw nsw i64 %351, %349
  %353 = icmp ult i64 %344, %352
  br i1 %353, label %354, label %364

354:                                              ; preds = %347
  %355 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %345, i64 %352), !nosanitize !49
  %356 = extractvalue { i64, i1 } %355, 1, !nosanitize !49
  br i1 %356, label %357, label %358, !prof !50, !nosanitize !49

357:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

358:                                              ; preds = %354
  %359 = extractvalue { i64, i1 } %355, 0, !nosanitize !49
  %360 = tail call i64 @llvm.umin.i64(i64 %359, i64 258)
  %361 = load ptr, ptr %91, align 8, !tbaa !39
  %362 = getelementptr inbounds nuw i8, ptr %361, i64 %352
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %362, i8 0, i64 %360, i1 false)
  %363 = add nuw nsw i64 %360, %352
  br label %384

364:                                              ; preds = %347
  %365 = add nuw nsw i64 %352, 258
  %366 = icmp ult i64 %344, %365
  br i1 %366, label %367, label %386

367:                                              ; preds = %364
  %368 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %345, i64 %344), !nosanitize !49
  %369 = extractvalue { i64, i1 } %368, 1, !nosanitize !49
  br i1 %369, label %370, label %371, !prof !50, !nosanitize !49

370:                                              ; preds = %367
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

371:                                              ; preds = %367
  %372 = sub nuw nsw i64 %365, %344
  %373 = extractvalue { i64, i1 } %368, 0, !nosanitize !49
  %374 = tail call i64 @llvm.umin.i64(i64 %372, i64 %373)
  %375 = load ptr, ptr %91, align 8, !tbaa !39
  %376 = getelementptr inbounds nuw i8, ptr %375, i64 %344
  %377 = and i64 %374, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %376, i8 0, i64 %377, i1 false)
  %378 = load i64, ptr %343, align 8, !tbaa !42
  %379 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %378, i64 %374), !nosanitize !49
  %380 = extractvalue { i64, i1 } %379, 1, !nosanitize !49
  br i1 %380, label %381, label %382, !prof !50, !nosanitize !49

381:                                              ; preds = %371
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

382:                                              ; preds = %371
  %383 = extractvalue { i64, i1 } %379, 0, !nosanitize !49
  br label %384

384:                                              ; preds = %382, %358
  %385 = phi i64 [ %363, %358 ], [ %383, %382 ]
  store i64 %385, ptr %343, align 8, !tbaa !42
  br label %386

386:                                              ; preds = %384, %364, %342
  %387 = load i32, ptr %41, align 4, !tbaa !76
  %388 = icmp ugt i32 %387, 2
  br i1 %388, label %389, label %726

389:                                              ; preds = %723, %386
  %390 = phi i32 [ %724, %723 ], [ %387, %386 ]
  %391 = add i32 %390, -2
  %392 = load i32, ptr %89, align 4, !tbaa !74
  %393 = load i32, ptr %100, align 8, !tbaa !38
  %394 = load ptr, ptr %91, align 8, !tbaa !39
  %395 = load i32, ptr %99, align 8, !tbaa !81
  %396 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %392)
  %397 = xor i32 %392, -1
  %398 = tail call i32 @llvm.umin.i32(i32 %396, i32 %397)
  %399 = add i32 %390, -3
  %400 = tail call i32 @llvm.umin.i32(i32 %398, i32 %399)
  %401 = sub i32 -3, %392
  %402 = tail call i32 @llvm.umin.i32(i32 %400, i32 %401)
  %403 = icmp eq i32 %396, %402
  %404 = icmp ugt i32 %401, %400
  %405 = icmp eq i32 %402, %397
  br label %406

406:                                              ; preds = %434, %389
  %407 = phi i32 [ %395, %389 ], [ %422, %434 ]
  %408 = phi i32 [ %392, %389 ], [ %435, %434 ]
  %409 = phi i32 [ %391, %389 ], [ %436, %434 ]
  %410 = shl i32 %407, %393
  br i1 %403, label %411, label %412, !prof !50, !nosanitize !49

411:                                              ; preds = %406
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

412:                                              ; preds = %406
  br i1 %404, label %414, label %413, !prof !91, !nosanitize !49

413:                                              ; preds = %412
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

414:                                              ; preds = %412
  %415 = add i32 %408, 2
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds nuw i8, ptr %394, i64 %416
  %418 = load i8, ptr %417, align 1, !tbaa !8
  %419 = zext i8 %418 to i32
  %420 = xor i32 %410, %419
  %421 = load i32, ptr %101, align 4, !tbaa !37
  %422 = and i32 %420, %421
  store i32 %422, ptr %99, align 8, !tbaa !81
  %423 = load ptr, ptr %96, align 8, !tbaa !41
  %424 = zext i32 %422 to i64
  %425 = getelementptr inbounds nuw [2 x i8], ptr %423, i64 %424
  %426 = load i16, ptr %425, align 2, !tbaa !63
  %427 = load ptr, ptr %97, align 8, !tbaa !40
  %428 = load i32, ptr %102, align 8, !tbaa !34
  %429 = and i32 %428, %408
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds nuw [2 x i8], ptr %427, i64 %430
  store i16 %426, ptr %431, align 2, !tbaa !63
  %432 = trunc i32 %408 to i16
  store i16 %432, ptr %425, align 2, !tbaa !63
  br i1 %405, label %433, label %434, !prof !50, !nosanitize !49

433:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

434:                                              ; preds = %414
  %435 = add i32 %408, 1
  %436 = add i32 %409, -1
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %406, !llvm.loop !92

438:                                              ; preds = %434
  store i32 %435, ptr %89, align 4, !tbaa !74
  store i32 2, ptr %41, align 4, !tbaa !76
  %439 = load i32, ptr %50, align 8, !tbaa !33
  %440 = zext i32 %439 to i64
  br label %441

441:                                              ; preds = %675, %438
  %442 = load i64, ptr %88, align 8, !tbaa !62
  %443 = load i32, ptr %41, align 4, !tbaa !76
  %444 = zext i32 %443 to i64
  %445 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %442, i64 %444), !nosanitize !49
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !49
  br i1 %446, label %447, label %448, !prof !50, !nosanitize !49

447:                                              ; preds = %441
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

448:                                              ; preds = %441
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !49
  %450 = load i32, ptr %89, align 4, !tbaa !74
  %451 = zext i32 %450 to i64
  %452 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %449, i64 %451), !nosanitize !49
  %453 = extractvalue { i64, i1 } %452, 1, !nosanitize !49
  br i1 %453, label %454, label %455, !prof !50, !nosanitize !49

454:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

455:                                              ; preds = %448
  %456 = extractvalue { i64, i1 } %452, 0, !nosanitize !49
  %457 = trunc i64 %456 to i32
  %458 = load i32, ptr %50, align 8, !tbaa !33
  %459 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %458, i32 262), !nosanitize !49
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !49
  br i1 %460, label %461, label %462, !prof !50, !nosanitize !49

461:                                              ; preds = %455
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

462:                                              ; preds = %455
  %463 = extractvalue { i32, i1 } %459, 0, !nosanitize !49
  %464 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %439, i32 %463), !nosanitize !49
  %465 = extractvalue { i32, i1 } %464, 1, !nosanitize !49
  br i1 %465, label %466, label %467, !prof !50, !nosanitize !49

466:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

467:                                              ; preds = %462
  %468 = extractvalue { i32, i1 } %464, 0, !nosanitize !49
  %469 = icmp ult i32 %450, %468
  br i1 %469, label %541, label %470

470:                                              ; preds = %467
  %471 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %439, i32 %457), !nosanitize !49
  %472 = extractvalue { i32, i1 } %471, 1, !nosanitize !49
  br i1 %472, label %473, label %474, !prof !50, !nosanitize !49

473:                                              ; preds = %470
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

474:                                              ; preds = %470
  %475 = extractvalue { i32, i1 } %471, 0, !nosanitize !49
  %476 = load ptr, ptr %91, align 8, !tbaa !39
  %477 = getelementptr inbounds nuw i8, ptr %476, i64 %440
  %478 = zext i32 %475 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %476, ptr align 1 %477, i64 %478, i1 false)
  %479 = load i32, ptr %92, align 8, !tbaa !84
  %480 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %479, i32 %439), !nosanitize !49
  %481 = extractvalue { i32, i1 } %480, 1, !nosanitize !49
  br i1 %481, label %482, label %483, !prof !50, !nosanitize !49

482:                                              ; preds = %474
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

483:                                              ; preds = %474
  %484 = extractvalue { i32, i1 } %480, 0, !nosanitize !49
  store i32 %484, ptr %92, align 8, !tbaa !84
  %485 = load i32, ptr %89, align 4, !tbaa !74
  %486 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %485, i32 %439), !nosanitize !49
  %487 = extractvalue { i32, i1 } %486, 1, !nosanitize !49
  br i1 %487, label %488, label %489, !prof !50, !nosanitize !49

488:                                              ; preds = %489, %483
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

489:                                              ; preds = %483
  %490 = extractvalue { i32, i1 } %486, 0, !nosanitize !49
  store i32 %490, ptr %89, align 4, !tbaa !74
  %491 = load i64, ptr %93, align 8, !tbaa !75
  %492 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %491, i64 %440), !nosanitize !49
  %493 = extractvalue { i64, i1 } %492, 1, !nosanitize !49
  br i1 %493, label %488, label %494, !prof !50, !nosanitize !49

494:                                              ; preds = %489
  %495 = extractvalue { i64, i1 } %492, 0, !nosanitize !49
  store i64 %495, ptr %93, align 8, !tbaa !75
  %496 = load i32, ptr %94, align 4, !tbaa !77
  %497 = icmp ugt i32 %496, %490
  br i1 %497, label %498, label %499

498:                                              ; preds = %494
  store i32 %490, ptr %94, align 4, !tbaa !77
  br label %499

499:                                              ; preds = %498, %494
  %500 = load i32, ptr %50, align 8, !tbaa !33
  %501 = load i32, ptr %95, align 4, !tbaa !36
  %502 = load ptr, ptr %96, align 8, !tbaa !41
  %503 = zext i32 %501 to i64
  %504 = getelementptr inbounds nuw [2 x i8], ptr %502, i64 %503
  %505 = icmp eq i32 %501, 0
  br label %506

506:                                              ; preds = %515, %499
  %507 = phi ptr [ %504, %499 ], [ %509, %515 ]
  %508 = phi i32 [ %501, %499 ], [ %516, %515 ]
  %509 = getelementptr inbounds i8, ptr %507, i64 -2
  %510 = load i16, ptr %509, align 2, !tbaa !63
  %511 = zext i16 %510 to i32
  %512 = tail call i32 @llvm.usub.sat.i32(i32 %511, i32 %500)
  %513 = trunc nuw i32 %512 to i16
  store i16 %513, ptr %509, align 2, !tbaa !63
  br i1 %505, label %514, label %515, !prof !50, !nosanitize !49

514:                                              ; preds = %506
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

515:                                              ; preds = %506
  %516 = add i32 %508, -1
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %506, !llvm.loop !85

518:                                              ; preds = %515
  %519 = load ptr, ptr %97, align 8, !tbaa !40
  %520 = zext i32 %500 to i64
  %521 = getelementptr inbounds nuw [2 x i8], ptr %519, i64 %520
  %522 = icmp eq i32 %500, 0
  br label %523

523:                                              ; preds = %532, %518
  %524 = phi ptr [ %521, %518 ], [ %526, %532 ]
  %525 = phi i32 [ %500, %518 ], [ %533, %532 ]
  %526 = getelementptr inbounds i8, ptr %524, i64 -2
  %527 = load i16, ptr %526, align 2, !tbaa !63
  %528 = zext i16 %527 to i32
  %529 = tail call i32 @llvm.usub.sat.i32(i32 %528, i32 %500)
  %530 = trunc nuw i32 %529 to i16
  store i16 %530, ptr %526, align 2, !tbaa !63
  br i1 %522, label %531, label %532, !prof !50, !nosanitize !49

531:                                              ; preds = %523
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

532:                                              ; preds = %523
  %533 = add i32 %525, -1
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %523, !llvm.loop !88

535:                                              ; preds = %532
  store i32 1, ptr %98, align 8, !tbaa !64
  %536 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %457, i32 %439), !nosanitize !49
  %537 = extractvalue { i32, i1 } %536, 1, !nosanitize !49
  br i1 %537, label %538, label %539, !prof !50, !nosanitize !49

538:                                              ; preds = %535
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

539:                                              ; preds = %535
  %540 = extractvalue { i32, i1 } %536, 0, !nosanitize !49
  br label %541

541:                                              ; preds = %539, %467
  %542 = phi i32 [ %540, %539 ], [ %457, %467 ]
  %543 = load ptr, ptr %30, align 8, !tbaa !20
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 8
  %545 = load i32, ptr %544, align 8, !tbaa !82
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %680, label %547

547:                                              ; preds = %541
  %548 = load ptr, ptr %91, align 8, !tbaa !39
  %549 = load i32, ptr %89, align 4, !tbaa !74
  %550 = zext i32 %549 to i64
  %551 = getelementptr inbounds nuw i8, ptr %548, i64 %550
  %552 = load i32, ptr %41, align 4, !tbaa !76
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds nuw i8, ptr %551, i64 %553
  %555 = tail call i32 @llvm.umin.i32(i32 %545, i32 %542)
  %556 = icmp eq i32 %542, 0
  br i1 %556, label %587, label %557

557:                                              ; preds = %547
  %558 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %545, i32 %555), !nosanitize !49
  %559 = extractvalue { i32, i1 } %558, 1, !nosanitize !49
  br i1 %559, label %560, label %561, !prof !50, !nosanitize !49

560:                                              ; preds = %557
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

561:                                              ; preds = %557
  %562 = extractvalue { i32, i1 } %558, 0, !nosanitize !49
  store i32 %562, ptr %544, align 8, !tbaa !82
  %563 = load ptr, ptr %543, align 8, !tbaa !83
  %564 = zext i32 %555 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %554, ptr align 1 %563, i64 %564, i1 false)
  %565 = getelementptr inbounds nuw i8, ptr %543, i64 56
  %566 = load ptr, ptr %565, align 8, !tbaa !19
  %567 = getelementptr inbounds nuw i8, ptr %566, i64 48
  %568 = load i32, ptr %567, align 8, !tbaa !30
  switch i32 %568, label %577 [
    i32 1, label %569
    i32 2, label %573
  ]

569:                                              ; preds = %561
  %570 = getelementptr inbounds nuw i8, ptr %543, i64 96
  %571 = load i64, ptr %570, align 8, !tbaa !60
  %572 = tail call i64 @adler32(i64 noundef %571, ptr noundef %554, i32 noundef %555) #10
  store i64 %572, ptr %570, align 8, !tbaa !60
  br label %577

573:                                              ; preds = %561
  %574 = getelementptr inbounds nuw i8, ptr %543, i64 96
  %575 = load i64, ptr %574, align 8, !tbaa !60
  %576 = tail call i64 @crc32(i64 noundef %575, ptr noundef %554, i32 noundef %555) #10
  store i64 %576, ptr %574, align 8, !tbaa !60
  br label %577

577:                                              ; preds = %573, %569, %561
  %578 = load ptr, ptr %543, align 8, !tbaa !83
  %579 = getelementptr inbounds nuw i8, ptr %578, i64 %564
  store ptr %579, ptr %543, align 8, !tbaa !83
  %580 = getelementptr inbounds nuw i8, ptr %543, i64 16
  %581 = load i64, ptr %580, align 8, !tbaa !56
  %582 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %581, i64 %564), !nosanitize !49
  %583 = extractvalue { i64, i1 } %582, 1, !nosanitize !49
  br i1 %583, label %584, label %585, !prof !50, !nosanitize !49

584:                                              ; preds = %577
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

585:                                              ; preds = %577
  %586 = extractvalue { i64, i1 } %582, 0, !nosanitize !49
  store i64 %586, ptr %580, align 8, !tbaa !56
  br label %587

587:                                              ; preds = %585, %547
  %588 = phi i32 [ %555, %585 ], [ 0, %547 ]
  %589 = load i32, ptr %41, align 4, !tbaa !76
  %590 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %589, i32 %588), !nosanitize !49
  %591 = extractvalue { i32, i1 } %590, 1, !nosanitize !49
  br i1 %591, label %592, label %593, !prof !50, !nosanitize !49

592:                                              ; preds = %587
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

593:                                              ; preds = %587
  %594 = extractvalue { i32, i1 } %590, 0, !nosanitize !49
  store i32 %594, ptr %41, align 4, !tbaa !76
  %595 = load i32, ptr %94, align 4, !tbaa !77
  %596 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %594, i32 %595), !nosanitize !49
  %597 = extractvalue { i32, i1 } %596, 1, !nosanitize !49
  br i1 %597, label %598, label %599, !prof !50, !nosanitize !49

598:                                              ; preds = %593
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

599:                                              ; preds = %593
  %600 = extractvalue { i32, i1 } %596, 0, !nosanitize !49
  %601 = icmp ugt i32 %600, 2
  br i1 %601, label %602, label %673

602:                                              ; preds = %599
  %603 = load i32, ptr %89, align 4, !tbaa !74
  %604 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %603, i32 %595), !nosanitize !49
  %605 = extractvalue { i32, i1 } %604, 0, !nosanitize !49
  %606 = extractvalue { i32, i1 } %604, 1, !nosanitize !49
  br i1 %606, label %607, label %608, !prof !50, !nosanitize !49

607:                                              ; preds = %602
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

608:                                              ; preds = %602
  %609 = load ptr, ptr %91, align 8, !tbaa !39
  %610 = zext i32 %605 to i64
  %611 = getelementptr inbounds nuw i8, ptr %609, i64 %610
  %612 = load i8, ptr %611, align 1, !tbaa !8
  %613 = zext i8 %612 to i32
  store i32 %613, ptr %99, align 8, !tbaa !81
  %614 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %605, i32 1), !nosanitize !49
  %615 = extractvalue { i32, i1 } %614, 1, !nosanitize !49
  br i1 %615, label %616, label %617, !prof !50, !nosanitize !49

616:                                              ; preds = %608
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

617:                                              ; preds = %608
  %618 = extractvalue { i32, i1 } %614, 0, !nosanitize !49
  %619 = load i32, ptr %100, align 8, !tbaa !38
  %620 = shl i32 %613, %619
  %621 = zext i32 %618 to i64
  %622 = getelementptr inbounds nuw i8, ptr %609, i64 %621
  %623 = load i8, ptr %622, align 1, !tbaa !8
  %624 = zext i8 %623 to i32
  %625 = xor i32 %620, %624
  %626 = load i32, ptr %101, align 4, !tbaa !37
  %627 = and i32 %625, %626
  store i32 %627, ptr %99, align 8, !tbaa !81
  br label %628

628:                                              ; preds = %670, %617
  %629 = phi i32 [ %595, %617 ], [ %666, %670 ]
  %630 = phi i32 [ %605, %617 ], [ %662, %670 ]
  %631 = icmp eq i32 %629, 0
  br i1 %631, label %673, label %632

632:                                              ; preds = %628
  %633 = load i32, ptr %99, align 8, !tbaa !81
  %634 = shl i32 %633, %619
  %635 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %630, i32 3), !nosanitize !49
  %636 = extractvalue { i32, i1 } %635, 1, !nosanitize !49
  br i1 %636, label %637, label %638, !prof !50, !nosanitize !49

637:                                              ; preds = %632
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

638:                                              ; preds = %632
  %639 = extractvalue { i32, i1 } %635, 0, !nosanitize !49
  %640 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %639, i32 1), !nosanitize !49
  %641 = extractvalue { i32, i1 } %640, 1, !nosanitize !49
  br i1 %641, label %642, label %643, !prof !50, !nosanitize !49

642:                                              ; preds = %638
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

643:                                              ; preds = %638
  %644 = extractvalue { i32, i1 } %640, 0, !nosanitize !49
  %645 = zext i32 %644 to i64
  %646 = getelementptr inbounds nuw i8, ptr %609, i64 %645
  %647 = load i8, ptr %646, align 1, !tbaa !8
  %648 = zext i8 %647 to i32
  %649 = xor i32 %634, %648
  %650 = and i32 %649, %626
  store i32 %650, ptr %99, align 8, !tbaa !81
  %651 = load ptr, ptr %96, align 8, !tbaa !41
  %652 = zext i32 %650 to i64
  %653 = getelementptr inbounds nuw [2 x i8], ptr %651, i64 %652
  %654 = load i16, ptr %653, align 2, !tbaa !63
  %655 = load ptr, ptr %97, align 8, !tbaa !40
  %656 = load i32, ptr %102, align 8, !tbaa !34
  %657 = and i32 %656, %630
  %658 = zext i32 %657 to i64
  %659 = getelementptr inbounds nuw [2 x i8], ptr %655, i64 %658
  store i16 %654, ptr %659, align 2, !tbaa !63
  %660 = trunc i32 %630 to i16
  store i16 %660, ptr %653, align 2, !tbaa !63
  %661 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %630, i32 1), !nosanitize !49
  %662 = extractvalue { i32, i1 } %661, 0, !nosanitize !49
  %663 = extractvalue { i32, i1 } %661, 1, !nosanitize !49
  br i1 %663, label %664, label %665, !prof !50, !nosanitize !49

664:                                              ; preds = %643
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

665:                                              ; preds = %643
  %666 = add i32 %629, -1
  store i32 %666, ptr %94, align 4, !tbaa !77
  %667 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %594, i32 %666), !nosanitize !49
  %668 = extractvalue { i32, i1 } %667, 1, !nosanitize !49
  br i1 %668, label %669, label %670, !prof !50, !nosanitize !49

669:                                              ; preds = %665
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

670:                                              ; preds = %665
  %671 = extractvalue { i32, i1 } %667, 0, !nosanitize !49
  %672 = icmp ult i32 %671, 3
  br i1 %672, label %673, label %628, !llvm.loop !89

673:                                              ; preds = %670, %628, %599
  %674 = icmp ult i32 %594, 262
  br i1 %674, label %675, label %680

675:                                              ; preds = %673
  %676 = load ptr, ptr %30, align 8, !tbaa !20
  %677 = getelementptr inbounds nuw i8, ptr %676, i64 8
  %678 = load i32, ptr %677, align 8, !tbaa !82
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %441, !llvm.loop !90

680:                                              ; preds = %675, %673, %541
  %681 = load i64, ptr %343, align 8, !tbaa !42
  %682 = load i64, ptr %88, align 8, !tbaa !62
  %683 = icmp ult i64 %681, %682
  br i1 %683, label %684, label %723

684:                                              ; preds = %680
  %685 = load i32, ptr %89, align 4, !tbaa !74
  %686 = zext i32 %685 to i64
  %687 = load i32, ptr %41, align 4, !tbaa !76
  %688 = zext i32 %687 to i64
  %689 = add nuw nsw i64 %688, %686
  %690 = icmp ult i64 %681, %689
  br i1 %690, label %691, label %701

691:                                              ; preds = %684
  %692 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %682, i64 %689), !nosanitize !49
  %693 = extractvalue { i64, i1 } %692, 1, !nosanitize !49
  br i1 %693, label %694, label %695, !prof !50, !nosanitize !49

694:                                              ; preds = %691
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

695:                                              ; preds = %691
  %696 = extractvalue { i64, i1 } %692, 0, !nosanitize !49
  %697 = tail call i64 @llvm.umin.i64(i64 %696, i64 258)
  %698 = load ptr, ptr %91, align 8, !tbaa !39
  %699 = getelementptr inbounds nuw i8, ptr %698, i64 %689
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %699, i8 0, i64 %697, i1 false)
  %700 = add nuw nsw i64 %697, %689
  br label %721

701:                                              ; preds = %684
  %702 = add nuw nsw i64 %689, 258
  %703 = icmp ult i64 %681, %702
  br i1 %703, label %704, label %723

704:                                              ; preds = %701
  %705 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %682, i64 %681), !nosanitize !49
  %706 = extractvalue { i64, i1 } %705, 1, !nosanitize !49
  br i1 %706, label %707, label %708, !prof !50, !nosanitize !49

707:                                              ; preds = %704
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

708:                                              ; preds = %704
  %709 = sub nuw nsw i64 %702, %681
  %710 = extractvalue { i64, i1 } %705, 0, !nosanitize !49
  %711 = tail call i64 @llvm.umin.i64(i64 %709, i64 %710)
  %712 = load ptr, ptr %91, align 8, !tbaa !39
  %713 = getelementptr inbounds nuw i8, ptr %712, i64 %681
  %714 = and i64 %711, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %713, i8 0, i64 %714, i1 false)
  %715 = load i64, ptr %343, align 8, !tbaa !42
  %716 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %715, i64 %711), !nosanitize !49
  %717 = extractvalue { i64, i1 } %716, 1, !nosanitize !49
  br i1 %717, label %718, label %719, !prof !50, !nosanitize !49

718:                                              ; preds = %708
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

719:                                              ; preds = %708
  %720 = extractvalue { i64, i1 } %716, 0, !nosanitize !49
  br label %721

721:                                              ; preds = %719, %695
  %722 = phi i64 [ %700, %695 ], [ %720, %719 ]
  store i64 %722, ptr %343, align 8, !tbaa !42
  br label %723

723:                                              ; preds = %721, %701, %680
  %724 = load i32, ptr %41, align 4, !tbaa !76
  %725 = icmp ugt i32 %724, 2
  br i1 %725, label %389, label %726, !llvm.loop !93

726:                                              ; preds = %723, %386
  %727 = phi i32 [ %387, %386 ], [ %724, %723 ]
  %728 = load i32, ptr %89, align 4, !tbaa !74
  %729 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %728, i32 %727), !nosanitize !49
  %730 = extractvalue { i32, i1 } %729, 1, !nosanitize !49
  br i1 %730, label %731, label %732, !prof !50, !nosanitize !49

731:                                              ; preds = %726
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

732:                                              ; preds = %726
  %733 = extractvalue { i32, i1 } %729, 0, !nosanitize !49
  store i32 %733, ptr %89, align 4, !tbaa !74
  %734 = zext i32 %733 to i64
  store i64 %734, ptr %93, align 8, !tbaa !75
  store i32 %727, ptr %94, align 4, !tbaa !77
  store i32 0, ptr %41, align 4, !tbaa !76
  %735 = getelementptr inbounds nuw i8, ptr %30, i64 184
  store i32 2, ptr %735, align 8, !tbaa !78
  %736 = getelementptr inbounds nuw i8, ptr %30, i64 160
  store i32 2, ptr %736, align 8, !tbaa !79
  %737 = getelementptr inbounds nuw i8, ptr %30, i64 168
  store i32 0, ptr %737, align 8, !tbaa !80
  store ptr %86, ptr %0, align 8, !tbaa !83
  store i32 %85, ptr %84, align 8, !tbaa !82
  store i32 %32, ptr %31, align 8, !tbaa !30
  br label %738

738:                                              ; preds = %732, %40, %36, %28, %24
  %739 = phi i32 [ 0, %732 ], [ -2, %24 ], [ -2, %40 ], [ -2, %36 ], [ -2, %28 ]
  ret i32 %739
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
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

54:                                               ; preds = %53, %51, %20, %17, %13, %9, %5, %3
  %55 = phi i32 [ 0, %51 ], [ 0, %53 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ -2, %20 ]
  ret i32 %55
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @deflateResetKeep(ptr noundef captures(address) %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %53, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %53, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !20
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %20 = load i32, ptr %19, align 8, !tbaa !29
  switch i32 %20, label %53 [
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
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %32), !nosanitize !49
  %36 = extractvalue { i32, i1 } %35, 1, !nosanitize !49
  br i1 %36, label %37, label %38, !prof !50, !nosanitize !49

37:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !49
  unreachable, !nosanitize !49

38:                                               ; preds = %34
  %39 = extractvalue { i32, i1 } %35, 0, !nosanitize !49
  store i32 %39, ptr %31, align 8, !tbaa !30
  br label %40

40:                                               ; preds = %38, %21
  %41 = load i32, ptr %31, align 8, !tbaa !30
  %42 = icmp eq i32 %41, 2
  %43 = select i1 %42, i32 57, i32 42
  %44 = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i32 %43, ptr %44, align 8, !tbaa !29
  br i1 %42, label %45, label %47

45:                                               ; preds = %40
  %46 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %49

47:                                               ; preds = %40
  %48 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %50, ptr %51, align 8, !tbaa !60
  %52 = getelementptr inbounds nuw i8, ptr %26, i64 76
  store i32 -2, ptr %52, align 4, !tbaa !61
  tail call void @_tr_init(ptr noundef %26) #10
  br label %53

53:                                               ; preds = %49, %18, %15, %11, %7, %3, %1
  %54 = phi i32 [ 0, %49 ], [ -2, %1 ], [ -2, %3 ], [ -2, %7 ], [ -2, %11 ], [ -2, %15 ], [ -2, %18 ]
  ret i32 %54
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

30:                                               ; preds = %28, %22, %19, %16, %12, %8, %4, %2
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

41:                                               ; preds = %32, %30, %20, %17, %13, %9, %5, %3
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

29:                                               ; preds = %24, %22, %19, %16, %12, %8, %4, %2
  %30 = phi i32 [ 0, %22 ], [ 0, %24 ], [ -2, %2 ], [ -2, %4 ], [ -2, %8 ], [ -2, %12 ], [ -2, %16 ], [ -2, %19 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflatePrime(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %68, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %68, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %68

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %68 [
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
  br i1 %26, label %68, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 5888
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %33 = icmp ult ptr %29, %32
  br i1 %33, label %68, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds nuw i8, ptr %25, i64 5940
  %36 = getelementptr inbounds nuw i8, ptr %25, i64 5936
  br label %37

37:                                               ; preds = %64, %34
  %38 = phi i32 [ %65, %64 ], [ %1, %34 ]
  %39 = phi i32 [ %66, %64 ], [ %2, %34 ]
  %40 = load i32, ptr %35, align 4, !tbaa !94
  %41 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %40), !nosanitize !49
  %42 = extractvalue { i32, i1 } %41, 1, !nosanitize !49
  br i1 %42, label %43, label %44, !prof !50, !nosanitize !49

43:                                               ; preds = %60, %44, %37
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

44:                                               ; preds = %37
  %45 = extractvalue { i32, i1 } %41, 0, !nosanitize !49
  %46 = tail call i32 @llvm.smin.i32(i32 %45, i32 %38)
  %47 = shl nuw i32 1, %46
  %48 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %47, i32 -1)
  %49 = extractvalue { i32, i1 } %48, 1, !nosanitize !49
  br i1 %49, label %43, label %50, !prof !50, !nosanitize !49

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %48, 0, !nosanitize !49
  %52 = and i32 %51, %39
  %53 = shl i32 %52, %40
  %54 = load i16, ptr %36, align 8, !tbaa !96
  %55 = trunc i32 %53 to i16
  %56 = or i16 %54, %55
  store i16 %56, ptr %36, align 8, !tbaa !96
  %57 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %40, i32 %46), !nosanitize !49
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !49
  br i1 %58, label %59, label %60, !prof !50, !nosanitize !49

59:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

60:                                               ; preds = %50
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !49
  store i32 %61, ptr %35, align 4, !tbaa !94
  tail call void @_tr_flush_bits(ptr noundef %25) #10
  %62 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %38, i32 %46), !nosanitize !49
  %63 = extractvalue { i32, i1 } %62, 1, !nosanitize !49
  br i1 %63, label %43, label %64, !prof !50, !nosanitize !49

64:                                               ; preds = %60
  %65 = extractvalue { i32, i1 } %62, 0, !nosanitize !49
  %66 = ashr i32 %39, %46
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %37, !llvm.loop !97

68:                                               ; preds = %64, %27, %23, %20, %17, %13, %9, %5, %3
  %69 = phi i32 [ -5, %23 ], [ -2, %20 ], [ -5, %27 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ 0, %64 ]
  ret i32 %69
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1074, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1074, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1074, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1074, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1074

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %1074 [
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
  br i1 %30, label %1074, label %31

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
  br i1 %46, label %1031, label %47

47:                                               ; preds = %36, %31
  %48 = getelementptr inbounds nuw i8, ptr %25, i64 76
  %49 = load i32, ptr %48, align 4, !tbaa !61
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %1031, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %53 = load ptr, ptr %52, align 8, !tbaa !15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %1028, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = icmp eq ptr %57, null
  %59 = icmp eq ptr %25, null
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %1028, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %25, align 8, !tbaa !20
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %64, label %1028

64:                                               ; preds = %61
  %65 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %66 = load i32, ptr %65, align 8, !tbaa !29
  switch i32 %66, label %1028 [
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
  br label %1028

85:                                               ; preds = %78
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %87 = load i32, ptr %86, align 8, !tbaa !100
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %90, ptr %91, align 8, !tbaa !9
  br label %1004

92:                                               ; preds = %85
  store i32 5, ptr %48, align 4, !tbaa !61
  %93 = getelementptr inbounds nuw i8, ptr %25, i64 40
  %94 = load i64, ptr %93, align 8, !tbaa !58
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %138, label %96

96:                                               ; preds = %92
  tail call void @_tr_flush_bits(ptr noundef nonnull %25) #10
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

116:                                              ; preds = %103
  %117 = extractvalue { i64, i1 } %113, 0, !nosanitize !49
  store i64 %117, ptr %111, align 8, !tbaa !101
  %118 = load i32, ptr %86, align 8, !tbaa !100
  %119 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %118, i32 %101), !nosanitize !49
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !49
  br i1 %120, label %121, label %122, !prof !50, !nosanitize !49

121:                                              ; preds = %116
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

122:                                              ; preds = %116
  %123 = extractvalue { i32, i1 } %119, 0, !nosanitize !49
  store i32 %123, ptr %86, align 8, !tbaa !100
  %124 = load i64, ptr %93, align 8, !tbaa !58
  %125 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %124, i64 %100), !nosanitize !49
  %126 = extractvalue { i64, i1 } %125, 1, !nosanitize !49
  br i1 %126, label %127, label %128, !prof !50, !nosanitize !49

127:                                              ; preds = %122
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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
  br i1 %136, label %137, label %156

137:                                              ; preds = %134
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %1004

138:                                              ; preds = %92
  br i1 %74, label %140, label %156

139:                                              ; preds = %140
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !49
  unreachable, !nosanitize !49

140:                                              ; preds = %138
  %141 = add i32 %49, 1073741824
  %142 = icmp sgt i32 %141, -1
  br i1 %142, label %144, label %139, !prof !91, !nosanitize !49

143:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

144:                                              ; preds = %140
  %145 = shl i32 %49, 1
  %146 = icmp sgt i32 %49, 4
  %147 = select i1 %146, i32 9, i32 0
  %148 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %145, i32 %147), !nosanitize !49
  %149 = extractvalue { i32, i1 } %148, 1, !nosanitize !49
  br i1 %149, label %143, label %150, !prof !50, !nosanitize !49

150:                                              ; preds = %144
  %151 = extractvalue { i32, i1 } %148, 0, !nosanitize !49
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %155 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %154, ptr %155, align 8, !tbaa !9
  br label %1004

156:                                              ; preds = %150, %138, %134
  %157 = load i32, ptr %79, align 8, !tbaa !29
  switch i32 %157, label %169 [
    i32 666, label %158
    i32 42, label %164
  ]

158:                                              ; preds = %156
  %159 = load i32, ptr %72, align 8, !tbaa !82
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %162, ptr %163, align 8, !tbaa !9
  br label %1004

164:                                              ; preds = %156
  %165 = getelementptr inbounds nuw i8, ptr %25, i64 48
  %166 = load i32, ptr %165, align 8, !tbaa !30
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 113, ptr %79, align 8, !tbaa !29
  br label %169

169:                                              ; preds = %168, %164, %158, %156
  %170 = load i32, ptr %79, align 8, !tbaa !29
  %171 = icmp eq i32 %170, 42
  br i1 %171, label %172, label %273

172:                                              ; preds = %169
  %173 = getelementptr inbounds nuw i8, ptr %25, i64 84
  %174 = load i32, ptr %173, align 4, !tbaa !32
  %175 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %174, i32 8), !nosanitize !49
  %176 = extractvalue { i32, i1 } %175, 1, !nosanitize !49
  br i1 %176, label %177, label %178, !prof !50, !nosanitize !49

177:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

178:                                              ; preds = %172
  %179 = extractvalue { i32, i1 } %175, 0, !nosanitize !49
  %180 = shl i32 %179, 12
  %181 = load i32, ptr %33, align 8, !tbaa !53
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %191, label %183

183:                                              ; preds = %178
  %184 = load i32, ptr %32, align 4, !tbaa !52
  %185 = icmp slt i32 %184, 2
  br i1 %185, label %191, label %186

186:                                              ; preds = %183
  %187 = icmp slt i32 %184, 6
  br i1 %187, label %191, label %188

188:                                              ; preds = %186
  %189 = icmp eq i32 %184, 6
  %190 = select i1 %189, i32 128, i32 192
  br label %191

191:                                              ; preds = %188, %186, %183, %178
  %192 = phi i32 [ 64, %186 ], [ 0, %178 ], [ %190, %188 ], [ 0, %183 ]
  %193 = getelementptr inbounds nuw i8, ptr %25, i64 172
  %194 = or disjoint i32 %192, %180
  %195 = load i32, ptr %193, align 4, !tbaa !74
  %196 = icmp eq i32 %195, 0
  %197 = select i1 %196, i32 2048, i32 2080
  %198 = or disjoint i32 %197, %194
  %199 = urem i32 %198, 31
  %200 = or disjoint i32 %199, %198
  %201 = load i64, ptr %93, align 8, !tbaa !58
  %202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %201, i64 1), !nosanitize !49
  %203 = extractvalue { i64, i1 } %202, 1, !nosanitize !49
  br i1 %203, label %204, label %205, !prof !50, !nosanitize !49

204:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

205:                                              ; preds = %191
  %206 = extractvalue { i64, i1 } %202, 0, !nosanitize !49
  %207 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %208 = load ptr, ptr %207, align 8, !tbaa !44
  %209 = lshr i32 %198, 8
  %210 = trunc i32 %209 to i8
  store i64 %206, ptr %93, align 8, !tbaa !58
  %211 = getelementptr inbounds nuw i8, ptr %208, i64 %201
  store i8 %210, ptr %211, align 1, !tbaa !8
  %212 = load i64, ptr %93, align 8, !tbaa !58
  %213 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %212, i64 1), !nosanitize !49
  %214 = extractvalue { i64, i1 } %213, 1, !nosanitize !49
  br i1 %214, label %215, label %216, !prof !50, !nosanitize !49

215:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

216:                                              ; preds = %205
  %217 = extractvalue { i64, i1 } %213, 0, !nosanitize !49
  %218 = load ptr, ptr %207, align 8, !tbaa !44
  %219 = trunc i32 %200 to i8
  %220 = xor i8 %219, 31
  store i64 %217, ptr %93, align 8, !tbaa !58
  %221 = getelementptr inbounds nuw i8, ptr %218, i64 %212
  store i8 %220, ptr %221, align 1, !tbaa !8
  %222 = load i32, ptr %193, align 4, !tbaa !74
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %267, label %224

224:                                              ; preds = %216
  %225 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %226 = load i64, ptr %225, align 8, !tbaa !60
  %227 = lshr i64 %226, 16
  %228 = load i64, ptr %93, align 8, !tbaa !58
  %229 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %228, i64 1), !nosanitize !49
  %230 = extractvalue { i64, i1 } %229, 1, !nosanitize !49
  br i1 %230, label %231, label %232, !prof !50, !nosanitize !49

231:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

232:                                              ; preds = %224
  %233 = extractvalue { i64, i1 } %229, 0, !nosanitize !49
  %234 = load ptr, ptr %207, align 8, !tbaa !44
  %235 = lshr i64 %226, 24
  %236 = trunc i64 %235 to i8
  store i64 %233, ptr %93, align 8, !tbaa !58
  %237 = getelementptr inbounds nuw i8, ptr %234, i64 %228
  store i8 %236, ptr %237, align 1, !tbaa !8
  %238 = load i64, ptr %93, align 8, !tbaa !58
  %239 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %238, i64 1), !nosanitize !49
  %240 = extractvalue { i64, i1 } %239, 1, !nosanitize !49
  br i1 %240, label %241, label %242, !prof !50, !nosanitize !49

241:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

242:                                              ; preds = %232
  %243 = extractvalue { i64, i1 } %239, 0, !nosanitize !49
  %244 = load ptr, ptr %207, align 8, !tbaa !44
  %245 = trunc i64 %227 to i8
  store i64 %243, ptr %93, align 8, !tbaa !58
  %246 = getelementptr inbounds nuw i8, ptr %244, i64 %238
  store i8 %245, ptr %246, align 1, !tbaa !8
  %247 = load i64, ptr %225, align 8, !tbaa !60
  %248 = trunc i64 %247 to i8
  %249 = load i64, ptr %93, align 8, !tbaa !58
  %250 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %249, i64 1), !nosanitize !49
  %251 = extractvalue { i64, i1 } %250, 1, !nosanitize !49
  br i1 %251, label %252, label %253, !prof !50, !nosanitize !49

252:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

253:                                              ; preds = %242
  %254 = extractvalue { i64, i1 } %250, 0, !nosanitize !49
  %255 = load ptr, ptr %207, align 8, !tbaa !44
  %256 = lshr i64 %247, 8
  %257 = trunc i64 %256 to i8
  store i64 %254, ptr %93, align 8, !tbaa !58
  %258 = getelementptr inbounds nuw i8, ptr %255, i64 %249
  store i8 %257, ptr %258, align 1, !tbaa !8
  %259 = load i64, ptr %93, align 8, !tbaa !58
  %260 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %259, i64 1), !nosanitize !49
  %261 = extractvalue { i64, i1 } %260, 1, !nosanitize !49
  br i1 %261, label %262, label %263, !prof !50, !nosanitize !49

262:                                              ; preds = %253
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

263:                                              ; preds = %253
  %264 = extractvalue { i64, i1 } %260, 0, !nosanitize !49
  %265 = load ptr, ptr %207, align 8, !tbaa !44
  store i64 %264, ptr %93, align 8, !tbaa !58
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 %259
  store i8 %248, ptr %266, align 1, !tbaa !8
  br label %267

267:                                              ; preds = %263, %216
  %268 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %269 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %268, ptr %269, align 8, !tbaa !60
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %270 = load i64, ptr %93, align 8, !tbaa !58
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %267
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %1004

273:                                              ; preds = %267, %169
  %274 = load i32, ptr %79, align 8, !tbaa !29
  %275 = icmp eq i32 %274, 57
  br i1 %275, label %276, label %528

276:                                              ; preds = %273
  %277 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %277, ptr %278, align 8, !tbaa !60
  %279 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %280 = load i64, ptr %93, align 8, !tbaa !58
  %281 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %280, i64 1), !nosanitize !49
  %282 = extractvalue { i64, i1 } %281, 1, !nosanitize !49
  br i1 %282, label %283, label %284, !prof !50, !nosanitize !49

283:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

284:                                              ; preds = %276
  %285 = extractvalue { i64, i1 } %281, 0, !nosanitize !49
  %286 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %285, ptr %93, align 8, !tbaa !58
  %287 = getelementptr inbounds nuw i8, ptr %286, i64 %280
  store i8 31, ptr %287, align 1, !tbaa !8
  %288 = load i64, ptr %93, align 8, !tbaa !58
  %289 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %288, i64 1), !nosanitize !49
  %290 = extractvalue { i64, i1 } %289, 1, !nosanitize !49
  br i1 %290, label %291, label %292, !prof !50, !nosanitize !49

291:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

292:                                              ; preds = %284
  %293 = extractvalue { i64, i1 } %289, 0, !nosanitize !49
  %294 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %293, ptr %93, align 8, !tbaa !58
  %295 = getelementptr inbounds nuw i8, ptr %294, i64 %288
  store i8 -117, ptr %295, align 1, !tbaa !8
  %296 = load i64, ptr %93, align 8, !tbaa !58
  %297 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %296, i64 1), !nosanitize !49
  %298 = extractvalue { i64, i1 } %297, 1, !nosanitize !49
  br i1 %298, label %299, label %300, !prof !50, !nosanitize !49

299:                                              ; preds = %292
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

300:                                              ; preds = %292
  %301 = extractvalue { i64, i1 } %297, 0, !nosanitize !49
  %302 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %301, ptr %93, align 8, !tbaa !58
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 %296
  store i8 8, ptr %303, align 1, !tbaa !8
  %304 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %305 = load ptr, ptr %304, align 8, !tbaa !31
  %306 = icmp eq ptr %305, null
  %307 = load i64, ptr %93, align 8, !tbaa !58
  %308 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %307, i64 1), !nosanitize !49
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !49
  br i1 %306, label %310, label %377

310:                                              ; preds = %300
  br i1 %309, label %311, label %312, !prof !50, !nosanitize !49

311:                                              ; preds = %310
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

312:                                              ; preds = %310
  %313 = extractvalue { i64, i1 } %308, 0, !nosanitize !49
  %314 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %313, ptr %93, align 8, !tbaa !58
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 %307
  store i8 0, ptr %315, align 1, !tbaa !8
  %316 = load i64, ptr %93, align 8, !tbaa !58
  %317 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %316, i64 1), !nosanitize !49
  %318 = extractvalue { i64, i1 } %317, 1, !nosanitize !49
  br i1 %318, label %319, label %320, !prof !50, !nosanitize !49

319:                                              ; preds = %312
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

320:                                              ; preds = %312
  %321 = extractvalue { i64, i1 } %317, 0, !nosanitize !49
  %322 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %321, ptr %93, align 8, !tbaa !58
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 %316
  store i8 0, ptr %323, align 1, !tbaa !8
  %324 = load i64, ptr %93, align 8, !tbaa !58
  %325 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %324, i64 1), !nosanitize !49
  %326 = extractvalue { i64, i1 } %325, 1, !nosanitize !49
  br i1 %326, label %327, label %328, !prof !50, !nosanitize !49

327:                                              ; preds = %320
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

328:                                              ; preds = %320
  %329 = extractvalue { i64, i1 } %325, 0, !nosanitize !49
  %330 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %329, ptr %93, align 8, !tbaa !58
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 %324
  store i8 0, ptr %331, align 1, !tbaa !8
  %332 = load i64, ptr %93, align 8, !tbaa !58
  %333 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %332, i64 1), !nosanitize !49
  %334 = extractvalue { i64, i1 } %333, 1, !nosanitize !49
  br i1 %334, label %335, label %336, !prof !50, !nosanitize !49

335:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

336:                                              ; preds = %328
  %337 = extractvalue { i64, i1 } %333, 0, !nosanitize !49
  %338 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %337, ptr %93, align 8, !tbaa !58
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 %332
  store i8 0, ptr %339, align 1, !tbaa !8
  %340 = load i64, ptr %93, align 8, !tbaa !58
  %341 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %340, i64 1), !nosanitize !49
  %342 = extractvalue { i64, i1 } %341, 1, !nosanitize !49
  br i1 %342, label %343, label %344, !prof !50, !nosanitize !49

343:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

344:                                              ; preds = %336
  %345 = extractvalue { i64, i1 } %341, 0, !nosanitize !49
  %346 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %345, ptr %93, align 8, !tbaa !58
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 %340
  store i8 0, ptr %347, align 1, !tbaa !8
  %348 = load i32, ptr %32, align 4, !tbaa !52
  %349 = icmp eq i32 %348, 9
  br i1 %349, label %356, label %350

350:                                              ; preds = %344
  %351 = load i32, ptr %33, align 8, !tbaa !53
  %352 = icmp sgt i32 %351, 1
  %353 = icmp slt i32 %348, 2
  %354 = or i1 %353, %352
  %355 = select i1 %354, i8 4, i8 0
  br label %356

356:                                              ; preds = %350, %344
  %357 = phi i8 [ %355, %350 ], [ 2, %344 ]
  %358 = load i64, ptr %93, align 8, !tbaa !58
  %359 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %358, i64 1), !nosanitize !49
  %360 = extractvalue { i64, i1 } %359, 1, !nosanitize !49
  br i1 %360, label %361, label %362, !prof !50, !nosanitize !49

361:                                              ; preds = %356
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

362:                                              ; preds = %356
  %363 = extractvalue { i64, i1 } %359, 0, !nosanitize !49
  %364 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %363, ptr %93, align 8, !tbaa !58
  %365 = getelementptr inbounds nuw i8, ptr %364, i64 %358
  store i8 %357, ptr %365, align 1, !tbaa !8
  %366 = load i64, ptr %93, align 8, !tbaa !58
  %367 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %366, i64 1), !nosanitize !49
  %368 = extractvalue { i64, i1 } %367, 1, !nosanitize !49
  br i1 %368, label %369, label %370, !prof !50, !nosanitize !49

369:                                              ; preds = %362
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

370:                                              ; preds = %362
  %371 = extractvalue { i64, i1 } %367, 0, !nosanitize !49
  %372 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %371, ptr %93, align 8, !tbaa !58
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 %366
  store i8 3, ptr %373, align 1, !tbaa !8
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %374 = load i64, ptr %93, align 8, !tbaa !58
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %528, label %376

376:                                              ; preds = %370
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %1004

377:                                              ; preds = %300
  br i1 %309, label %378, label %379, !prof !50, !nosanitize !49

378:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

379:                                              ; preds = %377
  %380 = extractvalue { i64, i1 } %308, 0, !nosanitize !49
  %381 = load ptr, ptr %279, align 8, !tbaa !44
  %382 = getelementptr inbounds nuw i8, ptr %305, i64 56
  %383 = load ptr, ptr %382, align 8, !tbaa !102
  %384 = icmp eq ptr %383, null
  %385 = getelementptr inbounds nuw i8, ptr %305, i64 40
  %386 = load ptr, ptr %385, align 8, !tbaa !104
  %387 = icmp eq ptr %386, null
  %388 = getelementptr inbounds nuw i8, ptr %305, i64 24
  %389 = load ptr, ptr %388, align 8, !tbaa !105
  %390 = icmp eq ptr %389, null
  %391 = load i32, ptr %305, align 8, !tbaa !106
  %392 = icmp ne i32 %391, 0
  %393 = getelementptr inbounds nuw i8, ptr %305, i64 68
  %394 = load i32, ptr %393, align 4, !tbaa !107
  %395 = icmp eq i32 %394, 0
  %396 = select i1 %395, i8 0, i8 2
  %397 = zext i1 %392 to i8
  %398 = select i1 %390, i8 0, i8 4
  %399 = select i1 %387, i8 0, i8 8
  %400 = select i1 %384, i8 0, i8 16
  %401 = or disjoint i8 %399, %400
  %402 = or disjoint i8 %401, %398
  %403 = or disjoint i8 %402, %397
  %404 = or disjoint i8 %403, %396
  store i64 %380, ptr %93, align 8, !tbaa !58
  %405 = getelementptr inbounds nuw i8, ptr %381, i64 %307
  store i8 %404, ptr %405, align 1, !tbaa !8
  %406 = load i64, ptr %93, align 8, !tbaa !58
  %407 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %406, i64 1), !nosanitize !49
  %408 = extractvalue { i64, i1 } %407, 1, !nosanitize !49
  br i1 %408, label %409, label %410, !prof !50, !nosanitize !49

409:                                              ; preds = %379
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

410:                                              ; preds = %379
  %411 = extractvalue { i64, i1 } %407, 0, !nosanitize !49
  %412 = load ptr, ptr %279, align 8, !tbaa !44
  %413 = load ptr, ptr %304, align 8, !tbaa !31
  %414 = getelementptr inbounds nuw i8, ptr %413, i64 8
  %415 = load i64, ptr %414, align 8, !tbaa !108
  %416 = trunc i64 %415 to i8
  store i64 %411, ptr %93, align 8, !tbaa !58
  %417 = getelementptr inbounds nuw i8, ptr %412, i64 %406
  store i8 %416, ptr %417, align 1, !tbaa !8
  %418 = load i64, ptr %93, align 8, !tbaa !58
  %419 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %418, i64 1), !nosanitize !49
  %420 = extractvalue { i64, i1 } %419, 1, !nosanitize !49
  br i1 %420, label %421, label %422, !prof !50, !nosanitize !49

421:                                              ; preds = %410
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

422:                                              ; preds = %410
  %423 = extractvalue { i64, i1 } %419, 0, !nosanitize !49
  %424 = load ptr, ptr %279, align 8, !tbaa !44
  %425 = load ptr, ptr %304, align 8, !tbaa !31
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 8
  %427 = load i64, ptr %426, align 8, !tbaa !108
  %428 = lshr i64 %427, 8
  %429 = trunc i64 %428 to i8
  store i64 %423, ptr %93, align 8, !tbaa !58
  %430 = getelementptr inbounds nuw i8, ptr %424, i64 %418
  store i8 %429, ptr %430, align 1, !tbaa !8
  %431 = load i64, ptr %93, align 8, !tbaa !58
  %432 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %431, i64 1), !nosanitize !49
  %433 = extractvalue { i64, i1 } %432, 1, !nosanitize !49
  br i1 %433, label %434, label %435, !prof !50, !nosanitize !49

434:                                              ; preds = %422
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

435:                                              ; preds = %422
  %436 = extractvalue { i64, i1 } %432, 0, !nosanitize !49
  %437 = load ptr, ptr %279, align 8, !tbaa !44
  %438 = load ptr, ptr %304, align 8, !tbaa !31
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 8
  %440 = load i64, ptr %439, align 8, !tbaa !108
  %441 = lshr i64 %440, 16
  %442 = trunc i64 %441 to i8
  store i64 %436, ptr %93, align 8, !tbaa !58
  %443 = getelementptr inbounds nuw i8, ptr %437, i64 %431
  store i8 %442, ptr %443, align 1, !tbaa !8
  %444 = load i64, ptr %93, align 8, !tbaa !58
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %444, i64 1), !nosanitize !49
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !49
  br i1 %446, label %447, label %448, !prof !50, !nosanitize !49

447:                                              ; preds = %435
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

448:                                              ; preds = %435
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !49
  %450 = load ptr, ptr %279, align 8, !tbaa !44
  %451 = load ptr, ptr %304, align 8, !tbaa !31
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 8
  %453 = load i64, ptr %452, align 8, !tbaa !108
  %454 = lshr i64 %453, 24
  %455 = trunc i64 %454 to i8
  store i64 %449, ptr %93, align 8, !tbaa !58
  %456 = getelementptr inbounds nuw i8, ptr %450, i64 %444
  store i8 %455, ptr %456, align 1, !tbaa !8
  %457 = load i32, ptr %32, align 4, !tbaa !52
  %458 = icmp eq i32 %457, 9
  br i1 %458, label %465, label %459

459:                                              ; preds = %448
  %460 = load i32, ptr %33, align 8, !tbaa !53
  %461 = icmp sgt i32 %460, 1
  %462 = icmp slt i32 %457, 2
  %463 = or i1 %462, %461
  %464 = select i1 %463, i8 4, i8 0
  br label %465

465:                                              ; preds = %459, %448
  %466 = phi i8 [ %464, %459 ], [ 2, %448 ]
  %467 = load i64, ptr %93, align 8, !tbaa !58
  %468 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %467, i64 1), !nosanitize !49
  %469 = extractvalue { i64, i1 } %468, 1, !nosanitize !49
  br i1 %469, label %470, label %471, !prof !50, !nosanitize !49

470:                                              ; preds = %465
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

471:                                              ; preds = %465
  %472 = extractvalue { i64, i1 } %468, 0, !nosanitize !49
  %473 = load ptr, ptr %279, align 8, !tbaa !44
  store i64 %472, ptr %93, align 8, !tbaa !58
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 %467
  store i8 %466, ptr %474, align 1, !tbaa !8
  %475 = load i64, ptr %93, align 8, !tbaa !58
  %476 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %475, i64 1), !nosanitize !49
  %477 = extractvalue { i64, i1 } %476, 1, !nosanitize !49
  br i1 %477, label %478, label %479, !prof !50, !nosanitize !49

478:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

479:                                              ; preds = %471
  %480 = extractvalue { i64, i1 } %476, 0, !nosanitize !49
  %481 = load ptr, ptr %279, align 8, !tbaa !44
  %482 = load ptr, ptr %304, align 8, !tbaa !31
  %483 = getelementptr inbounds nuw i8, ptr %482, i64 20
  %484 = load i32, ptr %483, align 4, !tbaa !109
  %485 = trunc i32 %484 to i8
  store i64 %480, ptr %93, align 8, !tbaa !58
  %486 = getelementptr inbounds nuw i8, ptr %481, i64 %475
  store i8 %485, ptr %486, align 1, !tbaa !8
  %487 = load ptr, ptr %304, align 8, !tbaa !31
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 24
  %489 = load ptr, ptr %488, align 8, !tbaa !105
  %490 = icmp eq ptr %489, null
  br i1 %490, label %516, label %491

491:                                              ; preds = %479
  %492 = load i64, ptr %93, align 8, !tbaa !58
  %493 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %492, i64 1), !nosanitize !49
  %494 = extractvalue { i64, i1 } %493, 1, !nosanitize !49
  br i1 %494, label %495, label %496, !prof !50, !nosanitize !49

495:                                              ; preds = %491
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

496:                                              ; preds = %491
  %497 = extractvalue { i64, i1 } %493, 0, !nosanitize !49
  %498 = load ptr, ptr %279, align 8, !tbaa !44
  %499 = getelementptr inbounds nuw i8, ptr %487, i64 32
  %500 = load i32, ptr %499, align 8, !tbaa !110
  %501 = trunc i32 %500 to i8
  store i64 %497, ptr %93, align 8, !tbaa !58
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 %492
  store i8 %501, ptr %502, align 1, !tbaa !8
  %503 = load i64, ptr %93, align 8, !tbaa !58
  %504 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %503, i64 1), !nosanitize !49
  %505 = extractvalue { i64, i1 } %504, 1, !nosanitize !49
  br i1 %505, label %506, label %507, !prof !50, !nosanitize !49

506:                                              ; preds = %496
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

507:                                              ; preds = %496
  %508 = extractvalue { i64, i1 } %504, 0, !nosanitize !49
  %509 = load ptr, ptr %279, align 8, !tbaa !44
  %510 = load ptr, ptr %304, align 8, !tbaa !31
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 32
  %512 = load i32, ptr %511, align 8, !tbaa !110
  %513 = lshr i32 %512, 8
  %514 = trunc i32 %513 to i8
  store i64 %508, ptr %93, align 8, !tbaa !58
  %515 = getelementptr inbounds nuw i8, ptr %509, i64 %503
  store i8 %514, ptr %515, align 1, !tbaa !8
  br label %516

516:                                              ; preds = %507, %479
  %517 = load ptr, ptr %304, align 8, !tbaa !31
  %518 = getelementptr inbounds nuw i8, ptr %517, i64 68
  %519 = load i32, ptr %518, align 4, !tbaa !107
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %526, label %521

521:                                              ; preds = %516
  %522 = load i64, ptr %278, align 8, !tbaa !60
  %523 = load ptr, ptr %279, align 8, !tbaa !44
  %524 = load i64, ptr %93, align 8, !tbaa !58
  %525 = tail call i64 @crc32_z(i64 noundef %522, ptr noundef %523, i64 noundef %524) #10
  store i64 %525, ptr %278, align 8, !tbaa !60
  br label %526

526:                                              ; preds = %521, %516
  %527 = getelementptr inbounds nuw i8, ptr %25, i64 64
  store i64 0, ptr %527, align 8, !tbaa !111
  store i32 69, ptr %79, align 8, !tbaa !29
  br label %528

528:                                              ; preds = %526, %370, %273
  %529 = load i32, ptr %79, align 8, !tbaa !29
  %530 = icmp eq i32 %529, 69
  br i1 %530, label %531, label %678

531:                                              ; preds = %528
  %532 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %533 = load ptr, ptr %532, align 8, !tbaa !31
  %534 = getelementptr inbounds nuw i8, ptr %533, i64 24
  %535 = load ptr, ptr %534, align 8, !tbaa !105
  %536 = icmp eq ptr %535, null
  br i1 %536, label %677, label %537

537:                                              ; preds = %531
  %538 = getelementptr inbounds nuw i8, ptr %533, i64 32
  %539 = load i32, ptr %538, align 8, !tbaa !110
  %540 = and i32 %539, 65535
  %541 = zext nneg i32 %540 to i64
  %542 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %543 = load i64, ptr %542, align 8, !tbaa !111
  %544 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %541, i64 %543), !nosanitize !49
  %545 = extractvalue { i64, i1 } %544, 1, !nosanitize !49
  br i1 %545, label %546, label %547, !prof !50, !nosanitize !49

546:                                              ; preds = %537
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

547:                                              ; preds = %537
  %548 = extractvalue { i64, i1 } %544, 0, !nosanitize !49
  %549 = load i64, ptr %93, align 8, !tbaa !58
  %550 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %551 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %552 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %553 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %554

554:                                              ; preds = %646, %547
  %555 = phi i64 [ %549, %547 ], [ %647, %646 ]
  %556 = phi i64 [ %548, %547 ], [ %648, %646 ]
  %557 = load i64, ptr %93, align 8, !tbaa !58
  %558 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %557, i64 %556), !nosanitize !49
  %559 = extractvalue { i64, i1 } %558, 1, !nosanitize !49
  br i1 %559, label %560, label %561, !prof !50, !nosanitize !49

560:                                              ; preds = %554
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

561:                                              ; preds = %554
  %562 = extractvalue { i64, i1 } %558, 0, !nosanitize !49
  %563 = load i64, ptr %550, align 8, !tbaa !45
  %564 = icmp ugt i64 %562, %563
  br i1 %564, label %565, label %649

565:                                              ; preds = %561
  %566 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %563, i64 %557), !nosanitize !49
  %567 = extractvalue { i64, i1 } %566, 0, !nosanitize !49
  %568 = extractvalue { i64, i1 } %566, 1, !nosanitize !49
  br i1 %568, label %569, label %570, !prof !50, !nosanitize !49

569:                                              ; preds = %565
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

570:                                              ; preds = %565
  %571 = load ptr, ptr %551, align 8, !tbaa !44
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 %557
  %573 = load ptr, ptr %532, align 8, !tbaa !31
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 24
  %575 = load ptr, ptr %574, align 8, !tbaa !105
  %576 = load i64, ptr %542, align 8, !tbaa !111
  %577 = getelementptr inbounds nuw i8, ptr %575, i64 %576
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %572, ptr align 1 %577, i64 %567, i1 false)
  %578 = load i64, ptr %550, align 8, !tbaa !45
  store i64 %578, ptr %93, align 8, !tbaa !58
  %579 = load ptr, ptr %532, align 8, !tbaa !31
  %580 = getelementptr inbounds nuw i8, ptr %579, i64 68
  %581 = load i32, ptr %580, align 4, !tbaa !107
  %582 = icmp ne i32 %581, 0
  %583 = icmp ugt i64 %578, %555
  %584 = select i1 %582, i1 %583, i1 false
  br i1 %584, label %585, label %591

585:                                              ; preds = %570
  %586 = sub nuw i64 %578, %555
  %587 = load ptr, ptr %551, align 8, !tbaa !44
  %588 = getelementptr inbounds nuw i8, ptr %587, i64 %555
  %589 = load i64, ptr %552, align 8, !tbaa !60
  %590 = tail call i64 @crc32_z(i64 noundef %589, ptr noundef %588, i64 noundef %586) #10
  store i64 %590, ptr %552, align 8, !tbaa !60
  br label %591

591:                                              ; preds = %585, %570
  %592 = load i64, ptr %542, align 8, !tbaa !111
  %593 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %592, i64 %567), !nosanitize !49
  %594 = extractvalue { i64, i1 } %593, 1, !nosanitize !49
  br i1 %594, label %595, label %596, !prof !50, !nosanitize !49

595:                                              ; preds = %591
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

596:                                              ; preds = %591
  %597 = extractvalue { i64, i1 } %593, 0, !nosanitize !49
  store i64 %597, ptr %542, align 8, !tbaa !111
  %598 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %598) #10
  %599 = getelementptr inbounds nuw i8, ptr %598, i64 40
  %600 = load i64, ptr %599, align 8, !tbaa !58
  %601 = load i32, ptr %86, align 8, !tbaa !100
  %602 = zext i32 %601 to i64
  %603 = tail call i64 @llvm.umin.i64(i64 %600, i64 %602)
  %604 = trunc nuw i64 %603 to i32
  %605 = icmp eq i64 %603, 0
  br i1 %605, label %636, label %606

606:                                              ; preds = %596
  %607 = load ptr, ptr %68, align 8, !tbaa !99
  %608 = getelementptr inbounds nuw i8, ptr %598, i64 32
  %609 = load ptr, ptr %608, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %607, ptr align 1 %609, i64 %603, i1 false)
  %610 = load ptr, ptr %68, align 8, !tbaa !99
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 %603
  store ptr %611, ptr %68, align 8, !tbaa !99
  %612 = load ptr, ptr %608, align 8, !tbaa !59
  %613 = getelementptr inbounds nuw i8, ptr %612, i64 %603
  store ptr %613, ptr %608, align 8, !tbaa !59
  %614 = load i64, ptr %553, align 8, !tbaa !101
  %615 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %614, i64 %603), !nosanitize !49
  %616 = extractvalue { i64, i1 } %615, 1, !nosanitize !49
  br i1 %616, label %617, label %618, !prof !50, !nosanitize !49

617:                                              ; preds = %606
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

618:                                              ; preds = %606
  %619 = extractvalue { i64, i1 } %615, 0, !nosanitize !49
  store i64 %619, ptr %553, align 8, !tbaa !101
  %620 = load i32, ptr %86, align 8, !tbaa !100
  %621 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %620, i32 %604), !nosanitize !49
  %622 = extractvalue { i32, i1 } %621, 1, !nosanitize !49
  br i1 %622, label %623, label %624, !prof !50, !nosanitize !49

623:                                              ; preds = %618
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

624:                                              ; preds = %618
  %625 = extractvalue { i32, i1 } %621, 0, !nosanitize !49
  store i32 %625, ptr %86, align 8, !tbaa !100
  %626 = load i64, ptr %599, align 8, !tbaa !58
  %627 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %626, i64 %603), !nosanitize !49
  %628 = extractvalue { i64, i1 } %627, 1, !nosanitize !49
  br i1 %628, label %629, label %630, !prof !50, !nosanitize !49

629:                                              ; preds = %624
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

630:                                              ; preds = %624
  %631 = extractvalue { i64, i1 } %627, 0, !nosanitize !49
  store i64 %631, ptr %599, align 8, !tbaa !58
  %632 = icmp eq i64 %631, 0
  br i1 %632, label %633, label %636

633:                                              ; preds = %630
  %634 = getelementptr inbounds nuw i8, ptr %598, i64 16
  %635 = load ptr, ptr %634, align 8, !tbaa !44
  store ptr %635, ptr %608, align 8, !tbaa !59
  br label %636

636:                                              ; preds = %633, %630, %596
  %637 = load i64, ptr %93, align 8, !tbaa !58
  %638 = icmp eq i64 %637, 0
  br i1 %638, label %640, label %639

639:                                              ; preds = %636
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %646

640:                                              ; preds = %636
  %641 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %556, i64 %567), !nosanitize !49
  %642 = extractvalue { i64, i1 } %641, 1, !nosanitize !49
  br i1 %642, label %643, label %644, !prof !50, !nosanitize !49

643:                                              ; preds = %640
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

644:                                              ; preds = %640
  %645 = extractvalue { i64, i1 } %641, 0, !nosanitize !49
  br label %646

646:                                              ; preds = %644, %639
  %647 = phi i64 [ %555, %639 ], [ 0, %644 ]
  %648 = phi i64 [ %556, %639 ], [ %645, %644 ]
  br i1 %638, label %554, label %676, !llvm.loop !112

649:                                              ; preds = %561
  %650 = load ptr, ptr %551, align 8, !tbaa !44
  %651 = getelementptr inbounds nuw i8, ptr %650, i64 %557
  %652 = load ptr, ptr %532, align 8, !tbaa !31
  %653 = getelementptr inbounds nuw i8, ptr %652, i64 24
  %654 = load ptr, ptr %653, align 8, !tbaa !105
  %655 = load i64, ptr %542, align 8, !tbaa !111
  %656 = getelementptr inbounds nuw i8, ptr %654, i64 %655
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %651, ptr align 1 %656, i64 %556, i1 false)
  %657 = load i64, ptr %93, align 8, !tbaa !58
  %658 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %657, i64 %556), !nosanitize !49
  %659 = extractvalue { i64, i1 } %658, 0, !nosanitize !49
  %660 = extractvalue { i64, i1 } %658, 1, !nosanitize !49
  br i1 %660, label %661, label %662, !prof !50, !nosanitize !49

661:                                              ; preds = %649
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

662:                                              ; preds = %649
  store i64 %659, ptr %93, align 8, !tbaa !58
  %663 = load ptr, ptr %532, align 8, !tbaa !31
  %664 = getelementptr inbounds nuw i8, ptr %663, i64 68
  %665 = load i32, ptr %664, align 4, !tbaa !107
  %666 = icmp ne i32 %665, 0
  %667 = icmp ugt i64 %659, %555
  %668 = select i1 %666, i1 %667, i1 false
  br i1 %668, label %669, label %675

669:                                              ; preds = %662
  %670 = sub nuw i64 %659, %555
  %671 = load ptr, ptr %551, align 8, !tbaa !44
  %672 = getelementptr inbounds nuw i8, ptr %671, i64 %555
  %673 = load i64, ptr %552, align 8, !tbaa !60
  %674 = tail call i64 @crc32_z(i64 noundef %673, ptr noundef %672, i64 noundef %670) #10
  store i64 %674, ptr %552, align 8, !tbaa !60
  br label %675

675:                                              ; preds = %669, %662
  store i64 0, ptr %542, align 8, !tbaa !111
  br label %676

676:                                              ; preds = %675, %646
  br i1 %564, label %1004, label %677

677:                                              ; preds = %676, %531
  store i32 73, ptr %79, align 8, !tbaa !29
  br label %678

678:                                              ; preds = %677, %528
  %679 = load i32, ptr %79, align 8, !tbaa !29
  %680 = icmp eq i32 %679, 73
  br i1 %680, label %681, label %793

681:                                              ; preds = %678
  %682 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %683 = load ptr, ptr %682, align 8, !tbaa !31
  %684 = getelementptr inbounds nuw i8, ptr %683, i64 40
  %685 = load ptr, ptr %684, align 8, !tbaa !104
  %686 = icmp eq ptr %685, null
  br i1 %686, label %792, label %687

687:                                              ; preds = %681
  %688 = load i64, ptr %93, align 8, !tbaa !58
  %689 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %690 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %691 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %692 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %693 = getelementptr inbounds nuw i8, ptr %25, i64 64
  br label %694

694:                                              ; preds = %770, %687
  %695 = phi i64 [ %688, %687 ], [ %756, %770 ]
  %696 = load i64, ptr %93, align 8, !tbaa !58
  %697 = load i64, ptr %689, align 8, !tbaa !45
  %698 = icmp eq i64 %696, %697
  br i1 %698, label %699, label %755

699:                                              ; preds = %694
  %700 = load ptr, ptr %682, align 8, !tbaa !31
  %701 = getelementptr inbounds nuw i8, ptr %700, i64 68
  %702 = load i32, ptr %701, align 4, !tbaa !107
  %703 = icmp ne i32 %702, 0
  %704 = icmp ugt i64 %696, %695
  %705 = select i1 %703, i1 %704, i1 false
  br i1 %705, label %706, label %712

706:                                              ; preds = %699
  %707 = sub nuw i64 %696, %695
  %708 = load ptr, ptr %690, align 8, !tbaa !44
  %709 = getelementptr inbounds nuw i8, ptr %708, i64 %695
  %710 = load i64, ptr %691, align 8, !tbaa !60
  %711 = tail call i64 @crc32_z(i64 noundef %710, ptr noundef %709, i64 noundef %707) #10
  store i64 %711, ptr %691, align 8, !tbaa !60
  br label %712

712:                                              ; preds = %706, %699
  %713 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %713) #10
  %714 = getelementptr inbounds nuw i8, ptr %713, i64 40
  %715 = load i64, ptr %714, align 8, !tbaa !58
  %716 = load i32, ptr %86, align 8, !tbaa !100
  %717 = zext i32 %716 to i64
  %718 = tail call i64 @llvm.umin.i64(i64 %715, i64 %717)
  %719 = trunc nuw i64 %718 to i32
  %720 = icmp eq i64 %718, 0
  br i1 %720, label %751, label %721

721:                                              ; preds = %712
  %722 = load ptr, ptr %68, align 8, !tbaa !99
  %723 = getelementptr inbounds nuw i8, ptr %713, i64 32
  %724 = load ptr, ptr %723, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %722, ptr align 1 %724, i64 %718, i1 false)
  %725 = load ptr, ptr %68, align 8, !tbaa !99
  %726 = getelementptr inbounds nuw i8, ptr %725, i64 %718
  store ptr %726, ptr %68, align 8, !tbaa !99
  %727 = load ptr, ptr %723, align 8, !tbaa !59
  %728 = getelementptr inbounds nuw i8, ptr %727, i64 %718
  store ptr %728, ptr %723, align 8, !tbaa !59
  %729 = load i64, ptr %692, align 8, !tbaa !101
  %730 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %729, i64 %718), !nosanitize !49
  %731 = extractvalue { i64, i1 } %730, 1, !nosanitize !49
  br i1 %731, label %732, label %733, !prof !50, !nosanitize !49

732:                                              ; preds = %721
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

733:                                              ; preds = %721
  %734 = extractvalue { i64, i1 } %730, 0, !nosanitize !49
  store i64 %734, ptr %692, align 8, !tbaa !101
  %735 = load i32, ptr %86, align 8, !tbaa !100
  %736 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %735, i32 %719), !nosanitize !49
  %737 = extractvalue { i32, i1 } %736, 1, !nosanitize !49
  br i1 %737, label %738, label %739, !prof !50, !nosanitize !49

738:                                              ; preds = %733
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

739:                                              ; preds = %733
  %740 = extractvalue { i32, i1 } %736, 0, !nosanitize !49
  store i32 %740, ptr %86, align 8, !tbaa !100
  %741 = load i64, ptr %714, align 8, !tbaa !58
  %742 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %741, i64 %718), !nosanitize !49
  %743 = extractvalue { i64, i1 } %742, 1, !nosanitize !49
  br i1 %743, label %744, label %745, !prof !50, !nosanitize !49

744:                                              ; preds = %739
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

745:                                              ; preds = %739
  %746 = extractvalue { i64, i1 } %742, 0, !nosanitize !49
  store i64 %746, ptr %714, align 8, !tbaa !58
  %747 = icmp eq i64 %746, 0
  br i1 %747, label %748, label %751

748:                                              ; preds = %745
  %749 = getelementptr inbounds nuw i8, ptr %713, i64 16
  %750 = load ptr, ptr %749, align 8, !tbaa !44
  store ptr %750, ptr %723, align 8, !tbaa !59
  br label %751

751:                                              ; preds = %748, %745, %712
  %752 = load i64, ptr %93, align 8, !tbaa !58
  %753 = icmp eq i64 %752, 0
  br i1 %753, label %755, label %754

754:                                              ; preds = %751
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %1004

755:                                              ; preds = %751, %694
  %756 = phi i64 [ %695, %694 ], [ 0, %751 ]
  %757 = load i64, ptr %693, align 8, !tbaa !111
  %758 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %757, i64 1), !nosanitize !49
  %759 = extractvalue { i64, i1 } %758, 1, !nosanitize !49
  br i1 %759, label %760, label %761, !prof !50, !nosanitize !49

760:                                              ; preds = %755
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

761:                                              ; preds = %755
  %762 = extractvalue { i64, i1 } %758, 0, !nosanitize !49
  %763 = load ptr, ptr %682, align 8, !tbaa !31
  %764 = getelementptr inbounds nuw i8, ptr %763, i64 40
  %765 = load ptr, ptr %764, align 8, !tbaa !104
  store i64 %762, ptr %693, align 8, !tbaa !111
  %766 = load i64, ptr %93, align 8, !tbaa !58
  %767 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %766, i64 1), !nosanitize !49
  %768 = extractvalue { i64, i1 } %767, 1, !nosanitize !49
  br i1 %768, label %769, label %770, !prof !50, !nosanitize !49

769:                                              ; preds = %761
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

770:                                              ; preds = %761
  %771 = extractvalue { i64, i1 } %767, 0, !nosanitize !49
  %772 = load ptr, ptr %690, align 8, !tbaa !44
  %773 = getelementptr inbounds nuw i8, ptr %765, i64 %757
  %774 = load i8, ptr %773, align 1, !tbaa !8
  store i64 %771, ptr %93, align 8, !tbaa !58
  %775 = getelementptr inbounds nuw i8, ptr %772, i64 %766
  store i8 %774, ptr %775, align 1, !tbaa !8
  %776 = icmp eq i8 %774, 0
  br i1 %776, label %777, label %694, !llvm.loop !113

777:                                              ; preds = %770
  %778 = load ptr, ptr %682, align 8, !tbaa !31
  %779 = getelementptr inbounds nuw i8, ptr %778, i64 68
  %780 = load i32, ptr %779, align 4, !tbaa !107
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %791, label %782

782:                                              ; preds = %777
  %783 = load i64, ptr %93, align 8, !tbaa !58
  %784 = icmp ugt i64 %783, %756
  br i1 %784, label %785, label %791

785:                                              ; preds = %782
  %786 = sub nuw i64 %783, %756
  %787 = load ptr, ptr %690, align 8, !tbaa !44
  %788 = getelementptr inbounds nuw i8, ptr %787, i64 %756
  %789 = load i64, ptr %691, align 8, !tbaa !60
  %790 = tail call i64 @crc32_z(i64 noundef %789, ptr noundef %788, i64 noundef %786) #10
  store i64 %790, ptr %691, align 8, !tbaa !60
  br label %791

791:                                              ; preds = %785, %782, %777
  store i64 0, ptr %693, align 8, !tbaa !111
  br label %792

792:                                              ; preds = %791, %681
  store i32 91, ptr %79, align 8, !tbaa !29
  br label %793

793:                                              ; preds = %792, %678
  %794 = load i32, ptr %79, align 8, !tbaa !29
  %795 = icmp eq i32 %794, 91
  br i1 %795, label %796, label %907

796:                                              ; preds = %793
  %797 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %798 = load ptr, ptr %797, align 8, !tbaa !31
  %799 = getelementptr inbounds nuw i8, ptr %798, i64 56
  %800 = load ptr, ptr %799, align 8, !tbaa !102
  %801 = icmp eq ptr %800, null
  br i1 %801, label %906, label %802

802:                                              ; preds = %796
  %803 = load i64, ptr %93, align 8, !tbaa !58
  %804 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %805 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %806 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %807 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %808 = getelementptr inbounds nuw i8, ptr %25, i64 64
  br label %809

809:                                              ; preds = %885, %802
  %810 = phi i64 [ %803, %802 ], [ %871, %885 ]
  %811 = load i64, ptr %93, align 8, !tbaa !58
  %812 = load i64, ptr %804, align 8, !tbaa !45
  %813 = icmp eq i64 %811, %812
  br i1 %813, label %814, label %870

814:                                              ; preds = %809
  %815 = load ptr, ptr %797, align 8, !tbaa !31
  %816 = getelementptr inbounds nuw i8, ptr %815, i64 68
  %817 = load i32, ptr %816, align 4, !tbaa !107
  %818 = icmp ne i32 %817, 0
  %819 = icmp ugt i64 %811, %810
  %820 = select i1 %818, i1 %819, i1 false
  br i1 %820, label %821, label %827

821:                                              ; preds = %814
  %822 = sub nuw i64 %811, %810
  %823 = load ptr, ptr %805, align 8, !tbaa !44
  %824 = getelementptr inbounds nuw i8, ptr %823, i64 %810
  %825 = load i64, ptr %806, align 8, !tbaa !60
  %826 = tail call i64 @crc32_z(i64 noundef %825, ptr noundef %824, i64 noundef %822) #10
  store i64 %826, ptr %806, align 8, !tbaa !60
  br label %827

827:                                              ; preds = %821, %814
  %828 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %828) #10
  %829 = getelementptr inbounds nuw i8, ptr %828, i64 40
  %830 = load i64, ptr %829, align 8, !tbaa !58
  %831 = load i32, ptr %86, align 8, !tbaa !100
  %832 = zext i32 %831 to i64
  %833 = tail call i64 @llvm.umin.i64(i64 %830, i64 %832)
  %834 = trunc nuw i64 %833 to i32
  %835 = icmp eq i64 %833, 0
  br i1 %835, label %866, label %836

836:                                              ; preds = %827
  %837 = load ptr, ptr %68, align 8, !tbaa !99
  %838 = getelementptr inbounds nuw i8, ptr %828, i64 32
  %839 = load ptr, ptr %838, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %837, ptr align 1 %839, i64 %833, i1 false)
  %840 = load ptr, ptr %68, align 8, !tbaa !99
  %841 = getelementptr inbounds nuw i8, ptr %840, i64 %833
  store ptr %841, ptr %68, align 8, !tbaa !99
  %842 = load ptr, ptr %838, align 8, !tbaa !59
  %843 = getelementptr inbounds nuw i8, ptr %842, i64 %833
  store ptr %843, ptr %838, align 8, !tbaa !59
  %844 = load i64, ptr %807, align 8, !tbaa !101
  %845 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %844, i64 %833), !nosanitize !49
  %846 = extractvalue { i64, i1 } %845, 1, !nosanitize !49
  br i1 %846, label %847, label %848, !prof !50, !nosanitize !49

847:                                              ; preds = %836
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

848:                                              ; preds = %836
  %849 = extractvalue { i64, i1 } %845, 0, !nosanitize !49
  store i64 %849, ptr %807, align 8, !tbaa !101
  %850 = load i32, ptr %86, align 8, !tbaa !100
  %851 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %850, i32 %834), !nosanitize !49
  %852 = extractvalue { i32, i1 } %851, 1, !nosanitize !49
  br i1 %852, label %853, label %854, !prof !50, !nosanitize !49

853:                                              ; preds = %848
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

854:                                              ; preds = %848
  %855 = extractvalue { i32, i1 } %851, 0, !nosanitize !49
  store i32 %855, ptr %86, align 8, !tbaa !100
  %856 = load i64, ptr %829, align 8, !tbaa !58
  %857 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %856, i64 %833), !nosanitize !49
  %858 = extractvalue { i64, i1 } %857, 1, !nosanitize !49
  br i1 %858, label %859, label %860, !prof !50, !nosanitize !49

859:                                              ; preds = %854
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

860:                                              ; preds = %854
  %861 = extractvalue { i64, i1 } %857, 0, !nosanitize !49
  store i64 %861, ptr %829, align 8, !tbaa !58
  %862 = icmp eq i64 %861, 0
  br i1 %862, label %863, label %866

863:                                              ; preds = %860
  %864 = getelementptr inbounds nuw i8, ptr %828, i64 16
  %865 = load ptr, ptr %864, align 8, !tbaa !44
  store ptr %865, ptr %838, align 8, !tbaa !59
  br label %866

866:                                              ; preds = %863, %860, %827
  %867 = load i64, ptr %93, align 8, !tbaa !58
  %868 = icmp eq i64 %867, 0
  br i1 %868, label %870, label %869

869:                                              ; preds = %866
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %1004

870:                                              ; preds = %866, %809
  %871 = phi i64 [ %810, %809 ], [ 0, %866 ]
  %872 = load i64, ptr %808, align 8, !tbaa !111
  %873 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %872, i64 1), !nosanitize !49
  %874 = extractvalue { i64, i1 } %873, 1, !nosanitize !49
  br i1 %874, label %875, label %876, !prof !50, !nosanitize !49

875:                                              ; preds = %870
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

876:                                              ; preds = %870
  %877 = extractvalue { i64, i1 } %873, 0, !nosanitize !49
  %878 = load ptr, ptr %797, align 8, !tbaa !31
  %879 = getelementptr inbounds nuw i8, ptr %878, i64 56
  %880 = load ptr, ptr %879, align 8, !tbaa !102
  store i64 %877, ptr %808, align 8, !tbaa !111
  %881 = load i64, ptr %93, align 8, !tbaa !58
  %882 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %881, i64 1), !nosanitize !49
  %883 = extractvalue { i64, i1 } %882, 1, !nosanitize !49
  br i1 %883, label %884, label %885, !prof !50, !nosanitize !49

884:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

885:                                              ; preds = %876
  %886 = extractvalue { i64, i1 } %882, 0, !nosanitize !49
  %887 = load ptr, ptr %805, align 8, !tbaa !44
  %888 = getelementptr inbounds nuw i8, ptr %880, i64 %872
  %889 = load i8, ptr %888, align 1, !tbaa !8
  store i64 %886, ptr %93, align 8, !tbaa !58
  %890 = getelementptr inbounds nuw i8, ptr %887, i64 %881
  store i8 %889, ptr %890, align 1, !tbaa !8
  %891 = icmp eq i8 %889, 0
  br i1 %891, label %892, label %809, !llvm.loop !114

892:                                              ; preds = %885
  %893 = load ptr, ptr %797, align 8, !tbaa !31
  %894 = getelementptr inbounds nuw i8, ptr %893, i64 68
  %895 = load i32, ptr %894, align 4, !tbaa !107
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %906, label %897

897:                                              ; preds = %892
  %898 = load i64, ptr %93, align 8, !tbaa !58
  %899 = icmp ugt i64 %898, %871
  br i1 %899, label %900, label %906

900:                                              ; preds = %897
  %901 = sub nuw i64 %898, %871
  %902 = load ptr, ptr %805, align 8, !tbaa !44
  %903 = getelementptr inbounds nuw i8, ptr %902, i64 %871
  %904 = load i64, ptr %806, align 8, !tbaa !60
  %905 = tail call i64 @crc32_z(i64 noundef %904, ptr noundef %903, i64 noundef %901) #10
  store i64 %905, ptr %806, align 8, !tbaa !60
  br label %906

906:                                              ; preds = %900, %897, %892, %796
  store i32 103, ptr %79, align 8, !tbaa !29
  br label %907

907:                                              ; preds = %906, %793
  %908 = load i32, ptr %79, align 8, !tbaa !29
  %909 = icmp eq i32 %908, 103
  br i1 %909, label %910, label %959

910:                                              ; preds = %907
  %911 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %912 = load ptr, ptr %911, align 8, !tbaa !31
  %913 = getelementptr inbounds nuw i8, ptr %912, i64 68
  %914 = load i32, ptr %913, align 4, !tbaa !107
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %955, label %916

916:                                              ; preds = %910
  %917 = load i64, ptr %93, align 8, !tbaa !58
  %918 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %917, i64 2), !nosanitize !49
  %919 = extractvalue { i64, i1 } %918, 1, !nosanitize !49
  br i1 %919, label %920, label %921, !prof !50, !nosanitize !49

920:                                              ; preds = %916
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

921:                                              ; preds = %916
  %922 = extractvalue { i64, i1 } %918, 0, !nosanitize !49
  %923 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %924 = load i64, ptr %923, align 8, !tbaa !45
  %925 = icmp ugt i64 %922, %924
  br i1 %925, label %926, label %930

926:                                              ; preds = %921
  tail call fastcc void @flush_pending(ptr noundef %0)
  %927 = load i64, ptr %93, align 8, !tbaa !58
  %928 = icmp eq i64 %927, 0
  br i1 %928, label %930, label %929

929:                                              ; preds = %926
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %1004

930:                                              ; preds = %926, %921
  %931 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %932 = load i64, ptr %93, align 8, !tbaa !58
  %933 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %932, i64 1), !nosanitize !49
  %934 = extractvalue { i64, i1 } %933, 1, !nosanitize !49
  br i1 %934, label %935, label %936, !prof !50, !nosanitize !49

935:                                              ; preds = %930
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

936:                                              ; preds = %930
  %937 = extractvalue { i64, i1 } %933, 0, !nosanitize !49
  %938 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %939 = load ptr, ptr %938, align 8, !tbaa !44
  %940 = load i64, ptr %931, align 8, !tbaa !60
  %941 = trunc i64 %940 to i8
  store i64 %937, ptr %93, align 8, !tbaa !58
  %942 = getelementptr inbounds nuw i8, ptr %939, i64 %932
  store i8 %941, ptr %942, align 1, !tbaa !8
  %943 = load i64, ptr %93, align 8, !tbaa !58
  %944 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %943, i64 1), !nosanitize !49
  %945 = extractvalue { i64, i1 } %944, 1, !nosanitize !49
  br i1 %945, label %946, label %947, !prof !50, !nosanitize !49

946:                                              ; preds = %936
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

947:                                              ; preds = %936
  %948 = extractvalue { i64, i1 } %944, 0, !nosanitize !49
  %949 = load ptr, ptr %938, align 8, !tbaa !44
  %950 = load i64, ptr %931, align 8, !tbaa !60
  %951 = lshr i64 %950, 8
  %952 = trunc i64 %951 to i8
  store i64 %948, ptr %93, align 8, !tbaa !58
  %953 = getelementptr inbounds nuw i8, ptr %949, i64 %943
  store i8 %952, ptr %953, align 1, !tbaa !8
  %954 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %954, ptr %931, align 8, !tbaa !60
  br label %955

955:                                              ; preds = %947, %910
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %956 = load i64, ptr %93, align 8, !tbaa !58
  %957 = icmp eq i64 %956, 0
  br i1 %957, label %959, label %958

958:                                              ; preds = %955
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %1004

959:                                              ; preds = %955, %907
  %960 = load i32, ptr %72, align 8, !tbaa !82
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %962, label %969

962:                                              ; preds = %959
  %963 = getelementptr inbounds nuw i8, ptr %25, i64 180
  %964 = load i32, ptr %963, align 4, !tbaa !76
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %966, label %969

966:                                              ; preds = %962
  %967 = load i32, ptr %79, align 8, !tbaa !29
  %968 = icmp eq i32 %967, 666
  br i1 %968, label %1004, label %969

969:                                              ; preds = %966, %962, %959
  %970 = load i32, ptr %32, align 4, !tbaa !52
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %974

972:                                              ; preds = %969
  %973 = tail call i32 @deflate_stored(ptr noundef nonnull %25, i32 noundef 5)
  br label %986

974:                                              ; preds = %969
  %975 = load i32, ptr %33, align 8, !tbaa !53
  switch i32 %975, label %980 [
    i32 2, label %976
    i32 3, label %978
  ]

976:                                              ; preds = %974
  %977 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %25, i32 noundef 5)
  br label %986

978:                                              ; preds = %974
  %979 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %25, i32 noundef 5)
  br label %986

980:                                              ; preds = %974
  %981 = sext i32 %970 to i64
  %982 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %981
  %983 = getelementptr inbounds nuw i8, ptr %982, i64 8
  %984 = load ptr, ptr %983, align 8, !tbaa !98
  %985 = tail call i32 %984(ptr noundef nonnull %25, i32 noundef 5) #10, !inline_history !115
  br label %986

986:                                              ; preds = %980, %978, %976, %972
  %987 = phi i32 [ %973, %972 ], [ %977, %976 ], [ %979, %978 ], [ %985, %980 ]
  %988 = and i32 %987, -2
  %989 = icmp eq i32 %988, 2
  br i1 %989, label %990, label %991

990:                                              ; preds = %986
  store i32 666, ptr %79, align 8, !tbaa !29
  br label %991

991:                                              ; preds = %990, %986
  %992 = and i32 %987, -3
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %994, label %998

994:                                              ; preds = %991
  %995 = load i32, ptr %86, align 8, !tbaa !100
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %1004

997:                                              ; preds = %994
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %1004

998:                                              ; preds = %991
  %999 = icmp eq i32 %987, 1
  br i1 %999, label %1000, label %1004

1000:                                             ; preds = %998
  tail call fastcc void @flush_pending(ptr noundef %0)
  %1001 = load i32, ptr %86, align 8, !tbaa !100
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1003, label %1004

1003:                                             ; preds = %1000
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %1004

1004:                                             ; preds = %1003, %1000, %998, %997, %994, %966, %958, %929, %869, %754, %676, %376, %272, %161, %153, %137, %89
  %1005 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1006 = load i32, ptr %1005, align 8, !tbaa !82
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1028

1008:                                             ; preds = %1004
  %1009 = getelementptr inbounds nuw i8, ptr %25, i64 172
  %1010 = load i32, ptr %1009, align 4, !tbaa !74
  %1011 = zext i32 %1010 to i64
  %1012 = getelementptr inbounds nuw i8, ptr %25, i64 152
  %1013 = load i64, ptr %1012, align 8, !tbaa !75
  %1014 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1011, i64 %1013), !nosanitize !49
  %1015 = extractvalue { i64, i1 } %1014, 1, !nosanitize !49
  br i1 %1015, label %1016, label %1017, !prof !50, !nosanitize !49

1016:                                             ; preds = %1008
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

1017:                                             ; preds = %1008
  %1018 = extractvalue { i64, i1 } %1014, 0, !nosanitize !49
  %1019 = getelementptr inbounds nuw i8, ptr %25, i64 180
  %1020 = load i32, ptr %1019, align 4, !tbaa !76
  %1021 = zext i32 %1020 to i64
  %1022 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %1018, i64 %1021), !nosanitize !49
  %1023 = extractvalue { i64, i1 } %1022, 1, !nosanitize !49
  br i1 %1023, label %1024, label %1025, !prof !50, !nosanitize !49

1024:                                             ; preds = %1017
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1025:                                             ; preds = %1017
  %1026 = extractvalue { i64, i1 } %1022, 0, !nosanitize !49
  %1027 = icmp eq i64 %1026, 0
  br label %1028

1028:                                             ; preds = %1025, %1004, %82, %64, %61, %55, %51
  %1029 = phi i1 [ false, %1004 ], [ %1027, %1025 ], [ false, %82 ], [ false, %51 ], [ false, %55 ], [ false, %61 ], [ false, %64 ]
  %1030 = phi i32 [ -5, %1004 ], [ -5, %1025 ], [ -2, %82 ], [ -2, %51 ], [ -2, %55 ], [ -2, %61 ], [ -2, %64 ]
  br i1 %1029, label %1031, label %1074

1031:                                             ; preds = %1028, %47, %36
  %1032 = load i32, ptr %32, align 4, !tbaa !52
  %1033 = icmp eq i32 %1032, %27
  br i1 %1033, label %1073, label %1034

1034:                                             ; preds = %1031
  %1035 = icmp eq i32 %1032, 0
  br i1 %1035, label %1036, label %1055

1036:                                             ; preds = %1034
  %1037 = getelementptr inbounds nuw i8, ptr %25, i64 5928
  %1038 = load i32, ptr %1037, align 8, !tbaa !116
  switch i32 %1038, label %1040 [
    i32 0, label %1055
    i32 1, label %1039
  ]

1039:                                             ; preds = %1036
  tail call fastcc void @slide_hash(ptr noundef %25)
  br label %1054

1040:                                             ; preds = %1036
  %1041 = getelementptr inbounds nuw i8, ptr %25, i64 132
  %1042 = load i32, ptr %1041, align 4, !tbaa !36
  %1043 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1042, i32 1), !nosanitize !49
  %1044 = extractvalue { i32, i1 } %1043, 1, !nosanitize !49
  br i1 %1044, label %1045, label %1046, !prof !50, !nosanitize !49

1045:                                             ; preds = %1040
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

1046:                                             ; preds = %1040
  %1047 = extractvalue { i32, i1 } %1043, 0, !nosanitize !49
  %1048 = getelementptr inbounds nuw i8, ptr %25, i64 120
  %1049 = load ptr, ptr %1048, align 8, !tbaa !41
  %1050 = zext i32 %1047 to i64
  %1051 = getelementptr inbounds nuw [2 x i8], ptr %1049, i64 %1050
  store i16 0, ptr %1051, align 2, !tbaa !63
  %1052 = shl nuw nsw i64 %1050, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1049, i8 0, i64 %1052, i1 false)
  %1053 = getelementptr inbounds nuw i8, ptr %25, i64 5960
  store i32 0, ptr %1053, align 8, !tbaa !64
  br label %1054

1054:                                             ; preds = %1046, %1039
  store i32 0, ptr %1037, align 8, !tbaa !116
  br label %1055

1055:                                             ; preds = %1054, %1036, %1034
  store i32 %27, ptr %32, align 4, !tbaa !52
  %1056 = zext nneg i32 %27 to i64
  %1057 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1056
  %1058 = getelementptr inbounds nuw i8, ptr %1057, i64 2
  %1059 = load i16, ptr %1058, align 2, !tbaa !65
  %1060 = zext i16 %1059 to i32
  %1061 = getelementptr inbounds nuw i8, ptr %25, i64 192
  store i32 %1060, ptr %1061, align 8, !tbaa !67
  %1062 = load i16, ptr %1057, align 16, !tbaa !68
  %1063 = zext i16 %1062 to i32
  %1064 = getelementptr inbounds nuw i8, ptr %25, i64 204
  store i32 %1063, ptr %1064, align 4, !tbaa !69
  %1065 = getelementptr inbounds nuw i8, ptr %1057, i64 4
  %1066 = load i16, ptr %1065, align 4, !tbaa !70
  %1067 = zext i16 %1066 to i32
  %1068 = getelementptr inbounds nuw i8, ptr %25, i64 208
  store i32 %1067, ptr %1068, align 8, !tbaa !71
  %1069 = getelementptr inbounds nuw i8, ptr %1057, i64 6
  %1070 = load i16, ptr %1069, align 2, !tbaa !72
  %1071 = zext i16 %1070 to i32
  %1072 = getelementptr inbounds nuw i8, ptr %25, i64 188
  store i32 %1071, ptr %1072, align 4, !tbaa !73
  br label %1073

1073:                                             ; preds = %1055, %1031
  store i32 %2, ptr %33, align 8, !tbaa !53
  br label %1074

1074:                                             ; preds = %1073, %1028, %23, %20, %17, %13, %9, %5, %3
  %1075 = phi i32 [ %1030, %1028 ], [ -2, %23 ], [ 0, %1073 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ -2, %20 ]
  ret i32 %1075
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

23:                                               ; preds = %22, %19, %16, %12, %8, %4, %2
  %24 = phi i1 [ false, %22 ], [ true, %2 ], [ true, %8 ], [ true, %4 ], [ true, %19 ], [ true, %16 ], [ true, %12 ]
  %25 = icmp ugt i32 %1, 5
  %26 = or i1 %25, %24
  br i1 %26, label %1165, label %27

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
  br label %1165

49:                                               ; preds = %40
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %51 = load i32, ptr %50, align 8, !tbaa !100
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %54, ptr %55, align 8, !tbaa !9
  br label %1165

56:                                               ; preds = %49
  %57 = getelementptr inbounds nuw i8, ptr %29, i64 76
  %58 = load i32, ptr %57, align 4, !tbaa !61
  store i32 %1, ptr %57, align 4, !tbaa !61
  %59 = getelementptr inbounds nuw i8, ptr %29, i64 40
  %60 = load i64, ptr %59, align 8, !tbaa !58
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %104, label %62

62:                                               ; preds = %56
  tail call void @_tr_flush_bits(ptr noundef %29) #10
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %69
  %83 = extractvalue { i64, i1 } %79, 0, !nosanitize !49
  store i64 %83, ptr %77, align 8, !tbaa !101
  %84 = load i32, ptr %50, align 8, !tbaa !100
  %85 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %84, i32 %67), !nosanitize !49
  %86 = extractvalue { i32, i1 } %85, 1, !nosanitize !49
  br i1 %86, label %87, label %88, !prof !50, !nosanitize !49

87:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

88:                                               ; preds = %82
  %89 = extractvalue { i32, i1 } %85, 0, !nosanitize !49
  store i32 %89, ptr %50, align 8, !tbaa !100
  %90 = load i64, ptr %59, align 8, !tbaa !58
  %91 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %90, i64 %66), !nosanitize !49
  %92 = extractvalue { i64, i1 } %91, 1, !nosanitize !49
  br i1 %92, label %93, label %94, !prof !50, !nosanitize !49

93:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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

100:                                              ; preds = %97, %94, %62
  %101 = load i32, ptr %50, align 8, !tbaa !100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1165

104:                                              ; preds = %56
  br i1 %36, label %106, label %127

105:                                              ; preds = %106
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !49
  unreachable, !nosanitize !49

106:                                              ; preds = %104
  %107 = shl nuw nsw i32 %1, 1
  %108 = icmp sgt i32 %1, 4
  %109 = select i1 %108, i32 -9, i32 0
  %110 = add nsw i32 %109, %107
  %111 = add i32 %58, 1073741824
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %114, label %105, !prof !91, !nosanitize !49

113:                                              ; preds = %114
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

114:                                              ; preds = %106
  %115 = shl i32 %58, 1
  %116 = icmp sgt i32 %58, 4
  %117 = select i1 %116, i32 9, i32 0
  %118 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %115, i32 %117), !nosanitize !49
  %119 = extractvalue { i32, i1 } %118, 1, !nosanitize !49
  br i1 %119, label %113, label %120, !prof !50, !nosanitize !49

120:                                              ; preds = %114
  %121 = extractvalue { i32, i1 } %118, 0, !nosanitize !49
  %122 = icmp sle i32 %110, %121
  %123 = and i1 %44, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %125, ptr %126, align 8, !tbaa !9
  br label %1165

127:                                              ; preds = %120, %104, %100
  %128 = load i32, ptr %41, align 8, !tbaa !29
  switch i32 %128, label %140 [
    i32 666, label %129
    i32 42, label %135
  ]

129:                                              ; preds = %127
  %130 = load i32, ptr %34, align 8, !tbaa !82
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %133, ptr %134, align 8, !tbaa !9
  br label %1165

135:                                              ; preds = %127
  %136 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %137 = load i32, ptr %136, align 8, !tbaa !30
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 113, ptr %41, align 8, !tbaa !29
  br label %140

140:                                              ; preds = %139, %135, %129, %127
  %141 = load i32, ptr %41, align 8, !tbaa !29
  %142 = icmp eq i32 %141, 42
  br i1 %142, label %143, label %246

143:                                              ; preds = %140
  %144 = getelementptr inbounds nuw i8, ptr %29, i64 84
  %145 = load i32, ptr %144, align 4, !tbaa !32
  %146 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %145, i32 8), !nosanitize !49
  %147 = extractvalue { i32, i1 } %146, 1, !nosanitize !49
  br i1 %147, label %148, label %149, !prof !50, !nosanitize !49

148:                                              ; preds = %143
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

149:                                              ; preds = %143
  %150 = extractvalue { i32, i1 } %146, 0, !nosanitize !49
  %151 = shl i32 %150, 12
  %152 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %153 = load i32, ptr %152, align 8, !tbaa !53
  %154 = icmp sgt i32 %153, 1
  br i1 %154, label %164, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %157 = load i32, ptr %156, align 4, !tbaa !52
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = icmp slt i32 %157, 6
  br i1 %160, label %164, label %161

161:                                              ; preds = %159
  %162 = icmp eq i32 %157, 6
  %163 = select i1 %162, i32 128, i32 192
  br label %164

164:                                              ; preds = %161, %159, %155, %149
  %165 = phi i32 [ 64, %159 ], [ 0, %149 ], [ %163, %161 ], [ 0, %155 ]
  %166 = getelementptr inbounds nuw i8, ptr %29, i64 172
  %167 = or disjoint i32 %165, %151
  %168 = load i32, ptr %166, align 4, !tbaa !74
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, i32 2048, i32 2080
  %171 = or disjoint i32 %170, %167
  %172 = urem i32 %171, 31
  %173 = or disjoint i32 %172, %171
  %174 = load i64, ptr %59, align 8, !tbaa !58
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %174, i64 1), !nosanitize !49
  %176 = extractvalue { i64, i1 } %175, 1, !nosanitize !49
  br i1 %176, label %177, label %178, !prof !50, !nosanitize !49

177:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

178:                                              ; preds = %164
  %179 = extractvalue { i64, i1 } %175, 0, !nosanitize !49
  %180 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %181 = load ptr, ptr %180, align 8, !tbaa !44
  %182 = lshr i32 %171, 8
  %183 = trunc i32 %182 to i8
  store i64 %179, ptr %59, align 8, !tbaa !58
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 %174
  store i8 %183, ptr %184, align 1, !tbaa !8
  %185 = load i64, ptr %59, align 8, !tbaa !58
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 1), !nosanitize !49
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !49
  br i1 %187, label %188, label %189, !prof !50, !nosanitize !49

188:                                              ; preds = %178
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

189:                                              ; preds = %178
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !49
  %191 = load ptr, ptr %180, align 8, !tbaa !44
  %192 = trunc i32 %173 to i8
  %193 = xor i8 %192, 31
  store i64 %190, ptr %59, align 8, !tbaa !58
  %194 = getelementptr inbounds nuw i8, ptr %191, i64 %185
  store i8 %193, ptr %194, align 1, !tbaa !8
  %195 = load i32, ptr %166, align 4, !tbaa !74
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %240, label %197

197:                                              ; preds = %189
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %199 = load i64, ptr %198, align 8, !tbaa !60
  %200 = lshr i64 %199, 16
  %201 = load i64, ptr %59, align 8, !tbaa !58
  %202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %201, i64 1), !nosanitize !49
  %203 = extractvalue { i64, i1 } %202, 1, !nosanitize !49
  br i1 %203, label %204, label %205, !prof !50, !nosanitize !49

204:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

205:                                              ; preds = %197
  %206 = extractvalue { i64, i1 } %202, 0, !nosanitize !49
  %207 = load ptr, ptr %180, align 8, !tbaa !44
  %208 = lshr i64 %199, 24
  %209 = trunc i64 %208 to i8
  store i64 %206, ptr %59, align 8, !tbaa !58
  %210 = getelementptr inbounds nuw i8, ptr %207, i64 %201
  store i8 %209, ptr %210, align 1, !tbaa !8
  %211 = load i64, ptr %59, align 8, !tbaa !58
  %212 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %211, i64 1), !nosanitize !49
  %213 = extractvalue { i64, i1 } %212, 1, !nosanitize !49
  br i1 %213, label %214, label %215, !prof !50, !nosanitize !49

214:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

215:                                              ; preds = %205
  %216 = extractvalue { i64, i1 } %212, 0, !nosanitize !49
  %217 = load ptr, ptr %180, align 8, !tbaa !44
  %218 = trunc i64 %200 to i8
  store i64 %216, ptr %59, align 8, !tbaa !58
  %219 = getelementptr inbounds nuw i8, ptr %217, i64 %211
  store i8 %218, ptr %219, align 1, !tbaa !8
  %220 = load i64, ptr %198, align 8, !tbaa !60
  %221 = trunc i64 %220 to i8
  %222 = load i64, ptr %59, align 8, !tbaa !58
  %223 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %222, i64 1), !nosanitize !49
  %224 = extractvalue { i64, i1 } %223, 1, !nosanitize !49
  br i1 %224, label %225, label %226, !prof !50, !nosanitize !49

225:                                              ; preds = %215
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

226:                                              ; preds = %215
  %227 = extractvalue { i64, i1 } %223, 0, !nosanitize !49
  %228 = load ptr, ptr %180, align 8, !tbaa !44
  %229 = lshr i64 %220, 8
  %230 = trunc i64 %229 to i8
  store i64 %227, ptr %59, align 8, !tbaa !58
  %231 = getelementptr inbounds nuw i8, ptr %228, i64 %222
  store i8 %230, ptr %231, align 1, !tbaa !8
  %232 = load i64, ptr %59, align 8, !tbaa !58
  %233 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %232, i64 1), !nosanitize !49
  %234 = extractvalue { i64, i1 } %233, 1, !nosanitize !49
  br i1 %234, label %235, label %236, !prof !50, !nosanitize !49

235:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

236:                                              ; preds = %226
  %237 = extractvalue { i64, i1 } %233, 0, !nosanitize !49
  %238 = load ptr, ptr %180, align 8, !tbaa !44
  store i64 %237, ptr %59, align 8, !tbaa !58
  %239 = getelementptr inbounds nuw i8, ptr %238, i64 %232
  store i8 %221, ptr %239, align 1, !tbaa !8
  br label %240

240:                                              ; preds = %236, %189
  %241 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %241, ptr %242, align 8, !tbaa !60
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %243 = load i64, ptr %59, align 8, !tbaa !58
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %240
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1165

246:                                              ; preds = %240, %140
  %247 = load i32, ptr %41, align 8, !tbaa !29
  %248 = icmp eq i32 %247, 57
  br i1 %248, label %249, label %505

249:                                              ; preds = %246
  %250 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %251 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %250, ptr %251, align 8, !tbaa !60
  %252 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %253 = load i64, ptr %59, align 8, !tbaa !58
  %254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 1), !nosanitize !49
  %255 = extractvalue { i64, i1 } %254, 1, !nosanitize !49
  br i1 %255, label %256, label %257, !prof !50, !nosanitize !49

256:                                              ; preds = %249
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

257:                                              ; preds = %249
  %258 = extractvalue { i64, i1 } %254, 0, !nosanitize !49
  %259 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %258, ptr %59, align 8, !tbaa !58
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 %253
  store i8 31, ptr %260, align 1, !tbaa !8
  %261 = load i64, ptr %59, align 8, !tbaa !58
  %262 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %261, i64 1), !nosanitize !49
  %263 = extractvalue { i64, i1 } %262, 1, !nosanitize !49
  br i1 %263, label %264, label %265, !prof !50, !nosanitize !49

264:                                              ; preds = %257
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

265:                                              ; preds = %257
  %266 = extractvalue { i64, i1 } %262, 0, !nosanitize !49
  %267 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %266, ptr %59, align 8, !tbaa !58
  %268 = getelementptr inbounds nuw i8, ptr %267, i64 %261
  store i8 -117, ptr %268, align 1, !tbaa !8
  %269 = load i64, ptr %59, align 8, !tbaa !58
  %270 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %269, i64 1), !nosanitize !49
  %271 = extractvalue { i64, i1 } %270, 1, !nosanitize !49
  br i1 %271, label %272, label %273, !prof !50, !nosanitize !49

272:                                              ; preds = %265
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

273:                                              ; preds = %265
  %274 = extractvalue { i64, i1 } %270, 0, !nosanitize !49
  %275 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %274, ptr %59, align 8, !tbaa !58
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 %269
  store i8 8, ptr %276, align 1, !tbaa !8
  %277 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %278 = load ptr, ptr %277, align 8, !tbaa !31
  %279 = icmp eq ptr %278, null
  %280 = load i64, ptr %59, align 8, !tbaa !58
  %281 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %280, i64 1), !nosanitize !49
  %282 = extractvalue { i64, i1 } %281, 1, !nosanitize !49
  br i1 %279, label %283, label %352

283:                                              ; preds = %273
  br i1 %282, label %284, label %285, !prof !50, !nosanitize !49

284:                                              ; preds = %283
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

285:                                              ; preds = %283
  %286 = extractvalue { i64, i1 } %281, 0, !nosanitize !49
  %287 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %286, ptr %59, align 8, !tbaa !58
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 %280
  store i8 0, ptr %288, align 1, !tbaa !8
  %289 = load i64, ptr %59, align 8, !tbaa !58
  %290 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %289, i64 1), !nosanitize !49
  %291 = extractvalue { i64, i1 } %290, 1, !nosanitize !49
  br i1 %291, label %292, label %293, !prof !50, !nosanitize !49

292:                                              ; preds = %285
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

293:                                              ; preds = %285
  %294 = extractvalue { i64, i1 } %290, 0, !nosanitize !49
  %295 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %294, ptr %59, align 8, !tbaa !58
  %296 = getelementptr inbounds nuw i8, ptr %295, i64 %289
  store i8 0, ptr %296, align 1, !tbaa !8
  %297 = load i64, ptr %59, align 8, !tbaa !58
  %298 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %297, i64 1), !nosanitize !49
  %299 = extractvalue { i64, i1 } %298, 1, !nosanitize !49
  br i1 %299, label %300, label %301, !prof !50, !nosanitize !49

300:                                              ; preds = %293
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

301:                                              ; preds = %293
  %302 = extractvalue { i64, i1 } %298, 0, !nosanitize !49
  %303 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %302, ptr %59, align 8, !tbaa !58
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 %297
  store i8 0, ptr %304, align 1, !tbaa !8
  %305 = load i64, ptr %59, align 8, !tbaa !58
  %306 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %305, i64 1), !nosanitize !49
  %307 = extractvalue { i64, i1 } %306, 1, !nosanitize !49
  br i1 %307, label %308, label %309, !prof !50, !nosanitize !49

308:                                              ; preds = %301
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

309:                                              ; preds = %301
  %310 = extractvalue { i64, i1 } %306, 0, !nosanitize !49
  %311 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %310, ptr %59, align 8, !tbaa !58
  %312 = getelementptr inbounds nuw i8, ptr %311, i64 %305
  store i8 0, ptr %312, align 1, !tbaa !8
  %313 = load i64, ptr %59, align 8, !tbaa !58
  %314 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %313, i64 1), !nosanitize !49
  %315 = extractvalue { i64, i1 } %314, 1, !nosanitize !49
  br i1 %315, label %316, label %317, !prof !50, !nosanitize !49

316:                                              ; preds = %309
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

317:                                              ; preds = %309
  %318 = extractvalue { i64, i1 } %314, 0, !nosanitize !49
  %319 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %318, ptr %59, align 8, !tbaa !58
  %320 = getelementptr inbounds nuw i8, ptr %319, i64 %313
  store i8 0, ptr %320, align 1, !tbaa !8
  %321 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %322 = load i32, ptr %321, align 4, !tbaa !52
  %323 = icmp eq i32 %322, 9
  br i1 %323, label %331, label %324

324:                                              ; preds = %317
  %325 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %326 = load i32, ptr %325, align 8, !tbaa !53
  %327 = icmp sgt i32 %326, 1
  %328 = icmp slt i32 %322, 2
  %329 = or i1 %328, %327
  %330 = select i1 %329, i8 4, i8 0
  br label %331

331:                                              ; preds = %324, %317
  %332 = phi i8 [ %330, %324 ], [ 2, %317 ]
  %333 = load i64, ptr %59, align 8, !tbaa !58
  %334 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %333, i64 1), !nosanitize !49
  %335 = extractvalue { i64, i1 } %334, 1, !nosanitize !49
  br i1 %335, label %336, label %337, !prof !50, !nosanitize !49

336:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

337:                                              ; preds = %331
  %338 = extractvalue { i64, i1 } %334, 0, !nosanitize !49
  %339 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %338, ptr %59, align 8, !tbaa !58
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 %333
  store i8 %332, ptr %340, align 1, !tbaa !8
  %341 = load i64, ptr %59, align 8, !tbaa !58
  %342 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %341, i64 1), !nosanitize !49
  %343 = extractvalue { i64, i1 } %342, 1, !nosanitize !49
  br i1 %343, label %344, label %345, !prof !50, !nosanitize !49

344:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

345:                                              ; preds = %337
  %346 = extractvalue { i64, i1 } %342, 0, !nosanitize !49
  %347 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %346, ptr %59, align 8, !tbaa !58
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 %341
  store i8 3, ptr %348, align 1, !tbaa !8
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %349 = load i64, ptr %59, align 8, !tbaa !58
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %505, label %351

351:                                              ; preds = %345
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1165

352:                                              ; preds = %273
  br i1 %282, label %353, label %354, !prof !50, !nosanitize !49

353:                                              ; preds = %352
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

354:                                              ; preds = %352
  %355 = extractvalue { i64, i1 } %281, 0, !nosanitize !49
  %356 = load ptr, ptr %252, align 8, !tbaa !44
  %357 = getelementptr inbounds nuw i8, ptr %278, i64 56
  %358 = load ptr, ptr %357, align 8, !tbaa !102
  %359 = icmp eq ptr %358, null
  %360 = getelementptr inbounds nuw i8, ptr %278, i64 40
  %361 = load ptr, ptr %360, align 8, !tbaa !104
  %362 = icmp eq ptr %361, null
  %363 = getelementptr inbounds nuw i8, ptr %278, i64 24
  %364 = load ptr, ptr %363, align 8, !tbaa !105
  %365 = icmp eq ptr %364, null
  %366 = load i32, ptr %278, align 8, !tbaa !106
  %367 = icmp ne i32 %366, 0
  %368 = getelementptr inbounds nuw i8, ptr %278, i64 68
  %369 = load i32, ptr %368, align 4, !tbaa !107
  %370 = icmp eq i32 %369, 0
  %371 = select i1 %370, i8 0, i8 2
  %372 = zext i1 %367 to i8
  %373 = select i1 %365, i8 0, i8 4
  %374 = select i1 %362, i8 0, i8 8
  %375 = select i1 %359, i8 0, i8 16
  %376 = or disjoint i8 %374, %375
  %377 = or disjoint i8 %376, %373
  %378 = or disjoint i8 %377, %372
  %379 = or disjoint i8 %378, %371
  store i64 %355, ptr %59, align 8, !tbaa !58
  %380 = getelementptr inbounds nuw i8, ptr %356, i64 %280
  store i8 %379, ptr %380, align 1, !tbaa !8
  %381 = load i64, ptr %59, align 8, !tbaa !58
  %382 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %381, i64 1), !nosanitize !49
  %383 = extractvalue { i64, i1 } %382, 1, !nosanitize !49
  br i1 %383, label %384, label %385, !prof !50, !nosanitize !49

384:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

385:                                              ; preds = %354
  %386 = extractvalue { i64, i1 } %382, 0, !nosanitize !49
  %387 = load ptr, ptr %252, align 8, !tbaa !44
  %388 = load ptr, ptr %277, align 8, !tbaa !31
  %389 = getelementptr inbounds nuw i8, ptr %388, i64 8
  %390 = load i64, ptr %389, align 8, !tbaa !108
  %391 = trunc i64 %390 to i8
  store i64 %386, ptr %59, align 8, !tbaa !58
  %392 = getelementptr inbounds nuw i8, ptr %387, i64 %381
  store i8 %391, ptr %392, align 1, !tbaa !8
  %393 = load i64, ptr %59, align 8, !tbaa !58
  %394 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %393, i64 1), !nosanitize !49
  %395 = extractvalue { i64, i1 } %394, 1, !nosanitize !49
  br i1 %395, label %396, label %397, !prof !50, !nosanitize !49

396:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

397:                                              ; preds = %385
  %398 = extractvalue { i64, i1 } %394, 0, !nosanitize !49
  %399 = load ptr, ptr %252, align 8, !tbaa !44
  %400 = load ptr, ptr %277, align 8, !tbaa !31
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 8
  %402 = load i64, ptr %401, align 8, !tbaa !108
  %403 = lshr i64 %402, 8
  %404 = trunc i64 %403 to i8
  store i64 %398, ptr %59, align 8, !tbaa !58
  %405 = getelementptr inbounds nuw i8, ptr %399, i64 %393
  store i8 %404, ptr %405, align 1, !tbaa !8
  %406 = load i64, ptr %59, align 8, !tbaa !58
  %407 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %406, i64 1), !nosanitize !49
  %408 = extractvalue { i64, i1 } %407, 1, !nosanitize !49
  br i1 %408, label %409, label %410, !prof !50, !nosanitize !49

409:                                              ; preds = %397
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

410:                                              ; preds = %397
  %411 = extractvalue { i64, i1 } %407, 0, !nosanitize !49
  %412 = load ptr, ptr %252, align 8, !tbaa !44
  %413 = load ptr, ptr %277, align 8, !tbaa !31
  %414 = getelementptr inbounds nuw i8, ptr %413, i64 8
  %415 = load i64, ptr %414, align 8, !tbaa !108
  %416 = lshr i64 %415, 16
  %417 = trunc i64 %416 to i8
  store i64 %411, ptr %59, align 8, !tbaa !58
  %418 = getelementptr inbounds nuw i8, ptr %412, i64 %406
  store i8 %417, ptr %418, align 1, !tbaa !8
  %419 = load i64, ptr %59, align 8, !tbaa !58
  %420 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %419, i64 1), !nosanitize !49
  %421 = extractvalue { i64, i1 } %420, 1, !nosanitize !49
  br i1 %421, label %422, label %423, !prof !50, !nosanitize !49

422:                                              ; preds = %410
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

423:                                              ; preds = %410
  %424 = extractvalue { i64, i1 } %420, 0, !nosanitize !49
  %425 = load ptr, ptr %252, align 8, !tbaa !44
  %426 = load ptr, ptr %277, align 8, !tbaa !31
  %427 = getelementptr inbounds nuw i8, ptr %426, i64 8
  %428 = load i64, ptr %427, align 8, !tbaa !108
  %429 = lshr i64 %428, 24
  %430 = trunc i64 %429 to i8
  store i64 %424, ptr %59, align 8, !tbaa !58
  %431 = getelementptr inbounds nuw i8, ptr %425, i64 %419
  store i8 %430, ptr %431, align 1, !tbaa !8
  %432 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %433 = load i32, ptr %432, align 4, !tbaa !52
  %434 = icmp eq i32 %433, 9
  br i1 %434, label %442, label %435

435:                                              ; preds = %423
  %436 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %437 = load i32, ptr %436, align 8, !tbaa !53
  %438 = icmp sgt i32 %437, 1
  %439 = icmp slt i32 %433, 2
  %440 = or i1 %439, %438
  %441 = select i1 %440, i8 4, i8 0
  br label %442

442:                                              ; preds = %435, %423
  %443 = phi i8 [ %441, %435 ], [ 2, %423 ]
  %444 = load i64, ptr %59, align 8, !tbaa !58
  %445 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %444, i64 1), !nosanitize !49
  %446 = extractvalue { i64, i1 } %445, 1, !nosanitize !49
  br i1 %446, label %447, label %448, !prof !50, !nosanitize !49

447:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

448:                                              ; preds = %442
  %449 = extractvalue { i64, i1 } %445, 0, !nosanitize !49
  %450 = load ptr, ptr %252, align 8, !tbaa !44
  store i64 %449, ptr %59, align 8, !tbaa !58
  %451 = getelementptr inbounds nuw i8, ptr %450, i64 %444
  store i8 %443, ptr %451, align 1, !tbaa !8
  %452 = load i64, ptr %59, align 8, !tbaa !58
  %453 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %452, i64 1), !nosanitize !49
  %454 = extractvalue { i64, i1 } %453, 1, !nosanitize !49
  br i1 %454, label %455, label %456, !prof !50, !nosanitize !49

455:                                              ; preds = %448
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

456:                                              ; preds = %448
  %457 = extractvalue { i64, i1 } %453, 0, !nosanitize !49
  %458 = load ptr, ptr %252, align 8, !tbaa !44
  %459 = load ptr, ptr %277, align 8, !tbaa !31
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 20
  %461 = load i32, ptr %460, align 4, !tbaa !109
  %462 = trunc i32 %461 to i8
  store i64 %457, ptr %59, align 8, !tbaa !58
  %463 = getelementptr inbounds nuw i8, ptr %458, i64 %452
  store i8 %462, ptr %463, align 1, !tbaa !8
  %464 = load ptr, ptr %277, align 8, !tbaa !31
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 24
  %466 = load ptr, ptr %465, align 8, !tbaa !105
  %467 = icmp eq ptr %466, null
  br i1 %467, label %493, label %468

468:                                              ; preds = %456
  %469 = load i64, ptr %59, align 8, !tbaa !58
  %470 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %469, i64 1), !nosanitize !49
  %471 = extractvalue { i64, i1 } %470, 1, !nosanitize !49
  br i1 %471, label %472, label %473, !prof !50, !nosanitize !49

472:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

473:                                              ; preds = %468
  %474 = extractvalue { i64, i1 } %470, 0, !nosanitize !49
  %475 = load ptr, ptr %252, align 8, !tbaa !44
  %476 = getelementptr inbounds nuw i8, ptr %464, i64 32
  %477 = load i32, ptr %476, align 8, !tbaa !110
  %478 = trunc i32 %477 to i8
  store i64 %474, ptr %59, align 8, !tbaa !58
  %479 = getelementptr inbounds nuw i8, ptr %475, i64 %469
  store i8 %478, ptr %479, align 1, !tbaa !8
  %480 = load i64, ptr %59, align 8, !tbaa !58
  %481 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %480, i64 1), !nosanitize !49
  %482 = extractvalue { i64, i1 } %481, 1, !nosanitize !49
  br i1 %482, label %483, label %484, !prof !50, !nosanitize !49

483:                                              ; preds = %473
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

484:                                              ; preds = %473
  %485 = extractvalue { i64, i1 } %481, 0, !nosanitize !49
  %486 = load ptr, ptr %252, align 8, !tbaa !44
  %487 = load ptr, ptr %277, align 8, !tbaa !31
  %488 = getelementptr inbounds nuw i8, ptr %487, i64 32
  %489 = load i32, ptr %488, align 8, !tbaa !110
  %490 = lshr i32 %489, 8
  %491 = trunc i32 %490 to i8
  store i64 %485, ptr %59, align 8, !tbaa !58
  %492 = getelementptr inbounds nuw i8, ptr %486, i64 %480
  store i8 %491, ptr %492, align 1, !tbaa !8
  br label %493

493:                                              ; preds = %484, %456
  %494 = load ptr, ptr %277, align 8, !tbaa !31
  %495 = getelementptr inbounds nuw i8, ptr %494, i64 68
  %496 = load i32, ptr %495, align 4, !tbaa !107
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %503, label %498

498:                                              ; preds = %493
  %499 = load i64, ptr %251, align 8, !tbaa !60
  %500 = load ptr, ptr %252, align 8, !tbaa !44
  %501 = load i64, ptr %59, align 8, !tbaa !58
  %502 = tail call i64 @crc32_z(i64 noundef %499, ptr noundef %500, i64 noundef %501) #10
  store i64 %502, ptr %251, align 8, !tbaa !60
  br label %503

503:                                              ; preds = %498, %493
  %504 = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i64 0, ptr %504, align 8, !tbaa !111
  store i32 69, ptr %41, align 8, !tbaa !29
  br label %505

505:                                              ; preds = %503, %345, %246
  %506 = load i32, ptr %41, align 8, !tbaa !29
  %507 = icmp eq i32 %506, 69
  br i1 %507, label %508, label %657

508:                                              ; preds = %505
  %509 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %510 = load ptr, ptr %509, align 8, !tbaa !31
  %511 = getelementptr inbounds nuw i8, ptr %510, i64 24
  %512 = load ptr, ptr %511, align 8, !tbaa !105
  %513 = icmp eq ptr %512, null
  br i1 %513, label %656, label %514

514:                                              ; preds = %508
  %515 = getelementptr inbounds nuw i8, ptr %510, i64 32
  %516 = load i32, ptr %515, align 8, !tbaa !110
  %517 = and i32 %516, 65535
  %518 = zext nneg i32 %517 to i64
  %519 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %520 = load i64, ptr %519, align 8, !tbaa !111
  %521 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %518, i64 %520), !nosanitize !49
  %522 = extractvalue { i64, i1 } %521, 1, !nosanitize !49
  br i1 %522, label %523, label %524, !prof !50, !nosanitize !49

523:                                              ; preds = %514
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

524:                                              ; preds = %514
  %525 = extractvalue { i64, i1 } %521, 0, !nosanitize !49
  %526 = load i64, ptr %59, align 8, !tbaa !58
  %527 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %528 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %529 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %530 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %531

531:                                              ; preds = %623, %524
  %532 = phi i64 [ %526, %524 ], [ %624, %623 ]
  %533 = phi i64 [ %525, %524 ], [ %625, %623 ]
  %534 = load i64, ptr %59, align 8, !tbaa !58
  %535 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %534, i64 %533), !nosanitize !49
  %536 = extractvalue { i64, i1 } %535, 1, !nosanitize !49
  br i1 %536, label %537, label %538, !prof !50, !nosanitize !49

537:                                              ; preds = %531
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

538:                                              ; preds = %531
  %539 = extractvalue { i64, i1 } %535, 0, !nosanitize !49
  %540 = load i64, ptr %527, align 8, !tbaa !45
  %541 = icmp ugt i64 %539, %540
  br i1 %541, label %542, label %626

542:                                              ; preds = %538
  %543 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %540, i64 %534), !nosanitize !49
  %544 = extractvalue { i64, i1 } %543, 0, !nosanitize !49
  %545 = extractvalue { i64, i1 } %543, 1, !nosanitize !49
  br i1 %545, label %546, label %547, !prof !50, !nosanitize !49

546:                                              ; preds = %542
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

547:                                              ; preds = %542
  %548 = load ptr, ptr %528, align 8, !tbaa !44
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 %534
  %550 = load ptr, ptr %509, align 8, !tbaa !31
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 24
  %552 = load ptr, ptr %551, align 8, !tbaa !105
  %553 = load i64, ptr %519, align 8, !tbaa !111
  %554 = getelementptr inbounds nuw i8, ptr %552, i64 %553
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %549, ptr align 1 %554, i64 %544, i1 false)
  %555 = load i64, ptr %527, align 8, !tbaa !45
  store i64 %555, ptr %59, align 8, !tbaa !58
  %556 = load ptr, ptr %509, align 8, !tbaa !31
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 68
  %558 = load i32, ptr %557, align 4, !tbaa !107
  %559 = icmp ne i32 %558, 0
  %560 = icmp ugt i64 %555, %532
  %561 = select i1 %559, i1 %560, i1 false
  br i1 %561, label %562, label %568

562:                                              ; preds = %547
  %563 = sub nuw i64 %555, %532
  %564 = load ptr, ptr %528, align 8, !tbaa !44
  %565 = getelementptr inbounds nuw i8, ptr %564, i64 %532
  %566 = load i64, ptr %529, align 8, !tbaa !60
  %567 = tail call i64 @crc32_z(i64 noundef %566, ptr noundef %565, i64 noundef %563) #10
  store i64 %567, ptr %529, align 8, !tbaa !60
  br label %568

568:                                              ; preds = %562, %547
  %569 = load i64, ptr %519, align 8, !tbaa !111
  %570 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %569, i64 %544), !nosanitize !49
  %571 = extractvalue { i64, i1 } %570, 1, !nosanitize !49
  br i1 %571, label %572, label %573, !prof !50, !nosanitize !49

572:                                              ; preds = %568
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

573:                                              ; preds = %568
  %574 = extractvalue { i64, i1 } %570, 0, !nosanitize !49
  store i64 %574, ptr %519, align 8, !tbaa !111
  %575 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %575) #10
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 40
  %577 = load i64, ptr %576, align 8, !tbaa !58
  %578 = load i32, ptr %50, align 8, !tbaa !100
  %579 = zext i32 %578 to i64
  %580 = tail call i64 @llvm.umin.i64(i64 %577, i64 %579)
  %581 = trunc nuw i64 %580 to i32
  %582 = icmp eq i64 %580, 0
  br i1 %582, label %613, label %583

583:                                              ; preds = %573
  %584 = load ptr, ptr %30, align 8, !tbaa !99
  %585 = getelementptr inbounds nuw i8, ptr %575, i64 32
  %586 = load ptr, ptr %585, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %584, ptr align 1 %586, i64 %580, i1 false)
  %587 = load ptr, ptr %30, align 8, !tbaa !99
  %588 = getelementptr inbounds nuw i8, ptr %587, i64 %580
  store ptr %588, ptr %30, align 8, !tbaa !99
  %589 = load ptr, ptr %585, align 8, !tbaa !59
  %590 = getelementptr inbounds nuw i8, ptr %589, i64 %580
  store ptr %590, ptr %585, align 8, !tbaa !59
  %591 = load i64, ptr %530, align 8, !tbaa !101
  %592 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %591, i64 %580), !nosanitize !49
  %593 = extractvalue { i64, i1 } %592, 1, !nosanitize !49
  br i1 %593, label %594, label %595, !prof !50, !nosanitize !49

594:                                              ; preds = %583
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

595:                                              ; preds = %583
  %596 = extractvalue { i64, i1 } %592, 0, !nosanitize !49
  store i64 %596, ptr %530, align 8, !tbaa !101
  %597 = load i32, ptr %50, align 8, !tbaa !100
  %598 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %597, i32 %581), !nosanitize !49
  %599 = extractvalue { i32, i1 } %598, 1, !nosanitize !49
  br i1 %599, label %600, label %601, !prof !50, !nosanitize !49

600:                                              ; preds = %595
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

601:                                              ; preds = %595
  %602 = extractvalue { i32, i1 } %598, 0, !nosanitize !49
  store i32 %602, ptr %50, align 8, !tbaa !100
  %603 = load i64, ptr %576, align 8, !tbaa !58
  %604 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %603, i64 %580), !nosanitize !49
  %605 = extractvalue { i64, i1 } %604, 1, !nosanitize !49
  br i1 %605, label %606, label %607, !prof !50, !nosanitize !49

606:                                              ; preds = %601
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

607:                                              ; preds = %601
  %608 = extractvalue { i64, i1 } %604, 0, !nosanitize !49
  store i64 %608, ptr %576, align 8, !tbaa !58
  %609 = icmp eq i64 %608, 0
  br i1 %609, label %610, label %613

610:                                              ; preds = %607
  %611 = getelementptr inbounds nuw i8, ptr %575, i64 16
  %612 = load ptr, ptr %611, align 8, !tbaa !44
  store ptr %612, ptr %585, align 8, !tbaa !59
  br label %613

613:                                              ; preds = %610, %607, %573
  %614 = load i64, ptr %59, align 8, !tbaa !58
  %615 = icmp eq i64 %614, 0
  br i1 %615, label %617, label %616

616:                                              ; preds = %613
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %623

617:                                              ; preds = %613
  %618 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %533, i64 %544), !nosanitize !49
  %619 = extractvalue { i64, i1 } %618, 1, !nosanitize !49
  br i1 %619, label %620, label %621, !prof !50, !nosanitize !49

620:                                              ; preds = %617
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

621:                                              ; preds = %617
  %622 = extractvalue { i64, i1 } %618, 0, !nosanitize !49
  br label %623

623:                                              ; preds = %621, %616
  %624 = phi i64 [ %532, %616 ], [ 0, %621 ]
  %625 = phi i64 [ %533, %616 ], [ %622, %621 ]
  br i1 %615, label %531, label %655, !llvm.loop !112

626:                                              ; preds = %538
  %627 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %628 = load ptr, ptr %627, align 8, !tbaa !44
  %629 = getelementptr inbounds nuw i8, ptr %628, i64 %534
  %630 = load ptr, ptr %509, align 8, !tbaa !31
  %631 = getelementptr inbounds nuw i8, ptr %630, i64 24
  %632 = load ptr, ptr %631, align 8, !tbaa !105
  %633 = load i64, ptr %519, align 8, !tbaa !111
  %634 = getelementptr inbounds nuw i8, ptr %632, i64 %633
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %629, ptr align 1 %634, i64 %533, i1 false)
  %635 = load i64, ptr %59, align 8, !tbaa !58
  %636 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %635, i64 %533), !nosanitize !49
  %637 = extractvalue { i64, i1 } %636, 0, !nosanitize !49
  %638 = extractvalue { i64, i1 } %636, 1, !nosanitize !49
  br i1 %638, label %639, label %640, !prof !50, !nosanitize !49

639:                                              ; preds = %626
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

640:                                              ; preds = %626
  store i64 %637, ptr %59, align 8, !tbaa !58
  %641 = load ptr, ptr %509, align 8, !tbaa !31
  %642 = getelementptr inbounds nuw i8, ptr %641, i64 68
  %643 = load i32, ptr %642, align 4, !tbaa !107
  %644 = icmp ne i32 %643, 0
  %645 = icmp ugt i64 %637, %532
  %646 = select i1 %644, i1 %645, i1 false
  br i1 %646, label %647, label %654

647:                                              ; preds = %640
  %648 = sub nuw i64 %637, %532
  %649 = load ptr, ptr %627, align 8, !tbaa !44
  %650 = getelementptr inbounds nuw i8, ptr %649, i64 %532
  %651 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %652 = load i64, ptr %651, align 8, !tbaa !60
  %653 = tail call i64 @crc32_z(i64 noundef %652, ptr noundef %650, i64 noundef %648) #10
  store i64 %653, ptr %651, align 8, !tbaa !60
  br label %654

654:                                              ; preds = %647, %640
  store i64 0, ptr %519, align 8, !tbaa !111
  br label %655

655:                                              ; preds = %654, %623
  br i1 %541, label %1165, label %656

656:                                              ; preds = %655, %508
  store i32 73, ptr %41, align 8, !tbaa !29
  br label %657

657:                                              ; preds = %656, %505
  %658 = load i32, ptr %41, align 8, !tbaa !29
  %659 = icmp eq i32 %658, 73
  br i1 %659, label %660, label %774

660:                                              ; preds = %657
  %661 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %662 = load ptr, ptr %661, align 8, !tbaa !31
  %663 = getelementptr inbounds nuw i8, ptr %662, i64 40
  %664 = load ptr, ptr %663, align 8, !tbaa !104
  %665 = icmp eq ptr %664, null
  br i1 %665, label %773, label %666

666:                                              ; preds = %660
  %667 = load i64, ptr %59, align 8, !tbaa !58
  %668 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %669 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %670 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %671 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %672 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %673 = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %674

674:                                              ; preds = %750, %666
  %675 = phi i64 [ %667, %666 ], [ %736, %750 ]
  %676 = load i64, ptr %59, align 8, !tbaa !58
  %677 = load i64, ptr %668, align 8, !tbaa !45
  %678 = icmp eq i64 %676, %677
  br i1 %678, label %679, label %735

679:                                              ; preds = %674
  %680 = load ptr, ptr %661, align 8, !tbaa !31
  %681 = getelementptr inbounds nuw i8, ptr %680, i64 68
  %682 = load i32, ptr %681, align 4, !tbaa !107
  %683 = icmp ne i32 %682, 0
  %684 = icmp ugt i64 %676, %675
  %685 = select i1 %683, i1 %684, i1 false
  br i1 %685, label %686, label %692

686:                                              ; preds = %679
  %687 = sub nuw i64 %676, %675
  %688 = load ptr, ptr %669, align 8, !tbaa !44
  %689 = getelementptr inbounds nuw i8, ptr %688, i64 %675
  %690 = load i64, ptr %670, align 8, !tbaa !60
  %691 = tail call i64 @crc32_z(i64 noundef %690, ptr noundef %689, i64 noundef %687) #10
  store i64 %691, ptr %670, align 8, !tbaa !60
  br label %692

692:                                              ; preds = %686, %679
  %693 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %693) #10
  %694 = getelementptr inbounds nuw i8, ptr %693, i64 40
  %695 = load i64, ptr %694, align 8, !tbaa !58
  %696 = load i32, ptr %50, align 8, !tbaa !100
  %697 = zext i32 %696 to i64
  %698 = tail call i64 @llvm.umin.i64(i64 %695, i64 %697)
  %699 = trunc nuw i64 %698 to i32
  %700 = icmp eq i64 %698, 0
  br i1 %700, label %731, label %701

701:                                              ; preds = %692
  %702 = load ptr, ptr %30, align 8, !tbaa !99
  %703 = getelementptr inbounds nuw i8, ptr %693, i64 32
  %704 = load ptr, ptr %703, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %702, ptr align 1 %704, i64 %698, i1 false)
  %705 = load ptr, ptr %30, align 8, !tbaa !99
  %706 = getelementptr inbounds nuw i8, ptr %705, i64 %698
  store ptr %706, ptr %30, align 8, !tbaa !99
  %707 = load ptr, ptr %703, align 8, !tbaa !59
  %708 = getelementptr inbounds nuw i8, ptr %707, i64 %698
  store ptr %708, ptr %703, align 8, !tbaa !59
  %709 = load i64, ptr %671, align 8, !tbaa !101
  %710 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %709, i64 %698), !nosanitize !49
  %711 = extractvalue { i64, i1 } %710, 1, !nosanitize !49
  br i1 %711, label %712, label %713, !prof !50, !nosanitize !49

712:                                              ; preds = %701
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

713:                                              ; preds = %701
  %714 = extractvalue { i64, i1 } %710, 0, !nosanitize !49
  store i64 %714, ptr %671, align 8, !tbaa !101
  %715 = load i32, ptr %50, align 8, !tbaa !100
  %716 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %715, i32 %699), !nosanitize !49
  %717 = extractvalue { i32, i1 } %716, 1, !nosanitize !49
  br i1 %717, label %718, label %719, !prof !50, !nosanitize !49

718:                                              ; preds = %713
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

719:                                              ; preds = %713
  %720 = extractvalue { i32, i1 } %716, 0, !nosanitize !49
  store i32 %720, ptr %50, align 8, !tbaa !100
  %721 = load i64, ptr %694, align 8, !tbaa !58
  %722 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %721, i64 %698), !nosanitize !49
  %723 = extractvalue { i64, i1 } %722, 1, !nosanitize !49
  br i1 %723, label %724, label %725, !prof !50, !nosanitize !49

724:                                              ; preds = %719
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

725:                                              ; preds = %719
  %726 = extractvalue { i64, i1 } %722, 0, !nosanitize !49
  store i64 %726, ptr %694, align 8, !tbaa !58
  %727 = icmp eq i64 %726, 0
  br i1 %727, label %728, label %731

728:                                              ; preds = %725
  %729 = getelementptr inbounds nuw i8, ptr %693, i64 16
  %730 = load ptr, ptr %729, align 8, !tbaa !44
  store ptr %730, ptr %703, align 8, !tbaa !59
  br label %731

731:                                              ; preds = %728, %725, %692
  %732 = load i64, ptr %59, align 8, !tbaa !58
  %733 = icmp eq i64 %732, 0
  br i1 %733, label %735, label %734

734:                                              ; preds = %731
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1165

735:                                              ; preds = %731, %674
  %736 = phi i64 [ %675, %674 ], [ 0, %731 ]
  %737 = load i64, ptr %672, align 8, !tbaa !111
  %738 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %737, i64 1), !nosanitize !49
  %739 = extractvalue { i64, i1 } %738, 1, !nosanitize !49
  br i1 %739, label %740, label %741, !prof !50, !nosanitize !49

740:                                              ; preds = %735
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

741:                                              ; preds = %735
  %742 = extractvalue { i64, i1 } %738, 0, !nosanitize !49
  %743 = load ptr, ptr %661, align 8, !tbaa !31
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 40
  %745 = load ptr, ptr %744, align 8, !tbaa !104
  store i64 %742, ptr %672, align 8, !tbaa !111
  %746 = load i64, ptr %59, align 8, !tbaa !58
  %747 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %746, i64 1), !nosanitize !49
  %748 = extractvalue { i64, i1 } %747, 1, !nosanitize !49
  br i1 %748, label %749, label %750, !prof !50, !nosanitize !49

749:                                              ; preds = %741
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

750:                                              ; preds = %741
  %751 = extractvalue { i64, i1 } %747, 0, !nosanitize !49
  %752 = load ptr, ptr %673, align 8, !tbaa !44
  %753 = getelementptr inbounds nuw i8, ptr %745, i64 %737
  %754 = load i8, ptr %753, align 1, !tbaa !8
  store i64 %751, ptr %59, align 8, !tbaa !58
  %755 = getelementptr inbounds nuw i8, ptr %752, i64 %746
  store i8 %754, ptr %755, align 1, !tbaa !8
  %756 = icmp eq i8 %754, 0
  br i1 %756, label %757, label %674, !llvm.loop !113

757:                                              ; preds = %750
  %758 = load ptr, ptr %661, align 8, !tbaa !31
  %759 = getelementptr inbounds nuw i8, ptr %758, i64 68
  %760 = load i32, ptr %759, align 4, !tbaa !107
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %772, label %762

762:                                              ; preds = %757
  %763 = load i64, ptr %59, align 8, !tbaa !58
  %764 = icmp ugt i64 %763, %736
  br i1 %764, label %765, label %772

765:                                              ; preds = %762
  %766 = sub nuw i64 %763, %736
  %767 = load ptr, ptr %673, align 8, !tbaa !44
  %768 = getelementptr inbounds nuw i8, ptr %767, i64 %736
  %769 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %770 = load i64, ptr %769, align 8, !tbaa !60
  %771 = tail call i64 @crc32_z(i64 noundef %770, ptr noundef %768, i64 noundef %766) #10
  store i64 %771, ptr %769, align 8, !tbaa !60
  br label %772

772:                                              ; preds = %765, %762, %757
  store i64 0, ptr %672, align 8, !tbaa !111
  br label %773

773:                                              ; preds = %772, %660
  store i32 91, ptr %41, align 8, !tbaa !29
  br label %774

774:                                              ; preds = %773, %657
  %775 = load i32, ptr %41, align 8, !tbaa !29
  %776 = icmp eq i32 %775, 91
  br i1 %776, label %777, label %890

777:                                              ; preds = %774
  %778 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %779 = load ptr, ptr %778, align 8, !tbaa !31
  %780 = getelementptr inbounds nuw i8, ptr %779, i64 56
  %781 = load ptr, ptr %780, align 8, !tbaa !102
  %782 = icmp eq ptr %781, null
  br i1 %782, label %889, label %783

783:                                              ; preds = %777
  %784 = load i64, ptr %59, align 8, !tbaa !58
  %785 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %786 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %787 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %788 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %789 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %790 = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %791

791:                                              ; preds = %867, %783
  %792 = phi i64 [ %784, %783 ], [ %853, %867 ]
  %793 = load i64, ptr %59, align 8, !tbaa !58
  %794 = load i64, ptr %785, align 8, !tbaa !45
  %795 = icmp eq i64 %793, %794
  br i1 %795, label %796, label %852

796:                                              ; preds = %791
  %797 = load ptr, ptr %778, align 8, !tbaa !31
  %798 = getelementptr inbounds nuw i8, ptr %797, i64 68
  %799 = load i32, ptr %798, align 4, !tbaa !107
  %800 = icmp ne i32 %799, 0
  %801 = icmp ugt i64 %793, %792
  %802 = select i1 %800, i1 %801, i1 false
  br i1 %802, label %803, label %809

803:                                              ; preds = %796
  %804 = sub nuw i64 %793, %792
  %805 = load ptr, ptr %786, align 8, !tbaa !44
  %806 = getelementptr inbounds nuw i8, ptr %805, i64 %792
  %807 = load i64, ptr %787, align 8, !tbaa !60
  %808 = tail call i64 @crc32_z(i64 noundef %807, ptr noundef %806, i64 noundef %804) #10
  store i64 %808, ptr %787, align 8, !tbaa !60
  br label %809

809:                                              ; preds = %803, %796
  %810 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %810) #10
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 40
  %812 = load i64, ptr %811, align 8, !tbaa !58
  %813 = load i32, ptr %50, align 8, !tbaa !100
  %814 = zext i32 %813 to i64
  %815 = tail call i64 @llvm.umin.i64(i64 %812, i64 %814)
  %816 = trunc nuw i64 %815 to i32
  %817 = icmp eq i64 %815, 0
  br i1 %817, label %848, label %818

818:                                              ; preds = %809
  %819 = load ptr, ptr %30, align 8, !tbaa !99
  %820 = getelementptr inbounds nuw i8, ptr %810, i64 32
  %821 = load ptr, ptr %820, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %819, ptr align 1 %821, i64 %815, i1 false)
  %822 = load ptr, ptr %30, align 8, !tbaa !99
  %823 = getelementptr inbounds nuw i8, ptr %822, i64 %815
  store ptr %823, ptr %30, align 8, !tbaa !99
  %824 = load ptr, ptr %820, align 8, !tbaa !59
  %825 = getelementptr inbounds nuw i8, ptr %824, i64 %815
  store ptr %825, ptr %820, align 8, !tbaa !59
  %826 = load i64, ptr %788, align 8, !tbaa !101
  %827 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %826, i64 %815), !nosanitize !49
  %828 = extractvalue { i64, i1 } %827, 1, !nosanitize !49
  br i1 %828, label %829, label %830, !prof !50, !nosanitize !49

829:                                              ; preds = %818
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

830:                                              ; preds = %818
  %831 = extractvalue { i64, i1 } %827, 0, !nosanitize !49
  store i64 %831, ptr %788, align 8, !tbaa !101
  %832 = load i32, ptr %50, align 8, !tbaa !100
  %833 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %832, i32 %816), !nosanitize !49
  %834 = extractvalue { i32, i1 } %833, 1, !nosanitize !49
  br i1 %834, label %835, label %836, !prof !50, !nosanitize !49

835:                                              ; preds = %830
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

836:                                              ; preds = %830
  %837 = extractvalue { i32, i1 } %833, 0, !nosanitize !49
  store i32 %837, ptr %50, align 8, !tbaa !100
  %838 = load i64, ptr %811, align 8, !tbaa !58
  %839 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %838, i64 %815), !nosanitize !49
  %840 = extractvalue { i64, i1 } %839, 1, !nosanitize !49
  br i1 %840, label %841, label %842, !prof !50, !nosanitize !49

841:                                              ; preds = %836
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

842:                                              ; preds = %836
  %843 = extractvalue { i64, i1 } %839, 0, !nosanitize !49
  store i64 %843, ptr %811, align 8, !tbaa !58
  %844 = icmp eq i64 %843, 0
  br i1 %844, label %845, label %848

845:                                              ; preds = %842
  %846 = getelementptr inbounds nuw i8, ptr %810, i64 16
  %847 = load ptr, ptr %846, align 8, !tbaa !44
  store ptr %847, ptr %820, align 8, !tbaa !59
  br label %848

848:                                              ; preds = %845, %842, %809
  %849 = load i64, ptr %59, align 8, !tbaa !58
  %850 = icmp eq i64 %849, 0
  br i1 %850, label %852, label %851

851:                                              ; preds = %848
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1165

852:                                              ; preds = %848, %791
  %853 = phi i64 [ %792, %791 ], [ 0, %848 ]
  %854 = load i64, ptr %789, align 8, !tbaa !111
  %855 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %854, i64 1), !nosanitize !49
  %856 = extractvalue { i64, i1 } %855, 1, !nosanitize !49
  br i1 %856, label %857, label %858, !prof !50, !nosanitize !49

857:                                              ; preds = %852
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

858:                                              ; preds = %852
  %859 = extractvalue { i64, i1 } %855, 0, !nosanitize !49
  %860 = load ptr, ptr %778, align 8, !tbaa !31
  %861 = getelementptr inbounds nuw i8, ptr %860, i64 56
  %862 = load ptr, ptr %861, align 8, !tbaa !102
  store i64 %859, ptr %789, align 8, !tbaa !111
  %863 = load i64, ptr %59, align 8, !tbaa !58
  %864 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %863, i64 1), !nosanitize !49
  %865 = extractvalue { i64, i1 } %864, 1, !nosanitize !49
  br i1 %865, label %866, label %867, !prof !50, !nosanitize !49

866:                                              ; preds = %858
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

867:                                              ; preds = %858
  %868 = extractvalue { i64, i1 } %864, 0, !nosanitize !49
  %869 = load ptr, ptr %790, align 8, !tbaa !44
  %870 = getelementptr inbounds nuw i8, ptr %862, i64 %854
  %871 = load i8, ptr %870, align 1, !tbaa !8
  store i64 %868, ptr %59, align 8, !tbaa !58
  %872 = getelementptr inbounds nuw i8, ptr %869, i64 %863
  store i8 %871, ptr %872, align 1, !tbaa !8
  %873 = icmp eq i8 %871, 0
  br i1 %873, label %874, label %791, !llvm.loop !114

874:                                              ; preds = %867
  %875 = load ptr, ptr %778, align 8, !tbaa !31
  %876 = getelementptr inbounds nuw i8, ptr %875, i64 68
  %877 = load i32, ptr %876, align 4, !tbaa !107
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %889, label %879

879:                                              ; preds = %874
  %880 = load i64, ptr %59, align 8, !tbaa !58
  %881 = icmp ugt i64 %880, %853
  br i1 %881, label %882, label %889

882:                                              ; preds = %879
  %883 = sub nuw i64 %880, %853
  %884 = load ptr, ptr %790, align 8, !tbaa !44
  %885 = getelementptr inbounds nuw i8, ptr %884, i64 %853
  %886 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %887 = load i64, ptr %886, align 8, !tbaa !60
  %888 = tail call i64 @crc32_z(i64 noundef %887, ptr noundef %885, i64 noundef %883) #10
  store i64 %888, ptr %886, align 8, !tbaa !60
  br label %889

889:                                              ; preds = %882, %879, %874, %777
  store i32 103, ptr %41, align 8, !tbaa !29
  br label %890

890:                                              ; preds = %889, %774
  %891 = load i32, ptr %41, align 8, !tbaa !29
  %892 = icmp eq i32 %891, 103
  br i1 %892, label %893, label %942

893:                                              ; preds = %890
  %894 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %895 = load ptr, ptr %894, align 8, !tbaa !31
  %896 = getelementptr inbounds nuw i8, ptr %895, i64 68
  %897 = load i32, ptr %896, align 4, !tbaa !107
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %938, label %899

899:                                              ; preds = %893
  %900 = load i64, ptr %59, align 8, !tbaa !58
  %901 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %900, i64 2), !nosanitize !49
  %902 = extractvalue { i64, i1 } %901, 1, !nosanitize !49
  br i1 %902, label %903, label %904, !prof !50, !nosanitize !49

903:                                              ; preds = %899
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

904:                                              ; preds = %899
  %905 = extractvalue { i64, i1 } %901, 0, !nosanitize !49
  %906 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %907 = load i64, ptr %906, align 8, !tbaa !45
  %908 = icmp ugt i64 %905, %907
  br i1 %908, label %909, label %913

909:                                              ; preds = %904
  tail call fastcc void @flush_pending(ptr noundef %0)
  %910 = load i64, ptr %59, align 8, !tbaa !58
  %911 = icmp eq i64 %910, 0
  br i1 %911, label %913, label %912

912:                                              ; preds = %909
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1165

913:                                              ; preds = %909, %904
  %914 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %915 = load i64, ptr %59, align 8, !tbaa !58
  %916 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %915, i64 1), !nosanitize !49
  %917 = extractvalue { i64, i1 } %916, 1, !nosanitize !49
  br i1 %917, label %918, label %919, !prof !50, !nosanitize !49

918:                                              ; preds = %913
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

919:                                              ; preds = %913
  %920 = extractvalue { i64, i1 } %916, 0, !nosanitize !49
  %921 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %922 = load ptr, ptr %921, align 8, !tbaa !44
  %923 = load i64, ptr %914, align 8, !tbaa !60
  %924 = trunc i64 %923 to i8
  store i64 %920, ptr %59, align 8, !tbaa !58
  %925 = getelementptr inbounds nuw i8, ptr %922, i64 %915
  store i8 %924, ptr %925, align 1, !tbaa !8
  %926 = load i64, ptr %59, align 8, !tbaa !58
  %927 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %926, i64 1), !nosanitize !49
  %928 = extractvalue { i64, i1 } %927, 1, !nosanitize !49
  br i1 %928, label %929, label %930, !prof !50, !nosanitize !49

929:                                              ; preds = %919
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

930:                                              ; preds = %919
  %931 = extractvalue { i64, i1 } %927, 0, !nosanitize !49
  %932 = load ptr, ptr %921, align 8, !tbaa !44
  %933 = load i64, ptr %914, align 8, !tbaa !60
  %934 = lshr i64 %933, 8
  %935 = trunc i64 %934 to i8
  store i64 %931, ptr %59, align 8, !tbaa !58
  %936 = getelementptr inbounds nuw i8, ptr %932, i64 %926
  store i8 %935, ptr %936, align 1, !tbaa !8
  %937 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %937, ptr %914, align 8, !tbaa !60
  br label %938

938:                                              ; preds = %930, %893
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %939 = load i64, ptr %59, align 8, !tbaa !58
  %940 = icmp eq i64 %939, 0
  br i1 %940, label %942, label %941

941:                                              ; preds = %938
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1165

942:                                              ; preds = %938, %890
  %943 = load i32, ptr %34, align 8, !tbaa !82
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %945, label %954

945:                                              ; preds = %942
  %946 = getelementptr inbounds nuw i8, ptr %29, i64 180
  %947 = load i32, ptr %946, align 4, !tbaa !76
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %949, label %954

949:                                              ; preds = %945
  %950 = icmp eq i32 %1, 0
  br i1 %950, label %1016, label %951

951:                                              ; preds = %949
  %952 = load i32, ptr %41, align 8, !tbaa !29
  %953 = icmp eq i32 %952, 666
  br i1 %953, label %1016, label %954

954:                                              ; preds = %951, %945, %942
  %955 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %956 = load i32, ptr %955, align 4, !tbaa !52
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %958, label %960

958:                                              ; preds = %954
  %959 = tail call i32 @deflate_stored(ptr noundef %29, i32 noundef %1)
  br label %973

960:                                              ; preds = %954
  %961 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %962 = load i32, ptr %961, align 8, !tbaa !53
  switch i32 %962, label %967 [
    i32 2, label %963
    i32 3, label %965
  ]

963:                                              ; preds = %960
  %964 = tail call fastcc i32 @deflate_huff(ptr noundef %29, i32 noundef %1)
  br label %973

965:                                              ; preds = %960
  %966 = tail call fastcc i32 @deflate_rle(ptr noundef %29, i32 noundef %1)
  br label %973

967:                                              ; preds = %960
  %968 = sext i32 %956 to i64
  %969 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %968
  %970 = getelementptr inbounds nuw i8, ptr %969, i64 8
  %971 = load ptr, ptr %970, align 8, !tbaa !98
  %972 = tail call i32 %971(ptr noundef %29, i32 noundef %1) #10
  br label %973

973:                                              ; preds = %967, %965, %963, %958
  %974 = phi i32 [ %959, %958 ], [ %964, %963 ], [ %966, %965 ], [ %972, %967 ]
  %975 = and i32 %974, -2
  %976 = icmp eq i32 %975, 2
  br i1 %976, label %977, label %978

977:                                              ; preds = %973
  store i32 666, ptr %41, align 8, !tbaa !29
  br label %978

978:                                              ; preds = %977, %973
  %979 = and i32 %974, -3
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %985

981:                                              ; preds = %978
  %982 = load i32, ptr %50, align 8, !tbaa !100
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %984, label %1165

984:                                              ; preds = %981
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1165

985:                                              ; preds = %978
  %986 = icmp eq i32 %974, 1
  br i1 %986, label %987, label %1016

987:                                              ; preds = %985
  switch i32 %1, label %989 [
    i32 1, label %988
    i32 5, label %1012
  ]

988:                                              ; preds = %987
  tail call void @_tr_align(ptr noundef %29) #10
  br label %1012

989:                                              ; preds = %987
  tail call void @_tr_stored_block(ptr noundef %29, ptr noundef null, i64 noundef 0, i32 noundef 0) #10
  %990 = icmp eq i32 %1, 3
  br i1 %990, label %991, label %1012

991:                                              ; preds = %989
  %992 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %993 = load i32, ptr %992, align 4, !tbaa !36
  %994 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %993, i32 1), !nosanitize !49
  %995 = extractvalue { i32, i1 } %994, 1, !nosanitize !49
  br i1 %995, label %996, label %997, !prof !50, !nosanitize !49

996:                                              ; preds = %991
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

997:                                              ; preds = %991
  %998 = extractvalue { i32, i1 } %994, 0, !nosanitize !49
  %999 = getelementptr inbounds nuw i8, ptr %29, i64 120
  %1000 = load ptr, ptr %999, align 8, !tbaa !41
  %1001 = zext i32 %998 to i64
  %1002 = getelementptr inbounds nuw [2 x i8], ptr %1000, i64 %1001
  store i16 0, ptr %1002, align 2, !tbaa !63
  %1003 = shl nuw nsw i64 %1001, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1000, i8 0, i64 %1003, i1 false)
  %1004 = getelementptr inbounds nuw i8, ptr %29, i64 5960
  store i32 0, ptr %1004, align 8, !tbaa !64
  %1005 = getelementptr inbounds nuw i8, ptr %29, i64 180
  %1006 = load i32, ptr %1005, align 4, !tbaa !76
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1012

1008:                                             ; preds = %997
  %1009 = getelementptr inbounds nuw i8, ptr %29, i64 172
  store i32 0, ptr %1009, align 4, !tbaa !74
  %1010 = getelementptr inbounds nuw i8, ptr %29, i64 152
  store i64 0, ptr %1010, align 8, !tbaa !75
  %1011 = getelementptr inbounds nuw i8, ptr %29, i64 5932
  store i32 0, ptr %1011, align 4, !tbaa !77
  br label %1012

1012:                                             ; preds = %1008, %997, %989, %988, %987
  tail call fastcc void @flush_pending(ptr noundef %0)
  %1013 = load i32, ptr %50, align 8, !tbaa !100
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1015, label %1016

1015:                                             ; preds = %1012
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1165

1016:                                             ; preds = %1012, %985, %951, %949
  br i1 %44, label %1165, label %1017

1017:                                             ; preds = %1016
  %1018 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %1019 = load i32, ptr %1018, align 8, !tbaa !30
  %1020 = icmp slt i32 %1019, 1
  br i1 %1020, label %1165, label %1021

1021:                                             ; preds = %1017
  %1022 = icmp eq i32 %1019, 2
  %1023 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1022, label %1024, label %1113

1024:                                             ; preds = %1021
  %1025 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %1026 = load i64, ptr %59, align 8, !tbaa !58
  %1027 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1026, i64 1), !nosanitize !49
  %1028 = extractvalue { i64, i1 } %1027, 1, !nosanitize !49
  br i1 %1028, label %1029, label %1030, !prof !50, !nosanitize !49

1029:                                             ; preds = %1024
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1030:                                             ; preds = %1024
  %1031 = extractvalue { i64, i1 } %1027, 0, !nosanitize !49
  %1032 = load ptr, ptr %1025, align 8, !tbaa !44
  %1033 = load i64, ptr %1023, align 8, !tbaa !60
  %1034 = trunc i64 %1033 to i8
  store i64 %1031, ptr %59, align 8, !tbaa !58
  %1035 = getelementptr inbounds nuw i8, ptr %1032, i64 %1026
  store i8 %1034, ptr %1035, align 1, !tbaa !8
  %1036 = load i64, ptr %59, align 8, !tbaa !58
  %1037 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1036, i64 1), !nosanitize !49
  %1038 = extractvalue { i64, i1 } %1037, 1, !nosanitize !49
  br i1 %1038, label %1039, label %1040, !prof !50, !nosanitize !49

1039:                                             ; preds = %1030
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1040:                                             ; preds = %1030
  %1041 = extractvalue { i64, i1 } %1037, 0, !nosanitize !49
  %1042 = load ptr, ptr %1025, align 8, !tbaa !44
  %1043 = load i64, ptr %1023, align 8, !tbaa !60
  %1044 = lshr i64 %1043, 8
  %1045 = trunc i64 %1044 to i8
  store i64 %1041, ptr %59, align 8, !tbaa !58
  %1046 = getelementptr inbounds nuw i8, ptr %1042, i64 %1036
  store i8 %1045, ptr %1046, align 1, !tbaa !8
  %1047 = load i64, ptr %59, align 8, !tbaa !58
  %1048 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1047, i64 1), !nosanitize !49
  %1049 = extractvalue { i64, i1 } %1048, 1, !nosanitize !49
  br i1 %1049, label %1050, label %1051, !prof !50, !nosanitize !49

1050:                                             ; preds = %1040
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1051:                                             ; preds = %1040
  %1052 = extractvalue { i64, i1 } %1048, 0, !nosanitize !49
  %1053 = load ptr, ptr %1025, align 8, !tbaa !44
  %1054 = load i64, ptr %1023, align 8, !tbaa !60
  %1055 = lshr i64 %1054, 16
  %1056 = trunc i64 %1055 to i8
  store i64 %1052, ptr %59, align 8, !tbaa !58
  %1057 = getelementptr inbounds nuw i8, ptr %1053, i64 %1047
  store i8 %1056, ptr %1057, align 1, !tbaa !8
  %1058 = load i64, ptr %59, align 8, !tbaa !58
  %1059 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1058, i64 1), !nosanitize !49
  %1060 = extractvalue { i64, i1 } %1059, 1, !nosanitize !49
  br i1 %1060, label %1061, label %1062, !prof !50, !nosanitize !49

1061:                                             ; preds = %1051
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1062:                                             ; preds = %1051
  %1063 = extractvalue { i64, i1 } %1059, 0, !nosanitize !49
  %1064 = load ptr, ptr %1025, align 8, !tbaa !44
  %1065 = load i64, ptr %1023, align 8, !tbaa !60
  %1066 = lshr i64 %1065, 24
  %1067 = trunc i64 %1066 to i8
  store i64 %1063, ptr %59, align 8, !tbaa !58
  %1068 = getelementptr inbounds nuw i8, ptr %1064, i64 %1058
  store i8 %1067, ptr %1068, align 1, !tbaa !8
  %1069 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1070 = load i64, ptr %59, align 8, !tbaa !58
  %1071 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1070, i64 1), !nosanitize !49
  %1072 = extractvalue { i64, i1 } %1071, 1, !nosanitize !49
  br i1 %1072, label %1073, label %1074, !prof !50, !nosanitize !49

1073:                                             ; preds = %1062
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1074:                                             ; preds = %1062
  %1075 = extractvalue { i64, i1 } %1071, 0, !nosanitize !49
  %1076 = load ptr, ptr %1025, align 8, !tbaa !44
  %1077 = load i64, ptr %1069, align 8, !tbaa !56
  %1078 = trunc i64 %1077 to i8
  store i64 %1075, ptr %59, align 8, !tbaa !58
  %1079 = getelementptr inbounds nuw i8, ptr %1076, i64 %1070
  store i8 %1078, ptr %1079, align 1, !tbaa !8
  %1080 = load i64, ptr %59, align 8, !tbaa !58
  %1081 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1080, i64 1), !nosanitize !49
  %1082 = extractvalue { i64, i1 } %1081, 1, !nosanitize !49
  br i1 %1082, label %1083, label %1084, !prof !50, !nosanitize !49

1083:                                             ; preds = %1074
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1084:                                             ; preds = %1074
  %1085 = extractvalue { i64, i1 } %1081, 0, !nosanitize !49
  %1086 = load ptr, ptr %1025, align 8, !tbaa !44
  %1087 = load i64, ptr %1069, align 8, !tbaa !56
  %1088 = lshr i64 %1087, 8
  %1089 = trunc i64 %1088 to i8
  store i64 %1085, ptr %59, align 8, !tbaa !58
  %1090 = getelementptr inbounds nuw i8, ptr %1086, i64 %1080
  store i8 %1089, ptr %1090, align 1, !tbaa !8
  %1091 = load i64, ptr %59, align 8, !tbaa !58
  %1092 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1091, i64 1), !nosanitize !49
  %1093 = extractvalue { i64, i1 } %1092, 1, !nosanitize !49
  br i1 %1093, label %1094, label %1095, !prof !50, !nosanitize !49

1094:                                             ; preds = %1084
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1095:                                             ; preds = %1084
  %1096 = extractvalue { i64, i1 } %1092, 0, !nosanitize !49
  %1097 = load ptr, ptr %1025, align 8, !tbaa !44
  %1098 = load i64, ptr %1069, align 8, !tbaa !56
  %1099 = lshr i64 %1098, 16
  %1100 = trunc i64 %1099 to i8
  store i64 %1096, ptr %59, align 8, !tbaa !58
  %1101 = getelementptr inbounds nuw i8, ptr %1097, i64 %1091
  store i8 %1100, ptr %1101, align 1, !tbaa !8
  %1102 = load i64, ptr %59, align 8, !tbaa !58
  %1103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1102, i64 1), !nosanitize !49
  %1104 = extractvalue { i64, i1 } %1103, 1, !nosanitize !49
  br i1 %1104, label %1105, label %1106, !prof !50, !nosanitize !49

1105:                                             ; preds = %1095
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1106:                                             ; preds = %1095
  %1107 = extractvalue { i64, i1 } %1103, 0, !nosanitize !49
  %1108 = load ptr, ptr %1025, align 8, !tbaa !44
  %1109 = load i64, ptr %1069, align 8, !tbaa !56
  %1110 = lshr i64 %1109, 24
  %1111 = trunc i64 %1110 to i8
  store i64 %1107, ptr %59, align 8, !tbaa !58
  %1112 = getelementptr inbounds nuw i8, ptr %1108, i64 %1102
  store i8 %1111, ptr %1112, align 1, !tbaa !8
  br label %1156

1113:                                             ; preds = %1021
  %1114 = load i64, ptr %1023, align 8, !tbaa !60
  %1115 = lshr i64 %1114, 16
  %1116 = load i64, ptr %59, align 8, !tbaa !58
  %1117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1116, i64 1), !nosanitize !49
  %1118 = extractvalue { i64, i1 } %1117, 1, !nosanitize !49
  br i1 %1118, label %1119, label %1120, !prof !50, !nosanitize !49

1119:                                             ; preds = %1113
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1120:                                             ; preds = %1113
  %1121 = extractvalue { i64, i1 } %1117, 0, !nosanitize !49
  %1122 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %1123 = load ptr, ptr %1122, align 8, !tbaa !44
  %1124 = lshr i64 %1114, 24
  %1125 = trunc i64 %1124 to i8
  store i64 %1121, ptr %59, align 8, !tbaa !58
  %1126 = getelementptr inbounds nuw i8, ptr %1123, i64 %1116
  store i8 %1125, ptr %1126, align 1, !tbaa !8
  %1127 = load i64, ptr %59, align 8, !tbaa !58
  %1128 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1127, i64 1), !nosanitize !49
  %1129 = extractvalue { i64, i1 } %1128, 1, !nosanitize !49
  br i1 %1129, label %1130, label %1131, !prof !50, !nosanitize !49

1130:                                             ; preds = %1120
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1131:                                             ; preds = %1120
  %1132 = extractvalue { i64, i1 } %1128, 0, !nosanitize !49
  %1133 = load ptr, ptr %1122, align 8, !tbaa !44
  %1134 = trunc i64 %1115 to i8
  store i64 %1132, ptr %59, align 8, !tbaa !58
  %1135 = getelementptr inbounds nuw i8, ptr %1133, i64 %1127
  store i8 %1134, ptr %1135, align 1, !tbaa !8
  %1136 = load i64, ptr %1023, align 8, !tbaa !60
  %1137 = trunc i64 %1136 to i8
  %1138 = load i64, ptr %59, align 8, !tbaa !58
  %1139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1138, i64 1), !nosanitize !49
  %1140 = extractvalue { i64, i1 } %1139, 1, !nosanitize !49
  br i1 %1140, label %1141, label %1142, !prof !50, !nosanitize !49

1141:                                             ; preds = %1131
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1142:                                             ; preds = %1131
  %1143 = extractvalue { i64, i1 } %1139, 0, !nosanitize !49
  %1144 = load ptr, ptr %1122, align 8, !tbaa !44
  %1145 = lshr i64 %1136, 8
  %1146 = trunc i64 %1145 to i8
  store i64 %1143, ptr %59, align 8, !tbaa !58
  %1147 = getelementptr inbounds nuw i8, ptr %1144, i64 %1138
  store i8 %1146, ptr %1147, align 1, !tbaa !8
  %1148 = load i64, ptr %59, align 8, !tbaa !58
  %1149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1148, i64 1), !nosanitize !49
  %1150 = extractvalue { i64, i1 } %1149, 1, !nosanitize !49
  br i1 %1150, label %1151, label %1152, !prof !50, !nosanitize !49

1151:                                             ; preds = %1142
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1152:                                             ; preds = %1142
  %1153 = extractvalue { i64, i1 } %1149, 0, !nosanitize !49
  %1154 = load ptr, ptr %1122, align 8, !tbaa !44
  store i64 %1153, ptr %59, align 8, !tbaa !58
  %1155 = getelementptr inbounds nuw i8, ptr %1154, i64 %1148
  store i8 %1137, ptr %1155, align 1, !tbaa !8
  br label %1156

1156:                                             ; preds = %1152, %1106
  tail call fastcc void @flush_pending(ptr noundef %0)
  %1157 = load i32, ptr %1018, align 8, !tbaa !30
  %1158 = icmp sgt i32 %1157, 0
  br i1 %1158, label %1159, label %1161

1159:                                             ; preds = %1156
  %1160 = sub nsw i32 0, %1157
  store i32 %1160, ptr %1018, align 8, !tbaa !30
  br label %1161

1161:                                             ; preds = %1159, %1156
  %1162 = load i64, ptr %59, align 8, !tbaa !58
  %1163 = icmp eq i64 %1162, 0
  %1164 = zext i1 %1163 to i32
  br label %1165

1165:                                             ; preds = %1161, %1017, %1016, %1015, %984, %981, %941, %912, %851, %734, %655, %351, %245, %132, %124, %103, %53, %46, %23
  %1166 = phi i32 [ -5, %124 ], [ -2, %46 ], [ -5, %53 ], [ 0, %103 ], [ -5, %132 ], [ 0, %351 ], [ 0, %912 ], [ 0, %941 ], [ -2, %23 ], [ 0, %1016 ], [ %1164, %1161 ], [ 1, %1017 ], [ 0, %851 ], [ 0, %734 ], [ 0, %655 ], [ 0, %245 ], [ 0, %984 ], [ 0, %1015 ], [ 0, %981 ]
  ret i32 %1166
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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

32:                                               ; preds = %25, %22, %19, %15, %11, %7, %5
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !49
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !49
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !49
  br i1 %11, label %12, label %13, !prof !50, !nosanitize !49

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !49
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !49
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !49
  br i1 %17, label %18, label %19, !prof !50, !nosanitize !49

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !49
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !49
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !49
  br i1 %22, label %23, label %24, !prof !50, !nosanitize !49

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !49
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !49
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !49
  br i1 %36, label %37, label %38, !prof !50, !nosanitize !49

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !49
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !49
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !49
  br i1 %42, label %43, label %44, !prof !50, !nosanitize !49

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !49
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !49
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !49
  br i1 %47, label %48, label %49, !prof !50, !nosanitize !49

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
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
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %84, label %89

78:                                               ; preds = %69, %66, %62, %58, %54, %49
  %79 = tail call i64 @llvm.umax.i64(i64 %27, i64 %52)
  %80 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %79, i64 18), !nosanitize !49
  %81 = extractvalue { i64, i1 } %80, 0, !nosanitize !49
  %82 = extractvalue { i64, i1 } %80, 1, !nosanitize !49
  br i1 %82, label %83, label %224, !prof !50, !nosanitize !49

83:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

84:                                               ; preds = %72
  %85 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %76), !nosanitize !49
  %86 = extractvalue { i32, i1 } %85, 0, !nosanitize !49
  %87 = extractvalue { i32, i1 } %85, 1, !nosanitize !49
  br i1 %87, label %88, label %89, !prof !50, !nosanitize !49

88:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !49
  unreachable, !nosanitize !49

89:                                               ; preds = %84, %72
  %90 = phi i32 [ %86, %84 ], [ %76, %72 ]
  switch i32 %90, label %163 [
    i32 0, label %164
    i32 1, label %91
    i32 2, label %96
  ]

91:                                               ; preds = %89
  %92 = getelementptr inbounds nuw i8, ptr %74, i64 172
  %93 = load i32, ptr %92, align 4, !tbaa !74
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i64 6, i64 10
  br label %164

96:                                               ; preds = %89
  %97 = getelementptr inbounds nuw i8, ptr %74, i64 56
  %98 = load ptr, ptr %97, align 8, !tbaa !31
  %99 = icmp eq ptr %98, null
  br i1 %99, label %164, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds nuw i8, ptr %98, i64 24
  %102 = load ptr, ptr %101, align 8, !tbaa !105
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds nuw i8, ptr %98, i64 32
  %106 = load i32, ptr %105, align 8, !tbaa !110
  %107 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %106, i32 2), !nosanitize !49
  %108 = extractvalue { i32, i1 } %107, 1, !nosanitize !49
  br i1 %108, label %109, label %110, !prof !50, !nosanitize !49

109:                                              ; preds = %104
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

110:                                              ; preds = %104
  %111 = extractvalue { i32, i1 } %107, 0, !nosanitize !49
  %112 = zext i32 %111 to i64
  %113 = add nuw nsw i64 %112, 18
  br label %114

114:                                              ; preds = %110, %100
  %115 = phi i64 [ %113, %110 ], [ 18, %100 ]
  %116 = getelementptr inbounds nuw i8, ptr %98, i64 40
  %117 = load ptr, ptr %116, align 8, !tbaa !104
  %118 = icmp eq ptr %117, null
  br i1 %118, label %133, label %119

119:                                              ; preds = %114
  %120 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %115, i64 1), !nosanitize !49
  %121 = extractvalue { i64, i1 } %120, 1, !nosanitize !49
  br i1 %121, label %126, label %127, !prof !117, !nosanitize !49

122:                                              ; preds = %127
  %123 = getelementptr inbounds nuw i8, ptr %129, i64 1
  %124 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 1), !nosanitize !49
  %125 = extractvalue { i64, i1 } %124, 1, !nosanitize !49
  br i1 %125, label %126, label %127, !prof !118, !llvm.loop !119, !nosanitize !49

126:                                              ; preds = %122, %119
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

127:                                              ; preds = %122, %119
  %128 = phi { i64, i1 } [ %124, %122 ], [ %120, %119 ]
  %129 = phi ptr [ %123, %122 ], [ %117, %119 ]
  %130 = extractvalue { i64, i1 } %128, 0, !nosanitize !49
  %131 = load i8, ptr %129, align 1, !tbaa !8
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %122, !llvm.loop !119

133:                                              ; preds = %127, %114
  %134 = phi i64 [ %115, %114 ], [ %130, %127 ]
  %135 = getelementptr inbounds nuw i8, ptr %98, i64 56
  %136 = load ptr, ptr %135, align 8, !tbaa !102
  %137 = icmp eq ptr %136, null
  br i1 %137, label %152, label %138

138:                                              ; preds = %133
  %139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 1), !nosanitize !49
  %140 = extractvalue { i64, i1 } %139, 1, !nosanitize !49
  br i1 %140, label %145, label %146, !prof !117, !nosanitize !49

141:                                              ; preds = %146
  %142 = getelementptr inbounds nuw i8, ptr %148, i64 1
  %143 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %149, i64 1), !nosanitize !49
  %144 = extractvalue { i64, i1 } %143, 1, !nosanitize !49
  br i1 %144, label %145, label %146, !prof !118, !llvm.loop !120, !nosanitize !49

145:                                              ; preds = %141, %138
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

146:                                              ; preds = %141, %138
  %147 = phi { i64, i1 } [ %143, %141 ], [ %139, %138 ]
  %148 = phi ptr [ %142, %141 ], [ %136, %138 ]
  %149 = extractvalue { i64, i1 } %147, 0, !nosanitize !49
  %150 = load i8, ptr %148, align 1, !tbaa !8
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %141, !llvm.loop !120

152:                                              ; preds = %146, %133
  %153 = phi i64 [ %134, %133 ], [ %149, %146 ]
  %154 = getelementptr inbounds nuw i8, ptr %98, i64 68
  %155 = load i32, ptr %154, align 4, !tbaa !107
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %152
  %158 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %153, i64 2), !nosanitize !49
  %159 = extractvalue { i64, i1 } %158, 1, !nosanitize !49
  br i1 %159, label %160, label %161, !prof !50, !nosanitize !49

160:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

161:                                              ; preds = %157
  %162 = extractvalue { i64, i1 } %158, 0, !nosanitize !49
  br label %164

163:                                              ; preds = %89
  br label %164

164:                                              ; preds = %163, %161, %152, %96, %91, %89
  %165 = phi i64 [ 18, %163 ], [ 18, %96 ], [ %95, %91 ], [ 0, %89 ], [ %162, %161 ], [ %153, %152 ]
  %166 = getelementptr inbounds nuw i8, ptr %74, i64 84
  %167 = load i32, ptr %166, align 4, !tbaa !32
  %168 = icmp eq i32 %167, 15
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = getelementptr inbounds nuw i8, ptr %74, i64 136
  %171 = load i32, ptr %170, align 8, !tbaa !35
  %172 = icmp eq i32 %171, 15
  br i1 %172, label %188, label %173

173:                                              ; preds = %169, %164
  %174 = getelementptr inbounds nuw i8, ptr %74, i64 136
  %175 = load i32, ptr %174, align 8, !tbaa !35
  %176 = icmp ugt i32 %167, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds nuw i8, ptr %74, i64 196
  %179 = load i32, ptr %178, align 4, !tbaa !52
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177, %173
  br label %182

182:                                              ; preds = %181, %177
  %183 = phi i64 [ %52, %181 ], [ %27, %177 ]
  %184 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %183, i64 %165), !nosanitize !49
  %185 = extractvalue { i64, i1 } %184, 0, !nosanitize !49
  %186 = extractvalue { i64, i1 } %184, 1, !nosanitize !49
  br i1 %186, label %187, label %224, !prof !50, !nosanitize !49

187:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

188:                                              ; preds = %169
  %189 = lshr i64 %1, 12
  %190 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %189), !nosanitize !49
  %191 = extractvalue { i64, i1 } %190, 1, !nosanitize !49
  br i1 %191, label %192, label %193, !prof !50, !nosanitize !49

192:                                              ; preds = %188
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

193:                                              ; preds = %188
  %194 = extractvalue { i64, i1 } %190, 0, !nosanitize !49
  %195 = lshr i64 %1, 14
  %196 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %194, i64 %195), !nosanitize !49
  %197 = extractvalue { i64, i1 } %196, 1, !nosanitize !49
  br i1 %197, label %198, label %199, !prof !50, !nosanitize !49

198:                                              ; preds = %193
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

199:                                              ; preds = %193
  %200 = extractvalue { i64, i1 } %196, 0, !nosanitize !49
  %201 = lshr i64 %1, 25
  %202 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %200, i64 %201), !nosanitize !49
  %203 = extractvalue { i64, i1 } %202, 1, !nosanitize !49
  br i1 %203, label %204, label %205, !prof !50, !nosanitize !49

204:                                              ; preds = %199
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

205:                                              ; preds = %199
  %206 = extractvalue { i64, i1 } %202, 0, !nosanitize !49
  %207 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %206, i64 13), !nosanitize !49
  %208 = extractvalue { i64, i1 } %207, 1, !nosanitize !49
  br i1 %208, label %209, label %210, !prof !50, !nosanitize !49

209:                                              ; preds = %205
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

210:                                              ; preds = %205
  %211 = extractvalue { i64, i1 } %207, 0, !nosanitize !49
  %212 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %211, i64 6), !nosanitize !49
  %213 = extractvalue { i64, i1 } %212, 1, !nosanitize !49
  br i1 %213, label %214, label %215, !prof !50, !nosanitize !49

214:                                              ; preds = %210
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

215:                                              ; preds = %210
  %216 = extractvalue { i64, i1 } %212, 0, !nosanitize !49
  %217 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %216, i64 %165), !nosanitize !49
  %218 = extractvalue { i64, i1 } %217, 1, !nosanitize !49
  br i1 %218, label %219, label %220, !prof !50, !nosanitize !49

219:                                              ; preds = %215
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

220:                                              ; preds = %215
  %221 = extractvalue { i64, i1 } %217, 0, !nosanitize !49
  %222 = icmp ult i64 %221, %1
  %223 = select i1 %222, i64 -1, i64 %221
  br label %224

224:                                              ; preds = %220, %182, %78
  %225 = phi i64 [ %223, %220 ], [ %81, %78 ], [ %185, %182 ]
  ret i64 %225
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !49
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !49
  br i1 %5, label %6, label %7, !prof !50, !nosanitize !49

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !49
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !49
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !49
  br i1 %11, label %12, label %13, !prof !50, !nosanitize !49

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !49
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !49
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !49
  br i1 %17, label %18, label %19, !prof !50, !nosanitize !49

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !49
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !49
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !49
  br i1 %22, label %23, label %24, !prof !50, !nosanitize !49

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

32:                                               ; preds = %24
  %33 = extractvalue { i64, i1 } %29, 0, !nosanitize !49
  %34 = lshr i64 %1, 7
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !49
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !49
  br i1 %36, label %37, label %38, !prof !50, !nosanitize !49

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

38:                                               ; preds = %32
  %39 = extractvalue { i64, i1 } %35, 0, !nosanitize !49
  %40 = lshr i64 %1, 11
  %41 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %39, i64 %40), !nosanitize !49
  %42 = extractvalue { i64, i1 } %41, 1, !nosanitize !49
  br i1 %42, label %43, label %44, !prof !50, !nosanitize !49

43:                                               ; preds = %38
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

44:                                               ; preds = %38
  %45 = extractvalue { i64, i1 } %41, 0, !nosanitize !49
  %46 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %45, i64 7), !nosanitize !49
  %47 = extractvalue { i64, i1 } %46, 1, !nosanitize !49
  br i1 %47, label %48, label %49, !prof !50, !nosanitize !49

48:                                               ; preds = %44
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
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
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %82, label %87

76:                                               ; preds = %69, %66, %62, %58, %54, %49
  %77 = tail call i64 @llvm.umax.i64(i64 %27, i64 %52)
  %78 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %77, i64 18), !nosanitize !49
  %79 = extractvalue { i64, i1 } %78, 0, !nosanitize !49
  %80 = extractvalue { i64, i1 } %78, 1, !nosanitize !49
  br i1 %80, label %81, label %222, !prof !50, !nosanitize !49

81:                                               ; preds = %76
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %72
  %83 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %74), !nosanitize !49
  %84 = extractvalue { i32, i1 } %83, 0, !nosanitize !49
  %85 = extractvalue { i32, i1 } %83, 1, !nosanitize !49
  br i1 %85, label %86, label %87, !prof !50, !nosanitize !49

86:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !49
  unreachable, !nosanitize !49

87:                                               ; preds = %82, %72
  %88 = phi i32 [ %84, %82 ], [ %74, %72 ]
  switch i32 %88, label %161 [
    i32 0, label %162
    i32 1, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds nuw i8, ptr %64, i64 172
  %91 = load i32, ptr %90, align 4, !tbaa !74
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i64 6, i64 10
  br label %162

94:                                               ; preds = %87
  %95 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %96 = load ptr, ptr %95, align 8, !tbaa !31
  %97 = icmp eq ptr %96, null
  br i1 %97, label %162, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds nuw i8, ptr %96, i64 24
  %100 = load ptr, ptr %99, align 8, !tbaa !105
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds nuw i8, ptr %96, i64 32
  %104 = load i32, ptr %103, align 8, !tbaa !110
  %105 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %104, i32 2), !nosanitize !49
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !49
  br i1 %106, label %107, label %108, !prof !50, !nosanitize !49

107:                                              ; preds = %102
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

108:                                              ; preds = %102
  %109 = extractvalue { i32, i1 } %105, 0, !nosanitize !49
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, 18
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i64 [ %111, %108 ], [ 18, %98 ]
  %114 = getelementptr inbounds nuw i8, ptr %96, i64 40
  %115 = load ptr, ptr %114, align 8, !tbaa !104
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %112
  %118 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %113, i64 1), !nosanitize !49
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !49
  br i1 %119, label %124, label %125, !prof !117, !nosanitize !49

120:                                              ; preds = %125
  %121 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %128, i64 1), !nosanitize !49
  %123 = extractvalue { i64, i1 } %122, 1, !nosanitize !49
  br i1 %123, label %124, label %125, !prof !118, !llvm.loop !119, !nosanitize !49

124:                                              ; preds = %120, %117
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

125:                                              ; preds = %120, %117
  %126 = phi { i64, i1 } [ %122, %120 ], [ %118, %117 ]
  %127 = phi ptr [ %121, %120 ], [ %115, %117 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !49
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %120, !llvm.loop !119

131:                                              ; preds = %125, %112
  %132 = phi i64 [ %113, %112 ], [ %128, %125 ]
  %133 = getelementptr inbounds nuw i8, ptr %96, i64 56
  %134 = load ptr, ptr %133, align 8, !tbaa !102
  %135 = icmp eq ptr %134, null
  br i1 %135, label %150, label %136

136:                                              ; preds = %131
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 1), !nosanitize !49
  %138 = extractvalue { i64, i1 } %137, 1, !nosanitize !49
  br i1 %138, label %143, label %144, !prof !117, !nosanitize !49

139:                                              ; preds = %144
  %140 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %147, i64 1), !nosanitize !49
  %142 = extractvalue { i64, i1 } %141, 1, !nosanitize !49
  br i1 %142, label %143, label %144, !prof !118, !llvm.loop !120, !nosanitize !49

143:                                              ; preds = %139, %136
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

144:                                              ; preds = %139, %136
  %145 = phi { i64, i1 } [ %141, %139 ], [ %137, %136 ]
  %146 = phi ptr [ %140, %139 ], [ %134, %136 ]
  %147 = extractvalue { i64, i1 } %145, 0, !nosanitize !49
  %148 = load i8, ptr %146, align 1, !tbaa !8
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %139, !llvm.loop !120

150:                                              ; preds = %144, %131
  %151 = phi i64 [ %132, %131 ], [ %147, %144 ]
  %152 = getelementptr inbounds nuw i8, ptr %96, i64 68
  %153 = load i32, ptr %152, align 4, !tbaa !107
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %151, i64 2), !nosanitize !49
  %157 = extractvalue { i64, i1 } %156, 1, !nosanitize !49
  br i1 %157, label %158, label %159, !prof !50, !nosanitize !49

158:                                              ; preds = %155
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

159:                                              ; preds = %155
  %160 = extractvalue { i64, i1 } %156, 0, !nosanitize !49
  br label %162

161:                                              ; preds = %87
  br label %162

162:                                              ; preds = %161, %159, %150, %94, %89, %87
  %163 = phi i64 [ 18, %161 ], [ 18, %94 ], [ %93, %89 ], [ 0, %87 ], [ %160, %159 ], [ %151, %150 ]
  %164 = getelementptr inbounds nuw i8, ptr %64, i64 84
  %165 = load i32, ptr %164, align 4, !tbaa !32
  %166 = icmp eq i32 %165, 15
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %169 = load i32, ptr %168, align 8, !tbaa !35
  %170 = icmp eq i32 %169, 15
  br i1 %170, label %186, label %171

171:                                              ; preds = %167, %162
  %172 = getelementptr inbounds nuw i8, ptr %64, i64 136
  %173 = load i32, ptr %172, align 8, !tbaa !35
  %174 = icmp ugt i32 %165, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds nuw i8, ptr %64, i64 196
  %177 = load i32, ptr %176, align 4, !tbaa !52
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %175, %171
  br label %180

180:                                              ; preds = %179, %175
  %181 = phi i64 [ %52, %179 ], [ %27, %175 ]
  %182 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %181, i64 %163), !nosanitize !49
  %183 = extractvalue { i64, i1 } %182, 0, !nosanitize !49
  %184 = extractvalue { i64, i1 } %182, 1, !nosanitize !49
  br i1 %184, label %185, label %222, !prof !50, !nosanitize !49

185:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

186:                                              ; preds = %167
  %187 = lshr i64 %1, 12
  %188 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %187), !nosanitize !49
  %189 = extractvalue { i64, i1 } %188, 1, !nosanitize !49
  br i1 %189, label %190, label %191, !prof !50, !nosanitize !49

190:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

191:                                              ; preds = %186
  %192 = extractvalue { i64, i1 } %188, 0, !nosanitize !49
  %193 = lshr i64 %1, 14
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %192, i64 %193), !nosanitize !49
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !49
  br i1 %195, label %196, label %197, !prof !50, !nosanitize !49

196:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

197:                                              ; preds = %191
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !49
  %199 = lshr i64 %1, 25
  %200 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %198, i64 %199), !nosanitize !49
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !49
  br i1 %201, label %202, label %203, !prof !50, !nosanitize !49

202:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

203:                                              ; preds = %197
  %204 = extractvalue { i64, i1 } %200, 0, !nosanitize !49
  %205 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 13), !nosanitize !49
  %206 = extractvalue { i64, i1 } %205, 1, !nosanitize !49
  br i1 %206, label %207, label %208, !prof !50, !nosanitize !49

207:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

208:                                              ; preds = %203
  %209 = extractvalue { i64, i1 } %205, 0, !nosanitize !49
  %210 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %209, i64 6), !nosanitize !49
  %211 = extractvalue { i64, i1 } %210, 1, !nosanitize !49
  br i1 %211, label %212, label %213, !prof !50, !nosanitize !49

212:                                              ; preds = %208
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

213:                                              ; preds = %208
  %214 = extractvalue { i64, i1 } %210, 0, !nosanitize !49
  %215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %214, i64 %163), !nosanitize !49
  %216 = extractvalue { i64, i1 } %215, 1, !nosanitize !49
  br i1 %216, label %217, label %218, !prof !50, !nosanitize !49

217:                                              ; preds = %213
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

218:                                              ; preds = %213
  %219 = extractvalue { i64, i1 } %215, 0, !nosanitize !49
  %220 = icmp ult i64 %219, %1
  %221 = select i1 %220, i64 -1, i64 %219
  br label %222

222:                                              ; preds = %218, %180, %76
  %223 = phi i64 [ %221, %218 ], [ %79, %76 ], [ %183, %180 ]
  ret i64 %223
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #10
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
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !49
  store i64 %27, ptr %21, align 8, !tbaa !101
  %28 = load i32, ptr %6, align 8, !tbaa !100
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !49
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !49
  br i1 %30, label %31, label %32, !prof !50, !nosanitize !49

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !49
  store i32 %33, ptr %6, align 8, !tbaa !100
  %34 = load i64, ptr %4, align 8, !tbaa !58
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !49
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !49
  br i1 %36, label %37, label %38, !prof !50, !nosanitize !49

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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

44:                                               ; preds = %41, %38, %1
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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

27:                                               ; preds = %270, %8
  %28 = load i32, ptr %18, align 4, !tbaa !94
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !49
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !49
  br i1 %30, label %31, label %32, !prof !50, !nosanitize !49

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !49
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !100
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %272, label %39

39:                                               ; preds = %32
  %40 = sub nuw i32 %37, %34
  %41 = load i32, ptr %19, align 4, !tbaa !74
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %20, align 8, !tbaa !75
  %44 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43), !nosanitize !49
  %45 = extractvalue { i64, i1 } %44, 1, !nosanitize !49
  br i1 %45, label %46, label %47, !prof !50, !nosanitize !49

46:                                               ; preds = %39
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

47:                                               ; preds = %39
  %48 = extractvalue { i64, i1 } %44, 0, !nosanitize !49
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa !82
  %52 = and i64 %48, 4294967295
  %53 = zext i32 %51 to i64
  %54 = add nuw nsw i64 %52, %53
  %55 = icmp samesign ult i64 %54, 65535
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !49
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !49
  br i1 %58, label %59, label %60, !prof !50, !nosanitize !49

59:                                               ; preds = %56
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

60:                                               ; preds = %56
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !49
  br label %62

62:                                               ; preds = %60, %47
  %63 = phi i32 [ %61, %60 ], [ 65535, %47 ]
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 %40)
  %65 = icmp ult i32 %64, %14
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = icmp eq i32 %64, 0
  %68 = and i1 %21, %67
  %69 = or i1 %22, %68
  br i1 %69, label %272, label %70

70:                                               ; preds = %66
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !49
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !49
  br i1 %72, label %73, label %74, !prof !50, !nosanitize !49

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !49
  %76 = icmp eq i32 %64, %75
  br i1 %76, label %77, label %272

77:                                               ; preds = %74, %62
  br i1 %23, label %78, label %86

78:                                               ; preds = %77
  %79 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %49, i32 %51), !nosanitize !49
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !49
  br i1 %80, label %81, label %82, !prof !50, !nosanitize !49

81:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %78
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !49
  %84 = icmp eq i32 %64, %83
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i32 [ 0, %77 ], [ %85, %82 ]
  tail call void @_tr_stored_block(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef %87) #10
  %88 = load i64, ptr %25, align 8, !tbaa !58
  %89 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %88, i64 4), !nosanitize !49
  %90 = extractvalue { i64, i1 } %89, 1, !nosanitize !49
  br i1 %90, label %91, label %92, !prof !50, !nosanitize !49

91:                                               ; preds = %86
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

92:                                               ; preds = %86
  %93 = extractvalue { i64, i1 } %89, 0, !nosanitize !49
  %94 = load ptr, ptr %24, align 8, !tbaa !44
  %95 = trunc i32 %64 to i8
  %96 = getelementptr inbounds nuw i8, ptr %94, i64 %93
  store i8 %95, ptr %96, align 1, !tbaa !8
  %97 = load i64, ptr %25, align 8, !tbaa !58
  %98 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %97, i64 3), !nosanitize !49
  %99 = extractvalue { i64, i1 } %98, 1, !nosanitize !49
  br i1 %99, label %100, label %101, !prof !50, !nosanitize !49

100:                                              ; preds = %92
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

101:                                              ; preds = %92
  %102 = extractvalue { i64, i1 } %98, 0, !nosanitize !49
  %103 = load ptr, ptr %24, align 8, !tbaa !44
  %104 = lshr i32 %64, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 %102
  store i8 %105, ptr %106, align 1, !tbaa !8
  %107 = load i64, ptr %25, align 8, !tbaa !58
  %108 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %107, i64 2), !nosanitize !49
  %109 = extractvalue { i64, i1 } %108, 1, !nosanitize !49
  br i1 %109, label %110, label %111, !prof !50, !nosanitize !49

110:                                              ; preds = %101
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

111:                                              ; preds = %101
  %112 = extractvalue { i64, i1 } %108, 0, !nosanitize !49
  %113 = load ptr, ptr %24, align 8, !tbaa !44
  %114 = xor i32 %64, -1
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 %112
  store i8 %115, ptr %116, align 1, !tbaa !8
  %117 = load i64, ptr %25, align 8, !tbaa !58
  %118 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %117, i64 1), !nosanitize !49
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !49
  br i1 %119, label %120, label %121, !prof !50, !nosanitize !49

120:                                              ; preds = %111
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

121:                                              ; preds = %111
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !49
  %123 = load ptr, ptr %24, align 8, !tbaa !44
  %124 = lshr i32 %114, 8
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds nuw i8, ptr %123, i64 %122
  store i8 %125, ptr %126, align 1, !tbaa !8
  %127 = load ptr, ptr %0, align 8, !tbaa !20
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %129) #10
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 40
  %131 = load i64, ptr %130, align 8, !tbaa !58
  %132 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %133 = load i32, ptr %132, align 8, !tbaa !100
  %134 = zext i32 %133 to i64
  %135 = tail call i64 @llvm.umin.i64(i64 %131, i64 %134)
  %136 = trunc nuw i64 %135 to i32
  %137 = icmp eq i64 %135, 0
  br i1 %137, label %170, label %138

138:                                              ; preds = %121
  %139 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %140 = load ptr, ptr %139, align 8, !tbaa !99
  %141 = getelementptr inbounds nuw i8, ptr %129, i64 32
  %142 = load ptr, ptr %141, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %140, ptr align 1 %142, i64 %135, i1 false)
  %143 = load ptr, ptr %139, align 8, !tbaa !99
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 %135
  store ptr %144, ptr %139, align 8, !tbaa !99
  %145 = load ptr, ptr %141, align 8, !tbaa !59
  %146 = getelementptr inbounds nuw i8, ptr %145, i64 %135
  store ptr %146, ptr %141, align 8, !tbaa !59
  %147 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %148 = load i64, ptr %147, align 8, !tbaa !101
  %149 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %148, i64 %135), !nosanitize !49
  %150 = extractvalue { i64, i1 } %149, 1, !nosanitize !49
  br i1 %150, label %151, label %152, !prof !50, !nosanitize !49

151:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

152:                                              ; preds = %138
  %153 = extractvalue { i64, i1 } %149, 0, !nosanitize !49
  store i64 %153, ptr %147, align 8, !tbaa !101
  %154 = load i32, ptr %132, align 8, !tbaa !100
  %155 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %154, i32 %136), !nosanitize !49
  %156 = extractvalue { i32, i1 } %155, 1, !nosanitize !49
  br i1 %156, label %157, label %158, !prof !50, !nosanitize !49

157:                                              ; preds = %152
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

158:                                              ; preds = %152
  %159 = extractvalue { i32, i1 } %155, 0, !nosanitize !49
  store i32 %159, ptr %132, align 8, !tbaa !100
  %160 = load i64, ptr %130, align 8, !tbaa !58
  %161 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %160, i64 %135), !nosanitize !49
  %162 = extractvalue { i64, i1 } %161, 1, !nosanitize !49
  br i1 %162, label %163, label %164, !prof !50, !nosanitize !49

163:                                              ; preds = %158
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

164:                                              ; preds = %158
  %165 = extractvalue { i64, i1 } %161, 0, !nosanitize !49
  store i64 %165, ptr %130, align 8, !tbaa !58
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = getelementptr inbounds nuw i8, ptr %129, i64 16
  %169 = load ptr, ptr %168, align 8, !tbaa !44
  store ptr %169, ptr %141, align 8, !tbaa !59
  br label %170

170:                                              ; preds = %167, %164, %121
  %171 = icmp eq i32 %49, 0
  br i1 %171, label %209, label %172

172:                                              ; preds = %170
  %173 = tail call i32 @llvm.umin.i32(i32 %64, i32 %49)
  %174 = load ptr, ptr %0, align 8, !tbaa !20
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 24
  %176 = load ptr, ptr %175, align 8, !tbaa !99
  %177 = load ptr, ptr %26, align 8, !tbaa !39
  %178 = load i64, ptr %20, align 8, !tbaa !75
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  %180 = zext i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %179, i64 %180, i1 false)
  %181 = load ptr, ptr %0, align 8, !tbaa !20
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 24
  %183 = load ptr, ptr %182, align 8, !tbaa !99
  %184 = getelementptr inbounds nuw i8, ptr %183, i64 %180
  store ptr %184, ptr %182, align 8, !tbaa !99
  %185 = getelementptr inbounds nuw i8, ptr %181, i64 32
  %186 = load i32, ptr %185, align 8, !tbaa !100
  %187 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %186, i32 %173), !nosanitize !49
  %188 = extractvalue { i32, i1 } %187, 1, !nosanitize !49
  br i1 %188, label %189, label %190, !prof !50, !nosanitize !49

189:                                              ; preds = %172
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

190:                                              ; preds = %172
  %191 = extractvalue { i32, i1 } %187, 0, !nosanitize !49
  store i32 %191, ptr %185, align 8, !tbaa !100
  %192 = getelementptr inbounds nuw i8, ptr %181, i64 40
  %193 = load i64, ptr %192, align 8, !tbaa !101
  %194 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %193, i64 %180), !nosanitize !49
  %195 = extractvalue { i64, i1 } %194, 1, !nosanitize !49
  br i1 %195, label %196, label %197, !prof !50, !nosanitize !49

196:                                              ; preds = %197, %190
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

197:                                              ; preds = %190
  %198 = extractvalue { i64, i1 } %194, 0, !nosanitize !49
  store i64 %198, ptr %192, align 8, !tbaa !101
  %199 = load i64, ptr %20, align 8, !tbaa !75
  %200 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %199, i64 %180), !nosanitize !49
  %201 = extractvalue { i64, i1 } %200, 1, !nosanitize !49
  br i1 %201, label %196, label %202, !prof !50, !nosanitize !49

202:                                              ; preds = %197
  %203 = extractvalue { i64, i1 } %200, 0, !nosanitize !49
  store i64 %203, ptr %20, align 8, !tbaa !75
  %204 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %64, i32 %173), !nosanitize !49
  %205 = extractvalue { i32, i1 } %204, 1, !nosanitize !49
  br i1 %205, label %206, label %207, !prof !50, !nosanitize !49

206:                                              ; preds = %202
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

207:                                              ; preds = %202
  %208 = extractvalue { i32, i1 } %204, 0, !nosanitize !49
  br label %209

209:                                              ; preds = %207, %170
  %210 = phi i32 [ %208, %207 ], [ %64, %170 ]
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %270, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %0, align 8, !tbaa !20
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 24
  %215 = load ptr, ptr %214, align 8, !tbaa !99
  %216 = getelementptr inbounds nuw i8, ptr %213, i64 8
  %217 = load i32, ptr %216, align 8, !tbaa !82
  %218 = tail call i32 @llvm.umin.i32(i32 %217, i32 %210)
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %250, label %220

220:                                              ; preds = %212
  %221 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %217, i32 %218), !nosanitize !49
  %222 = extractvalue { i32, i1 } %221, 1, !nosanitize !49
  br i1 %222, label %223, label %224, !prof !50, !nosanitize !49

223:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

224:                                              ; preds = %220
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !49
  store i32 %225, ptr %216, align 8, !tbaa !82
  %226 = load ptr, ptr %213, align 8, !tbaa !83
  %227 = zext i32 %218 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %215, ptr align 1 %226, i64 %227, i1 false)
  %228 = getelementptr inbounds nuw i8, ptr %213, i64 56
  %229 = load ptr, ptr %228, align 8, !tbaa !19
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 48
  %231 = load i32, ptr %230, align 8, !tbaa !30
  switch i32 %231, label %240 [
    i32 1, label %232
    i32 2, label %236
  ]

232:                                              ; preds = %224
  %233 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %234 = load i64, ptr %233, align 8, !tbaa !60
  %235 = tail call i64 @adler32(i64 noundef %234, ptr noundef %215, i32 noundef %218) #10
  store i64 %235, ptr %233, align 8, !tbaa !60
  br label %240

236:                                              ; preds = %224
  %237 = getelementptr inbounds nuw i8, ptr %213, i64 96
  %238 = load i64, ptr %237, align 8, !tbaa !60
  %239 = tail call i64 @crc32(i64 noundef %238, ptr noundef %215, i32 noundef %218) #10
  store i64 %239, ptr %237, align 8, !tbaa !60
  br label %240

240:                                              ; preds = %236, %232, %224
  %241 = load ptr, ptr %213, align 8, !tbaa !83
  %242 = getelementptr inbounds nuw i8, ptr %241, i64 %227
  store ptr %242, ptr %213, align 8, !tbaa !83
  %243 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %244 = load i64, ptr %243, align 8, !tbaa !56
  %245 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %244, i64 %227), !nosanitize !49
  %246 = extractvalue { i64, i1 } %245, 1, !nosanitize !49
  br i1 %246, label %247, label %248, !prof !50, !nosanitize !49

247:                                              ; preds = %240
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

248:                                              ; preds = %240
  %249 = extractvalue { i64, i1 } %245, 0, !nosanitize !49
  store i64 %249, ptr %243, align 8, !tbaa !56
  br label %250

250:                                              ; preds = %248, %212
  %251 = load ptr, ptr %0, align 8, !tbaa !20
  %252 = getelementptr inbounds nuw i8, ptr %251, i64 24
  %253 = load ptr, ptr %252, align 8, !tbaa !99
  %254 = zext i32 %210 to i64
  %255 = getelementptr inbounds nuw i8, ptr %253, i64 %254
  store ptr %255, ptr %252, align 8, !tbaa !99
  %256 = getelementptr inbounds nuw i8, ptr %251, i64 32
  %257 = load i32, ptr %256, align 8, !tbaa !100
  %258 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %257, i32 %210), !nosanitize !49
  %259 = extractvalue { i32, i1 } %258, 1, !nosanitize !49
  br i1 %259, label %260, label %261, !prof !50, !nosanitize !49

260:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

261:                                              ; preds = %250
  %262 = extractvalue { i32, i1 } %258, 0, !nosanitize !49
  store i32 %262, ptr %256, align 8, !tbaa !100
  %263 = getelementptr inbounds nuw i8, ptr %251, i64 40
  %264 = load i64, ptr %263, align 8, !tbaa !101
  %265 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %264, i64 %254), !nosanitize !49
  %266 = extractvalue { i64, i1 } %265, 1, !nosanitize !49
  br i1 %266, label %267, label %268, !prof !50, !nosanitize !49

267:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

268:                                              ; preds = %261
  %269 = extractvalue { i64, i1 } %265, 0, !nosanitize !49
  store i64 %269, ptr %263, align 8, !tbaa !101
  br label %270

270:                                              ; preds = %268, %209
  %271 = icmp eq i32 %87, 0
  br i1 %271, label %27, label %272, !llvm.loop !121

272:                                              ; preds = %270, %74, %66, %32
  %273 = phi i1 [ true, %32 ], [ true, %66 ], [ true, %74 ], [ false, %270 ]
  %274 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %275 = load ptr, ptr %0, align 8, !tbaa !20
  %276 = getelementptr inbounds nuw i8, ptr %275, i64 8
  %277 = load i32, ptr %276, align 8, !tbaa !82
  %278 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %277), !nosanitize !49
  %279 = extractvalue { i32, i1 } %278, 0, !nosanitize !49
  %280 = extractvalue { i32, i1 } %278, 1, !nosanitize !49
  br i1 %280, label %281, label %282, !prof !50, !nosanitize !49

281:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

282:                                              ; preds = %272
  %283 = icmp eq i32 %279, 0
  br i1 %283, label %368, label %284

284:                                              ; preds = %282
  %285 = load i32, ptr %10, align 8, !tbaa !33
  %286 = icmp ult i32 %279, %285
  br i1 %286, label %298, label %287

287:                                              ; preds = %284
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %288, align 8, !tbaa !116
  %289 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %290 = load ptr, ptr %289, align 8, !tbaa !39
  %291 = load ptr, ptr %275, align 8, !tbaa !83
  %292 = zext i32 %285 to i64
  %293 = sub nsw i64 0, %292
  %294 = getelementptr inbounds i8, ptr %291, i64 %293
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %290, ptr align 1 %294, i64 %292, i1 false)
  %295 = load i32, ptr %10, align 8, !tbaa !33
  %296 = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %295, ptr %296, align 4, !tbaa !74
  %297 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %295, ptr %297, align 4, !tbaa !77
  br label %363

298:                                              ; preds = %284
  %299 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %300 = load i64, ptr %299, align 8, !tbaa !62
  %301 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %302 = load i32, ptr %301, align 4, !tbaa !74
  %303 = zext i32 %302 to i64
  %304 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %300, i64 %303), !nosanitize !49
  %305 = extractvalue { i64, i1 } %304, 1, !nosanitize !49
  br i1 %305, label %306, label %307, !prof !50, !nosanitize !49

306:                                              ; preds = %298
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

307:                                              ; preds = %298
  %308 = extractvalue { i64, i1 } %304, 0, !nosanitize !49
  %309 = zext i32 %279 to i64
  %310 = icmp ugt i64 %308, %309
  br i1 %310, label %333, label %311

311:                                              ; preds = %307
  %312 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %302, i32 %285), !nosanitize !49
  %313 = extractvalue { i32, i1 } %312, 1, !nosanitize !49
  br i1 %313, label %314, label %315, !prof !50, !nosanitize !49

314:                                              ; preds = %311
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

315:                                              ; preds = %311
  %316 = extractvalue { i32, i1 } %312, 0, !nosanitize !49
  store i32 %316, ptr %301, align 4, !tbaa !74
  %317 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %318 = load ptr, ptr %317, align 8, !tbaa !39
  %319 = zext i32 %285 to i64
  %320 = getelementptr inbounds nuw i8, ptr %318, i64 %319
  %321 = zext i32 %316 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %318, ptr nonnull align 1 %320, i64 %321, i1 false)
  %322 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %323 = load i32, ptr %322, align 8, !tbaa !116
  %324 = icmp ult i32 %323, 2
  br i1 %324, label %325, label %327

325:                                              ; preds = %315
  %326 = add nuw nsw i32 %323, 1
  store i32 %326, ptr %322, align 8, !tbaa !116
  br label %327

327:                                              ; preds = %325, %315
  %328 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %329 = load i32, ptr %328, align 4, !tbaa !77
  %330 = load i32, ptr %301, align 4, !tbaa !74
  %331 = icmp ugt i32 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  store i32 %330, ptr %328, align 4, !tbaa !77
  br label %333

333:                                              ; preds = %332, %327, %307
  %334 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %335 = load ptr, ptr %334, align 8, !tbaa !39
  %336 = load i32, ptr %301, align 4, !tbaa !74
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds nuw i8, ptr %335, i64 %337
  %339 = load ptr, ptr %0, align 8, !tbaa !20
  %340 = load ptr, ptr %339, align 8, !tbaa !83
  %341 = sub nsw i64 0, %309
  %342 = getelementptr inbounds i8, ptr %340, i64 %341
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %338, ptr nonnull align 1 %342, i64 %309, i1 false)
  %343 = load i32, ptr %301, align 4, !tbaa !74
  %344 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %343, i32 %279), !nosanitize !49
  %345 = extractvalue { i32, i1 } %344, 1, !nosanitize !49
  br i1 %345, label %346, label %347, !prof !50, !nosanitize !49

346:                                              ; preds = %333
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

347:                                              ; preds = %333
  %348 = extractvalue { i32, i1 } %344, 0, !nosanitize !49
  store i32 %348, ptr %301, align 4, !tbaa !74
  %349 = load i32, ptr %10, align 8, !tbaa !33
  %350 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %351 = load i32, ptr %350, align 4, !tbaa !77
  %352 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %349, i32 %351), !nosanitize !49
  %353 = extractvalue { i32, i1 } %352, 1, !nosanitize !49
  br i1 %353, label %354, label %355, !prof !50, !nosanitize !49

354:                                              ; preds = %347
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

355:                                              ; preds = %347
  %356 = extractvalue { i32, i1 } %352, 0, !nosanitize !49
  %357 = tail call i32 @llvm.umin.i32(i32 %279, i32 %356)
  %358 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %351, i32 %357), !nosanitize !49
  %359 = extractvalue { i32, i1 } %358, 1, !nosanitize !49
  br i1 %359, label %360, label %361, !prof !50, !nosanitize !49

360:                                              ; preds = %355
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

361:                                              ; preds = %355
  %362 = extractvalue { i32, i1 } %358, 0, !nosanitize !49
  store i32 %362, ptr %350, align 4, !tbaa !77
  br label %363

363:                                              ; preds = %361, %287
  %364 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %365 = load i32, ptr %364, align 4, !tbaa !74
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %366, ptr %367, align 8, !tbaa !75
  br label %368

368:                                              ; preds = %363, %282
  %369 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %370 = load i64, ptr %369, align 8, !tbaa !42
  %371 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %372 = load i32, ptr %371, align 4, !tbaa !74
  %373 = zext i32 %372 to i64
  %374 = icmp ult i64 %370, %373
  br i1 %374, label %375, label %376

375:                                              ; preds = %368
  store i64 %373, ptr %369, align 8, !tbaa !42
  br label %376

376:                                              ; preds = %375, %368
  br i1 %273, label %377, label %610

377:                                              ; preds = %376
  %378 = icmp ne i32 %1, 0
  switch i32 %1, label %379 [
    i32 4, label %388
    i32 0, label %388
  ]

379:                                              ; preds = %377
  %380 = load ptr, ptr %0, align 8, !tbaa !20
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 8
  %382 = load i32, ptr %381, align 8, !tbaa !82
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %379
  %385 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %386 = load i64, ptr %385, align 8, !tbaa !75
  %387 = icmp eq i64 %386, %373
  br i1 %387, label %613, label %388

388:                                              ; preds = %384, %379, %377, %377
  %389 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %390 = load i64, ptr %389, align 8, !tbaa !62
  %391 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %390, i64 %373), !nosanitize !49
  %392 = extractvalue { i64, i1 } %391, 1, !nosanitize !49
  br i1 %392, label %393, label %394, !prof !50, !nosanitize !49

393:                                              ; preds = %388
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

394:                                              ; preds = %388
  %395 = extractvalue { i64, i1 } %391, 0, !nosanitize !49
  %396 = trunc i64 %395 to i32
  %397 = load ptr, ptr %0, align 8, !tbaa !20
  %398 = getelementptr inbounds nuw i8, ptr %397, i64 8
  %399 = load i32, ptr %398, align 8, !tbaa !82
  %400 = icmp ugt i32 %399, %396
  br i1 %400, label %401, label %435

401:                                              ; preds = %394
  %402 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %403 = load i64, ptr %402, align 8, !tbaa !75
  %404 = load i32, ptr %10, align 8, !tbaa !33
  %405 = zext i32 %404 to i64
  %406 = icmp slt i64 %403, %405
  br i1 %406, label %435, label %407

407:                                              ; preds = %401
  %408 = sub nsw i64 %403, %405
  store i64 %408, ptr %402, align 8, !tbaa !75
  %409 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %372, i32 %404), !nosanitize !49
  %410 = extractvalue { i32, i1 } %409, 1, !nosanitize !49
  br i1 %410, label %411, label %412, !prof !50, !nosanitize !49

411:                                              ; preds = %407
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

412:                                              ; preds = %407
  %413 = extractvalue { i32, i1 } %409, 0, !nosanitize !49
  store i32 %413, ptr %371, align 4, !tbaa !74
  %414 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %415 = load ptr, ptr %414, align 8, !tbaa !39
  %416 = getelementptr inbounds nuw i8, ptr %415, i64 %405
  %417 = zext i32 %413 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %415, ptr align 1 %416, i64 %417, i1 false)
  %418 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %419 = load i32, ptr %418, align 8, !tbaa !116
  %420 = icmp ult i32 %419, 2
  br i1 %420, label %421, label %423

421:                                              ; preds = %412
  %422 = add nuw nsw i32 %419, 1
  store i32 %422, ptr %418, align 8, !tbaa !116
  br label %423

423:                                              ; preds = %421, %412
  %424 = load i32, ptr %10, align 8, !tbaa !33
  %425 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %396, i32 %424), !nosanitize !49
  %426 = extractvalue { i32, i1 } %425, 0, !nosanitize !49
  %427 = extractvalue { i32, i1 } %425, 1, !nosanitize !49
  br i1 %427, label %428, label %429, !prof !50, !nosanitize !49

428:                                              ; preds = %423
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

429:                                              ; preds = %423
  %430 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %431 = load i32, ptr %430, align 4, !tbaa !77
  %432 = load i32, ptr %371, align 4, !tbaa !74
  %433 = icmp ugt i32 %431, %432
  br i1 %433, label %434, label %435

434:                                              ; preds = %429
  store i32 %432, ptr %430, align 4, !tbaa !77
  br label %435

435:                                              ; preds = %434, %429, %401, %394
  %436 = phi i32 [ %426, %434 ], [ %426, %429 ], [ %396, %401 ], [ %396, %394 ]
  %437 = load ptr, ptr %0, align 8, !tbaa !20
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 8
  %439 = load i32, ptr %438, align 8, !tbaa !82
  %440 = tail call i32 @llvm.umin.i32(i32 %436, i32 %439)
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %497, label %442

442:                                              ; preds = %435
  %443 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %444 = load ptr, ptr %443, align 8, !tbaa !39
  %445 = load i32, ptr %371, align 4, !tbaa !74
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds nuw i8, ptr %444, i64 %446
  %448 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %439, i32 %440), !nosanitize !49
  %449 = extractvalue { i32, i1 } %448, 1, !nosanitize !49
  br i1 %449, label %450, label %451, !prof !50, !nosanitize !49

450:                                              ; preds = %442
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

451:                                              ; preds = %442
  %452 = extractvalue { i32, i1 } %448, 0, !nosanitize !49
  store i32 %452, ptr %438, align 8, !tbaa !82
  %453 = load ptr, ptr %437, align 8, !tbaa !83
  %454 = zext i32 %440 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %447, ptr align 1 %453, i64 %454, i1 false)
  %455 = getelementptr inbounds nuw i8, ptr %437, i64 56
  %456 = load ptr, ptr %455, align 8, !tbaa !19
  %457 = getelementptr inbounds nuw i8, ptr %456, i64 48
  %458 = load i32, ptr %457, align 8, !tbaa !30
  switch i32 %458, label %467 [
    i32 1, label %459
    i32 2, label %463
  ]

459:                                              ; preds = %451
  %460 = getelementptr inbounds nuw i8, ptr %437, i64 96
  %461 = load i64, ptr %460, align 8, !tbaa !60
  %462 = tail call i64 @adler32(i64 noundef %461, ptr noundef %447, i32 noundef %440) #10
  store i64 %462, ptr %460, align 8, !tbaa !60
  br label %467

463:                                              ; preds = %451
  %464 = getelementptr inbounds nuw i8, ptr %437, i64 96
  %465 = load i64, ptr %464, align 8, !tbaa !60
  %466 = tail call i64 @crc32(i64 noundef %465, ptr noundef %447, i32 noundef %440) #10
  store i64 %466, ptr %464, align 8, !tbaa !60
  br label %467

467:                                              ; preds = %463, %459, %451
  %468 = load ptr, ptr %437, align 8, !tbaa !83
  %469 = getelementptr inbounds nuw i8, ptr %468, i64 %454
  store ptr %469, ptr %437, align 8, !tbaa !83
  %470 = getelementptr inbounds nuw i8, ptr %437, i64 16
  %471 = load i64, ptr %470, align 8, !tbaa !56
  %472 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %471, i64 %454), !nosanitize !49
  %473 = extractvalue { i64, i1 } %472, 1, !nosanitize !49
  br i1 %473, label %474, label %475, !prof !50, !nosanitize !49

474:                                              ; preds = %467
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

475:                                              ; preds = %467
  %476 = extractvalue { i64, i1 } %472, 0, !nosanitize !49
  store i64 %476, ptr %470, align 8, !tbaa !56
  %477 = load i32, ptr %371, align 4, !tbaa !74
  %478 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %477, i32 %440), !nosanitize !49
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !49
  br i1 %479, label %480, label %481, !prof !50, !nosanitize !49

480:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

481:                                              ; preds = %475
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !49
  store i32 %482, ptr %371, align 4, !tbaa !74
  %483 = load i32, ptr %10, align 8, !tbaa !33
  %484 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %485 = load i32, ptr %484, align 4, !tbaa !77
  %486 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %483, i32 %485), !nosanitize !49
  %487 = extractvalue { i32, i1 } %486, 1, !nosanitize !49
  br i1 %487, label %488, label %489, !prof !50, !nosanitize !49

488:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

489:                                              ; preds = %481
  %490 = extractvalue { i32, i1 } %486, 0, !nosanitize !49
  %491 = tail call i32 @llvm.umin.i32(i32 %440, i32 %490)
  %492 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %485, i32 %491), !nosanitize !49
  %493 = extractvalue { i32, i1 } %492, 1, !nosanitize !49
  br i1 %493, label %494, label %495, !prof !50, !nosanitize !49

494:                                              ; preds = %489
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

495:                                              ; preds = %489
  %496 = extractvalue { i32, i1 } %492, 0, !nosanitize !49
  store i32 %496, ptr %484, align 4, !tbaa !77
  br label %497

497:                                              ; preds = %495, %435
  %498 = load i64, ptr %369, align 8, !tbaa !42
  %499 = load i32, ptr %371, align 4, !tbaa !74
  %500 = zext i32 %499 to i64
  %501 = icmp ult i64 %498, %500
  br i1 %501, label %502, label %503

502:                                              ; preds = %497
  store i64 %500, ptr %369, align 8, !tbaa !42
  br label %503

503:                                              ; preds = %502, %497
  %504 = load i32, ptr %274, align 4, !tbaa !94
  %505 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %504, i32 42), !nosanitize !49
  %506 = extractvalue { i32, i1 } %505, 1, !nosanitize !49
  br i1 %506, label %507, label %508, !prof !50, !nosanitize !49

507:                                              ; preds = %554, %503
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

508:                                              ; preds = %503
  %509 = extractvalue { i32, i1 } %505, 0, !nosanitize !49
  %510 = lshr i32 %509, 3
  %511 = load i64, ptr %3, align 8, !tbaa !45
  %512 = zext nneg i32 %510 to i64
  %513 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %511, i64 %512), !nosanitize !49
  %514 = extractvalue { i64, i1 } %513, 1, !nosanitize !49
  br i1 %514, label %515, label %516, !prof !50, !nosanitize !49

515:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

516:                                              ; preds = %508
  %517 = extractvalue { i64, i1 } %513, 0, !nosanitize !49
  %518 = tail call i64 @llvm.umin.i64(i64 %517, i64 65535)
  %519 = trunc nuw nsw i64 %518 to i32
  %520 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %521 = load i64, ptr %520, align 8, !tbaa !75
  %522 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %500, i64 %521), !nosanitize !49
  %523 = extractvalue { i64, i1 } %522, 1, !nosanitize !49
  br i1 %523, label %524, label %525, !prof !50, !nosanitize !49

524:                                              ; preds = %516
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

525:                                              ; preds = %516
  %526 = load i32, ptr %10, align 8, !tbaa !33
  %527 = tail call i32 @llvm.umin.i32(i32 %526, i32 %519)
  %528 = extractvalue { i64, i1 } %522, 0, !nosanitize !49
  %529 = trunc i64 %528 to i32
  %530 = icmp ugt i32 %527, %529
  br i1 %530, label %531, label %543

531:                                              ; preds = %525
  %532 = icmp ne i32 %529, 0
  %533 = icmp eq i32 %1, 4
  %534 = or i1 %533, %532
  %535 = and i1 %378, %534
  br i1 %535, label %536, label %613

536:                                              ; preds = %531
  %537 = load ptr, ptr %0, align 8, !tbaa !20
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 8
  %539 = load i32, ptr %538, align 8, !tbaa !82
  %540 = icmp ne i32 %539, 0
  %541 = icmp ult i32 %519, %529
  %542 = select i1 %540, i1 true, i1 %541
  br i1 %542, label %613, label %543

543:                                              ; preds = %536, %525
  %544 = tail call i32 @llvm.umin.i32(i32 %519, i32 %529)
  %545 = icmp eq i32 %1, 4
  br i1 %545, label %546, label %554

546:                                              ; preds = %543
  %547 = load ptr, ptr %0, align 8, !tbaa !20
  %548 = getelementptr inbounds nuw i8, ptr %547, i64 8
  %549 = load i32, ptr %548, align 8, !tbaa !82
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %554

551:                                              ; preds = %546
  %552 = icmp uge i32 %519, %529
  %553 = zext i1 %552 to i32
  br label %554

554:                                              ; preds = %551, %546, %543
  %555 = phi i32 [ 0, %546 ], [ 0, %543 ], [ %553, %551 ]
  %556 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %557 = load ptr, ptr %556, align 8, !tbaa !39
  %558 = getelementptr inbounds i8, ptr %557, i64 %521
  %559 = zext nneg i32 %544 to i64
  tail call void @_tr_stored_block(ptr noundef %0, ptr noundef %558, i64 noundef %559, i32 noundef %555) #10
  %560 = load i64, ptr %520, align 8, !tbaa !75
  %561 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %560, i64 %559), !nosanitize !49
  %562 = extractvalue { i64, i1 } %561, 1, !nosanitize !49
  br i1 %562, label %507, label %563, !prof !50, !nosanitize !49

563:                                              ; preds = %554
  %564 = extractvalue { i64, i1 } %561, 0, !nosanitize !49
  store i64 %564, ptr %520, align 8, !tbaa !75
  %565 = load ptr, ptr %0, align 8, !tbaa !20
  %566 = getelementptr inbounds nuw i8, ptr %565, i64 56
  %567 = load ptr, ptr %566, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %567) #10
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 40
  %569 = load i64, ptr %568, align 8, !tbaa !58
  %570 = getelementptr inbounds nuw i8, ptr %565, i64 32
  %571 = load i32, ptr %570, align 8, !tbaa !100
  %572 = zext i32 %571 to i64
  %573 = tail call i64 @llvm.umin.i64(i64 %569, i64 %572)
  %574 = trunc nuw i64 %573 to i32
  %575 = icmp eq i64 %573, 0
  br i1 %575, label %608, label %576

576:                                              ; preds = %563
  %577 = getelementptr inbounds nuw i8, ptr %565, i64 24
  %578 = load ptr, ptr %577, align 8, !tbaa !99
  %579 = getelementptr inbounds nuw i8, ptr %567, i64 32
  %580 = load ptr, ptr %579, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %578, ptr align 1 %580, i64 %573, i1 false)
  %581 = load ptr, ptr %577, align 8, !tbaa !99
  %582 = getelementptr inbounds nuw i8, ptr %581, i64 %573
  store ptr %582, ptr %577, align 8, !tbaa !99
  %583 = load ptr, ptr %579, align 8, !tbaa !59
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 %573
  store ptr %584, ptr %579, align 8, !tbaa !59
  %585 = getelementptr inbounds nuw i8, ptr %565, i64 40
  %586 = load i64, ptr %585, align 8, !tbaa !101
  %587 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %586, i64 %573), !nosanitize !49
  %588 = extractvalue { i64, i1 } %587, 1, !nosanitize !49
  br i1 %588, label %589, label %590, !prof !50, !nosanitize !49

589:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

590:                                              ; preds = %576
  %591 = extractvalue { i64, i1 } %587, 0, !nosanitize !49
  store i64 %591, ptr %585, align 8, !tbaa !101
  %592 = load i32, ptr %570, align 8, !tbaa !100
  %593 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %592, i32 %574), !nosanitize !49
  %594 = extractvalue { i32, i1 } %593, 1, !nosanitize !49
  br i1 %594, label %595, label %596, !prof !50, !nosanitize !49

595:                                              ; preds = %590
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

596:                                              ; preds = %590
  %597 = extractvalue { i32, i1 } %593, 0, !nosanitize !49
  store i32 %597, ptr %570, align 8, !tbaa !100
  %598 = load i64, ptr %568, align 8, !tbaa !58
  %599 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %598, i64 %573), !nosanitize !49
  %600 = extractvalue { i64, i1 } %599, 1, !nosanitize !49
  br i1 %600, label %601, label %602, !prof !50, !nosanitize !49

601:                                              ; preds = %596
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

602:                                              ; preds = %596
  %603 = extractvalue { i64, i1 } %599, 0, !nosanitize !49
  store i64 %603, ptr %568, align 8, !tbaa !58
  %604 = icmp eq i64 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %602
  %606 = getelementptr inbounds nuw i8, ptr %567, i64 16
  %607 = load ptr, ptr %606, align 8, !tbaa !44
  store ptr %607, ptr %579, align 8, !tbaa !59
  br label %608

608:                                              ; preds = %605, %602, %563
  %609 = icmp eq i32 %555, 0
  br i1 %609, label %613, label %610

610:                                              ; preds = %608, %376
  %611 = phi i32 [ 3, %376 ], [ 2, %608 ]
  %612 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %612, align 8, !tbaa !95
  br label %613

613:                                              ; preds = %610, %608, %536, %531, %384
  %614 = phi i32 [ 0, %536 ], [ 1, %384 ], [ 0, %531 ], [ 0, %608 ], [ %611, %610 ]
  ret i32 %614
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

28:                                               ; preds = %437, %2
  %29 = load i32, ptr %3, align 4, !tbaa !76
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %321

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 8, !tbaa !33
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %268, %31
  %35 = load i64, ptr %5, align 8, !tbaa !62
  %36 = load i32, ptr %3, align 4, !tbaa !76
  %37 = zext i32 %36 to i64
  %38 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 %37), !nosanitize !49
  %39 = extractvalue { i64, i1 } %38, 1, !nosanitize !49
  br i1 %39, label %40, label %41, !prof !50, !nosanitize !49

40:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

41:                                               ; preds = %34
  %42 = extractvalue { i64, i1 } %38, 0, !nosanitize !49
  %43 = load i32, ptr %6, align 4, !tbaa !74
  %44 = zext i32 %43 to i64
  %45 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %42, i64 %44), !nosanitize !49
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !49
  br i1 %46, label %47, label %48, !prof !50, !nosanitize !49

47:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

48:                                               ; preds = %41
  %49 = extractvalue { i64, i1 } %45, 0, !nosanitize !49
  %50 = trunc i64 %49 to i32
  %51 = load i32, ptr %4, align 8, !tbaa !33
  %52 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %51, i32 262), !nosanitize !49
  %53 = extractvalue { i32, i1 } %52, 1, !nosanitize !49
  br i1 %53, label %54, label %55, !prof !50, !nosanitize !49

54:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

55:                                               ; preds = %48
  %56 = extractvalue { i32, i1 } %52, 0, !nosanitize !49
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %32, i32 %56), !nosanitize !49
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !49
  br i1 %58, label %59, label %60, !prof !50, !nosanitize !49

59:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

60:                                               ; preds = %55
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !49
  %62 = icmp ult i32 %43, %61
  br i1 %62, label %134, label %63

63:                                               ; preds = %60
  %64 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %32, i32 %50), !nosanitize !49
  %65 = extractvalue { i32, i1 } %64, 1, !nosanitize !49
  br i1 %65, label %66, label %67, !prof !50, !nosanitize !49

66:                                               ; preds = %63
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

76:                                               ; preds = %67
  %77 = extractvalue { i32, i1 } %73, 0, !nosanitize !49
  store i32 %77, ptr %8, align 8, !tbaa !84
  %78 = load i32, ptr %6, align 4, !tbaa !74
  %79 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %78, i32 %32), !nosanitize !49
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !49
  br i1 %80, label %81, label %82, !prof !50, !nosanitize !49

81:                                               ; preds = %82, %76
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %76
  %83 = extractvalue { i32, i1 } %79, 0, !nosanitize !49
  store i32 %83, ptr %6, align 4, !tbaa !74
  %84 = load i64, ptr %9, align 8, !tbaa !75
  %85 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %84, i64 %33), !nosanitize !49
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !49
  br i1 %86, label %81, label %87, !prof !50, !nosanitize !49

87:                                               ; preds = %82
  %88 = extractvalue { i64, i1 } %85, 0, !nosanitize !49
  store i64 %88, ptr %9, align 8, !tbaa !75
  %89 = load i32, ptr %10, align 4, !tbaa !77
  %90 = icmp ugt i32 %89, %83
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 %83, ptr %10, align 4, !tbaa !77
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i32, ptr %4, align 8, !tbaa !33
  %94 = load i32, ptr %11, align 4, !tbaa !36
  %95 = load ptr, ptr %12, align 8, !tbaa !41
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds nuw [2 x i8], ptr %95, i64 %96
  %98 = icmp eq i32 %94, 0
  br label %99

99:                                               ; preds = %108, %92
  %100 = phi ptr [ %97, %92 ], [ %102, %108 ]
  %101 = phi i32 [ %94, %92 ], [ %109, %108 ]
  %102 = getelementptr inbounds i8, ptr %100, i64 -2
  %103 = load i16, ptr %102, align 2, !tbaa !63
  %104 = zext i16 %103 to i32
  %105 = tail call i32 @llvm.usub.sat.i32(i32 %104, i32 %93)
  %106 = trunc nuw i32 %105 to i16
  store i16 %106, ptr %102, align 2, !tbaa !63
  br i1 %98, label %107, label %108, !prof !50, !nosanitize !49

107:                                              ; preds = %99
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

108:                                              ; preds = %99
  %109 = add i32 %101, -1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %99, !llvm.loop !85

111:                                              ; preds = %108
  %112 = load ptr, ptr %13, align 8, !tbaa !40
  %113 = zext i32 %93 to i64
  %114 = getelementptr inbounds nuw [2 x i8], ptr %112, i64 %113
  %115 = icmp eq i32 %93, 0
  br label %116

116:                                              ; preds = %125, %111
  %117 = phi ptr [ %114, %111 ], [ %119, %125 ]
  %118 = phi i32 [ %93, %111 ], [ %126, %125 ]
  %119 = getelementptr inbounds i8, ptr %117, i64 -2
  %120 = load i16, ptr %119, align 2, !tbaa !63
  %121 = zext i16 %120 to i32
  %122 = tail call i32 @llvm.usub.sat.i32(i32 %121, i32 %93)
  %123 = trunc nuw i32 %122 to i16
  store i16 %123, ptr %119, align 2, !tbaa !63
  br i1 %115, label %124, label %125, !prof !50, !nosanitize !49

124:                                              ; preds = %116
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

125:                                              ; preds = %116
  %126 = add i32 %118, -1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %116, !llvm.loop !88

128:                                              ; preds = %125
  store i32 1, ptr %14, align 8, !tbaa !64
  %129 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %50, i32 %32), !nosanitize !49
  %130 = extractvalue { i32, i1 } %129, 1, !nosanitize !49
  br i1 %130, label %131, label %132, !prof !50, !nosanitize !49

131:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

132:                                              ; preds = %128
  %133 = extractvalue { i32, i1 } %129, 0, !nosanitize !49
  br label %134

134:                                              ; preds = %132, %60
  %135 = phi i32 [ %133, %132 ], [ %50, %60 ]
  %136 = load ptr, ptr %0, align 8, !tbaa !20
  %137 = getelementptr inbounds nuw i8, ptr %136, i64 8
  %138 = load i32, ptr %137, align 8, !tbaa !82
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %273, label %140

140:                                              ; preds = %134
  %141 = load ptr, ptr %7, align 8, !tbaa !39
  %142 = load i32, ptr %6, align 4, !tbaa !74
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds nuw i8, ptr %141, i64 %143
  %145 = load i32, ptr %3, align 4, !tbaa !76
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds nuw i8, ptr %144, i64 %146
  %148 = tail call i32 @llvm.umin.i32(i32 %138, i32 %135)
  %149 = icmp eq i32 %135, 0
  br i1 %149, label %180, label %150

150:                                              ; preds = %140
  %151 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %138, i32 %148), !nosanitize !49
  %152 = extractvalue { i32, i1 } %151, 1, !nosanitize !49
  br i1 %152, label %153, label %154, !prof !50, !nosanitize !49

153:                                              ; preds = %150
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

154:                                              ; preds = %150
  %155 = extractvalue { i32, i1 } %151, 0, !nosanitize !49
  store i32 %155, ptr %137, align 8, !tbaa !82
  %156 = load ptr, ptr %136, align 8, !tbaa !83
  %157 = zext i32 %148 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %147, ptr align 1 %156, i64 %157, i1 false)
  %158 = getelementptr inbounds nuw i8, ptr %136, i64 56
  %159 = load ptr, ptr %158, align 8, !tbaa !19
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 48
  %161 = load i32, ptr %160, align 8, !tbaa !30
  switch i32 %161, label %170 [
    i32 1, label %162
    i32 2, label %166
  ]

162:                                              ; preds = %154
  %163 = getelementptr inbounds nuw i8, ptr %136, i64 96
  %164 = load i64, ptr %163, align 8, !tbaa !60
  %165 = tail call i64 @adler32(i64 noundef %164, ptr noundef %147, i32 noundef %148) #10
  store i64 %165, ptr %163, align 8, !tbaa !60
  br label %170

166:                                              ; preds = %154
  %167 = getelementptr inbounds nuw i8, ptr %136, i64 96
  %168 = load i64, ptr %167, align 8, !tbaa !60
  %169 = tail call i64 @crc32(i64 noundef %168, ptr noundef %147, i32 noundef %148) #10
  store i64 %169, ptr %167, align 8, !tbaa !60
  br label %170

170:                                              ; preds = %166, %162, %154
  %171 = load ptr, ptr %136, align 8, !tbaa !83
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 %157
  store ptr %172, ptr %136, align 8, !tbaa !83
  %173 = getelementptr inbounds nuw i8, ptr %136, i64 16
  %174 = load i64, ptr %173, align 8, !tbaa !56
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %174, i64 %157), !nosanitize !49
  %176 = extractvalue { i64, i1 } %175, 1, !nosanitize !49
  br i1 %176, label %177, label %178, !prof !50, !nosanitize !49

177:                                              ; preds = %170
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

178:                                              ; preds = %170
  %179 = extractvalue { i64, i1 } %175, 0, !nosanitize !49
  store i64 %179, ptr %173, align 8, !tbaa !56
  br label %180

180:                                              ; preds = %178, %140
  %181 = phi i32 [ %148, %178 ], [ 0, %140 ]
  %182 = load i32, ptr %3, align 4, !tbaa !76
  %183 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %182, i32 %181), !nosanitize !49
  %184 = extractvalue { i32, i1 } %183, 1, !nosanitize !49
  br i1 %184, label %185, label %186, !prof !50, !nosanitize !49

185:                                              ; preds = %180
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

186:                                              ; preds = %180
  %187 = extractvalue { i32, i1 } %183, 0, !nosanitize !49
  store i32 %187, ptr %3, align 4, !tbaa !76
  %188 = load i32, ptr %10, align 4, !tbaa !77
  %189 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %188), !nosanitize !49
  %190 = extractvalue { i32, i1 } %189, 1, !nosanitize !49
  br i1 %190, label %191, label %192, !prof !50, !nosanitize !49

191:                                              ; preds = %186
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

192:                                              ; preds = %186
  %193 = extractvalue { i32, i1 } %189, 0, !nosanitize !49
  %194 = icmp ugt i32 %193, 2
  br i1 %194, label %195, label %266

195:                                              ; preds = %192
  %196 = load i32, ptr %6, align 4, !tbaa !74
  %197 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %196, i32 %188), !nosanitize !49
  %198 = extractvalue { i32, i1 } %197, 0, !nosanitize !49
  %199 = extractvalue { i32, i1 } %197, 1, !nosanitize !49
  br i1 %199, label %200, label %201, !prof !50, !nosanitize !49

200:                                              ; preds = %195
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

201:                                              ; preds = %195
  %202 = load ptr, ptr %7, align 8, !tbaa !39
  %203 = zext i32 %198 to i64
  %204 = getelementptr inbounds nuw i8, ptr %202, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !8
  %206 = zext i8 %205 to i32
  store i32 %206, ptr %15, align 8, !tbaa !81
  %207 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %198, i32 1), !nosanitize !49
  %208 = extractvalue { i32, i1 } %207, 1, !nosanitize !49
  br i1 %208, label %209, label %210, !prof !50, !nosanitize !49

209:                                              ; preds = %201
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

210:                                              ; preds = %201
  %211 = extractvalue { i32, i1 } %207, 0, !nosanitize !49
  %212 = load i32, ptr %16, align 8, !tbaa !38
  %213 = shl i32 %206, %212
  %214 = zext i32 %211 to i64
  %215 = getelementptr inbounds nuw i8, ptr %202, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !8
  %217 = zext i8 %216 to i32
  %218 = xor i32 %213, %217
  %219 = load i32, ptr %17, align 4, !tbaa !37
  %220 = and i32 %218, %219
  store i32 %220, ptr %15, align 8, !tbaa !81
  br label %221

221:                                              ; preds = %263, %210
  %222 = phi i32 [ %188, %210 ], [ %259, %263 ]
  %223 = phi i32 [ %198, %210 ], [ %255, %263 ]
  %224 = icmp eq i32 %222, 0
  br i1 %224, label %266, label %225

225:                                              ; preds = %221
  %226 = load i32, ptr %15, align 8, !tbaa !81
  %227 = shl i32 %226, %212
  %228 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %223, i32 3), !nosanitize !49
  %229 = extractvalue { i32, i1 } %228, 1, !nosanitize !49
  br i1 %229, label %230, label %231, !prof !50, !nosanitize !49

230:                                              ; preds = %225
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

231:                                              ; preds = %225
  %232 = extractvalue { i32, i1 } %228, 0, !nosanitize !49
  %233 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %232, i32 1), !nosanitize !49
  %234 = extractvalue { i32, i1 } %233, 1, !nosanitize !49
  br i1 %234, label %235, label %236, !prof !50, !nosanitize !49

235:                                              ; preds = %231
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

236:                                              ; preds = %231
  %237 = extractvalue { i32, i1 } %233, 0, !nosanitize !49
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds nuw i8, ptr %202, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !8
  %241 = zext i8 %240 to i32
  %242 = xor i32 %227, %241
  %243 = and i32 %242, %219
  store i32 %243, ptr %15, align 8, !tbaa !81
  %244 = load ptr, ptr %12, align 8, !tbaa !41
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds nuw [2 x i8], ptr %244, i64 %245
  %247 = load i16, ptr %246, align 2, !tbaa !63
  %248 = load ptr, ptr %13, align 8, !tbaa !40
  %249 = load i32, ptr %18, align 8, !tbaa !34
  %250 = and i32 %249, %223
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds nuw [2 x i8], ptr %248, i64 %251
  store i16 %247, ptr %252, align 2, !tbaa !63
  %253 = trunc i32 %223 to i16
  store i16 %253, ptr %246, align 2, !tbaa !63
  %254 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %223, i32 1), !nosanitize !49
  %255 = extractvalue { i32, i1 } %254, 0, !nosanitize !49
  %256 = extractvalue { i32, i1 } %254, 1, !nosanitize !49
  br i1 %256, label %257, label %258, !prof !50, !nosanitize !49

257:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

258:                                              ; preds = %236
  %259 = add i32 %222, -1
  store i32 %259, ptr %10, align 4, !tbaa !77
  %260 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %187, i32 %259), !nosanitize !49
  %261 = extractvalue { i32, i1 } %260, 1, !nosanitize !49
  br i1 %261, label %262, label %263, !prof !50, !nosanitize !49

262:                                              ; preds = %258
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

263:                                              ; preds = %258
  %264 = extractvalue { i32, i1 } %260, 0, !nosanitize !49
  %265 = icmp ult i32 %264, 3
  br i1 %265, label %266, label %221, !llvm.loop !89

266:                                              ; preds = %263, %221, %192
  %267 = icmp ult i32 %187, 262
  br i1 %267, label %268, label %273

268:                                              ; preds = %266
  %269 = load ptr, ptr %0, align 8, !tbaa !20
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 8
  %271 = load i32, ptr %270, align 8, !tbaa !82
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %34, !llvm.loop !90

273:                                              ; preds = %268, %266, %134
  %274 = load i64, ptr %19, align 8, !tbaa !42
  %275 = load i64, ptr %5, align 8, !tbaa !62
  %276 = icmp ult i64 %274, %275
  br i1 %276, label %277, label %316

277:                                              ; preds = %273
  %278 = load i32, ptr %6, align 4, !tbaa !74
  %279 = zext i32 %278 to i64
  %280 = load i32, ptr %3, align 4, !tbaa !76
  %281 = zext i32 %280 to i64
  %282 = add nuw nsw i64 %281, %279
  %283 = icmp ult i64 %274, %282
  br i1 %283, label %284, label %294

284:                                              ; preds = %277
  %285 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %275, i64 %282), !nosanitize !49
  %286 = extractvalue { i64, i1 } %285, 1, !nosanitize !49
  br i1 %286, label %287, label %288, !prof !50, !nosanitize !49

287:                                              ; preds = %284
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

288:                                              ; preds = %284
  %289 = extractvalue { i64, i1 } %285, 0, !nosanitize !49
  %290 = tail call i64 @llvm.umin.i64(i64 %289, i64 258)
  %291 = load ptr, ptr %7, align 8, !tbaa !39
  %292 = getelementptr inbounds nuw i8, ptr %291, i64 %282
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %292, i8 0, i64 %290, i1 false)
  %293 = add nuw nsw i64 %290, %282
  br label %314

294:                                              ; preds = %277
  %295 = add nuw nsw i64 %282, 258
  %296 = icmp ult i64 %274, %295
  br i1 %296, label %297, label %316

297:                                              ; preds = %294
  %298 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %275, i64 %274), !nosanitize !49
  %299 = extractvalue { i64, i1 } %298, 1, !nosanitize !49
  br i1 %299, label %300, label %301, !prof !50, !nosanitize !49

300:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

301:                                              ; preds = %297
  %302 = sub nuw nsw i64 %295, %274
  %303 = extractvalue { i64, i1 } %298, 0, !nosanitize !49
  %304 = tail call i64 @llvm.umin.i64(i64 %302, i64 %303)
  %305 = load ptr, ptr %7, align 8, !tbaa !39
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 %274
  %307 = and i64 %304, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %306, i8 0, i64 %307, i1 false)
  %308 = load i64, ptr %19, align 8, !tbaa !42
  %309 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %308, i64 %304), !nosanitize !49
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !49
  br i1 %310, label %311, label %312, !prof !50, !nosanitize !49

311:                                              ; preds = %301
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

312:                                              ; preds = %301
  %313 = extractvalue { i64, i1 } %309, 0, !nosanitize !49
  br label %314

314:                                              ; preds = %312, %288
  %315 = phi i64 [ %293, %288 ], [ %313, %312 ]
  store i64 %315, ptr %19, align 8, !tbaa !42
  br label %316

316:                                              ; preds = %314, %294, %273
  %317 = load i32, ptr %3, align 4, !tbaa !76
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = icmp eq i32 %1, 0
  br i1 %320, label %576, label %438

321:                                              ; preds = %316, %28
  store i32 0, ptr %20, align 8, !tbaa !79
  %322 = load ptr, ptr %21, align 8, !tbaa !39
  %323 = load i32, ptr %22, align 4, !tbaa !74
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds nuw i8, ptr %322, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !8
  %327 = load i32, ptr %24, align 4, !tbaa !122
  %328 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %327, i32 1), !nosanitize !49
  %329 = extractvalue { i32, i1 } %328, 1, !nosanitize !49
  br i1 %329, label %330, label %331, !prof !50, !nosanitize !49

330:                                              ; preds = %321
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

331:                                              ; preds = %321
  %332 = extractvalue { i32, i1 } %328, 0, !nosanitize !49
  %333 = load ptr, ptr %23, align 8, !tbaa !48
  store i32 %332, ptr %24, align 4, !tbaa !122
  %334 = zext i32 %327 to i64
  %335 = getelementptr inbounds nuw i8, ptr %333, i64 %334
  store i8 0, ptr %335, align 1, !tbaa !8
  %336 = load i32, ptr %24, align 4, !tbaa !122
  %337 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %336, i32 1), !nosanitize !49
  %338 = extractvalue { i32, i1 } %337, 1, !nosanitize !49
  br i1 %338, label %339, label %340, !prof !50, !nosanitize !49

339:                                              ; preds = %331
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

340:                                              ; preds = %331
  %341 = extractvalue { i32, i1 } %337, 0, !nosanitize !49
  %342 = load ptr, ptr %23, align 8, !tbaa !48
  store i32 %341, ptr %24, align 4, !tbaa !122
  %343 = zext i32 %336 to i64
  %344 = getelementptr inbounds nuw i8, ptr %342, i64 %343
  store i8 0, ptr %344, align 1, !tbaa !8
  %345 = load i32, ptr %24, align 4, !tbaa !122
  %346 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %345, i32 1), !nosanitize !49
  %347 = extractvalue { i32, i1 } %346, 1, !nosanitize !49
  br i1 %347, label %348, label %349, !prof !50, !nosanitize !49

348:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

349:                                              ; preds = %340
  %350 = extractvalue { i32, i1 } %346, 0, !nosanitize !49
  %351 = load ptr, ptr %23, align 8, !tbaa !48
  store i32 %350, ptr %24, align 4, !tbaa !122
  %352 = zext i32 %345 to i64
  %353 = getelementptr inbounds nuw i8, ptr %351, i64 %352
  store i8 %326, ptr %353, align 1, !tbaa !8
  %354 = zext i8 %326 to i64
  %355 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %354
  %356 = load i16, ptr %355, align 4, !tbaa !8
  %357 = add i16 %356, 1
  store i16 %357, ptr %355, align 4, !tbaa !8
  %358 = load i32, ptr %24, align 4, !tbaa !122
  %359 = load i32, ptr %26, align 8, !tbaa !51
  %360 = icmp eq i32 %358, %359
  %361 = load i32, ptr %3, align 4, !tbaa !76
  %362 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %361, i32 1), !nosanitize !49
  %363 = extractvalue { i32, i1 } %362, 1, !nosanitize !49
  br i1 %363, label %364, label %365, !prof !50, !nosanitize !49

364:                                              ; preds = %517, %447, %380, %349
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

365:                                              ; preds = %349
  %366 = extractvalue { i32, i1 } %362, 0, !nosanitize !49
  store i32 %366, ptr %3, align 4, !tbaa !76
  %367 = load i32, ptr %22, align 4, !tbaa !74
  %368 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %367, i32 1), !nosanitize !49
  %369 = extractvalue { i32, i1 } %368, 1, !nosanitize !49
  br i1 %369, label %370, label %371, !prof !50, !nosanitize !49

370:                                              ; preds = %365
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

371:                                              ; preds = %365
  %372 = extractvalue { i32, i1 } %368, 0, !nosanitize !49
  store i32 %372, ptr %22, align 4, !tbaa !74
  br i1 %360, label %373, label %437

373:                                              ; preds = %371
  %374 = load i64, ptr %27, align 8, !tbaa !75
  %375 = icmp sgt i64 %374, -1
  br i1 %375, label %376, label %380

376:                                              ; preds = %373
  %377 = load ptr, ptr %21, align 8, !tbaa !39
  %378 = and i64 %374, 4294967295
  %379 = getelementptr inbounds nuw i8, ptr %377, i64 %378
  br label %380

380:                                              ; preds = %376, %373
  %381 = phi ptr [ %379, %376 ], [ null, %373 ]
  %382 = zext i32 %372 to i64
  %383 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %382, i64 %374), !nosanitize !49
  %384 = extractvalue { i64, i1 } %383, 1, !nosanitize !49
  br i1 %384, label %364, label %385, !prof !50, !nosanitize !49

385:                                              ; preds = %380
  %386 = extractvalue { i64, i1 } %383, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %381, i64 noundef %386, i32 noundef 0) #10
  %387 = load i32, ptr %22, align 4, !tbaa !74
  %388 = zext i32 %387 to i64
  store i64 %388, ptr %27, align 8, !tbaa !75
  %389 = load ptr, ptr %0, align 8, !tbaa !20
  %390 = getelementptr inbounds nuw i8, ptr %389, i64 56
  %391 = load ptr, ptr %390, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %391) #10
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 40
  %393 = load i64, ptr %392, align 8, !tbaa !58
  %394 = getelementptr inbounds nuw i8, ptr %389, i64 32
  %395 = load i32, ptr %394, align 8, !tbaa !100
  %396 = zext i32 %395 to i64
  %397 = tail call i64 @llvm.umin.i64(i64 %393, i64 %396)
  %398 = trunc nuw i64 %397 to i32
  %399 = icmp eq i64 %397, 0
  br i1 %399, label %432, label %400

400:                                              ; preds = %385
  %401 = getelementptr inbounds nuw i8, ptr %389, i64 24
  %402 = load ptr, ptr %401, align 8, !tbaa !99
  %403 = getelementptr inbounds nuw i8, ptr %391, i64 32
  %404 = load ptr, ptr %403, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %402, ptr align 1 %404, i64 %397, i1 false)
  %405 = load ptr, ptr %401, align 8, !tbaa !99
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 %397
  store ptr %406, ptr %401, align 8, !tbaa !99
  %407 = load ptr, ptr %403, align 8, !tbaa !59
  %408 = getelementptr inbounds nuw i8, ptr %407, i64 %397
  store ptr %408, ptr %403, align 8, !tbaa !59
  %409 = getelementptr inbounds nuw i8, ptr %389, i64 40
  %410 = load i64, ptr %409, align 8, !tbaa !101
  %411 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %410, i64 %397), !nosanitize !49
  %412 = extractvalue { i64, i1 } %411, 1, !nosanitize !49
  br i1 %412, label %413, label %414, !prof !50, !nosanitize !49

413:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

414:                                              ; preds = %400
  %415 = extractvalue { i64, i1 } %411, 0, !nosanitize !49
  store i64 %415, ptr %409, align 8, !tbaa !101
  %416 = load i32, ptr %394, align 8, !tbaa !100
  %417 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %416, i32 %398), !nosanitize !49
  %418 = extractvalue { i32, i1 } %417, 1, !nosanitize !49
  br i1 %418, label %419, label %420, !prof !50, !nosanitize !49

419:                                              ; preds = %414
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

420:                                              ; preds = %414
  %421 = extractvalue { i32, i1 } %417, 0, !nosanitize !49
  store i32 %421, ptr %394, align 8, !tbaa !100
  %422 = load i64, ptr %392, align 8, !tbaa !58
  %423 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %422, i64 %397), !nosanitize !49
  %424 = extractvalue { i64, i1 } %423, 1, !nosanitize !49
  br i1 %424, label %425, label %426, !prof !50, !nosanitize !49

425:                                              ; preds = %420
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

426:                                              ; preds = %420
  %427 = extractvalue { i64, i1 } %423, 0, !nosanitize !49
  store i64 %427, ptr %392, align 8, !tbaa !58
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %426
  %430 = getelementptr inbounds nuw i8, ptr %391, i64 16
  %431 = load ptr, ptr %430, align 8, !tbaa !44
  store ptr %431, ptr %403, align 8, !tbaa !59
  br label %432

432:                                              ; preds = %429, %426, %385
  %433 = load ptr, ptr %0, align 8, !tbaa !20
  %434 = getelementptr inbounds nuw i8, ptr %433, i64 32
  %435 = load i32, ptr %434, align 8, !tbaa !100
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %576, label %437

437:                                              ; preds = %432, %371
  br label %28, !llvm.loop !123

438:                                              ; preds = %319
  store i32 0, ptr %10, align 4, !tbaa !77
  %439 = icmp eq i32 %1, 4
  br i1 %439, label %440, label %506

440:                                              ; preds = %438
  %441 = load i64, ptr %9, align 8, !tbaa !75
  %442 = icmp sgt i64 %441, -1
  br i1 %442, label %443, label %447

443:                                              ; preds = %440
  %444 = load ptr, ptr %7, align 8, !tbaa !39
  %445 = and i64 %441, 4294967295
  %446 = getelementptr inbounds nuw i8, ptr %444, i64 %445
  br label %447

447:                                              ; preds = %443, %440
  %448 = phi ptr [ %446, %443 ], [ null, %440 ]
  %449 = load i32, ptr %6, align 4, !tbaa !74
  %450 = zext i32 %449 to i64
  %451 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %450, i64 %441), !nosanitize !49
  %452 = extractvalue { i64, i1 } %451, 1, !nosanitize !49
  br i1 %452, label %364, label %453, !prof !50, !nosanitize !49

453:                                              ; preds = %447
  %454 = extractvalue { i64, i1 } %451, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %448, i64 noundef %454, i32 noundef 1) #10
  %455 = load i32, ptr %6, align 4, !tbaa !74
  %456 = zext i32 %455 to i64
  store i64 %456, ptr %9, align 8, !tbaa !75
  %457 = load ptr, ptr %0, align 8, !tbaa !20
  %458 = getelementptr inbounds nuw i8, ptr %457, i64 56
  %459 = load ptr, ptr %458, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %459) #10
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 40
  %461 = load i64, ptr %460, align 8, !tbaa !58
  %462 = getelementptr inbounds nuw i8, ptr %457, i64 32
  %463 = load i32, ptr %462, align 8, !tbaa !100
  %464 = zext i32 %463 to i64
  %465 = tail call i64 @llvm.umin.i64(i64 %461, i64 %464)
  %466 = trunc nuw i64 %465 to i32
  %467 = icmp eq i64 %465, 0
  br i1 %467, label %500, label %468

468:                                              ; preds = %453
  %469 = getelementptr inbounds nuw i8, ptr %457, i64 24
  %470 = load ptr, ptr %469, align 8, !tbaa !99
  %471 = getelementptr inbounds nuw i8, ptr %459, i64 32
  %472 = load ptr, ptr %471, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %470, ptr align 1 %472, i64 %465, i1 false)
  %473 = load ptr, ptr %469, align 8, !tbaa !99
  %474 = getelementptr inbounds nuw i8, ptr %473, i64 %465
  store ptr %474, ptr %469, align 8, !tbaa !99
  %475 = load ptr, ptr %471, align 8, !tbaa !59
  %476 = getelementptr inbounds nuw i8, ptr %475, i64 %465
  store ptr %476, ptr %471, align 8, !tbaa !59
  %477 = getelementptr inbounds nuw i8, ptr %457, i64 40
  %478 = load i64, ptr %477, align 8, !tbaa !101
  %479 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %478, i64 %465), !nosanitize !49
  %480 = extractvalue { i64, i1 } %479, 1, !nosanitize !49
  br i1 %480, label %481, label %482, !prof !50, !nosanitize !49

481:                                              ; preds = %468
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

482:                                              ; preds = %468
  %483 = extractvalue { i64, i1 } %479, 0, !nosanitize !49
  store i64 %483, ptr %477, align 8, !tbaa !101
  %484 = load i32, ptr %462, align 8, !tbaa !100
  %485 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %484, i32 %466), !nosanitize !49
  %486 = extractvalue { i32, i1 } %485, 1, !nosanitize !49
  br i1 %486, label %487, label %488, !prof !50, !nosanitize !49

487:                                              ; preds = %482
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

488:                                              ; preds = %482
  %489 = extractvalue { i32, i1 } %485, 0, !nosanitize !49
  store i32 %489, ptr %462, align 8, !tbaa !100
  %490 = load i64, ptr %460, align 8, !tbaa !58
  %491 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %490, i64 %465), !nosanitize !49
  %492 = extractvalue { i64, i1 } %491, 1, !nosanitize !49
  br i1 %492, label %493, label %494, !prof !50, !nosanitize !49

493:                                              ; preds = %488
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

494:                                              ; preds = %488
  %495 = extractvalue { i64, i1 } %491, 0, !nosanitize !49
  store i64 %495, ptr %460, align 8, !tbaa !58
  %496 = icmp eq i64 %495, 0
  br i1 %496, label %497, label %500

497:                                              ; preds = %494
  %498 = getelementptr inbounds nuw i8, ptr %459, i64 16
  %499 = load ptr, ptr %498, align 8, !tbaa !44
  store ptr %499, ptr %471, align 8, !tbaa !59
  br label %500

500:                                              ; preds = %497, %494, %453
  %501 = load ptr, ptr %0, align 8, !tbaa !20
  %502 = getelementptr inbounds nuw i8, ptr %501, i64 32
  %503 = load i32, ptr %502, align 8, !tbaa !100
  %504 = icmp eq i32 %503, 0
  %505 = select i1 %504, i32 2, i32 3
  br label %576

506:                                              ; preds = %438
  %507 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %508 = load i32, ptr %507, align 4, !tbaa !122
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %575, label %510

510:                                              ; preds = %506
  %511 = load i64, ptr %9, align 8, !tbaa !75
  %512 = icmp sgt i64 %511, -1
  br i1 %512, label %513, label %517

513:                                              ; preds = %510
  %514 = load ptr, ptr %7, align 8, !tbaa !39
  %515 = and i64 %511, 4294967295
  %516 = getelementptr inbounds nuw i8, ptr %514, i64 %515
  br label %517

517:                                              ; preds = %513, %510
  %518 = phi ptr [ %516, %513 ], [ null, %510 ]
  %519 = load i32, ptr %6, align 4, !tbaa !74
  %520 = zext i32 %519 to i64
  %521 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %520, i64 %511), !nosanitize !49
  %522 = extractvalue { i64, i1 } %521, 1, !nosanitize !49
  br i1 %522, label %364, label %523, !prof !50, !nosanitize !49

523:                                              ; preds = %517
  %524 = extractvalue { i64, i1 } %521, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %518, i64 noundef %524, i32 noundef 0) #10
  %525 = load i32, ptr %6, align 4, !tbaa !74
  %526 = zext i32 %525 to i64
  store i64 %526, ptr %9, align 8, !tbaa !75
  %527 = load ptr, ptr %0, align 8, !tbaa !20
  %528 = getelementptr inbounds nuw i8, ptr %527, i64 56
  %529 = load ptr, ptr %528, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %529) #10
  %530 = getelementptr inbounds nuw i8, ptr %529, i64 40
  %531 = load i64, ptr %530, align 8, !tbaa !58
  %532 = getelementptr inbounds nuw i8, ptr %527, i64 32
  %533 = load i32, ptr %532, align 8, !tbaa !100
  %534 = zext i32 %533 to i64
  %535 = tail call i64 @llvm.umin.i64(i64 %531, i64 %534)
  %536 = trunc nuw i64 %535 to i32
  %537 = icmp eq i64 %535, 0
  br i1 %537, label %570, label %538

538:                                              ; preds = %523
  %539 = getelementptr inbounds nuw i8, ptr %527, i64 24
  %540 = load ptr, ptr %539, align 8, !tbaa !99
  %541 = getelementptr inbounds nuw i8, ptr %529, i64 32
  %542 = load ptr, ptr %541, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %540, ptr align 1 %542, i64 %535, i1 false)
  %543 = load ptr, ptr %539, align 8, !tbaa !99
  %544 = getelementptr inbounds nuw i8, ptr %543, i64 %535
  store ptr %544, ptr %539, align 8, !tbaa !99
  %545 = load ptr, ptr %541, align 8, !tbaa !59
  %546 = getelementptr inbounds nuw i8, ptr %545, i64 %535
  store ptr %546, ptr %541, align 8, !tbaa !59
  %547 = getelementptr inbounds nuw i8, ptr %527, i64 40
  %548 = load i64, ptr %547, align 8, !tbaa !101
  %549 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %548, i64 %535), !nosanitize !49
  %550 = extractvalue { i64, i1 } %549, 1, !nosanitize !49
  br i1 %550, label %551, label %552, !prof !50, !nosanitize !49

551:                                              ; preds = %538
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

552:                                              ; preds = %538
  %553 = extractvalue { i64, i1 } %549, 0, !nosanitize !49
  store i64 %553, ptr %547, align 8, !tbaa !101
  %554 = load i32, ptr %532, align 8, !tbaa !100
  %555 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %554, i32 %536), !nosanitize !49
  %556 = extractvalue { i32, i1 } %555, 1, !nosanitize !49
  br i1 %556, label %557, label %558, !prof !50, !nosanitize !49

557:                                              ; preds = %552
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

558:                                              ; preds = %552
  %559 = extractvalue { i32, i1 } %555, 0, !nosanitize !49
  store i32 %559, ptr %532, align 8, !tbaa !100
  %560 = load i64, ptr %530, align 8, !tbaa !58
  %561 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %560, i64 %535), !nosanitize !49
  %562 = extractvalue { i64, i1 } %561, 1, !nosanitize !49
  br i1 %562, label %563, label %564, !prof !50, !nosanitize !49

563:                                              ; preds = %558
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

564:                                              ; preds = %558
  %565 = extractvalue { i64, i1 } %561, 0, !nosanitize !49
  store i64 %565, ptr %530, align 8, !tbaa !58
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %567, label %570

567:                                              ; preds = %564
  %568 = getelementptr inbounds nuw i8, ptr %529, i64 16
  %569 = load ptr, ptr %568, align 8, !tbaa !44
  store ptr %569, ptr %541, align 8, !tbaa !59
  br label %570

570:                                              ; preds = %567, %564, %523
  %571 = load ptr, ptr %0, align 8, !tbaa !20
  %572 = getelementptr inbounds nuw i8, ptr %571, i64 32
  %573 = load i32, ptr %572, align 8, !tbaa !100
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %576, label %575

575:                                              ; preds = %570, %506
  br label %576

576:                                              ; preds = %575, %570, %500, %432, %319
  %577 = phi i32 [ 0, %319 ], [ %505, %500 ], [ 0, %570 ], [ 1, %575 ], [ 0, %432 ]
  ret i32 %577
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

39:                                               ; preds = %602, %2
  %40 = load i32, ptr %3, align 4, !tbaa !76
  %41 = icmp ult i32 %40, 259
  br i1 %41, label %42, label %333

42:                                               ; preds = %39
  %43 = load i32, ptr %4, align 8, !tbaa !33
  %44 = zext i32 %43 to i64
  br label %45

45:                                               ; preds = %279, %42
  %46 = load i64, ptr %5, align 8, !tbaa !62
  %47 = load i32, ptr %3, align 4, !tbaa !76
  %48 = zext i32 %47 to i64
  %49 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %46, i64 %48), !nosanitize !49
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !49
  br i1 %50, label %51, label %52, !prof !50, !nosanitize !49

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

52:                                               ; preds = %45
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !49
  %54 = load i32, ptr %6, align 4, !tbaa !74
  %55 = zext i32 %54 to i64
  %56 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %53, i64 %55), !nosanitize !49
  %57 = extractvalue { i64, i1 } %56, 1, !nosanitize !49
  br i1 %57, label %58, label %59, !prof !50, !nosanitize !49

58:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

59:                                               ; preds = %52
  %60 = extractvalue { i64, i1 } %56, 0, !nosanitize !49
  %61 = trunc i64 %60 to i32
  %62 = load i32, ptr %4, align 8, !tbaa !33
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %62, i32 262), !nosanitize !49
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !49
  br i1 %64, label %65, label %66, !prof !50, !nosanitize !49

65:                                               ; preds = %59
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

66:                                               ; preds = %59
  %67 = extractvalue { i32, i1 } %63, 0, !nosanitize !49
  %68 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %67), !nosanitize !49
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !49
  br i1 %69, label %70, label %71, !prof !50, !nosanitize !49

70:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

71:                                               ; preds = %66
  %72 = extractvalue { i32, i1 } %68, 0, !nosanitize !49
  %73 = icmp ult i32 %54, %72
  br i1 %73, label %145, label %74

74:                                               ; preds = %71
  %75 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %43, i32 %61), !nosanitize !49
  %76 = extractvalue { i32, i1 } %75, 1, !nosanitize !49
  br i1 %76, label %77, label %78, !prof !50, !nosanitize !49

77:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

87:                                               ; preds = %78
  %88 = extractvalue { i32, i1 } %84, 0, !nosanitize !49
  store i32 %88, ptr %8, align 8, !tbaa !84
  %89 = load i32, ptr %6, align 4, !tbaa !74
  %90 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %89, i32 %43), !nosanitize !49
  %91 = extractvalue { i32, i1 } %90, 1, !nosanitize !49
  br i1 %91, label %92, label %93, !prof !50, !nosanitize !49

92:                                               ; preds = %93, %87
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

93:                                               ; preds = %87
  %94 = extractvalue { i32, i1 } %90, 0, !nosanitize !49
  store i32 %94, ptr %6, align 4, !tbaa !74
  %95 = load i64, ptr %9, align 8, !tbaa !75
  %96 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %95, i64 %44), !nosanitize !49
  %97 = extractvalue { i64, i1 } %96, 1, !nosanitize !49
  br i1 %97, label %92, label %98, !prof !50, !nosanitize !49

98:                                               ; preds = %93
  %99 = extractvalue { i64, i1 } %96, 0, !nosanitize !49
  store i64 %99, ptr %9, align 8, !tbaa !75
  %100 = load i32, ptr %10, align 4, !tbaa !77
  %101 = icmp ugt i32 %100, %94
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 %94, ptr %10, align 4, !tbaa !77
  br label %103

103:                                              ; preds = %102, %98
  %104 = load i32, ptr %4, align 8, !tbaa !33
  %105 = load i32, ptr %11, align 4, !tbaa !36
  %106 = load ptr, ptr %12, align 8, !tbaa !41
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds nuw [2 x i8], ptr %106, i64 %107
  %109 = icmp eq i32 %105, 0
  br label %110

110:                                              ; preds = %119, %103
  %111 = phi ptr [ %108, %103 ], [ %113, %119 ]
  %112 = phi i32 [ %105, %103 ], [ %120, %119 ]
  %113 = getelementptr inbounds i8, ptr %111, i64 -2
  %114 = load i16, ptr %113, align 2, !tbaa !63
  %115 = zext i16 %114 to i32
  %116 = tail call i32 @llvm.usub.sat.i32(i32 %115, i32 %104)
  %117 = trunc nuw i32 %116 to i16
  store i16 %117, ptr %113, align 2, !tbaa !63
  br i1 %109, label %118, label %119, !prof !50, !nosanitize !49

118:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

119:                                              ; preds = %110
  %120 = add i32 %112, -1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %110, !llvm.loop !85

122:                                              ; preds = %119
  %123 = load ptr, ptr %13, align 8, !tbaa !40
  %124 = zext i32 %104 to i64
  %125 = getelementptr inbounds nuw [2 x i8], ptr %123, i64 %124
  %126 = icmp eq i32 %104, 0
  br label %127

127:                                              ; preds = %136, %122
  %128 = phi ptr [ %125, %122 ], [ %130, %136 ]
  %129 = phi i32 [ %104, %122 ], [ %137, %136 ]
  %130 = getelementptr inbounds i8, ptr %128, i64 -2
  %131 = load i16, ptr %130, align 2, !tbaa !63
  %132 = zext i16 %131 to i32
  %133 = tail call i32 @llvm.usub.sat.i32(i32 %132, i32 %104)
  %134 = trunc nuw i32 %133 to i16
  store i16 %134, ptr %130, align 2, !tbaa !63
  br i1 %126, label %135, label %136, !prof !50, !nosanitize !49

135:                                              ; preds = %127
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

136:                                              ; preds = %127
  %137 = add i32 %129, -1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %127, !llvm.loop !88

139:                                              ; preds = %136
  store i32 1, ptr %14, align 8, !tbaa !64
  %140 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %61, i32 %43), !nosanitize !49
  %141 = extractvalue { i32, i1 } %140, 1, !nosanitize !49
  br i1 %141, label %142, label %143, !prof !50, !nosanitize !49

142:                                              ; preds = %139
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

143:                                              ; preds = %139
  %144 = extractvalue { i32, i1 } %140, 0, !nosanitize !49
  br label %145

145:                                              ; preds = %143, %71
  %146 = phi i32 [ %144, %143 ], [ %61, %71 ]
  %147 = load ptr, ptr %0, align 8, !tbaa !20
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 8
  %149 = load i32, ptr %148, align 8, !tbaa !82
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %284, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr %7, align 8, !tbaa !39
  %153 = load i32, ptr %6, align 4, !tbaa !74
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds nuw i8, ptr %152, i64 %154
  %156 = load i32, ptr %3, align 4, !tbaa !76
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds nuw i8, ptr %155, i64 %157
  %159 = tail call i32 @llvm.umin.i32(i32 %149, i32 %146)
  %160 = icmp eq i32 %146, 0
  br i1 %160, label %191, label %161

161:                                              ; preds = %151
  %162 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %149, i32 %159), !nosanitize !49
  %163 = extractvalue { i32, i1 } %162, 1, !nosanitize !49
  br i1 %163, label %164, label %165, !prof !50, !nosanitize !49

164:                                              ; preds = %161
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

165:                                              ; preds = %161
  %166 = extractvalue { i32, i1 } %162, 0, !nosanitize !49
  store i32 %166, ptr %148, align 8, !tbaa !82
  %167 = load ptr, ptr %147, align 8, !tbaa !83
  %168 = zext i32 %159 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %158, ptr align 1 %167, i64 %168, i1 false)
  %169 = getelementptr inbounds nuw i8, ptr %147, i64 56
  %170 = load ptr, ptr %169, align 8, !tbaa !19
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 48
  %172 = load i32, ptr %171, align 8, !tbaa !30
  switch i32 %172, label %181 [
    i32 1, label %173
    i32 2, label %177
  ]

173:                                              ; preds = %165
  %174 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %175 = load i64, ptr %174, align 8, !tbaa !60
  %176 = tail call i64 @adler32(i64 noundef %175, ptr noundef %158, i32 noundef %159) #10
  store i64 %176, ptr %174, align 8, !tbaa !60
  br label %181

177:                                              ; preds = %165
  %178 = getelementptr inbounds nuw i8, ptr %147, i64 96
  %179 = load i64, ptr %178, align 8, !tbaa !60
  %180 = tail call i64 @crc32(i64 noundef %179, ptr noundef %158, i32 noundef %159) #10
  store i64 %180, ptr %178, align 8, !tbaa !60
  br label %181

181:                                              ; preds = %177, %173, %165
  %182 = load ptr, ptr %147, align 8, !tbaa !83
  %183 = getelementptr inbounds nuw i8, ptr %182, i64 %168
  store ptr %183, ptr %147, align 8, !tbaa !83
  %184 = getelementptr inbounds nuw i8, ptr %147, i64 16
  %185 = load i64, ptr %184, align 8, !tbaa !56
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %168), !nosanitize !49
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !49
  br i1 %187, label %188, label %189, !prof !50, !nosanitize !49

188:                                              ; preds = %181
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

189:                                              ; preds = %181
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !49
  store i64 %190, ptr %184, align 8, !tbaa !56
  br label %191

191:                                              ; preds = %189, %151
  %192 = phi i32 [ %159, %189 ], [ 0, %151 ]
  %193 = load i32, ptr %3, align 4, !tbaa !76
  %194 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %193, i32 %192), !nosanitize !49
  %195 = extractvalue { i32, i1 } %194, 1, !nosanitize !49
  br i1 %195, label %196, label %197, !prof !50, !nosanitize !49

196:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

197:                                              ; preds = %191
  %198 = extractvalue { i32, i1 } %194, 0, !nosanitize !49
  store i32 %198, ptr %3, align 4, !tbaa !76
  %199 = load i32, ptr %10, align 4, !tbaa !77
  %200 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %198, i32 %199), !nosanitize !49
  %201 = extractvalue { i32, i1 } %200, 1, !nosanitize !49
  br i1 %201, label %202, label %203, !prof !50, !nosanitize !49

202:                                              ; preds = %197
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

203:                                              ; preds = %197
  %204 = extractvalue { i32, i1 } %200, 0, !nosanitize !49
  %205 = icmp ugt i32 %204, 2
  br i1 %205, label %206, label %277

206:                                              ; preds = %203
  %207 = load i32, ptr %6, align 4, !tbaa !74
  %208 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %207, i32 %199), !nosanitize !49
  %209 = extractvalue { i32, i1 } %208, 0, !nosanitize !49
  %210 = extractvalue { i32, i1 } %208, 1, !nosanitize !49
  br i1 %210, label %211, label %212, !prof !50, !nosanitize !49

211:                                              ; preds = %206
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

212:                                              ; preds = %206
  %213 = load ptr, ptr %7, align 8, !tbaa !39
  %214 = zext i32 %209 to i64
  %215 = getelementptr inbounds nuw i8, ptr %213, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !8
  %217 = zext i8 %216 to i32
  store i32 %217, ptr %15, align 8, !tbaa !81
  %218 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %209, i32 1), !nosanitize !49
  %219 = extractvalue { i32, i1 } %218, 1, !nosanitize !49
  br i1 %219, label %220, label %221, !prof !50, !nosanitize !49

220:                                              ; preds = %212
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

221:                                              ; preds = %212
  %222 = extractvalue { i32, i1 } %218, 0, !nosanitize !49
  %223 = load i32, ptr %16, align 8, !tbaa !38
  %224 = shl i32 %217, %223
  %225 = zext i32 %222 to i64
  %226 = getelementptr inbounds nuw i8, ptr %213, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !8
  %228 = zext i8 %227 to i32
  %229 = xor i32 %224, %228
  %230 = load i32, ptr %17, align 4, !tbaa !37
  %231 = and i32 %229, %230
  store i32 %231, ptr %15, align 8, !tbaa !81
  br label %232

232:                                              ; preds = %274, %221
  %233 = phi i32 [ %199, %221 ], [ %270, %274 ]
  %234 = phi i32 [ %209, %221 ], [ %266, %274 ]
  %235 = icmp eq i32 %233, 0
  br i1 %235, label %277, label %236

236:                                              ; preds = %232
  %237 = load i32, ptr %15, align 8, !tbaa !81
  %238 = shl i32 %237, %223
  %239 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 3), !nosanitize !49
  %240 = extractvalue { i32, i1 } %239, 1, !nosanitize !49
  br i1 %240, label %241, label %242, !prof !50, !nosanitize !49

241:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

242:                                              ; preds = %236
  %243 = extractvalue { i32, i1 } %239, 0, !nosanitize !49
  %244 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %243, i32 1), !nosanitize !49
  %245 = extractvalue { i32, i1 } %244, 1, !nosanitize !49
  br i1 %245, label %246, label %247, !prof !50, !nosanitize !49

246:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

247:                                              ; preds = %242
  %248 = extractvalue { i32, i1 } %244, 0, !nosanitize !49
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds nuw i8, ptr %213, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !8
  %252 = zext i8 %251 to i32
  %253 = xor i32 %238, %252
  %254 = and i32 %253, %230
  store i32 %254, ptr %15, align 8, !tbaa !81
  %255 = load ptr, ptr %12, align 8, !tbaa !41
  %256 = zext i32 %254 to i64
  %257 = getelementptr inbounds nuw [2 x i8], ptr %255, i64 %256
  %258 = load i16, ptr %257, align 2, !tbaa !63
  %259 = load ptr, ptr %13, align 8, !tbaa !40
  %260 = load i32, ptr %18, align 8, !tbaa !34
  %261 = and i32 %260, %234
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds nuw [2 x i8], ptr %259, i64 %262
  store i16 %258, ptr %263, align 2, !tbaa !63
  %264 = trunc i32 %234 to i16
  store i16 %264, ptr %257, align 2, !tbaa !63
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %234, i32 1), !nosanitize !49
  %266 = extractvalue { i32, i1 } %265, 0, !nosanitize !49
  %267 = extractvalue { i32, i1 } %265, 1, !nosanitize !49
  br i1 %267, label %268, label %269, !prof !50, !nosanitize !49

268:                                              ; preds = %247
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

269:                                              ; preds = %247
  %270 = add i32 %233, -1
  store i32 %270, ptr %10, align 4, !tbaa !77
  %271 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %198, i32 %270), !nosanitize !49
  %272 = extractvalue { i32, i1 } %271, 1, !nosanitize !49
  br i1 %272, label %273, label %274, !prof !50, !nosanitize !49

273:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

274:                                              ; preds = %269
  %275 = extractvalue { i32, i1 } %271, 0, !nosanitize !49
  %276 = icmp ult i32 %275, 3
  br i1 %276, label %277, label %232, !llvm.loop !89

277:                                              ; preds = %274, %232, %203
  %278 = icmp ult i32 %198, 262
  br i1 %278, label %279, label %284

279:                                              ; preds = %277
  %280 = load ptr, ptr %0, align 8, !tbaa !20
  %281 = getelementptr inbounds nuw i8, ptr %280, i64 8
  %282 = load i32, ptr %281, align 8, !tbaa !82
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %45, !llvm.loop !90

284:                                              ; preds = %279, %277, %145
  %285 = load i64, ptr %19, align 8, !tbaa !42
  %286 = load i64, ptr %5, align 8, !tbaa !62
  %287 = icmp ult i64 %285, %286
  br i1 %287, label %288, label %327

288:                                              ; preds = %284
  %289 = load i32, ptr %6, align 4, !tbaa !74
  %290 = zext i32 %289 to i64
  %291 = load i32, ptr %3, align 4, !tbaa !76
  %292 = zext i32 %291 to i64
  %293 = add nuw nsw i64 %292, %290
  %294 = icmp ult i64 %285, %293
  br i1 %294, label %295, label %305

295:                                              ; preds = %288
  %296 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %286, i64 %293), !nosanitize !49
  %297 = extractvalue { i64, i1 } %296, 1, !nosanitize !49
  br i1 %297, label %298, label %299, !prof !50, !nosanitize !49

298:                                              ; preds = %295
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

299:                                              ; preds = %295
  %300 = extractvalue { i64, i1 } %296, 0, !nosanitize !49
  %301 = tail call i64 @llvm.umin.i64(i64 %300, i64 258)
  %302 = load ptr, ptr %7, align 8, !tbaa !39
  %303 = getelementptr inbounds nuw i8, ptr %302, i64 %293
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %303, i8 0, i64 %301, i1 false)
  %304 = add nuw nsw i64 %301, %293
  br label %325

305:                                              ; preds = %288
  %306 = add nuw nsw i64 %293, 258
  %307 = icmp ult i64 %285, %306
  br i1 %307, label %308, label %327

308:                                              ; preds = %305
  %309 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %286, i64 %285), !nosanitize !49
  %310 = extractvalue { i64, i1 } %309, 1, !nosanitize !49
  br i1 %310, label %311, label %312, !prof !50, !nosanitize !49

311:                                              ; preds = %308
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

312:                                              ; preds = %308
  %313 = sub nuw nsw i64 %306, %285
  %314 = extractvalue { i64, i1 } %309, 0, !nosanitize !49
  %315 = tail call i64 @llvm.umin.i64(i64 %313, i64 %314)
  %316 = load ptr, ptr %7, align 8, !tbaa !39
  %317 = getelementptr inbounds nuw i8, ptr %316, i64 %285
  %318 = and i64 %315, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %317, i8 0, i64 %318, i1 false)
  %319 = load i64, ptr %19, align 8, !tbaa !42
  %320 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %319, i64 %315), !nosanitize !49
  %321 = extractvalue { i64, i1 } %320, 1, !nosanitize !49
  br i1 %321, label %322, label %323, !prof !50, !nosanitize !49

322:                                              ; preds = %312
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

323:                                              ; preds = %312
  %324 = extractvalue { i64, i1 } %320, 0, !nosanitize !49
  br label %325

325:                                              ; preds = %323, %299
  %326 = phi i64 [ %304, %299 ], [ %324, %323 ]
  store i64 %326, ptr %19, align 8, !tbaa !42
  br label %327

327:                                              ; preds = %325, %305, %284
  %328 = load i32, ptr %3, align 4, !tbaa !76
  %329 = icmp ult i32 %328, 259
  %330 = and i1 %20, %329
  br i1 %330, label %741, label %331

331:                                              ; preds = %327
  %332 = icmp eq i32 %328, 0
  br i1 %332, label %603, label %333

333:                                              ; preds = %331, %39
  store i32 0, ptr %21, align 8, !tbaa !79
  %334 = load i32, ptr %3, align 4, !tbaa !76
  %335 = icmp ugt i32 %334, 2
  br i1 %335, label %336, label %422

336:                                              ; preds = %333
  %337 = load i32, ptr %22, align 4, !tbaa !74
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %422, label %339

339:                                              ; preds = %336
  %340 = load ptr, ptr %23, align 8, !tbaa !39
  %341 = zext i32 %337 to i64
  %342 = getelementptr inbounds nuw i8, ptr %340, i64 %341
  %343 = getelementptr inbounds i8, ptr %342, i64 -1
  %344 = load i8, ptr %343, align 1, !tbaa !8
  %345 = load i8, ptr %342, align 1, !tbaa !8
  %346 = icmp eq i8 %344, %345
  br i1 %346, label %347, label %422

347:                                              ; preds = %339
  %348 = getelementptr inbounds nuw i8, ptr %342, i64 1
  %349 = load i8, ptr %348, align 1, !tbaa !8
  %350 = icmp eq i8 %344, %349
  br i1 %350, label %351, label %422

351:                                              ; preds = %347
  %352 = getelementptr inbounds nuw i8, ptr %342, i64 2
  %353 = load i8, ptr %352, align 1, !tbaa !8
  %354 = icmp eq i8 %344, %353
  br i1 %354, label %355, label %422

355:                                              ; preds = %351
  %356 = getelementptr inbounds nuw i8, ptr %342, i64 258
  br label %357

357:                                              ; preds = %387, %355
  %358 = phi i64 [ 2, %355 ], [ %388, %387 ]
  %359 = getelementptr inbounds nuw i8, ptr %342, i64 %358
  %360 = getelementptr inbounds nuw i8, ptr %359, i64 1
  %361 = load i8, ptr %360, align 1, !tbaa !8
  %362 = icmp eq i8 %344, %361
  br i1 %362, label %363, label %408

363:                                              ; preds = %357
  %364 = getelementptr inbounds nuw i8, ptr %359, i64 2
  %365 = load i8, ptr %364, align 1, !tbaa !8
  %366 = icmp eq i8 %344, %365
  br i1 %366, label %367, label %406

367:                                              ; preds = %363
  %368 = getelementptr inbounds nuw i8, ptr %359, i64 3
  %369 = load i8, ptr %368, align 1, !tbaa !8
  %370 = icmp eq i8 %344, %369
  br i1 %370, label %371, label %404

371:                                              ; preds = %367
  %372 = getelementptr inbounds nuw i8, ptr %359, i64 4
  %373 = load i8, ptr %372, align 1, !tbaa !8
  %374 = icmp eq i8 %344, %373
  br i1 %374, label %375, label %402

375:                                              ; preds = %371
  %376 = getelementptr inbounds nuw i8, ptr %359, i64 5
  %377 = load i8, ptr %376, align 1, !tbaa !8
  %378 = icmp eq i8 %344, %377
  br i1 %378, label %379, label %400

379:                                              ; preds = %375
  %380 = getelementptr inbounds nuw i8, ptr %359, i64 6
  %381 = load i8, ptr %380, align 1, !tbaa !8
  %382 = icmp eq i8 %344, %381
  br i1 %382, label %383, label %398

383:                                              ; preds = %379
  %384 = getelementptr inbounds nuw i8, ptr %359, i64 7
  %385 = load i8, ptr %384, align 1, !tbaa !8
  %386 = icmp eq i8 %344, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %383
  %388 = add nuw nsw i64 %358, 8
  %389 = getelementptr inbounds nuw i8, ptr %342, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !8
  %391 = icmp eq i8 %344, %390
  %392 = icmp samesign ult i64 %358, 250
  %393 = select i1 %391, i1 %392, i1 false
  br i1 %393, label %357, label %394, !llvm.loop !124

394:                                              ; preds = %387
  %395 = getelementptr inbounds nuw i8, ptr %342, i64 %388
  br label %410

396:                                              ; preds = %383
  %397 = getelementptr inbounds nuw i8, ptr %359, i64 7
  br label %410

398:                                              ; preds = %379
  %399 = getelementptr inbounds nuw i8, ptr %359, i64 6
  br label %410

400:                                              ; preds = %375
  %401 = getelementptr inbounds nuw i8, ptr %359, i64 5
  br label %410

402:                                              ; preds = %371
  %403 = getelementptr inbounds nuw i8, ptr %359, i64 4
  br label %410

404:                                              ; preds = %367
  %405 = getelementptr inbounds nuw i8, ptr %359, i64 3
  br label %410

406:                                              ; preds = %363
  %407 = getelementptr inbounds nuw i8, ptr %359, i64 2
  br label %410

408:                                              ; preds = %357
  %409 = getelementptr inbounds nuw i8, ptr %359, i64 1
  br label %410

410:                                              ; preds = %408, %406, %404, %402, %400, %398, %396, %394
  %411 = phi ptr [ %407, %406 ], [ %405, %404 ], [ %395, %394 ], [ %397, %396 ], [ %399, %398 ], [ %401, %400 ], [ %403, %402 ], [ %409, %408 ]
  %412 = ptrtoint ptr %356 to i64
  %413 = ptrtoint ptr %411 to i64
  %414 = sub i64 %412, %413
  %415 = trunc i64 %414 to i32
  %416 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %415), !nosanitize !49
  %417 = extractvalue { i32, i1 } %416, 1, !nosanitize !49
  br i1 %417, label %418, label %419, !prof !50, !nosanitize !49

418:                                              ; preds = %410
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

419:                                              ; preds = %410
  %420 = extractvalue { i32, i1 } %416, 0, !nosanitize !49
  %421 = tail call i32 @llvm.umin.i32(i32 %420, i32 %334)
  store i32 %421, ptr %21, align 8
  br label %422

422:                                              ; preds = %419, %351, %347, %339, %336, %333
  %423 = load i32, ptr %21, align 8, !tbaa !79
  %424 = icmp ugt i32 %423, 2
  br i1 %424, label %425, label %483

425:                                              ; preds = %422
  %426 = trunc i32 %423 to i8
  %427 = add i8 %426, -3
  %428 = load i32, ptr %31, align 4, !tbaa !122
  %429 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %428, i32 1), !nosanitize !49
  %430 = extractvalue { i32, i1 } %429, 1, !nosanitize !49
  br i1 %430, label %431, label %432, !prof !50, !nosanitize !49

431:                                              ; preds = %425
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

432:                                              ; preds = %425
  %433 = extractvalue { i32, i1 } %429, 0, !nosanitize !49
  %434 = load ptr, ptr %30, align 8, !tbaa !48
  store i32 %433, ptr %31, align 4, !tbaa !122
  %435 = zext i32 %428 to i64
  %436 = getelementptr inbounds nuw i8, ptr %434, i64 %435
  store i8 1, ptr %436, align 1, !tbaa !8
  %437 = load i32, ptr %31, align 4, !tbaa !122
  %438 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %437, i32 1), !nosanitize !49
  %439 = extractvalue { i32, i1 } %438, 1, !nosanitize !49
  br i1 %439, label %440, label %441, !prof !50, !nosanitize !49

440:                                              ; preds = %432
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

441:                                              ; preds = %432
  %442 = extractvalue { i32, i1 } %438, 0, !nosanitize !49
  %443 = load ptr, ptr %30, align 8, !tbaa !48
  store i32 %442, ptr %31, align 4, !tbaa !122
  %444 = zext i32 %437 to i64
  %445 = getelementptr inbounds nuw i8, ptr %443, i64 %444
  store i8 0, ptr %445, align 1, !tbaa !8
  %446 = load i32, ptr %31, align 4, !tbaa !122
  %447 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %446, i32 1), !nosanitize !49
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !49
  br i1 %448, label %449, label %450, !prof !50, !nosanitize !49

449:                                              ; preds = %441
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

450:                                              ; preds = %441
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !49
  %452 = load ptr, ptr %30, align 8, !tbaa !48
  store i32 %451, ptr %31, align 4, !tbaa !122
  %453 = zext i32 %446 to i64
  %454 = getelementptr inbounds nuw i8, ptr %452, i64 %453
  store i8 %427, ptr %454, align 1, !tbaa !8
  %455 = zext i8 %427 to i64
  %456 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %455
  %457 = load i8, ptr %456, align 1, !tbaa !8
  %458 = zext i8 %457 to i64
  %459 = getelementptr [4 x i8], ptr %32, i64 %458
  %460 = load i16, ptr %459, align 4, !tbaa !8
  %461 = add i16 %460, 1
  store i16 %461, ptr %459, align 4, !tbaa !8
  %462 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %463 = zext i8 %462 to i64
  %464 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %463
  %465 = load i16, ptr %464, align 4, !tbaa !8
  %466 = add i16 %465, 1
  store i16 %466, ptr %464, align 4, !tbaa !8
  %467 = load i32, ptr %31, align 4, !tbaa !122
  %468 = load i32, ptr %34, align 8, !tbaa !51
  %469 = icmp eq i32 %467, %468
  %470 = load i32, ptr %21, align 8, !tbaa !79
  %471 = load i32, ptr %3, align 4, !tbaa !76
  %472 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %471, i32 %470), !nosanitize !49
  %473 = extractvalue { i32, i1 } %472, 1, !nosanitize !49
  br i1 %473, label %474, label %475, !prof !50, !nosanitize !49

474:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

475:                                              ; preds = %450
  %476 = extractvalue { i32, i1 } %472, 0, !nosanitize !49
  store i32 %476, ptr %3, align 4, !tbaa !76
  %477 = load i32, ptr %35, align 4, !tbaa !74
  %478 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %477, i32 %470), !nosanitize !49
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !49
  br i1 %479, label %480, label %481, !prof !50, !nosanitize !49

480:                                              ; preds = %475
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

481:                                              ; preds = %475
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !49
  store i32 %482, ptr %35, align 4, !tbaa !74
  store i32 0, ptr %21, align 8, !tbaa !79
  br label %535

483:                                              ; preds = %422
  %484 = load ptr, ptr %24, align 8, !tbaa !39
  %485 = load i32, ptr %25, align 4, !tbaa !74
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds nuw i8, ptr %484, i64 %486
  %488 = load i8, ptr %487, align 1, !tbaa !8
  %489 = load i32, ptr %27, align 4, !tbaa !122
  %490 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %489, i32 1), !nosanitize !49
  %491 = extractvalue { i32, i1 } %490, 1, !nosanitize !49
  br i1 %491, label %492, label %493, !prof !50, !nosanitize !49

492:                                              ; preds = %483
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

493:                                              ; preds = %483
  %494 = extractvalue { i32, i1 } %490, 0, !nosanitize !49
  %495 = load ptr, ptr %26, align 8, !tbaa !48
  store i32 %494, ptr %27, align 4, !tbaa !122
  %496 = zext i32 %489 to i64
  %497 = getelementptr inbounds nuw i8, ptr %495, i64 %496
  store i8 0, ptr %497, align 1, !tbaa !8
  %498 = load i32, ptr %27, align 4, !tbaa !122
  %499 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %498, i32 1), !nosanitize !49
  %500 = extractvalue { i32, i1 } %499, 1, !nosanitize !49
  br i1 %500, label %501, label %502, !prof !50, !nosanitize !49

501:                                              ; preds = %493
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

502:                                              ; preds = %493
  %503 = extractvalue { i32, i1 } %499, 0, !nosanitize !49
  %504 = load ptr, ptr %26, align 8, !tbaa !48
  store i32 %503, ptr %27, align 4, !tbaa !122
  %505 = zext i32 %498 to i64
  %506 = getelementptr inbounds nuw i8, ptr %504, i64 %505
  store i8 0, ptr %506, align 1, !tbaa !8
  %507 = load i32, ptr %27, align 4, !tbaa !122
  %508 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %507, i32 1), !nosanitize !49
  %509 = extractvalue { i32, i1 } %508, 1, !nosanitize !49
  br i1 %509, label %510, label %511, !prof !50, !nosanitize !49

510:                                              ; preds = %502
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

511:                                              ; preds = %502
  %512 = extractvalue { i32, i1 } %508, 0, !nosanitize !49
  %513 = load ptr, ptr %26, align 8, !tbaa !48
  store i32 %512, ptr %27, align 4, !tbaa !122
  %514 = zext i32 %507 to i64
  %515 = getelementptr inbounds nuw i8, ptr %513, i64 %514
  store i8 %488, ptr %515, align 1, !tbaa !8
  %516 = zext i8 %488 to i64
  %517 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %516
  %518 = load i16, ptr %517, align 4, !tbaa !8
  %519 = add i16 %518, 1
  store i16 %519, ptr %517, align 4, !tbaa !8
  %520 = load i32, ptr %27, align 4, !tbaa !122
  %521 = load i32, ptr %29, align 8, !tbaa !51
  %522 = icmp eq i32 %520, %521
  %523 = load i32, ptr %3, align 4, !tbaa !76
  %524 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %523, i32 1), !nosanitize !49
  %525 = extractvalue { i32, i1 } %524, 1, !nosanitize !49
  br i1 %525, label %526, label %527, !prof !50, !nosanitize !49

526:                                              ; preds = %682, %612, %544, %511
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

527:                                              ; preds = %511
  %528 = extractvalue { i32, i1 } %524, 0, !nosanitize !49
  store i32 %528, ptr %3, align 4, !tbaa !76
  %529 = load i32, ptr %25, align 4, !tbaa !74
  %530 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %529, i32 1), !nosanitize !49
  %531 = extractvalue { i32, i1 } %530, 1, !nosanitize !49
  br i1 %531, label %532, label %533, !prof !50, !nosanitize !49

532:                                              ; preds = %527
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

533:                                              ; preds = %527
  %534 = extractvalue { i32, i1 } %530, 0, !nosanitize !49
  store i32 %534, ptr %25, align 4, !tbaa !74
  br label %535

535:                                              ; preds = %533, %481
  %536 = phi i1 [ %469, %481 ], [ %522, %533 ]
  br i1 %536, label %537, label %602

537:                                              ; preds = %535
  %538 = load i64, ptr %36, align 8, !tbaa !75
  %539 = icmp sgt i64 %538, -1
  br i1 %539, label %540, label %544

540:                                              ; preds = %537
  %541 = load ptr, ptr %37, align 8, !tbaa !39
  %542 = and i64 %538, 4294967295
  %543 = getelementptr inbounds nuw i8, ptr %541, i64 %542
  br label %544

544:                                              ; preds = %540, %537
  %545 = phi ptr [ %543, %540 ], [ null, %537 ]
  %546 = load i32, ptr %38, align 4, !tbaa !74
  %547 = zext i32 %546 to i64
  %548 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %547, i64 %538), !nosanitize !49
  %549 = extractvalue { i64, i1 } %548, 1, !nosanitize !49
  br i1 %549, label %526, label %550, !prof !50, !nosanitize !49

550:                                              ; preds = %544
  %551 = extractvalue { i64, i1 } %548, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %545, i64 noundef %551, i32 noundef 0) #10
  %552 = load i32, ptr %38, align 4, !tbaa !74
  %553 = zext i32 %552 to i64
  store i64 %553, ptr %36, align 8, !tbaa !75
  %554 = load ptr, ptr %0, align 8, !tbaa !20
  %555 = getelementptr inbounds nuw i8, ptr %554, i64 56
  %556 = load ptr, ptr %555, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %556) #10
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 40
  %558 = load i64, ptr %557, align 8, !tbaa !58
  %559 = getelementptr inbounds nuw i8, ptr %554, i64 32
  %560 = load i32, ptr %559, align 8, !tbaa !100
  %561 = zext i32 %560 to i64
  %562 = tail call i64 @llvm.umin.i64(i64 %558, i64 %561)
  %563 = trunc nuw i64 %562 to i32
  %564 = icmp eq i64 %562, 0
  br i1 %564, label %597, label %565

565:                                              ; preds = %550
  %566 = getelementptr inbounds nuw i8, ptr %554, i64 24
  %567 = load ptr, ptr %566, align 8, !tbaa !99
  %568 = getelementptr inbounds nuw i8, ptr %556, i64 32
  %569 = load ptr, ptr %568, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %567, ptr align 1 %569, i64 %562, i1 false)
  %570 = load ptr, ptr %566, align 8, !tbaa !99
  %571 = getelementptr inbounds nuw i8, ptr %570, i64 %562
  store ptr %571, ptr %566, align 8, !tbaa !99
  %572 = load ptr, ptr %568, align 8, !tbaa !59
  %573 = getelementptr inbounds nuw i8, ptr %572, i64 %562
  store ptr %573, ptr %568, align 8, !tbaa !59
  %574 = getelementptr inbounds nuw i8, ptr %554, i64 40
  %575 = load i64, ptr %574, align 8, !tbaa !101
  %576 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %575, i64 %562), !nosanitize !49
  %577 = extractvalue { i64, i1 } %576, 1, !nosanitize !49
  br i1 %577, label %578, label %579, !prof !50, !nosanitize !49

578:                                              ; preds = %565
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

579:                                              ; preds = %565
  %580 = extractvalue { i64, i1 } %576, 0, !nosanitize !49
  store i64 %580, ptr %574, align 8, !tbaa !101
  %581 = load i32, ptr %559, align 8, !tbaa !100
  %582 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %581, i32 %563), !nosanitize !49
  %583 = extractvalue { i32, i1 } %582, 1, !nosanitize !49
  br i1 %583, label %584, label %585, !prof !50, !nosanitize !49

584:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

585:                                              ; preds = %579
  %586 = extractvalue { i32, i1 } %582, 0, !nosanitize !49
  store i32 %586, ptr %559, align 8, !tbaa !100
  %587 = load i64, ptr %557, align 8, !tbaa !58
  %588 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %587, i64 %562), !nosanitize !49
  %589 = extractvalue { i64, i1 } %588, 1, !nosanitize !49
  br i1 %589, label %590, label %591, !prof !50, !nosanitize !49

590:                                              ; preds = %585
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

591:                                              ; preds = %585
  %592 = extractvalue { i64, i1 } %588, 0, !nosanitize !49
  store i64 %592, ptr %557, align 8, !tbaa !58
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %591
  %595 = getelementptr inbounds nuw i8, ptr %556, i64 16
  %596 = load ptr, ptr %595, align 8, !tbaa !44
  store ptr %596, ptr %568, align 8, !tbaa !59
  br label %597

597:                                              ; preds = %594, %591, %550
  %598 = load ptr, ptr %0, align 8, !tbaa !20
  %599 = getelementptr inbounds nuw i8, ptr %598, i64 32
  %600 = load i32, ptr %599, align 8, !tbaa !100
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %741, label %602

602:                                              ; preds = %597, %535
  br label %39, !llvm.loop !125

603:                                              ; preds = %331
  store i32 0, ptr %10, align 4, !tbaa !77
  %604 = icmp eq i32 %1, 4
  br i1 %604, label %605, label %671

605:                                              ; preds = %603
  %606 = load i64, ptr %9, align 8, !tbaa !75
  %607 = icmp sgt i64 %606, -1
  br i1 %607, label %608, label %612

608:                                              ; preds = %605
  %609 = load ptr, ptr %7, align 8, !tbaa !39
  %610 = and i64 %606, 4294967295
  %611 = getelementptr inbounds nuw i8, ptr %609, i64 %610
  br label %612

612:                                              ; preds = %608, %605
  %613 = phi ptr [ %611, %608 ], [ null, %605 ]
  %614 = load i32, ptr %6, align 4, !tbaa !74
  %615 = zext i32 %614 to i64
  %616 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %615, i64 %606), !nosanitize !49
  %617 = extractvalue { i64, i1 } %616, 1, !nosanitize !49
  br i1 %617, label %526, label %618, !prof !50, !nosanitize !49

618:                                              ; preds = %612
  %619 = extractvalue { i64, i1 } %616, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %613, i64 noundef %619, i32 noundef 1) #10
  %620 = load i32, ptr %6, align 4, !tbaa !74
  %621 = zext i32 %620 to i64
  store i64 %621, ptr %9, align 8, !tbaa !75
  %622 = load ptr, ptr %0, align 8, !tbaa !20
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 56
  %624 = load ptr, ptr %623, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %624) #10
  %625 = getelementptr inbounds nuw i8, ptr %624, i64 40
  %626 = load i64, ptr %625, align 8, !tbaa !58
  %627 = getelementptr inbounds nuw i8, ptr %622, i64 32
  %628 = load i32, ptr %627, align 8, !tbaa !100
  %629 = zext i32 %628 to i64
  %630 = tail call i64 @llvm.umin.i64(i64 %626, i64 %629)
  %631 = trunc nuw i64 %630 to i32
  %632 = icmp eq i64 %630, 0
  br i1 %632, label %665, label %633

633:                                              ; preds = %618
  %634 = getelementptr inbounds nuw i8, ptr %622, i64 24
  %635 = load ptr, ptr %634, align 8, !tbaa !99
  %636 = getelementptr inbounds nuw i8, ptr %624, i64 32
  %637 = load ptr, ptr %636, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %635, ptr align 1 %637, i64 %630, i1 false)
  %638 = load ptr, ptr %634, align 8, !tbaa !99
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 %630
  store ptr %639, ptr %634, align 8, !tbaa !99
  %640 = load ptr, ptr %636, align 8, !tbaa !59
  %641 = getelementptr inbounds nuw i8, ptr %640, i64 %630
  store ptr %641, ptr %636, align 8, !tbaa !59
  %642 = getelementptr inbounds nuw i8, ptr %622, i64 40
  %643 = load i64, ptr %642, align 8, !tbaa !101
  %644 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %643, i64 %630), !nosanitize !49
  %645 = extractvalue { i64, i1 } %644, 1, !nosanitize !49
  br i1 %645, label %646, label %647, !prof !50, !nosanitize !49

646:                                              ; preds = %633
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

647:                                              ; preds = %633
  %648 = extractvalue { i64, i1 } %644, 0, !nosanitize !49
  store i64 %648, ptr %642, align 8, !tbaa !101
  %649 = load i32, ptr %627, align 8, !tbaa !100
  %650 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %649, i32 %631), !nosanitize !49
  %651 = extractvalue { i32, i1 } %650, 1, !nosanitize !49
  br i1 %651, label %652, label %653, !prof !50, !nosanitize !49

652:                                              ; preds = %647
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

653:                                              ; preds = %647
  %654 = extractvalue { i32, i1 } %650, 0, !nosanitize !49
  store i32 %654, ptr %627, align 8, !tbaa !100
  %655 = load i64, ptr %625, align 8, !tbaa !58
  %656 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %655, i64 %630), !nosanitize !49
  %657 = extractvalue { i64, i1 } %656, 1, !nosanitize !49
  br i1 %657, label %658, label %659, !prof !50, !nosanitize !49

658:                                              ; preds = %653
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

659:                                              ; preds = %653
  %660 = extractvalue { i64, i1 } %656, 0, !nosanitize !49
  store i64 %660, ptr %625, align 8, !tbaa !58
  %661 = icmp eq i64 %660, 0
  br i1 %661, label %662, label %665

662:                                              ; preds = %659
  %663 = getelementptr inbounds nuw i8, ptr %624, i64 16
  %664 = load ptr, ptr %663, align 8, !tbaa !44
  store ptr %664, ptr %636, align 8, !tbaa !59
  br label %665

665:                                              ; preds = %662, %659, %618
  %666 = load ptr, ptr %0, align 8, !tbaa !20
  %667 = getelementptr inbounds nuw i8, ptr %666, i64 32
  %668 = load i32, ptr %667, align 8, !tbaa !100
  %669 = icmp eq i32 %668, 0
  %670 = select i1 %669, i32 2, i32 3
  br label %741

671:                                              ; preds = %603
  %672 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %673 = load i32, ptr %672, align 4, !tbaa !122
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %740, label %675

675:                                              ; preds = %671
  %676 = load i64, ptr %9, align 8, !tbaa !75
  %677 = icmp sgt i64 %676, -1
  br i1 %677, label %678, label %682

678:                                              ; preds = %675
  %679 = load ptr, ptr %7, align 8, !tbaa !39
  %680 = and i64 %676, 4294967295
  %681 = getelementptr inbounds nuw i8, ptr %679, i64 %680
  br label %682

682:                                              ; preds = %678, %675
  %683 = phi ptr [ %681, %678 ], [ null, %675 ]
  %684 = load i32, ptr %6, align 4, !tbaa !74
  %685 = zext i32 %684 to i64
  %686 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %685, i64 %676), !nosanitize !49
  %687 = extractvalue { i64, i1 } %686, 1, !nosanitize !49
  br i1 %687, label %526, label %688, !prof !50, !nosanitize !49

688:                                              ; preds = %682
  %689 = extractvalue { i64, i1 } %686, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %683, i64 noundef %689, i32 noundef 0) #10
  %690 = load i32, ptr %6, align 4, !tbaa !74
  %691 = zext i32 %690 to i64
  store i64 %691, ptr %9, align 8, !tbaa !75
  %692 = load ptr, ptr %0, align 8, !tbaa !20
  %693 = getelementptr inbounds nuw i8, ptr %692, i64 56
  %694 = load ptr, ptr %693, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %694) #10
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 40
  %696 = load i64, ptr %695, align 8, !tbaa !58
  %697 = getelementptr inbounds nuw i8, ptr %692, i64 32
  %698 = load i32, ptr %697, align 8, !tbaa !100
  %699 = zext i32 %698 to i64
  %700 = tail call i64 @llvm.umin.i64(i64 %696, i64 %699)
  %701 = trunc nuw i64 %700 to i32
  %702 = icmp eq i64 %700, 0
  br i1 %702, label %735, label %703

703:                                              ; preds = %688
  %704 = getelementptr inbounds nuw i8, ptr %692, i64 24
  %705 = load ptr, ptr %704, align 8, !tbaa !99
  %706 = getelementptr inbounds nuw i8, ptr %694, i64 32
  %707 = load ptr, ptr %706, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %705, ptr align 1 %707, i64 %700, i1 false)
  %708 = load ptr, ptr %704, align 8, !tbaa !99
  %709 = getelementptr inbounds nuw i8, ptr %708, i64 %700
  store ptr %709, ptr %704, align 8, !tbaa !99
  %710 = load ptr, ptr %706, align 8, !tbaa !59
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 %700
  store ptr %711, ptr %706, align 8, !tbaa !59
  %712 = getelementptr inbounds nuw i8, ptr %692, i64 40
  %713 = load i64, ptr %712, align 8, !tbaa !101
  %714 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %713, i64 %700), !nosanitize !49
  %715 = extractvalue { i64, i1 } %714, 1, !nosanitize !49
  br i1 %715, label %716, label %717, !prof !50, !nosanitize !49

716:                                              ; preds = %703
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

717:                                              ; preds = %703
  %718 = extractvalue { i64, i1 } %714, 0, !nosanitize !49
  store i64 %718, ptr %712, align 8, !tbaa !101
  %719 = load i32, ptr %697, align 8, !tbaa !100
  %720 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %719, i32 %701), !nosanitize !49
  %721 = extractvalue { i32, i1 } %720, 1, !nosanitize !49
  br i1 %721, label %722, label %723, !prof !50, !nosanitize !49

722:                                              ; preds = %717
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

723:                                              ; preds = %717
  %724 = extractvalue { i32, i1 } %720, 0, !nosanitize !49
  store i32 %724, ptr %697, align 8, !tbaa !100
  %725 = load i64, ptr %695, align 8, !tbaa !58
  %726 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %725, i64 %700), !nosanitize !49
  %727 = extractvalue { i64, i1 } %726, 1, !nosanitize !49
  br i1 %727, label %728, label %729, !prof !50, !nosanitize !49

728:                                              ; preds = %723
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

729:                                              ; preds = %723
  %730 = extractvalue { i64, i1 } %726, 0, !nosanitize !49
  store i64 %730, ptr %695, align 8, !tbaa !58
  %731 = icmp eq i64 %730, 0
  br i1 %731, label %732, label %735

732:                                              ; preds = %729
  %733 = getelementptr inbounds nuw i8, ptr %694, i64 16
  %734 = load ptr, ptr %733, align 8, !tbaa !44
  store ptr %734, ptr %706, align 8, !tbaa !59
  br label %735

735:                                              ; preds = %732, %729, %688
  %736 = load ptr, ptr %0, align 8, !tbaa !20
  %737 = getelementptr inbounds nuw i8, ptr %736, i64 32
  %738 = load i32, ptr %737, align 8, !tbaa !100
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %741, label %740

740:                                              ; preds = %735, %671
  br label %741

741:                                              ; preds = %740, %735, %665, %597, %327
  %742 = phi i32 [ 1, %740 ], [ %670, %665 ], [ 0, %735 ], [ 0, %327 ], [ 0, %597 ]
  ret i32 %742
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

23:                                               ; preds = %22, %19, %16, %12, %8, %4, %2
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
  %34 = tail call ptr %31(ptr noundef %33, i32 noundef 1, i32 noundef 5968) #10
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
  %42 = tail call ptr %38(ptr noundef %39, i32 noundef %41, i32 noundef 2) #10
  %43 = getelementptr inbounds nuw i8, ptr %34, i64 96
  store ptr %42, ptr %43, align 8, !tbaa !39
  %44 = load ptr, ptr %30, align 8, !tbaa !15
  %45 = load ptr, ptr %32, align 8, !tbaa !16
  %46 = load i32, ptr %40, align 8, !tbaa !33
  %47 = tail call ptr %44(ptr noundef %45, i32 noundef %46, i32 noundef 2) #10
  %48 = getelementptr inbounds nuw i8, ptr %34, i64 112
  store ptr %47, ptr %48, align 8, !tbaa !40
  %49 = load ptr, ptr %30, align 8, !tbaa !15
  %50 = load ptr, ptr %32, align 8, !tbaa !16
  %51 = getelementptr inbounds nuw i8, ptr %34, i64 132
  %52 = load i32, ptr %51, align 4, !tbaa !36
  %53 = tail call ptr %49(ptr noundef %50, i32 noundef %52, i32 noundef 2) #10
  %54 = getelementptr inbounds nuw i8, ptr %34, i64 120
  store ptr %53, ptr %54, align 8, !tbaa !41
  %55 = load ptr, ptr %30, align 8, !tbaa !15
  %56 = load ptr, ptr %32, align 8, !tbaa !16
  %57 = getelementptr inbounds nuw i8, ptr %34, i64 5896
  %58 = load i32, ptr %57, align 8, !tbaa !43
  %59 = tail call ptr %55(ptr noundef %56, i32 noundef %58, i32 noundef 4) #10
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

71:                                               ; preds = %66, %63, %36
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
  tail call void %76(ptr noundef %92, ptr noundef nonnull %89) #10, !inline_history !55
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
  tail call void %99(ptr noundef %100, ptr noundef nonnull %96) #10, !inline_history !55
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
  tail call void %107(ptr noundef %108, ptr noundef nonnull %104) #10, !inline_history !55
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
  tail call void %115(ptr noundef %116, ptr noundef nonnull %112) #10, !inline_history !55
  br label %117

117:                                              ; preds = %114, %109
  %118 = load ptr, ptr %75, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !16
  %120 = load ptr, ptr %37, align 8, !tbaa !19
  tail call void %118(ptr noundef %119, ptr noundef %120) #10, !inline_history !55
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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

185:                                              ; preds = %146, %117, %84, %81, %78, %74, %71, %27, %23
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
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 188
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

69:                                               ; preds = %866, %2
  %70 = load i32, ptr %3, align 4, !tbaa !76
  %71 = icmp ult i32 %70, 262
  br i1 %71, label %72, label %363

72:                                               ; preds = %69
  %73 = load i32, ptr %4, align 8, !tbaa !33
  %74 = zext i32 %73 to i64
  br label %75

75:                                               ; preds = %309, %72
  %76 = load i64, ptr %5, align 8, !tbaa !62
  %77 = load i32, ptr %3, align 4, !tbaa !76
  %78 = zext i32 %77 to i64
  %79 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %76, i64 %78), !nosanitize !49
  %80 = extractvalue { i64, i1 } %79, 1, !nosanitize !49
  br i1 %80, label %81, label %82, !prof !50, !nosanitize !49

81:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %75
  %83 = extractvalue { i64, i1 } %79, 0, !nosanitize !49
  %84 = load i32, ptr %6, align 4, !tbaa !74
  %85 = zext i32 %84 to i64
  %86 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %85), !nosanitize !49
  %87 = extractvalue { i64, i1 } %86, 1, !nosanitize !49
  br i1 %87, label %88, label %89, !prof !50, !nosanitize !49

88:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

89:                                               ; preds = %82
  %90 = extractvalue { i64, i1 } %86, 0, !nosanitize !49
  %91 = trunc i64 %90 to i32
  %92 = load i32, ptr %4, align 8, !tbaa !33
  %93 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %92, i32 262), !nosanitize !49
  %94 = extractvalue { i32, i1 } %93, 1, !nosanitize !49
  br i1 %94, label %95, label %96, !prof !50, !nosanitize !49

95:                                               ; preds = %89
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

96:                                               ; preds = %89
  %97 = extractvalue { i32, i1 } %93, 0, !nosanitize !49
  %98 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %73, i32 %97), !nosanitize !49
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !49
  br i1 %99, label %100, label %101, !prof !50, !nosanitize !49

100:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

101:                                              ; preds = %96
  %102 = extractvalue { i32, i1 } %98, 0, !nosanitize !49
  %103 = icmp ult i32 %84, %102
  br i1 %103, label %175, label %104

104:                                              ; preds = %101
  %105 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %73, i32 %91), !nosanitize !49
  %106 = extractvalue { i32, i1 } %105, 1, !nosanitize !49
  br i1 %106, label %107, label %108, !prof !50, !nosanitize !49

107:                                              ; preds = %104
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

117:                                              ; preds = %108
  %118 = extractvalue { i32, i1 } %114, 0, !nosanitize !49
  store i32 %118, ptr %8, align 8, !tbaa !84
  %119 = load i32, ptr %6, align 4, !tbaa !74
  %120 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %119, i32 %73), !nosanitize !49
  %121 = extractvalue { i32, i1 } %120, 1, !nosanitize !49
  br i1 %121, label %122, label %123, !prof !50, !nosanitize !49

122:                                              ; preds = %123, %117
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

123:                                              ; preds = %117
  %124 = extractvalue { i32, i1 } %120, 0, !nosanitize !49
  store i32 %124, ptr %6, align 4, !tbaa !74
  %125 = load i64, ptr %9, align 8, !tbaa !75
  %126 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %125, i64 %74), !nosanitize !49
  %127 = extractvalue { i64, i1 } %126, 1, !nosanitize !49
  br i1 %127, label %122, label %128, !prof !50, !nosanitize !49

128:                                              ; preds = %123
  %129 = extractvalue { i64, i1 } %126, 0, !nosanitize !49
  store i64 %129, ptr %9, align 8, !tbaa !75
  %130 = load i32, ptr %10, align 4, !tbaa !77
  %131 = icmp ugt i32 %130, %124
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 %124, ptr %10, align 4, !tbaa !77
  br label %133

133:                                              ; preds = %132, %128
  %134 = load i32, ptr %4, align 8, !tbaa !33
  %135 = load i32, ptr %11, align 4, !tbaa !36
  %136 = load ptr, ptr %12, align 8, !tbaa !41
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds nuw [2 x i8], ptr %136, i64 %137
  %139 = icmp eq i32 %135, 0
  br label %140

140:                                              ; preds = %149, %133
  %141 = phi ptr [ %138, %133 ], [ %143, %149 ]
  %142 = phi i32 [ %135, %133 ], [ %150, %149 ]
  %143 = getelementptr inbounds i8, ptr %141, i64 -2
  %144 = load i16, ptr %143, align 2, !tbaa !63
  %145 = zext i16 %144 to i32
  %146 = tail call i32 @llvm.usub.sat.i32(i32 %145, i32 %134)
  %147 = trunc nuw i32 %146 to i16
  store i16 %147, ptr %143, align 2, !tbaa !63
  br i1 %139, label %148, label %149, !prof !50, !nosanitize !49

148:                                              ; preds = %140
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

149:                                              ; preds = %140
  %150 = add i32 %142, -1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %140, !llvm.loop !85

152:                                              ; preds = %149
  %153 = load ptr, ptr %13, align 8, !tbaa !40
  %154 = zext i32 %134 to i64
  %155 = getelementptr inbounds nuw [2 x i8], ptr %153, i64 %154
  %156 = icmp eq i32 %134, 0
  br label %157

157:                                              ; preds = %166, %152
  %158 = phi ptr [ %155, %152 ], [ %160, %166 ]
  %159 = phi i32 [ %134, %152 ], [ %167, %166 ]
  %160 = getelementptr inbounds i8, ptr %158, i64 -2
  %161 = load i16, ptr %160, align 2, !tbaa !63
  %162 = zext i16 %161 to i32
  %163 = tail call i32 @llvm.usub.sat.i32(i32 %162, i32 %134)
  %164 = trunc nuw i32 %163 to i16
  store i16 %164, ptr %160, align 2, !tbaa !63
  br i1 %156, label %165, label %166, !prof !50, !nosanitize !49

165:                                              ; preds = %157
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

166:                                              ; preds = %157
  %167 = add i32 %159, -1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %157, !llvm.loop !88

169:                                              ; preds = %166
  store i32 1, ptr %14, align 8, !tbaa !64
  %170 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %91, i32 %73), !nosanitize !49
  %171 = extractvalue { i32, i1 } %170, 1, !nosanitize !49
  br i1 %171, label %172, label %173, !prof !50, !nosanitize !49

172:                                              ; preds = %169
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

173:                                              ; preds = %169
  %174 = extractvalue { i32, i1 } %170, 0, !nosanitize !49
  br label %175

175:                                              ; preds = %173, %101
  %176 = phi i32 [ %174, %173 ], [ %91, %101 ]
  %177 = load ptr, ptr %0, align 8, !tbaa !20
  %178 = getelementptr inbounds nuw i8, ptr %177, i64 8
  %179 = load i32, ptr %178, align 8, !tbaa !82
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %314, label %181

181:                                              ; preds = %175
  %182 = load ptr, ptr %7, align 8, !tbaa !39
  %183 = load i32, ptr %6, align 4, !tbaa !74
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds nuw i8, ptr %182, i64 %184
  %186 = load i32, ptr %3, align 4, !tbaa !76
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds nuw i8, ptr %185, i64 %187
  %189 = tail call i32 @llvm.umin.i32(i32 %179, i32 %176)
  %190 = icmp eq i32 %176, 0
  br i1 %190, label %221, label %191

191:                                              ; preds = %181
  %192 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %179, i32 %189), !nosanitize !49
  %193 = extractvalue { i32, i1 } %192, 1, !nosanitize !49
  br i1 %193, label %194, label %195, !prof !50, !nosanitize !49

194:                                              ; preds = %191
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

195:                                              ; preds = %191
  %196 = extractvalue { i32, i1 } %192, 0, !nosanitize !49
  store i32 %196, ptr %178, align 8, !tbaa !82
  %197 = load ptr, ptr %177, align 8, !tbaa !83
  %198 = zext i32 %189 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %188, ptr align 1 %197, i64 %198, i1 false)
  %199 = getelementptr inbounds nuw i8, ptr %177, i64 56
  %200 = load ptr, ptr %199, align 8, !tbaa !19
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 48
  %202 = load i32, ptr %201, align 8, !tbaa !30
  switch i32 %202, label %211 [
    i32 1, label %203
    i32 2, label %207
  ]

203:                                              ; preds = %195
  %204 = getelementptr inbounds nuw i8, ptr %177, i64 96
  %205 = load i64, ptr %204, align 8, !tbaa !60
  %206 = tail call i64 @adler32(i64 noundef %205, ptr noundef %188, i32 noundef %189) #10
  store i64 %206, ptr %204, align 8, !tbaa !60
  br label %211

207:                                              ; preds = %195
  %208 = getelementptr inbounds nuw i8, ptr %177, i64 96
  %209 = load i64, ptr %208, align 8, !tbaa !60
  %210 = tail call i64 @crc32(i64 noundef %209, ptr noundef %188, i32 noundef %189) #10
  store i64 %210, ptr %208, align 8, !tbaa !60
  br label %211

211:                                              ; preds = %207, %203, %195
  %212 = load ptr, ptr %177, align 8, !tbaa !83
  %213 = getelementptr inbounds nuw i8, ptr %212, i64 %198
  store ptr %213, ptr %177, align 8, !tbaa !83
  %214 = getelementptr inbounds nuw i8, ptr %177, i64 16
  %215 = load i64, ptr %214, align 8, !tbaa !56
  %216 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %215, i64 %198), !nosanitize !49
  %217 = extractvalue { i64, i1 } %216, 1, !nosanitize !49
  br i1 %217, label %218, label %219, !prof !50, !nosanitize !49

218:                                              ; preds = %211
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

219:                                              ; preds = %211
  %220 = extractvalue { i64, i1 } %216, 0, !nosanitize !49
  store i64 %220, ptr %214, align 8, !tbaa !56
  br label %221

221:                                              ; preds = %219, %181
  %222 = phi i32 [ %189, %219 ], [ 0, %181 ]
  %223 = load i32, ptr %3, align 4, !tbaa !76
  %224 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %223, i32 %222), !nosanitize !49
  %225 = extractvalue { i32, i1 } %224, 1, !nosanitize !49
  br i1 %225, label %226, label %227, !prof !50, !nosanitize !49

226:                                              ; preds = %221
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

227:                                              ; preds = %221
  %228 = extractvalue { i32, i1 } %224, 0, !nosanitize !49
  store i32 %228, ptr %3, align 4, !tbaa !76
  %229 = load i32, ptr %10, align 4, !tbaa !77
  %230 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 %229), !nosanitize !49
  %231 = extractvalue { i32, i1 } %230, 1, !nosanitize !49
  br i1 %231, label %232, label %233, !prof !50, !nosanitize !49

232:                                              ; preds = %227
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

233:                                              ; preds = %227
  %234 = extractvalue { i32, i1 } %230, 0, !nosanitize !49
  %235 = icmp ugt i32 %234, 2
  br i1 %235, label %236, label %307

236:                                              ; preds = %233
  %237 = load i32, ptr %6, align 4, !tbaa !74
  %238 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %237, i32 %229), !nosanitize !49
  %239 = extractvalue { i32, i1 } %238, 0, !nosanitize !49
  %240 = extractvalue { i32, i1 } %238, 1, !nosanitize !49
  br i1 %240, label %241, label %242, !prof !50, !nosanitize !49

241:                                              ; preds = %236
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

242:                                              ; preds = %236
  %243 = load ptr, ptr %7, align 8, !tbaa !39
  %244 = zext i32 %239 to i64
  %245 = getelementptr inbounds nuw i8, ptr %243, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !8
  %247 = zext i8 %246 to i32
  store i32 %247, ptr %15, align 8, !tbaa !81
  %248 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 1), !nosanitize !49
  %249 = extractvalue { i32, i1 } %248, 1, !nosanitize !49
  br i1 %249, label %250, label %251, !prof !50, !nosanitize !49

250:                                              ; preds = %242
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

251:                                              ; preds = %242
  %252 = extractvalue { i32, i1 } %248, 0, !nosanitize !49
  %253 = load i32, ptr %16, align 8, !tbaa !38
  %254 = shl i32 %247, %253
  %255 = zext i32 %252 to i64
  %256 = getelementptr inbounds nuw i8, ptr %243, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !8
  %258 = zext i8 %257 to i32
  %259 = xor i32 %254, %258
  %260 = load i32, ptr %17, align 4, !tbaa !37
  %261 = and i32 %259, %260
  store i32 %261, ptr %15, align 8, !tbaa !81
  br label %262

262:                                              ; preds = %304, %251
  %263 = phi i32 [ %229, %251 ], [ %300, %304 ]
  %264 = phi i32 [ %239, %251 ], [ %296, %304 ]
  %265 = icmp eq i32 %263, 0
  br i1 %265, label %307, label %266

266:                                              ; preds = %262
  %267 = load i32, ptr %15, align 8, !tbaa !81
  %268 = shl i32 %267, %253
  %269 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %264, i32 3), !nosanitize !49
  %270 = extractvalue { i32, i1 } %269, 1, !nosanitize !49
  br i1 %270, label %271, label %272, !prof !50, !nosanitize !49

271:                                              ; preds = %266
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

272:                                              ; preds = %266
  %273 = extractvalue { i32, i1 } %269, 0, !nosanitize !49
  %274 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %273, i32 1), !nosanitize !49
  %275 = extractvalue { i32, i1 } %274, 1, !nosanitize !49
  br i1 %275, label %276, label %277, !prof !50, !nosanitize !49

276:                                              ; preds = %272
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

277:                                              ; preds = %272
  %278 = extractvalue { i32, i1 } %274, 0, !nosanitize !49
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds nuw i8, ptr %243, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !8
  %282 = zext i8 %281 to i32
  %283 = xor i32 %268, %282
  %284 = and i32 %283, %260
  store i32 %284, ptr %15, align 8, !tbaa !81
  %285 = load ptr, ptr %12, align 8, !tbaa !41
  %286 = zext i32 %284 to i64
  %287 = getelementptr inbounds nuw [2 x i8], ptr %285, i64 %286
  %288 = load i16, ptr %287, align 2, !tbaa !63
  %289 = load ptr, ptr %13, align 8, !tbaa !40
  %290 = load i32, ptr %18, align 8, !tbaa !34
  %291 = and i32 %290, %264
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds nuw [2 x i8], ptr %289, i64 %292
  store i16 %288, ptr %293, align 2, !tbaa !63
  %294 = trunc i32 %264 to i16
  store i16 %294, ptr %287, align 2, !tbaa !63
  %295 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %264, i32 1), !nosanitize !49
  %296 = extractvalue { i32, i1 } %295, 0, !nosanitize !49
  %297 = extractvalue { i32, i1 } %295, 1, !nosanitize !49
  br i1 %297, label %298, label %299, !prof !50, !nosanitize !49

298:                                              ; preds = %277
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

299:                                              ; preds = %277
  %300 = add i32 %263, -1
  store i32 %300, ptr %10, align 4, !tbaa !77
  %301 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %228, i32 %300), !nosanitize !49
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !49
  br i1 %302, label %303, label %304, !prof !50, !nosanitize !49

303:                                              ; preds = %299
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

304:                                              ; preds = %299
  %305 = extractvalue { i32, i1 } %301, 0, !nosanitize !49
  %306 = icmp ult i32 %305, 3
  br i1 %306, label %307, label %262, !llvm.loop !89

307:                                              ; preds = %304, %262, %233
  %308 = icmp ult i32 %228, 262
  br i1 %308, label %309, label %314

309:                                              ; preds = %307
  %310 = load ptr, ptr %0, align 8, !tbaa !20
  %311 = getelementptr inbounds nuw i8, ptr %310, i64 8
  %312 = load i32, ptr %311, align 8, !tbaa !82
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %75, !llvm.loop !90

314:                                              ; preds = %309, %307, %175
  %315 = load i64, ptr %19, align 8, !tbaa !42
  %316 = load i64, ptr %5, align 8, !tbaa !62
  %317 = icmp ult i64 %315, %316
  br i1 %317, label %318, label %357

318:                                              ; preds = %314
  %319 = load i32, ptr %6, align 4, !tbaa !74
  %320 = zext i32 %319 to i64
  %321 = load i32, ptr %3, align 4, !tbaa !76
  %322 = zext i32 %321 to i64
  %323 = add nuw nsw i64 %322, %320
  %324 = icmp ult i64 %315, %323
  br i1 %324, label %325, label %335

325:                                              ; preds = %318
  %326 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %316, i64 %323), !nosanitize !49
  %327 = extractvalue { i64, i1 } %326, 1, !nosanitize !49
  br i1 %327, label %328, label %329, !prof !50, !nosanitize !49

328:                                              ; preds = %325
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

329:                                              ; preds = %325
  %330 = extractvalue { i64, i1 } %326, 0, !nosanitize !49
  %331 = tail call i64 @llvm.umin.i64(i64 %330, i64 258)
  %332 = load ptr, ptr %7, align 8, !tbaa !39
  %333 = getelementptr inbounds nuw i8, ptr %332, i64 %323
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %333, i8 0, i64 %331, i1 false)
  %334 = add nuw nsw i64 %331, %323
  br label %355

335:                                              ; preds = %318
  %336 = add nuw nsw i64 %323, 258
  %337 = icmp ult i64 %315, %336
  br i1 %337, label %338, label %357

338:                                              ; preds = %335
  %339 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %316, i64 %315), !nosanitize !49
  %340 = extractvalue { i64, i1 } %339, 1, !nosanitize !49
  br i1 %340, label %341, label %342, !prof !50, !nosanitize !49

341:                                              ; preds = %338
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

342:                                              ; preds = %338
  %343 = sub nuw nsw i64 %336, %315
  %344 = extractvalue { i64, i1 } %339, 0, !nosanitize !49
  %345 = tail call i64 @llvm.umin.i64(i64 %343, i64 %344)
  %346 = load ptr, ptr %7, align 8, !tbaa !39
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 %315
  %348 = and i64 %345, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %347, i8 0, i64 %348, i1 false)
  %349 = load i64, ptr %19, align 8, !tbaa !42
  %350 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %349, i64 %345), !nosanitize !49
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !49
  br i1 %351, label %352, label %353, !prof !50, !nosanitize !49

352:                                              ; preds = %342
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

353:                                              ; preds = %342
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !49
  br label %355

355:                                              ; preds = %353, %329
  %356 = phi i64 [ %334, %329 ], [ %354, %353 ]
  store i64 %356, ptr %19, align 8, !tbaa !42
  br label %357

357:                                              ; preds = %355, %335, %314
  %358 = load i32, ptr %3, align 4, !tbaa !76
  %359 = icmp ult i32 %358, 262
  %360 = and i1 %20, %359
  br i1 %360, label %1005, label %361

361:                                              ; preds = %357
  %362 = icmp eq i32 %358, 0
  br i1 %362, label %867, label %363

363:                                              ; preds = %361, %69
  %364 = load i32, ptr %3, align 4, !tbaa !76
  %365 = icmp ugt i32 %364, 2
  br i1 %365, label %366, label %395

366:                                              ; preds = %363
  %367 = load i32, ptr %21, align 4, !tbaa !74
  %368 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %367, i32 2), !nosanitize !49
  %369 = extractvalue { i32, i1 } %368, 1, !nosanitize !49
  br i1 %369, label %370, label %371, !prof !50, !nosanitize !49

370:                                              ; preds = %366
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

371:                                              ; preds = %366
  %372 = extractvalue { i32, i1 } %368, 0, !nosanitize !49
  %373 = load ptr, ptr %22, align 8, !tbaa !39
  %374 = load i32, ptr %23, align 8, !tbaa !81
  %375 = load i32, ptr %24, align 8, !tbaa !38
  %376 = shl i32 %374, %375
  %377 = zext i32 %372 to i64
  %378 = getelementptr inbounds nuw i8, ptr %373, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !8
  %380 = zext i8 %379 to i32
  %381 = xor i32 %376, %380
  %382 = load i32, ptr %25, align 4, !tbaa !37
  %383 = and i32 %381, %382
  store i32 %383, ptr %23, align 8, !tbaa !81
  %384 = load ptr, ptr %26, align 8, !tbaa !41
  %385 = zext i32 %383 to i64
  %386 = getelementptr inbounds nuw [2 x i8], ptr %384, i64 %385
  %387 = load i16, ptr %386, align 2, !tbaa !63
  %388 = load ptr, ptr %27, align 8, !tbaa !40
  %389 = load i32, ptr %28, align 8, !tbaa !34
  %390 = and i32 %389, %367
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds nuw [2 x i8], ptr %388, i64 %391
  store i16 %387, ptr %392, align 2, !tbaa !63
  %393 = zext i16 %387 to i32
  %394 = trunc i32 %367 to i16
  store i16 %394, ptr %386, align 2, !tbaa !63
  br label %395

395:                                              ; preds = %371, %363
  %396 = phi i32 [ %393, %371 ], [ 0, %363 ]
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %586, label %398

398:                                              ; preds = %395
  %399 = load i32, ptr %29, align 4, !tbaa !74
  %400 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %399, i32 %396), !nosanitize !49
  %401 = extractvalue { i32, i1 } %400, 0, !nosanitize !49
  %402 = extractvalue { i32, i1 } %400, 1, !nosanitize !49
  br i1 %402, label %403, label %404, !prof !50, !nosanitize !49

403:                                              ; preds = %398
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

404:                                              ; preds = %398
  %405 = load i32, ptr %30, align 8, !tbaa !33
  %406 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %405, i32 262), !nosanitize !49
  %407 = extractvalue { i32, i1 } %406, 1, !nosanitize !49
  br i1 %407, label %408, label %409, !prof !50, !nosanitize !49

408:                                              ; preds = %404
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

409:                                              ; preds = %404
  %410 = extractvalue { i32, i1 } %406, 0, !nosanitize !49
  %411 = icmp ugt i32 %401, %410
  br i1 %411, label %586, label %412

412:                                              ; preds = %409
  %413 = load ptr, ptr %31, align 8, !tbaa !39
  %414 = zext i32 %399 to i64
  %415 = getelementptr inbounds nuw i8, ptr %413, i64 %414
  %416 = load i32, ptr %32, align 8, !tbaa !78
  %417 = tail call i32 @llvm.usub.sat.i32(i32 %399, i32 %410)
  %418 = load ptr, ptr %33, align 8, !tbaa !40
  %419 = load i32, ptr %34, align 8, !tbaa !34
  %420 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %416, i32 -1)
  %421 = extractvalue { i32, i1 } %420, 1, !nosanitize !49
  br i1 %421, label %422, label %423, !prof !50, !nosanitize !49

422:                                              ; preds = %555, %543, %453, %412
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

423:                                              ; preds = %412
  %424 = load i32, ptr %35, align 8, !tbaa !71
  %425 = load i32, ptr %36, align 4, !tbaa !73
  %426 = getelementptr inbounds nuw i8, ptr %415, i64 258
  %427 = extractvalue { i32, i1 } %420, 0, !nosanitize !49
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8, ptr %415, i64 %428
  %430 = load i8, ptr %429, align 1, !tbaa !8
  %431 = sext i32 %416 to i64
  %432 = getelementptr inbounds i8, ptr %415, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !8
  %434 = load i32, ptr %37, align 4, !tbaa !69
  %435 = icmp ult i32 %416, %434
  %436 = lshr i32 %425, 2
  %437 = select i1 %435, i32 %425, i32 %436
  %438 = tail call i32 @llvm.umin.i32(i32 %424, i32 %364)
  %439 = getelementptr inbounds nuw i8, ptr %415, i64 1
  %440 = ptrtoint ptr %426 to i64
  br label %441

441:                                              ; preds = %580, %423
  %442 = phi i32 [ %416, %423 ], [ %567, %580 ]
  %443 = phi i32 [ %437, %423 ], [ %581, %580 ]
  %444 = phi i32 [ %396, %423 ], [ %574, %580 ]
  %445 = phi i8 [ %430, %423 ], [ %568, %580 ]
  %446 = phi i8 [ %433, %423 ], [ %569, %580 ]
  %447 = zext nneg i32 %444 to i64
  %448 = getelementptr inbounds nuw i8, ptr %413, i64 %447
  %449 = sext i32 %442 to i64
  %450 = getelementptr inbounds i8, ptr %448, i64 %449
  %451 = load i8, ptr %450, align 1, !tbaa !8
  %452 = icmp eq i8 %451, %446
  br i1 %452, label %453, label %566

453:                                              ; preds = %441
  %454 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %442, i32 -1)
  %455 = extractvalue { i32, i1 } %454, 1, !nosanitize !49
  br i1 %455, label %422, label %456, !prof !50, !nosanitize !49

456:                                              ; preds = %453
  %457 = extractvalue { i32, i1 } %454, 0, !nosanitize !49
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8, ptr %448, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !8
  %461 = icmp eq i8 %460, %445
  br i1 %461, label %462, label %566

462:                                              ; preds = %456
  %463 = load i8, ptr %448, align 1, !tbaa !8
  %464 = load i8, ptr %415, align 1, !tbaa !8
  %465 = icmp eq i8 %463, %464
  br i1 %465, label %466, label %566

466:                                              ; preds = %462
  %467 = getelementptr inbounds nuw i8, ptr %448, i64 1
  %468 = load i8, ptr %467, align 1, !tbaa !8
  %469 = load i8, ptr %439, align 1, !tbaa !8
  %470 = icmp eq i8 %468, %469
  br i1 %470, label %471, label %566

471:                                              ; preds = %466
  %472 = getelementptr inbounds nuw i8, ptr %448, i64 2
  br label %473

473:                                              ; preds = %518, %471
  %474 = phi ptr [ %472, %471 ], [ %522, %518 ]
  %475 = phi i64 [ 2, %471 ], [ %519, %518 ]
  %476 = getelementptr inbounds nuw i8, ptr %415, i64 %475
  %477 = getelementptr inbounds nuw i8, ptr %476, i64 1
  %478 = load i8, ptr %477, align 1, !tbaa !8
  %479 = getelementptr inbounds nuw i8, ptr %474, i64 1
  %480 = load i8, ptr %479, align 1, !tbaa !8
  %481 = icmp eq i8 %478, %480
  br i1 %481, label %482, label %527

482:                                              ; preds = %473
  %483 = getelementptr inbounds nuw i8, ptr %476, i64 2
  %484 = load i8, ptr %483, align 1, !tbaa !8
  %485 = getelementptr inbounds nuw i8, ptr %474, i64 2
  %486 = load i8, ptr %485, align 1, !tbaa !8
  %487 = icmp eq i8 %484, %486
  br i1 %487, label %488, label %529

488:                                              ; preds = %482
  %489 = getelementptr inbounds nuw i8, ptr %476, i64 3
  %490 = load i8, ptr %489, align 1, !tbaa !8
  %491 = getelementptr inbounds nuw i8, ptr %474, i64 3
  %492 = load i8, ptr %491, align 1, !tbaa !8
  %493 = icmp eq i8 %490, %492
  br i1 %493, label %494, label %531

494:                                              ; preds = %488
  %495 = getelementptr inbounds nuw i8, ptr %476, i64 4
  %496 = load i8, ptr %495, align 1, !tbaa !8
  %497 = getelementptr inbounds nuw i8, ptr %474, i64 4
  %498 = load i8, ptr %497, align 1, !tbaa !8
  %499 = icmp eq i8 %496, %498
  br i1 %499, label %500, label %533

500:                                              ; preds = %494
  %501 = getelementptr inbounds nuw i8, ptr %476, i64 5
  %502 = load i8, ptr %501, align 1, !tbaa !8
  %503 = getelementptr inbounds nuw i8, ptr %474, i64 5
  %504 = load i8, ptr %503, align 1, !tbaa !8
  %505 = icmp eq i8 %502, %504
  br i1 %505, label %506, label %535

506:                                              ; preds = %500
  %507 = getelementptr inbounds nuw i8, ptr %476, i64 6
  %508 = load i8, ptr %507, align 1, !tbaa !8
  %509 = getelementptr inbounds nuw i8, ptr %474, i64 6
  %510 = load i8, ptr %509, align 1, !tbaa !8
  %511 = icmp eq i8 %508, %510
  br i1 %511, label %512, label %537

512:                                              ; preds = %506
  %513 = getelementptr inbounds nuw i8, ptr %476, i64 7
  %514 = load i8, ptr %513, align 1, !tbaa !8
  %515 = getelementptr inbounds nuw i8, ptr %474, i64 7
  %516 = load i8, ptr %515, align 1, !tbaa !8
  %517 = icmp eq i8 %514, %516
  br i1 %517, label %518, label %539

518:                                              ; preds = %512
  %519 = add nuw nsw i64 %475, 8
  %520 = getelementptr inbounds nuw i8, ptr %415, i64 %519
  %521 = load i8, ptr %520, align 1, !tbaa !8
  %522 = getelementptr inbounds nuw i8, ptr %474, i64 8
  %523 = load i8, ptr %522, align 1, !tbaa !8
  %524 = icmp eq i8 %521, %523
  %525 = icmp samesign ult i64 %475, 250
  %526 = select i1 %524, i1 %525, i1 false
  br i1 %526, label %473, label %541, !llvm.loop !129

527:                                              ; preds = %473
  %528 = getelementptr inbounds nuw i8, ptr %476, i64 1
  br label %543

529:                                              ; preds = %482
  %530 = getelementptr inbounds nuw i8, ptr %476, i64 2
  br label %543

531:                                              ; preds = %488
  %532 = getelementptr inbounds nuw i8, ptr %476, i64 3
  br label %543

533:                                              ; preds = %494
  %534 = getelementptr inbounds nuw i8, ptr %476, i64 4
  br label %543

535:                                              ; preds = %500
  %536 = getelementptr inbounds nuw i8, ptr %476, i64 5
  br label %543

537:                                              ; preds = %506
  %538 = getelementptr inbounds nuw i8, ptr %476, i64 6
  br label %543

539:                                              ; preds = %512
  %540 = getelementptr inbounds nuw i8, ptr %476, i64 7
  br label %543

541:                                              ; preds = %518
  %542 = getelementptr inbounds nuw i8, ptr %415, i64 %519
  br label %543

543:                                              ; preds = %541, %539, %537, %535, %533, %531, %529, %527
  %544 = phi ptr [ %530, %529 ], [ %532, %531 ], [ %528, %527 ], [ %540, %539 ], [ %538, %537 ], [ %536, %535 ], [ %534, %533 ], [ %542, %541 ]
  %545 = ptrtoint ptr %544 to i64
  %546 = sub i64 %440, %545
  %547 = trunc i64 %546 to i32
  %548 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %547), !nosanitize !49
  %549 = extractvalue { i32, i1 } %548, 0, !nosanitize !49
  %550 = extractvalue { i32, i1 } %548, 1, !nosanitize !49
  br i1 %550, label %422, label %551, !prof !50, !nosanitize !49

551:                                              ; preds = %543
  %552 = icmp sgt i32 %549, %442
  br i1 %552, label %553, label %566

553:                                              ; preds = %551
  store i32 %444, ptr %38, align 8, !tbaa !84
  %554 = icmp slt i32 %549, %438
  br i1 %554, label %555, label %583

555:                                              ; preds = %553
  %556 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %549, i32 -1)
  %557 = extractvalue { i32, i1 } %556, 1, !nosanitize !49
  br i1 %557, label %422, label %558, !prof !50, !nosanitize !49

558:                                              ; preds = %555
  %559 = extractvalue { i32, i1 } %556, 0, !nosanitize !49
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i8, ptr %415, i64 %560
  %562 = load i8, ptr %561, align 1, !tbaa !8
  %563 = sext i32 %549 to i64
  %564 = getelementptr inbounds i8, ptr %415, i64 %563
  %565 = load i8, ptr %564, align 1, !tbaa !8
  br label %566

566:                                              ; preds = %558, %551, %466, %462, %456, %441
  %567 = phi i32 [ %442, %441 ], [ %442, %456 ], [ %442, %462 ], [ %442, %466 ], [ %549, %558 ], [ %442, %551 ]
  %568 = phi i8 [ %445, %441 ], [ %445, %456 ], [ %445, %462 ], [ %445, %466 ], [ %562, %558 ], [ %445, %551 ]
  %569 = phi i8 [ %446, %441 ], [ %446, %456 ], [ %446, %462 ], [ %446, %466 ], [ %565, %558 ], [ %446, %551 ]
  %570 = and i32 %444, %419
  %571 = zext nneg i32 %570 to i64
  %572 = getelementptr inbounds nuw [2 x i8], ptr %418, i64 %571
  %573 = load i16, ptr %572, align 2, !tbaa !63
  %574 = zext i16 %573 to i32
  %575 = icmp ult i32 %417, %574
  br i1 %575, label %576, label %583

576:                                              ; preds = %566
  %577 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %443, i32 1), !nosanitize !49
  %578 = extractvalue { i32, i1 } %577, 1, !nosanitize !49
  br i1 %578, label %579, label %580, !prof !50, !nosanitize !49

579:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

580:                                              ; preds = %576
  %581 = extractvalue { i32, i1 } %577, 0, !nosanitize !49
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %441, !llvm.loop !130

583:                                              ; preds = %580, %566, %553
  %584 = phi i32 [ %567, %580 ], [ %567, %566 ], [ %549, %553 ]
  %585 = tail call i32 @llvm.umin.i32(i32 %584, i32 %364)
  store i32 %585, ptr %39, align 8, !tbaa !79
  br label %586

586:                                              ; preds = %583, %409, %395
  %587 = load i32, ptr %40, align 8, !tbaa !79
  %588 = icmp ugt i32 %587, 2
  br i1 %588, label %589, label %747

589:                                              ; preds = %586
  %590 = trunc i32 %587 to i8
  %591 = add i8 %590, -3
  %592 = load i32, ptr %47, align 4, !tbaa !74
  %593 = load i32, ptr %48, align 8, !tbaa !84
  %594 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %592, i32 %593), !nosanitize !49
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !49
  br i1 %595, label %596, label %597, !prof !50, !nosanitize !49

596:                                              ; preds = %589
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

597:                                              ; preds = %589
  %598 = extractvalue { i32, i1 } %594, 0, !nosanitize !49
  %599 = trunc i32 %598 to i16
  %600 = load i32, ptr %50, align 4, !tbaa !122
  %601 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %600, i32 1), !nosanitize !49
  %602 = extractvalue { i32, i1 } %601, 1, !nosanitize !49
  br i1 %602, label %603, label %604, !prof !50, !nosanitize !49

603:                                              ; preds = %597
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

604:                                              ; preds = %597
  %605 = extractvalue { i32, i1 } %601, 0, !nosanitize !49
  %606 = load ptr, ptr %49, align 8, !tbaa !48
  %607 = trunc i32 %598 to i8
  store i32 %605, ptr %50, align 4, !tbaa !122
  %608 = zext i32 %600 to i64
  %609 = getelementptr inbounds nuw i8, ptr %606, i64 %608
  store i8 %607, ptr %609, align 1, !tbaa !8
  %610 = load i32, ptr %50, align 4, !tbaa !122
  %611 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %610, i32 1), !nosanitize !49
  %612 = extractvalue { i32, i1 } %611, 1, !nosanitize !49
  br i1 %612, label %613, label %614, !prof !50, !nosanitize !49

613:                                              ; preds = %604
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

614:                                              ; preds = %604
  %615 = extractvalue { i32, i1 } %611, 0, !nosanitize !49
  %616 = load ptr, ptr %49, align 8, !tbaa !48
  %617 = lshr i32 %598, 8
  %618 = trunc i32 %617 to i8
  store i32 %615, ptr %50, align 4, !tbaa !122
  %619 = zext i32 %610 to i64
  %620 = getelementptr inbounds nuw i8, ptr %616, i64 %619
  store i8 %618, ptr %620, align 1, !tbaa !8
  %621 = load i32, ptr %50, align 4, !tbaa !122
  %622 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %621, i32 1), !nosanitize !49
  %623 = extractvalue { i32, i1 } %622, 1, !nosanitize !49
  br i1 %623, label %624, label %625, !prof !50, !nosanitize !49

624:                                              ; preds = %614
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

625:                                              ; preds = %614
  %626 = extractvalue { i32, i1 } %622, 0, !nosanitize !49
  %627 = load ptr, ptr %49, align 8, !tbaa !48
  store i32 %626, ptr %50, align 4, !tbaa !122
  %628 = zext i32 %621 to i64
  %629 = getelementptr inbounds nuw i8, ptr %627, i64 %628
  store i8 %591, ptr %629, align 1, !tbaa !8
  %630 = add i16 %599, -1
  %631 = zext i8 %591 to i64
  %632 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !8
  %634 = zext i8 %633 to i64
  %635 = getelementptr [4 x i8], ptr %51, i64 %634
  %636 = load i16, ptr %635, align 4, !tbaa !8
  %637 = add i16 %636, 1
  store i16 %637, ptr %635, align 4, !tbaa !8
  %638 = icmp ult i16 %630, 256
  br i1 %638, label %639, label %642

639:                                              ; preds = %625
  %640 = zext nneg i16 %630 to i64
  %641 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %640
  br label %647

642:                                              ; preds = %625
  %643 = lshr i16 %630, 7
  %644 = zext nneg i16 %643 to i64
  %645 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %644
  %646 = getelementptr inbounds nuw i8, ptr %645, i64 256
  br label %647

647:                                              ; preds = %642, %639
  %648 = phi ptr [ %641, %639 ], [ %646, %642 ]
  %649 = load i8, ptr %648, align 1, !tbaa !8
  %650 = zext i8 %649 to i64
  %651 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %650
  %652 = load i16, ptr %651, align 4, !tbaa !8
  %653 = add i16 %652, 1
  store i16 %653, ptr %651, align 4, !tbaa !8
  %654 = load i32, ptr %50, align 4, !tbaa !122
  %655 = load i32, ptr %53, align 8, !tbaa !51
  %656 = icmp eq i32 %654, %655
  %657 = load i32, ptr %40, align 8, !tbaa !79
  %658 = load i32, ptr %3, align 4, !tbaa !76
  %659 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %658, i32 %657), !nosanitize !49
  %660 = extractvalue { i32, i1 } %659, 1, !nosanitize !49
  br i1 %660, label %661, label %662, !prof !50, !nosanitize !49

661:                                              ; preds = %647
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

662:                                              ; preds = %647
  %663 = extractvalue { i32, i1 } %659, 0, !nosanitize !49
  store i32 %663, ptr %3, align 4, !tbaa !76
  %664 = load i32, ptr %54, align 8, !tbaa !67
  %665 = icmp ule i32 %657, %664
  %666 = icmp ugt i32 %663, 2
  %667 = select i1 %665, i1 %666, i1 false
  br i1 %667, label %668, label %721

668:                                              ; preds = %662
  %669 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %657, i32 1), !nosanitize !49
  %670 = extractvalue { i32, i1 } %669, 1, !nosanitize !49
  br i1 %670, label %671, label %672, !prof !50, !nosanitize !49

671:                                              ; preds = %668
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

672:                                              ; preds = %668
  %673 = extractvalue { i32, i1 } %669, 0, !nosanitize !49
  store i32 %673, ptr %40, align 8, !tbaa !79
  %674 = load i32, ptr %47, align 4, !tbaa !74
  %675 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %674, i32 1), !nosanitize !49
  %676 = extractvalue { i32, i1 } %675, 1, !nosanitize !49
  br i1 %676, label %678, label %679, !prof !117, !nosanitize !49

677:                                              ; preds = %712
  br i1 %716, label %678, label %679, !prof !118, !llvm.loop !131, !nosanitize !49

678:                                              ; preds = %677, %672
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

679:                                              ; preds = %677, %672
  %680 = phi { i32, i1 } [ %715, %677 ], [ %675, %672 ]
  %681 = extractvalue { i32, i1 } %680, 0, !nosanitize !49
  store i32 %681, ptr %47, align 4, !tbaa !74
  %682 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %681, i32 2), !nosanitize !49
  %683 = extractvalue { i32, i1 } %682, 1, !nosanitize !49
  br i1 %683, label %684, label %685, !prof !50, !nosanitize !49

684:                                              ; preds = %679
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

685:                                              ; preds = %679
  %686 = extractvalue { i32, i1 } %682, 0, !nosanitize !49
  %687 = load ptr, ptr %59, align 8, !tbaa !39
  %688 = load i32, ptr %60, align 8, !tbaa !81
  %689 = load i32, ptr %61, align 8, !tbaa !38
  %690 = shl i32 %688, %689
  %691 = zext i32 %686 to i64
  %692 = getelementptr inbounds nuw i8, ptr %687, i64 %691
  %693 = load i8, ptr %692, align 1, !tbaa !8
  %694 = zext i8 %693 to i32
  %695 = xor i32 %690, %694
  %696 = load i32, ptr %62, align 4, !tbaa !37
  %697 = and i32 %695, %696
  store i32 %697, ptr %60, align 8, !tbaa !81
  %698 = load ptr, ptr %63, align 8, !tbaa !41
  %699 = zext i32 %697 to i64
  %700 = getelementptr inbounds nuw [2 x i8], ptr %698, i64 %699
  %701 = load i16, ptr %700, align 2, !tbaa !63
  %702 = load ptr, ptr %64, align 8, !tbaa !40
  %703 = load i32, ptr %65, align 8, !tbaa !34
  %704 = and i32 %703, %681
  %705 = zext i32 %704 to i64
  %706 = getelementptr inbounds nuw [2 x i8], ptr %702, i64 %705
  store i16 %701, ptr %706, align 2, !tbaa !63
  %707 = trunc i32 %681 to i16
  store i16 %707, ptr %700, align 2, !tbaa !63
  %708 = load i32, ptr %40, align 8, !tbaa !79
  %709 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %708, i32 1), !nosanitize !49
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !49
  br i1 %710, label %711, label %712, !prof !50, !nosanitize !49

711:                                              ; preds = %685
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

712:                                              ; preds = %685
  %713 = extractvalue { i32, i1 } %709, 0, !nosanitize !49
  store i32 %713, ptr %40, align 8, !tbaa !79
  %714 = icmp eq i32 %713, 0
  %715 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %681, i32 1), !nosanitize !49
  %716 = extractvalue { i32, i1 } %715, 1, !nosanitize !49
  br i1 %714, label %717, label %677, !llvm.loop !131

717:                                              ; preds = %712
  br i1 %716, label %718, label %719, !prof !50, !nosanitize !49

718:                                              ; preds = %717
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

719:                                              ; preds = %717
  %720 = extractvalue { i32, i1 } %715, 0, !nosanitize !49
  store i32 %720, ptr %47, align 4, !tbaa !74
  br label %799

721:                                              ; preds = %662
  %722 = load i32, ptr %47, align 4, !tbaa !74
  %723 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %722, i32 %657), !nosanitize !49
  %724 = extractvalue { i32, i1 } %723, 1, !nosanitize !49
  br i1 %724, label %725, label %726, !prof !50, !nosanitize !49

725:                                              ; preds = %721
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

726:                                              ; preds = %721
  %727 = extractvalue { i32, i1 } %723, 0, !nosanitize !49
  store i32 %727, ptr %47, align 4, !tbaa !74
  store i32 0, ptr %40, align 8, !tbaa !79
  %728 = load ptr, ptr %55, align 8, !tbaa !39
  %729 = zext i32 %727 to i64
  %730 = getelementptr inbounds nuw i8, ptr %728, i64 %729
  %731 = load i8, ptr %730, align 1, !tbaa !8
  %732 = zext i8 %731 to i32
  store i32 %732, ptr %56, align 8, !tbaa !81
  %733 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %727, i32 1), !nosanitize !49
  %734 = extractvalue { i32, i1 } %733, 1, !nosanitize !49
  br i1 %734, label %735, label %736, !prof !50, !nosanitize !49

735:                                              ; preds = %726
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

736:                                              ; preds = %726
  %737 = extractvalue { i32, i1 } %733, 0, !nosanitize !49
  %738 = load i32, ptr %57, align 8, !tbaa !38
  %739 = shl i32 %732, %738
  %740 = zext i32 %737 to i64
  %741 = getelementptr inbounds nuw i8, ptr %728, i64 %740
  %742 = load i8, ptr %741, align 1, !tbaa !8
  %743 = zext i8 %742 to i32
  %744 = xor i32 %739, %743
  %745 = load i32, ptr %58, align 4, !tbaa !37
  %746 = and i32 %744, %745
  store i32 %746, ptr %56, align 8, !tbaa !81
  br label %799

747:                                              ; preds = %586
  %748 = load ptr, ptr %41, align 8, !tbaa !39
  %749 = load i32, ptr %42, align 4, !tbaa !74
  %750 = zext i32 %749 to i64
  %751 = getelementptr inbounds nuw i8, ptr %748, i64 %750
  %752 = load i8, ptr %751, align 1, !tbaa !8
  %753 = load i32, ptr %44, align 4, !tbaa !122
  %754 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %753, i32 1), !nosanitize !49
  %755 = extractvalue { i32, i1 } %754, 1, !nosanitize !49
  br i1 %755, label %756, label %757, !prof !50, !nosanitize !49

756:                                              ; preds = %747
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

757:                                              ; preds = %747
  %758 = extractvalue { i32, i1 } %754, 0, !nosanitize !49
  %759 = load ptr, ptr %43, align 8, !tbaa !48
  store i32 %758, ptr %44, align 4, !tbaa !122
  %760 = zext i32 %753 to i64
  %761 = getelementptr inbounds nuw i8, ptr %759, i64 %760
  store i8 0, ptr %761, align 1, !tbaa !8
  %762 = load i32, ptr %44, align 4, !tbaa !122
  %763 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %762, i32 1), !nosanitize !49
  %764 = extractvalue { i32, i1 } %763, 1, !nosanitize !49
  br i1 %764, label %765, label %766, !prof !50, !nosanitize !49

765:                                              ; preds = %757
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

766:                                              ; preds = %757
  %767 = extractvalue { i32, i1 } %763, 0, !nosanitize !49
  %768 = load ptr, ptr %43, align 8, !tbaa !48
  store i32 %767, ptr %44, align 4, !tbaa !122
  %769 = zext i32 %762 to i64
  %770 = getelementptr inbounds nuw i8, ptr %768, i64 %769
  store i8 0, ptr %770, align 1, !tbaa !8
  %771 = load i32, ptr %44, align 4, !tbaa !122
  %772 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %771, i32 1), !nosanitize !49
  %773 = extractvalue { i32, i1 } %772, 1, !nosanitize !49
  br i1 %773, label %774, label %775, !prof !50, !nosanitize !49

774:                                              ; preds = %766
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

775:                                              ; preds = %766
  %776 = extractvalue { i32, i1 } %772, 0, !nosanitize !49
  %777 = load ptr, ptr %43, align 8, !tbaa !48
  store i32 %776, ptr %44, align 4, !tbaa !122
  %778 = zext i32 %771 to i64
  %779 = getelementptr inbounds nuw i8, ptr %777, i64 %778
  store i8 %752, ptr %779, align 1, !tbaa !8
  %780 = zext i8 %752 to i64
  %781 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %780
  %782 = load i16, ptr %781, align 4, !tbaa !8
  %783 = add i16 %782, 1
  store i16 %783, ptr %781, align 4, !tbaa !8
  %784 = load i32, ptr %44, align 4, !tbaa !122
  %785 = load i32, ptr %46, align 8, !tbaa !51
  %786 = icmp eq i32 %784, %785
  %787 = load i32, ptr %3, align 4, !tbaa !76
  %788 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %787, i32 1), !nosanitize !49
  %789 = extractvalue { i32, i1 } %788, 1, !nosanitize !49
  br i1 %789, label %790, label %791, !prof !50, !nosanitize !49

790:                                              ; preds = %947, %878, %808, %775
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

791:                                              ; preds = %775
  %792 = extractvalue { i32, i1 } %788, 0, !nosanitize !49
  store i32 %792, ptr %3, align 4, !tbaa !76
  %793 = load i32, ptr %42, align 4, !tbaa !74
  %794 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %793, i32 1), !nosanitize !49
  %795 = extractvalue { i32, i1 } %794, 1, !nosanitize !49
  br i1 %795, label %796, label %797, !prof !50, !nosanitize !49

796:                                              ; preds = %791
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

797:                                              ; preds = %791
  %798 = extractvalue { i32, i1 } %794, 0, !nosanitize !49
  store i32 %798, ptr %42, align 4, !tbaa !74
  br label %799

799:                                              ; preds = %797, %736, %719
  %800 = phi i1 [ %656, %719 ], [ %656, %736 ], [ %786, %797 ]
  br i1 %800, label %801, label %866

801:                                              ; preds = %799
  %802 = load i64, ptr %66, align 8, !tbaa !75
  %803 = icmp sgt i64 %802, -1
  br i1 %803, label %804, label %808

804:                                              ; preds = %801
  %805 = load ptr, ptr %67, align 8, !tbaa !39
  %806 = and i64 %802, 4294967295
  %807 = getelementptr inbounds nuw i8, ptr %805, i64 %806
  br label %808

808:                                              ; preds = %804, %801
  %809 = phi ptr [ %807, %804 ], [ null, %801 ]
  %810 = load i32, ptr %68, align 4, !tbaa !74
  %811 = zext i32 %810 to i64
  %812 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %811, i64 %802), !nosanitize !49
  %813 = extractvalue { i64, i1 } %812, 1, !nosanitize !49
  br i1 %813, label %790, label %814, !prof !50, !nosanitize !49

814:                                              ; preds = %808
  %815 = extractvalue { i64, i1 } %812, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %809, i64 noundef %815, i32 noundef 0) #10
  %816 = load i32, ptr %68, align 4, !tbaa !74
  %817 = zext i32 %816 to i64
  store i64 %817, ptr %66, align 8, !tbaa !75
  %818 = load ptr, ptr %0, align 8, !tbaa !20
  %819 = getelementptr inbounds nuw i8, ptr %818, i64 56
  %820 = load ptr, ptr %819, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %820) #10
  %821 = getelementptr inbounds nuw i8, ptr %820, i64 40
  %822 = load i64, ptr %821, align 8, !tbaa !58
  %823 = getelementptr inbounds nuw i8, ptr %818, i64 32
  %824 = load i32, ptr %823, align 8, !tbaa !100
  %825 = zext i32 %824 to i64
  %826 = tail call i64 @llvm.umin.i64(i64 %822, i64 %825)
  %827 = trunc nuw i64 %826 to i32
  %828 = icmp eq i64 %826, 0
  br i1 %828, label %861, label %829

829:                                              ; preds = %814
  %830 = getelementptr inbounds nuw i8, ptr %818, i64 24
  %831 = load ptr, ptr %830, align 8, !tbaa !99
  %832 = getelementptr inbounds nuw i8, ptr %820, i64 32
  %833 = load ptr, ptr %832, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %831, ptr align 1 %833, i64 %826, i1 false)
  %834 = load ptr, ptr %830, align 8, !tbaa !99
  %835 = getelementptr inbounds nuw i8, ptr %834, i64 %826
  store ptr %835, ptr %830, align 8, !tbaa !99
  %836 = load ptr, ptr %832, align 8, !tbaa !59
  %837 = getelementptr inbounds nuw i8, ptr %836, i64 %826
  store ptr %837, ptr %832, align 8, !tbaa !59
  %838 = getelementptr inbounds nuw i8, ptr %818, i64 40
  %839 = load i64, ptr %838, align 8, !tbaa !101
  %840 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %839, i64 %826), !nosanitize !49
  %841 = extractvalue { i64, i1 } %840, 1, !nosanitize !49
  br i1 %841, label %842, label %843, !prof !50, !nosanitize !49

842:                                              ; preds = %829
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

843:                                              ; preds = %829
  %844 = extractvalue { i64, i1 } %840, 0, !nosanitize !49
  store i64 %844, ptr %838, align 8, !tbaa !101
  %845 = load i32, ptr %823, align 8, !tbaa !100
  %846 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %845, i32 %827), !nosanitize !49
  %847 = extractvalue { i32, i1 } %846, 1, !nosanitize !49
  br i1 %847, label %848, label %849, !prof !50, !nosanitize !49

848:                                              ; preds = %843
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

849:                                              ; preds = %843
  %850 = extractvalue { i32, i1 } %846, 0, !nosanitize !49
  store i32 %850, ptr %823, align 8, !tbaa !100
  %851 = load i64, ptr %821, align 8, !tbaa !58
  %852 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %851, i64 %826), !nosanitize !49
  %853 = extractvalue { i64, i1 } %852, 1, !nosanitize !49
  br i1 %853, label %854, label %855, !prof !50, !nosanitize !49

854:                                              ; preds = %849
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

855:                                              ; preds = %849
  %856 = extractvalue { i64, i1 } %852, 0, !nosanitize !49
  store i64 %856, ptr %821, align 8, !tbaa !58
  %857 = icmp eq i64 %856, 0
  br i1 %857, label %858, label %861

858:                                              ; preds = %855
  %859 = getelementptr inbounds nuw i8, ptr %820, i64 16
  %860 = load ptr, ptr %859, align 8, !tbaa !44
  store ptr %860, ptr %832, align 8, !tbaa !59
  br label %861

861:                                              ; preds = %858, %855, %814
  %862 = load ptr, ptr %0, align 8, !tbaa !20
  %863 = getelementptr inbounds nuw i8, ptr %862, i64 32
  %864 = load i32, ptr %863, align 8, !tbaa !100
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %1005, label %866

866:                                              ; preds = %861, %799
  br label %69, !llvm.loop !132

867:                                              ; preds = %361
  %868 = load i32, ptr %6, align 4, !tbaa !74
  %869 = tail call i32 @llvm.umin.i32(i32 %868, i32 2)
  store i32 %869, ptr %10, align 4, !tbaa !77
  %870 = icmp eq i32 %1, 4
  br i1 %870, label %871, label %936

871:                                              ; preds = %867
  %872 = load i64, ptr %9, align 8, !tbaa !75
  %873 = icmp sgt i64 %872, -1
  br i1 %873, label %874, label %878

874:                                              ; preds = %871
  %875 = load ptr, ptr %7, align 8, !tbaa !39
  %876 = and i64 %872, 4294967295
  %877 = getelementptr inbounds nuw i8, ptr %875, i64 %876
  br label %878

878:                                              ; preds = %874, %871
  %879 = phi ptr [ %877, %874 ], [ null, %871 ]
  %880 = zext i32 %868 to i64
  %881 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %880, i64 %872), !nosanitize !49
  %882 = extractvalue { i64, i1 } %881, 1, !nosanitize !49
  br i1 %882, label %790, label %883, !prof !50, !nosanitize !49

883:                                              ; preds = %878
  %884 = extractvalue { i64, i1 } %881, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %879, i64 noundef %884, i32 noundef 1) #10
  %885 = load i32, ptr %6, align 4, !tbaa !74
  %886 = zext i32 %885 to i64
  store i64 %886, ptr %9, align 8, !tbaa !75
  %887 = load ptr, ptr %0, align 8, !tbaa !20
  %888 = getelementptr inbounds nuw i8, ptr %887, i64 56
  %889 = load ptr, ptr %888, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %889) #10
  %890 = getelementptr inbounds nuw i8, ptr %889, i64 40
  %891 = load i64, ptr %890, align 8, !tbaa !58
  %892 = getelementptr inbounds nuw i8, ptr %887, i64 32
  %893 = load i32, ptr %892, align 8, !tbaa !100
  %894 = zext i32 %893 to i64
  %895 = tail call i64 @llvm.umin.i64(i64 %891, i64 %894)
  %896 = trunc nuw i64 %895 to i32
  %897 = icmp eq i64 %895, 0
  br i1 %897, label %930, label %898

898:                                              ; preds = %883
  %899 = getelementptr inbounds nuw i8, ptr %887, i64 24
  %900 = load ptr, ptr %899, align 8, !tbaa !99
  %901 = getelementptr inbounds nuw i8, ptr %889, i64 32
  %902 = load ptr, ptr %901, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %900, ptr align 1 %902, i64 %895, i1 false)
  %903 = load ptr, ptr %899, align 8, !tbaa !99
  %904 = getelementptr inbounds nuw i8, ptr %903, i64 %895
  store ptr %904, ptr %899, align 8, !tbaa !99
  %905 = load ptr, ptr %901, align 8, !tbaa !59
  %906 = getelementptr inbounds nuw i8, ptr %905, i64 %895
  store ptr %906, ptr %901, align 8, !tbaa !59
  %907 = getelementptr inbounds nuw i8, ptr %887, i64 40
  %908 = load i64, ptr %907, align 8, !tbaa !101
  %909 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %908, i64 %895), !nosanitize !49
  %910 = extractvalue { i64, i1 } %909, 1, !nosanitize !49
  br i1 %910, label %911, label %912, !prof !50, !nosanitize !49

911:                                              ; preds = %898
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

912:                                              ; preds = %898
  %913 = extractvalue { i64, i1 } %909, 0, !nosanitize !49
  store i64 %913, ptr %907, align 8, !tbaa !101
  %914 = load i32, ptr %892, align 8, !tbaa !100
  %915 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %914, i32 %896), !nosanitize !49
  %916 = extractvalue { i32, i1 } %915, 1, !nosanitize !49
  br i1 %916, label %917, label %918, !prof !50, !nosanitize !49

917:                                              ; preds = %912
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

918:                                              ; preds = %912
  %919 = extractvalue { i32, i1 } %915, 0, !nosanitize !49
  store i32 %919, ptr %892, align 8, !tbaa !100
  %920 = load i64, ptr %890, align 8, !tbaa !58
  %921 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %920, i64 %895), !nosanitize !49
  %922 = extractvalue { i64, i1 } %921, 1, !nosanitize !49
  br i1 %922, label %923, label %924, !prof !50, !nosanitize !49

923:                                              ; preds = %918
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

924:                                              ; preds = %918
  %925 = extractvalue { i64, i1 } %921, 0, !nosanitize !49
  store i64 %925, ptr %890, align 8, !tbaa !58
  %926 = icmp eq i64 %925, 0
  br i1 %926, label %927, label %930

927:                                              ; preds = %924
  %928 = getelementptr inbounds nuw i8, ptr %889, i64 16
  %929 = load ptr, ptr %928, align 8, !tbaa !44
  store ptr %929, ptr %901, align 8, !tbaa !59
  br label %930

930:                                              ; preds = %927, %924, %883
  %931 = load ptr, ptr %0, align 8, !tbaa !20
  %932 = getelementptr inbounds nuw i8, ptr %931, i64 32
  %933 = load i32, ptr %932, align 8, !tbaa !100
  %934 = icmp eq i32 %933, 0
  %935 = select i1 %934, i32 2, i32 3
  br label %1005

936:                                              ; preds = %867
  %937 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %938 = load i32, ptr %937, align 4, !tbaa !122
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %1004, label %940

940:                                              ; preds = %936
  %941 = load i64, ptr %9, align 8, !tbaa !75
  %942 = icmp sgt i64 %941, -1
  br i1 %942, label %943, label %947

943:                                              ; preds = %940
  %944 = load ptr, ptr %7, align 8, !tbaa !39
  %945 = and i64 %941, 4294967295
  %946 = getelementptr inbounds nuw i8, ptr %944, i64 %945
  br label %947

947:                                              ; preds = %943, %940
  %948 = phi ptr [ %946, %943 ], [ null, %940 ]
  %949 = zext i32 %868 to i64
  %950 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %949, i64 %941), !nosanitize !49
  %951 = extractvalue { i64, i1 } %950, 1, !nosanitize !49
  br i1 %951, label %790, label %952, !prof !50, !nosanitize !49

952:                                              ; preds = %947
  %953 = extractvalue { i64, i1 } %950, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %948, i64 noundef %953, i32 noundef 0) #10
  %954 = load i32, ptr %6, align 4, !tbaa !74
  %955 = zext i32 %954 to i64
  store i64 %955, ptr %9, align 8, !tbaa !75
  %956 = load ptr, ptr %0, align 8, !tbaa !20
  %957 = getelementptr inbounds nuw i8, ptr %956, i64 56
  %958 = load ptr, ptr %957, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %958) #10
  %959 = getelementptr inbounds nuw i8, ptr %958, i64 40
  %960 = load i64, ptr %959, align 8, !tbaa !58
  %961 = getelementptr inbounds nuw i8, ptr %956, i64 32
  %962 = load i32, ptr %961, align 8, !tbaa !100
  %963 = zext i32 %962 to i64
  %964 = tail call i64 @llvm.umin.i64(i64 %960, i64 %963)
  %965 = trunc nuw i64 %964 to i32
  %966 = icmp eq i64 %964, 0
  br i1 %966, label %999, label %967

967:                                              ; preds = %952
  %968 = getelementptr inbounds nuw i8, ptr %956, i64 24
  %969 = load ptr, ptr %968, align 8, !tbaa !99
  %970 = getelementptr inbounds nuw i8, ptr %958, i64 32
  %971 = load ptr, ptr %970, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %969, ptr align 1 %971, i64 %964, i1 false)
  %972 = load ptr, ptr %968, align 8, !tbaa !99
  %973 = getelementptr inbounds nuw i8, ptr %972, i64 %964
  store ptr %973, ptr %968, align 8, !tbaa !99
  %974 = load ptr, ptr %970, align 8, !tbaa !59
  %975 = getelementptr inbounds nuw i8, ptr %974, i64 %964
  store ptr %975, ptr %970, align 8, !tbaa !59
  %976 = getelementptr inbounds nuw i8, ptr %956, i64 40
  %977 = load i64, ptr %976, align 8, !tbaa !101
  %978 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %977, i64 %964), !nosanitize !49
  %979 = extractvalue { i64, i1 } %978, 1, !nosanitize !49
  br i1 %979, label %980, label %981, !prof !50, !nosanitize !49

980:                                              ; preds = %967
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

981:                                              ; preds = %967
  %982 = extractvalue { i64, i1 } %978, 0, !nosanitize !49
  store i64 %982, ptr %976, align 8, !tbaa !101
  %983 = load i32, ptr %961, align 8, !tbaa !100
  %984 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %983, i32 %965), !nosanitize !49
  %985 = extractvalue { i32, i1 } %984, 1, !nosanitize !49
  br i1 %985, label %986, label %987, !prof !50, !nosanitize !49

986:                                              ; preds = %981
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

987:                                              ; preds = %981
  %988 = extractvalue { i32, i1 } %984, 0, !nosanitize !49
  store i32 %988, ptr %961, align 8, !tbaa !100
  %989 = load i64, ptr %959, align 8, !tbaa !58
  %990 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %989, i64 %964), !nosanitize !49
  %991 = extractvalue { i64, i1 } %990, 1, !nosanitize !49
  br i1 %991, label %992, label %993, !prof !50, !nosanitize !49

992:                                              ; preds = %987
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

993:                                              ; preds = %987
  %994 = extractvalue { i64, i1 } %990, 0, !nosanitize !49
  store i64 %994, ptr %959, align 8, !tbaa !58
  %995 = icmp eq i64 %994, 0
  br i1 %995, label %996, label %999

996:                                              ; preds = %993
  %997 = getelementptr inbounds nuw i8, ptr %958, i64 16
  %998 = load ptr, ptr %997, align 8, !tbaa !44
  store ptr %998, ptr %970, align 8, !tbaa !59
  br label %999

999:                                              ; preds = %996, %993, %952
  %1000 = load ptr, ptr %0, align 8, !tbaa !20
  %1001 = getelementptr inbounds nuw i8, ptr %1000, i64 32
  %1002 = load i32, ptr %1001, align 8, !tbaa !100
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1005, label %1004

1004:                                             ; preds = %999, %936
  br label %1005

1005:                                             ; preds = %1004, %999, %930, %861, %357
  %1006 = phi i32 [ 1, %1004 ], [ %935, %930 ], [ 0, %999 ], [ 0, %357 ], [ 0, %861 ]
  ret i32 %1006
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
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 188
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

68:                                               ; preds = %760, %2
  %69 = load i32, ptr %3, align 4, !tbaa !76
  %70 = icmp ult i32 %69, 262
  br i1 %70, label %71, label %362

71:                                               ; preds = %68
  %72 = load i32, ptr %4, align 8, !tbaa !33
  %73 = zext i32 %72 to i64
  br label %74

74:                                               ; preds = %308, %71
  %75 = load i64, ptr %5, align 8, !tbaa !62
  %76 = load i32, ptr %3, align 4, !tbaa !76
  %77 = zext i32 %76 to i64
  %78 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %75, i64 %77), !nosanitize !49
  %79 = extractvalue { i64, i1 } %78, 1, !nosanitize !49
  br i1 %79, label %80, label %81, !prof !50, !nosanitize !49

80:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

81:                                               ; preds = %74
  %82 = extractvalue { i64, i1 } %78, 0, !nosanitize !49
  %83 = load i32, ptr %6, align 4, !tbaa !74
  %84 = zext i32 %83 to i64
  %85 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %82, i64 %84), !nosanitize !49
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !49
  br i1 %86, label %87, label %88, !prof !50, !nosanitize !49

87:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

88:                                               ; preds = %81
  %89 = extractvalue { i64, i1 } %85, 0, !nosanitize !49
  %90 = trunc i64 %89 to i32
  %91 = load i32, ptr %4, align 8, !tbaa !33
  %92 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %91, i32 262), !nosanitize !49
  %93 = extractvalue { i32, i1 } %92, 1, !nosanitize !49
  br i1 %93, label %94, label %95, !prof !50, !nosanitize !49

94:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

95:                                               ; preds = %88
  %96 = extractvalue { i32, i1 } %92, 0, !nosanitize !49
  %97 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %72, i32 %96), !nosanitize !49
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !49
  br i1 %98, label %99, label %100, !prof !50, !nosanitize !49

99:                                               ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

100:                                              ; preds = %95
  %101 = extractvalue { i32, i1 } %97, 0, !nosanitize !49
  %102 = icmp ult i32 %83, %101
  br i1 %102, label %174, label %103

103:                                              ; preds = %100
  %104 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %72, i32 %90), !nosanitize !49
  %105 = extractvalue { i32, i1 } %104, 1, !nosanitize !49
  br i1 %105, label %106, label %107, !prof !50, !nosanitize !49

106:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

116:                                              ; preds = %107
  %117 = extractvalue { i32, i1 } %113, 0, !nosanitize !49
  store i32 %117, ptr %8, align 8, !tbaa !84
  %118 = load i32, ptr %6, align 4, !tbaa !74
  %119 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %118, i32 %72), !nosanitize !49
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !49
  br i1 %120, label %121, label %122, !prof !50, !nosanitize !49

121:                                              ; preds = %122, %116
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

122:                                              ; preds = %116
  %123 = extractvalue { i32, i1 } %119, 0, !nosanitize !49
  store i32 %123, ptr %6, align 4, !tbaa !74
  %124 = load i64, ptr %9, align 8, !tbaa !75
  %125 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %124, i64 %73), !nosanitize !49
  %126 = extractvalue { i64, i1 } %125, 1, !nosanitize !49
  br i1 %126, label %121, label %127, !prof !50, !nosanitize !49

127:                                              ; preds = %122
  %128 = extractvalue { i64, i1 } %125, 0, !nosanitize !49
  store i64 %128, ptr %9, align 8, !tbaa !75
  %129 = load i32, ptr %10, align 4, !tbaa !77
  %130 = icmp ugt i32 %129, %123
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 %123, ptr %10, align 4, !tbaa !77
  br label %132

132:                                              ; preds = %131, %127
  %133 = load i32, ptr %4, align 8, !tbaa !33
  %134 = load i32, ptr %11, align 4, !tbaa !36
  %135 = load ptr, ptr %12, align 8, !tbaa !41
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds nuw [2 x i8], ptr %135, i64 %136
  %138 = icmp eq i32 %134, 0
  br label %139

139:                                              ; preds = %148, %132
  %140 = phi ptr [ %137, %132 ], [ %142, %148 ]
  %141 = phi i32 [ %134, %132 ], [ %149, %148 ]
  %142 = getelementptr inbounds i8, ptr %140, i64 -2
  %143 = load i16, ptr %142, align 2, !tbaa !63
  %144 = zext i16 %143 to i32
  %145 = tail call i32 @llvm.usub.sat.i32(i32 %144, i32 %133)
  %146 = trunc nuw i32 %145 to i16
  store i16 %146, ptr %142, align 2, !tbaa !63
  br i1 %138, label %147, label %148, !prof !50, !nosanitize !49

147:                                              ; preds = %139
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

148:                                              ; preds = %139
  %149 = add i32 %141, -1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %139, !llvm.loop !85

151:                                              ; preds = %148
  %152 = load ptr, ptr %13, align 8, !tbaa !40
  %153 = zext i32 %133 to i64
  %154 = getelementptr inbounds nuw [2 x i8], ptr %152, i64 %153
  %155 = icmp eq i32 %133, 0
  br label %156

156:                                              ; preds = %165, %151
  %157 = phi ptr [ %154, %151 ], [ %159, %165 ]
  %158 = phi i32 [ %133, %151 ], [ %166, %165 ]
  %159 = getelementptr inbounds i8, ptr %157, i64 -2
  %160 = load i16, ptr %159, align 2, !tbaa !63
  %161 = zext i16 %160 to i32
  %162 = tail call i32 @llvm.usub.sat.i32(i32 %161, i32 %133)
  %163 = trunc nuw i32 %162 to i16
  store i16 %163, ptr %159, align 2, !tbaa !63
  br i1 %155, label %164, label %165, !prof !50, !nosanitize !49

164:                                              ; preds = %156
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

165:                                              ; preds = %156
  %166 = add i32 %158, -1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %156, !llvm.loop !88

168:                                              ; preds = %165
  store i32 1, ptr %14, align 8, !tbaa !64
  %169 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %90, i32 %72), !nosanitize !49
  %170 = extractvalue { i32, i1 } %169, 1, !nosanitize !49
  br i1 %170, label %171, label %172, !prof !50, !nosanitize !49

171:                                              ; preds = %168
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

172:                                              ; preds = %168
  %173 = extractvalue { i32, i1 } %169, 0, !nosanitize !49
  br label %174

174:                                              ; preds = %172, %100
  %175 = phi i32 [ %173, %172 ], [ %90, %100 ]
  %176 = load ptr, ptr %0, align 8, !tbaa !20
  %177 = getelementptr inbounds nuw i8, ptr %176, i64 8
  %178 = load i32, ptr %177, align 8, !tbaa !82
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %313, label %180

180:                                              ; preds = %174
  %181 = load ptr, ptr %7, align 8, !tbaa !39
  %182 = load i32, ptr %6, align 4, !tbaa !74
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 %183
  %185 = load i32, ptr %3, align 4, !tbaa !76
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds nuw i8, ptr %184, i64 %186
  %188 = tail call i32 @llvm.umin.i32(i32 %178, i32 %175)
  %189 = icmp eq i32 %175, 0
  br i1 %189, label %220, label %190

190:                                              ; preds = %180
  %191 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %178, i32 %188), !nosanitize !49
  %192 = extractvalue { i32, i1 } %191, 1, !nosanitize !49
  br i1 %192, label %193, label %194, !prof !50, !nosanitize !49

193:                                              ; preds = %190
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

194:                                              ; preds = %190
  %195 = extractvalue { i32, i1 } %191, 0, !nosanitize !49
  store i32 %195, ptr %177, align 8, !tbaa !82
  %196 = load ptr, ptr %176, align 8, !tbaa !83
  %197 = zext i32 %188 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %187, ptr align 1 %196, i64 %197, i1 false)
  %198 = getelementptr inbounds nuw i8, ptr %176, i64 56
  %199 = load ptr, ptr %198, align 8, !tbaa !19
  %200 = getelementptr inbounds nuw i8, ptr %199, i64 48
  %201 = load i32, ptr %200, align 8, !tbaa !30
  switch i32 %201, label %210 [
    i32 1, label %202
    i32 2, label %206
  ]

202:                                              ; preds = %194
  %203 = getelementptr inbounds nuw i8, ptr %176, i64 96
  %204 = load i64, ptr %203, align 8, !tbaa !60
  %205 = tail call i64 @adler32(i64 noundef %204, ptr noundef %187, i32 noundef %188) #10
  store i64 %205, ptr %203, align 8, !tbaa !60
  br label %210

206:                                              ; preds = %194
  %207 = getelementptr inbounds nuw i8, ptr %176, i64 96
  %208 = load i64, ptr %207, align 8, !tbaa !60
  %209 = tail call i64 @crc32(i64 noundef %208, ptr noundef %187, i32 noundef %188) #10
  store i64 %209, ptr %207, align 8, !tbaa !60
  br label %210

210:                                              ; preds = %206, %202, %194
  %211 = load ptr, ptr %176, align 8, !tbaa !83
  %212 = getelementptr inbounds nuw i8, ptr %211, i64 %197
  store ptr %212, ptr %176, align 8, !tbaa !83
  %213 = getelementptr inbounds nuw i8, ptr %176, i64 16
  %214 = load i64, ptr %213, align 8, !tbaa !56
  %215 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %214, i64 %197), !nosanitize !49
  %216 = extractvalue { i64, i1 } %215, 1, !nosanitize !49
  br i1 %216, label %217, label %218, !prof !50, !nosanitize !49

217:                                              ; preds = %210
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

218:                                              ; preds = %210
  %219 = extractvalue { i64, i1 } %215, 0, !nosanitize !49
  store i64 %219, ptr %213, align 8, !tbaa !56
  br label %220

220:                                              ; preds = %218, %180
  %221 = phi i32 [ %188, %218 ], [ 0, %180 ]
  %222 = load i32, ptr %3, align 4, !tbaa !76
  %223 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %222, i32 %221), !nosanitize !49
  %224 = extractvalue { i32, i1 } %223, 1, !nosanitize !49
  br i1 %224, label %225, label %226, !prof !50, !nosanitize !49

225:                                              ; preds = %220
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

226:                                              ; preds = %220
  %227 = extractvalue { i32, i1 } %223, 0, !nosanitize !49
  store i32 %227, ptr %3, align 4, !tbaa !76
  %228 = load i32, ptr %10, align 4, !tbaa !77
  %229 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %228), !nosanitize !49
  %230 = extractvalue { i32, i1 } %229, 1, !nosanitize !49
  br i1 %230, label %231, label %232, !prof !50, !nosanitize !49

231:                                              ; preds = %226
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

232:                                              ; preds = %226
  %233 = extractvalue { i32, i1 } %229, 0, !nosanitize !49
  %234 = icmp ugt i32 %233, 2
  br i1 %234, label %235, label %306

235:                                              ; preds = %232
  %236 = load i32, ptr %6, align 4, !tbaa !74
  %237 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %236, i32 %228), !nosanitize !49
  %238 = extractvalue { i32, i1 } %237, 0, !nosanitize !49
  %239 = extractvalue { i32, i1 } %237, 1, !nosanitize !49
  br i1 %239, label %240, label %241, !prof !50, !nosanitize !49

240:                                              ; preds = %235
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

241:                                              ; preds = %235
  %242 = load ptr, ptr %7, align 8, !tbaa !39
  %243 = zext i32 %238 to i64
  %244 = getelementptr inbounds nuw i8, ptr %242, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !8
  %246 = zext i8 %245 to i32
  store i32 %246, ptr %15, align 8, !tbaa !81
  %247 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %238, i32 1), !nosanitize !49
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !49
  br i1 %248, label %249, label %250, !prof !50, !nosanitize !49

249:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

250:                                              ; preds = %241
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !49
  %252 = load i32, ptr %16, align 8, !tbaa !38
  %253 = shl i32 %246, %252
  %254 = zext i32 %251 to i64
  %255 = getelementptr inbounds nuw i8, ptr %242, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !8
  %257 = zext i8 %256 to i32
  %258 = xor i32 %253, %257
  %259 = load i32, ptr %17, align 4, !tbaa !37
  %260 = and i32 %258, %259
  store i32 %260, ptr %15, align 8, !tbaa !81
  br label %261

261:                                              ; preds = %303, %250
  %262 = phi i32 [ %228, %250 ], [ %299, %303 ]
  %263 = phi i32 [ %238, %250 ], [ %295, %303 ]
  %264 = icmp eq i32 %262, 0
  br i1 %264, label %306, label %265

265:                                              ; preds = %261
  %266 = load i32, ptr %15, align 8, !tbaa !81
  %267 = shl i32 %266, %252
  %268 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %263, i32 3), !nosanitize !49
  %269 = extractvalue { i32, i1 } %268, 1, !nosanitize !49
  br i1 %269, label %270, label %271, !prof !50, !nosanitize !49

270:                                              ; preds = %265
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

271:                                              ; preds = %265
  %272 = extractvalue { i32, i1 } %268, 0, !nosanitize !49
  %273 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %272, i32 1), !nosanitize !49
  %274 = extractvalue { i32, i1 } %273, 1, !nosanitize !49
  br i1 %274, label %275, label %276, !prof !50, !nosanitize !49

275:                                              ; preds = %271
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

276:                                              ; preds = %271
  %277 = extractvalue { i32, i1 } %273, 0, !nosanitize !49
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds nuw i8, ptr %242, i64 %278
  %280 = load i8, ptr %279, align 1, !tbaa !8
  %281 = zext i8 %280 to i32
  %282 = xor i32 %267, %281
  %283 = and i32 %282, %259
  store i32 %283, ptr %15, align 8, !tbaa !81
  %284 = load ptr, ptr %12, align 8, !tbaa !41
  %285 = zext i32 %283 to i64
  %286 = getelementptr inbounds nuw [2 x i8], ptr %284, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !63
  %288 = load ptr, ptr %13, align 8, !tbaa !40
  %289 = load i32, ptr %18, align 8, !tbaa !34
  %290 = and i32 %289, %263
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds nuw [2 x i8], ptr %288, i64 %291
  store i16 %287, ptr %292, align 2, !tbaa !63
  %293 = trunc i32 %263 to i16
  store i16 %293, ptr %286, align 2, !tbaa !63
  %294 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %263, i32 1), !nosanitize !49
  %295 = extractvalue { i32, i1 } %294, 0, !nosanitize !49
  %296 = extractvalue { i32, i1 } %294, 1, !nosanitize !49
  br i1 %296, label %297, label %298, !prof !50, !nosanitize !49

297:                                              ; preds = %276
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

298:                                              ; preds = %276
  %299 = add i32 %262, -1
  store i32 %299, ptr %10, align 4, !tbaa !77
  %300 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %227, i32 %299), !nosanitize !49
  %301 = extractvalue { i32, i1 } %300, 1, !nosanitize !49
  br i1 %301, label %302, label %303, !prof !50, !nosanitize !49

302:                                              ; preds = %298
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

303:                                              ; preds = %298
  %304 = extractvalue { i32, i1 } %300, 0, !nosanitize !49
  %305 = icmp ult i32 %304, 3
  br i1 %305, label %306, label %261, !llvm.loop !89

306:                                              ; preds = %303, %261, %232
  %307 = icmp ult i32 %227, 262
  br i1 %307, label %308, label %313

308:                                              ; preds = %306
  %309 = load ptr, ptr %0, align 8, !tbaa !20
  %310 = getelementptr inbounds nuw i8, ptr %309, i64 8
  %311 = load i32, ptr %310, align 8, !tbaa !82
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %74, !llvm.loop !90

313:                                              ; preds = %308, %306, %174
  %314 = load i64, ptr %19, align 8, !tbaa !42
  %315 = load i64, ptr %5, align 8, !tbaa !62
  %316 = icmp ult i64 %314, %315
  br i1 %316, label %317, label %356

317:                                              ; preds = %313
  %318 = load i32, ptr %6, align 4, !tbaa !74
  %319 = zext i32 %318 to i64
  %320 = load i32, ptr %3, align 4, !tbaa !76
  %321 = zext i32 %320 to i64
  %322 = add nuw nsw i64 %321, %319
  %323 = icmp ult i64 %314, %322
  br i1 %323, label %324, label %334

324:                                              ; preds = %317
  %325 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %315, i64 %322), !nosanitize !49
  %326 = extractvalue { i64, i1 } %325, 1, !nosanitize !49
  br i1 %326, label %327, label %328, !prof !50, !nosanitize !49

327:                                              ; preds = %324
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

328:                                              ; preds = %324
  %329 = extractvalue { i64, i1 } %325, 0, !nosanitize !49
  %330 = tail call i64 @llvm.umin.i64(i64 %329, i64 258)
  %331 = load ptr, ptr %7, align 8, !tbaa !39
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 %322
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %332, i8 0, i64 %330, i1 false)
  %333 = add nuw nsw i64 %330, %322
  br label %354

334:                                              ; preds = %317
  %335 = add nuw nsw i64 %322, 258
  %336 = icmp ult i64 %314, %335
  br i1 %336, label %337, label %356

337:                                              ; preds = %334
  %338 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %315, i64 %314), !nosanitize !49
  %339 = extractvalue { i64, i1 } %338, 1, !nosanitize !49
  br i1 %339, label %340, label %341, !prof !50, !nosanitize !49

340:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

341:                                              ; preds = %337
  %342 = sub nuw nsw i64 %335, %314
  %343 = extractvalue { i64, i1 } %338, 0, !nosanitize !49
  %344 = tail call i64 @llvm.umin.i64(i64 %342, i64 %343)
  %345 = load ptr, ptr %7, align 8, !tbaa !39
  %346 = getelementptr inbounds nuw i8, ptr %345, i64 %314
  %347 = and i64 %344, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %346, i8 0, i64 %347, i1 false)
  %348 = load i64, ptr %19, align 8, !tbaa !42
  %349 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %348, i64 %344), !nosanitize !49
  %350 = extractvalue { i64, i1 } %349, 1, !nosanitize !49
  br i1 %350, label %351, label %352, !prof !50, !nosanitize !49

351:                                              ; preds = %341
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

352:                                              ; preds = %341
  %353 = extractvalue { i64, i1 } %349, 0, !nosanitize !49
  br label %354

354:                                              ; preds = %352, %328
  %355 = phi i64 [ %333, %328 ], [ %353, %352 ]
  store i64 %355, ptr %19, align 8, !tbaa !42
  br label %356

356:                                              ; preds = %354, %334, %313
  %357 = load i32, ptr %3, align 4, !tbaa !76
  %358 = icmp ult i32 %357, 262
  %359 = and i1 %20, %358
  br i1 %359, label %1149, label %360

360:                                              ; preds = %356
  %361 = icmp eq i32 %357, 0
  br i1 %361, label %962, label %362

362:                                              ; preds = %360, %68
  %363 = load i32, ptr %3, align 4, !tbaa !76
  %364 = icmp ugt i32 %363, 2
  br i1 %364, label %365, label %394

365:                                              ; preds = %362
  %366 = load i32, ptr %21, align 4, !tbaa !74
  %367 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %366, i32 2), !nosanitize !49
  %368 = extractvalue { i32, i1 } %367, 1, !nosanitize !49
  br i1 %368, label %369, label %370, !prof !50, !nosanitize !49

369:                                              ; preds = %365
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

370:                                              ; preds = %365
  %371 = extractvalue { i32, i1 } %367, 0, !nosanitize !49
  %372 = load ptr, ptr %22, align 8, !tbaa !39
  %373 = load i32, ptr %23, align 8, !tbaa !81
  %374 = load i32, ptr %24, align 8, !tbaa !38
  %375 = shl i32 %373, %374
  %376 = zext i32 %371 to i64
  %377 = getelementptr inbounds nuw i8, ptr %372, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !8
  %379 = zext i8 %378 to i32
  %380 = xor i32 %375, %379
  %381 = load i32, ptr %25, align 4, !tbaa !37
  %382 = and i32 %380, %381
  store i32 %382, ptr %23, align 8, !tbaa !81
  %383 = load ptr, ptr %26, align 8, !tbaa !41
  %384 = zext i32 %382 to i64
  %385 = getelementptr inbounds nuw [2 x i8], ptr %383, i64 %384
  %386 = load i16, ptr %385, align 2, !tbaa !63
  %387 = load ptr, ptr %27, align 8, !tbaa !40
  %388 = load i32, ptr %28, align 8, !tbaa !34
  %389 = and i32 %388, %366
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds nuw [2 x i8], ptr %387, i64 %390
  store i16 %386, ptr %391, align 2, !tbaa !63
  %392 = zext i16 %386 to i32
  %393 = trunc i32 %366 to i16
  store i16 %393, ptr %385, align 2, !tbaa !63
  br label %394

394:                                              ; preds = %370, %362
  %395 = phi i32 [ %392, %370 ], [ 0, %362 ]
  %396 = load i32, ptr %29, align 8, !tbaa !79
  store i32 %396, ptr %30, align 8, !tbaa !78
  %397 = load i32, ptr %31, align 8, !tbaa !84
  store i32 %397, ptr %32, align 4, !tbaa !133
  store i32 2, ptr %29, align 8, !tbaa !79
  %398 = icmp eq i32 %395, 0
  br i1 %398, label %604, label %399

399:                                              ; preds = %394
  %400 = load i32, ptr %33, align 8, !tbaa !67
  %401 = icmp ult i32 %396, %400
  br i1 %401, label %402, label %604

402:                                              ; preds = %399
  %403 = load i32, ptr %34, align 4, !tbaa !74
  %404 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %403, i32 %395), !nosanitize !49
  %405 = extractvalue { i32, i1 } %404, 0, !nosanitize !49
  %406 = extractvalue { i32, i1 } %404, 1, !nosanitize !49
  br i1 %406, label %407, label %408, !prof !50, !nosanitize !49

407:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

408:                                              ; preds = %402
  %409 = load i32, ptr %35, align 8, !tbaa !33
  %410 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %409, i32 262), !nosanitize !49
  %411 = extractvalue { i32, i1 } %410, 1, !nosanitize !49
  br i1 %411, label %412, label %413, !prof !50, !nosanitize !49

412:                                              ; preds = %408
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

413:                                              ; preds = %408
  %414 = extractvalue { i32, i1 } %410, 0, !nosanitize !49
  %415 = icmp ugt i32 %405, %414
  br i1 %415, label %604, label %416

416:                                              ; preds = %413
  %417 = load ptr, ptr %36, align 8, !tbaa !39
  %418 = zext i32 %403 to i64
  %419 = getelementptr inbounds nuw i8, ptr %417, i64 %418
  %420 = tail call i32 @llvm.usub.sat.i32(i32 %403, i32 %414)
  %421 = load ptr, ptr %37, align 8, !tbaa !40
  %422 = load i32, ptr %38, align 8, !tbaa !34
  %423 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %396, i32 -1)
  %424 = extractvalue { i32, i1 } %423, 1, !nosanitize !49
  br i1 %424, label %425, label %426, !prof !50, !nosanitize !49

425:                                              ; preds = %558, %546, %456, %416
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

426:                                              ; preds = %416
  %427 = load i32, ptr %39, align 8, !tbaa !71
  %428 = load i32, ptr %40, align 4, !tbaa !73
  %429 = getelementptr inbounds nuw i8, ptr %419, i64 258
  %430 = extractvalue { i32, i1 } %423, 0, !nosanitize !49
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, ptr %419, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !8
  %434 = sext i32 %396 to i64
  %435 = getelementptr inbounds i8, ptr %419, i64 %434
  %436 = load i8, ptr %435, align 1, !tbaa !8
  %437 = load i32, ptr %41, align 4, !tbaa !69
  %438 = icmp ult i32 %396, %437
  %439 = lshr i32 %428, 2
  %440 = select i1 %438, i32 %428, i32 %439
  %441 = tail call i32 @llvm.umin.i32(i32 %427, i32 %363)
  %442 = getelementptr inbounds nuw i8, ptr %419, i64 1
  %443 = ptrtoint ptr %429 to i64
  br label %444

444:                                              ; preds = %583, %426
  %445 = phi i32 [ %396, %426 ], [ %570, %583 ]
  %446 = phi i32 [ %440, %426 ], [ %584, %583 ]
  %447 = phi i32 [ %395, %426 ], [ %577, %583 ]
  %448 = phi i8 [ %433, %426 ], [ %571, %583 ]
  %449 = phi i8 [ %436, %426 ], [ %572, %583 ]
  %450 = zext nneg i32 %447 to i64
  %451 = getelementptr inbounds nuw i8, ptr %417, i64 %450
  %452 = sext i32 %445 to i64
  %453 = getelementptr inbounds i8, ptr %451, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !8
  %455 = icmp eq i8 %454, %449
  br i1 %455, label %456, label %569

456:                                              ; preds = %444
  %457 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %445, i32 -1)
  %458 = extractvalue { i32, i1 } %457, 1, !nosanitize !49
  br i1 %458, label %425, label %459, !prof !50, !nosanitize !49

459:                                              ; preds = %456
  %460 = extractvalue { i32, i1 } %457, 0, !nosanitize !49
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8, ptr %451, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !8
  %464 = icmp eq i8 %463, %448
  br i1 %464, label %465, label %569

465:                                              ; preds = %459
  %466 = load i8, ptr %451, align 1, !tbaa !8
  %467 = load i8, ptr %419, align 1, !tbaa !8
  %468 = icmp eq i8 %466, %467
  br i1 %468, label %469, label %569

469:                                              ; preds = %465
  %470 = getelementptr inbounds nuw i8, ptr %451, i64 1
  %471 = load i8, ptr %470, align 1, !tbaa !8
  %472 = load i8, ptr %442, align 1, !tbaa !8
  %473 = icmp eq i8 %471, %472
  br i1 %473, label %474, label %569

474:                                              ; preds = %469
  %475 = getelementptr inbounds nuw i8, ptr %451, i64 2
  br label %476

476:                                              ; preds = %521, %474
  %477 = phi ptr [ %475, %474 ], [ %525, %521 ]
  %478 = phi i64 [ 2, %474 ], [ %522, %521 ]
  %479 = getelementptr inbounds nuw i8, ptr %419, i64 %478
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 1
  %481 = load i8, ptr %480, align 1, !tbaa !8
  %482 = getelementptr inbounds nuw i8, ptr %477, i64 1
  %483 = load i8, ptr %482, align 1, !tbaa !8
  %484 = icmp eq i8 %481, %483
  br i1 %484, label %485, label %530

485:                                              ; preds = %476
  %486 = getelementptr inbounds nuw i8, ptr %479, i64 2
  %487 = load i8, ptr %486, align 1, !tbaa !8
  %488 = getelementptr inbounds nuw i8, ptr %477, i64 2
  %489 = load i8, ptr %488, align 1, !tbaa !8
  %490 = icmp eq i8 %487, %489
  br i1 %490, label %491, label %532

491:                                              ; preds = %485
  %492 = getelementptr inbounds nuw i8, ptr %479, i64 3
  %493 = load i8, ptr %492, align 1, !tbaa !8
  %494 = getelementptr inbounds nuw i8, ptr %477, i64 3
  %495 = load i8, ptr %494, align 1, !tbaa !8
  %496 = icmp eq i8 %493, %495
  br i1 %496, label %497, label %534

497:                                              ; preds = %491
  %498 = getelementptr inbounds nuw i8, ptr %479, i64 4
  %499 = load i8, ptr %498, align 1, !tbaa !8
  %500 = getelementptr inbounds nuw i8, ptr %477, i64 4
  %501 = load i8, ptr %500, align 1, !tbaa !8
  %502 = icmp eq i8 %499, %501
  br i1 %502, label %503, label %536

503:                                              ; preds = %497
  %504 = getelementptr inbounds nuw i8, ptr %479, i64 5
  %505 = load i8, ptr %504, align 1, !tbaa !8
  %506 = getelementptr inbounds nuw i8, ptr %477, i64 5
  %507 = load i8, ptr %506, align 1, !tbaa !8
  %508 = icmp eq i8 %505, %507
  br i1 %508, label %509, label %538

509:                                              ; preds = %503
  %510 = getelementptr inbounds nuw i8, ptr %479, i64 6
  %511 = load i8, ptr %510, align 1, !tbaa !8
  %512 = getelementptr inbounds nuw i8, ptr %477, i64 6
  %513 = load i8, ptr %512, align 1, !tbaa !8
  %514 = icmp eq i8 %511, %513
  br i1 %514, label %515, label %540

515:                                              ; preds = %509
  %516 = getelementptr inbounds nuw i8, ptr %479, i64 7
  %517 = load i8, ptr %516, align 1, !tbaa !8
  %518 = getelementptr inbounds nuw i8, ptr %477, i64 7
  %519 = load i8, ptr %518, align 1, !tbaa !8
  %520 = icmp eq i8 %517, %519
  br i1 %520, label %521, label %542

521:                                              ; preds = %515
  %522 = add nuw nsw i64 %478, 8
  %523 = getelementptr inbounds nuw i8, ptr %419, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !8
  %525 = getelementptr inbounds nuw i8, ptr %477, i64 8
  %526 = load i8, ptr %525, align 1, !tbaa !8
  %527 = icmp eq i8 %524, %526
  %528 = icmp samesign ult i64 %478, 250
  %529 = select i1 %527, i1 %528, i1 false
  br i1 %529, label %476, label %544, !llvm.loop !129

530:                                              ; preds = %476
  %531 = getelementptr inbounds nuw i8, ptr %479, i64 1
  br label %546

532:                                              ; preds = %485
  %533 = getelementptr inbounds nuw i8, ptr %479, i64 2
  br label %546

534:                                              ; preds = %491
  %535 = getelementptr inbounds nuw i8, ptr %479, i64 3
  br label %546

536:                                              ; preds = %497
  %537 = getelementptr inbounds nuw i8, ptr %479, i64 4
  br label %546

538:                                              ; preds = %503
  %539 = getelementptr inbounds nuw i8, ptr %479, i64 5
  br label %546

540:                                              ; preds = %509
  %541 = getelementptr inbounds nuw i8, ptr %479, i64 6
  br label %546

542:                                              ; preds = %515
  %543 = getelementptr inbounds nuw i8, ptr %479, i64 7
  br label %546

544:                                              ; preds = %521
  %545 = getelementptr inbounds nuw i8, ptr %419, i64 %522
  br label %546

546:                                              ; preds = %544, %542, %540, %538, %536, %534, %532, %530
  %547 = phi ptr [ %533, %532 ], [ %535, %534 ], [ %531, %530 ], [ %543, %542 ], [ %541, %540 ], [ %539, %538 ], [ %537, %536 ], [ %545, %544 ]
  %548 = ptrtoint ptr %547 to i64
  %549 = sub i64 %443, %548
  %550 = trunc i64 %549 to i32
  %551 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %550), !nosanitize !49
  %552 = extractvalue { i32, i1 } %551, 0, !nosanitize !49
  %553 = extractvalue { i32, i1 } %551, 1, !nosanitize !49
  br i1 %553, label %425, label %554, !prof !50, !nosanitize !49

554:                                              ; preds = %546
  %555 = icmp sgt i32 %552, %445
  br i1 %555, label %556, label %569

556:                                              ; preds = %554
  store i32 %447, ptr %31, align 8, !tbaa !84
  %557 = icmp slt i32 %552, %441
  br i1 %557, label %558, label %586

558:                                              ; preds = %556
  %559 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %552, i32 -1)
  %560 = extractvalue { i32, i1 } %559, 1, !nosanitize !49
  br i1 %560, label %425, label %561, !prof !50, !nosanitize !49

561:                                              ; preds = %558
  %562 = extractvalue { i32, i1 } %559, 0, !nosanitize !49
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8, ptr %419, i64 %563
  %565 = load i8, ptr %564, align 1, !tbaa !8
  %566 = sext i32 %552 to i64
  %567 = getelementptr inbounds i8, ptr %419, i64 %566
  %568 = load i8, ptr %567, align 1, !tbaa !8
  br label %569

569:                                              ; preds = %561, %554, %469, %465, %459, %444
  %570 = phi i32 [ %445, %444 ], [ %445, %459 ], [ %445, %465 ], [ %445, %469 ], [ %552, %561 ], [ %445, %554 ]
  %571 = phi i8 [ %448, %444 ], [ %448, %459 ], [ %448, %465 ], [ %448, %469 ], [ %565, %561 ], [ %448, %554 ]
  %572 = phi i8 [ %449, %444 ], [ %449, %459 ], [ %449, %465 ], [ %449, %469 ], [ %568, %561 ], [ %449, %554 ]
  %573 = and i32 %447, %422
  %574 = zext nneg i32 %573 to i64
  %575 = getelementptr inbounds nuw [2 x i8], ptr %421, i64 %574
  %576 = load i16, ptr %575, align 2, !tbaa !63
  %577 = zext i16 %576 to i32
  %578 = icmp ult i32 %420, %577
  br i1 %578, label %579, label %586

579:                                              ; preds = %569
  %580 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %446, i32 1), !nosanitize !49
  %581 = extractvalue { i32, i1 } %580, 1, !nosanitize !49
  br i1 %581, label %582, label %583, !prof !50, !nosanitize !49

582:                                              ; preds = %579
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

583:                                              ; preds = %579
  %584 = extractvalue { i32, i1 } %580, 0, !nosanitize !49
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %444, !llvm.loop !130

586:                                              ; preds = %583, %569, %556
  %587 = phi i32 [ %570, %583 ], [ %570, %569 ], [ %552, %556 ]
  %588 = tail call i32 @llvm.umin.i32(i32 %587, i32 %363)
  store i32 %588, ptr %29, align 8, !tbaa !79
  %589 = icmp ult i32 %588, 6
  br i1 %589, label %590, label %604

590:                                              ; preds = %586
  %591 = load i32, ptr %42, align 8, !tbaa !53
  %592 = icmp eq i32 %591, 1
  br i1 %592, label %603, label %593

593:                                              ; preds = %590
  %594 = icmp eq i32 %588, 3
  br i1 %594, label %595, label %604

595:                                              ; preds = %593
  %596 = load i32, ptr %31, align 8, !tbaa !84
  %597 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %403, i32 %596), !nosanitize !49
  %598 = extractvalue { i32, i1 } %597, 1, !nosanitize !49
  br i1 %598, label %599, label %600, !prof !50, !nosanitize !49

599:                                              ; preds = %595
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

600:                                              ; preds = %595
  %601 = extractvalue { i32, i1 } %597, 0, !nosanitize !49
  %602 = icmp ugt i32 %601, 4096
  br i1 %602, label %603, label %604

603:                                              ; preds = %600, %590
  store i32 2, ptr %29, align 8, !tbaa !79
  br label %604

604:                                              ; preds = %603, %600, %593, %586, %413, %399, %394
  %605 = icmp ugt i32 %396, 2
  br i1 %605, label %606, label %825

606:                                              ; preds = %604
  %607 = load i32, ptr %29, align 8, !tbaa !79
  %608 = icmp ugt i32 %607, %396
  br i1 %608, label %825, label %609

609:                                              ; preds = %606
  %610 = load i32, ptr %43, align 4, !tbaa !74
  %611 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %610, i32 %363), !nosanitize !49
  %612 = extractvalue { i32, i1 } %611, 1, !nosanitize !49
  br i1 %612, label %613, label %614, !prof !50, !nosanitize !49

613:                                              ; preds = %609
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

614:                                              ; preds = %609
  %615 = extractvalue { i32, i1 } %611, 0, !nosanitize !49
  %616 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %615, i32 3), !nosanitize !49
  %617 = extractvalue { i32, i1 } %616, 0, !nosanitize !49
  %618 = extractvalue { i32, i1 } %616, 1, !nosanitize !49
  br i1 %618, label %619, label %620, !prof !50, !nosanitize !49

619:                                              ; preds = %614
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

620:                                              ; preds = %614
  %621 = trunc i32 %396 to i8
  %622 = add i8 %621, -3
  %623 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %610, i32 1), !nosanitize !49
  %624 = extractvalue { i32, i1 } %623, 1, !nosanitize !49
  br i1 %624, label %625, label %626, !prof !50, !nosanitize !49

625:                                              ; preds = %620
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

626:                                              ; preds = %620
  %627 = extractvalue { i32, i1 } %623, 0, !nosanitize !49
  %628 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %627, i32 %397), !nosanitize !49
  %629 = extractvalue { i32, i1 } %628, 1, !nosanitize !49
  br i1 %629, label %630, label %631, !prof !50, !nosanitize !49

630:                                              ; preds = %626
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

631:                                              ; preds = %626
  %632 = extractvalue { i32, i1 } %628, 0, !nosanitize !49
  %633 = trunc i32 %632 to i16
  %634 = load i32, ptr %45, align 4, !tbaa !122
  %635 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %634, i32 1), !nosanitize !49
  %636 = extractvalue { i32, i1 } %635, 1, !nosanitize !49
  br i1 %636, label %637, label %638, !prof !50, !nosanitize !49

637:                                              ; preds = %631
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

638:                                              ; preds = %631
  %639 = extractvalue { i32, i1 } %635, 0, !nosanitize !49
  %640 = load ptr, ptr %44, align 8, !tbaa !48
  %641 = trunc i32 %632 to i8
  store i32 %639, ptr %45, align 4, !tbaa !122
  %642 = zext i32 %634 to i64
  %643 = getelementptr inbounds nuw i8, ptr %640, i64 %642
  store i8 %641, ptr %643, align 1, !tbaa !8
  %644 = load i32, ptr %45, align 4, !tbaa !122
  %645 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %644, i32 1), !nosanitize !49
  %646 = extractvalue { i32, i1 } %645, 1, !nosanitize !49
  br i1 %646, label %647, label %648, !prof !50, !nosanitize !49

647:                                              ; preds = %638
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

648:                                              ; preds = %638
  %649 = extractvalue { i32, i1 } %645, 0, !nosanitize !49
  %650 = load ptr, ptr %44, align 8, !tbaa !48
  %651 = lshr i32 %632, 8
  %652 = trunc i32 %651 to i8
  store i32 %649, ptr %45, align 4, !tbaa !122
  %653 = zext i32 %644 to i64
  %654 = getelementptr inbounds nuw i8, ptr %650, i64 %653
  store i8 %652, ptr %654, align 1, !tbaa !8
  %655 = load i32, ptr %45, align 4, !tbaa !122
  %656 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %655, i32 1), !nosanitize !49
  %657 = extractvalue { i32, i1 } %656, 1, !nosanitize !49
  br i1 %657, label %658, label %659, !prof !50, !nosanitize !49

658:                                              ; preds = %648
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

659:                                              ; preds = %648
  %660 = extractvalue { i32, i1 } %656, 0, !nosanitize !49
  %661 = load ptr, ptr %44, align 8, !tbaa !48
  store i32 %660, ptr %45, align 4, !tbaa !122
  %662 = zext i32 %655 to i64
  %663 = getelementptr inbounds nuw i8, ptr %661, i64 %662
  store i8 %622, ptr %663, align 1, !tbaa !8
  %664 = add i16 %633, -1
  %665 = zext i8 %622 to i64
  %666 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %665
  %667 = load i8, ptr %666, align 1, !tbaa !8
  %668 = zext i8 %667 to i64
  %669 = getelementptr [4 x i8], ptr %46, i64 %668
  %670 = load i16, ptr %669, align 4, !tbaa !8
  %671 = add i16 %670, 1
  store i16 %671, ptr %669, align 4, !tbaa !8
  %672 = icmp ult i16 %664, 256
  br i1 %672, label %673, label %676

673:                                              ; preds = %659
  %674 = zext nneg i16 %664 to i64
  %675 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %674
  br label %681

676:                                              ; preds = %659
  %677 = lshr i16 %664, 7
  %678 = zext nneg i16 %677 to i64
  %679 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %678
  %680 = getelementptr inbounds nuw i8, ptr %679, i64 256
  br label %681

681:                                              ; preds = %676, %673
  %682 = phi ptr [ %675, %673 ], [ %680, %676 ]
  %683 = load i8, ptr %682, align 1, !tbaa !8
  %684 = zext i8 %683 to i64
  %685 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %684
  %686 = load i16, ptr %685, align 4, !tbaa !8
  %687 = add i16 %686, 1
  store i16 %687, ptr %685, align 4, !tbaa !8
  %688 = load i32, ptr %45, align 4, !tbaa !122
  %689 = load i32, ptr %48, align 8, !tbaa !51
  %690 = icmp eq i32 %688, %689
  %691 = load i32, ptr %30, align 8, !tbaa !78
  %692 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %691, i32 1), !nosanitize !49
  %693 = extractvalue { i32, i1 } %692, 1, !nosanitize !49
  br i1 %693, label %694, label %695, !prof !50, !nosanitize !49

694:                                              ; preds = %681
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

695:                                              ; preds = %681
  %696 = extractvalue { i32, i1 } %692, 0, !nosanitize !49
  %697 = load i32, ptr %3, align 4, !tbaa !76
  %698 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %697, i32 %696), !nosanitize !49
  %699 = extractvalue { i32, i1 } %698, 1, !nosanitize !49
  br i1 %699, label %700, label %701, !prof !50, !nosanitize !49

700:                                              ; preds = %695
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

701:                                              ; preds = %695
  %702 = extractvalue { i32, i1 } %698, 0, !nosanitize !49
  store i32 %702, ptr %3, align 4, !tbaa !76
  %703 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %691, i32 2), !nosanitize !49
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !49
  br i1 %704, label %705, label %706, !prof !50, !nosanitize !49

705:                                              ; preds = %701
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

706:                                              ; preds = %701
  %707 = extractvalue { i32, i1 } %703, 0, !nosanitize !49
  store i32 %707, ptr %30, align 8, !tbaa !78
  %708 = load i32, ptr %43, align 4, !tbaa !74
  %709 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %708, i32 1), !nosanitize !49
  %710 = extractvalue { i32, i1 } %709, 1, !nosanitize !49
  br i1 %710, label %714, label %715, !prof !117, !nosanitize !49

711:                                              ; preds = %751
  %712 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %717, i32 1), !nosanitize !49
  %713 = extractvalue { i32, i1 } %712, 1, !nosanitize !49
  br i1 %713, label %714, label %715, !prof !118, !llvm.loop !134, !nosanitize !49

714:                                              ; preds = %711, %706
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

715:                                              ; preds = %711, %706
  %716 = phi { i32, i1 } [ %712, %711 ], [ %709, %706 ]
  %717 = extractvalue { i32, i1 } %716, 0
  store i32 %717, ptr %43, align 4, !tbaa !74
  %718 = icmp ugt i32 %717, %617
  br i1 %718, label %746, label %719

719:                                              ; preds = %715
  %720 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %717, i32 2), !nosanitize !49
  %721 = extractvalue { i32, i1 } %720, 1, !nosanitize !49
  br i1 %721, label %722, label %723, !prof !50, !nosanitize !49

722:                                              ; preds = %719
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

723:                                              ; preds = %719
  %724 = extractvalue { i32, i1 } %720, 0, !nosanitize !49
  %725 = load ptr, ptr %49, align 8, !tbaa !39
  %726 = load i32, ptr %50, align 8, !tbaa !81
  %727 = load i32, ptr %51, align 8, !tbaa !38
  %728 = shl i32 %726, %727
  %729 = zext i32 %724 to i64
  %730 = getelementptr inbounds nuw i8, ptr %725, i64 %729
  %731 = load i8, ptr %730, align 1, !tbaa !8
  %732 = zext i8 %731 to i32
  %733 = xor i32 %728, %732
  %734 = load i32, ptr %52, align 4, !tbaa !37
  %735 = and i32 %733, %734
  store i32 %735, ptr %50, align 8, !tbaa !81
  %736 = load ptr, ptr %53, align 8, !tbaa !41
  %737 = zext i32 %735 to i64
  %738 = getelementptr inbounds nuw [2 x i8], ptr %736, i64 %737
  %739 = load i16, ptr %738, align 2, !tbaa !63
  %740 = load ptr, ptr %54, align 8, !tbaa !40
  %741 = load i32, ptr %55, align 8, !tbaa !34
  %742 = and i32 %741, %717
  %743 = zext i32 %742 to i64
  %744 = getelementptr inbounds nuw [2 x i8], ptr %740, i64 %743
  store i16 %739, ptr %744, align 2, !tbaa !63
  %745 = trunc i32 %717 to i16
  store i16 %745, ptr %738, align 2, !tbaa !63
  br label %746

746:                                              ; preds = %723, %715
  %747 = load i32, ptr %30, align 8, !tbaa !78
  %748 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %747, i32 1), !nosanitize !49
  %749 = extractvalue { i32, i1 } %748, 1, !nosanitize !49
  br i1 %749, label %750, label %751, !prof !50, !nosanitize !49

750:                                              ; preds = %768, %746
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

751:                                              ; preds = %746
  %752 = extractvalue { i32, i1 } %748, 0, !nosanitize !49
  store i32 %752, ptr %30, align 8, !tbaa !78
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %711, !llvm.loop !134

754:                                              ; preds = %751
  store i32 0, ptr %56, align 8, !tbaa !80
  store i32 2, ptr %29, align 8, !tbaa !79
  %755 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %717, i32 1), !nosanitize !49
  %756 = extractvalue { i32, i1 } %755, 1, !nosanitize !49
  br i1 %756, label %757, label %758, !prof !50, !nosanitize !49

757:                                              ; preds = %754
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

758:                                              ; preds = %754
  %759 = extractvalue { i32, i1 } %755, 0, !nosanitize !49
  store i32 %759, ptr %43, align 4, !tbaa !74
  br i1 %690, label %761, label %760

760:                                              ; preds = %960, %944, %820, %758
  br label %68, !llvm.loop !135

761:                                              ; preds = %758
  %762 = load i64, ptr %57, align 8, !tbaa !75
  %763 = icmp sgt i64 %762, -1
  br i1 %763, label %764, label %768

764:                                              ; preds = %761
  %765 = load ptr, ptr %58, align 8, !tbaa !39
  %766 = and i64 %762, 4294967295
  %767 = getelementptr inbounds nuw i8, ptr %765, i64 %766
  br label %768

768:                                              ; preds = %764, %761
  %769 = phi ptr [ %767, %764 ], [ null, %761 ]
  %770 = zext i32 %759 to i64
  %771 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %770, i64 %762), !nosanitize !49
  %772 = extractvalue { i64, i1 } %771, 1, !nosanitize !49
  br i1 %772, label %750, label %773, !prof !50, !nosanitize !49

773:                                              ; preds = %768
  %774 = extractvalue { i64, i1 } %771, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %769, i64 noundef %774, i32 noundef 0) #10
  %775 = load i32, ptr %43, align 4, !tbaa !74
  %776 = zext i32 %775 to i64
  store i64 %776, ptr %57, align 8, !tbaa !75
  %777 = load ptr, ptr %0, align 8, !tbaa !20
  %778 = getelementptr inbounds nuw i8, ptr %777, i64 56
  %779 = load ptr, ptr %778, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %779) #10
  %780 = getelementptr inbounds nuw i8, ptr %779, i64 40
  %781 = load i64, ptr %780, align 8, !tbaa !58
  %782 = getelementptr inbounds nuw i8, ptr %777, i64 32
  %783 = load i32, ptr %782, align 8, !tbaa !100
  %784 = zext i32 %783 to i64
  %785 = tail call i64 @llvm.umin.i64(i64 %781, i64 %784)
  %786 = trunc nuw i64 %785 to i32
  %787 = icmp eq i64 %785, 0
  br i1 %787, label %820, label %788

788:                                              ; preds = %773
  %789 = getelementptr inbounds nuw i8, ptr %777, i64 24
  %790 = load ptr, ptr %789, align 8, !tbaa !99
  %791 = getelementptr inbounds nuw i8, ptr %779, i64 32
  %792 = load ptr, ptr %791, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %790, ptr align 1 %792, i64 %785, i1 false)
  %793 = load ptr, ptr %789, align 8, !tbaa !99
  %794 = getelementptr inbounds nuw i8, ptr %793, i64 %785
  store ptr %794, ptr %789, align 8, !tbaa !99
  %795 = load ptr, ptr %791, align 8, !tbaa !59
  %796 = getelementptr inbounds nuw i8, ptr %795, i64 %785
  store ptr %796, ptr %791, align 8, !tbaa !59
  %797 = getelementptr inbounds nuw i8, ptr %777, i64 40
  %798 = load i64, ptr %797, align 8, !tbaa !101
  %799 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %798, i64 %785), !nosanitize !49
  %800 = extractvalue { i64, i1 } %799, 1, !nosanitize !49
  br i1 %800, label %801, label %802, !prof !50, !nosanitize !49

801:                                              ; preds = %788
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

802:                                              ; preds = %788
  %803 = extractvalue { i64, i1 } %799, 0, !nosanitize !49
  store i64 %803, ptr %797, align 8, !tbaa !101
  %804 = load i32, ptr %782, align 8, !tbaa !100
  %805 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %804, i32 %786), !nosanitize !49
  %806 = extractvalue { i32, i1 } %805, 1, !nosanitize !49
  br i1 %806, label %807, label %808, !prof !50, !nosanitize !49

807:                                              ; preds = %802
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

808:                                              ; preds = %802
  %809 = extractvalue { i32, i1 } %805, 0, !nosanitize !49
  store i32 %809, ptr %782, align 8, !tbaa !100
  %810 = load i64, ptr %780, align 8, !tbaa !58
  %811 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %810, i64 %785), !nosanitize !49
  %812 = extractvalue { i64, i1 } %811, 1, !nosanitize !49
  br i1 %812, label %813, label %814, !prof !50, !nosanitize !49

813:                                              ; preds = %808
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

814:                                              ; preds = %808
  %815 = extractvalue { i64, i1 } %811, 0, !nosanitize !49
  store i64 %815, ptr %780, align 8, !tbaa !58
  %816 = icmp eq i64 %815, 0
  br i1 %816, label %817, label %820

817:                                              ; preds = %814
  %818 = getelementptr inbounds nuw i8, ptr %779, i64 16
  %819 = load ptr, ptr %818, align 8, !tbaa !44
  store ptr %819, ptr %791, align 8, !tbaa !59
  br label %820

820:                                              ; preds = %817, %814, %773
  %821 = load ptr, ptr %0, align 8, !tbaa !20
  %822 = getelementptr inbounds nuw i8, ptr %821, i64 32
  %823 = load i32, ptr %822, align 8, !tbaa !100
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %1149, label %760

825:                                              ; preds = %606, %604
  %826 = load i32, ptr %59, align 8, !tbaa !80
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %950, label %828

828:                                              ; preds = %825
  %829 = load i32, ptr %61, align 4, !tbaa !74
  %830 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %829, i32 1), !nosanitize !49
  %831 = extractvalue { i32, i1 } %830, 1, !nosanitize !49
  br i1 %831, label %832, label %833, !prof !50, !nosanitize !49

832:                                              ; preds = %880, %828
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

833:                                              ; preds = %828
  %834 = extractvalue { i32, i1 } %830, 0, !nosanitize !49
  %835 = load ptr, ptr %60, align 8, !tbaa !39
  %836 = zext i32 %834 to i64
  %837 = getelementptr inbounds nuw i8, ptr %835, i64 %836
  %838 = load i8, ptr %837, align 1, !tbaa !8
  %839 = load i32, ptr %63, align 4, !tbaa !122
  %840 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %839, i32 1), !nosanitize !49
  %841 = extractvalue { i32, i1 } %840, 1, !nosanitize !49
  br i1 %841, label %842, label %843, !prof !50, !nosanitize !49

842:                                              ; preds = %833
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

843:                                              ; preds = %833
  %844 = extractvalue { i32, i1 } %840, 0, !nosanitize !49
  %845 = load ptr, ptr %62, align 8, !tbaa !48
  store i32 %844, ptr %63, align 4, !tbaa !122
  %846 = zext i32 %839 to i64
  %847 = getelementptr inbounds nuw i8, ptr %845, i64 %846
  store i8 0, ptr %847, align 1, !tbaa !8
  %848 = load i32, ptr %63, align 4, !tbaa !122
  %849 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %848, i32 1), !nosanitize !49
  %850 = extractvalue { i32, i1 } %849, 1, !nosanitize !49
  br i1 %850, label %851, label %852, !prof !50, !nosanitize !49

851:                                              ; preds = %843
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

852:                                              ; preds = %843
  %853 = extractvalue { i32, i1 } %849, 0, !nosanitize !49
  %854 = load ptr, ptr %62, align 8, !tbaa !48
  store i32 %853, ptr %63, align 4, !tbaa !122
  %855 = zext i32 %848 to i64
  %856 = getelementptr inbounds nuw i8, ptr %854, i64 %855
  store i8 0, ptr %856, align 1, !tbaa !8
  %857 = load i32, ptr %63, align 4, !tbaa !122
  %858 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %857, i32 1), !nosanitize !49
  %859 = extractvalue { i32, i1 } %858, 1, !nosanitize !49
  br i1 %859, label %860, label %861, !prof !50, !nosanitize !49

860:                                              ; preds = %852
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

861:                                              ; preds = %852
  %862 = extractvalue { i32, i1 } %858, 0, !nosanitize !49
  %863 = load ptr, ptr %62, align 8, !tbaa !48
  store i32 %862, ptr %63, align 4, !tbaa !122
  %864 = zext i32 %857 to i64
  %865 = getelementptr inbounds nuw i8, ptr %863, i64 %864
  store i8 %838, ptr %865, align 1, !tbaa !8
  %866 = zext i8 %838 to i64
  %867 = getelementptr inbounds nuw [4 x i8], ptr %64, i64 %866
  %868 = load i16, ptr %867, align 4, !tbaa !8
  %869 = add i16 %868, 1
  store i16 %869, ptr %867, align 4, !tbaa !8
  %870 = load i32, ptr %63, align 4, !tbaa !122
  %871 = load i32, ptr %65, align 8, !tbaa !51
  %872 = icmp eq i32 %870, %871
  br i1 %872, label %873, label %933

873:                                              ; preds = %861
  %874 = load i64, ptr %66, align 8, !tbaa !75
  %875 = icmp sgt i64 %874, -1
  br i1 %875, label %876, label %880

876:                                              ; preds = %873
  %877 = load ptr, ptr %60, align 8, !tbaa !39
  %878 = and i64 %874, 4294967295
  %879 = getelementptr inbounds nuw i8, ptr %877, i64 %878
  br label %880

880:                                              ; preds = %876, %873
  %881 = phi ptr [ %879, %876 ], [ null, %873 ]
  %882 = load i32, ptr %61, align 4, !tbaa !74
  %883 = zext i32 %882 to i64
  %884 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %883, i64 %874), !nosanitize !49
  %885 = extractvalue { i64, i1 } %884, 1, !nosanitize !49
  br i1 %885, label %832, label %886, !prof !50, !nosanitize !49

886:                                              ; preds = %880
  %887 = extractvalue { i64, i1 } %884, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %881, i64 noundef %887, i32 noundef 0) #10
  %888 = load i32, ptr %61, align 4, !tbaa !74
  %889 = zext i32 %888 to i64
  store i64 %889, ptr %66, align 8, !tbaa !75
  %890 = load ptr, ptr %0, align 8, !tbaa !20
  %891 = getelementptr inbounds nuw i8, ptr %890, i64 56
  %892 = load ptr, ptr %891, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %892) #10
  %893 = getelementptr inbounds nuw i8, ptr %892, i64 40
  %894 = load i64, ptr %893, align 8, !tbaa !58
  %895 = getelementptr inbounds nuw i8, ptr %890, i64 32
  %896 = load i32, ptr %895, align 8, !tbaa !100
  %897 = zext i32 %896 to i64
  %898 = tail call i64 @llvm.umin.i64(i64 %894, i64 %897)
  %899 = trunc nuw i64 %898 to i32
  %900 = icmp eq i64 %898, 0
  br i1 %900, label %933, label %901

901:                                              ; preds = %886
  %902 = getelementptr inbounds nuw i8, ptr %890, i64 24
  %903 = load ptr, ptr %902, align 8, !tbaa !99
  %904 = getelementptr inbounds nuw i8, ptr %892, i64 32
  %905 = load ptr, ptr %904, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %903, ptr align 1 %905, i64 %898, i1 false)
  %906 = load ptr, ptr %902, align 8, !tbaa !99
  %907 = getelementptr inbounds nuw i8, ptr %906, i64 %898
  store ptr %907, ptr %902, align 8, !tbaa !99
  %908 = load ptr, ptr %904, align 8, !tbaa !59
  %909 = getelementptr inbounds nuw i8, ptr %908, i64 %898
  store ptr %909, ptr %904, align 8, !tbaa !59
  %910 = getelementptr inbounds nuw i8, ptr %890, i64 40
  %911 = load i64, ptr %910, align 8, !tbaa !101
  %912 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %911, i64 %898), !nosanitize !49
  %913 = extractvalue { i64, i1 } %912, 1, !nosanitize !49
  br i1 %913, label %914, label %915, !prof !50, !nosanitize !49

914:                                              ; preds = %901
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

915:                                              ; preds = %901
  %916 = extractvalue { i64, i1 } %912, 0, !nosanitize !49
  store i64 %916, ptr %910, align 8, !tbaa !101
  %917 = load i32, ptr %895, align 8, !tbaa !100
  %918 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %917, i32 %899), !nosanitize !49
  %919 = extractvalue { i32, i1 } %918, 1, !nosanitize !49
  br i1 %919, label %920, label %921, !prof !50, !nosanitize !49

920:                                              ; preds = %915
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

921:                                              ; preds = %915
  %922 = extractvalue { i32, i1 } %918, 0, !nosanitize !49
  store i32 %922, ptr %895, align 8, !tbaa !100
  %923 = load i64, ptr %893, align 8, !tbaa !58
  %924 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %923, i64 %898), !nosanitize !49
  %925 = extractvalue { i64, i1 } %924, 1, !nosanitize !49
  br i1 %925, label %926, label %927, !prof !50, !nosanitize !49

926:                                              ; preds = %921
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

927:                                              ; preds = %921
  %928 = extractvalue { i64, i1 } %924, 0, !nosanitize !49
  store i64 %928, ptr %893, align 8, !tbaa !58
  %929 = icmp eq i64 %928, 0
  br i1 %929, label %930, label %933

930:                                              ; preds = %927
  %931 = getelementptr inbounds nuw i8, ptr %892, i64 16
  %932 = load ptr, ptr %931, align 8, !tbaa !44
  store ptr %932, ptr %904, align 8, !tbaa !59
  br label %933

933:                                              ; preds = %930, %927, %886, %861
  %934 = load i32, ptr %61, align 4, !tbaa !74
  %935 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %934, i32 1), !nosanitize !49
  %936 = extractvalue { i32, i1 } %935, 1, !nosanitize !49
  br i1 %936, label %937, label %938, !prof !50, !nosanitize !49

937:                                              ; preds = %933
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

938:                                              ; preds = %933
  %939 = extractvalue { i32, i1 } %935, 0, !nosanitize !49
  store i32 %939, ptr %61, align 4, !tbaa !74
  %940 = load i32, ptr %3, align 4, !tbaa !76
  %941 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %940, i32 1), !nosanitize !49
  %942 = extractvalue { i32, i1 } %941, 1, !nosanitize !49
  br i1 %942, label %943, label %944, !prof !50, !nosanitize !49

943:                                              ; preds = %938
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

944:                                              ; preds = %938
  %945 = extractvalue { i32, i1 } %941, 0, !nosanitize !49
  store i32 %945, ptr %3, align 4, !tbaa !76
  %946 = load ptr, ptr %0, align 8, !tbaa !20
  %947 = getelementptr inbounds nuw i8, ptr %946, i64 32
  %948 = load i32, ptr %947, align 8, !tbaa !100
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %1149, label %760

950:                                              ; preds = %825
  store i32 1, ptr %59, align 8, !tbaa !80
  %951 = load i32, ptr %67, align 4, !tbaa !74
  %952 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %951, i32 1), !nosanitize !49
  %953 = extractvalue { i32, i1 } %952, 1, !nosanitize !49
  br i1 %953, label %954, label %955, !prof !50, !nosanitize !49

954:                                              ; preds = %950
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

955:                                              ; preds = %950
  %956 = extractvalue { i32, i1 } %952, 0, !nosanitize !49
  store i32 %956, ptr %67, align 4, !tbaa !74
  %957 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %363, i32 1), !nosanitize !49
  %958 = extractvalue { i32, i1 } %957, 1, !nosanitize !49
  br i1 %958, label %959, label %960, !prof !50, !nosanitize !49

959:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

960:                                              ; preds = %955
  %961 = extractvalue { i32, i1 } %957, 0, !nosanitize !49
  store i32 %961, ptr %3, align 4, !tbaa !76
  br label %760

962:                                              ; preds = %360
  %963 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %964 = load i32, ptr %963, align 8, !tbaa !80
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %1011, label %966

966:                                              ; preds = %962
  %967 = load i32, ptr %6, align 4, !tbaa !74
  %968 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %967, i32 1), !nosanitize !49
  %969 = extractvalue { i32, i1 } %968, 1, !nosanitize !49
  br i1 %969, label %970, label %971, !prof !50, !nosanitize !49

970:                                              ; preds = %1091, %1022, %966
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

971:                                              ; preds = %966
  %972 = extractvalue { i32, i1 } %968, 0, !nosanitize !49
  %973 = load ptr, ptr %7, align 8, !tbaa !39
  %974 = zext i32 %972 to i64
  %975 = getelementptr inbounds nuw i8, ptr %973, i64 %974
  %976 = load i8, ptr %975, align 1, !tbaa !8
  %977 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %978 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %979 = load i32, ptr %978, align 4, !tbaa !122
  %980 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %979, i32 1), !nosanitize !49
  %981 = extractvalue { i32, i1 } %980, 1, !nosanitize !49
  br i1 %981, label %982, label %983, !prof !50, !nosanitize !49

982:                                              ; preds = %971
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

983:                                              ; preds = %971
  %984 = extractvalue { i32, i1 } %980, 0, !nosanitize !49
  %985 = load ptr, ptr %977, align 8, !tbaa !48
  store i32 %984, ptr %978, align 4, !tbaa !122
  %986 = zext i32 %979 to i64
  %987 = getelementptr inbounds nuw i8, ptr %985, i64 %986
  store i8 0, ptr %987, align 1, !tbaa !8
  %988 = load i32, ptr %978, align 4, !tbaa !122
  %989 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %988, i32 1), !nosanitize !49
  %990 = extractvalue { i32, i1 } %989, 1, !nosanitize !49
  br i1 %990, label %991, label %992, !prof !50, !nosanitize !49

991:                                              ; preds = %983
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

992:                                              ; preds = %983
  %993 = extractvalue { i32, i1 } %989, 0, !nosanitize !49
  %994 = load ptr, ptr %977, align 8, !tbaa !48
  store i32 %993, ptr %978, align 4, !tbaa !122
  %995 = zext i32 %988 to i64
  %996 = getelementptr inbounds nuw i8, ptr %994, i64 %995
  store i8 0, ptr %996, align 1, !tbaa !8
  %997 = load i32, ptr %978, align 4, !tbaa !122
  %998 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %997, i32 1), !nosanitize !49
  %999 = extractvalue { i32, i1 } %998, 1, !nosanitize !49
  br i1 %999, label %1000, label %1001, !prof !50, !nosanitize !49

1000:                                             ; preds = %992
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1001:                                             ; preds = %992
  %1002 = extractvalue { i32, i1 } %998, 0, !nosanitize !49
  %1003 = load ptr, ptr %977, align 8, !tbaa !48
  store i32 %1002, ptr %978, align 4, !tbaa !122
  %1004 = zext i32 %997 to i64
  %1005 = getelementptr inbounds nuw i8, ptr %1003, i64 %1004
  store i8 %976, ptr %1005, align 1, !tbaa !8
  %1006 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %1007 = zext i8 %976 to i64
  %1008 = getelementptr inbounds nuw [4 x i8], ptr %1006, i64 %1007
  %1009 = load i16, ptr %1008, align 4, !tbaa !8
  %1010 = add i16 %1009, 1
  store i16 %1010, ptr %1008, align 4, !tbaa !8
  store i32 0, ptr %963, align 8, !tbaa !80
  br label %1011

1011:                                             ; preds = %1001, %962
  %1012 = load i32, ptr %6, align 4, !tbaa !74
  %1013 = tail call i32 @llvm.umin.i32(i32 %1012, i32 2)
  store i32 %1013, ptr %10, align 4, !tbaa !77
  %1014 = icmp eq i32 %1, 4
  br i1 %1014, label %1015, label %1080

1015:                                             ; preds = %1011
  %1016 = load i64, ptr %9, align 8, !tbaa !75
  %1017 = icmp sgt i64 %1016, -1
  br i1 %1017, label %1018, label %1022

1018:                                             ; preds = %1015
  %1019 = load ptr, ptr %7, align 8, !tbaa !39
  %1020 = and i64 %1016, 4294967295
  %1021 = getelementptr inbounds nuw i8, ptr %1019, i64 %1020
  br label %1022

1022:                                             ; preds = %1018, %1015
  %1023 = phi ptr [ %1021, %1018 ], [ null, %1015 ]
  %1024 = zext i32 %1012 to i64
  %1025 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1024, i64 %1016), !nosanitize !49
  %1026 = extractvalue { i64, i1 } %1025, 1, !nosanitize !49
  br i1 %1026, label %970, label %1027, !prof !50, !nosanitize !49

1027:                                             ; preds = %1022
  %1028 = extractvalue { i64, i1 } %1025, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1023, i64 noundef %1028, i32 noundef 1) #10
  %1029 = load i32, ptr %6, align 4, !tbaa !74
  %1030 = zext i32 %1029 to i64
  store i64 %1030, ptr %9, align 8, !tbaa !75
  %1031 = load ptr, ptr %0, align 8, !tbaa !20
  %1032 = getelementptr inbounds nuw i8, ptr %1031, i64 56
  %1033 = load ptr, ptr %1032, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1033) #10
  %1034 = getelementptr inbounds nuw i8, ptr %1033, i64 40
  %1035 = load i64, ptr %1034, align 8, !tbaa !58
  %1036 = getelementptr inbounds nuw i8, ptr %1031, i64 32
  %1037 = load i32, ptr %1036, align 8, !tbaa !100
  %1038 = zext i32 %1037 to i64
  %1039 = tail call i64 @llvm.umin.i64(i64 %1035, i64 %1038)
  %1040 = trunc nuw i64 %1039 to i32
  %1041 = icmp eq i64 %1039, 0
  br i1 %1041, label %1074, label %1042

1042:                                             ; preds = %1027
  %1043 = getelementptr inbounds nuw i8, ptr %1031, i64 24
  %1044 = load ptr, ptr %1043, align 8, !tbaa !99
  %1045 = getelementptr inbounds nuw i8, ptr %1033, i64 32
  %1046 = load ptr, ptr %1045, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1044, ptr align 1 %1046, i64 %1039, i1 false)
  %1047 = load ptr, ptr %1043, align 8, !tbaa !99
  %1048 = getelementptr inbounds nuw i8, ptr %1047, i64 %1039
  store ptr %1048, ptr %1043, align 8, !tbaa !99
  %1049 = load ptr, ptr %1045, align 8, !tbaa !59
  %1050 = getelementptr inbounds nuw i8, ptr %1049, i64 %1039
  store ptr %1050, ptr %1045, align 8, !tbaa !59
  %1051 = getelementptr inbounds nuw i8, ptr %1031, i64 40
  %1052 = load i64, ptr %1051, align 8, !tbaa !101
  %1053 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1052, i64 %1039), !nosanitize !49
  %1054 = extractvalue { i64, i1 } %1053, 1, !nosanitize !49
  br i1 %1054, label %1055, label %1056, !prof !50, !nosanitize !49

1055:                                             ; preds = %1042
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1056:                                             ; preds = %1042
  %1057 = extractvalue { i64, i1 } %1053, 0, !nosanitize !49
  store i64 %1057, ptr %1051, align 8, !tbaa !101
  %1058 = load i32, ptr %1036, align 8, !tbaa !100
  %1059 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1058, i32 %1040), !nosanitize !49
  %1060 = extractvalue { i32, i1 } %1059, 1, !nosanitize !49
  br i1 %1060, label %1061, label %1062, !prof !50, !nosanitize !49

1061:                                             ; preds = %1056
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

1062:                                             ; preds = %1056
  %1063 = extractvalue { i32, i1 } %1059, 0, !nosanitize !49
  store i32 %1063, ptr %1036, align 8, !tbaa !100
  %1064 = load i64, ptr %1034, align 8, !tbaa !58
  %1065 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1064, i64 %1039), !nosanitize !49
  %1066 = extractvalue { i64, i1 } %1065, 1, !nosanitize !49
  br i1 %1066, label %1067, label %1068, !prof !50, !nosanitize !49

1067:                                             ; preds = %1062
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

1068:                                             ; preds = %1062
  %1069 = extractvalue { i64, i1 } %1065, 0, !nosanitize !49
  store i64 %1069, ptr %1034, align 8, !tbaa !58
  %1070 = icmp eq i64 %1069, 0
  br i1 %1070, label %1071, label %1074

1071:                                             ; preds = %1068
  %1072 = getelementptr inbounds nuw i8, ptr %1033, i64 16
  %1073 = load ptr, ptr %1072, align 8, !tbaa !44
  store ptr %1073, ptr %1045, align 8, !tbaa !59
  br label %1074

1074:                                             ; preds = %1071, %1068, %1027
  %1075 = load ptr, ptr %0, align 8, !tbaa !20
  %1076 = getelementptr inbounds nuw i8, ptr %1075, i64 32
  %1077 = load i32, ptr %1076, align 8, !tbaa !100
  %1078 = icmp eq i32 %1077, 0
  %1079 = select i1 %1078, i32 2, i32 3
  br label %1149

1080:                                             ; preds = %1011
  %1081 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %1082 = load i32, ptr %1081, align 4, !tbaa !122
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1148, label %1084

1084:                                             ; preds = %1080
  %1085 = load i64, ptr %9, align 8, !tbaa !75
  %1086 = icmp sgt i64 %1085, -1
  br i1 %1086, label %1087, label %1091

1087:                                             ; preds = %1084
  %1088 = load ptr, ptr %7, align 8, !tbaa !39
  %1089 = and i64 %1085, 4294967295
  %1090 = getelementptr inbounds nuw i8, ptr %1088, i64 %1089
  br label %1091

1091:                                             ; preds = %1087, %1084
  %1092 = phi ptr [ %1090, %1087 ], [ null, %1084 ]
  %1093 = zext i32 %1012 to i64
  %1094 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1093, i64 %1085), !nosanitize !49
  %1095 = extractvalue { i64, i1 } %1094, 1, !nosanitize !49
  br i1 %1095, label %970, label %1096, !prof !50, !nosanitize !49

1096:                                             ; preds = %1091
  %1097 = extractvalue { i64, i1 } %1094, 0, !nosanitize !49
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1092, i64 noundef %1097, i32 noundef 0) #10
  %1098 = load i32, ptr %6, align 4, !tbaa !74
  %1099 = zext i32 %1098 to i64
  store i64 %1099, ptr %9, align 8, !tbaa !75
  %1100 = load ptr, ptr %0, align 8, !tbaa !20
  %1101 = getelementptr inbounds nuw i8, ptr %1100, i64 56
  %1102 = load ptr, ptr %1101, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1102) #10
  %1103 = getelementptr inbounds nuw i8, ptr %1102, i64 40
  %1104 = load i64, ptr %1103, align 8, !tbaa !58
  %1105 = getelementptr inbounds nuw i8, ptr %1100, i64 32
  %1106 = load i32, ptr %1105, align 8, !tbaa !100
  %1107 = zext i32 %1106 to i64
  %1108 = tail call i64 @llvm.umin.i64(i64 %1104, i64 %1107)
  %1109 = trunc nuw i64 %1108 to i32
  %1110 = icmp eq i64 %1108, 0
  br i1 %1110, label %1143, label %1111

1111:                                             ; preds = %1096
  %1112 = getelementptr inbounds nuw i8, ptr %1100, i64 24
  %1113 = load ptr, ptr %1112, align 8, !tbaa !99
  %1114 = getelementptr inbounds nuw i8, ptr %1102, i64 32
  %1115 = load ptr, ptr %1114, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1113, ptr align 1 %1115, i64 %1108, i1 false)
  %1116 = load ptr, ptr %1112, align 8, !tbaa !99
  %1117 = getelementptr inbounds nuw i8, ptr %1116, i64 %1108
  store ptr %1117, ptr %1112, align 8, !tbaa !99
  %1118 = load ptr, ptr %1114, align 8, !tbaa !59
  %1119 = getelementptr inbounds nuw i8, ptr %1118, i64 %1108
  store ptr %1119, ptr %1114, align 8, !tbaa !59
  %1120 = getelementptr inbounds nuw i8, ptr %1100, i64 40
  %1121 = load i64, ptr %1120, align 8, !tbaa !101
  %1122 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1121, i64 %1108), !nosanitize !49
  %1123 = extractvalue { i64, i1 } %1122, 1, !nosanitize !49
  br i1 %1123, label %1124, label %1125, !prof !50, !nosanitize !49

1124:                                             ; preds = %1111
  tail call void @llvm.ubsantrap(i8 0) #11, !nosanitize !49
  unreachable, !nosanitize !49

1125:                                             ; preds = %1111
  %1126 = extractvalue { i64, i1 } %1122, 0, !nosanitize !49
  store i64 %1126, ptr %1120, align 8, !tbaa !101
  %1127 = load i32, ptr %1105, align 8, !tbaa !100
  %1128 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1127, i32 %1109), !nosanitize !49
  %1129 = extractvalue { i32, i1 } %1128, 1, !nosanitize !49
  br i1 %1129, label %1130, label %1131, !prof !50, !nosanitize !49

1130:                                             ; preds = %1125
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

1131:                                             ; preds = %1125
  %1132 = extractvalue { i32, i1 } %1128, 0, !nosanitize !49
  store i32 %1132, ptr %1105, align 8, !tbaa !100
  %1133 = load i64, ptr %1103, align 8, !tbaa !58
  %1134 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1133, i64 %1108), !nosanitize !49
  %1135 = extractvalue { i64, i1 } %1134, 1, !nosanitize !49
  br i1 %1135, label %1136, label %1137, !prof !50, !nosanitize !49

1136:                                             ; preds = %1131
  tail call void @llvm.ubsantrap(i8 21) #11, !nosanitize !49
  unreachable, !nosanitize !49

1137:                                             ; preds = %1131
  %1138 = extractvalue { i64, i1 } %1134, 0, !nosanitize !49
  store i64 %1138, ptr %1103, align 8, !tbaa !58
  %1139 = icmp eq i64 %1138, 0
  br i1 %1139, label %1140, label %1143

1140:                                             ; preds = %1137
  %1141 = getelementptr inbounds nuw i8, ptr %1102, i64 16
  %1142 = load ptr, ptr %1141, align 8, !tbaa !44
  store ptr %1142, ptr %1114, align 8, !tbaa !59
  br label %1143

1143:                                             ; preds = %1140, %1137, %1096
  %1144 = load ptr, ptr %0, align 8, !tbaa !20
  %1145 = getelementptr inbounds nuw i8, ptr %1144, i64 32
  %1146 = load i32, ptr %1145, align 8, !tbaa !100
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1149, label %1148

1148:                                             ; preds = %1143, %1080
  br label %1149

1149:                                             ; preds = %1148, %1143, %1074, %944, %820, %356
  %1150 = phi i32 [ 0, %1143 ], [ %1079, %1074 ], [ 1, %1148 ], [ 0, %356 ], [ 0, %820 ], [ 0, %944 ]
  ret i32 %1150
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nomerge noreturn nounwind }
attributes #12 = { noreturn nounwind }

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
