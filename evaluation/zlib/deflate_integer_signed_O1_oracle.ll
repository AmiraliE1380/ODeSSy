; ModuleID = 'evaluation/zlib/deflate_integer_signed_O1.ll'
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
  br i1 %5, label %141, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !8
  %8 = icmp ne i8 %7, 49
  %9 = icmp ne i32 %3, 112
  %10 = or i1 %9, %8
  br i1 %10, label %141, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %141, label %13

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
  br i1 %28, label %141, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %15, align 8, !tbaa !15
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = tail call ptr %30(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #11, !inline_history !18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %141, label %35

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
  %49 = tail call ptr %47(ptr noundef %48, i32 noundef 32768, i32 noundef 2) #11, !inline_history !18
  %50 = getelementptr inbounds nuw i8, ptr %33, i64 96
  store ptr %49, ptr %50, align 8, !tbaa !39
  %51 = load ptr, ptr %15, align 8, !tbaa !15
  %52 = load ptr, ptr %31, align 8, !tbaa !16
  %53 = load i32, ptr %41, align 8, !tbaa !33
  %54 = tail call ptr %51(ptr noundef %52, i32 noundef %53, i32 noundef 2) #11, !inline_history !18
  %55 = getelementptr inbounds nuw i8, ptr %33, i64 112
  store ptr %54, ptr %55, align 8, !tbaa !40
  %56 = load ptr, ptr %15, align 8, !tbaa !15
  %57 = load ptr, ptr %31, align 8, !tbaa !16
  %58 = load i32, ptr %44, align 4, !tbaa !36
  %59 = tail call ptr %56(ptr noundef %57, i32 noundef %58, i32 noundef 2) #11, !inline_history !18
  %60 = getelementptr inbounds nuw i8, ptr %33, i64 120
  store ptr %59, ptr %60, align 8, !tbaa !41
  %61 = getelementptr inbounds nuw i8, ptr %33, i64 5952
  store i64 0, ptr %61, align 8, !tbaa !42
  %62 = getelementptr inbounds nuw i8, ptr %33, i64 5896
  store i32 16384, ptr %62, align 8, !tbaa !43
  %63 = load ptr, ptr %15, align 8, !tbaa !15
  %64 = load ptr, ptr %31, align 8, !tbaa !16
  %65 = tail call ptr %63(ptr noundef %64, i32 noundef 16384, i32 noundef 4) #11, !inline_history !18
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
  br i1 %84, label %141, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %21, align 8, !tbaa !17
  %87 = icmp eq ptr %86, null
  br i1 %87, label %141, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %36, align 8, !tbaa !19
  %90 = icmp eq ptr %89, null
  br i1 %90, label %141, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %89, align 8, !tbaa !20
  %93 = icmp eq ptr %92, %0
  br i1 %93, label %94, label %141

94:                                               ; preds = %91
  %95 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %96 = load i32, ptr %95, align 8, !tbaa !29
  switch i32 %96, label %141 [
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
  tail call void %86(ptr noundef %102, ptr noundef nonnull %99) #11, !inline_history !47
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
  tail call void %109(ptr noundef %110, ptr noundef nonnull %106) #11, !inline_history !47
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
  tail call void %117(ptr noundef %118, ptr noundef nonnull %114) #11, !inline_history !47
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
  tail call void %125(ptr noundef %126, ptr noundef nonnull %122) #11, !inline_history !47
  br label %127

127:                                              ; preds = %124, %119
  %128 = load ptr, ptr %21, align 8, !tbaa !17
  %129 = load ptr, ptr %31, align 8, !tbaa !16
  %130 = load ptr, ptr %36, align 8, !tbaa !19
  tail call void %128(ptr noundef %129, ptr noundef %130) #11, !inline_history !47
  store ptr null, ptr %36, align 8, !tbaa !19
  br label %141

131:                                              ; preds = %76
  %132 = getelementptr inbounds nuw i8, ptr %65, i64 %68
  %133 = getelementptr inbounds nuw i8, ptr %33, i64 5888
  store ptr %132, ptr %133, align 8, !tbaa !48
  %134 = mul i32 %67, 3
  %135 = add i32 %134, -3
  %136 = getelementptr inbounds nuw i8, ptr %33, i64 5904
  store i32 %135, ptr %136, align 8, !tbaa !49
  %137 = getelementptr inbounds nuw i8, ptr %33, i64 196
  store i32 %27, ptr %137, align 4, !tbaa !50
  %138 = getelementptr inbounds nuw i8, ptr %33, i64 200
  store i32 0, ptr %138, align 8, !tbaa !51
  %139 = getelementptr inbounds nuw i8, ptr %33, i64 72
  store i8 8, ptr %139, align 8, !tbaa !52
  %140 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %141

141:                                              ; preds = %131, %127, %94, %91, %88, %85, %81, %29, %25, %11, %6, %4
  %142 = phi i32 [ %140, %131 ], [ -6, %4 ], [ -2, %11 ], [ -4, %127 ], [ -2, %25 ], [ -4, %29 ], [ -6, %6 ], [ -4, %94 ], [ -4, %81 ], [ -4, %85 ], [ -4, %88 ], [ -4, %91 ]
  ret i32 %142
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -6, 1) i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly captures(address_is_null) %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %180, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !8
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %180, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %180, label %17

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
  br i1 %34, label %180, label %35

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
  br i1 %55, label %180, label %56

56:                                               ; preds = %41
  %57 = icmp eq i32 %42, 8
  %58 = and i1 %57, %43
  br i1 %58, label %180, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %19, align 8, !tbaa !15
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call ptr %60(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %180, label %65

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
  %87 = tail call ptr %85(ptr noundef %86, i32 noundef %72, i32 noundef 2) #11
  %88 = getelementptr inbounds nuw i8, ptr %63, i64 96
  store ptr %87, ptr %88, align 8, !tbaa !39
  %89 = load ptr, ptr %19, align 8, !tbaa !15
  %90 = load ptr, ptr %61, align 8, !tbaa !16
  %91 = load i32, ptr %73, align 8, !tbaa !33
  %92 = tail call ptr %89(ptr noundef %90, i32 noundef %91, i32 noundef 2) #11
  %93 = getelementptr inbounds nuw i8, ptr %63, i64 112
  store ptr %92, ptr %93, align 8, !tbaa !40
  %94 = load ptr, ptr %19, align 8, !tbaa !15
  %95 = load ptr, ptr %61, align 8, !tbaa !16
  %96 = load i32, ptr %79, align 4, !tbaa !36
  %97 = tail call ptr %94(ptr noundef %95, i32 noundef %96, i32 noundef 2) #11
  %98 = getelementptr inbounds nuw i8, ptr %63, i64 120
  store ptr %97, ptr %98, align 8, !tbaa !41
  %99 = getelementptr inbounds nuw i8, ptr %63, i64 5952
  store i64 0, ptr %99, align 8, !tbaa !42
  %100 = shl nuw nsw i32 64, %4
  %101 = getelementptr inbounds nuw i8, ptr %63, i64 5896
  store i32 %100, ptr %101, align 8, !tbaa !43
  %102 = load ptr, ptr %19, align 8, !tbaa !15
  %103 = load ptr, ptr %61, align 8, !tbaa !16
  %104 = tail call ptr %102(ptr noundef %103, i32 noundef %100, i32 noundef 4) #11
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
  br i1 %123, label %180, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %25, align 8, !tbaa !17
  %126 = icmp eq ptr %125, null
  br i1 %126, label %180, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %67, align 8, !tbaa !19
  %129 = icmp eq ptr %128, null
  br i1 %129, label %180, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %128, align 8, !tbaa !20
  %132 = icmp eq ptr %131, %0
  br i1 %132, label %133, label %180

133:                                              ; preds = %130
  %134 = getelementptr inbounds nuw i8, ptr %128, i64 8
  %135 = load i32, ptr %134, align 8, !tbaa !29
  switch i32 %135, label %180 [
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
  tail call void %125(ptr noundef %141, ptr noundef nonnull %138) #11, !inline_history !53
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
  tail call void %148(ptr noundef %149, ptr noundef nonnull %145) #11, !inline_history !53
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
  tail call void %156(ptr noundef %157, ptr noundef nonnull %153) #11, !inline_history !53
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
  tail call void %164(ptr noundef %165, ptr noundef nonnull %161) #11, !inline_history !53
  br label %166

166:                                              ; preds = %163, %158
  %167 = load ptr, ptr %25, align 8, !tbaa !17
  %168 = load ptr, ptr %61, align 8, !tbaa !16
  %169 = load ptr, ptr %67, align 8, !tbaa !19
  tail call void %167(ptr noundef %168, ptr noundef %169) #11, !inline_history !53
  store ptr null, ptr %67, align 8, !tbaa !19
  br label %180

170:                                              ; preds = %115
  %171 = getelementptr inbounds nuw i8, ptr %104, i64 %107
  %172 = getelementptr inbounds nuw i8, ptr %63, i64 5888
  store ptr %171, ptr %172, align 8, !tbaa !48
  %173 = mul i32 %106, 3
  %174 = add i32 %173, -3
  %175 = getelementptr inbounds nuw i8, ptr %63, i64 5904
  store i32 %174, ptr %175, align 8, !tbaa !49
  %176 = getelementptr inbounds nuw i8, ptr %63, i64 196
  store i32 %31, ptr %176, align 4, !tbaa !50
  %177 = getelementptr inbounds nuw i8, ptr %63, i64 200
  store i32 %5, ptr %177, align 8, !tbaa !51
  %178 = getelementptr inbounds nuw i8, ptr %63, i64 72
  store i8 8, ptr %178, align 8, !tbaa !52
  %179 = tail call i32 @deflateReset(ptr noundef nonnull %0)
  br label %180

180:                                              ; preds = %170, %166, %133, %130, %127, %124, %120, %59, %56, %41, %33, %15, %10, %8
  %181 = phi i32 [ %179, %170 ], [ -6, %8 ], [ -2, %15 ], [ -2, %33 ], [ -2, %41 ], [ -4, %59 ], [ -6, %10 ], [ -2, %56 ], [ -4, %120 ], [ -4, %124 ], [ -4, %127 ], [ -4, %130 ], [ -4, %133 ], [ -4, %166 ]
  ret i32 %181
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
  tail call void %31(ptr noundef %33, ptr noundef nonnull %27) #11
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
  tail call void %41(ptr noundef %43, ptr noundef nonnull %37) #11
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
  tail call void %51(ptr noundef %53, ptr noundef nonnull %47) #11
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
  tail call void %61(ptr noundef %63, ptr noundef nonnull %57) #11
  br label %64

64:                                               ; preds = %59, %54
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %66 = load ptr, ptr %65, align 8, !tbaa !17
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %68 = load ptr, ptr %67, align 8, !tbaa !16
  %69 = load ptr, ptr %22, align 8, !tbaa !19
  tail call void %66(ptr noundef %68, ptr noundef %69) #11
  store ptr null, ptr %22, align 8, !tbaa !19
  %70 = icmp eq i32 %25, 113
  %71 = select i1 %70, i32 -3, i32 0
  br label %72

72:                                               ; preds = %64, %18, %15, %11, %7, %3, %1
  %73 = phi i32 [ %71, %64 ], [ -2, %1 ], [ -2, %3 ], [ -2, %7 ], [ -2, %11 ], [ -2, %15 ], [ -2, %18 ]
  ret i32 %73
}

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
  store i64 0, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !55
  %25 = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %25, align 8, !tbaa !56
  %26 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %27, ptr %28, align 8, !tbaa !57
  %29 = getelementptr inbounds nuw i8, ptr %13, i64 48
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %30), !nosanitize !58
  %34 = extractvalue { i32, i1 } %33, 1, !nosanitize !58
  br i1 %34, label %35, label %36, !prof !59, !nosanitize !58

35:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !58
  unreachable, !nosanitize !58

36:                                               ; preds = %32
  %37 = extractvalue { i32, i1 } %33, 0, !nosanitize !58
  store i32 %37, ptr %29, align 8, !tbaa !30
  br label %38

38:                                               ; preds = %36, %21
  %39 = load i32, ptr %29, align 8, !tbaa !30
  %40 = icmp eq i32 %39, 2
  %41 = select i1 %40, i32 57, i32 42
  store i32 %41, ptr %19, align 8, !tbaa !29
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %46

44:                                               ; preds = %38
  %45 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %47, ptr %48, align 8, !tbaa !60
  %49 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %49, align 4, !tbaa !61
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  br label %50

50:                                               ; preds = %46, %18, %15, %11, %7, %3, %1
  %51 = phi i1 [ true, %46 ], [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %11 ], [ false, %15 ], [ false, %18 ]
  %52 = phi i32 [ 0, %46 ], [ -2, %1 ], [ -2, %3 ], [ -2, %7 ], [ -2, %11 ], [ -2, %15 ], [ -2, %18 ]
  br i1 %51, label %53, label %97

53:                                               ; preds = %50
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %55 = load ptr, ptr %54, align 8, !tbaa !19
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 80
  %57 = load i32, ptr %56, align 8, !tbaa !33
  %58 = zext i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 1
  %60 = getelementptr inbounds nuw i8, ptr %55, i64 104
  store i64 %59, ptr %60, align 8, !tbaa !62
  %61 = getelementptr inbounds nuw i8, ptr %55, i64 120
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = getelementptr inbounds nuw i8, ptr %55, i64 132
  %64 = load i32, ptr %63, align 4, !tbaa !36
  %65 = add i32 %64, -1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw [2 x i8], ptr %62, i64 %66
  store i16 0, ptr %67, align 2, !tbaa !63
  %68 = shl nuw nsw i64 %66, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %62, i8 0, i64 %68, i1 false)
  %69 = getelementptr inbounds nuw i8, ptr %55, i64 5960
  store i32 0, ptr %69, align 8, !tbaa !64
  %70 = getelementptr inbounds nuw i8, ptr %55, i64 196
  %71 = load i32, ptr %70, align 4, !tbaa !50
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %72
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 2
  %75 = load i16, ptr %74, align 2, !tbaa !65
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds nuw i8, ptr %55, i64 192
  store i32 %76, ptr %77, align 8, !tbaa !67
  %78 = load i16, ptr %73, align 16, !tbaa !68
  %79 = zext i16 %78 to i32
  %80 = getelementptr inbounds nuw i8, ptr %55, i64 204
  store i32 %79, ptr %80, align 4, !tbaa !69
  %81 = getelementptr inbounds nuw i8, ptr %73, i64 4
  %82 = load i16, ptr %81, align 4, !tbaa !70
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds nuw i8, ptr %55, i64 208
  store i32 %83, ptr %84, align 8, !tbaa !71
  %85 = getelementptr inbounds nuw i8, ptr %73, i64 6
  %86 = load i16, ptr %85, align 2, !tbaa !72
  %87 = zext i16 %86 to i32
  %88 = getelementptr inbounds nuw i8, ptr %55, i64 188
  store i32 %87, ptr %88, align 4, !tbaa !73
  %89 = getelementptr inbounds nuw i8, ptr %55, i64 172
  store i32 0, ptr %89, align 4, !tbaa !74
  %90 = getelementptr inbounds nuw i8, ptr %55, i64 152
  store i64 0, ptr %90, align 8, !tbaa !75
  %91 = getelementptr inbounds nuw i8, ptr %55, i64 180
  store i32 0, ptr %91, align 4, !tbaa !76
  %92 = getelementptr inbounds nuw i8, ptr %55, i64 5932
  store i32 0, ptr %92, align 4, !tbaa !77
  %93 = getelementptr inbounds nuw i8, ptr %55, i64 184
  store i32 2, ptr %93, align 8, !tbaa !78
  %94 = getelementptr inbounds nuw i8, ptr %55, i64 160
  store i32 2, ptr %94, align 8, !tbaa !79
  %95 = getelementptr inbounds nuw i8, ptr %55, i64 168
  store i32 0, ptr %95, align 8, !tbaa !80
  %96 = getelementptr inbounds nuw i8, ptr %55, i64 128
  store i32 0, ptr %96, align 8, !tbaa !81
  br label %97

97:                                               ; preds = %53, %50
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
  br i1 %27, label %530, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %32 = load i32, ptr %31, align 8, !tbaa !30
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %530, label %34

34:                                               ; preds = %28
  %35 = icmp eq i32 %32, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %38 = load i32, ptr %37, align 8, !tbaa !29
  %39 = icmp eq i32 %38, 42
  br i1 %39, label %40, label %530

40:                                               ; preds = %36, %34
  %41 = getelementptr inbounds nuw i8, ptr %30, i64 180
  %42 = load i32, ptr %41, align 4, !tbaa !76
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %530

44:                                               ; preds = %40
  br i1 %35, label %45, label %49

45:                                               ; preds = %44
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %47 = load i64, ptr %46, align 8, !tbaa !60
  %48 = tail call i64 @adler32(i64 noundef %47, ptr noundef %1, i32 noundef %2) #11
  store i64 %48, ptr %46, align 8, !tbaa !60
  br label %49

49:                                               ; preds = %45, %44
  store i32 0, ptr %31, align 8, !tbaa !30
  %50 = getelementptr inbounds nuw i8, ptr %30, i64 80
  %51 = load i32, ptr %50, align 8, !tbaa !33
  %52 = icmp ult i32 %2, %51
  br i1 %52, label %73, label %53

53:                                               ; preds = %49
  %54 = icmp eq i32 %32, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %53
  %56 = getelementptr inbounds nuw i8, ptr %30, i64 120
  %57 = load ptr, ptr %56, align 8, !tbaa !41
  %58 = getelementptr inbounds nuw i8, ptr %30, i64 132
  %59 = load i32, ptr %58, align 4, !tbaa !36
  %60 = add i32 %59, -1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds nuw [2 x i8], ptr %57, i64 %61
  store i16 0, ptr %62, align 2, !tbaa !63
  %63 = shl nuw nsw i64 %61, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %57, i8 0, i64 %63, i1 false)
  %64 = getelementptr inbounds nuw i8, ptr %30, i64 5960
  store i32 0, ptr %64, align 8, !tbaa !64
  %65 = getelementptr inbounds nuw i8, ptr %30, i64 172
  store i32 0, ptr %65, align 4, !tbaa !74
  %66 = getelementptr inbounds nuw i8, ptr %30, i64 152
  store i64 0, ptr %66, align 8, !tbaa !75
  %67 = getelementptr inbounds nuw i8, ptr %30, i64 5932
  store i32 0, ptr %67, align 4, !tbaa !77
  br label %68

68:                                               ; preds = %55, %53
  %69 = load i32, ptr %50, align 8, !tbaa !33
  %70 = sub i32 %2, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 %71
  br label %73

73:                                               ; preds = %68, %49
  %74 = phi i32 [ %69, %68 ], [ %2, %49 ]
  %75 = phi ptr [ %72, %68 ], [ %1, %49 ]
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %77 = load i32, ptr %76, align 8, !tbaa !82
  %78 = load ptr, ptr %0, align 8, !tbaa !83
  store i32 %74, ptr %76, align 8, !tbaa !82
  store ptr %75, ptr %0, align 8, !tbaa !83
  %79 = load i32, ptr %50, align 8, !tbaa !33
  %80 = getelementptr inbounds nuw i8, ptr %30, i64 104
  %81 = getelementptr inbounds nuw i8, ptr %30, i64 172
  %82 = add i32 %79, -262
  %83 = getelementptr inbounds nuw i8, ptr %30, i64 96
  %84 = zext i32 %79 to i64
  %85 = getelementptr inbounds nuw i8, ptr %30, i64 176
  %86 = getelementptr inbounds nuw i8, ptr %30, i64 152
  %87 = getelementptr inbounds nuw i8, ptr %30, i64 5932
  %88 = getelementptr inbounds nuw i8, ptr %30, i64 132
  %89 = getelementptr inbounds nuw i8, ptr %30, i64 120
  %90 = getelementptr inbounds nuw i8, ptr %30, i64 112
  %91 = getelementptr inbounds nuw i8, ptr %30, i64 5960
  %92 = getelementptr inbounds nuw i8, ptr %30, i64 128
  %93 = getelementptr inbounds nuw i8, ptr %30, i64 144
  %94 = getelementptr inbounds nuw i8, ptr %30, i64 140
  %95 = getelementptr inbounds nuw i8, ptr %30, i64 88
  br label %96

96:                                               ; preds = %251, %73
  %97 = load i64, ptr %80, align 8, !tbaa !62
  %98 = load i32, ptr %41, align 4, !tbaa !76
  %99 = zext i32 %98 to i64
  %100 = load i32, ptr %81, align 4, !tbaa !74
  %101 = zext i32 %100 to i64
  %102 = add nuw nsw i64 %99, %101
  %103 = sub i64 %97, %102
  %104 = trunc i64 %103 to i32
  %105 = load i32, ptr %50, align 8, !tbaa !33
  %106 = add i32 %82, %105
  %107 = icmp ult i32 %100, %106
  br i1 %107, label %158, label %108

108:                                              ; preds = %96
  %109 = load ptr, ptr %83, align 8, !tbaa !39
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 %84
  %111 = sub i32 %79, %104
  %112 = zext i32 %111 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %109, ptr align 1 %110, i64 %112, i1 false)
  %113 = load i32, ptr %85, align 8, !tbaa !84
  %114 = sub i32 %113, %79
  store i32 %114, ptr %85, align 8, !tbaa !84
  %115 = load i32, ptr %81, align 4, !tbaa !74
  %116 = sub i32 %115, %79
  store i32 %116, ptr %81, align 4, !tbaa !74
  %117 = load i64, ptr %86, align 8, !tbaa !75
  %118 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %117, i64 %84), !nosanitize !58
  %119 = extractvalue { i64, i1 } %118, 1, !nosanitize !58
  br i1 %119, label %120, label %121, !prof !59, !nosanitize !58

120:                                              ; preds = %108
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

121:                                              ; preds = %108
  %122 = extractvalue { i64, i1 } %118, 0, !nosanitize !58
  store i64 %122, ptr %86, align 8, !tbaa !75
  %123 = load i32, ptr %87, align 4, !tbaa !77
  %124 = icmp ugt i32 %123, %116
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 %116, ptr %87, align 4, !tbaa !77
  br label %126

126:                                              ; preds = %125, %121
  %127 = load i32, ptr %50, align 8, !tbaa !33
  %128 = load i32, ptr %88, align 4, !tbaa !36
  %129 = load ptr, ptr %89, align 8, !tbaa !41
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds nuw [2 x i8], ptr %129, i64 %130
  br label %132

132:                                              ; preds = %132, %126
  %133 = phi ptr [ %131, %126 ], [ %135, %132 ]
  %134 = phi i32 [ %128, %126 ], [ %140, %132 ]
  %135 = getelementptr inbounds i8, ptr %133, i64 -2
  %136 = load i16, ptr %135, align 2, !tbaa !63
  %137 = zext i16 %136 to i32
  %138 = tail call i32 @llvm.usub.sat.i32(i32 %137, i32 %127)
  %139 = trunc nuw i32 %138 to i16
  store i16 %139, ptr %135, align 2, !tbaa !63
  %140 = add i32 %134, -1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %132, !llvm.loop !85

142:                                              ; preds = %132
  %143 = load ptr, ptr %90, align 8, !tbaa !40
  %144 = zext i32 %127 to i64
  %145 = getelementptr inbounds nuw [2 x i8], ptr %143, i64 %144
  br label %146

146:                                              ; preds = %146, %142
  %147 = phi ptr [ %145, %142 ], [ %149, %146 ]
  %148 = phi i32 [ %127, %142 ], [ %154, %146 ]
  %149 = getelementptr inbounds i8, ptr %147, i64 -2
  %150 = load i16, ptr %149, align 2, !tbaa !63
  %151 = zext i16 %150 to i32
  %152 = tail call i32 @llvm.usub.sat.i32(i32 %151, i32 %127)
  %153 = trunc nuw i32 %152 to i16
  store i16 %153, ptr %149, align 2, !tbaa !63
  %154 = add i32 %148, -1
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %146, !llvm.loop !88

156:                                              ; preds = %146
  store i32 1, ptr %91, align 8, !tbaa !64
  %157 = add i32 %79, %104
  br label %158

158:                                              ; preds = %156, %96
  %159 = phi i32 [ %157, %156 ], [ %104, %96 ]
  %160 = load ptr, ptr %30, align 8, !tbaa !20
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 8
  %162 = load i32, ptr %161, align 8, !tbaa !82
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %256, label %164

164:                                              ; preds = %158
  %165 = load ptr, ptr %83, align 8, !tbaa !39
  %166 = load i32, ptr %81, align 4, !tbaa !74
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds nuw i8, ptr %165, i64 %167
  %169 = load i32, ptr %41, align 4, !tbaa !76
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds nuw i8, ptr %168, i64 %170
  %172 = tail call i32 @llvm.umin.i32(i32 %162, i32 %159)
  %173 = icmp eq i32 %159, 0
  br i1 %173, label %196, label %174

174:                                              ; preds = %164
  %175 = sub i32 %162, %172
  store i32 %175, ptr %161, align 8, !tbaa !82
  %176 = load ptr, ptr %160, align 8, !tbaa !83
  %177 = zext i32 %172 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %171, ptr align 1 %176, i64 %177, i1 false)
  %178 = getelementptr inbounds nuw i8, ptr %160, i64 56
  %179 = load ptr, ptr %178, align 8, !tbaa !19
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 48
  %181 = load i32, ptr %180, align 8, !tbaa !30
  switch i32 %181, label %190 [
    i32 1, label %182
    i32 2, label %186
  ]

182:                                              ; preds = %174
  %183 = getelementptr inbounds nuw i8, ptr %160, i64 96
  %184 = load i64, ptr %183, align 8, !tbaa !60
  %185 = tail call i64 @adler32(i64 noundef %184, ptr noundef %171, i32 noundef %172) #11
  store i64 %185, ptr %183, align 8, !tbaa !60
  br label %190

186:                                              ; preds = %174
  %187 = getelementptr inbounds nuw i8, ptr %160, i64 96
  %188 = load i64, ptr %187, align 8, !tbaa !60
  %189 = tail call i64 @crc32(i64 noundef %188, ptr noundef %171, i32 noundef %172) #11
  store i64 %189, ptr %187, align 8, !tbaa !60
  br label %190

190:                                              ; preds = %186, %182, %174
  %191 = load ptr, ptr %160, align 8, !tbaa !83
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 %177
  store ptr %192, ptr %160, align 8, !tbaa !83
  %193 = getelementptr inbounds nuw i8, ptr %160, i64 16
  %194 = load i64, ptr %193, align 8, !tbaa !54
  %195 = add i64 %194, %177
  store i64 %195, ptr %193, align 8, !tbaa !54
  br label %196

196:                                              ; preds = %190, %164
  %197 = phi i32 [ %172, %190 ], [ 0, %164 ]
  %198 = load i32, ptr %41, align 4, !tbaa !76
  %199 = add i32 %198, %197
  store i32 %199, ptr %41, align 4, !tbaa !76
  %200 = load i32, ptr %87, align 4, !tbaa !77
  %201 = add i32 %200, %199
  %202 = icmp ugt i32 %201, 2
  br i1 %202, label %203, label %249

203:                                              ; preds = %196
  %204 = load i32, ptr %81, align 4, !tbaa !74
  %205 = sub i32 %204, %200
  %206 = load ptr, ptr %83, align 8, !tbaa !39
  %207 = zext i32 %205 to i64
  %208 = getelementptr inbounds nuw i8, ptr %206, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !8
  %210 = zext i8 %209 to i32
  store i32 %210, ptr %92, align 8, !tbaa !81
  %211 = load i32, ptr %93, align 8, !tbaa !38
  %212 = shl i32 %210, %211
  %213 = add i32 %205, 1
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds nuw i8, ptr %206, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !8
  %217 = zext i8 %216 to i32
  %218 = xor i32 %212, %217
  %219 = load i32, ptr %94, align 4, !tbaa !37
  %220 = and i32 %218, %219
  store i32 %220, ptr %92, align 8, !tbaa !81
  br label %221

221:                                              ; preds = %225, %203
  %222 = phi i32 [ %200, %203 ], [ %246, %225 ]
  %223 = phi i32 [ %205, %203 ], [ %245, %225 ]
  %224 = icmp eq i32 %222, 0
  br i1 %224, label %249, label %225

225:                                              ; preds = %221
  %226 = load i32, ptr %92, align 8, !tbaa !81
  %227 = shl i32 %226, %211
  %228 = add i32 %223, 2
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds nuw i8, ptr %206, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !8
  %232 = zext i8 %231 to i32
  %233 = xor i32 %227, %232
  %234 = and i32 %233, %219
  store i32 %234, ptr %92, align 8, !tbaa !81
  %235 = load ptr, ptr %89, align 8, !tbaa !41
  %236 = zext i32 %234 to i64
  %237 = getelementptr inbounds nuw [2 x i8], ptr %235, i64 %236
  %238 = load i16, ptr %237, align 2, !tbaa !63
  %239 = load ptr, ptr %90, align 8, !tbaa !40
  %240 = load i32, ptr %95, align 8, !tbaa !34
  %241 = and i32 %240, %223
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds nuw [2 x i8], ptr %239, i64 %242
  store i16 %238, ptr %243, align 2, !tbaa !63
  %244 = trunc i32 %223 to i16
  store i16 %244, ptr %237, align 2, !tbaa !63
  %245 = add i32 %223, 1
  %246 = add i32 %222, -1
  store i32 %246, ptr %87, align 4, !tbaa !77
  %247 = add i32 %246, %199
  %248 = icmp ult i32 %247, 3
  br i1 %248, label %249, label %221, !llvm.loop !89

249:                                              ; preds = %225, %221, %196
  %250 = icmp ult i32 %199, 262
  br i1 %250, label %251, label %256

251:                                              ; preds = %249
  %252 = load ptr, ptr %30, align 8, !tbaa !20
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 8
  %254 = load i32, ptr %253, align 8, !tbaa !82
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %96, !llvm.loop !90

256:                                              ; preds = %251, %249, %158
  %257 = getelementptr inbounds nuw i8, ptr %30, i64 5952
  %258 = load i64, ptr %257, align 8, !tbaa !42
  %259 = load i64, ptr %80, align 8, !tbaa !62
  %260 = icmp ult i64 %258, %259
  br i1 %260, label %261, label %288

261:                                              ; preds = %256
  %262 = load i32, ptr %81, align 4, !tbaa !74
  %263 = zext i32 %262 to i64
  %264 = load i32, ptr %41, align 4, !tbaa !76
  %265 = zext i32 %264 to i64
  %266 = add nuw nsw i64 %265, %263
  %267 = icmp ult i64 %258, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %261
  %269 = sub i64 %259, %266
  %270 = tail call i64 @llvm.umin.i64(i64 %269, i64 258)
  %271 = load ptr, ptr %83, align 8, !tbaa !39
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 %266
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %272, i8 0, i64 %270, i1 false)
  %273 = add nuw nsw i64 %270, %266
  br label %286

274:                                              ; preds = %261
  %275 = add nuw nsw i64 %266, 258
  %276 = icmp ult i64 %258, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %274
  %278 = sub nuw nsw i64 %275, %258
  %279 = sub i64 %259, %258
  %280 = tail call i64 @llvm.umin.i64(i64 %278, i64 %279)
  %281 = load ptr, ptr %83, align 8, !tbaa !39
  %282 = getelementptr inbounds nuw i8, ptr %281, i64 %258
  %283 = and i64 %280, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %282, i8 0, i64 %283, i1 false)
  %284 = load i64, ptr %257, align 8, !tbaa !42
  %285 = add i64 %284, %280
  br label %286

286:                                              ; preds = %277, %268
  %287 = phi i64 [ %273, %268 ], [ %285, %277 ]
  store i64 %287, ptr %257, align 8, !tbaa !42
  br label %288

288:                                              ; preds = %286, %274, %256
  %289 = load i32, ptr %41, align 4, !tbaa !76
  %290 = icmp ugt i32 %289, 2
  br i1 %290, label %291, label %522

291:                                              ; preds = %519, %288
  %292 = phi i32 [ %520, %519 ], [ %289, %288 ]
  %293 = load i32, ptr %81, align 4, !tbaa !74
  %294 = add i32 %292, -2
  %295 = load i32, ptr %93, align 8, !tbaa !38
  %296 = load ptr, ptr %83, align 8, !tbaa !39
  %297 = load i32, ptr %94, align 4, !tbaa !37
  %298 = load ptr, ptr %89, align 8, !tbaa !41
  %299 = load ptr, ptr %90, align 8, !tbaa !40
  %300 = load i32, ptr %95, align 8, !tbaa !34
  %301 = load i32, ptr %92, align 8, !tbaa !81
  br label %302

302:                                              ; preds = %302, %291
  %303 = phi i32 [ %301, %291 ], [ %313, %302 ]
  %304 = phi i32 [ %293, %291 ], [ %321, %302 ]
  %305 = phi i32 [ %294, %291 ], [ %322, %302 ]
  %306 = shl i32 %303, %295
  %307 = add i32 %304, 2
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds nuw i8, ptr %296, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !8
  %311 = zext i8 %310 to i32
  %312 = xor i32 %306, %311
  %313 = and i32 %312, %297
  store i32 %313, ptr %92, align 8, !tbaa !81
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds nuw [2 x i8], ptr %298, i64 %314
  %316 = load i16, ptr %315, align 2, !tbaa !63
  %317 = and i32 %300, %304
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds nuw [2 x i8], ptr %299, i64 %318
  store i16 %316, ptr %319, align 2, !tbaa !63
  %320 = trunc i32 %304 to i16
  store i16 %320, ptr %315, align 2, !tbaa !63
  %321 = add i32 %304, 1
  %322 = add i32 %305, -1
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %302, !llvm.loop !91

324:                                              ; preds = %302
  store i32 %321, ptr %81, align 4, !tbaa !74
  store i32 2, ptr %41, align 4, !tbaa !76
  %325 = load i32, ptr %50, align 8, !tbaa !33
  %326 = add i32 %325, -262
  %327 = zext i32 %325 to i64
  br label %328

328:                                              ; preds = %483, %324
  %329 = load i64, ptr %80, align 8, !tbaa !62
  %330 = load i32, ptr %41, align 4, !tbaa !76
  %331 = zext i32 %330 to i64
  %332 = load i32, ptr %81, align 4, !tbaa !74
  %333 = zext i32 %332 to i64
  %334 = add nuw nsw i64 %331, %333
  %335 = sub i64 %329, %334
  %336 = trunc i64 %335 to i32
  %337 = load i32, ptr %50, align 8, !tbaa !33
  %338 = add i32 %326, %337
  %339 = icmp ult i32 %332, %338
  br i1 %339, label %390, label %340

340:                                              ; preds = %328
  %341 = load ptr, ptr %83, align 8, !tbaa !39
  %342 = getelementptr inbounds nuw i8, ptr %341, i64 %327
  %343 = sub i32 %325, %336
  %344 = zext i32 %343 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %341, ptr align 1 %342, i64 %344, i1 false)
  %345 = load i32, ptr %85, align 8, !tbaa !84
  %346 = sub i32 %345, %325
  store i32 %346, ptr %85, align 8, !tbaa !84
  %347 = load i32, ptr %81, align 4, !tbaa !74
  %348 = sub i32 %347, %325
  store i32 %348, ptr %81, align 4, !tbaa !74
  %349 = load i64, ptr %86, align 8, !tbaa !75
  %350 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %349, i64 %327), !nosanitize !58
  %351 = extractvalue { i64, i1 } %350, 1, !nosanitize !58
  br i1 %351, label %352, label %353, !prof !59, !nosanitize !58

352:                                              ; preds = %340
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

353:                                              ; preds = %340
  %354 = extractvalue { i64, i1 } %350, 0, !nosanitize !58
  store i64 %354, ptr %86, align 8, !tbaa !75
  %355 = load i32, ptr %87, align 4, !tbaa !77
  %356 = icmp ugt i32 %355, %348
  br i1 %356, label %357, label %358

357:                                              ; preds = %353
  store i32 %348, ptr %87, align 4, !tbaa !77
  br label %358

358:                                              ; preds = %357, %353
  %359 = load i32, ptr %50, align 8, !tbaa !33
  %360 = load i32, ptr %88, align 4, !tbaa !36
  %361 = load ptr, ptr %89, align 8, !tbaa !41
  %362 = zext i32 %360 to i64
  %363 = getelementptr inbounds nuw [2 x i8], ptr %361, i64 %362
  br label %364

364:                                              ; preds = %364, %358
  %365 = phi ptr [ %363, %358 ], [ %367, %364 ]
  %366 = phi i32 [ %360, %358 ], [ %372, %364 ]
  %367 = getelementptr inbounds i8, ptr %365, i64 -2
  %368 = load i16, ptr %367, align 2, !tbaa !63
  %369 = zext i16 %368 to i32
  %370 = tail call i32 @llvm.usub.sat.i32(i32 %369, i32 %359)
  %371 = trunc nuw i32 %370 to i16
  store i16 %371, ptr %367, align 2, !tbaa !63
  %372 = add i32 %366, -1
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %364, !llvm.loop !85

374:                                              ; preds = %364
  %375 = load ptr, ptr %90, align 8, !tbaa !40
  %376 = zext i32 %359 to i64
  %377 = getelementptr inbounds nuw [2 x i8], ptr %375, i64 %376
  br label %378

378:                                              ; preds = %378, %374
  %379 = phi ptr [ %377, %374 ], [ %381, %378 ]
  %380 = phi i32 [ %359, %374 ], [ %386, %378 ]
  %381 = getelementptr inbounds i8, ptr %379, i64 -2
  %382 = load i16, ptr %381, align 2, !tbaa !63
  %383 = zext i16 %382 to i32
  %384 = tail call i32 @llvm.usub.sat.i32(i32 %383, i32 %359)
  %385 = trunc nuw i32 %384 to i16
  store i16 %385, ptr %381, align 2, !tbaa !63
  %386 = add i32 %380, -1
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %378, !llvm.loop !88

388:                                              ; preds = %378
  store i32 1, ptr %91, align 8, !tbaa !64
  %389 = add i32 %325, %336
  br label %390

390:                                              ; preds = %388, %328
  %391 = phi i32 [ %389, %388 ], [ %336, %328 ]
  %392 = load ptr, ptr %30, align 8, !tbaa !20
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 8
  %394 = load i32, ptr %393, align 8, !tbaa !82
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %488, label %396

396:                                              ; preds = %390
  %397 = load ptr, ptr %83, align 8, !tbaa !39
  %398 = load i32, ptr %81, align 4, !tbaa !74
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds nuw i8, ptr %397, i64 %399
  %401 = load i32, ptr %41, align 4, !tbaa !76
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds nuw i8, ptr %400, i64 %402
  %404 = tail call i32 @llvm.umin.i32(i32 %394, i32 %391)
  %405 = icmp eq i32 %391, 0
  br i1 %405, label %428, label %406

406:                                              ; preds = %396
  %407 = sub i32 %394, %404
  store i32 %407, ptr %393, align 8, !tbaa !82
  %408 = load ptr, ptr %392, align 8, !tbaa !83
  %409 = zext i32 %404 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %403, ptr align 1 %408, i64 %409, i1 false)
  %410 = getelementptr inbounds nuw i8, ptr %392, i64 56
  %411 = load ptr, ptr %410, align 8, !tbaa !19
  %412 = getelementptr inbounds nuw i8, ptr %411, i64 48
  %413 = load i32, ptr %412, align 8, !tbaa !30
  switch i32 %413, label %422 [
    i32 1, label %414
    i32 2, label %418
  ]

414:                                              ; preds = %406
  %415 = getelementptr inbounds nuw i8, ptr %392, i64 96
  %416 = load i64, ptr %415, align 8, !tbaa !60
  %417 = tail call i64 @adler32(i64 noundef %416, ptr noundef %403, i32 noundef %404) #11
  store i64 %417, ptr %415, align 8, !tbaa !60
  br label %422

418:                                              ; preds = %406
  %419 = getelementptr inbounds nuw i8, ptr %392, i64 96
  %420 = load i64, ptr %419, align 8, !tbaa !60
  %421 = tail call i64 @crc32(i64 noundef %420, ptr noundef %403, i32 noundef %404) #11
  store i64 %421, ptr %419, align 8, !tbaa !60
  br label %422

422:                                              ; preds = %418, %414, %406
  %423 = load ptr, ptr %392, align 8, !tbaa !83
  %424 = getelementptr inbounds nuw i8, ptr %423, i64 %409
  store ptr %424, ptr %392, align 8, !tbaa !83
  %425 = getelementptr inbounds nuw i8, ptr %392, i64 16
  %426 = load i64, ptr %425, align 8, !tbaa !54
  %427 = add i64 %426, %409
  store i64 %427, ptr %425, align 8, !tbaa !54
  br label %428

428:                                              ; preds = %422, %396
  %429 = phi i32 [ %404, %422 ], [ 0, %396 ]
  %430 = load i32, ptr %41, align 4, !tbaa !76
  %431 = add i32 %430, %429
  store i32 %431, ptr %41, align 4, !tbaa !76
  %432 = load i32, ptr %87, align 4, !tbaa !77
  %433 = add i32 %432, %431
  %434 = icmp ugt i32 %433, 2
  br i1 %434, label %435, label %481

435:                                              ; preds = %428
  %436 = load i32, ptr %81, align 4, !tbaa !74
  %437 = sub i32 %436, %432
  %438 = load ptr, ptr %83, align 8, !tbaa !39
  %439 = zext i32 %437 to i64
  %440 = getelementptr inbounds nuw i8, ptr %438, i64 %439
  %441 = load i8, ptr %440, align 1, !tbaa !8
  %442 = zext i8 %441 to i32
  store i32 %442, ptr %92, align 8, !tbaa !81
  %443 = load i32, ptr %93, align 8, !tbaa !38
  %444 = shl i32 %442, %443
  %445 = add i32 %437, 1
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds nuw i8, ptr %438, i64 %446
  %448 = load i8, ptr %447, align 1, !tbaa !8
  %449 = zext i8 %448 to i32
  %450 = xor i32 %444, %449
  %451 = load i32, ptr %94, align 4, !tbaa !37
  %452 = and i32 %450, %451
  store i32 %452, ptr %92, align 8, !tbaa !81
  br label %453

453:                                              ; preds = %457, %435
  %454 = phi i32 [ %432, %435 ], [ %478, %457 ]
  %455 = phi i32 [ %437, %435 ], [ %477, %457 ]
  %456 = icmp eq i32 %454, 0
  br i1 %456, label %481, label %457

457:                                              ; preds = %453
  %458 = load i32, ptr %92, align 8, !tbaa !81
  %459 = shl i32 %458, %443
  %460 = add i32 %455, 2
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds nuw i8, ptr %438, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !8
  %464 = zext i8 %463 to i32
  %465 = xor i32 %459, %464
  %466 = and i32 %465, %451
  store i32 %466, ptr %92, align 8, !tbaa !81
  %467 = load ptr, ptr %89, align 8, !tbaa !41
  %468 = zext i32 %466 to i64
  %469 = getelementptr inbounds nuw [2 x i8], ptr %467, i64 %468
  %470 = load i16, ptr %469, align 2, !tbaa !63
  %471 = load ptr, ptr %90, align 8, !tbaa !40
  %472 = load i32, ptr %95, align 8, !tbaa !34
  %473 = and i32 %472, %455
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds nuw [2 x i8], ptr %471, i64 %474
  store i16 %470, ptr %475, align 2, !tbaa !63
  %476 = trunc i32 %455 to i16
  store i16 %476, ptr %469, align 2, !tbaa !63
  %477 = add i32 %455, 1
  %478 = add i32 %454, -1
  store i32 %478, ptr %87, align 4, !tbaa !77
  %479 = add i32 %478, %431
  %480 = icmp ult i32 %479, 3
  br i1 %480, label %481, label %453, !llvm.loop !89

481:                                              ; preds = %457, %453, %428
  %482 = icmp ult i32 %431, 262
  br i1 %482, label %483, label %488

483:                                              ; preds = %481
  %484 = load ptr, ptr %30, align 8, !tbaa !20
  %485 = getelementptr inbounds nuw i8, ptr %484, i64 8
  %486 = load i32, ptr %485, align 8, !tbaa !82
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %328, !llvm.loop !90

488:                                              ; preds = %483, %481, %390
  %489 = load i64, ptr %257, align 8, !tbaa !42
  %490 = load i64, ptr %80, align 8, !tbaa !62
  %491 = icmp ult i64 %489, %490
  br i1 %491, label %492, label %519

492:                                              ; preds = %488
  %493 = load i32, ptr %81, align 4, !tbaa !74
  %494 = zext i32 %493 to i64
  %495 = load i32, ptr %41, align 4, !tbaa !76
  %496 = zext i32 %495 to i64
  %497 = add nuw nsw i64 %496, %494
  %498 = icmp ult i64 %489, %497
  br i1 %498, label %499, label %505

499:                                              ; preds = %492
  %500 = sub i64 %490, %497
  %501 = tail call i64 @llvm.umin.i64(i64 %500, i64 258)
  %502 = load ptr, ptr %83, align 8, !tbaa !39
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 %497
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %503, i8 0, i64 %501, i1 false)
  %504 = add nuw nsw i64 %501, %497
  br label %517

505:                                              ; preds = %492
  %506 = add nuw nsw i64 %497, 258
  %507 = icmp ult i64 %489, %506
  br i1 %507, label %508, label %519

508:                                              ; preds = %505
  %509 = sub nuw nsw i64 %506, %489
  %510 = sub i64 %490, %489
  %511 = tail call i64 @llvm.umin.i64(i64 %509, i64 %510)
  %512 = load ptr, ptr %83, align 8, !tbaa !39
  %513 = getelementptr inbounds nuw i8, ptr %512, i64 %489
  %514 = and i64 %511, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %513, i8 0, i64 %514, i1 false)
  %515 = load i64, ptr %257, align 8, !tbaa !42
  %516 = add i64 %515, %511
  br label %517

517:                                              ; preds = %508, %499
  %518 = phi i64 [ %504, %499 ], [ %516, %508 ]
  store i64 %518, ptr %257, align 8, !tbaa !42
  br label %519

519:                                              ; preds = %517, %505, %488
  %520 = load i32, ptr %41, align 4, !tbaa !76
  %521 = icmp ugt i32 %520, 2
  br i1 %521, label %291, label %522, !llvm.loop !92

522:                                              ; preds = %519, %288
  %523 = phi i32 [ %289, %288 ], [ %520, %519 ]
  %524 = load i32, ptr %81, align 4, !tbaa !74
  %525 = add i32 %524, %523
  store i32 %525, ptr %81, align 4, !tbaa !74
  %526 = zext i32 %525 to i64
  store i64 %526, ptr %86, align 8, !tbaa !75
  store i32 %523, ptr %87, align 4, !tbaa !77
  store i32 0, ptr %41, align 4, !tbaa !76
  %527 = getelementptr inbounds nuw i8, ptr %30, i64 184
  store i32 2, ptr %527, align 8, !tbaa !78
  %528 = getelementptr inbounds nuw i8, ptr %30, i64 160
  store i32 2, ptr %528, align 8, !tbaa !79
  %529 = getelementptr inbounds nuw i8, ptr %30, i64 168
  store i32 0, ptr %529, align 8, !tbaa !80
  store ptr %78, ptr %0, align 8, !tbaa !83
  store i32 %77, ptr %76, align 8, !tbaa !82
  store i32 %32, ptr %31, align 8, !tbaa !30
  br label %530

530:                                              ; preds = %522, %40, %36, %28, %24
  %531 = phi i32 [ 0, %522 ], [ -2, %24 ], [ -2, %40 ], [ -2, %36 ], [ -2, %28 ]
  ret i32 %531
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateGetDictionary(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %50 [
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
  %30 = add i32 %29, %27
  %31 = getelementptr inbounds nuw i8, ptr %25, i64 80
  %32 = load i32, ptr %31, align 8, !tbaa !33
  %33 = tail call i32 @llvm.umin.i32(i32 %30, i32 %32)
  %34 = icmp ne ptr %1, null
  %35 = icmp ne i32 %33, 0
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %23
  %38 = getelementptr inbounds nuw i8, ptr %25, i64 96
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  %40 = zext i32 %27 to i64
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 %40
  %42 = zext i32 %29 to i64
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  %44 = zext i32 %33 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %46, i64 %44, i1 false)
  br label %47

47:                                               ; preds = %37, %23
  %48 = icmp eq ptr %2, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  store i32 %33, ptr %2, align 4, !tbaa !4
  br label %50

50:                                               ; preds = %49, %47, %20, %17, %13, %9, %5, %3
  %51 = phi i32 [ 0, %47 ], [ 0, %49 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ -2, %20 ]
  ret i32 %51
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
  store i64 0, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i32 2, ptr %24, align 8, !tbaa !55
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 40
  store i64 0, ptr %27, align 8, !tbaa !56
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %29, ptr %30, align 8, !tbaa !57
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 48
  %32 = load i32, ptr %31, align 8, !tbaa !30
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %32), !nosanitize !58
  %36 = extractvalue { i32, i1 } %35, 1, !nosanitize !58
  br i1 %36, label %37, label %38, !prof !59, !nosanitize !58

37:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !58
  unreachable, !nosanitize !58

38:                                               ; preds = %34
  %39 = extractvalue { i32, i1 } %35, 0, !nosanitize !58
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
  %46 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %49

47:                                               ; preds = %40
  %48 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %50, ptr %51, align 8, !tbaa !60
  %52 = getelementptr inbounds nuw i8, ptr %26, i64 76
  store i32 -2, ptr %52, align 4, !tbaa !61
  tail call void @_tr_init(ptr noundef %26) #11
  br label %53

53:                                               ; preds = %49, %18, %15, %11, %7, %3, %1
  %54 = phi i32 [ 0, %49 ], [ -2, %1 ], [ -2, %3 ], [ -2, %7 ], [ -2, %11 ], [ -2, %15 ], [ -2, %18 ]
  ret i32 %54
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateSetHeader(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #5 {
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
define dso_local range(i32 -5, 1) i32 @deflatePending(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #7 {
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
  %29 = load i32, ptr %28, align 4, !tbaa !93
  store i32 %29, ptr %2, align 4, !tbaa !4
  br label %30

30:                                               ; preds = %25, %23
  %31 = icmp eq ptr %1, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 40
  %36 = load i64, ptr %35, align 8, !tbaa !56
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
define dso_local range(i32 -2, 1) i32 @deflateUsed(ptr noundef readonly captures(address) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
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
  %28 = load i32, ptr %27, align 8, !tbaa !94
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
  %31 = load ptr, ptr %30, align 8, !tbaa !57
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
  %40 = load i32, ptr %35, align 4, !tbaa !93
  %41 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 16, i32 %40), !nosanitize !58
  %42 = extractvalue { i32, i1 } %41, 1, !nosanitize !58
  br i1 %42, label %43, label %44, !prof !59, !nosanitize !58

43:                                               ; preds = %60, %44, %37
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

44:                                               ; preds = %37
  %45 = extractvalue { i32, i1 } %41, 0, !nosanitize !58
  %46 = tail call i32 @llvm.smin.i32(i32 %45, i32 %38)
  %47 = shl nuw i32 1, %46
  %48 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %47, i32 -1)
  %49 = extractvalue { i32, i1 } %48, 1, !nosanitize !58
  br i1 %49, label %43, label %50, !prof !59, !nosanitize !58

50:                                               ; preds = %44
  %51 = extractvalue { i32, i1 } %48, 0, !nosanitize !58
  %52 = and i32 %51, %39
  %53 = shl i32 %52, %40
  %54 = load i16, ptr %36, align 8, !tbaa !95
  %55 = trunc i32 %53 to i16
  %56 = or i16 %54, %55
  store i16 %56, ptr %36, align 8, !tbaa !95
  %57 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %40, i32 %46), !nosanitize !58
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !58
  br i1 %58, label %59, label %60, !prof !59, !nosanitize !58

59:                                               ; preds = %50
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !58
  unreachable, !nosanitize !58

60:                                               ; preds = %50
  %61 = extractvalue { i32, i1 } %57, 0, !nosanitize !58
  store i32 %61, ptr %35, align 4, !tbaa !93
  tail call void @_tr_flush_bits(ptr noundef %25) #11
  %62 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %38, i32 %46), !nosanitize !58
  %63 = extractvalue { i32, i1 } %62, 1, !nosanitize !58
  br i1 %63, label %43, label %64, !prof !59, !nosanitize !58

64:                                               ; preds = %60
  %65 = extractvalue { i32, i1 } %62, 0, !nosanitize !58
  %66 = ashr i32 %39, %46
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %37, !llvm.loop !96

68:                                               ; preds = %64, %27, %23, %20, %17, %13, %9, %5, %3
  %69 = phi i32 [ -5, %23 ], [ -2, %20 ], [ -5, %27 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ 0, %64 ]
  ret i32 %69
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %866, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %866, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %866, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %866, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %866

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %866 [
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
  br i1 %30, label %866, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds nuw i8, ptr %25, i64 196
  %33 = getelementptr inbounds nuw i8, ptr %25, i64 200
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %2, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, ptr %32, align 4, !tbaa !50
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %38
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8, !tbaa !97
  %42 = zext nneg i32 %27 to i64
  %43 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %42
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %45 = load ptr, ptr %44, align 8, !tbaa !97
  %46 = icmp eq ptr %41, %45
  br i1 %46, label %827, label %47

47:                                               ; preds = %36, %31
  %48 = getelementptr inbounds nuw i8, ptr %25, i64 76
  %49 = load i32, ptr %48, align 4, !tbaa !61
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %827, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %53 = load ptr, ptr %52, align 8, !tbaa !15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %824, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = icmp eq ptr %57, null
  %59 = icmp eq ptr %25, null
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %824, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %25, align 8, !tbaa !20
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %64, label %824

64:                                               ; preds = %61
  %65 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %66 = load i32, ptr %65, align 8, !tbaa !29
  switch i32 %66, label %824 [
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
  %69 = load ptr, ptr %68, align 8, !tbaa !98
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
  br label %824

85:                                               ; preds = %78
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %87 = load i32, ptr %86, align 8, !tbaa !99
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %90, ptr %91, align 8, !tbaa !9
  br label %800

92:                                               ; preds = %85
  store i32 5, ptr %48, align 4, !tbaa !61
  %93 = getelementptr inbounds nuw i8, ptr %25, i64 40
  %94 = load i64, ptr %93, align 8, !tbaa !56
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %126, label %96

96:                                               ; preds = %92
  tail call void @_tr_flush_bits(ptr noundef nonnull %25) #11
  %97 = load i64, ptr %93, align 8, !tbaa !56
  %98 = load i32, ptr %86, align 8, !tbaa !99
  %99 = zext i32 %98 to i64
  %100 = tail call i64 @llvm.umin.i64(i64 %97, i64 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %122, label %102

102:                                              ; preds = %96
  %103 = trunc nuw i64 %100 to i32
  %104 = load ptr, ptr %68, align 8, !tbaa !98
  %105 = getelementptr inbounds nuw i8, ptr %25, i64 32
  %106 = load ptr, ptr %105, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %104, ptr align 1 %106, i64 %100, i1 false)
  %107 = load ptr, ptr %68, align 8, !tbaa !98
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 %100
  store ptr %108, ptr %68, align 8, !tbaa !98
  %109 = load ptr, ptr %105, align 8, !tbaa !57
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 %100
  store ptr %110, ptr %105, align 8, !tbaa !57
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %112 = load i64, ptr %111, align 8, !tbaa !100
  %113 = add i64 %112, %100
  store i64 %113, ptr %111, align 8, !tbaa !100
  %114 = load i32, ptr %86, align 8, !tbaa !99
  %115 = sub i32 %114, %103
  store i32 %115, ptr %86, align 8, !tbaa !99
  %116 = load i64, ptr %93, align 8, !tbaa !56
  %117 = sub i64 %116, %100
  store i64 %117, ptr %93, align 8, !tbaa !56
  %118 = icmp eq i64 %116, %100
  br i1 %118, label %119, label %122

119:                                              ; preds = %102
  %120 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %121 = load ptr, ptr %120, align 8, !tbaa !44
  store ptr %121, ptr %105, align 8, !tbaa !57
  br label %122

122:                                              ; preds = %119, %102, %96
  %123 = load i32, ptr %86, align 8, !tbaa !99
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %800

126:                                              ; preds = %92
  br i1 %74, label %128, label %141

127:                                              ; preds = %128
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !58
  unreachable, !nosanitize !58

128:                                              ; preds = %126
  %129 = add i32 %49, 1073741824
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %127, !prof !101, !nosanitize !58

131:                                              ; preds = %128
  %132 = shl i32 %49, 1
  %133 = icmp sgt i32 %49, 4
  %134 = select i1 %133, i32 9, i32 0
  %135 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %132, i32 %134), !nosanitize !58
  %136 = extractvalue { i32, i1 } %135, 0, !nosanitize !58
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %139, ptr %140, align 8, !tbaa !9
  br label %800

141:                                              ; preds = %131, %126, %122
  %142 = load i32, ptr %79, align 8, !tbaa !29
  switch i32 %142, label %154 [
    i32 666, label %143
    i32 42, label %149
  ]

143:                                              ; preds = %141
  %144 = load i32, ptr %72, align 8, !tbaa !82
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %148 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %147, ptr %148, align 8, !tbaa !9
  br label %800

149:                                              ; preds = %141
  %150 = getelementptr inbounds nuw i8, ptr %25, i64 48
  %151 = load i32, ptr %150, align 8, !tbaa !30
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 113, ptr %79, align 8, !tbaa !29
  br label %154

154:                                              ; preds = %153, %149, %143, %141
  %155 = load i32, ptr %79, align 8, !tbaa !29
  %156 = icmp eq i32 %155, 42
  br i1 %156, label %157, label %230

157:                                              ; preds = %154
  %158 = getelementptr inbounds nuw i8, ptr %25, i64 84
  %159 = load i32, ptr %158, align 4, !tbaa !32
  %160 = shl i32 %159, 12
  %161 = add i32 %160, -30720
  %162 = load i32, ptr %33, align 8, !tbaa !51
  %163 = icmp sgt i32 %162, 1
  br i1 %163, label %172, label %164

164:                                              ; preds = %157
  %165 = load i32, ptr %32, align 4, !tbaa !50
  %166 = icmp slt i32 %165, 2
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = icmp slt i32 %165, 6
  br i1 %168, label %172, label %169

169:                                              ; preds = %167
  %170 = icmp eq i32 %165, 6
  %171 = select i1 %170, i32 128, i32 192
  br label %172

172:                                              ; preds = %169, %167, %164, %157
  %173 = phi i32 [ 64, %167 ], [ 0, %157 ], [ %171, %169 ], [ 0, %164 ]
  %174 = or disjoint i32 %173, %161
  %175 = getelementptr inbounds nuw i8, ptr %25, i64 172
  %176 = load i32, ptr %175, align 4, !tbaa !74
  %177 = icmp eq i32 %176, 0
  %178 = or disjoint i32 %174, 32
  %179 = select i1 %177, i32 %174, i32 %178
  %180 = urem i32 %179, 31
  %181 = or disjoint i32 %180, %179
  %182 = lshr i32 %179, 8
  %183 = trunc i32 %182 to i8
  %184 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %185 = load ptr, ptr %184, align 8, !tbaa !44
  %186 = load i64, ptr %93, align 8, !tbaa !56
  %187 = add i64 %186, 1
  store i64 %187, ptr %93, align 8, !tbaa !56
  %188 = getelementptr inbounds nuw i8, ptr %185, i64 %186
  store i8 %183, ptr %188, align 1, !tbaa !8
  %189 = trunc i32 %181 to i8
  %190 = xor i8 %189, 31
  %191 = load ptr, ptr %184, align 8, !tbaa !44
  %192 = load i64, ptr %93, align 8, !tbaa !56
  %193 = add i64 %192, 1
  store i64 %193, ptr %93, align 8, !tbaa !56
  %194 = getelementptr inbounds nuw i8, ptr %191, i64 %192
  store i8 %190, ptr %194, align 1, !tbaa !8
  %195 = load i32, ptr %175, align 4, !tbaa !74
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %224, label %197

197:                                              ; preds = %172
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %199 = load i64, ptr %198, align 8, !tbaa !60
  %200 = lshr i64 %199, 16
  %201 = lshr i64 %199, 24
  %202 = trunc i64 %201 to i8
  %203 = load ptr, ptr %184, align 8, !tbaa !44
  %204 = load i64, ptr %93, align 8, !tbaa !56
  %205 = add i64 %204, 1
  store i64 %205, ptr %93, align 8, !tbaa !56
  %206 = getelementptr inbounds nuw i8, ptr %203, i64 %204
  store i8 %202, ptr %206, align 1, !tbaa !8
  %207 = trunc i64 %200 to i8
  %208 = load ptr, ptr %184, align 8, !tbaa !44
  %209 = load i64, ptr %93, align 8, !tbaa !56
  %210 = add i64 %209, 1
  store i64 %210, ptr %93, align 8, !tbaa !56
  %211 = getelementptr inbounds nuw i8, ptr %208, i64 %209
  store i8 %207, ptr %211, align 1, !tbaa !8
  %212 = load i64, ptr %198, align 8, !tbaa !60
  %213 = trunc i64 %212 to i8
  %214 = lshr i64 %212, 8
  %215 = trunc i64 %214 to i8
  %216 = load ptr, ptr %184, align 8, !tbaa !44
  %217 = load i64, ptr %93, align 8, !tbaa !56
  %218 = add i64 %217, 1
  store i64 %218, ptr %93, align 8, !tbaa !56
  %219 = getelementptr inbounds nuw i8, ptr %216, i64 %217
  store i8 %215, ptr %219, align 1, !tbaa !8
  %220 = load ptr, ptr %184, align 8, !tbaa !44
  %221 = load i64, ptr %93, align 8, !tbaa !56
  %222 = add i64 %221, 1
  store i64 %222, ptr %93, align 8, !tbaa !56
  %223 = getelementptr inbounds nuw i8, ptr %220, i64 %221
  store i8 %213, ptr %223, align 1, !tbaa !8
  br label %224

224:                                              ; preds = %197, %172
  %225 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %226 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %225, ptr %226, align 8, !tbaa !60
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %227 = load i64, ptr %93, align 8, !tbaa !56
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %224
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %800

230:                                              ; preds = %224, %154
  %231 = load i32, ptr %79, align 8, !tbaa !29
  %232 = icmp eq i32 %231, 57
  br i1 %232, label %233, label %412

233:                                              ; preds = %230
  %234 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %235 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %234, ptr %235, align 8, !tbaa !60
  %236 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %237 = load ptr, ptr %236, align 8, !tbaa !44
  %238 = load i64, ptr %93, align 8, !tbaa !56
  %239 = add i64 %238, 1
  store i64 %239, ptr %93, align 8, !tbaa !56
  %240 = getelementptr inbounds nuw i8, ptr %237, i64 %238
  store i8 31, ptr %240, align 1, !tbaa !8
  %241 = load ptr, ptr %236, align 8, !tbaa !44
  %242 = load i64, ptr %93, align 8, !tbaa !56
  %243 = add i64 %242, 1
  store i64 %243, ptr %93, align 8, !tbaa !56
  %244 = getelementptr inbounds nuw i8, ptr %241, i64 %242
  store i8 -117, ptr %244, align 1, !tbaa !8
  %245 = load ptr, ptr %236, align 8, !tbaa !44
  %246 = load i64, ptr %93, align 8, !tbaa !56
  %247 = add i64 %246, 1
  store i64 %247, ptr %93, align 8, !tbaa !56
  %248 = getelementptr inbounds nuw i8, ptr %245, i64 %246
  store i8 8, ptr %248, align 1, !tbaa !8
  %249 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %250 = load ptr, ptr %249, align 8, !tbaa !31
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %294

252:                                              ; preds = %233
  %253 = load ptr, ptr %236, align 8, !tbaa !44
  %254 = load i64, ptr %93, align 8, !tbaa !56
  %255 = add i64 %254, 1
  store i64 %255, ptr %93, align 8, !tbaa !56
  %256 = getelementptr inbounds nuw i8, ptr %253, i64 %254
  store i8 0, ptr %256, align 1, !tbaa !8
  %257 = load ptr, ptr %236, align 8, !tbaa !44
  %258 = load i64, ptr %93, align 8, !tbaa !56
  %259 = add i64 %258, 1
  store i64 %259, ptr %93, align 8, !tbaa !56
  %260 = getelementptr inbounds nuw i8, ptr %257, i64 %258
  store i8 0, ptr %260, align 1, !tbaa !8
  %261 = load ptr, ptr %236, align 8, !tbaa !44
  %262 = load i64, ptr %93, align 8, !tbaa !56
  %263 = add i64 %262, 1
  store i64 %263, ptr %93, align 8, !tbaa !56
  %264 = getelementptr inbounds nuw i8, ptr %261, i64 %262
  store i8 0, ptr %264, align 1, !tbaa !8
  %265 = load ptr, ptr %236, align 8, !tbaa !44
  %266 = load i64, ptr %93, align 8, !tbaa !56
  %267 = add i64 %266, 1
  store i64 %267, ptr %93, align 8, !tbaa !56
  %268 = getelementptr inbounds nuw i8, ptr %265, i64 %266
  store i8 0, ptr %268, align 1, !tbaa !8
  %269 = load ptr, ptr %236, align 8, !tbaa !44
  %270 = load i64, ptr %93, align 8, !tbaa !56
  %271 = add i64 %270, 1
  store i64 %271, ptr %93, align 8, !tbaa !56
  %272 = getelementptr inbounds nuw i8, ptr %269, i64 %270
  store i8 0, ptr %272, align 1, !tbaa !8
  %273 = load i32, ptr %32, align 4, !tbaa !50
  %274 = icmp eq i32 %273, 9
  br i1 %274, label %281, label %275

275:                                              ; preds = %252
  %276 = load i32, ptr %33, align 8, !tbaa !51
  %277 = icmp sgt i32 %276, 1
  %278 = icmp slt i32 %273, 2
  %279 = or i1 %278, %277
  %280 = select i1 %279, i8 4, i8 0
  br label %281

281:                                              ; preds = %275, %252
  %282 = phi i8 [ %280, %275 ], [ 2, %252 ]
  %283 = load ptr, ptr %236, align 8, !tbaa !44
  %284 = load i64, ptr %93, align 8, !tbaa !56
  %285 = add i64 %284, 1
  store i64 %285, ptr %93, align 8, !tbaa !56
  %286 = getelementptr inbounds nuw i8, ptr %283, i64 %284
  store i8 %282, ptr %286, align 1, !tbaa !8
  %287 = load ptr, ptr %236, align 8, !tbaa !44
  %288 = load i64, ptr %93, align 8, !tbaa !56
  %289 = add i64 %288, 1
  store i64 %289, ptr %93, align 8, !tbaa !56
  %290 = getelementptr inbounds nuw i8, ptr %287, i64 %288
  store i8 3, ptr %290, align 1, !tbaa !8
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %291 = load i64, ptr %93, align 8, !tbaa !56
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %412, label %293

293:                                              ; preds = %281
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %800

294:                                              ; preds = %233
  %295 = getelementptr inbounds nuw i8, ptr %250, i64 68
  %296 = load i32, ptr %295, align 4, !tbaa !102
  %297 = icmp eq i32 %296, 0
  %298 = select i1 %297, i8 0, i8 2
  %299 = load i32, ptr %250, align 8, !tbaa !104
  %300 = icmp ne i32 %299, 0
  %301 = zext i1 %300 to i8
  %302 = or disjoint i8 %298, %301
  %303 = getelementptr inbounds nuw i8, ptr %250, i64 24
  %304 = load ptr, ptr %303, align 8, !tbaa !105
  %305 = icmp eq ptr %304, null
  %306 = select i1 %305, i8 0, i8 4
  %307 = or disjoint i8 %302, %306
  %308 = getelementptr inbounds nuw i8, ptr %250, i64 40
  %309 = load ptr, ptr %308, align 8, !tbaa !106
  %310 = icmp eq ptr %309, null
  %311 = select i1 %310, i8 0, i8 8
  %312 = or disjoint i8 %307, %311
  %313 = getelementptr inbounds nuw i8, ptr %250, i64 56
  %314 = load ptr, ptr %313, align 8, !tbaa !107
  %315 = icmp eq ptr %314, null
  %316 = select i1 %315, i8 0, i8 16
  %317 = or disjoint i8 %312, %316
  %318 = load ptr, ptr %236, align 8, !tbaa !44
  %319 = load i64, ptr %93, align 8, !tbaa !56
  %320 = add i64 %319, 1
  store i64 %320, ptr %93, align 8, !tbaa !56
  %321 = getelementptr inbounds nuw i8, ptr %318, i64 %319
  store i8 %317, ptr %321, align 1, !tbaa !8
  %322 = load ptr, ptr %249, align 8, !tbaa !31
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 8
  %324 = load i64, ptr %323, align 8, !tbaa !108
  %325 = trunc i64 %324 to i8
  %326 = load ptr, ptr %236, align 8, !tbaa !44
  %327 = load i64, ptr %93, align 8, !tbaa !56
  %328 = add i64 %327, 1
  store i64 %328, ptr %93, align 8, !tbaa !56
  %329 = getelementptr inbounds nuw i8, ptr %326, i64 %327
  store i8 %325, ptr %329, align 1, !tbaa !8
  %330 = load ptr, ptr %249, align 8, !tbaa !31
  %331 = getelementptr inbounds nuw i8, ptr %330, i64 8
  %332 = load i64, ptr %331, align 8, !tbaa !108
  %333 = lshr i64 %332, 8
  %334 = trunc i64 %333 to i8
  %335 = load ptr, ptr %236, align 8, !tbaa !44
  %336 = load i64, ptr %93, align 8, !tbaa !56
  %337 = add i64 %336, 1
  store i64 %337, ptr %93, align 8, !tbaa !56
  %338 = getelementptr inbounds nuw i8, ptr %335, i64 %336
  store i8 %334, ptr %338, align 1, !tbaa !8
  %339 = load ptr, ptr %249, align 8, !tbaa !31
  %340 = getelementptr inbounds nuw i8, ptr %339, i64 8
  %341 = load i64, ptr %340, align 8, !tbaa !108
  %342 = lshr i64 %341, 16
  %343 = trunc i64 %342 to i8
  %344 = load ptr, ptr %236, align 8, !tbaa !44
  %345 = load i64, ptr %93, align 8, !tbaa !56
  %346 = add i64 %345, 1
  store i64 %346, ptr %93, align 8, !tbaa !56
  %347 = getelementptr inbounds nuw i8, ptr %344, i64 %345
  store i8 %343, ptr %347, align 1, !tbaa !8
  %348 = load ptr, ptr %249, align 8, !tbaa !31
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 8
  %350 = load i64, ptr %349, align 8, !tbaa !108
  %351 = lshr i64 %350, 24
  %352 = trunc i64 %351 to i8
  %353 = load ptr, ptr %236, align 8, !tbaa !44
  %354 = load i64, ptr %93, align 8, !tbaa !56
  %355 = add i64 %354, 1
  store i64 %355, ptr %93, align 8, !tbaa !56
  %356 = getelementptr inbounds nuw i8, ptr %353, i64 %354
  store i8 %352, ptr %356, align 1, !tbaa !8
  %357 = load i32, ptr %32, align 4, !tbaa !50
  %358 = icmp eq i32 %357, 9
  br i1 %358, label %365, label %359

359:                                              ; preds = %294
  %360 = load i32, ptr %33, align 8, !tbaa !51
  %361 = icmp sgt i32 %360, 1
  %362 = icmp slt i32 %357, 2
  %363 = or i1 %362, %361
  %364 = select i1 %363, i8 4, i8 0
  br label %365

365:                                              ; preds = %359, %294
  %366 = phi i8 [ %364, %359 ], [ 2, %294 ]
  %367 = load ptr, ptr %236, align 8, !tbaa !44
  %368 = load i64, ptr %93, align 8, !tbaa !56
  %369 = add i64 %368, 1
  store i64 %369, ptr %93, align 8, !tbaa !56
  %370 = getelementptr inbounds nuw i8, ptr %367, i64 %368
  store i8 %366, ptr %370, align 1, !tbaa !8
  %371 = load ptr, ptr %249, align 8, !tbaa !31
  %372 = getelementptr inbounds nuw i8, ptr %371, i64 20
  %373 = load i32, ptr %372, align 4, !tbaa !109
  %374 = trunc i32 %373 to i8
  %375 = load ptr, ptr %236, align 8, !tbaa !44
  %376 = load i64, ptr %93, align 8, !tbaa !56
  %377 = add i64 %376, 1
  store i64 %377, ptr %93, align 8, !tbaa !56
  %378 = getelementptr inbounds nuw i8, ptr %375, i64 %376
  store i8 %374, ptr %378, align 1, !tbaa !8
  %379 = load ptr, ptr %249, align 8, !tbaa !31
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 24
  %381 = load ptr, ptr %380, align 8, !tbaa !105
  %382 = icmp eq ptr %381, null
  br i1 %382, label %400, label %383

383:                                              ; preds = %365
  %384 = getelementptr inbounds nuw i8, ptr %379, i64 32
  %385 = load i32, ptr %384, align 8, !tbaa !110
  %386 = trunc i32 %385 to i8
  %387 = load ptr, ptr %236, align 8, !tbaa !44
  %388 = load i64, ptr %93, align 8, !tbaa !56
  %389 = add i64 %388, 1
  store i64 %389, ptr %93, align 8, !tbaa !56
  %390 = getelementptr inbounds nuw i8, ptr %387, i64 %388
  store i8 %386, ptr %390, align 1, !tbaa !8
  %391 = load ptr, ptr %249, align 8, !tbaa !31
  %392 = getelementptr inbounds nuw i8, ptr %391, i64 32
  %393 = load i32, ptr %392, align 8, !tbaa !110
  %394 = lshr i32 %393, 8
  %395 = trunc i32 %394 to i8
  %396 = load ptr, ptr %236, align 8, !tbaa !44
  %397 = load i64, ptr %93, align 8, !tbaa !56
  %398 = add i64 %397, 1
  store i64 %398, ptr %93, align 8, !tbaa !56
  %399 = getelementptr inbounds nuw i8, ptr %396, i64 %397
  store i8 %395, ptr %399, align 1, !tbaa !8
  br label %400

400:                                              ; preds = %383, %365
  %401 = load ptr, ptr %249, align 8, !tbaa !31
  %402 = getelementptr inbounds nuw i8, ptr %401, i64 68
  %403 = load i32, ptr %402, align 4, !tbaa !102
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %410, label %405

405:                                              ; preds = %400
  %406 = load i64, ptr %235, align 8, !tbaa !60
  %407 = load ptr, ptr %236, align 8, !tbaa !44
  %408 = load i64, ptr %93, align 8, !tbaa !56
  %409 = tail call i64 @crc32_z(i64 noundef %406, ptr noundef %407, i64 noundef %408) #11
  store i64 %409, ptr %235, align 8, !tbaa !60
  br label %410

410:                                              ; preds = %405, %400
  %411 = getelementptr inbounds nuw i8, ptr %25, i64 64
  store i64 0, ptr %411, align 8, !tbaa !111
  store i32 69, ptr %79, align 8, !tbaa !29
  br label %412

412:                                              ; preds = %410, %281, %230
  %413 = load i32, ptr %79, align 8, !tbaa !29
  %414 = icmp eq i32 %413, 69
  br i1 %414, label %415, label %526

415:                                              ; preds = %412
  %416 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %417 = load ptr, ptr %416, align 8, !tbaa !31
  %418 = getelementptr inbounds nuw i8, ptr %417, i64 24
  %419 = load ptr, ptr %418, align 8, !tbaa !105
  %420 = icmp eq ptr %419, null
  br i1 %420, label %525, label %421

421:                                              ; preds = %415
  %422 = load i64, ptr %93, align 8, !tbaa !56
  %423 = getelementptr inbounds nuw i8, ptr %417, i64 32
  %424 = load i32, ptr %423, align 8, !tbaa !110
  %425 = and i32 %424, 65535
  %426 = zext nneg i32 %425 to i64
  %427 = getelementptr inbounds nuw i8, ptr %25, i64 64
  %428 = load i64, ptr %427, align 8, !tbaa !111
  %429 = sub i64 %426, %428
  %430 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %431 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %433 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %434

434:                                              ; preds = %498, %421
  %435 = phi i64 [ %422, %421 ], [ %499, %498 ]
  %436 = phi i64 [ %429, %421 ], [ %500, %498 ]
  %437 = load i64, ptr %93, align 8, !tbaa !56
  %438 = add i64 %437, %436
  %439 = load i64, ptr %430, align 8, !tbaa !45
  %440 = icmp ugt i64 %438, %439
  br i1 %440, label %441, label %501

441:                                              ; preds = %434
  %442 = sub i64 %439, %437
  %443 = load ptr, ptr %431, align 8, !tbaa !44
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 %437
  %445 = load ptr, ptr %416, align 8, !tbaa !31
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 24
  %447 = load ptr, ptr %446, align 8, !tbaa !105
  %448 = load i64, ptr %427, align 8, !tbaa !111
  %449 = getelementptr inbounds nuw i8, ptr %447, i64 %448
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %444, ptr align 1 %449, i64 %442, i1 false)
  %450 = load i64, ptr %430, align 8, !tbaa !45
  store i64 %450, ptr %93, align 8, !tbaa !56
  %451 = load ptr, ptr %416, align 8, !tbaa !31
  %452 = getelementptr inbounds nuw i8, ptr %451, i64 68
  %453 = load i32, ptr %452, align 4, !tbaa !102
  %454 = icmp ne i32 %453, 0
  %455 = icmp ugt i64 %450, %435
  %456 = select i1 %454, i1 %455, i1 false
  br i1 %456, label %457, label %463

457:                                              ; preds = %441
  %458 = load i64, ptr %432, align 8, !tbaa !60
  %459 = load ptr, ptr %431, align 8, !tbaa !44
  %460 = getelementptr inbounds nuw i8, ptr %459, i64 %435
  %461 = sub nuw i64 %450, %435
  %462 = tail call i64 @crc32_z(i64 noundef %458, ptr noundef %460, i64 noundef %461) #11
  store i64 %462, ptr %432, align 8, !tbaa !60
  br label %463

463:                                              ; preds = %457, %441
  %464 = load i64, ptr %427, align 8, !tbaa !111
  %465 = add i64 %464, %442
  store i64 %465, ptr %427, align 8, !tbaa !111
  %466 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %466) #11
  %467 = getelementptr inbounds nuw i8, ptr %466, i64 40
  %468 = load i64, ptr %467, align 8, !tbaa !56
  %469 = load i32, ptr %86, align 8, !tbaa !99
  %470 = zext i32 %469 to i64
  %471 = tail call i64 @llvm.umin.i64(i64 %468, i64 %470)
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %492, label %473

473:                                              ; preds = %463
  %474 = trunc nuw i64 %471 to i32
  %475 = load ptr, ptr %68, align 8, !tbaa !98
  %476 = getelementptr inbounds nuw i8, ptr %466, i64 32
  %477 = load ptr, ptr %476, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %475, ptr align 1 %477, i64 %471, i1 false)
  %478 = load ptr, ptr %68, align 8, !tbaa !98
  %479 = getelementptr inbounds nuw i8, ptr %478, i64 %471
  store ptr %479, ptr %68, align 8, !tbaa !98
  %480 = load ptr, ptr %476, align 8, !tbaa !57
  %481 = getelementptr inbounds nuw i8, ptr %480, i64 %471
  store ptr %481, ptr %476, align 8, !tbaa !57
  %482 = load i64, ptr %433, align 8, !tbaa !100
  %483 = add i64 %482, %471
  store i64 %483, ptr %433, align 8, !tbaa !100
  %484 = load i32, ptr %86, align 8, !tbaa !99
  %485 = sub i32 %484, %474
  store i32 %485, ptr %86, align 8, !tbaa !99
  %486 = load i64, ptr %467, align 8, !tbaa !56
  %487 = sub i64 %486, %471
  store i64 %487, ptr %467, align 8, !tbaa !56
  %488 = icmp eq i64 %486, %471
  br i1 %488, label %489, label %492

489:                                              ; preds = %473
  %490 = getelementptr inbounds nuw i8, ptr %466, i64 16
  %491 = load ptr, ptr %490, align 8, !tbaa !44
  store ptr %491, ptr %476, align 8, !tbaa !57
  br label %492

492:                                              ; preds = %489, %473, %463
  %493 = load i64, ptr %93, align 8, !tbaa !56
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %496, label %495

495:                                              ; preds = %492
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %498

496:                                              ; preds = %492
  %497 = sub i64 %436, %442
  br label %498

498:                                              ; preds = %496, %495
  %499 = phi i64 [ %435, %495 ], [ 0, %496 ]
  %500 = phi i64 [ %436, %495 ], [ %497, %496 ]
  br i1 %494, label %434, label %524, !llvm.loop !112

501:                                              ; preds = %434
  %502 = load ptr, ptr %431, align 8, !tbaa !44
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 %437
  %504 = load ptr, ptr %416, align 8, !tbaa !31
  %505 = getelementptr inbounds nuw i8, ptr %504, i64 24
  %506 = load ptr, ptr %505, align 8, !tbaa !105
  %507 = load i64, ptr %427, align 8, !tbaa !111
  %508 = getelementptr inbounds nuw i8, ptr %506, i64 %507
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %503, ptr align 1 %508, i64 %436, i1 false)
  %509 = load i64, ptr %93, align 8, !tbaa !56
  %510 = add i64 %509, %436
  store i64 %510, ptr %93, align 8, !tbaa !56
  %511 = load ptr, ptr %416, align 8, !tbaa !31
  %512 = getelementptr inbounds nuw i8, ptr %511, i64 68
  %513 = load i32, ptr %512, align 4, !tbaa !102
  %514 = icmp ne i32 %513, 0
  %515 = icmp ugt i64 %510, %435
  %516 = select i1 %514, i1 %515, i1 false
  br i1 %516, label %517, label %523

517:                                              ; preds = %501
  %518 = load i64, ptr %432, align 8, !tbaa !60
  %519 = load ptr, ptr %431, align 8, !tbaa !44
  %520 = getelementptr inbounds nuw i8, ptr %519, i64 %435
  %521 = sub nuw i64 %510, %435
  %522 = tail call i64 @crc32_z(i64 noundef %518, ptr noundef %520, i64 noundef %521) #11
  store i64 %522, ptr %432, align 8, !tbaa !60
  br label %523

523:                                              ; preds = %517, %501
  store i64 0, ptr %427, align 8, !tbaa !111
  br label %524

524:                                              ; preds = %523, %498
  br i1 %440, label %800, label %525

525:                                              ; preds = %524, %415
  store i32 73, ptr %79, align 8, !tbaa !29
  br label %526

526:                                              ; preds = %525, %412
  %527 = load i32, ptr %79, align 8, !tbaa !29
  %528 = icmp eq i32 %527, 73
  br i1 %528, label %529, label %621

529:                                              ; preds = %526
  %530 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %531 = load ptr, ptr %530, align 8, !tbaa !31
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 40
  %533 = load ptr, ptr %532, align 8, !tbaa !106
  %534 = icmp eq ptr %533, null
  br i1 %534, label %620, label %535

535:                                              ; preds = %529
  %536 = load i64, ptr %93, align 8, !tbaa !56
  %537 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %538 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %539 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %540 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %541 = getelementptr inbounds nuw i8, ptr %25, i64 64
  br label %542

542:                                              ; preds = %591, %535
  %543 = phi i64 [ %536, %535 ], [ %592, %591 ]
  %544 = load i64, ptr %93, align 8, !tbaa !56
  %545 = load i64, ptr %537, align 8, !tbaa !45
  %546 = icmp eq i64 %544, %545
  br i1 %546, label %547, label %591

547:                                              ; preds = %542
  %548 = load ptr, ptr %530, align 8, !tbaa !31
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 68
  %550 = load i32, ptr %549, align 4, !tbaa !102
  %551 = icmp ne i32 %550, 0
  %552 = icmp ugt i64 %544, %543
  %553 = select i1 %551, i1 %552, i1 false
  br i1 %553, label %554, label %560

554:                                              ; preds = %547
  %555 = load i64, ptr %538, align 8, !tbaa !60
  %556 = load ptr, ptr %539, align 8, !tbaa !44
  %557 = getelementptr inbounds nuw i8, ptr %556, i64 %543
  %558 = sub nuw i64 %544, %543
  %559 = tail call i64 @crc32_z(i64 noundef %555, ptr noundef %557, i64 noundef %558) #11
  store i64 %559, ptr %538, align 8, !tbaa !60
  br label %560

560:                                              ; preds = %554, %547
  %561 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %561) #11
  %562 = getelementptr inbounds nuw i8, ptr %561, i64 40
  %563 = load i64, ptr %562, align 8, !tbaa !56
  %564 = load i32, ptr %86, align 8, !tbaa !99
  %565 = zext i32 %564 to i64
  %566 = tail call i64 @llvm.umin.i64(i64 %563, i64 %565)
  %567 = icmp eq i64 %566, 0
  br i1 %567, label %587, label %568

568:                                              ; preds = %560
  %569 = trunc nuw i64 %566 to i32
  %570 = load ptr, ptr %68, align 8, !tbaa !98
  %571 = getelementptr inbounds nuw i8, ptr %561, i64 32
  %572 = load ptr, ptr %571, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %570, ptr align 1 %572, i64 %566, i1 false)
  %573 = load ptr, ptr %68, align 8, !tbaa !98
  %574 = getelementptr inbounds nuw i8, ptr %573, i64 %566
  store ptr %574, ptr %68, align 8, !tbaa !98
  %575 = load ptr, ptr %571, align 8, !tbaa !57
  %576 = getelementptr inbounds nuw i8, ptr %575, i64 %566
  store ptr %576, ptr %571, align 8, !tbaa !57
  %577 = load i64, ptr %540, align 8, !tbaa !100
  %578 = add i64 %577, %566
  store i64 %578, ptr %540, align 8, !tbaa !100
  %579 = load i32, ptr %86, align 8, !tbaa !99
  %580 = sub i32 %579, %569
  store i32 %580, ptr %86, align 8, !tbaa !99
  %581 = load i64, ptr %562, align 8, !tbaa !56
  %582 = sub i64 %581, %566
  store i64 %582, ptr %562, align 8, !tbaa !56
  %583 = icmp eq i64 %581, %566
  br i1 %583, label %584, label %587

584:                                              ; preds = %568
  %585 = getelementptr inbounds nuw i8, ptr %561, i64 16
  %586 = load ptr, ptr %585, align 8, !tbaa !44
  store ptr %586, ptr %571, align 8, !tbaa !57
  br label %587

587:                                              ; preds = %584, %568, %560
  %588 = load i64, ptr %93, align 8, !tbaa !56
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %591, label %590

590:                                              ; preds = %587
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %800

591:                                              ; preds = %587, %542
  %592 = phi i64 [ %543, %542 ], [ 0, %587 ]
  %593 = load ptr, ptr %530, align 8, !tbaa !31
  %594 = getelementptr inbounds nuw i8, ptr %593, i64 40
  %595 = load ptr, ptr %594, align 8, !tbaa !106
  %596 = load i64, ptr %541, align 8, !tbaa !111
  %597 = add i64 %596, 1
  store i64 %597, ptr %541, align 8, !tbaa !111
  %598 = getelementptr inbounds nuw i8, ptr %595, i64 %596
  %599 = load i8, ptr %598, align 1, !tbaa !8
  %600 = load ptr, ptr %539, align 8, !tbaa !44
  %601 = load i64, ptr %93, align 8, !tbaa !56
  %602 = add i64 %601, 1
  store i64 %602, ptr %93, align 8, !tbaa !56
  %603 = getelementptr inbounds nuw i8, ptr %600, i64 %601
  store i8 %599, ptr %603, align 1, !tbaa !8
  %604 = icmp eq i8 %599, 0
  br i1 %604, label %605, label %542, !llvm.loop !113

605:                                              ; preds = %591
  %606 = load ptr, ptr %530, align 8, !tbaa !31
  %607 = getelementptr inbounds nuw i8, ptr %606, i64 68
  %608 = load i32, ptr %607, align 4, !tbaa !102
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %619, label %610

610:                                              ; preds = %605
  %611 = load i64, ptr %93, align 8, !tbaa !56
  %612 = icmp ugt i64 %611, %592
  br i1 %612, label %613, label %619

613:                                              ; preds = %610
  %614 = load i64, ptr %538, align 8, !tbaa !60
  %615 = load ptr, ptr %539, align 8, !tbaa !44
  %616 = getelementptr inbounds nuw i8, ptr %615, i64 %592
  %617 = sub nuw i64 %611, %592
  %618 = tail call i64 @crc32_z(i64 noundef %614, ptr noundef %616, i64 noundef %617) #11
  store i64 %618, ptr %538, align 8, !tbaa !60
  br label %619

619:                                              ; preds = %613, %610, %605
  store i64 0, ptr %541, align 8, !tbaa !111
  br label %620

620:                                              ; preds = %619, %529
  store i32 91, ptr %79, align 8, !tbaa !29
  br label %621

621:                                              ; preds = %620, %526
  %622 = load i32, ptr %79, align 8, !tbaa !29
  %623 = icmp eq i32 %622, 91
  br i1 %623, label %624, label %715

624:                                              ; preds = %621
  %625 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %626 = load ptr, ptr %625, align 8, !tbaa !31
  %627 = getelementptr inbounds nuw i8, ptr %626, i64 56
  %628 = load ptr, ptr %627, align 8, !tbaa !107
  %629 = icmp eq ptr %628, null
  br i1 %629, label %714, label %630

630:                                              ; preds = %624
  %631 = load i64, ptr %93, align 8, !tbaa !56
  %632 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %633 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %634 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %635 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %636 = getelementptr inbounds nuw i8, ptr %25, i64 64
  br label %637

637:                                              ; preds = %686, %630
  %638 = phi i64 [ %631, %630 ], [ %687, %686 ]
  %639 = load i64, ptr %93, align 8, !tbaa !56
  %640 = load i64, ptr %632, align 8, !tbaa !45
  %641 = icmp eq i64 %639, %640
  br i1 %641, label %642, label %686

642:                                              ; preds = %637
  %643 = load ptr, ptr %625, align 8, !tbaa !31
  %644 = getelementptr inbounds nuw i8, ptr %643, i64 68
  %645 = load i32, ptr %644, align 4, !tbaa !102
  %646 = icmp ne i32 %645, 0
  %647 = icmp ugt i64 %639, %638
  %648 = select i1 %646, i1 %647, i1 false
  br i1 %648, label %649, label %655

649:                                              ; preds = %642
  %650 = load i64, ptr %633, align 8, !tbaa !60
  %651 = load ptr, ptr %634, align 8, !tbaa !44
  %652 = getelementptr inbounds nuw i8, ptr %651, i64 %638
  %653 = sub nuw i64 %639, %638
  %654 = tail call i64 @crc32_z(i64 noundef %650, ptr noundef %652, i64 noundef %653) #11
  store i64 %654, ptr %633, align 8, !tbaa !60
  br label %655

655:                                              ; preds = %649, %642
  %656 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %656) #11
  %657 = getelementptr inbounds nuw i8, ptr %656, i64 40
  %658 = load i64, ptr %657, align 8, !tbaa !56
  %659 = load i32, ptr %86, align 8, !tbaa !99
  %660 = zext i32 %659 to i64
  %661 = tail call i64 @llvm.umin.i64(i64 %658, i64 %660)
  %662 = icmp eq i64 %661, 0
  br i1 %662, label %682, label %663

663:                                              ; preds = %655
  %664 = trunc nuw i64 %661 to i32
  %665 = load ptr, ptr %68, align 8, !tbaa !98
  %666 = getelementptr inbounds nuw i8, ptr %656, i64 32
  %667 = load ptr, ptr %666, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %665, ptr align 1 %667, i64 %661, i1 false)
  %668 = load ptr, ptr %68, align 8, !tbaa !98
  %669 = getelementptr inbounds nuw i8, ptr %668, i64 %661
  store ptr %669, ptr %68, align 8, !tbaa !98
  %670 = load ptr, ptr %666, align 8, !tbaa !57
  %671 = getelementptr inbounds nuw i8, ptr %670, i64 %661
  store ptr %671, ptr %666, align 8, !tbaa !57
  %672 = load i64, ptr %635, align 8, !tbaa !100
  %673 = add i64 %672, %661
  store i64 %673, ptr %635, align 8, !tbaa !100
  %674 = load i32, ptr %86, align 8, !tbaa !99
  %675 = sub i32 %674, %664
  store i32 %675, ptr %86, align 8, !tbaa !99
  %676 = load i64, ptr %657, align 8, !tbaa !56
  %677 = sub i64 %676, %661
  store i64 %677, ptr %657, align 8, !tbaa !56
  %678 = icmp eq i64 %676, %661
  br i1 %678, label %679, label %682

679:                                              ; preds = %663
  %680 = getelementptr inbounds nuw i8, ptr %656, i64 16
  %681 = load ptr, ptr %680, align 8, !tbaa !44
  store ptr %681, ptr %666, align 8, !tbaa !57
  br label %682

682:                                              ; preds = %679, %663, %655
  %683 = load i64, ptr %93, align 8, !tbaa !56
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %686, label %685

685:                                              ; preds = %682
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %800

686:                                              ; preds = %682, %637
  %687 = phi i64 [ %638, %637 ], [ 0, %682 ]
  %688 = load ptr, ptr %625, align 8, !tbaa !31
  %689 = getelementptr inbounds nuw i8, ptr %688, i64 56
  %690 = load ptr, ptr %689, align 8, !tbaa !107
  %691 = load i64, ptr %636, align 8, !tbaa !111
  %692 = add i64 %691, 1
  store i64 %692, ptr %636, align 8, !tbaa !111
  %693 = getelementptr inbounds nuw i8, ptr %690, i64 %691
  %694 = load i8, ptr %693, align 1, !tbaa !8
  %695 = load ptr, ptr %634, align 8, !tbaa !44
  %696 = load i64, ptr %93, align 8, !tbaa !56
  %697 = add i64 %696, 1
  store i64 %697, ptr %93, align 8, !tbaa !56
  %698 = getelementptr inbounds nuw i8, ptr %695, i64 %696
  store i8 %694, ptr %698, align 1, !tbaa !8
  %699 = icmp eq i8 %694, 0
  br i1 %699, label %700, label %637, !llvm.loop !114

700:                                              ; preds = %686
  %701 = load ptr, ptr %625, align 8, !tbaa !31
  %702 = getelementptr inbounds nuw i8, ptr %701, i64 68
  %703 = load i32, ptr %702, align 4, !tbaa !102
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %714, label %705

705:                                              ; preds = %700
  %706 = load i64, ptr %93, align 8, !tbaa !56
  %707 = icmp ugt i64 %706, %687
  br i1 %707, label %708, label %714

708:                                              ; preds = %705
  %709 = load i64, ptr %633, align 8, !tbaa !60
  %710 = load ptr, ptr %634, align 8, !tbaa !44
  %711 = getelementptr inbounds nuw i8, ptr %710, i64 %687
  %712 = sub nuw i64 %706, %687
  %713 = tail call i64 @crc32_z(i64 noundef %709, ptr noundef %711, i64 noundef %712) #11
  store i64 %713, ptr %633, align 8, !tbaa !60
  br label %714

714:                                              ; preds = %708, %705, %700, %624
  store i32 103, ptr %79, align 8, !tbaa !29
  br label %715

715:                                              ; preds = %714, %621
  %716 = load i32, ptr %79, align 8, !tbaa !29
  %717 = icmp eq i32 %716, 103
  br i1 %717, label %718, label %755

718:                                              ; preds = %715
  %719 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %720 = load ptr, ptr %719, align 8, !tbaa !31
  %721 = getelementptr inbounds nuw i8, ptr %720, i64 68
  %722 = load i32, ptr %721, align 4, !tbaa !102
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %751, label %724

724:                                              ; preds = %718
  %725 = load i64, ptr %93, align 8, !tbaa !56
  %726 = add i64 %725, 2
  %727 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %728 = load i64, ptr %727, align 8, !tbaa !45
  %729 = icmp ugt i64 %726, %728
  br i1 %729, label %730, label %734

730:                                              ; preds = %724
  tail call fastcc void @flush_pending(ptr noundef %0)
  %731 = load i64, ptr %93, align 8, !tbaa !56
  %732 = icmp eq i64 %731, 0
  br i1 %732, label %734, label %733

733:                                              ; preds = %730
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %800

734:                                              ; preds = %730, %724
  %735 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %736 = load i64, ptr %735, align 8, !tbaa !60
  %737 = trunc i64 %736 to i8
  %738 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %739 = load ptr, ptr %738, align 8, !tbaa !44
  %740 = load i64, ptr %93, align 8, !tbaa !56
  %741 = add i64 %740, 1
  store i64 %741, ptr %93, align 8, !tbaa !56
  %742 = getelementptr inbounds nuw i8, ptr %739, i64 %740
  store i8 %737, ptr %742, align 1, !tbaa !8
  %743 = load i64, ptr %735, align 8, !tbaa !60
  %744 = lshr i64 %743, 8
  %745 = trunc i64 %744 to i8
  %746 = load ptr, ptr %738, align 8, !tbaa !44
  %747 = load i64, ptr %93, align 8, !tbaa !56
  %748 = add i64 %747, 1
  store i64 %748, ptr %93, align 8, !tbaa !56
  %749 = getelementptr inbounds nuw i8, ptr %746, i64 %747
  store i8 %745, ptr %749, align 1, !tbaa !8
  %750 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %750, ptr %735, align 8, !tbaa !60
  br label %751

751:                                              ; preds = %734, %718
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %752 = load i64, ptr %93, align 8, !tbaa !56
  %753 = icmp eq i64 %752, 0
  br i1 %753, label %755, label %754

754:                                              ; preds = %751
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %800

755:                                              ; preds = %751, %715
  %756 = load i32, ptr %72, align 8, !tbaa !82
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %765

758:                                              ; preds = %755
  %759 = getelementptr inbounds nuw i8, ptr %25, i64 180
  %760 = load i32, ptr %759, align 4, !tbaa !76
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %762, label %765

762:                                              ; preds = %758
  %763 = load i32, ptr %79, align 8, !tbaa !29
  %764 = icmp eq i32 %763, 666
  br i1 %764, label %800, label %765

765:                                              ; preds = %762, %758, %755
  %766 = load i32, ptr %32, align 4, !tbaa !50
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %770

768:                                              ; preds = %765
  %769 = tail call i32 @deflate_stored(ptr noundef nonnull %25, i32 noundef 5)
  br label %782

770:                                              ; preds = %765
  %771 = load i32, ptr %33, align 8, !tbaa !51
  switch i32 %771, label %776 [
    i32 2, label %772
    i32 3, label %774
  ]

772:                                              ; preds = %770
  %773 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %25, i32 noundef 5)
  br label %782

774:                                              ; preds = %770
  %775 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %25, i32 noundef 5)
  br label %782

776:                                              ; preds = %770
  %777 = sext i32 %766 to i64
  %778 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %777
  %779 = getelementptr inbounds nuw i8, ptr %778, i64 8
  %780 = load ptr, ptr %779, align 8, !tbaa !97
  %781 = tail call i32 %780(ptr noundef nonnull %25, i32 noundef 5) #11, !inline_history !115
  br label %782

782:                                              ; preds = %776, %774, %772, %768
  %783 = phi i32 [ %769, %768 ], [ %773, %772 ], [ %775, %774 ], [ %781, %776 ]
  %784 = and i32 %783, -2
  %785 = icmp eq i32 %784, 2
  br i1 %785, label %786, label %787

786:                                              ; preds = %782
  store i32 666, ptr %79, align 8, !tbaa !29
  br label %787

787:                                              ; preds = %786, %782
  %788 = and i32 %783, -3
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %794

790:                                              ; preds = %787
  %791 = load i32, ptr %86, align 8, !tbaa !99
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %800

793:                                              ; preds = %790
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %800

794:                                              ; preds = %787
  %795 = icmp eq i32 %783, 1
  br i1 %795, label %796, label %800

796:                                              ; preds = %794
  tail call fastcc void @flush_pending(ptr noundef %0)
  %797 = load i32, ptr %86, align 8, !tbaa !99
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %800

799:                                              ; preds = %796
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %800

800:                                              ; preds = %799, %796, %794, %793, %790, %762, %754, %733, %685, %590, %524, %293, %229, %146, %138, %125, %89
  %801 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %802 = load i32, ptr %801, align 8, !tbaa !82
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %824

804:                                              ; preds = %800
  %805 = getelementptr inbounds nuw i8, ptr %25, i64 172
  %806 = load i32, ptr %805, align 4, !tbaa !74
  %807 = zext i32 %806 to i64
  %808 = getelementptr inbounds nuw i8, ptr %25, i64 152
  %809 = load i64, ptr %808, align 8, !tbaa !75
  %810 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %807, i64 %809), !nosanitize !58
  %811 = extractvalue { i64, i1 } %810, 1, !nosanitize !58
  br i1 %811, label %812, label %813, !prof !59, !nosanitize !58

812:                                              ; preds = %804
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

813:                                              ; preds = %804
  %814 = extractvalue { i64, i1 } %810, 0, !nosanitize !58
  %815 = getelementptr inbounds nuw i8, ptr %25, i64 180
  %816 = load i32, ptr %815, align 4, !tbaa !76
  %817 = zext i32 %816 to i64
  %818 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %814, i64 %817), !nosanitize !58
  %819 = extractvalue { i64, i1 } %818, 1, !nosanitize !58
  br i1 %819, label %820, label %821, !prof !59, !nosanitize !58

820:                                              ; preds = %813
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !58
  unreachable, !nosanitize !58

821:                                              ; preds = %813
  %822 = extractvalue { i64, i1 } %818, 0, !nosanitize !58
  %823 = icmp eq i64 %822, 0
  br label %824

824:                                              ; preds = %821, %800, %82, %64, %61, %55, %51
  %825 = phi i1 [ false, %800 ], [ %823, %821 ], [ false, %82 ], [ false, %51 ], [ false, %55 ], [ false, %61 ], [ false, %64 ]
  %826 = phi i32 [ -5, %800 ], [ -5, %821 ], [ -2, %82 ], [ -2, %51 ], [ -2, %55 ], [ -2, %61 ], [ -2, %64 ]
  br i1 %825, label %827, label %866

827:                                              ; preds = %824, %47, %36
  %828 = load i32, ptr %32, align 4, !tbaa !50
  %829 = icmp eq i32 %828, %27
  br i1 %829, label %865, label %830

830:                                              ; preds = %827
  %831 = icmp eq i32 %828, 0
  br i1 %831, label %832, label %847

832:                                              ; preds = %830
  %833 = getelementptr inbounds nuw i8, ptr %25, i64 5928
  %834 = load i32, ptr %833, align 8, !tbaa !116
  switch i32 %834, label %836 [
    i32 0, label %847
    i32 1, label %835
  ]

835:                                              ; preds = %832
  tail call fastcc void @slide_hash(ptr noundef %25)
  br label %846

836:                                              ; preds = %832
  %837 = getelementptr inbounds nuw i8, ptr %25, i64 120
  %838 = load ptr, ptr %837, align 8, !tbaa !41
  %839 = getelementptr inbounds nuw i8, ptr %25, i64 132
  %840 = load i32, ptr %839, align 4, !tbaa !36
  %841 = add i32 %840, -1
  %842 = zext i32 %841 to i64
  %843 = getelementptr inbounds nuw [2 x i8], ptr %838, i64 %842
  store i16 0, ptr %843, align 2, !tbaa !63
  %844 = shl nuw nsw i64 %842, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %838, i8 0, i64 %844, i1 false)
  %845 = getelementptr inbounds nuw i8, ptr %25, i64 5960
  store i32 0, ptr %845, align 8, !tbaa !64
  br label %846

846:                                              ; preds = %836, %835
  store i32 0, ptr %833, align 8, !tbaa !116
  br label %847

847:                                              ; preds = %846, %832, %830
  store i32 %27, ptr %32, align 4, !tbaa !50
  %848 = zext nneg i32 %27 to i64
  %849 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %848
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 2
  %851 = load i16, ptr %850, align 2, !tbaa !65
  %852 = zext i16 %851 to i32
  %853 = getelementptr inbounds nuw i8, ptr %25, i64 192
  store i32 %852, ptr %853, align 8, !tbaa !67
  %854 = load i16, ptr %849, align 16, !tbaa !68
  %855 = zext i16 %854 to i32
  %856 = getelementptr inbounds nuw i8, ptr %25, i64 204
  store i32 %855, ptr %856, align 4, !tbaa !69
  %857 = getelementptr inbounds nuw i8, ptr %849, i64 4
  %858 = load i16, ptr %857, align 4, !tbaa !70
  %859 = zext i16 %858 to i32
  %860 = getelementptr inbounds nuw i8, ptr %25, i64 208
  store i32 %859, ptr %860, align 8, !tbaa !71
  %861 = getelementptr inbounds nuw i8, ptr %849, i64 6
  %862 = load i16, ptr %861, align 2, !tbaa !72
  %863 = zext i16 %862 to i32
  %864 = getelementptr inbounds nuw i8, ptr %25, i64 188
  store i32 %863, ptr %864, align 4, !tbaa !73
  br label %865

865:                                              ; preds = %847, %827
  store i32 %2, ptr %33, align 8, !tbaa !51
  br label %866

866:                                              ; preds = %865, %824, %23, %20, %17, %13, %9, %5, %3
  %867 = phi i32 [ %826, %824 ], [ -2, %23 ], [ 0, %865 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ -2, %20 ]
  ret i32 %867
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
  br i1 %26, label %903, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %31 = load ptr, ptr %30, align 8, !tbaa !98
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
  br label %903

49:                                               ; preds = %40
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %51 = load i32, ptr %50, align 8, !tbaa !99
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %54, ptr %55, align 8, !tbaa !9
  br label %903

56:                                               ; preds = %49
  %57 = getelementptr inbounds nuw i8, ptr %29, i64 76
  %58 = load i32, ptr %57, align 4, !tbaa !61
  store i32 %1, ptr %57, align 4, !tbaa !61
  %59 = getelementptr inbounds nuw i8, ptr %29, i64 40
  %60 = load i64, ptr %59, align 8, !tbaa !56
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %56
  tail call void @_tr_flush_bits(ptr noundef %29) #11
  %63 = load i64, ptr %59, align 8, !tbaa !56
  %64 = load i32, ptr %50, align 8, !tbaa !99
  %65 = zext i32 %64 to i64
  %66 = tail call i64 @llvm.umin.i64(i64 %63, i64 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %62
  %69 = trunc nuw i64 %66 to i32
  %70 = load ptr, ptr %30, align 8, !tbaa !98
  %71 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 1 %72, i64 %66, i1 false)
  %73 = load ptr, ptr %30, align 8, !tbaa !98
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 %66
  store ptr %74, ptr %30, align 8, !tbaa !98
  %75 = load ptr, ptr %71, align 8, !tbaa !57
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 %66
  store ptr %76, ptr %71, align 8, !tbaa !57
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %78 = load i64, ptr %77, align 8, !tbaa !100
  %79 = add i64 %78, %66
  store i64 %79, ptr %77, align 8, !tbaa !100
  %80 = load i32, ptr %50, align 8, !tbaa !99
  %81 = sub i32 %80, %69
  store i32 %81, ptr %50, align 8, !tbaa !99
  %82 = load i64, ptr %59, align 8, !tbaa !56
  %83 = sub i64 %82, %66
  store i64 %83, ptr %59, align 8, !tbaa !56
  %84 = icmp eq i64 %82, %66
  br i1 %84, label %85, label %88

85:                                               ; preds = %68
  %86 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %87 = load ptr, ptr %86, align 8, !tbaa !44
  store ptr %87, ptr %71, align 8, !tbaa !57
  br label %88

88:                                               ; preds = %85, %68, %62
  %89 = load i32, ptr %50, align 8, !tbaa !99
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %903

92:                                               ; preds = %56
  br i1 %36, label %94, label %112

93:                                               ; preds = %94
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !58
  unreachable, !nosanitize !58

94:                                               ; preds = %92
  %95 = shl nuw nsw i32 %1, 1
  %96 = icmp sgt i32 %1, 4
  %97 = select i1 %96, i32 -9, i32 0
  %98 = add nsw i32 %97, %95
  %99 = add i32 %58, 1073741824
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %101, label %93, !prof !101, !nosanitize !58

101:                                              ; preds = %94
  %102 = shl i32 %58, 1
  %103 = icmp sgt i32 %58, 4
  %104 = select i1 %103, i32 9, i32 0
  %105 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %102, i32 %104), !nosanitize !58
  %106 = extractvalue { i32, i1 } %105, 0, !nosanitize !58
  %107 = icmp sle i32 %98, %106
  %108 = and i1 %44, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %110, ptr %111, align 8, !tbaa !9
  br label %903

112:                                              ; preds = %101, %92, %88
  %113 = load i32, ptr %41, align 8, !tbaa !29
  switch i32 %113, label %125 [
    i32 666, label %114
    i32 42, label %120
  ]

114:                                              ; preds = %112
  %115 = load i32, ptr %34, align 8, !tbaa !82
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %119 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %118, ptr %119, align 8, !tbaa !9
  br label %903

120:                                              ; preds = %112
  %121 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %122 = load i32, ptr %121, align 8, !tbaa !30
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 113, ptr %41, align 8, !tbaa !29
  br label %125

125:                                              ; preds = %124, %120, %114, %112
  %126 = load i32, ptr %41, align 8, !tbaa !29
  %127 = icmp eq i32 %126, 42
  br i1 %127, label %128, label %203

128:                                              ; preds = %125
  %129 = getelementptr inbounds nuw i8, ptr %29, i64 84
  %130 = load i32, ptr %129, align 4, !tbaa !32
  %131 = shl i32 %130, 12
  %132 = add i32 %131, -30720
  %133 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %134 = load i32, ptr %133, align 8, !tbaa !51
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %145, label %136

136:                                              ; preds = %128
  %137 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %138 = load i32, ptr %137, align 4, !tbaa !50
  %139 = icmp slt i32 %138, 2
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = icmp slt i32 %138, 6
  br i1 %141, label %145, label %142

142:                                              ; preds = %140
  %143 = icmp eq i32 %138, 6
  %144 = select i1 %143, i32 128, i32 192
  br label %145

145:                                              ; preds = %142, %140, %136, %128
  %146 = phi i32 [ 64, %140 ], [ 0, %128 ], [ %144, %142 ], [ 0, %136 ]
  %147 = or disjoint i32 %146, %132
  %148 = getelementptr inbounds nuw i8, ptr %29, i64 172
  %149 = load i32, ptr %148, align 4, !tbaa !74
  %150 = icmp eq i32 %149, 0
  %151 = or disjoint i32 %147, 32
  %152 = select i1 %150, i32 %147, i32 %151
  %153 = urem i32 %152, 31
  %154 = or disjoint i32 %153, %152
  %155 = lshr i32 %152, 8
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %158 = load ptr, ptr %157, align 8, !tbaa !44
  %159 = load i64, ptr %59, align 8, !tbaa !56
  %160 = add i64 %159, 1
  store i64 %160, ptr %59, align 8, !tbaa !56
  %161 = getelementptr inbounds nuw i8, ptr %158, i64 %159
  store i8 %156, ptr %161, align 1, !tbaa !8
  %162 = trunc i32 %154 to i8
  %163 = xor i8 %162, 31
  %164 = load ptr, ptr %157, align 8, !tbaa !44
  %165 = load i64, ptr %59, align 8, !tbaa !56
  %166 = add i64 %165, 1
  store i64 %166, ptr %59, align 8, !tbaa !56
  %167 = getelementptr inbounds nuw i8, ptr %164, i64 %165
  store i8 %163, ptr %167, align 1, !tbaa !8
  %168 = load i32, ptr %148, align 4, !tbaa !74
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %197, label %170

170:                                              ; preds = %145
  %171 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %172 = load i64, ptr %171, align 8, !tbaa !60
  %173 = lshr i64 %172, 16
  %174 = lshr i64 %172, 24
  %175 = trunc i64 %174 to i8
  %176 = load ptr, ptr %157, align 8, !tbaa !44
  %177 = load i64, ptr %59, align 8, !tbaa !56
  %178 = add i64 %177, 1
  store i64 %178, ptr %59, align 8, !tbaa !56
  %179 = getelementptr inbounds nuw i8, ptr %176, i64 %177
  store i8 %175, ptr %179, align 1, !tbaa !8
  %180 = trunc i64 %173 to i8
  %181 = load ptr, ptr %157, align 8, !tbaa !44
  %182 = load i64, ptr %59, align 8, !tbaa !56
  %183 = add i64 %182, 1
  store i64 %183, ptr %59, align 8, !tbaa !56
  %184 = getelementptr inbounds nuw i8, ptr %181, i64 %182
  store i8 %180, ptr %184, align 1, !tbaa !8
  %185 = load i64, ptr %171, align 8, !tbaa !60
  %186 = trunc i64 %185 to i8
  %187 = lshr i64 %185, 8
  %188 = trunc i64 %187 to i8
  %189 = load ptr, ptr %157, align 8, !tbaa !44
  %190 = load i64, ptr %59, align 8, !tbaa !56
  %191 = add i64 %190, 1
  store i64 %191, ptr %59, align 8, !tbaa !56
  %192 = getelementptr inbounds nuw i8, ptr %189, i64 %190
  store i8 %188, ptr %192, align 1, !tbaa !8
  %193 = load ptr, ptr %157, align 8, !tbaa !44
  %194 = load i64, ptr %59, align 8, !tbaa !56
  %195 = add i64 %194, 1
  store i64 %195, ptr %59, align 8, !tbaa !56
  %196 = getelementptr inbounds nuw i8, ptr %193, i64 %194
  store i8 %186, ptr %196, align 1, !tbaa !8
  br label %197

197:                                              ; preds = %170, %145
  %198 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %198, ptr %199, align 8, !tbaa !60
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %200 = load i64, ptr %59, align 8, !tbaa !56
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %903

203:                                              ; preds = %197, %125
  %204 = load i32, ptr %41, align 8, !tbaa !29
  %205 = icmp eq i32 %204, 57
  br i1 %205, label %206, label %389

206:                                              ; preds = %203
  %207 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %208 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %207, ptr %208, align 8, !tbaa !60
  %209 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %210 = load ptr, ptr %209, align 8, !tbaa !44
  %211 = load i64, ptr %59, align 8, !tbaa !56
  %212 = add i64 %211, 1
  store i64 %212, ptr %59, align 8, !tbaa !56
  %213 = getelementptr inbounds nuw i8, ptr %210, i64 %211
  store i8 31, ptr %213, align 1, !tbaa !8
  %214 = load ptr, ptr %209, align 8, !tbaa !44
  %215 = load i64, ptr %59, align 8, !tbaa !56
  %216 = add i64 %215, 1
  store i64 %216, ptr %59, align 8, !tbaa !56
  %217 = getelementptr inbounds nuw i8, ptr %214, i64 %215
  store i8 -117, ptr %217, align 1, !tbaa !8
  %218 = load ptr, ptr %209, align 8, !tbaa !44
  %219 = load i64, ptr %59, align 8, !tbaa !56
  %220 = add i64 %219, 1
  store i64 %220, ptr %59, align 8, !tbaa !56
  %221 = getelementptr inbounds nuw i8, ptr %218, i64 %219
  store i8 8, ptr %221, align 1, !tbaa !8
  %222 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %223 = load ptr, ptr %222, align 8, !tbaa !31
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %269

225:                                              ; preds = %206
  %226 = load ptr, ptr %209, align 8, !tbaa !44
  %227 = load i64, ptr %59, align 8, !tbaa !56
  %228 = add i64 %227, 1
  store i64 %228, ptr %59, align 8, !tbaa !56
  %229 = getelementptr inbounds nuw i8, ptr %226, i64 %227
  store i8 0, ptr %229, align 1, !tbaa !8
  %230 = load ptr, ptr %209, align 8, !tbaa !44
  %231 = load i64, ptr %59, align 8, !tbaa !56
  %232 = add i64 %231, 1
  store i64 %232, ptr %59, align 8, !tbaa !56
  %233 = getelementptr inbounds nuw i8, ptr %230, i64 %231
  store i8 0, ptr %233, align 1, !tbaa !8
  %234 = load ptr, ptr %209, align 8, !tbaa !44
  %235 = load i64, ptr %59, align 8, !tbaa !56
  %236 = add i64 %235, 1
  store i64 %236, ptr %59, align 8, !tbaa !56
  %237 = getelementptr inbounds nuw i8, ptr %234, i64 %235
  store i8 0, ptr %237, align 1, !tbaa !8
  %238 = load ptr, ptr %209, align 8, !tbaa !44
  %239 = load i64, ptr %59, align 8, !tbaa !56
  %240 = add i64 %239, 1
  store i64 %240, ptr %59, align 8, !tbaa !56
  %241 = getelementptr inbounds nuw i8, ptr %238, i64 %239
  store i8 0, ptr %241, align 1, !tbaa !8
  %242 = load ptr, ptr %209, align 8, !tbaa !44
  %243 = load i64, ptr %59, align 8, !tbaa !56
  %244 = add i64 %243, 1
  store i64 %244, ptr %59, align 8, !tbaa !56
  %245 = getelementptr inbounds nuw i8, ptr %242, i64 %243
  store i8 0, ptr %245, align 1, !tbaa !8
  %246 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %247 = load i32, ptr %246, align 4, !tbaa !50
  %248 = icmp eq i32 %247, 9
  br i1 %248, label %256, label %249

249:                                              ; preds = %225
  %250 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %251 = load i32, ptr %250, align 8, !tbaa !51
  %252 = icmp sgt i32 %251, 1
  %253 = icmp slt i32 %247, 2
  %254 = or i1 %253, %252
  %255 = select i1 %254, i8 4, i8 0
  br label %256

256:                                              ; preds = %249, %225
  %257 = phi i8 [ %255, %249 ], [ 2, %225 ]
  %258 = load ptr, ptr %209, align 8, !tbaa !44
  %259 = load i64, ptr %59, align 8, !tbaa !56
  %260 = add i64 %259, 1
  store i64 %260, ptr %59, align 8, !tbaa !56
  %261 = getelementptr inbounds nuw i8, ptr %258, i64 %259
  store i8 %257, ptr %261, align 1, !tbaa !8
  %262 = load ptr, ptr %209, align 8, !tbaa !44
  %263 = load i64, ptr %59, align 8, !tbaa !56
  %264 = add i64 %263, 1
  store i64 %264, ptr %59, align 8, !tbaa !56
  %265 = getelementptr inbounds nuw i8, ptr %262, i64 %263
  store i8 3, ptr %265, align 1, !tbaa !8
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %266 = load i64, ptr %59, align 8, !tbaa !56
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %389, label %268

268:                                              ; preds = %256
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %903

269:                                              ; preds = %206
  %270 = getelementptr inbounds nuw i8, ptr %223, i64 68
  %271 = load i32, ptr %270, align 4, !tbaa !102
  %272 = icmp eq i32 %271, 0
  %273 = select i1 %272, i8 0, i8 2
  %274 = load i32, ptr %223, align 8, !tbaa !104
  %275 = icmp ne i32 %274, 0
  %276 = zext i1 %275 to i8
  %277 = or disjoint i8 %273, %276
  %278 = getelementptr inbounds nuw i8, ptr %223, i64 24
  %279 = load ptr, ptr %278, align 8, !tbaa !105
  %280 = icmp eq ptr %279, null
  %281 = select i1 %280, i8 0, i8 4
  %282 = or disjoint i8 %277, %281
  %283 = getelementptr inbounds nuw i8, ptr %223, i64 40
  %284 = load ptr, ptr %283, align 8, !tbaa !106
  %285 = icmp eq ptr %284, null
  %286 = select i1 %285, i8 0, i8 8
  %287 = or disjoint i8 %282, %286
  %288 = getelementptr inbounds nuw i8, ptr %223, i64 56
  %289 = load ptr, ptr %288, align 8, !tbaa !107
  %290 = icmp eq ptr %289, null
  %291 = select i1 %290, i8 0, i8 16
  %292 = or disjoint i8 %287, %291
  %293 = load ptr, ptr %209, align 8, !tbaa !44
  %294 = load i64, ptr %59, align 8, !tbaa !56
  %295 = add i64 %294, 1
  store i64 %295, ptr %59, align 8, !tbaa !56
  %296 = getelementptr inbounds nuw i8, ptr %293, i64 %294
  store i8 %292, ptr %296, align 1, !tbaa !8
  %297 = load ptr, ptr %222, align 8, !tbaa !31
  %298 = getelementptr inbounds nuw i8, ptr %297, i64 8
  %299 = load i64, ptr %298, align 8, !tbaa !108
  %300 = trunc i64 %299 to i8
  %301 = load ptr, ptr %209, align 8, !tbaa !44
  %302 = load i64, ptr %59, align 8, !tbaa !56
  %303 = add i64 %302, 1
  store i64 %303, ptr %59, align 8, !tbaa !56
  %304 = getelementptr inbounds nuw i8, ptr %301, i64 %302
  store i8 %300, ptr %304, align 1, !tbaa !8
  %305 = load ptr, ptr %222, align 8, !tbaa !31
  %306 = getelementptr inbounds nuw i8, ptr %305, i64 8
  %307 = load i64, ptr %306, align 8, !tbaa !108
  %308 = lshr i64 %307, 8
  %309 = trunc i64 %308 to i8
  %310 = load ptr, ptr %209, align 8, !tbaa !44
  %311 = load i64, ptr %59, align 8, !tbaa !56
  %312 = add i64 %311, 1
  store i64 %312, ptr %59, align 8, !tbaa !56
  %313 = getelementptr inbounds nuw i8, ptr %310, i64 %311
  store i8 %309, ptr %313, align 1, !tbaa !8
  %314 = load ptr, ptr %222, align 8, !tbaa !31
  %315 = getelementptr inbounds nuw i8, ptr %314, i64 8
  %316 = load i64, ptr %315, align 8, !tbaa !108
  %317 = lshr i64 %316, 16
  %318 = trunc i64 %317 to i8
  %319 = load ptr, ptr %209, align 8, !tbaa !44
  %320 = load i64, ptr %59, align 8, !tbaa !56
  %321 = add i64 %320, 1
  store i64 %321, ptr %59, align 8, !tbaa !56
  %322 = getelementptr inbounds nuw i8, ptr %319, i64 %320
  store i8 %318, ptr %322, align 1, !tbaa !8
  %323 = load ptr, ptr %222, align 8, !tbaa !31
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 8
  %325 = load i64, ptr %324, align 8, !tbaa !108
  %326 = lshr i64 %325, 24
  %327 = trunc i64 %326 to i8
  %328 = load ptr, ptr %209, align 8, !tbaa !44
  %329 = load i64, ptr %59, align 8, !tbaa !56
  %330 = add i64 %329, 1
  store i64 %330, ptr %59, align 8, !tbaa !56
  %331 = getelementptr inbounds nuw i8, ptr %328, i64 %329
  store i8 %327, ptr %331, align 1, !tbaa !8
  %332 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %333 = load i32, ptr %332, align 4, !tbaa !50
  %334 = icmp eq i32 %333, 9
  br i1 %334, label %342, label %335

335:                                              ; preds = %269
  %336 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %337 = load i32, ptr %336, align 8, !tbaa !51
  %338 = icmp sgt i32 %337, 1
  %339 = icmp slt i32 %333, 2
  %340 = or i1 %339, %338
  %341 = select i1 %340, i8 4, i8 0
  br label %342

342:                                              ; preds = %335, %269
  %343 = phi i8 [ %341, %335 ], [ 2, %269 ]
  %344 = load ptr, ptr %209, align 8, !tbaa !44
  %345 = load i64, ptr %59, align 8, !tbaa !56
  %346 = add i64 %345, 1
  store i64 %346, ptr %59, align 8, !tbaa !56
  %347 = getelementptr inbounds nuw i8, ptr %344, i64 %345
  store i8 %343, ptr %347, align 1, !tbaa !8
  %348 = load ptr, ptr %222, align 8, !tbaa !31
  %349 = getelementptr inbounds nuw i8, ptr %348, i64 20
  %350 = load i32, ptr %349, align 4, !tbaa !109
  %351 = trunc i32 %350 to i8
  %352 = load ptr, ptr %209, align 8, !tbaa !44
  %353 = load i64, ptr %59, align 8, !tbaa !56
  %354 = add i64 %353, 1
  store i64 %354, ptr %59, align 8, !tbaa !56
  %355 = getelementptr inbounds nuw i8, ptr %352, i64 %353
  store i8 %351, ptr %355, align 1, !tbaa !8
  %356 = load ptr, ptr %222, align 8, !tbaa !31
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 24
  %358 = load ptr, ptr %357, align 8, !tbaa !105
  %359 = icmp eq ptr %358, null
  br i1 %359, label %377, label %360

360:                                              ; preds = %342
  %361 = getelementptr inbounds nuw i8, ptr %356, i64 32
  %362 = load i32, ptr %361, align 8, !tbaa !110
  %363 = trunc i32 %362 to i8
  %364 = load ptr, ptr %209, align 8, !tbaa !44
  %365 = load i64, ptr %59, align 8, !tbaa !56
  %366 = add i64 %365, 1
  store i64 %366, ptr %59, align 8, !tbaa !56
  %367 = getelementptr inbounds nuw i8, ptr %364, i64 %365
  store i8 %363, ptr %367, align 1, !tbaa !8
  %368 = load ptr, ptr %222, align 8, !tbaa !31
  %369 = getelementptr inbounds nuw i8, ptr %368, i64 32
  %370 = load i32, ptr %369, align 8, !tbaa !110
  %371 = lshr i32 %370, 8
  %372 = trunc i32 %371 to i8
  %373 = load ptr, ptr %209, align 8, !tbaa !44
  %374 = load i64, ptr %59, align 8, !tbaa !56
  %375 = add i64 %374, 1
  store i64 %375, ptr %59, align 8, !tbaa !56
  %376 = getelementptr inbounds nuw i8, ptr %373, i64 %374
  store i8 %372, ptr %376, align 1, !tbaa !8
  br label %377

377:                                              ; preds = %360, %342
  %378 = load ptr, ptr %222, align 8, !tbaa !31
  %379 = getelementptr inbounds nuw i8, ptr %378, i64 68
  %380 = load i32, ptr %379, align 4, !tbaa !102
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %377
  %383 = load i64, ptr %208, align 8, !tbaa !60
  %384 = load ptr, ptr %209, align 8, !tbaa !44
  %385 = load i64, ptr %59, align 8, !tbaa !56
  %386 = tail call i64 @crc32_z(i64 noundef %383, ptr noundef %384, i64 noundef %385) #11
  store i64 %386, ptr %208, align 8, !tbaa !60
  br label %387

387:                                              ; preds = %382, %377
  %388 = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i64 0, ptr %388, align 8, !tbaa !111
  store i32 69, ptr %41, align 8, !tbaa !29
  br label %389

389:                                              ; preds = %387, %256, %203
  %390 = load i32, ptr %41, align 8, !tbaa !29
  %391 = icmp eq i32 %390, 69
  br i1 %391, label %392, label %500

392:                                              ; preds = %389
  %393 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %394 = load ptr, ptr %393, align 8, !tbaa !31
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 24
  %396 = load ptr, ptr %395, align 8, !tbaa !105
  %397 = icmp eq ptr %396, null
  br i1 %397, label %499, label %398

398:                                              ; preds = %392
  %399 = load i64, ptr %59, align 8, !tbaa !56
  %400 = getelementptr inbounds nuw i8, ptr %394, i64 32
  %401 = load i32, ptr %400, align 8, !tbaa !110
  %402 = and i32 %401, 65535
  %403 = zext nneg i32 %402 to i64
  %404 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %405 = load i64, ptr %404, align 8, !tbaa !111
  %406 = sub i64 %403, %405
  %407 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %408 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %410 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %411

411:                                              ; preds = %475, %398
  %412 = phi i64 [ %399, %398 ], [ %476, %475 ]
  %413 = phi i64 [ %406, %398 ], [ %477, %475 ]
  %414 = load i64, ptr %59, align 8, !tbaa !56
  %415 = add i64 %414, %413
  %416 = load i64, ptr %407, align 8, !tbaa !45
  %417 = icmp ugt i64 %415, %416
  %418 = load ptr, ptr %393, align 8, !tbaa !31
  %419 = getelementptr inbounds nuw i8, ptr %418, i64 24
  %420 = load ptr, ptr %419, align 8, !tbaa !105
  %421 = load i64, ptr %404, align 8, !tbaa !111
  %422 = getelementptr inbounds nuw i8, ptr %420, i64 %421
  br i1 %417, label %423, label %478

423:                                              ; preds = %411
  %424 = sub i64 %416, %414
  %425 = load ptr, ptr %408, align 8, !tbaa !44
  %426 = getelementptr inbounds nuw i8, ptr %425, i64 %414
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %426, ptr align 1 %422, i64 %424, i1 false)
  %427 = load i64, ptr %407, align 8, !tbaa !45
  store i64 %427, ptr %59, align 8, !tbaa !56
  %428 = load ptr, ptr %393, align 8, !tbaa !31
  %429 = getelementptr inbounds nuw i8, ptr %428, i64 68
  %430 = load i32, ptr %429, align 4, !tbaa !102
  %431 = icmp ne i32 %430, 0
  %432 = icmp ugt i64 %427, %412
  %433 = select i1 %431, i1 %432, i1 false
  br i1 %433, label %434, label %440

434:                                              ; preds = %423
  %435 = load i64, ptr %409, align 8, !tbaa !60
  %436 = load ptr, ptr %408, align 8, !tbaa !44
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 %412
  %438 = sub nuw i64 %427, %412
  %439 = tail call i64 @crc32_z(i64 noundef %435, ptr noundef %437, i64 noundef %438) #11
  store i64 %439, ptr %409, align 8, !tbaa !60
  br label %440

440:                                              ; preds = %434, %423
  %441 = load i64, ptr %404, align 8, !tbaa !111
  %442 = add i64 %441, %424
  store i64 %442, ptr %404, align 8, !tbaa !111
  %443 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %443) #11
  %444 = getelementptr inbounds nuw i8, ptr %443, i64 40
  %445 = load i64, ptr %444, align 8, !tbaa !56
  %446 = load i32, ptr %50, align 8, !tbaa !99
  %447 = zext i32 %446 to i64
  %448 = tail call i64 @llvm.umin.i64(i64 %445, i64 %447)
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %469, label %450

450:                                              ; preds = %440
  %451 = trunc nuw i64 %448 to i32
  %452 = load ptr, ptr %30, align 8, !tbaa !98
  %453 = getelementptr inbounds nuw i8, ptr %443, i64 32
  %454 = load ptr, ptr %453, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %452, ptr align 1 %454, i64 %448, i1 false)
  %455 = load ptr, ptr %30, align 8, !tbaa !98
  %456 = getelementptr inbounds nuw i8, ptr %455, i64 %448
  store ptr %456, ptr %30, align 8, !tbaa !98
  %457 = load ptr, ptr %453, align 8, !tbaa !57
  %458 = getelementptr inbounds nuw i8, ptr %457, i64 %448
  store ptr %458, ptr %453, align 8, !tbaa !57
  %459 = load i64, ptr %410, align 8, !tbaa !100
  %460 = add i64 %459, %448
  store i64 %460, ptr %410, align 8, !tbaa !100
  %461 = load i32, ptr %50, align 8, !tbaa !99
  %462 = sub i32 %461, %451
  store i32 %462, ptr %50, align 8, !tbaa !99
  %463 = load i64, ptr %444, align 8, !tbaa !56
  %464 = sub i64 %463, %448
  store i64 %464, ptr %444, align 8, !tbaa !56
  %465 = icmp eq i64 %463, %448
  br i1 %465, label %466, label %469

466:                                              ; preds = %450
  %467 = getelementptr inbounds nuw i8, ptr %443, i64 16
  %468 = load ptr, ptr %467, align 8, !tbaa !44
  store ptr %468, ptr %453, align 8, !tbaa !57
  br label %469

469:                                              ; preds = %466, %450, %440
  %470 = load i64, ptr %59, align 8, !tbaa !56
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %473, label %472

472:                                              ; preds = %469
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %475

473:                                              ; preds = %469
  %474 = sub i64 %413, %424
  br label %475

475:                                              ; preds = %473, %472
  %476 = phi i64 [ %412, %472 ], [ 0, %473 ]
  %477 = phi i64 [ %413, %472 ], [ %474, %473 ]
  br i1 %471, label %411, label %498, !llvm.loop !112

478:                                              ; preds = %411
  %479 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %480 = load ptr, ptr %479, align 8, !tbaa !44
  %481 = getelementptr inbounds nuw i8, ptr %480, i64 %414
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %481, ptr align 1 %422, i64 %413, i1 false)
  %482 = load i64, ptr %59, align 8, !tbaa !56
  %483 = add i64 %482, %413
  store i64 %483, ptr %59, align 8, !tbaa !56
  %484 = load ptr, ptr %393, align 8, !tbaa !31
  %485 = getelementptr inbounds nuw i8, ptr %484, i64 68
  %486 = load i32, ptr %485, align 4, !tbaa !102
  %487 = icmp ne i32 %486, 0
  %488 = icmp ugt i64 %483, %412
  %489 = select i1 %487, i1 %488, i1 false
  br i1 %489, label %490, label %497

490:                                              ; preds = %478
  %491 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %492 = load i64, ptr %491, align 8, !tbaa !60
  %493 = load ptr, ptr %479, align 8, !tbaa !44
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 %412
  %495 = sub nuw i64 %483, %412
  %496 = tail call i64 @crc32_z(i64 noundef %492, ptr noundef %494, i64 noundef %495) #11
  store i64 %496, ptr %491, align 8, !tbaa !60
  br label %497

497:                                              ; preds = %490, %478
  store i64 0, ptr %404, align 8, !tbaa !111
  br label %498

498:                                              ; preds = %497, %475
  br i1 %417, label %903, label %499

499:                                              ; preds = %498, %392
  store i32 73, ptr %41, align 8, !tbaa !29
  br label %500

500:                                              ; preds = %499, %389
  %501 = load i32, ptr %41, align 8, !tbaa !29
  %502 = icmp eq i32 %501, 73
  br i1 %502, label %503, label %599

503:                                              ; preds = %500
  %504 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %505 = load ptr, ptr %504, align 8, !tbaa !31
  %506 = getelementptr inbounds nuw i8, ptr %505, i64 40
  %507 = load ptr, ptr %506, align 8, !tbaa !106
  %508 = icmp eq ptr %507, null
  br i1 %508, label %598, label %509

509:                                              ; preds = %503
  %510 = load i64, ptr %59, align 8, !tbaa !56
  %511 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %512 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %513 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %514 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %515 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %516 = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %517

517:                                              ; preds = %566, %509
  %518 = phi i64 [ %510, %509 ], [ %567, %566 ]
  %519 = load i64, ptr %59, align 8, !tbaa !56
  %520 = load i64, ptr %511, align 8, !tbaa !45
  %521 = icmp eq i64 %519, %520
  br i1 %521, label %522, label %566

522:                                              ; preds = %517
  %523 = load ptr, ptr %504, align 8, !tbaa !31
  %524 = getelementptr inbounds nuw i8, ptr %523, i64 68
  %525 = load i32, ptr %524, align 4, !tbaa !102
  %526 = icmp ne i32 %525, 0
  %527 = icmp ugt i64 %519, %518
  %528 = select i1 %526, i1 %527, i1 false
  br i1 %528, label %529, label %535

529:                                              ; preds = %522
  %530 = load i64, ptr %512, align 8, !tbaa !60
  %531 = load ptr, ptr %513, align 8, !tbaa !44
  %532 = getelementptr inbounds nuw i8, ptr %531, i64 %518
  %533 = sub nuw i64 %519, %518
  %534 = tail call i64 @crc32_z(i64 noundef %530, ptr noundef %532, i64 noundef %533) #11
  store i64 %534, ptr %512, align 8, !tbaa !60
  br label %535

535:                                              ; preds = %529, %522
  %536 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %536) #11
  %537 = getelementptr inbounds nuw i8, ptr %536, i64 40
  %538 = load i64, ptr %537, align 8, !tbaa !56
  %539 = load i32, ptr %50, align 8, !tbaa !99
  %540 = zext i32 %539 to i64
  %541 = tail call i64 @llvm.umin.i64(i64 %538, i64 %540)
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %562, label %543

543:                                              ; preds = %535
  %544 = trunc nuw i64 %541 to i32
  %545 = load ptr, ptr %30, align 8, !tbaa !98
  %546 = getelementptr inbounds nuw i8, ptr %536, i64 32
  %547 = load ptr, ptr %546, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %545, ptr align 1 %547, i64 %541, i1 false)
  %548 = load ptr, ptr %30, align 8, !tbaa !98
  %549 = getelementptr inbounds nuw i8, ptr %548, i64 %541
  store ptr %549, ptr %30, align 8, !tbaa !98
  %550 = load ptr, ptr %546, align 8, !tbaa !57
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 %541
  store ptr %551, ptr %546, align 8, !tbaa !57
  %552 = load i64, ptr %514, align 8, !tbaa !100
  %553 = add i64 %552, %541
  store i64 %553, ptr %514, align 8, !tbaa !100
  %554 = load i32, ptr %50, align 8, !tbaa !99
  %555 = sub i32 %554, %544
  store i32 %555, ptr %50, align 8, !tbaa !99
  %556 = load i64, ptr %537, align 8, !tbaa !56
  %557 = sub i64 %556, %541
  store i64 %557, ptr %537, align 8, !tbaa !56
  %558 = icmp eq i64 %556, %541
  br i1 %558, label %559, label %562

559:                                              ; preds = %543
  %560 = getelementptr inbounds nuw i8, ptr %536, i64 16
  %561 = load ptr, ptr %560, align 8, !tbaa !44
  store ptr %561, ptr %546, align 8, !tbaa !57
  br label %562

562:                                              ; preds = %559, %543, %535
  %563 = load i64, ptr %59, align 8, !tbaa !56
  %564 = icmp eq i64 %563, 0
  br i1 %564, label %566, label %565

565:                                              ; preds = %562
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %903

566:                                              ; preds = %562, %517
  %567 = phi i64 [ %518, %517 ], [ 0, %562 ]
  %568 = load ptr, ptr %504, align 8, !tbaa !31
  %569 = getelementptr inbounds nuw i8, ptr %568, i64 40
  %570 = load ptr, ptr %569, align 8, !tbaa !106
  %571 = load i64, ptr %515, align 8, !tbaa !111
  %572 = add i64 %571, 1
  store i64 %572, ptr %515, align 8, !tbaa !111
  %573 = getelementptr inbounds nuw i8, ptr %570, i64 %571
  %574 = load i8, ptr %573, align 1, !tbaa !8
  %575 = load ptr, ptr %516, align 8, !tbaa !44
  %576 = load i64, ptr %59, align 8, !tbaa !56
  %577 = add i64 %576, 1
  store i64 %577, ptr %59, align 8, !tbaa !56
  %578 = getelementptr inbounds nuw i8, ptr %575, i64 %576
  store i8 %574, ptr %578, align 1, !tbaa !8
  %579 = icmp eq i8 %574, 0
  br i1 %579, label %580, label %517, !llvm.loop !113

580:                                              ; preds = %566
  %581 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %582 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %583 = load ptr, ptr %504, align 8, !tbaa !31
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 68
  %585 = load i32, ptr %584, align 4, !tbaa !102
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %597, label %587

587:                                              ; preds = %580
  %588 = load i64, ptr %59, align 8, !tbaa !56
  %589 = icmp ugt i64 %588, %567
  br i1 %589, label %590, label %597

590:                                              ; preds = %587
  %591 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %592 = load i64, ptr %591, align 8, !tbaa !60
  %593 = load ptr, ptr %582, align 8, !tbaa !44
  %594 = getelementptr inbounds nuw i8, ptr %593, i64 %567
  %595 = sub nuw i64 %588, %567
  %596 = tail call i64 @crc32_z(i64 noundef %592, ptr noundef %594, i64 noundef %595) #11
  store i64 %596, ptr %591, align 8, !tbaa !60
  br label %597

597:                                              ; preds = %590, %587, %580
  store i64 0, ptr %581, align 8, !tbaa !111
  br label %598

598:                                              ; preds = %597, %503
  store i32 91, ptr %41, align 8, !tbaa !29
  br label %599

599:                                              ; preds = %598, %500
  %600 = load i32, ptr %41, align 8, !tbaa !29
  %601 = icmp eq i32 %600, 91
  br i1 %601, label %602, label %696

602:                                              ; preds = %599
  %603 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %604 = load ptr, ptr %603, align 8, !tbaa !31
  %605 = getelementptr inbounds nuw i8, ptr %604, i64 56
  %606 = load ptr, ptr %605, align 8, !tbaa !107
  %607 = icmp eq ptr %606, null
  br i1 %607, label %695, label %608

608:                                              ; preds = %602
  %609 = load i64, ptr %59, align 8, !tbaa !56
  %610 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %611 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %612 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %613 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %614 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %615 = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %616

616:                                              ; preds = %665, %608
  %617 = phi i64 [ %609, %608 ], [ %666, %665 ]
  %618 = load i64, ptr %59, align 8, !tbaa !56
  %619 = load i64, ptr %610, align 8, !tbaa !45
  %620 = icmp eq i64 %618, %619
  br i1 %620, label %621, label %665

621:                                              ; preds = %616
  %622 = load ptr, ptr %603, align 8, !tbaa !31
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 68
  %624 = load i32, ptr %623, align 4, !tbaa !102
  %625 = icmp ne i32 %624, 0
  %626 = icmp ugt i64 %618, %617
  %627 = select i1 %625, i1 %626, i1 false
  br i1 %627, label %628, label %634

628:                                              ; preds = %621
  %629 = load i64, ptr %611, align 8, !tbaa !60
  %630 = load ptr, ptr %612, align 8, !tbaa !44
  %631 = getelementptr inbounds nuw i8, ptr %630, i64 %617
  %632 = sub nuw i64 %618, %617
  %633 = tail call i64 @crc32_z(i64 noundef %629, ptr noundef %631, i64 noundef %632) #11
  store i64 %633, ptr %611, align 8, !tbaa !60
  br label %634

634:                                              ; preds = %628, %621
  %635 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %635) #11
  %636 = getelementptr inbounds nuw i8, ptr %635, i64 40
  %637 = load i64, ptr %636, align 8, !tbaa !56
  %638 = load i32, ptr %50, align 8, !tbaa !99
  %639 = zext i32 %638 to i64
  %640 = tail call i64 @llvm.umin.i64(i64 %637, i64 %639)
  %641 = icmp eq i64 %640, 0
  br i1 %641, label %661, label %642

642:                                              ; preds = %634
  %643 = trunc nuw i64 %640 to i32
  %644 = load ptr, ptr %30, align 8, !tbaa !98
  %645 = getelementptr inbounds nuw i8, ptr %635, i64 32
  %646 = load ptr, ptr %645, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %644, ptr align 1 %646, i64 %640, i1 false)
  %647 = load ptr, ptr %30, align 8, !tbaa !98
  %648 = getelementptr inbounds nuw i8, ptr %647, i64 %640
  store ptr %648, ptr %30, align 8, !tbaa !98
  %649 = load ptr, ptr %645, align 8, !tbaa !57
  %650 = getelementptr inbounds nuw i8, ptr %649, i64 %640
  store ptr %650, ptr %645, align 8, !tbaa !57
  %651 = load i64, ptr %613, align 8, !tbaa !100
  %652 = add i64 %651, %640
  store i64 %652, ptr %613, align 8, !tbaa !100
  %653 = load i32, ptr %50, align 8, !tbaa !99
  %654 = sub i32 %653, %643
  store i32 %654, ptr %50, align 8, !tbaa !99
  %655 = load i64, ptr %636, align 8, !tbaa !56
  %656 = sub i64 %655, %640
  store i64 %656, ptr %636, align 8, !tbaa !56
  %657 = icmp eq i64 %655, %640
  br i1 %657, label %658, label %661

658:                                              ; preds = %642
  %659 = getelementptr inbounds nuw i8, ptr %635, i64 16
  %660 = load ptr, ptr %659, align 8, !tbaa !44
  store ptr %660, ptr %645, align 8, !tbaa !57
  br label %661

661:                                              ; preds = %658, %642, %634
  %662 = load i64, ptr %59, align 8, !tbaa !56
  %663 = icmp eq i64 %662, 0
  br i1 %663, label %665, label %664

664:                                              ; preds = %661
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %903

665:                                              ; preds = %661, %616
  %666 = phi i64 [ %617, %616 ], [ 0, %661 ]
  %667 = load ptr, ptr %603, align 8, !tbaa !31
  %668 = getelementptr inbounds nuw i8, ptr %667, i64 56
  %669 = load ptr, ptr %668, align 8, !tbaa !107
  %670 = load i64, ptr %614, align 8, !tbaa !111
  %671 = add i64 %670, 1
  store i64 %671, ptr %614, align 8, !tbaa !111
  %672 = getelementptr inbounds nuw i8, ptr %669, i64 %670
  %673 = load i8, ptr %672, align 1, !tbaa !8
  %674 = load ptr, ptr %615, align 8, !tbaa !44
  %675 = load i64, ptr %59, align 8, !tbaa !56
  %676 = add i64 %675, 1
  store i64 %676, ptr %59, align 8, !tbaa !56
  %677 = getelementptr inbounds nuw i8, ptr %674, i64 %675
  store i8 %673, ptr %677, align 1, !tbaa !8
  %678 = icmp eq i8 %673, 0
  br i1 %678, label %679, label %616, !llvm.loop !114

679:                                              ; preds = %665
  %680 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %681 = load ptr, ptr %603, align 8, !tbaa !31
  %682 = getelementptr inbounds nuw i8, ptr %681, i64 68
  %683 = load i32, ptr %682, align 4, !tbaa !102
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %695, label %685

685:                                              ; preds = %679
  %686 = load i64, ptr %59, align 8, !tbaa !56
  %687 = icmp ugt i64 %686, %666
  br i1 %687, label %688, label %695

688:                                              ; preds = %685
  %689 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %690 = load i64, ptr %689, align 8, !tbaa !60
  %691 = load ptr, ptr %680, align 8, !tbaa !44
  %692 = getelementptr inbounds nuw i8, ptr %691, i64 %666
  %693 = sub nuw i64 %686, %666
  %694 = tail call i64 @crc32_z(i64 noundef %690, ptr noundef %692, i64 noundef %693) #11
  store i64 %694, ptr %689, align 8, !tbaa !60
  br label %695

695:                                              ; preds = %688, %685, %679, %602
  store i32 103, ptr %41, align 8, !tbaa !29
  br label %696

696:                                              ; preds = %695, %599
  %697 = load i32, ptr %41, align 8, !tbaa !29
  %698 = icmp eq i32 %697, 103
  br i1 %698, label %699, label %736

699:                                              ; preds = %696
  %700 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %701 = load ptr, ptr %700, align 8, !tbaa !31
  %702 = getelementptr inbounds nuw i8, ptr %701, i64 68
  %703 = load i32, ptr %702, align 4, !tbaa !102
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %732, label %705

705:                                              ; preds = %699
  %706 = load i64, ptr %59, align 8, !tbaa !56
  %707 = add i64 %706, 2
  %708 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %709 = load i64, ptr %708, align 8, !tbaa !45
  %710 = icmp ugt i64 %707, %709
  br i1 %710, label %711, label %715

711:                                              ; preds = %705
  tail call fastcc void @flush_pending(ptr noundef %0)
  %712 = load i64, ptr %59, align 8, !tbaa !56
  %713 = icmp eq i64 %712, 0
  br i1 %713, label %715, label %714

714:                                              ; preds = %711
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %903

715:                                              ; preds = %711, %705
  %716 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %717 = load i64, ptr %716, align 8, !tbaa !60
  %718 = trunc i64 %717 to i8
  %719 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %720 = load ptr, ptr %719, align 8, !tbaa !44
  %721 = load i64, ptr %59, align 8, !tbaa !56
  %722 = add i64 %721, 1
  store i64 %722, ptr %59, align 8, !tbaa !56
  %723 = getelementptr inbounds nuw i8, ptr %720, i64 %721
  store i8 %718, ptr %723, align 1, !tbaa !8
  %724 = load i64, ptr %716, align 8, !tbaa !60
  %725 = lshr i64 %724, 8
  %726 = trunc i64 %725 to i8
  %727 = load ptr, ptr %719, align 8, !tbaa !44
  %728 = load i64, ptr %59, align 8, !tbaa !56
  %729 = add i64 %728, 1
  store i64 %729, ptr %59, align 8, !tbaa !56
  %730 = getelementptr inbounds nuw i8, ptr %727, i64 %728
  store i8 %726, ptr %730, align 1, !tbaa !8
  %731 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %731, ptr %716, align 8, !tbaa !60
  br label %732

732:                                              ; preds = %715, %699
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %733 = load i64, ptr %59, align 8, !tbaa !56
  %734 = icmp eq i64 %733, 0
  br i1 %734, label %736, label %735

735:                                              ; preds = %732
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %903

736:                                              ; preds = %732, %696
  %737 = load i32, ptr %34, align 8, !tbaa !82
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %748

739:                                              ; preds = %736
  %740 = getelementptr inbounds nuw i8, ptr %29, i64 180
  %741 = load i32, ptr %740, align 4, !tbaa !76
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %743, label %748

743:                                              ; preds = %739
  %744 = icmp eq i32 %1, 0
  br i1 %744, label %806, label %745

745:                                              ; preds = %743
  %746 = load i32, ptr %41, align 8, !tbaa !29
  %747 = icmp eq i32 %746, 666
  br i1 %747, label %806, label %748

748:                                              ; preds = %745, %739, %736
  %749 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %750 = load i32, ptr %749, align 4, !tbaa !50
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %754

752:                                              ; preds = %748
  %753 = tail call i32 @deflate_stored(ptr noundef %29, i32 noundef %1)
  br label %767

754:                                              ; preds = %748
  %755 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %756 = load i32, ptr %755, align 8, !tbaa !51
  switch i32 %756, label %761 [
    i32 2, label %757
    i32 3, label %759
  ]

757:                                              ; preds = %754
  %758 = tail call fastcc i32 @deflate_huff(ptr noundef %29, i32 noundef %1)
  br label %767

759:                                              ; preds = %754
  %760 = tail call fastcc i32 @deflate_rle(ptr noundef %29, i32 noundef %1)
  br label %767

761:                                              ; preds = %754
  %762 = sext i32 %750 to i64
  %763 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %762
  %764 = getelementptr inbounds nuw i8, ptr %763, i64 8
  %765 = load ptr, ptr %764, align 8, !tbaa !97
  %766 = tail call i32 %765(ptr noundef %29, i32 noundef %1) #11
  br label %767

767:                                              ; preds = %761, %759, %757, %752
  %768 = phi i32 [ %753, %752 ], [ %758, %757 ], [ %760, %759 ], [ %766, %761 ]
  %769 = and i32 %768, -2
  %770 = icmp eq i32 %769, 2
  br i1 %770, label %771, label %772

771:                                              ; preds = %767
  store i32 666, ptr %41, align 8, !tbaa !29
  br label %772

772:                                              ; preds = %771, %767
  %773 = and i32 %768, -3
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %779

775:                                              ; preds = %772
  %776 = load i32, ptr %50, align 8, !tbaa !99
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %903

778:                                              ; preds = %775
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %903

779:                                              ; preds = %772
  %780 = icmp eq i32 %768, 1
  br i1 %780, label %781, label %806

781:                                              ; preds = %779
  switch i32 %1, label %783 [
    i32 1, label %782
    i32 5, label %802
  ]

782:                                              ; preds = %781
  tail call void @_tr_align(ptr noundef %29) #11
  br label %802

783:                                              ; preds = %781
  tail call void @_tr_stored_block(ptr noundef %29, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %784 = icmp eq i32 %1, 3
  br i1 %784, label %785, label %802

785:                                              ; preds = %783
  %786 = getelementptr inbounds nuw i8, ptr %29, i64 120
  %787 = load ptr, ptr %786, align 8, !tbaa !41
  %788 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %789 = load i32, ptr %788, align 4, !tbaa !36
  %790 = add i32 %789, -1
  %791 = zext i32 %790 to i64
  %792 = getelementptr inbounds nuw [2 x i8], ptr %787, i64 %791
  store i16 0, ptr %792, align 2, !tbaa !63
  %793 = shl nuw nsw i64 %791, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %787, i8 0, i64 %793, i1 false)
  %794 = getelementptr inbounds nuw i8, ptr %29, i64 5960
  store i32 0, ptr %794, align 8, !tbaa !64
  %795 = getelementptr inbounds nuw i8, ptr %29, i64 180
  %796 = load i32, ptr %795, align 4, !tbaa !76
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %798, label %802

798:                                              ; preds = %785
  %799 = getelementptr inbounds nuw i8, ptr %29, i64 172
  store i32 0, ptr %799, align 4, !tbaa !74
  %800 = getelementptr inbounds nuw i8, ptr %29, i64 152
  store i64 0, ptr %800, align 8, !tbaa !75
  %801 = getelementptr inbounds nuw i8, ptr %29, i64 5932
  store i32 0, ptr %801, align 4, !tbaa !77
  br label %802

802:                                              ; preds = %798, %785, %783, %782, %781
  tail call fastcc void @flush_pending(ptr noundef %0)
  %803 = load i32, ptr %50, align 8, !tbaa !99
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %806

805:                                              ; preds = %802
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %903

806:                                              ; preds = %802, %779, %745, %743
  br i1 %44, label %903, label %807

807:                                              ; preds = %806
  %808 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %809 = load i32, ptr %808, align 8, !tbaa !30
  %810 = icmp slt i32 %809, 1
  br i1 %810, label %903, label %811

811:                                              ; preds = %807
  %812 = icmp eq i32 %809, 2
  %813 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %814 = load i64, ptr %813, align 8, !tbaa !60
  br i1 %812, label %815, label %866

815:                                              ; preds = %811
  %816 = trunc i64 %814 to i8
  %817 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %818 = load ptr, ptr %817, align 8, !tbaa !44
  %819 = load i64, ptr %59, align 8, !tbaa !56
  %820 = add i64 %819, 1
  store i64 %820, ptr %59, align 8, !tbaa !56
  %821 = getelementptr inbounds nuw i8, ptr %818, i64 %819
  store i8 %816, ptr %821, align 1, !tbaa !8
  %822 = load i64, ptr %813, align 8, !tbaa !60
  %823 = lshr i64 %822, 8
  %824 = trunc i64 %823 to i8
  %825 = load ptr, ptr %817, align 8, !tbaa !44
  %826 = load i64, ptr %59, align 8, !tbaa !56
  %827 = add i64 %826, 1
  store i64 %827, ptr %59, align 8, !tbaa !56
  %828 = getelementptr inbounds nuw i8, ptr %825, i64 %826
  store i8 %824, ptr %828, align 1, !tbaa !8
  %829 = load i64, ptr %813, align 8, !tbaa !60
  %830 = lshr i64 %829, 16
  %831 = trunc i64 %830 to i8
  %832 = load ptr, ptr %817, align 8, !tbaa !44
  %833 = load i64, ptr %59, align 8, !tbaa !56
  %834 = add i64 %833, 1
  store i64 %834, ptr %59, align 8, !tbaa !56
  %835 = getelementptr inbounds nuw i8, ptr %832, i64 %833
  store i8 %831, ptr %835, align 1, !tbaa !8
  %836 = load i64, ptr %813, align 8, !tbaa !60
  %837 = lshr i64 %836, 24
  %838 = trunc i64 %837 to i8
  %839 = load ptr, ptr %817, align 8, !tbaa !44
  %840 = load i64, ptr %59, align 8, !tbaa !56
  %841 = add i64 %840, 1
  store i64 %841, ptr %59, align 8, !tbaa !56
  %842 = getelementptr inbounds nuw i8, ptr %839, i64 %840
  store i8 %838, ptr %842, align 1, !tbaa !8
  %843 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %844 = load i64, ptr %843, align 8, !tbaa !54
  %845 = trunc i64 %844 to i8
  %846 = load ptr, ptr %817, align 8, !tbaa !44
  %847 = load i64, ptr %59, align 8, !tbaa !56
  %848 = add i64 %847, 1
  store i64 %848, ptr %59, align 8, !tbaa !56
  %849 = getelementptr inbounds nuw i8, ptr %846, i64 %847
  store i8 %845, ptr %849, align 1, !tbaa !8
  %850 = load i64, ptr %843, align 8, !tbaa !54
  %851 = lshr i64 %850, 8
  %852 = trunc i64 %851 to i8
  %853 = load ptr, ptr %817, align 8, !tbaa !44
  %854 = load i64, ptr %59, align 8, !tbaa !56
  %855 = add i64 %854, 1
  store i64 %855, ptr %59, align 8, !tbaa !56
  %856 = getelementptr inbounds nuw i8, ptr %853, i64 %854
  store i8 %852, ptr %856, align 1, !tbaa !8
  %857 = load i64, ptr %843, align 8, !tbaa !54
  %858 = lshr i64 %857, 16
  %859 = trunc i64 %858 to i8
  %860 = load ptr, ptr %817, align 8, !tbaa !44
  %861 = load i64, ptr %59, align 8, !tbaa !56
  %862 = add i64 %861, 1
  store i64 %862, ptr %59, align 8, !tbaa !56
  %863 = getelementptr inbounds nuw i8, ptr %860, i64 %861
  store i8 %859, ptr %863, align 1, !tbaa !8
  %864 = load i64, ptr %843, align 8, !tbaa !54
  %865 = lshr i64 %864, 24
  br label %887

866:                                              ; preds = %811
  %867 = lshr i64 %814, 16
  %868 = lshr i64 %814, 24
  %869 = trunc i64 %868 to i8
  %870 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %871 = load ptr, ptr %870, align 8, !tbaa !44
  %872 = load i64, ptr %59, align 8, !tbaa !56
  %873 = add i64 %872, 1
  store i64 %873, ptr %59, align 8, !tbaa !56
  %874 = getelementptr inbounds nuw i8, ptr %871, i64 %872
  store i8 %869, ptr %874, align 1, !tbaa !8
  %875 = trunc i64 %867 to i8
  %876 = load ptr, ptr %870, align 8, !tbaa !44
  %877 = load i64, ptr %59, align 8, !tbaa !56
  %878 = add i64 %877, 1
  store i64 %878, ptr %59, align 8, !tbaa !56
  %879 = getelementptr inbounds nuw i8, ptr %876, i64 %877
  store i8 %875, ptr %879, align 1, !tbaa !8
  %880 = load i64, ptr %813, align 8, !tbaa !60
  %881 = lshr i64 %880, 8
  %882 = trunc i64 %881 to i8
  %883 = load ptr, ptr %870, align 8, !tbaa !44
  %884 = load i64, ptr %59, align 8, !tbaa !56
  %885 = add i64 %884, 1
  store i64 %885, ptr %59, align 8, !tbaa !56
  %886 = getelementptr inbounds nuw i8, ptr %883, i64 %884
  store i8 %882, ptr %886, align 1, !tbaa !8
  br label %887

887:                                              ; preds = %866, %815
  %888 = phi ptr [ %870, %866 ], [ %817, %815 ]
  %889 = phi i64 [ %880, %866 ], [ %865, %815 ]
  %890 = trunc i64 %889 to i8
  %891 = load ptr, ptr %888, align 8, !tbaa !44
  %892 = load i64, ptr %59, align 8, !tbaa !56
  %893 = add i64 %892, 1
  store i64 %893, ptr %59, align 8, !tbaa !56
  %894 = getelementptr inbounds nuw i8, ptr %891, i64 %892
  store i8 %890, ptr %894, align 1, !tbaa !8
  tail call fastcc void @flush_pending(ptr noundef %0)
  %895 = load i32, ptr %808, align 8, !tbaa !30
  %896 = icmp sgt i32 %895, 0
  br i1 %896, label %897, label %899

897:                                              ; preds = %887
  %898 = sub nsw i32 0, %895
  store i32 %898, ptr %808, align 8, !tbaa !30
  br label %899

899:                                              ; preds = %897, %887
  %900 = load i64, ptr %59, align 8, !tbaa !56
  %901 = icmp eq i64 %900, 0
  %902 = zext i1 %901 to i32
  br label %903

903:                                              ; preds = %899, %807, %806, %805, %778, %775, %735, %714, %664, %565, %498, %268, %202, %117, %109, %91, %53, %46, %23
  %904 = phi i32 [ -5, %109 ], [ -2, %46 ], [ -5, %53 ], [ 0, %91 ], [ -5, %117 ], [ 0, %268 ], [ 0, %714 ], [ 0, %735 ], [ -2, %23 ], [ 0, %806 ], [ %902, %899 ], [ 1, %807 ], [ 0, %664 ], [ 0, %565 ], [ 0, %498 ], [ 0, %202 ], [ 0, %778 ], [ 0, %805 ], [ 0, %775 ]
  ret i32 %904
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @slide_hash(ptr noundef captures(none) %0) unnamed_addr #8 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = load i32, ptr %2, align 8, !tbaa !33
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 132
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = zext i32 %5 to i64
  %9 = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %9, %1 ], [ %13, %10 ]
  %12 = phi i32 [ %5, %1 ], [ %18, %10 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 -2
  %14 = load i16, ptr %13, align 2, !tbaa !63
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @llvm.usub.sat.i32(i32 %15, i32 %3)
  %17 = trunc nuw i32 %16 to i16
  store i16 %17, ptr %13, align 2, !tbaa !63
  %18 = add i32 %12, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %10, !llvm.loop !85

20:                                               ; preds = %10
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = zext i32 %3 to i64
  %24 = getelementptr inbounds nuw [2 x i8], ptr %22, i64 %23
  br label %25

25:                                               ; preds = %25, %20
  %26 = phi ptr [ %24, %20 ], [ %28, %25 ]
  %27 = phi i32 [ %3, %20 ], [ %33, %25 ]
  %28 = getelementptr inbounds i8, ptr %26, i64 -2
  %29 = load i16, ptr %28, align 2, !tbaa !63
  %30 = zext i16 %29 to i32
  %31 = tail call i32 @llvm.usub.sat.i32(i32 %30, i32 %3)
  %32 = trunc nuw i32 %31 to i16
  store i16 %32, ptr %28, align 2, !tbaa !63
  %33 = add i32 %27, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %25, !llvm.loop !88

35:                                               ; preds = %25
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 5960
  store i32 1, ptr %36, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @deflateTune(ptr noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
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
  %4 = lshr i64 %1, 8
  %5 = lshr i64 %1, 9
  %6 = add i64 %1, 4
  %7 = add i64 %6, %3
  %8 = add i64 %7, %4
  %9 = add i64 %8, %5
  %10 = icmp ult i64 %9, %1
  %11 = select i1 %10, i64 -1, i64 %9
  %12 = lshr i64 %1, 5
  %13 = lshr i64 %1, 7
  %14 = lshr i64 %1, 11
  %15 = add i64 %1, 7
  %16 = add i64 %15, %12
  %17 = add i64 %16, %13
  %18 = add i64 %17, %14
  %19 = icmp ult i64 %18, %1
  %20 = select i1 %19, i64 -1, i64 %18
  %21 = icmp eq ptr %0, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !20
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %39 = load i32, ptr %38, align 8, !tbaa !29
  switch i32 %39, label %46 [
    i32 42, label %40
    i32 57, label %40
    i32 69, label %40
    i32 73, label %40
    i32 91, label %40
    i32 103, label %40
    i32 113, label %40
    i32 666, label %40
  ]

40:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %42 = load ptr, ptr %41, align 8, !tbaa !19
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 48
  %44 = load i32, ptr %43, align 8, !tbaa !30
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %54

46:                                               ; preds = %37, %34, %30, %26, %22, %2
  %47 = tail call i64 @llvm.umax.i64(i64 %11, i64 %20)
  %48 = tail call i64 @llvm.uadd.sat.i64(i64 %47, i64 18)
  br label %133

49:                                               ; preds = %40
  %50 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %44), !nosanitize !58
  %51 = extractvalue { i32, i1 } %50, 0, !nosanitize !58
  %52 = extractvalue { i32, i1 } %50, 1, !nosanitize !58
  br i1 %52, label %53, label %54, !prof !59, !nosanitize !58

53:                                               ; preds = %49
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !58
  unreachable, !nosanitize !58

54:                                               ; preds = %49, %40
  %55 = phi i32 [ %51, %49 ], [ %44, %40 ]
  switch i32 %55, label %100 [
    i32 0, label %101
    i32 1, label %56
    i32 2, label %61
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds nuw i8, ptr %42, i64 172
  %58 = load i32, ptr %57, align 4, !tbaa !74
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i64 6, i64 10
  br label %101

61:                                               ; preds = %54
  %62 = getelementptr inbounds nuw i8, ptr %42, i64 56
  %63 = load ptr, ptr %62, align 8, !tbaa !31
  %64 = icmp eq ptr %63, null
  br i1 %64, label %101, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 24
  %67 = load ptr, ptr %66, align 8, !tbaa !105
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %71 = load i32, ptr %70, align 8, !tbaa !110
  %72 = add i32 %71, 2
  %73 = zext i32 %72 to i64
  %74 = add nuw nsw i64 %73, 18
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi i64 [ %74, %69 ], [ 18, %65 ]
  %77 = getelementptr inbounds nuw i8, ptr %63, i64 40
  %78 = load ptr, ptr %77, align 8, !tbaa !106
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %78)
  %82 = add i64 %81, %76
  %83 = add i64 %82, 1
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi i64 [ %76, %75 ], [ %83, %80 ]
  %86 = getelementptr inbounds nuw i8, ptr %63, i64 56
  %87 = load ptr, ptr %86, align 8, !tbaa !107
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %87)
  %91 = add i64 %90, %85
  %92 = add i64 %91, 1
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i64 [ %85, %84 ], [ %92, %89 ]
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 68
  %96 = load i32, ptr %95, align 4, !tbaa !102
  %97 = icmp eq i32 %96, 0
  %98 = add i64 %94, 2
  %99 = select i1 %97, i64 %94, i64 %98
  br label %101

100:                                              ; preds = %54
  br label %101

101:                                              ; preds = %100, %93, %61, %56, %54
  %102 = phi i64 [ 18, %100 ], [ 18, %61 ], [ %60, %56 ], [ %99, %93 ], [ 0, %54 ]
  %103 = getelementptr inbounds nuw i8, ptr %42, i64 84
  %104 = load i32, ptr %103, align 4, !tbaa !32
  %105 = icmp eq i32 %104, 15
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = getelementptr inbounds nuw i8, ptr %42, i64 136
  %108 = load i32, ptr %107, align 8, !tbaa !35
  %109 = icmp eq i32 %108, 15
  br i1 %109, label %122, label %110

110:                                              ; preds = %106, %101
  %111 = getelementptr inbounds nuw i8, ptr %42, i64 136
  %112 = load i32, ptr %111, align 8, !tbaa !35
  %113 = icmp ugt i32 %104, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds nuw i8, ptr %42, i64 196
  %116 = load i32, ptr %115, align 4, !tbaa !50
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114, %110
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi i64 [ %20, %118 ], [ %11, %114 ]
  %121 = tail call i64 @llvm.uadd.sat.i64(i64 %120, i64 %102)
  br label %133

122:                                              ; preds = %106
  %123 = lshr i64 %1, 12
  %124 = lshr i64 %1, 14
  %125 = lshr i64 %1, 25
  %126 = add i64 %1, 7
  %127 = add i64 %126, %123
  %128 = add i64 %127, %124
  %129 = add i64 %128, %125
  %130 = add i64 %129, %102
  %131 = icmp ult i64 %130, %1
  %132 = select i1 %131, i64 -1, i64 %130
  br label %133

133:                                              ; preds = %122, %119, %46
  %134 = phi i64 [ %48, %46 ], [ %121, %119 ], [ %132, %122 ]
  ret i64 %134
}

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = lshr i64 %1, 8
  %5 = lshr i64 %1, 9
  %6 = add i64 %1, 4
  %7 = add i64 %6, %3
  %8 = add i64 %7, %4
  %9 = add i64 %8, %5
  %10 = icmp ult i64 %9, %1
  %11 = select i1 %10, i64 -1, i64 %9
  %12 = lshr i64 %1, 5
  %13 = lshr i64 %1, 7
  %14 = lshr i64 %1, 11
  %15 = add i64 %1, 7
  %16 = add i64 %15, %12
  %17 = add i64 %16, %13
  %18 = add i64 %17, %14
  %19 = icmp ult i64 %18, %1
  %20 = select i1 %19, i64 -1, i64 %18
  %21 = icmp eq ptr %0, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !20
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %39 = load i32, ptr %38, align 8, !tbaa !29
  switch i32 %39, label %44 [
    i32 42, label %40
    i32 57, label %40
    i32 69, label %40
    i32 73, label %40
    i32 91, label %40
    i32 103, label %40
    i32 113, label %40
    i32 666, label %40
  ]

40:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 48
  %42 = load i32, ptr %41, align 8, !tbaa !30
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %52

44:                                               ; preds = %37, %34, %30, %26, %22, %2
  %45 = tail call i64 @llvm.umax.i64(i64 %11, i64 %20)
  %46 = tail call i64 @llvm.uadd.sat.i64(i64 %45, i64 18)
  br label %130

47:                                               ; preds = %40
  %48 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %42), !nosanitize !58
  %49 = extractvalue { i32, i1 } %48, 0, !nosanitize !58
  %50 = extractvalue { i32, i1 } %48, 1, !nosanitize !58
  br i1 %50, label %51, label %52, !prof !59, !nosanitize !58

51:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 13) #12, !nosanitize !58
  unreachable, !nosanitize !58

52:                                               ; preds = %47, %40
  %53 = phi i32 [ %49, %47 ], [ %42, %40 ]
  switch i32 %53, label %98 [
    i32 0, label %99
    i32 1, label %54
    i32 2, label %59
  ]

54:                                               ; preds = %52
  %55 = getelementptr inbounds nuw i8, ptr %32, i64 172
  %56 = load i32, ptr %55, align 4, !tbaa !74
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i64 6, i64 10
  br label %99

59:                                               ; preds = %52
  %60 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %61 = load ptr, ptr %60, align 8, !tbaa !31
  %62 = icmp eq ptr %61, null
  br i1 %62, label %99, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 24
  %65 = load ptr, ptr %64, align 8, !tbaa !105
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %69 = load i32, ptr %68, align 8, !tbaa !110
  %70 = add i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = add nuw nsw i64 %71, 18
  br label %73

73:                                               ; preds = %67, %63
  %74 = phi i64 [ %72, %67 ], [ 18, %63 ]
  %75 = getelementptr inbounds nuw i8, ptr %61, i64 40
  %76 = load ptr, ptr %75, align 8, !tbaa !106
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %76)
  %80 = add nuw nsw i64 %74, 1
  %81 = add i64 %80, %79
  br label %82

82:                                               ; preds = %78, %73
  %83 = phi i64 [ %74, %73 ], [ %81, %78 ]
  %84 = getelementptr inbounds nuw i8, ptr %61, i64 56
  %85 = load ptr, ptr %84, align 8, !tbaa !107
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %85)
  %89 = add i64 %83, 1
  %90 = add i64 %89, %88
  br label %91

91:                                               ; preds = %87, %82
  %92 = phi i64 [ %83, %82 ], [ %90, %87 ]
  %93 = getelementptr inbounds nuw i8, ptr %61, i64 68
  %94 = load i32, ptr %93, align 4, !tbaa !102
  %95 = icmp eq i32 %94, 0
  %96 = add i64 %92, 2
  %97 = select i1 %95, i64 %92, i64 %96
  br label %99

98:                                               ; preds = %52
  br label %99

99:                                               ; preds = %98, %91, %59, %54, %52
  %100 = phi i64 [ 18, %98 ], [ 18, %59 ], [ %58, %54 ], [ %97, %91 ], [ 0, %52 ]
  %101 = getelementptr inbounds nuw i8, ptr %32, i64 84
  %102 = load i32, ptr %101, align 4, !tbaa !32
  %103 = icmp eq i32 %102, 15
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = getelementptr inbounds nuw i8, ptr %32, i64 136
  %106 = load i32, ptr %105, align 8, !tbaa !35
  %107 = icmp eq i32 %106, 15
  br i1 %107, label %120, label %108

108:                                              ; preds = %104, %99
  %109 = getelementptr inbounds nuw i8, ptr %32, i64 136
  %110 = load i32, ptr %109, align 8, !tbaa !35
  %111 = icmp ugt i32 %102, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds nuw i8, ptr %32, i64 196
  %114 = load i32, ptr %113, align 4, !tbaa !50
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %112
  %118 = phi i64 [ %20, %116 ], [ %11, %112 ]
  %119 = tail call i64 @llvm.uadd.sat.i64(i64 %118, i64 %100)
  br label %130

120:                                              ; preds = %104
  %121 = lshr i64 %1, 12
  %122 = lshr i64 %1, 14
  %123 = lshr i64 %1, 25
  %124 = add i64 %15, %121
  %125 = add i64 %124, %122
  %126 = add i64 %125, %123
  %127 = add i64 %126, %100
  %128 = icmp ult i64 %127, %1
  %129 = select i1 %128, i64 -1, i64 %127
  br label %130

130:                                              ; preds = %120, %117, %44
  %131 = phi i64 [ %46, %44 ], [ %119, %117 ], [ %129, %120 ]
  ret i64 %131
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #11
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %5 = load i64, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = load i32, ptr %6, align 8, !tbaa !99
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %1
  %12 = trunc nuw i64 %9 to i32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %16, i64 %9, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !98
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %9
  store ptr %18, ptr %13, align 8, !tbaa !98
  %19 = load ptr, ptr %15, align 8, !tbaa !57
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 %9
  store ptr %20, ptr %15, align 8, !tbaa !57
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = load i64, ptr %21, align 8, !tbaa !100
  %23 = add i64 %22, %9
  store i64 %23, ptr %21, align 8, !tbaa !100
  %24 = load i32, ptr %6, align 8, !tbaa !99
  %25 = sub i32 %24, %12
  store i32 %25, ptr %6, align 8, !tbaa !99
  %26 = load i64, ptr %4, align 8, !tbaa !56
  %27 = sub i64 %26, %9
  store i64 %27, ptr %4, align 8, !tbaa !56
  %28 = icmp eq i64 %26, %9
  br i1 %28, label %29, label %32

29:                                               ; preds = %11
  %30 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  store ptr %31, ptr %15, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %29, %11, %1
  ret void
}

declare i64 @crc32_z(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !tbaa !45
  %5 = add i64 %4, -5
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %7 = load i32, ptr %6, align 8, !tbaa !33
  %8 = zext i32 %7 to i64
  %9 = tail call i64 @llvm.umin.i64(i64 %5, i64 %8)
  %10 = trunc nuw i64 %9 to i32
  %11 = load ptr, ptr %0, align 8, !tbaa !20
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %13 = load i32, ptr %12, align 8, !tbaa !82
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %17 = icmp eq i32 %1, 4
  %18 = icmp ne i32 %1, 0
  %19 = icmp eq i32 %1, 4
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %23

23:                                               ; preds = %189, %2
  %24 = load i32, ptr %14, align 4, !tbaa !93
  %25 = add i32 %24, 42
  %26 = lshr i32 %25, 3
  %27 = load ptr, ptr %0, align 8, !tbaa !20
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 32
  %29 = load i32, ptr %28, align 8, !tbaa !99
  %30 = icmp ult i32 %29, %26
  br i1 %30, label %190, label %31

31:                                               ; preds = %23
  %32 = load i32, ptr %15, align 4, !tbaa !74
  %33 = zext i32 %32 to i64
  %34 = load i64, ptr %16, align 8, !tbaa !75
  %35 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %33, i64 %34), !nosanitize !58
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !58
  br i1 %36, label %37, label %38, !prof !59, !nosanitize !58

37:                                               ; preds = %365, %31
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

38:                                               ; preds = %31
  %39 = sub nuw i32 %29, %26
  %40 = extractvalue { i64, i1 } %35, 0, !nosanitize !58
  %41 = trunc i64 %40 to i32
  %42 = and i64 %40, 4294967295
  %43 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %44 = load i32, ptr %43, align 8, !tbaa !82
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %42, %45
  %47 = icmp samesign ult i64 %46, 65535
  %48 = add i32 %44, %41
  %49 = select i1 %47, i32 %48, i32 65535
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 %39)
  %51 = icmp ult i32 %50, %10
  br i1 %51, label %52, label %58

52:                                               ; preds = %38
  %53 = icmp ne i32 %50, 0
  %54 = or i1 %17, %53
  %55 = and i1 %18, %54
  %56 = icmp eq i32 %50, %48
  %57 = and i1 %56, %55
  br i1 %57, label %58, label %190

58:                                               ; preds = %52, %38
  %59 = icmp eq i32 %50, %48
  %60 = and i1 %19, %59
  %61 = zext i1 %60 to i32
  tail call void @_tr_stored_block(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef %61) #11
  %62 = trunc i32 %50 to i8
  %63 = load ptr, ptr %20, align 8, !tbaa !44
  %64 = load i64, ptr %21, align 8, !tbaa !56
  %65 = getelementptr i8, ptr %63, i64 %64
  %66 = getelementptr i8, ptr %65, i64 -4
  store i8 %62, ptr %66, align 1, !tbaa !8
  %67 = lshr i32 %50, 8
  %68 = trunc i32 %67 to i8
  %69 = load ptr, ptr %20, align 8, !tbaa !44
  %70 = load i64, ptr %21, align 8, !tbaa !56
  %71 = getelementptr i8, ptr %69, i64 %70
  %72 = getelementptr i8, ptr %71, i64 -3
  store i8 %68, ptr %72, align 1, !tbaa !8
  %73 = xor i32 %50, -1
  %74 = trunc i32 %73 to i8
  %75 = load ptr, ptr %20, align 8, !tbaa !44
  %76 = load i64, ptr %21, align 8, !tbaa !56
  %77 = getelementptr i8, ptr %75, i64 %76
  %78 = getelementptr i8, ptr %77, i64 -2
  store i8 %74, ptr %78, align 1, !tbaa !8
  %79 = lshr i32 %73, 8
  %80 = trunc i32 %79 to i8
  %81 = load ptr, ptr %20, align 8, !tbaa !44
  %82 = load i64, ptr %21, align 8, !tbaa !56
  %83 = getelementptr i8, ptr %81, i64 %82
  %84 = getelementptr i8, ptr %83, i64 -1
  store i8 %80, ptr %84, align 1, !tbaa !8
  %85 = load ptr, ptr %0, align 8, !tbaa !20
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 56
  %87 = load ptr, ptr %86, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %87) #11
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 40
  %89 = load i64, ptr %88, align 8, !tbaa !56
  %90 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %91 = load i32, ptr %90, align 8, !tbaa !99
  %92 = zext i32 %91 to i64
  %93 = tail call i64 @llvm.umin.i64(i64 %89, i64 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %58
  %96 = trunc nuw i64 %93 to i32
  %97 = getelementptr inbounds nuw i8, ptr %85, i64 24
  %98 = load ptr, ptr %97, align 8, !tbaa !98
  %99 = getelementptr inbounds nuw i8, ptr %87, i64 32
  %100 = load ptr, ptr %99, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %98, ptr align 1 %100, i64 %93, i1 false)
  %101 = load ptr, ptr %97, align 8, !tbaa !98
  %102 = getelementptr inbounds nuw i8, ptr %101, i64 %93
  store ptr %102, ptr %97, align 8, !tbaa !98
  %103 = load ptr, ptr %99, align 8, !tbaa !57
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 %93
  store ptr %104, ptr %99, align 8, !tbaa !57
  %105 = getelementptr inbounds nuw i8, ptr %85, i64 40
  %106 = load i64, ptr %105, align 8, !tbaa !100
  %107 = add i64 %106, %93
  store i64 %107, ptr %105, align 8, !tbaa !100
  %108 = load i32, ptr %90, align 8, !tbaa !99
  %109 = sub i32 %108, %96
  store i32 %109, ptr %90, align 8, !tbaa !99
  %110 = load i64, ptr %88, align 8, !tbaa !56
  %111 = sub i64 %110, %93
  store i64 %111, ptr %88, align 8, !tbaa !56
  %112 = icmp eq i64 %110, %93
  br i1 %112, label %113, label %116

113:                                              ; preds = %95
  %114 = getelementptr inbounds nuw i8, ptr %87, i64 16
  %115 = load ptr, ptr %114, align 8, !tbaa !44
  store ptr %115, ptr %99, align 8, !tbaa !57
  br label %116

116:                                              ; preds = %113, %95, %58
  %117 = icmp eq i32 %41, 0
  br i1 %117, label %144, label %118

118:                                              ; preds = %116
  %119 = tail call i32 @llvm.umin.i32(i32 %50, i32 %41)
  %120 = load ptr, ptr %0, align 8, !tbaa !20
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 24
  %122 = load ptr, ptr %121, align 8, !tbaa !98
  %123 = load ptr, ptr %22, align 8, !tbaa !39
  %124 = load i64, ptr %16, align 8, !tbaa !75
  %125 = getelementptr inbounds i8, ptr %123, i64 %124
  %126 = zext i32 %119 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %122, ptr align 1 %125, i64 %126, i1 false)
  %127 = load ptr, ptr %0, align 8, !tbaa !20
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 24
  %129 = load ptr, ptr %128, align 8, !tbaa !98
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 %126
  store ptr %130, ptr %128, align 8, !tbaa !98
  %131 = getelementptr inbounds nuw i8, ptr %127, i64 32
  %132 = load i32, ptr %131, align 8, !tbaa !99
  %133 = sub i32 %132, %119
  store i32 %133, ptr %131, align 8, !tbaa !99
  %134 = getelementptr inbounds nuw i8, ptr %127, i64 40
  %135 = load i64, ptr %134, align 8, !tbaa !100
  %136 = add i64 %135, %126
  store i64 %136, ptr %134, align 8, !tbaa !100
  %137 = load i64, ptr %16, align 8, !tbaa !75
  %138 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %137, i64 %126), !nosanitize !58
  %139 = extractvalue { i64, i1 } %138, 1, !nosanitize !58
  br i1 %139, label %140, label %141, !prof !59, !nosanitize !58

140:                                              ; preds = %407, %118
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !58
  unreachable, !nosanitize !58

141:                                              ; preds = %118
  %142 = extractvalue { i64, i1 } %138, 0, !nosanitize !58
  store i64 %142, ptr %16, align 8, !tbaa !75
  %143 = sub i32 %50, %119
  br label %144

144:                                              ; preds = %141, %116
  %145 = phi i32 [ %143, %141 ], [ %50, %116 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %189, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %0, align 8, !tbaa !20
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 24
  %150 = load ptr, ptr %149, align 8, !tbaa !98
  %151 = getelementptr inbounds nuw i8, ptr %148, i64 8
  %152 = load i32, ptr %151, align 8, !tbaa !82
  %153 = tail call i32 @llvm.umin.i32(i32 %152, i32 %145)
  %154 = icmp eq i32 %152, 0
  br i1 %154, label %177, label %155

155:                                              ; preds = %147
  %156 = sub i32 %152, %153
  store i32 %156, ptr %151, align 8, !tbaa !82
  %157 = load ptr, ptr %148, align 8, !tbaa !83
  %158 = zext i32 %153 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %150, ptr align 1 %157, i64 %158, i1 false)
  %159 = getelementptr inbounds nuw i8, ptr %148, i64 56
  %160 = load ptr, ptr %159, align 8, !tbaa !19
  %161 = getelementptr inbounds nuw i8, ptr %160, i64 48
  %162 = load i32, ptr %161, align 8, !tbaa !30
  switch i32 %162, label %171 [
    i32 1, label %163
    i32 2, label %167
  ]

163:                                              ; preds = %155
  %164 = getelementptr inbounds nuw i8, ptr %148, i64 96
  %165 = load i64, ptr %164, align 8, !tbaa !60
  %166 = tail call i64 @adler32(i64 noundef %165, ptr noundef %150, i32 noundef %153) #11
  store i64 %166, ptr %164, align 8, !tbaa !60
  br label %171

167:                                              ; preds = %155
  %168 = getelementptr inbounds nuw i8, ptr %148, i64 96
  %169 = load i64, ptr %168, align 8, !tbaa !60
  %170 = tail call i64 @crc32(i64 noundef %169, ptr noundef %150, i32 noundef %153) #11
  store i64 %170, ptr %168, align 8, !tbaa !60
  br label %171

171:                                              ; preds = %167, %163, %155
  %172 = load ptr, ptr %148, align 8, !tbaa !83
  %173 = getelementptr inbounds nuw i8, ptr %172, i64 %158
  store ptr %173, ptr %148, align 8, !tbaa !83
  %174 = getelementptr inbounds nuw i8, ptr %148, i64 16
  %175 = load i64, ptr %174, align 8, !tbaa !54
  %176 = add i64 %175, %158
  store i64 %176, ptr %174, align 8, !tbaa !54
  br label %177

177:                                              ; preds = %171, %147
  %178 = load ptr, ptr %0, align 8, !tbaa !20
  %179 = getelementptr inbounds nuw i8, ptr %178, i64 24
  %180 = load ptr, ptr %179, align 8, !tbaa !98
  %181 = zext i32 %145 to i64
  %182 = getelementptr inbounds nuw i8, ptr %180, i64 %181
  store ptr %182, ptr %179, align 8, !tbaa !98
  %183 = getelementptr inbounds nuw i8, ptr %178, i64 32
  %184 = load i32, ptr %183, align 8, !tbaa !99
  %185 = sub i32 %184, %145
  store i32 %185, ptr %183, align 8, !tbaa !99
  %186 = getelementptr inbounds nuw i8, ptr %178, i64 40
  %187 = load i64, ptr %186, align 8, !tbaa !100
  %188 = add i64 %187, %181
  store i64 %188, ptr %186, align 8, !tbaa !100
  br label %189

189:                                              ; preds = %177, %144
  br i1 %60, label %190, label %23, !llvm.loop !117

190:                                              ; preds = %189, %52, %23
  %191 = phi i1 [ true, %23 ], [ true, %52 ], [ false, %189 ]
  %192 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %193 = load ptr, ptr %0, align 8, !tbaa !20
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 8
  %195 = load i32, ptr %194, align 8, !tbaa !82
  %196 = sub i32 %13, %195
  %197 = icmp eq i32 %13, %195
  br i1 %197, label %262, label %198

198:                                              ; preds = %190
  %199 = load i32, ptr %6, align 8, !tbaa !33
  %200 = icmp ult i32 %196, %199
  br i1 %200, label %212, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %202, align 8, !tbaa !116
  %203 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %204 = load ptr, ptr %203, align 8, !tbaa !39
  %205 = load ptr, ptr %193, align 8, !tbaa !83
  %206 = zext i32 %199 to i64
  %207 = sub nsw i64 0, %206
  %208 = getelementptr inbounds i8, ptr %205, i64 %207
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %204, ptr align 1 %208, i64 %206, i1 false)
  %209 = load i32, ptr %6, align 8, !tbaa !33
  %210 = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %209, ptr %210, align 4, !tbaa !74
  %211 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %209, ptr %211, align 4, !tbaa !77
  br label %257

212:                                              ; preds = %198
  %213 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %214 = load i64, ptr %213, align 8, !tbaa !62
  %215 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %216 = load i32, ptr %215, align 4, !tbaa !74
  %217 = zext i32 %216 to i64
  %218 = sub i64 %214, %217
  %219 = zext i32 %196 to i64
  %220 = icmp ugt i64 %218, %219
  br i1 %220, label %239, label %221

221:                                              ; preds = %212
  %222 = sub i32 %216, %199
  store i32 %222, ptr %215, align 4, !tbaa !74
  %223 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %224 = load ptr, ptr %223, align 8, !tbaa !39
  %225 = zext i32 %199 to i64
  %226 = getelementptr inbounds nuw i8, ptr %224, i64 %225
  %227 = zext i32 %222 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %224, ptr nonnull align 1 %226, i64 %227, i1 false)
  %228 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %229 = load i32, ptr %228, align 8, !tbaa !116
  %230 = icmp ult i32 %229, 2
  br i1 %230, label %231, label %233

231:                                              ; preds = %221
  %232 = add nuw nsw i32 %229, 1
  store i32 %232, ptr %228, align 8, !tbaa !116
  br label %233

233:                                              ; preds = %231, %221
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %235 = load i32, ptr %234, align 4, !tbaa !77
  %236 = load i32, ptr %215, align 4, !tbaa !74
  %237 = icmp ugt i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  store i32 %236, ptr %234, align 4, !tbaa !77
  br label %239

239:                                              ; preds = %238, %233, %212
  %240 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %241 = load ptr, ptr %240, align 8, !tbaa !39
  %242 = load i32, ptr %215, align 4, !tbaa !74
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds nuw i8, ptr %241, i64 %243
  %245 = load ptr, ptr %0, align 8, !tbaa !20
  %246 = load ptr, ptr %245, align 8, !tbaa !83
  %247 = sub nsw i64 0, %219
  %248 = getelementptr inbounds i8, ptr %246, i64 %247
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %244, ptr nonnull align 1 %248, i64 %219, i1 false)
  %249 = load i32, ptr %215, align 4, !tbaa !74
  %250 = add i32 %249, %196
  store i32 %250, ptr %215, align 4, !tbaa !74
  %251 = load i32, ptr %6, align 8, !tbaa !33
  %252 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %253 = load i32, ptr %252, align 4, !tbaa !77
  %254 = sub i32 %251, %253
  %255 = tail call i32 @llvm.umin.i32(i32 %196, i32 %254)
  %256 = add i32 %255, %253
  store i32 %256, ptr %252, align 4, !tbaa !77
  br label %257

257:                                              ; preds = %239, %201
  %258 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %259 = load i32, ptr %258, align 4, !tbaa !74
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %260, ptr %261, align 8, !tbaa !75
  br label %262

262:                                              ; preds = %257, %190
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %264 = load i64, ptr %263, align 8, !tbaa !42
  %265 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %266 = load i32, ptr %265, align 4, !tbaa !74
  %267 = zext i32 %266 to i64
  %268 = icmp ult i64 %264, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %262
  store i64 %267, ptr %263, align 8, !tbaa !42
  br label %270

270:                                              ; preds = %269, %262
  br i1 %191, label %271, label %451

271:                                              ; preds = %270
  %272 = icmp ne i32 %1, 0
  switch i32 %1, label %273 [
    i32 4, label %282
    i32 0, label %282
  ]

273:                                              ; preds = %271
  %274 = load ptr, ptr %0, align 8, !tbaa !20
  %275 = getelementptr inbounds nuw i8, ptr %274, i64 8
  %276 = load i32, ptr %275, align 8, !tbaa !82
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  %279 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %280 = load i64, ptr %279, align 8, !tbaa !75
  %281 = icmp eq i64 %280, %267
  br i1 %281, label %454, label %282

282:                                              ; preds = %278, %273, %271, %271
  %283 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %284 = load i64, ptr %283, align 8, !tbaa !62
  %285 = trunc i64 %284 to i32
  %286 = sub i32 %285, %266
  %287 = load ptr, ptr %0, align 8, !tbaa !20
  %288 = getelementptr inbounds nuw i8, ptr %287, i64 8
  %289 = load i32, ptr %288, align 8, !tbaa !82
  %290 = icmp ugt i32 %289, %286
  br i1 %290, label %291, label %317

291:                                              ; preds = %282
  %292 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %293 = load i64, ptr %292, align 8, !tbaa !75
  %294 = load i32, ptr %6, align 8, !tbaa !33
  %295 = zext i32 %294 to i64
  %296 = icmp slt i64 %293, %295
  br i1 %296, label %317, label %297

297:                                              ; preds = %291
  %298 = sub nsw i64 %293, %295
  store i64 %298, ptr %292, align 8, !tbaa !75
  %299 = sub i32 %266, %294
  store i32 %299, ptr %265, align 4, !tbaa !74
  %300 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %301 = load ptr, ptr %300, align 8, !tbaa !39
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 %295
  %303 = zext i32 %299 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %301, ptr align 1 %302, i64 %303, i1 false)
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %305 = load i32, ptr %304, align 8, !tbaa !116
  %306 = icmp ult i32 %305, 2
  br i1 %306, label %307, label %309

307:                                              ; preds = %297
  %308 = add nuw nsw i32 %305, 1
  store i32 %308, ptr %304, align 8, !tbaa !116
  br label %309

309:                                              ; preds = %307, %297
  %310 = load i32, ptr %6, align 8, !tbaa !33
  %311 = add i32 %310, %286
  %312 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %313 = load i32, ptr %312, align 4, !tbaa !77
  %314 = load i32, ptr %265, align 4, !tbaa !74
  %315 = icmp ugt i32 %313, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %309
  store i32 %314, ptr %312, align 4, !tbaa !77
  br label %317

317:                                              ; preds = %316, %309, %291, %282
  %318 = phi i32 [ %311, %316 ], [ %311, %309 ], [ %286, %291 ], [ %286, %282 ]
  %319 = load ptr, ptr %0, align 8, !tbaa !20
  %320 = getelementptr inbounds nuw i8, ptr %319, i64 8
  %321 = load i32, ptr %320, align 8, !tbaa !82
  %322 = tail call i32 @llvm.umin.i32(i32 %318, i32 %321)
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %359, label %324

324:                                              ; preds = %317
  %325 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %326 = load ptr, ptr %325, align 8, !tbaa !39
  %327 = load i32, ptr %265, align 4, !tbaa !74
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds nuw i8, ptr %326, i64 %328
  %330 = sub i32 %321, %322
  store i32 %330, ptr %320, align 8, !tbaa !82
  %331 = load ptr, ptr %319, align 8, !tbaa !83
  %332 = zext i32 %322 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %329, ptr align 1 %331, i64 %332, i1 false)
  %333 = getelementptr inbounds nuw i8, ptr %319, i64 56
  %334 = load ptr, ptr %333, align 8, !tbaa !19
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 48
  %336 = load i32, ptr %335, align 8, !tbaa !30
  switch i32 %336, label %345 [
    i32 1, label %337
    i32 2, label %341
  ]

337:                                              ; preds = %324
  %338 = getelementptr inbounds nuw i8, ptr %319, i64 96
  %339 = load i64, ptr %338, align 8, !tbaa !60
  %340 = tail call i64 @adler32(i64 noundef %339, ptr noundef %329, i32 noundef %322) #11
  store i64 %340, ptr %338, align 8, !tbaa !60
  br label %345

341:                                              ; preds = %324
  %342 = getelementptr inbounds nuw i8, ptr %319, i64 96
  %343 = load i64, ptr %342, align 8, !tbaa !60
  %344 = tail call i64 @crc32(i64 noundef %343, ptr noundef %329, i32 noundef %322) #11
  store i64 %344, ptr %342, align 8, !tbaa !60
  br label %345

345:                                              ; preds = %341, %337, %324
  %346 = load ptr, ptr %319, align 8, !tbaa !83
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 %332
  store ptr %347, ptr %319, align 8, !tbaa !83
  %348 = getelementptr inbounds nuw i8, ptr %319, i64 16
  %349 = load i64, ptr %348, align 8, !tbaa !54
  %350 = add i64 %349, %332
  store i64 %350, ptr %348, align 8, !tbaa !54
  %351 = load i32, ptr %265, align 4, !tbaa !74
  %352 = add i32 %351, %322
  store i32 %352, ptr %265, align 4, !tbaa !74
  %353 = load i32, ptr %6, align 8, !tbaa !33
  %354 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %355 = load i32, ptr %354, align 4, !tbaa !77
  %356 = sub i32 %353, %355
  %357 = tail call i32 @llvm.umin.i32(i32 %322, i32 %356)
  %358 = add i32 %357, %355
  store i32 %358, ptr %354, align 4, !tbaa !77
  br label %359

359:                                              ; preds = %345, %317
  %360 = load i64, ptr %263, align 8, !tbaa !42
  %361 = load i32, ptr %265, align 4, !tbaa !74
  %362 = zext i32 %361 to i64
  %363 = icmp ult i64 %360, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %359
  store i64 %362, ptr %263, align 8, !tbaa !42
  br label %365

365:                                              ; preds = %364, %359
  %366 = load i32, ptr %192, align 4, !tbaa !93
  %367 = add i32 %366, 42
  %368 = lshr i32 %367, 3
  %369 = load i64, ptr %3, align 8, !tbaa !45
  %370 = zext nneg i32 %368 to i64
  %371 = sub i64 %369, %370
  %372 = tail call i64 @llvm.umin.i64(i64 %371, i64 65535)
  %373 = trunc nuw nsw i64 %372 to i32
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %375 = load i64, ptr %374, align 8, !tbaa !75
  %376 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %362, i64 %375), !nosanitize !58
  %377 = extractvalue { i64, i1 } %376, 1, !nosanitize !58
  br i1 %377, label %37, label %378, !prof !59, !nosanitize !58

378:                                              ; preds = %365
  %379 = load i32, ptr %6, align 8, !tbaa !33
  %380 = tail call i32 @llvm.umin.i32(i32 %379, i32 %373)
  %381 = extractvalue { i64, i1 } %376, 0, !nosanitize !58
  %382 = trunc i64 %381 to i32
  %383 = icmp ugt i32 %380, %382
  br i1 %383, label %384, label %396

384:                                              ; preds = %378
  %385 = icmp ne i32 %382, 0
  %386 = icmp eq i32 %1, 4
  %387 = or i1 %386, %385
  %388 = and i1 %272, %387
  br i1 %388, label %389, label %454

389:                                              ; preds = %384
  %390 = load ptr, ptr %0, align 8, !tbaa !20
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 8
  %392 = load i32, ptr %391, align 8, !tbaa !82
  %393 = icmp ne i32 %392, 0
  %394 = icmp ult i32 %373, %382
  %395 = select i1 %393, i1 true, i1 %394
  br i1 %395, label %454, label %396

396:                                              ; preds = %389, %378
  %397 = tail call i32 @llvm.umin.i32(i32 %373, i32 %382)
  %398 = icmp eq i32 %1, 4
  br i1 %398, label %399, label %407

399:                                              ; preds = %396
  %400 = load ptr, ptr %0, align 8, !tbaa !20
  %401 = getelementptr inbounds nuw i8, ptr %400, i64 8
  %402 = load i32, ptr %401, align 8, !tbaa !82
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %399
  %405 = icmp uge i32 %373, %382
  %406 = zext i1 %405 to i32
  br label %407

407:                                              ; preds = %404, %399, %396
  %408 = phi i32 [ 0, %399 ], [ 0, %396 ], [ %406, %404 ]
  %409 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %410 = load ptr, ptr %409, align 8, !tbaa !39
  %411 = getelementptr inbounds i8, ptr %410, i64 %375
  %412 = zext nneg i32 %397 to i64
  tail call void @_tr_stored_block(ptr noundef %0, ptr noundef %411, i64 noundef %412, i32 noundef %408) #11
  %413 = load i64, ptr %374, align 8, !tbaa !75
  %414 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %413, i64 %412), !nosanitize !58
  %415 = extractvalue { i64, i1 } %414, 1, !nosanitize !58
  br i1 %415, label %140, label %416, !prof !59, !nosanitize !58

416:                                              ; preds = %407
  %417 = extractvalue { i64, i1 } %414, 0, !nosanitize !58
  store i64 %417, ptr %374, align 8, !tbaa !75
  %418 = load ptr, ptr %0, align 8, !tbaa !20
  %419 = getelementptr inbounds nuw i8, ptr %418, i64 56
  %420 = load ptr, ptr %419, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %420) #11
  %421 = getelementptr inbounds nuw i8, ptr %420, i64 40
  %422 = load i64, ptr %421, align 8, !tbaa !56
  %423 = getelementptr inbounds nuw i8, ptr %418, i64 32
  %424 = load i32, ptr %423, align 8, !tbaa !99
  %425 = zext i32 %424 to i64
  %426 = tail call i64 @llvm.umin.i64(i64 %422, i64 %425)
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %449, label %428

428:                                              ; preds = %416
  %429 = trunc nuw i64 %426 to i32
  %430 = getelementptr inbounds nuw i8, ptr %418, i64 24
  %431 = load ptr, ptr %430, align 8, !tbaa !98
  %432 = getelementptr inbounds nuw i8, ptr %420, i64 32
  %433 = load ptr, ptr %432, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %431, ptr align 1 %433, i64 %426, i1 false)
  %434 = load ptr, ptr %430, align 8, !tbaa !98
  %435 = getelementptr inbounds nuw i8, ptr %434, i64 %426
  store ptr %435, ptr %430, align 8, !tbaa !98
  %436 = load ptr, ptr %432, align 8, !tbaa !57
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 %426
  store ptr %437, ptr %432, align 8, !tbaa !57
  %438 = getelementptr inbounds nuw i8, ptr %418, i64 40
  %439 = load i64, ptr %438, align 8, !tbaa !100
  %440 = add i64 %439, %426
  store i64 %440, ptr %438, align 8, !tbaa !100
  %441 = load i32, ptr %423, align 8, !tbaa !99
  %442 = sub i32 %441, %429
  store i32 %442, ptr %423, align 8, !tbaa !99
  %443 = load i64, ptr %421, align 8, !tbaa !56
  %444 = sub i64 %443, %426
  store i64 %444, ptr %421, align 8, !tbaa !56
  %445 = icmp eq i64 %443, %426
  br i1 %445, label %446, label %449

446:                                              ; preds = %428
  %447 = getelementptr inbounds nuw i8, ptr %420, i64 16
  %448 = load ptr, ptr %447, align 8, !tbaa !44
  store ptr %448, ptr %432, align 8, !tbaa !57
  br label %449

449:                                              ; preds = %446, %428, %416
  %450 = icmp eq i32 %408, 0
  br i1 %450, label %454, label %451

451:                                              ; preds = %449, %270
  %452 = phi i32 [ 3, %270 ], [ 2, %449 ]
  %453 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %453, align 8, !tbaa !94
  br label %454

454:                                              ; preds = %451, %449, %389, %384, %278
  %455 = phi i32 [ 0, %389 ], [ 1, %278 ], [ 0, %384 ], [ 0, %449 ], [ %452, %451 ]
  ret i32 %455
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

28:                                               ; preds = %316, %2
  %29 = load i32, ptr %3, align 4, !tbaa !76
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %231

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 8, !tbaa !33
  %33 = add i32 %32, -262
  %34 = zext i32 %32 to i64
  br label %35

35:                                               ; preds = %190, %31
  %36 = load i64, ptr %5, align 8, !tbaa !62
  %37 = load i32, ptr %3, align 4, !tbaa !76
  %38 = zext i32 %37 to i64
  %39 = load i32, ptr %6, align 4, !tbaa !74
  %40 = zext i32 %39 to i64
  %41 = add nuw nsw i64 %38, %40
  %42 = sub i64 %36, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, ptr %4, align 8, !tbaa !33
  %45 = add i32 %33, %44
  %46 = icmp ult i32 %39, %45
  br i1 %46, label %97, label %47

47:                                               ; preds = %35
  %48 = load ptr, ptr %7, align 8, !tbaa !39
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 %34
  %50 = sub i32 %32, %43
  %51 = zext i32 %50 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr align 1 %49, i64 %51, i1 false)
  %52 = load i32, ptr %8, align 8, !tbaa !84
  %53 = sub i32 %52, %32
  store i32 %53, ptr %8, align 8, !tbaa !84
  %54 = load i32, ptr %6, align 4, !tbaa !74
  %55 = sub i32 %54, %32
  store i32 %55, ptr %6, align 4, !tbaa !74
  %56 = load i64, ptr %9, align 8, !tbaa !75
  %57 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %56, i64 %34), !nosanitize !58
  %58 = extractvalue { i64, i1 } %57, 1, !nosanitize !58
  br i1 %58, label %59, label %60, !prof !59, !nosanitize !58

59:                                               ; preds = %47
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

60:                                               ; preds = %47
  %61 = extractvalue { i64, i1 } %57, 0, !nosanitize !58
  store i64 %61, ptr %9, align 8, !tbaa !75
  %62 = load i32, ptr %10, align 4, !tbaa !77
  %63 = icmp ugt i32 %62, %55
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 %55, ptr %10, align 4, !tbaa !77
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32, ptr %4, align 8, !tbaa !33
  %67 = load i32, ptr %11, align 4, !tbaa !36
  %68 = load ptr, ptr %12, align 8, !tbaa !41
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds nuw [2 x i8], ptr %68, i64 %69
  br label %71

71:                                               ; preds = %71, %65
  %72 = phi ptr [ %70, %65 ], [ %74, %71 ]
  %73 = phi i32 [ %67, %65 ], [ %79, %71 ]
  %74 = getelementptr inbounds i8, ptr %72, i64 -2
  %75 = load i16, ptr %74, align 2, !tbaa !63
  %76 = zext i16 %75 to i32
  %77 = tail call i32 @llvm.usub.sat.i32(i32 %76, i32 %66)
  %78 = trunc nuw i32 %77 to i16
  store i16 %78, ptr %74, align 2, !tbaa !63
  %79 = add i32 %73, -1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %71, !llvm.loop !85

81:                                               ; preds = %71
  %82 = load ptr, ptr %13, align 8, !tbaa !40
  %83 = zext i32 %66 to i64
  %84 = getelementptr inbounds nuw [2 x i8], ptr %82, i64 %83
  br label %85

85:                                               ; preds = %85, %81
  %86 = phi ptr [ %84, %81 ], [ %88, %85 ]
  %87 = phi i32 [ %66, %81 ], [ %93, %85 ]
  %88 = getelementptr inbounds i8, ptr %86, i64 -2
  %89 = load i16, ptr %88, align 2, !tbaa !63
  %90 = zext i16 %89 to i32
  %91 = tail call i32 @llvm.usub.sat.i32(i32 %90, i32 %66)
  %92 = trunc nuw i32 %91 to i16
  store i16 %92, ptr %88, align 2, !tbaa !63
  %93 = add i32 %87, -1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %85, !llvm.loop !88

95:                                               ; preds = %85
  store i32 1, ptr %14, align 8, !tbaa !64
  %96 = add i32 %32, %43
  br label %97

97:                                               ; preds = %95, %35
  %98 = phi i32 [ %96, %95 ], [ %43, %35 ]
  %99 = load ptr, ptr %0, align 8, !tbaa !20
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 8
  %101 = load i32, ptr %100, align 8, !tbaa !82
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %195, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %7, align 8, !tbaa !39
  %105 = load i32, ptr %6, align 4, !tbaa !74
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds nuw i8, ptr %104, i64 %106
  %108 = load i32, ptr %3, align 4, !tbaa !76
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds nuw i8, ptr %107, i64 %109
  %111 = tail call i32 @llvm.umin.i32(i32 %101, i32 %98)
  %112 = icmp eq i32 %98, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %103
  %114 = sub i32 %101, %111
  store i32 %114, ptr %100, align 8, !tbaa !82
  %115 = load ptr, ptr %99, align 8, !tbaa !83
  %116 = zext i32 %111 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr align 1 %115, i64 %116, i1 false)
  %117 = getelementptr inbounds nuw i8, ptr %99, i64 56
  %118 = load ptr, ptr %117, align 8, !tbaa !19
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 48
  %120 = load i32, ptr %119, align 8, !tbaa !30
  switch i32 %120, label %129 [
    i32 1, label %121
    i32 2, label %125
  ]

121:                                              ; preds = %113
  %122 = getelementptr inbounds nuw i8, ptr %99, i64 96
  %123 = load i64, ptr %122, align 8, !tbaa !60
  %124 = tail call i64 @adler32(i64 noundef %123, ptr noundef %110, i32 noundef %111) #11
  store i64 %124, ptr %122, align 8, !tbaa !60
  br label %129

125:                                              ; preds = %113
  %126 = getelementptr inbounds nuw i8, ptr %99, i64 96
  %127 = load i64, ptr %126, align 8, !tbaa !60
  %128 = tail call i64 @crc32(i64 noundef %127, ptr noundef %110, i32 noundef %111) #11
  store i64 %128, ptr %126, align 8, !tbaa !60
  br label %129

129:                                              ; preds = %125, %121, %113
  %130 = load ptr, ptr %99, align 8, !tbaa !83
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 %116
  store ptr %131, ptr %99, align 8, !tbaa !83
  %132 = getelementptr inbounds nuw i8, ptr %99, i64 16
  %133 = load i64, ptr %132, align 8, !tbaa !54
  %134 = add i64 %133, %116
  store i64 %134, ptr %132, align 8, !tbaa !54
  br label %135

135:                                              ; preds = %129, %103
  %136 = phi i32 [ %111, %129 ], [ 0, %103 ]
  %137 = load i32, ptr %3, align 4, !tbaa !76
  %138 = add i32 %137, %136
  store i32 %138, ptr %3, align 4, !tbaa !76
  %139 = load i32, ptr %10, align 4, !tbaa !77
  %140 = add i32 %139, %138
  %141 = icmp ugt i32 %140, 2
  br i1 %141, label %142, label %188

142:                                              ; preds = %135
  %143 = load i32, ptr %6, align 4, !tbaa !74
  %144 = sub i32 %143, %139
  %145 = load ptr, ptr %7, align 8, !tbaa !39
  %146 = zext i32 %144 to i64
  %147 = getelementptr inbounds nuw i8, ptr %145, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !8
  %149 = zext i8 %148 to i32
  store i32 %149, ptr %15, align 8, !tbaa !81
  %150 = load i32, ptr %16, align 8, !tbaa !38
  %151 = shl i32 %149, %150
  %152 = add i32 %144, 1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds nuw i8, ptr %145, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !8
  %156 = zext i8 %155 to i32
  %157 = xor i32 %151, %156
  %158 = load i32, ptr %17, align 4, !tbaa !37
  %159 = and i32 %157, %158
  store i32 %159, ptr %15, align 8, !tbaa !81
  br label %160

160:                                              ; preds = %164, %142
  %161 = phi i32 [ %139, %142 ], [ %185, %164 ]
  %162 = phi i32 [ %144, %142 ], [ %184, %164 ]
  %163 = icmp eq i32 %161, 0
  br i1 %163, label %188, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr %15, align 8, !tbaa !81
  %166 = shl i32 %165, %150
  %167 = add i32 %162, 2
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds nuw i8, ptr %145, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !8
  %171 = zext i8 %170 to i32
  %172 = xor i32 %166, %171
  %173 = and i32 %172, %158
  store i32 %173, ptr %15, align 8, !tbaa !81
  %174 = load ptr, ptr %12, align 8, !tbaa !41
  %175 = zext i32 %173 to i64
  %176 = getelementptr inbounds nuw [2 x i8], ptr %174, i64 %175
  %177 = load i16, ptr %176, align 2, !tbaa !63
  %178 = load ptr, ptr %13, align 8, !tbaa !40
  %179 = load i32, ptr %18, align 8, !tbaa !34
  %180 = and i32 %179, %162
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds nuw [2 x i8], ptr %178, i64 %181
  store i16 %177, ptr %182, align 2, !tbaa !63
  %183 = trunc i32 %162 to i16
  store i16 %183, ptr %176, align 2, !tbaa !63
  %184 = add i32 %162, 1
  %185 = add i32 %161, -1
  store i32 %185, ptr %10, align 4, !tbaa !77
  %186 = add i32 %185, %138
  %187 = icmp ult i32 %186, 3
  br i1 %187, label %188, label %160, !llvm.loop !89

188:                                              ; preds = %164, %160, %135
  %189 = icmp ult i32 %138, 262
  br i1 %189, label %190, label %195

190:                                              ; preds = %188
  %191 = load ptr, ptr %0, align 8, !tbaa !20
  %192 = getelementptr inbounds nuw i8, ptr %191, i64 8
  %193 = load i32, ptr %192, align 8, !tbaa !82
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %35, !llvm.loop !90

195:                                              ; preds = %190, %188, %97
  %196 = load i64, ptr %19, align 8, !tbaa !42
  %197 = load i64, ptr %5, align 8, !tbaa !62
  %198 = icmp ult i64 %196, %197
  br i1 %198, label %199, label %226

199:                                              ; preds = %195
  %200 = load i32, ptr %6, align 4, !tbaa !74
  %201 = zext i32 %200 to i64
  %202 = load i32, ptr %3, align 4, !tbaa !76
  %203 = zext i32 %202 to i64
  %204 = add nuw nsw i64 %203, %201
  %205 = icmp ult i64 %196, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %199
  %207 = sub i64 %197, %204
  %208 = tail call i64 @llvm.umin.i64(i64 %207, i64 258)
  %209 = load ptr, ptr %7, align 8, !tbaa !39
  %210 = getelementptr inbounds nuw i8, ptr %209, i64 %204
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %210, i8 0, i64 %208, i1 false)
  %211 = add nuw nsw i64 %208, %204
  br label %224

212:                                              ; preds = %199
  %213 = add nuw nsw i64 %204, 258
  %214 = icmp ult i64 %196, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %212
  %216 = sub nuw nsw i64 %213, %196
  %217 = sub i64 %197, %196
  %218 = tail call i64 @llvm.umin.i64(i64 %216, i64 %217)
  %219 = load ptr, ptr %7, align 8, !tbaa !39
  %220 = getelementptr inbounds nuw i8, ptr %219, i64 %196
  %221 = and i64 %218, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %220, i8 0, i64 %221, i1 false)
  %222 = load i64, ptr %19, align 8, !tbaa !42
  %223 = add i64 %222, %218
  br label %224

224:                                              ; preds = %215, %206
  %225 = phi i64 [ %211, %206 ], [ %223, %215 ]
  store i64 %225, ptr %19, align 8, !tbaa !42
  br label %226

226:                                              ; preds = %224, %212, %195
  %227 = load i32, ptr %3, align 4, !tbaa !76
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = icmp eq i32 %1, 0
  br i1 %230, label %431, label %317

231:                                              ; preds = %226, %28
  store i32 0, ptr %20, align 8, !tbaa !79
  %232 = load ptr, ptr %21, align 8, !tbaa !39
  %233 = load i32, ptr %22, align 4, !tbaa !74
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds nuw i8, ptr %232, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !8
  %237 = load ptr, ptr %23, align 8, !tbaa !48
  %238 = load i32, ptr %24, align 4, !tbaa !118
  %239 = add i32 %238, 1
  store i32 %239, ptr %24, align 4, !tbaa !118
  %240 = zext i32 %238 to i64
  %241 = getelementptr inbounds nuw i8, ptr %237, i64 %240
  store i8 0, ptr %241, align 1, !tbaa !8
  %242 = load ptr, ptr %23, align 8, !tbaa !48
  %243 = load i32, ptr %24, align 4, !tbaa !118
  %244 = add i32 %243, 1
  store i32 %244, ptr %24, align 4, !tbaa !118
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds nuw i8, ptr %242, i64 %245
  store i8 0, ptr %246, align 1, !tbaa !8
  %247 = load ptr, ptr %23, align 8, !tbaa !48
  %248 = load i32, ptr %24, align 4, !tbaa !118
  %249 = add i32 %248, 1
  store i32 %249, ptr %24, align 4, !tbaa !118
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds nuw i8, ptr %247, i64 %250
  store i8 %236, ptr %251, align 1, !tbaa !8
  %252 = zext i8 %236 to i64
  %253 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %252
  %254 = load i16, ptr %253, align 4, !tbaa !8
  %255 = add i16 %254, 1
  store i16 %255, ptr %253, align 4, !tbaa !8
  %256 = load i32, ptr %24, align 4, !tbaa !118
  %257 = load i32, ptr %26, align 8, !tbaa !49
  %258 = icmp eq i32 %256, %257
  %259 = load i32, ptr %3, align 4, !tbaa !76
  %260 = add i32 %259, -1
  store i32 %260, ptr %3, align 4, !tbaa !76
  %261 = load i32, ptr %22, align 4, !tbaa !74
  %262 = add i32 %261, 1
  store i32 %262, ptr %22, align 4, !tbaa !74
  br i1 %258, label %263, label %316

263:                                              ; preds = %231
  %264 = load i64, ptr %27, align 8, !tbaa !75
  %265 = icmp sgt i64 %264, -1
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load ptr, ptr %21, align 8, !tbaa !39
  %268 = and i64 %264, 4294967295
  %269 = getelementptr inbounds nuw i8, ptr %267, i64 %268
  br label %270

270:                                              ; preds = %266, %263
  %271 = phi ptr [ %269, %266 ], [ null, %263 ]
  %272 = zext i32 %262 to i64
  %273 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %272, i64 %264), !nosanitize !58
  %274 = extractvalue { i64, i1 } %273, 1, !nosanitize !58
  br i1 %274, label %275, label %276, !prof !59, !nosanitize !58

275:                                              ; preds = %384, %326, %270
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

276:                                              ; preds = %270
  %277 = extractvalue { i64, i1 } %273, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %271, i64 noundef %277, i32 noundef 0) #11
  %278 = load i32, ptr %22, align 4, !tbaa !74
  %279 = zext i32 %278 to i64
  store i64 %279, ptr %27, align 8, !tbaa !75
  %280 = load ptr, ptr %0, align 8, !tbaa !20
  %281 = getelementptr inbounds nuw i8, ptr %280, i64 56
  %282 = load ptr, ptr %281, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %282) #11
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 40
  %284 = load i64, ptr %283, align 8, !tbaa !56
  %285 = getelementptr inbounds nuw i8, ptr %280, i64 32
  %286 = load i32, ptr %285, align 8, !tbaa !99
  %287 = zext i32 %286 to i64
  %288 = tail call i64 @llvm.umin.i64(i64 %284, i64 %287)
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %311, label %290

290:                                              ; preds = %276
  %291 = trunc nuw i64 %288 to i32
  %292 = getelementptr inbounds nuw i8, ptr %280, i64 24
  %293 = load ptr, ptr %292, align 8, !tbaa !98
  %294 = getelementptr inbounds nuw i8, ptr %282, i64 32
  %295 = load ptr, ptr %294, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %293, ptr align 1 %295, i64 %288, i1 false)
  %296 = load ptr, ptr %292, align 8, !tbaa !98
  %297 = getelementptr inbounds nuw i8, ptr %296, i64 %288
  store ptr %297, ptr %292, align 8, !tbaa !98
  %298 = load ptr, ptr %294, align 8, !tbaa !57
  %299 = getelementptr inbounds nuw i8, ptr %298, i64 %288
  store ptr %299, ptr %294, align 8, !tbaa !57
  %300 = getelementptr inbounds nuw i8, ptr %280, i64 40
  %301 = load i64, ptr %300, align 8, !tbaa !100
  %302 = add i64 %301, %288
  store i64 %302, ptr %300, align 8, !tbaa !100
  %303 = load i32, ptr %285, align 8, !tbaa !99
  %304 = sub i32 %303, %291
  store i32 %304, ptr %285, align 8, !tbaa !99
  %305 = load i64, ptr %283, align 8, !tbaa !56
  %306 = sub i64 %305, %288
  store i64 %306, ptr %283, align 8, !tbaa !56
  %307 = icmp eq i64 %305, %288
  br i1 %307, label %308, label %311

308:                                              ; preds = %290
  %309 = getelementptr inbounds nuw i8, ptr %282, i64 16
  %310 = load ptr, ptr %309, align 8, !tbaa !44
  store ptr %310, ptr %294, align 8, !tbaa !57
  br label %311

311:                                              ; preds = %308, %290, %276
  %312 = load ptr, ptr %0, align 8, !tbaa !20
  %313 = getelementptr inbounds nuw i8, ptr %312, i64 32
  %314 = load i32, ptr %313, align 8, !tbaa !99
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %431, label %316

316:                                              ; preds = %311, %231
  br label %28, !llvm.loop !119

317:                                              ; preds = %229
  store i32 0, ptr %10, align 4, !tbaa !77
  %318 = icmp eq i32 %1, 4
  br i1 %318, label %319, label %373

319:                                              ; preds = %317
  %320 = load i64, ptr %9, align 8, !tbaa !75
  %321 = icmp sgt i64 %320, -1
  br i1 %321, label %322, label %326

322:                                              ; preds = %319
  %323 = load ptr, ptr %7, align 8, !tbaa !39
  %324 = and i64 %320, 4294967295
  %325 = getelementptr inbounds nuw i8, ptr %323, i64 %324
  br label %326

326:                                              ; preds = %322, %319
  %327 = phi ptr [ %325, %322 ], [ null, %319 ]
  %328 = load i32, ptr %6, align 4, !tbaa !74
  %329 = zext i32 %328 to i64
  %330 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %329, i64 %320), !nosanitize !58
  %331 = extractvalue { i64, i1 } %330, 1, !nosanitize !58
  br i1 %331, label %275, label %332, !prof !59, !nosanitize !58

332:                                              ; preds = %326
  %333 = extractvalue { i64, i1 } %330, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %327, i64 noundef %333, i32 noundef 1) #11
  %334 = load i32, ptr %6, align 4, !tbaa !74
  %335 = zext i32 %334 to i64
  store i64 %335, ptr %9, align 8, !tbaa !75
  %336 = load ptr, ptr %0, align 8, !tbaa !20
  %337 = getelementptr inbounds nuw i8, ptr %336, i64 56
  %338 = load ptr, ptr %337, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %338) #11
  %339 = getelementptr inbounds nuw i8, ptr %338, i64 40
  %340 = load i64, ptr %339, align 8, !tbaa !56
  %341 = getelementptr inbounds nuw i8, ptr %336, i64 32
  %342 = load i32, ptr %341, align 8, !tbaa !99
  %343 = zext i32 %342 to i64
  %344 = tail call i64 @llvm.umin.i64(i64 %340, i64 %343)
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %367, label %346

346:                                              ; preds = %332
  %347 = trunc nuw i64 %344 to i32
  %348 = getelementptr inbounds nuw i8, ptr %336, i64 24
  %349 = load ptr, ptr %348, align 8, !tbaa !98
  %350 = getelementptr inbounds nuw i8, ptr %338, i64 32
  %351 = load ptr, ptr %350, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %349, ptr align 1 %351, i64 %344, i1 false)
  %352 = load ptr, ptr %348, align 8, !tbaa !98
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 %344
  store ptr %353, ptr %348, align 8, !tbaa !98
  %354 = load ptr, ptr %350, align 8, !tbaa !57
  %355 = getelementptr inbounds nuw i8, ptr %354, i64 %344
  store ptr %355, ptr %350, align 8, !tbaa !57
  %356 = getelementptr inbounds nuw i8, ptr %336, i64 40
  %357 = load i64, ptr %356, align 8, !tbaa !100
  %358 = add i64 %357, %344
  store i64 %358, ptr %356, align 8, !tbaa !100
  %359 = load i32, ptr %341, align 8, !tbaa !99
  %360 = sub i32 %359, %347
  store i32 %360, ptr %341, align 8, !tbaa !99
  %361 = load i64, ptr %339, align 8, !tbaa !56
  %362 = sub i64 %361, %344
  store i64 %362, ptr %339, align 8, !tbaa !56
  %363 = icmp eq i64 %361, %344
  br i1 %363, label %364, label %367

364:                                              ; preds = %346
  %365 = getelementptr inbounds nuw i8, ptr %338, i64 16
  %366 = load ptr, ptr %365, align 8, !tbaa !44
  store ptr %366, ptr %350, align 8, !tbaa !57
  br label %367

367:                                              ; preds = %364, %346, %332
  %368 = load ptr, ptr %0, align 8, !tbaa !20
  %369 = getelementptr inbounds nuw i8, ptr %368, i64 32
  %370 = load i32, ptr %369, align 8, !tbaa !99
  %371 = icmp eq i32 %370, 0
  %372 = select i1 %371, i32 2, i32 3
  br label %431

373:                                              ; preds = %317
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %375 = load i32, ptr %374, align 4, !tbaa !118
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %430, label %377

377:                                              ; preds = %373
  %378 = load i64, ptr %9, align 8, !tbaa !75
  %379 = icmp sgt i64 %378, -1
  br i1 %379, label %380, label %384

380:                                              ; preds = %377
  %381 = load ptr, ptr %7, align 8, !tbaa !39
  %382 = and i64 %378, 4294967295
  %383 = getelementptr inbounds nuw i8, ptr %381, i64 %382
  br label %384

384:                                              ; preds = %380, %377
  %385 = phi ptr [ %383, %380 ], [ null, %377 ]
  %386 = load i32, ptr %6, align 4, !tbaa !74
  %387 = zext i32 %386 to i64
  %388 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %387, i64 %378), !nosanitize !58
  %389 = extractvalue { i64, i1 } %388, 1, !nosanitize !58
  br i1 %389, label %275, label %390, !prof !59, !nosanitize !58

390:                                              ; preds = %384
  %391 = extractvalue { i64, i1 } %388, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %385, i64 noundef %391, i32 noundef 0) #11
  %392 = load i32, ptr %6, align 4, !tbaa !74
  %393 = zext i32 %392 to i64
  store i64 %393, ptr %9, align 8, !tbaa !75
  %394 = load ptr, ptr %0, align 8, !tbaa !20
  %395 = getelementptr inbounds nuw i8, ptr %394, i64 56
  %396 = load ptr, ptr %395, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %396) #11
  %397 = getelementptr inbounds nuw i8, ptr %396, i64 40
  %398 = load i64, ptr %397, align 8, !tbaa !56
  %399 = getelementptr inbounds nuw i8, ptr %394, i64 32
  %400 = load i32, ptr %399, align 8, !tbaa !99
  %401 = zext i32 %400 to i64
  %402 = tail call i64 @llvm.umin.i64(i64 %398, i64 %401)
  %403 = icmp eq i64 %402, 0
  br i1 %403, label %425, label %404

404:                                              ; preds = %390
  %405 = trunc nuw i64 %402 to i32
  %406 = getelementptr inbounds nuw i8, ptr %394, i64 24
  %407 = load ptr, ptr %406, align 8, !tbaa !98
  %408 = getelementptr inbounds nuw i8, ptr %396, i64 32
  %409 = load ptr, ptr %408, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %407, ptr align 1 %409, i64 %402, i1 false)
  %410 = load ptr, ptr %406, align 8, !tbaa !98
  %411 = getelementptr inbounds nuw i8, ptr %410, i64 %402
  store ptr %411, ptr %406, align 8, !tbaa !98
  %412 = load ptr, ptr %408, align 8, !tbaa !57
  %413 = getelementptr inbounds nuw i8, ptr %412, i64 %402
  store ptr %413, ptr %408, align 8, !tbaa !57
  %414 = getelementptr inbounds nuw i8, ptr %394, i64 40
  %415 = load i64, ptr %414, align 8, !tbaa !100
  %416 = add i64 %415, %402
  store i64 %416, ptr %414, align 8, !tbaa !100
  %417 = load i32, ptr %399, align 8, !tbaa !99
  %418 = sub i32 %417, %405
  store i32 %418, ptr %399, align 8, !tbaa !99
  %419 = load i64, ptr %397, align 8, !tbaa !56
  %420 = sub i64 %419, %402
  store i64 %420, ptr %397, align 8, !tbaa !56
  %421 = icmp eq i64 %419, %402
  br i1 %421, label %422, label %425

422:                                              ; preds = %404
  %423 = getelementptr inbounds nuw i8, ptr %396, i64 16
  %424 = load ptr, ptr %423, align 8, !tbaa !44
  store ptr %424, ptr %408, align 8, !tbaa !57
  br label %425

425:                                              ; preds = %422, %404, %390
  %426 = load ptr, ptr %0, align 8, !tbaa !20
  %427 = getelementptr inbounds nuw i8, ptr %426, i64 32
  %428 = load i32, ptr %427, align 8, !tbaa !99
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %431, label %430

430:                                              ; preds = %425, %373
  br label %431

431:                                              ; preds = %430, %425, %367, %311, %229
  %432 = phi i32 [ 0, %229 ], [ %372, %367 ], [ 0, %425 ], [ 1, %430 ], [ 0, %311 ]
  ret i32 %432
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

39:                                               ; preds = %457, %2
  %40 = load i32, ptr %3, align 4, !tbaa !76
  %41 = icmp ult i32 %40, 259
  br i1 %41, label %42, label %243

42:                                               ; preds = %39
  %43 = load i32, ptr %4, align 8, !tbaa !33
  %44 = add i32 %43, -262
  %45 = zext i32 %43 to i64
  br label %46

46:                                               ; preds = %201, %42
  %47 = load i64, ptr %5, align 8, !tbaa !62
  %48 = load i32, ptr %3, align 4, !tbaa !76
  %49 = zext i32 %48 to i64
  %50 = load i32, ptr %6, align 4, !tbaa !74
  %51 = zext i32 %50 to i64
  %52 = add nuw nsw i64 %49, %51
  %53 = sub i64 %47, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32, ptr %4, align 8, !tbaa !33
  %56 = add i32 %44, %55
  %57 = icmp ult i32 %50, %56
  br i1 %57, label %108, label %58

58:                                               ; preds = %46
  %59 = load ptr, ptr %7, align 8, !tbaa !39
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 %45
  %61 = sub i32 %43, %54
  %62 = zext i32 %61 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %60, i64 %62, i1 false)
  %63 = load i32, ptr %8, align 8, !tbaa !84
  %64 = sub i32 %63, %43
  store i32 %64, ptr %8, align 8, !tbaa !84
  %65 = load i32, ptr %6, align 4, !tbaa !74
  %66 = sub i32 %65, %43
  store i32 %66, ptr %6, align 4, !tbaa !74
  %67 = load i64, ptr %9, align 8, !tbaa !75
  %68 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %67, i64 %45), !nosanitize !58
  %69 = extractvalue { i64, i1 } %68, 1, !nosanitize !58
  br i1 %69, label %70, label %71, !prof !59, !nosanitize !58

70:                                               ; preds = %58
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

71:                                               ; preds = %58
  %72 = extractvalue { i64, i1 } %68, 0, !nosanitize !58
  store i64 %72, ptr %9, align 8, !tbaa !75
  %73 = load i32, ptr %10, align 4, !tbaa !77
  %74 = icmp ugt i32 %73, %66
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 %66, ptr %10, align 4, !tbaa !77
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, ptr %4, align 8, !tbaa !33
  %78 = load i32, ptr %11, align 4, !tbaa !36
  %79 = load ptr, ptr %12, align 8, !tbaa !41
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds nuw [2 x i8], ptr %79, i64 %80
  br label %82

82:                                               ; preds = %82, %76
  %83 = phi ptr [ %81, %76 ], [ %85, %82 ]
  %84 = phi i32 [ %78, %76 ], [ %90, %82 ]
  %85 = getelementptr inbounds i8, ptr %83, i64 -2
  %86 = load i16, ptr %85, align 2, !tbaa !63
  %87 = zext i16 %86 to i32
  %88 = tail call i32 @llvm.usub.sat.i32(i32 %87, i32 %77)
  %89 = trunc nuw i32 %88 to i16
  store i16 %89, ptr %85, align 2, !tbaa !63
  %90 = add i32 %84, -1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %82, !llvm.loop !85

92:                                               ; preds = %82
  %93 = load ptr, ptr %13, align 8, !tbaa !40
  %94 = zext i32 %77 to i64
  %95 = getelementptr inbounds nuw [2 x i8], ptr %93, i64 %94
  br label %96

96:                                               ; preds = %96, %92
  %97 = phi ptr [ %95, %92 ], [ %99, %96 ]
  %98 = phi i32 [ %77, %92 ], [ %104, %96 ]
  %99 = getelementptr inbounds i8, ptr %97, i64 -2
  %100 = load i16, ptr %99, align 2, !tbaa !63
  %101 = zext i16 %100 to i32
  %102 = tail call i32 @llvm.usub.sat.i32(i32 %101, i32 %77)
  %103 = trunc nuw i32 %102 to i16
  store i16 %103, ptr %99, align 2, !tbaa !63
  %104 = add i32 %98, -1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %96, !llvm.loop !88

106:                                              ; preds = %96
  store i32 1, ptr %14, align 8, !tbaa !64
  %107 = add i32 %43, %54
  br label %108

108:                                              ; preds = %106, %46
  %109 = phi i32 [ %107, %106 ], [ %54, %46 ]
  %110 = load ptr, ptr %0, align 8, !tbaa !20
  %111 = getelementptr inbounds nuw i8, ptr %110, i64 8
  %112 = load i32, ptr %111, align 8, !tbaa !82
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %206, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %7, align 8, !tbaa !39
  %116 = load i32, ptr %6, align 4, !tbaa !74
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds nuw i8, ptr %115, i64 %117
  %119 = load i32, ptr %3, align 4, !tbaa !76
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds nuw i8, ptr %118, i64 %120
  %122 = tail call i32 @llvm.umin.i32(i32 %112, i32 %109)
  %123 = icmp eq i32 %109, 0
  br i1 %123, label %146, label %124

124:                                              ; preds = %114
  %125 = sub i32 %112, %122
  store i32 %125, ptr %111, align 8, !tbaa !82
  %126 = load ptr, ptr %110, align 8, !tbaa !83
  %127 = zext i32 %122 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 %126, i64 %127, i1 false)
  %128 = getelementptr inbounds nuw i8, ptr %110, i64 56
  %129 = load ptr, ptr %128, align 8, !tbaa !19
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 48
  %131 = load i32, ptr %130, align 8, !tbaa !30
  switch i32 %131, label %140 [
    i32 1, label %132
    i32 2, label %136
  ]

132:                                              ; preds = %124
  %133 = getelementptr inbounds nuw i8, ptr %110, i64 96
  %134 = load i64, ptr %133, align 8, !tbaa !60
  %135 = tail call i64 @adler32(i64 noundef %134, ptr noundef %121, i32 noundef %122) #11
  store i64 %135, ptr %133, align 8, !tbaa !60
  br label %140

136:                                              ; preds = %124
  %137 = getelementptr inbounds nuw i8, ptr %110, i64 96
  %138 = load i64, ptr %137, align 8, !tbaa !60
  %139 = tail call i64 @crc32(i64 noundef %138, ptr noundef %121, i32 noundef %122) #11
  store i64 %139, ptr %137, align 8, !tbaa !60
  br label %140

140:                                              ; preds = %136, %132, %124
  %141 = load ptr, ptr %110, align 8, !tbaa !83
  %142 = getelementptr inbounds nuw i8, ptr %141, i64 %127
  store ptr %142, ptr %110, align 8, !tbaa !83
  %143 = getelementptr inbounds nuw i8, ptr %110, i64 16
  %144 = load i64, ptr %143, align 8, !tbaa !54
  %145 = add i64 %144, %127
  store i64 %145, ptr %143, align 8, !tbaa !54
  br label %146

146:                                              ; preds = %140, %114
  %147 = phi i32 [ %122, %140 ], [ 0, %114 ]
  %148 = load i32, ptr %3, align 4, !tbaa !76
  %149 = add i32 %148, %147
  store i32 %149, ptr %3, align 4, !tbaa !76
  %150 = load i32, ptr %10, align 4, !tbaa !77
  %151 = add i32 %150, %149
  %152 = icmp ugt i32 %151, 2
  br i1 %152, label %153, label %199

153:                                              ; preds = %146
  %154 = load i32, ptr %6, align 4, !tbaa !74
  %155 = sub i32 %154, %150
  %156 = load ptr, ptr %7, align 8, !tbaa !39
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds nuw i8, ptr %156, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !8
  %160 = zext i8 %159 to i32
  store i32 %160, ptr %15, align 8, !tbaa !81
  %161 = load i32, ptr %16, align 8, !tbaa !38
  %162 = shl i32 %160, %161
  %163 = add i32 %155, 1
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds nuw i8, ptr %156, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !8
  %167 = zext i8 %166 to i32
  %168 = xor i32 %162, %167
  %169 = load i32, ptr %17, align 4, !tbaa !37
  %170 = and i32 %168, %169
  store i32 %170, ptr %15, align 8, !tbaa !81
  br label %171

171:                                              ; preds = %175, %153
  %172 = phi i32 [ %150, %153 ], [ %196, %175 ]
  %173 = phi i32 [ %155, %153 ], [ %195, %175 ]
  %174 = icmp eq i32 %172, 0
  br i1 %174, label %199, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %15, align 8, !tbaa !81
  %177 = shl i32 %176, %161
  %178 = add i32 %173, 2
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds nuw i8, ptr %156, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !8
  %182 = zext i8 %181 to i32
  %183 = xor i32 %177, %182
  %184 = and i32 %183, %169
  store i32 %184, ptr %15, align 8, !tbaa !81
  %185 = load ptr, ptr %12, align 8, !tbaa !41
  %186 = zext i32 %184 to i64
  %187 = getelementptr inbounds nuw [2 x i8], ptr %185, i64 %186
  %188 = load i16, ptr %187, align 2, !tbaa !63
  %189 = load ptr, ptr %13, align 8, !tbaa !40
  %190 = load i32, ptr %18, align 8, !tbaa !34
  %191 = and i32 %190, %173
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds nuw [2 x i8], ptr %189, i64 %192
  store i16 %188, ptr %193, align 2, !tbaa !63
  %194 = trunc i32 %173 to i16
  store i16 %194, ptr %187, align 2, !tbaa !63
  %195 = add i32 %173, 1
  %196 = add i32 %172, -1
  store i32 %196, ptr %10, align 4, !tbaa !77
  %197 = add i32 %196, %149
  %198 = icmp ult i32 %197, 3
  br i1 %198, label %199, label %171, !llvm.loop !89

199:                                              ; preds = %175, %171, %146
  %200 = icmp ult i32 %149, 262
  br i1 %200, label %201, label %206

201:                                              ; preds = %199
  %202 = load ptr, ptr %0, align 8, !tbaa !20
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %204 = load i32, ptr %203, align 8, !tbaa !82
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %46, !llvm.loop !90

206:                                              ; preds = %201, %199, %108
  %207 = load i64, ptr %19, align 8, !tbaa !42
  %208 = load i64, ptr %5, align 8, !tbaa !62
  %209 = icmp ult i64 %207, %208
  br i1 %209, label %210, label %237

210:                                              ; preds = %206
  %211 = load i32, ptr %6, align 4, !tbaa !74
  %212 = zext i32 %211 to i64
  %213 = load i32, ptr %3, align 4, !tbaa !76
  %214 = zext i32 %213 to i64
  %215 = add nuw nsw i64 %214, %212
  %216 = icmp ult i64 %207, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %210
  %218 = sub i64 %208, %215
  %219 = tail call i64 @llvm.umin.i64(i64 %218, i64 258)
  %220 = load ptr, ptr %7, align 8, !tbaa !39
  %221 = getelementptr inbounds nuw i8, ptr %220, i64 %215
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %221, i8 0, i64 %219, i1 false)
  %222 = add nuw nsw i64 %219, %215
  br label %235

223:                                              ; preds = %210
  %224 = add nuw nsw i64 %215, 258
  %225 = icmp ult i64 %207, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %223
  %227 = sub nuw nsw i64 %224, %207
  %228 = sub i64 %208, %207
  %229 = tail call i64 @llvm.umin.i64(i64 %227, i64 %228)
  %230 = load ptr, ptr %7, align 8, !tbaa !39
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 %207
  %232 = and i64 %229, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %231, i8 0, i64 %232, i1 false)
  %233 = load i64, ptr %19, align 8, !tbaa !42
  %234 = add i64 %233, %229
  br label %235

235:                                              ; preds = %226, %217
  %236 = phi i64 [ %222, %217 ], [ %234, %226 ]
  store i64 %236, ptr %19, align 8, !tbaa !42
  br label %237

237:                                              ; preds = %235, %223, %206
  %238 = load i32, ptr %3, align 4, !tbaa !76
  %239 = icmp ult i32 %238, 259
  %240 = and i1 %20, %239
  br i1 %240, label %572, label %241

241:                                              ; preds = %237
  %242 = icmp eq i32 %238, 0
  br i1 %242, label %458, label %243

243:                                              ; preds = %241, %39
  store i32 0, ptr %21, align 8, !tbaa !79
  %244 = load i32, ptr %3, align 4, !tbaa !76
  %245 = icmp ugt i32 %244, 2
  br i1 %245, label %246, label %328

246:                                              ; preds = %243
  %247 = load i32, ptr %22, align 4, !tbaa !74
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %328, label %249

249:                                              ; preds = %246
  %250 = load ptr, ptr %23, align 8, !tbaa !39
  %251 = zext i32 %247 to i64
  %252 = getelementptr inbounds nuw i8, ptr %250, i64 %251
  %253 = getelementptr inbounds i8, ptr %252, i64 -1
  %254 = load i8, ptr %253, align 1, !tbaa !8
  %255 = load i8, ptr %252, align 1, !tbaa !8
  %256 = icmp eq i8 %254, %255
  br i1 %256, label %257, label %328

257:                                              ; preds = %249
  %258 = getelementptr inbounds nuw i8, ptr %252, i64 1
  %259 = load i8, ptr %258, align 1, !tbaa !8
  %260 = icmp eq i8 %254, %259
  br i1 %260, label %261, label %328

261:                                              ; preds = %257
  %262 = getelementptr inbounds nuw i8, ptr %252, i64 2
  %263 = load i8, ptr %262, align 1, !tbaa !8
  %264 = icmp eq i8 %254, %263
  br i1 %264, label %265, label %328

265:                                              ; preds = %261
  %266 = getelementptr inbounds nuw i8, ptr %252, i64 258
  br label %267

267:                                              ; preds = %297, %265
  %268 = phi i64 [ 2, %265 ], [ %298, %297 ]
  %269 = getelementptr inbounds nuw i8, ptr %252, i64 %268
  %270 = getelementptr inbounds nuw i8, ptr %269, i64 1
  %271 = load i8, ptr %270, align 1, !tbaa !8
  %272 = icmp eq i8 %254, %271
  br i1 %272, label %273, label %318

273:                                              ; preds = %267
  %274 = getelementptr inbounds nuw i8, ptr %269, i64 2
  %275 = load i8, ptr %274, align 1, !tbaa !8
  %276 = icmp eq i8 %254, %275
  br i1 %276, label %277, label %316

277:                                              ; preds = %273
  %278 = getelementptr inbounds nuw i8, ptr %269, i64 3
  %279 = load i8, ptr %278, align 1, !tbaa !8
  %280 = icmp eq i8 %254, %279
  br i1 %280, label %281, label %314

281:                                              ; preds = %277
  %282 = getelementptr inbounds nuw i8, ptr %269, i64 4
  %283 = load i8, ptr %282, align 1, !tbaa !8
  %284 = icmp eq i8 %254, %283
  br i1 %284, label %285, label %312

285:                                              ; preds = %281
  %286 = getelementptr inbounds nuw i8, ptr %269, i64 5
  %287 = load i8, ptr %286, align 1, !tbaa !8
  %288 = icmp eq i8 %254, %287
  br i1 %288, label %289, label %310

289:                                              ; preds = %285
  %290 = getelementptr inbounds nuw i8, ptr %269, i64 6
  %291 = load i8, ptr %290, align 1, !tbaa !8
  %292 = icmp eq i8 %254, %291
  br i1 %292, label %293, label %308

293:                                              ; preds = %289
  %294 = getelementptr inbounds nuw i8, ptr %269, i64 7
  %295 = load i8, ptr %294, align 1, !tbaa !8
  %296 = icmp eq i8 %254, %295
  br i1 %296, label %297, label %306

297:                                              ; preds = %293
  %298 = add nuw nsw i64 %268, 8
  %299 = getelementptr inbounds nuw i8, ptr %252, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !8
  %301 = icmp eq i8 %254, %300
  %302 = icmp samesign ult i64 %268, 250
  %303 = select i1 %301, i1 %302, i1 false
  br i1 %303, label %267, label %304, !llvm.loop !120

304:                                              ; preds = %297
  %305 = getelementptr inbounds nuw i8, ptr %252, i64 %298
  br label %320

306:                                              ; preds = %293
  %307 = getelementptr inbounds nuw i8, ptr %269, i64 7
  br label %320

308:                                              ; preds = %289
  %309 = getelementptr inbounds nuw i8, ptr %269, i64 6
  br label %320

310:                                              ; preds = %285
  %311 = getelementptr inbounds nuw i8, ptr %269, i64 5
  br label %320

312:                                              ; preds = %281
  %313 = getelementptr inbounds nuw i8, ptr %269, i64 4
  br label %320

314:                                              ; preds = %277
  %315 = getelementptr inbounds nuw i8, ptr %269, i64 3
  br label %320

316:                                              ; preds = %273
  %317 = getelementptr inbounds nuw i8, ptr %269, i64 2
  br label %320

318:                                              ; preds = %267
  %319 = getelementptr inbounds nuw i8, ptr %269, i64 1
  br label %320

320:                                              ; preds = %318, %316, %314, %312, %310, %308, %306, %304
  %321 = phi ptr [ %317, %316 ], [ %315, %314 ], [ %305, %304 ], [ %307, %306 ], [ %309, %308 ], [ %311, %310 ], [ %313, %312 ], [ %319, %318 ]
  %322 = ptrtoint ptr %266 to i64
  %323 = ptrtoint ptr %321 to i64
  %324 = sub i64 %323, %322
  %325 = trunc i64 %324 to i32
  %326 = add i32 %325, 258
  %327 = tail call i32 @llvm.umin.i32(i32 %326, i32 %244)
  store i32 %327, ptr %21, align 8
  br label %328

328:                                              ; preds = %320, %261, %257, %249, %246, %243
  %329 = load i32, ptr %21, align 8, !tbaa !79
  %330 = icmp ugt i32 %329, 2
  br i1 %330, label %331, label %369

331:                                              ; preds = %328
  %332 = trunc i32 %329 to i8
  %333 = add i8 %332, -3
  %334 = load ptr, ptr %30, align 8, !tbaa !48
  %335 = load i32, ptr %31, align 4, !tbaa !118
  %336 = add i32 %335, 1
  store i32 %336, ptr %31, align 4, !tbaa !118
  %337 = zext i32 %335 to i64
  %338 = getelementptr inbounds nuw i8, ptr %334, i64 %337
  store i8 1, ptr %338, align 1, !tbaa !8
  %339 = load ptr, ptr %30, align 8, !tbaa !48
  %340 = load i32, ptr %31, align 4, !tbaa !118
  %341 = add i32 %340, 1
  store i32 %341, ptr %31, align 4, !tbaa !118
  %342 = zext i32 %340 to i64
  %343 = getelementptr inbounds nuw i8, ptr %339, i64 %342
  store i8 0, ptr %343, align 1, !tbaa !8
  %344 = load ptr, ptr %30, align 8, !tbaa !48
  %345 = load i32, ptr %31, align 4, !tbaa !118
  %346 = add i32 %345, 1
  store i32 %346, ptr %31, align 4, !tbaa !118
  %347 = zext i32 %345 to i64
  %348 = getelementptr inbounds nuw i8, ptr %344, i64 %347
  store i8 %333, ptr %348, align 1, !tbaa !8
  %349 = zext i8 %333 to i64
  %350 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !8
  %352 = zext i8 %351 to i64
  %353 = getelementptr [4 x i8], ptr %32, i64 %352
  %354 = load i16, ptr %353, align 4, !tbaa !8
  %355 = add i16 %354, 1
  store i16 %355, ptr %353, align 4, !tbaa !8
  %356 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %357 = zext i8 %356 to i64
  %358 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %357
  %359 = load i16, ptr %358, align 4, !tbaa !8
  %360 = add i16 %359, 1
  store i16 %360, ptr %358, align 4, !tbaa !8
  %361 = load i32, ptr %31, align 4, !tbaa !118
  %362 = load i32, ptr %34, align 8, !tbaa !49
  %363 = icmp eq i32 %361, %362
  %364 = load i32, ptr %21, align 8, !tbaa !79
  %365 = load i32, ptr %3, align 4, !tbaa !76
  %366 = sub i32 %365, %364
  store i32 %366, ptr %3, align 4, !tbaa !76
  %367 = load i32, ptr %35, align 4, !tbaa !74
  %368 = add i32 %367, %364
  store i32 %368, ptr %35, align 4, !tbaa !74
  store i32 0, ptr %21, align 8, !tbaa !79
  br label %401

369:                                              ; preds = %328
  %370 = load ptr, ptr %24, align 8, !tbaa !39
  %371 = load i32, ptr %25, align 4, !tbaa !74
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds nuw i8, ptr %370, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !8
  %375 = load ptr, ptr %26, align 8, !tbaa !48
  %376 = load i32, ptr %27, align 4, !tbaa !118
  %377 = add i32 %376, 1
  store i32 %377, ptr %27, align 4, !tbaa !118
  %378 = zext i32 %376 to i64
  %379 = getelementptr inbounds nuw i8, ptr %375, i64 %378
  store i8 0, ptr %379, align 1, !tbaa !8
  %380 = load ptr, ptr %26, align 8, !tbaa !48
  %381 = load i32, ptr %27, align 4, !tbaa !118
  %382 = add i32 %381, 1
  store i32 %382, ptr %27, align 4, !tbaa !118
  %383 = zext i32 %381 to i64
  %384 = getelementptr inbounds nuw i8, ptr %380, i64 %383
  store i8 0, ptr %384, align 1, !tbaa !8
  %385 = load ptr, ptr %26, align 8, !tbaa !48
  %386 = load i32, ptr %27, align 4, !tbaa !118
  %387 = add i32 %386, 1
  store i32 %387, ptr %27, align 4, !tbaa !118
  %388 = zext i32 %386 to i64
  %389 = getelementptr inbounds nuw i8, ptr %385, i64 %388
  store i8 %374, ptr %389, align 1, !tbaa !8
  %390 = zext i8 %374 to i64
  %391 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %390
  %392 = load i16, ptr %391, align 4, !tbaa !8
  %393 = add i16 %392, 1
  store i16 %393, ptr %391, align 4, !tbaa !8
  %394 = load i32, ptr %27, align 4, !tbaa !118
  %395 = load i32, ptr %29, align 8, !tbaa !49
  %396 = icmp eq i32 %394, %395
  %397 = load i32, ptr %3, align 4, !tbaa !76
  %398 = add i32 %397, -1
  store i32 %398, ptr %3, align 4, !tbaa !76
  %399 = load i32, ptr %25, align 4, !tbaa !74
  %400 = add i32 %399, 1
  store i32 %400, ptr %25, align 4, !tbaa !74
  br label %401

401:                                              ; preds = %369, %331
  %402 = phi i1 [ %363, %331 ], [ %396, %369 ]
  br i1 %402, label %403, label %457

403:                                              ; preds = %401
  %404 = load i64, ptr %36, align 8, !tbaa !75
  %405 = icmp sgt i64 %404, -1
  br i1 %405, label %406, label %410

406:                                              ; preds = %403
  %407 = load ptr, ptr %37, align 8, !tbaa !39
  %408 = and i64 %404, 4294967295
  %409 = getelementptr inbounds nuw i8, ptr %407, i64 %408
  br label %410

410:                                              ; preds = %406, %403
  %411 = phi ptr [ %409, %406 ], [ null, %403 ]
  %412 = load i32, ptr %38, align 4, !tbaa !74
  %413 = zext i32 %412 to i64
  %414 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %413, i64 %404), !nosanitize !58
  %415 = extractvalue { i64, i1 } %414, 1, !nosanitize !58
  br i1 %415, label %416, label %417, !prof !59, !nosanitize !58

416:                                              ; preds = %525, %467, %410
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

417:                                              ; preds = %410
  %418 = extractvalue { i64, i1 } %414, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %411, i64 noundef %418, i32 noundef 0) #11
  %419 = load i32, ptr %38, align 4, !tbaa !74
  %420 = zext i32 %419 to i64
  store i64 %420, ptr %36, align 8, !tbaa !75
  %421 = load ptr, ptr %0, align 8, !tbaa !20
  %422 = getelementptr inbounds nuw i8, ptr %421, i64 56
  %423 = load ptr, ptr %422, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %423) #11
  %424 = getelementptr inbounds nuw i8, ptr %423, i64 40
  %425 = load i64, ptr %424, align 8, !tbaa !56
  %426 = getelementptr inbounds nuw i8, ptr %421, i64 32
  %427 = load i32, ptr %426, align 8, !tbaa !99
  %428 = zext i32 %427 to i64
  %429 = tail call i64 @llvm.umin.i64(i64 %425, i64 %428)
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %452, label %431

431:                                              ; preds = %417
  %432 = trunc nuw i64 %429 to i32
  %433 = getelementptr inbounds nuw i8, ptr %421, i64 24
  %434 = load ptr, ptr %433, align 8, !tbaa !98
  %435 = getelementptr inbounds nuw i8, ptr %423, i64 32
  %436 = load ptr, ptr %435, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %434, ptr align 1 %436, i64 %429, i1 false)
  %437 = load ptr, ptr %433, align 8, !tbaa !98
  %438 = getelementptr inbounds nuw i8, ptr %437, i64 %429
  store ptr %438, ptr %433, align 8, !tbaa !98
  %439 = load ptr, ptr %435, align 8, !tbaa !57
  %440 = getelementptr inbounds nuw i8, ptr %439, i64 %429
  store ptr %440, ptr %435, align 8, !tbaa !57
  %441 = getelementptr inbounds nuw i8, ptr %421, i64 40
  %442 = load i64, ptr %441, align 8, !tbaa !100
  %443 = add i64 %442, %429
  store i64 %443, ptr %441, align 8, !tbaa !100
  %444 = load i32, ptr %426, align 8, !tbaa !99
  %445 = sub i32 %444, %432
  store i32 %445, ptr %426, align 8, !tbaa !99
  %446 = load i64, ptr %424, align 8, !tbaa !56
  %447 = sub i64 %446, %429
  store i64 %447, ptr %424, align 8, !tbaa !56
  %448 = icmp eq i64 %446, %429
  br i1 %448, label %449, label %452

449:                                              ; preds = %431
  %450 = getelementptr inbounds nuw i8, ptr %423, i64 16
  %451 = load ptr, ptr %450, align 8, !tbaa !44
  store ptr %451, ptr %435, align 8, !tbaa !57
  br label %452

452:                                              ; preds = %449, %431, %417
  %453 = load ptr, ptr %0, align 8, !tbaa !20
  %454 = getelementptr inbounds nuw i8, ptr %453, i64 32
  %455 = load i32, ptr %454, align 8, !tbaa !99
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %572, label %457

457:                                              ; preds = %452, %401
  br label %39, !llvm.loop !121

458:                                              ; preds = %241
  store i32 0, ptr %10, align 4, !tbaa !77
  %459 = icmp eq i32 %1, 4
  br i1 %459, label %460, label %514

460:                                              ; preds = %458
  %461 = load i64, ptr %9, align 8, !tbaa !75
  %462 = icmp sgt i64 %461, -1
  br i1 %462, label %463, label %467

463:                                              ; preds = %460
  %464 = load ptr, ptr %7, align 8, !tbaa !39
  %465 = and i64 %461, 4294967295
  %466 = getelementptr inbounds nuw i8, ptr %464, i64 %465
  br label %467

467:                                              ; preds = %463, %460
  %468 = phi ptr [ %466, %463 ], [ null, %460 ]
  %469 = load i32, ptr %6, align 4, !tbaa !74
  %470 = zext i32 %469 to i64
  %471 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %470, i64 %461), !nosanitize !58
  %472 = extractvalue { i64, i1 } %471, 1, !nosanitize !58
  br i1 %472, label %416, label %473, !prof !59, !nosanitize !58

473:                                              ; preds = %467
  %474 = extractvalue { i64, i1 } %471, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %468, i64 noundef %474, i32 noundef 1) #11
  %475 = load i32, ptr %6, align 4, !tbaa !74
  %476 = zext i32 %475 to i64
  store i64 %476, ptr %9, align 8, !tbaa !75
  %477 = load ptr, ptr %0, align 8, !tbaa !20
  %478 = getelementptr inbounds nuw i8, ptr %477, i64 56
  %479 = load ptr, ptr %478, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %479) #11
  %480 = getelementptr inbounds nuw i8, ptr %479, i64 40
  %481 = load i64, ptr %480, align 8, !tbaa !56
  %482 = getelementptr inbounds nuw i8, ptr %477, i64 32
  %483 = load i32, ptr %482, align 8, !tbaa !99
  %484 = zext i32 %483 to i64
  %485 = tail call i64 @llvm.umin.i64(i64 %481, i64 %484)
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %508, label %487

487:                                              ; preds = %473
  %488 = trunc nuw i64 %485 to i32
  %489 = getelementptr inbounds nuw i8, ptr %477, i64 24
  %490 = load ptr, ptr %489, align 8, !tbaa !98
  %491 = getelementptr inbounds nuw i8, ptr %479, i64 32
  %492 = load ptr, ptr %491, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %490, ptr align 1 %492, i64 %485, i1 false)
  %493 = load ptr, ptr %489, align 8, !tbaa !98
  %494 = getelementptr inbounds nuw i8, ptr %493, i64 %485
  store ptr %494, ptr %489, align 8, !tbaa !98
  %495 = load ptr, ptr %491, align 8, !tbaa !57
  %496 = getelementptr inbounds nuw i8, ptr %495, i64 %485
  store ptr %496, ptr %491, align 8, !tbaa !57
  %497 = getelementptr inbounds nuw i8, ptr %477, i64 40
  %498 = load i64, ptr %497, align 8, !tbaa !100
  %499 = add i64 %498, %485
  store i64 %499, ptr %497, align 8, !tbaa !100
  %500 = load i32, ptr %482, align 8, !tbaa !99
  %501 = sub i32 %500, %488
  store i32 %501, ptr %482, align 8, !tbaa !99
  %502 = load i64, ptr %480, align 8, !tbaa !56
  %503 = sub i64 %502, %485
  store i64 %503, ptr %480, align 8, !tbaa !56
  %504 = icmp eq i64 %502, %485
  br i1 %504, label %505, label %508

505:                                              ; preds = %487
  %506 = getelementptr inbounds nuw i8, ptr %479, i64 16
  %507 = load ptr, ptr %506, align 8, !tbaa !44
  store ptr %507, ptr %491, align 8, !tbaa !57
  br label %508

508:                                              ; preds = %505, %487, %473
  %509 = load ptr, ptr %0, align 8, !tbaa !20
  %510 = getelementptr inbounds nuw i8, ptr %509, i64 32
  %511 = load i32, ptr %510, align 8, !tbaa !99
  %512 = icmp eq i32 %511, 0
  %513 = select i1 %512, i32 2, i32 3
  br label %572

514:                                              ; preds = %458
  %515 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %516 = load i32, ptr %515, align 4, !tbaa !118
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %571, label %518

518:                                              ; preds = %514
  %519 = load i64, ptr %9, align 8, !tbaa !75
  %520 = icmp sgt i64 %519, -1
  br i1 %520, label %521, label %525

521:                                              ; preds = %518
  %522 = load ptr, ptr %7, align 8, !tbaa !39
  %523 = and i64 %519, 4294967295
  %524 = getelementptr inbounds nuw i8, ptr %522, i64 %523
  br label %525

525:                                              ; preds = %521, %518
  %526 = phi ptr [ %524, %521 ], [ null, %518 ]
  %527 = load i32, ptr %6, align 4, !tbaa !74
  %528 = zext i32 %527 to i64
  %529 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %528, i64 %519), !nosanitize !58
  %530 = extractvalue { i64, i1 } %529, 1, !nosanitize !58
  br i1 %530, label %416, label %531, !prof !59, !nosanitize !58

531:                                              ; preds = %525
  %532 = extractvalue { i64, i1 } %529, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %526, i64 noundef %532, i32 noundef 0) #11
  %533 = load i32, ptr %6, align 4, !tbaa !74
  %534 = zext i32 %533 to i64
  store i64 %534, ptr %9, align 8, !tbaa !75
  %535 = load ptr, ptr %0, align 8, !tbaa !20
  %536 = getelementptr inbounds nuw i8, ptr %535, i64 56
  %537 = load ptr, ptr %536, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %537) #11
  %538 = getelementptr inbounds nuw i8, ptr %537, i64 40
  %539 = load i64, ptr %538, align 8, !tbaa !56
  %540 = getelementptr inbounds nuw i8, ptr %535, i64 32
  %541 = load i32, ptr %540, align 8, !tbaa !99
  %542 = zext i32 %541 to i64
  %543 = tail call i64 @llvm.umin.i64(i64 %539, i64 %542)
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %566, label %545

545:                                              ; preds = %531
  %546 = trunc nuw i64 %543 to i32
  %547 = getelementptr inbounds nuw i8, ptr %535, i64 24
  %548 = load ptr, ptr %547, align 8, !tbaa !98
  %549 = getelementptr inbounds nuw i8, ptr %537, i64 32
  %550 = load ptr, ptr %549, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %548, ptr align 1 %550, i64 %543, i1 false)
  %551 = load ptr, ptr %547, align 8, !tbaa !98
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 %543
  store ptr %552, ptr %547, align 8, !tbaa !98
  %553 = load ptr, ptr %549, align 8, !tbaa !57
  %554 = getelementptr inbounds nuw i8, ptr %553, i64 %543
  store ptr %554, ptr %549, align 8, !tbaa !57
  %555 = getelementptr inbounds nuw i8, ptr %535, i64 40
  %556 = load i64, ptr %555, align 8, !tbaa !100
  %557 = add i64 %556, %543
  store i64 %557, ptr %555, align 8, !tbaa !100
  %558 = load i32, ptr %540, align 8, !tbaa !99
  %559 = sub i32 %558, %546
  store i32 %559, ptr %540, align 8, !tbaa !99
  %560 = load i64, ptr %538, align 8, !tbaa !56
  %561 = sub i64 %560, %543
  store i64 %561, ptr %538, align 8, !tbaa !56
  %562 = icmp eq i64 %560, %543
  br i1 %562, label %563, label %566

563:                                              ; preds = %545
  %564 = getelementptr inbounds nuw i8, ptr %537, i64 16
  %565 = load ptr, ptr %564, align 8, !tbaa !44
  store ptr %565, ptr %549, align 8, !tbaa !57
  br label %566

566:                                              ; preds = %563, %545, %531
  %567 = load ptr, ptr %0, align 8, !tbaa !20
  %568 = getelementptr inbounds nuw i8, ptr %567, i64 32
  %569 = load i32, ptr %568, align 8, !tbaa !99
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %572, label %571

571:                                              ; preds = %566, %514
  br label %572

572:                                              ; preds = %571, %566, %508, %452, %237
  %573 = phi i32 [ 1, %571 ], [ %513, %508 ], [ 0, %566 ], [ 0, %237 ], [ 0, %452 ]
  ret i32 %573
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
  br i1 %26, label %181, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = tail call ptr %31(ptr noundef %33, i32 noundef 1, i32 noundef 5968) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %181, label %36

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
  %42 = tail call ptr %38(ptr noundef %39, i32 noundef %41, i32 noundef 2) #11
  %43 = getelementptr inbounds nuw i8, ptr %34, i64 96
  store ptr %42, ptr %43, align 8, !tbaa !39
  %44 = load ptr, ptr %30, align 8, !tbaa !15
  %45 = load ptr, ptr %32, align 8, !tbaa !16
  %46 = load i32, ptr %40, align 8, !tbaa !33
  %47 = tail call ptr %44(ptr noundef %45, i32 noundef %46, i32 noundef 2) #11
  %48 = getelementptr inbounds nuw i8, ptr %34, i64 112
  store ptr %47, ptr %48, align 8, !tbaa !40
  %49 = load ptr, ptr %30, align 8, !tbaa !15
  %50 = load ptr, ptr %32, align 8, !tbaa !16
  %51 = getelementptr inbounds nuw i8, ptr %34, i64 132
  %52 = load i32, ptr %51, align 4, !tbaa !36
  %53 = tail call ptr %49(ptr noundef %50, i32 noundef %52, i32 noundef 2) #11
  %54 = getelementptr inbounds nuw i8, ptr %34, i64 120
  store ptr %53, ptr %54, align 8, !tbaa !41
  %55 = load ptr, ptr %30, align 8, !tbaa !15
  %56 = load ptr, ptr %32, align 8, !tbaa !16
  %57 = getelementptr inbounds nuw i8, ptr %34, i64 5896
  %58 = load i32, ptr %57, align 8, !tbaa !43
  %59 = tail call ptr %55(ptr noundef %56, i32 noundef %58, i32 noundef 4) #11
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
  br i1 %73, label %181, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %76 = load ptr, ptr %75, align 8, !tbaa !17
  %77 = icmp eq ptr %76, null
  br i1 %77, label %181, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %37, align 8, !tbaa !19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %181, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %79, align 8, !tbaa !20
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %84, label %181

84:                                               ; preds = %81
  %85 = getelementptr inbounds nuw i8, ptr %79, i64 8
  %86 = load i32, ptr %85, align 8, !tbaa !29
  switch i32 %86, label %181 [
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
  tail call void %76(ptr noundef %92, ptr noundef nonnull %89) #11, !inline_history !53
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
  tail call void %99(ptr noundef %100, ptr noundef nonnull %96) #11, !inline_history !53
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
  tail call void %107(ptr noundef %108, ptr noundef nonnull %104) #11, !inline_history !53
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
  tail call void %115(ptr noundef %116, ptr noundef nonnull %112) #11, !inline_history !53
  br label %117

117:                                              ; preds = %114, %109
  %118 = load ptr, ptr %75, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !16
  %120 = load ptr, ptr %37, align 8, !tbaa !19
  tail call void %118(ptr noundef %119, ptr noundef %120) #11, !inline_history !53
  store ptr null, ptr %37, align 8, !tbaa !19
  br label %181

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
  br i1 %131, label %132, label %140

132:                                              ; preds = %121
  %133 = getelementptr inbounds nuw i8, ptr %29, i64 172
  %134 = load i32, ptr %133, align 4, !tbaa !74
  %135 = getelementptr inbounds nuw i8, ptr %29, i64 5932
  %136 = load i32, ptr %135, align 4, !tbaa !77
  %137 = sub i32 %134, %136
  %138 = load i32, ptr %40, align 8, !tbaa !33
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %132, %121
  %141 = load i32, ptr %40, align 8, !tbaa !33
  br label %142

142:                                              ; preds = %140, %132
  %143 = phi i32 [ %141, %140 ], [ %137, %132 ]
  %144 = zext i32 %143 to i64
  %145 = shl nuw nsw i64 %144, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %126, ptr align 2 %128, i64 %145, i1 false)
  %146 = load ptr, ptr %54, align 8, !tbaa !41
  %147 = getelementptr inbounds nuw i8, ptr %29, i64 120
  %148 = load ptr, ptr %147, align 8, !tbaa !41
  %149 = load i32, ptr %51, align 4, !tbaa !36
  %150 = zext i32 %149 to i64
  %151 = shl nuw nsw i64 %150, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %146, ptr align 2 %148, i64 %151, i1 false)
  %152 = load ptr, ptr %60, align 8, !tbaa !44
  %153 = getelementptr inbounds nuw i8, ptr %29, i64 32
  %154 = load ptr, ptr %153, align 8, !tbaa !57
  %155 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %156 = load ptr, ptr %155, align 8, !tbaa !44
  %157 = ptrtoint ptr %154 to i64
  %158 = ptrtoint ptr %156 to i64
  %159 = sub i64 %157, %158
  %160 = getelementptr inbounds i8, ptr %152, i64 %159
  %161 = getelementptr inbounds nuw i8, ptr %34, i64 32
  store ptr %160, ptr %161, align 8, !tbaa !57
  %162 = load ptr, ptr %153, align 8, !tbaa !57
  %163 = getelementptr inbounds nuw i8, ptr %29, i64 40
  %164 = load i64, ptr %163, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %160, ptr align 1 %162, i64 %164, i1 false)
  %165 = load ptr, ptr %60, align 8, !tbaa !44
  %166 = load i32, ptr %57, align 8, !tbaa !43
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds nuw i8, ptr %165, i64 %167
  %169 = getelementptr inbounds nuw i8, ptr %34, i64 5888
  store ptr %168, ptr %169, align 8, !tbaa !48
  %170 = getelementptr inbounds nuw i8, ptr %29, i64 5888
  %171 = load ptr, ptr %170, align 8, !tbaa !48
  %172 = getelementptr inbounds nuw i8, ptr %29, i64 5900
  %173 = load i32, ptr %172, align 4, !tbaa !118
  %174 = zext i32 %173 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %168, ptr align 1 %171, i64 %174, i1 false)
  %175 = getelementptr inbounds nuw i8, ptr %34, i64 212
  %176 = getelementptr inbounds nuw i8, ptr %34, i64 2904
  store ptr %175, ptr %176, align 8, !tbaa !122
  %177 = getelementptr inbounds nuw i8, ptr %34, i64 2504
  %178 = getelementptr inbounds nuw i8, ptr %34, i64 2928
  store ptr %177, ptr %178, align 8, !tbaa !123
  %179 = getelementptr inbounds nuw i8, ptr %34, i64 2748
  %180 = getelementptr inbounds nuw i8, ptr %34, i64 2952
  store ptr %179, ptr %180, align 8, !tbaa !124
  br label %181

181:                                              ; preds = %142, %117, %84, %81, %78, %74, %71, %27, %23
  %182 = phi i32 [ 0, %142 ], [ -2, %23 ], [ -4, %27 ], [ -4, %71 ], [ -4, %74 ], [ -4, %78 ], [ -4, %81 ], [ -4, %84 ], [ -4, %117 ]
  ret i32 %182
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 172
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
  %59 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %63 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 172
  br label %69

69:                                               ; preds = %683, %2
  %70 = load i32, ptr %3, align 4, !tbaa !76
  %71 = icmp ult i32 %70, 262
  br i1 %71, label %72, label %273

72:                                               ; preds = %69
  %73 = load i32, ptr %4, align 8, !tbaa !33
  %74 = add i32 %73, -262
  %75 = zext i32 %73 to i64
  br label %76

76:                                               ; preds = %231, %72
  %77 = load i64, ptr %5, align 8, !tbaa !62
  %78 = load i32, ptr %3, align 4, !tbaa !76
  %79 = zext i32 %78 to i64
  %80 = load i32, ptr %6, align 4, !tbaa !74
  %81 = zext i32 %80 to i64
  %82 = add nuw nsw i64 %79, %81
  %83 = sub i64 %77, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32, ptr %4, align 8, !tbaa !33
  %86 = add i32 %74, %85
  %87 = icmp ult i32 %80, %86
  br i1 %87, label %138, label %88

88:                                               ; preds = %76
  %89 = load ptr, ptr %7, align 8, !tbaa !39
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 %75
  %91 = sub i32 %73, %84
  %92 = zext i32 %91 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %89, ptr align 1 %90, i64 %92, i1 false)
  %93 = load i32, ptr %8, align 8, !tbaa !84
  %94 = sub i32 %93, %73
  store i32 %94, ptr %8, align 8, !tbaa !84
  %95 = load i32, ptr %6, align 4, !tbaa !74
  %96 = sub i32 %95, %73
  store i32 %96, ptr %6, align 4, !tbaa !74
  %97 = load i64, ptr %9, align 8, !tbaa !75
  %98 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %97, i64 %75), !nosanitize !58
  %99 = extractvalue { i64, i1 } %98, 1, !nosanitize !58
  br i1 %99, label %100, label %101, !prof !59, !nosanitize !58

100:                                              ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

101:                                              ; preds = %88
  %102 = extractvalue { i64, i1 } %98, 0, !nosanitize !58
  store i64 %102, ptr %9, align 8, !tbaa !75
  %103 = load i32, ptr %10, align 4, !tbaa !77
  %104 = icmp ugt i32 %103, %96
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 %96, ptr %10, align 4, !tbaa !77
  br label %106

106:                                              ; preds = %105, %101
  %107 = load i32, ptr %4, align 8, !tbaa !33
  %108 = load i32, ptr %11, align 4, !tbaa !36
  %109 = load ptr, ptr %12, align 8, !tbaa !41
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds nuw [2 x i8], ptr %109, i64 %110
  br label %112

112:                                              ; preds = %112, %106
  %113 = phi ptr [ %111, %106 ], [ %115, %112 ]
  %114 = phi i32 [ %108, %106 ], [ %120, %112 ]
  %115 = getelementptr inbounds i8, ptr %113, i64 -2
  %116 = load i16, ptr %115, align 2, !tbaa !63
  %117 = zext i16 %116 to i32
  %118 = tail call i32 @llvm.usub.sat.i32(i32 %117, i32 %107)
  %119 = trunc nuw i32 %118 to i16
  store i16 %119, ptr %115, align 2, !tbaa !63
  %120 = add i32 %114, -1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %112, !llvm.loop !85

122:                                              ; preds = %112
  %123 = load ptr, ptr %13, align 8, !tbaa !40
  %124 = zext i32 %107 to i64
  %125 = getelementptr inbounds nuw [2 x i8], ptr %123, i64 %124
  br label %126

126:                                              ; preds = %126, %122
  %127 = phi ptr [ %125, %122 ], [ %129, %126 ]
  %128 = phi i32 [ %107, %122 ], [ %134, %126 ]
  %129 = getelementptr inbounds i8, ptr %127, i64 -2
  %130 = load i16, ptr %129, align 2, !tbaa !63
  %131 = zext i16 %130 to i32
  %132 = tail call i32 @llvm.usub.sat.i32(i32 %131, i32 %107)
  %133 = trunc nuw i32 %132 to i16
  store i16 %133, ptr %129, align 2, !tbaa !63
  %134 = add i32 %128, -1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %126, !llvm.loop !88

136:                                              ; preds = %126
  store i32 1, ptr %14, align 8, !tbaa !64
  %137 = add i32 %73, %84
  br label %138

138:                                              ; preds = %136, %76
  %139 = phi i32 [ %137, %136 ], [ %84, %76 ]
  %140 = load ptr, ptr %0, align 8, !tbaa !20
  %141 = getelementptr inbounds nuw i8, ptr %140, i64 8
  %142 = load i32, ptr %141, align 8, !tbaa !82
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %236, label %144

144:                                              ; preds = %138
  %145 = load ptr, ptr %7, align 8, !tbaa !39
  %146 = load i32, ptr %6, align 4, !tbaa !74
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds nuw i8, ptr %145, i64 %147
  %149 = load i32, ptr %3, align 4, !tbaa !76
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds nuw i8, ptr %148, i64 %150
  %152 = tail call i32 @llvm.umin.i32(i32 %142, i32 %139)
  %153 = icmp eq i32 %139, 0
  br i1 %153, label %176, label %154

154:                                              ; preds = %144
  %155 = sub i32 %142, %152
  store i32 %155, ptr %141, align 8, !tbaa !82
  %156 = load ptr, ptr %140, align 8, !tbaa !83
  %157 = zext i32 %152 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %151, ptr align 1 %156, i64 %157, i1 false)
  %158 = getelementptr inbounds nuw i8, ptr %140, i64 56
  %159 = load ptr, ptr %158, align 8, !tbaa !19
  %160 = getelementptr inbounds nuw i8, ptr %159, i64 48
  %161 = load i32, ptr %160, align 8, !tbaa !30
  switch i32 %161, label %170 [
    i32 1, label %162
    i32 2, label %166
  ]

162:                                              ; preds = %154
  %163 = getelementptr inbounds nuw i8, ptr %140, i64 96
  %164 = load i64, ptr %163, align 8, !tbaa !60
  %165 = tail call i64 @adler32(i64 noundef %164, ptr noundef %151, i32 noundef %152) #11
  store i64 %165, ptr %163, align 8, !tbaa !60
  br label %170

166:                                              ; preds = %154
  %167 = getelementptr inbounds nuw i8, ptr %140, i64 96
  %168 = load i64, ptr %167, align 8, !tbaa !60
  %169 = tail call i64 @crc32(i64 noundef %168, ptr noundef %151, i32 noundef %152) #11
  store i64 %169, ptr %167, align 8, !tbaa !60
  br label %170

170:                                              ; preds = %166, %162, %154
  %171 = load ptr, ptr %140, align 8, !tbaa !83
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 %157
  store ptr %172, ptr %140, align 8, !tbaa !83
  %173 = getelementptr inbounds nuw i8, ptr %140, i64 16
  %174 = load i64, ptr %173, align 8, !tbaa !54
  %175 = add i64 %174, %157
  store i64 %175, ptr %173, align 8, !tbaa !54
  br label %176

176:                                              ; preds = %170, %144
  %177 = phi i32 [ %152, %170 ], [ 0, %144 ]
  %178 = load i32, ptr %3, align 4, !tbaa !76
  %179 = add i32 %178, %177
  store i32 %179, ptr %3, align 4, !tbaa !76
  %180 = load i32, ptr %10, align 4, !tbaa !77
  %181 = add i32 %180, %179
  %182 = icmp ugt i32 %181, 2
  br i1 %182, label %183, label %229

183:                                              ; preds = %176
  %184 = load i32, ptr %6, align 4, !tbaa !74
  %185 = sub i32 %184, %180
  %186 = load ptr, ptr %7, align 8, !tbaa !39
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds nuw i8, ptr %186, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !8
  %190 = zext i8 %189 to i32
  store i32 %190, ptr %15, align 8, !tbaa !81
  %191 = load i32, ptr %16, align 8, !tbaa !38
  %192 = shl i32 %190, %191
  %193 = add i32 %185, 1
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds nuw i8, ptr %186, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !8
  %197 = zext i8 %196 to i32
  %198 = xor i32 %192, %197
  %199 = load i32, ptr %17, align 4, !tbaa !37
  %200 = and i32 %198, %199
  store i32 %200, ptr %15, align 8, !tbaa !81
  br label %201

201:                                              ; preds = %205, %183
  %202 = phi i32 [ %180, %183 ], [ %226, %205 ]
  %203 = phi i32 [ %185, %183 ], [ %225, %205 ]
  %204 = icmp eq i32 %202, 0
  br i1 %204, label %229, label %205

205:                                              ; preds = %201
  %206 = load i32, ptr %15, align 8, !tbaa !81
  %207 = shl i32 %206, %191
  %208 = add i32 %203, 2
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds nuw i8, ptr %186, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !8
  %212 = zext i8 %211 to i32
  %213 = xor i32 %207, %212
  %214 = and i32 %213, %199
  store i32 %214, ptr %15, align 8, !tbaa !81
  %215 = load ptr, ptr %12, align 8, !tbaa !41
  %216 = zext i32 %214 to i64
  %217 = getelementptr inbounds nuw [2 x i8], ptr %215, i64 %216
  %218 = load i16, ptr %217, align 2, !tbaa !63
  %219 = load ptr, ptr %13, align 8, !tbaa !40
  %220 = load i32, ptr %18, align 8, !tbaa !34
  %221 = and i32 %220, %203
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds nuw [2 x i8], ptr %219, i64 %222
  store i16 %218, ptr %223, align 2, !tbaa !63
  %224 = trunc i32 %203 to i16
  store i16 %224, ptr %217, align 2, !tbaa !63
  %225 = add i32 %203, 1
  %226 = add i32 %202, -1
  store i32 %226, ptr %10, align 4, !tbaa !77
  %227 = add i32 %226, %179
  %228 = icmp ult i32 %227, 3
  br i1 %228, label %229, label %201, !llvm.loop !89

229:                                              ; preds = %205, %201, %176
  %230 = icmp ult i32 %179, 262
  br i1 %230, label %231, label %236

231:                                              ; preds = %229
  %232 = load ptr, ptr %0, align 8, !tbaa !20
  %233 = getelementptr inbounds nuw i8, ptr %232, i64 8
  %234 = load i32, ptr %233, align 8, !tbaa !82
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %76, !llvm.loop !90

236:                                              ; preds = %231, %229, %138
  %237 = load i64, ptr %19, align 8, !tbaa !42
  %238 = load i64, ptr %5, align 8, !tbaa !62
  %239 = icmp ult i64 %237, %238
  br i1 %239, label %240, label %267

240:                                              ; preds = %236
  %241 = load i32, ptr %6, align 4, !tbaa !74
  %242 = zext i32 %241 to i64
  %243 = load i32, ptr %3, align 4, !tbaa !76
  %244 = zext i32 %243 to i64
  %245 = add nuw nsw i64 %244, %242
  %246 = icmp ult i64 %237, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %240
  %248 = sub i64 %238, %245
  %249 = tail call i64 @llvm.umin.i64(i64 %248, i64 258)
  %250 = load ptr, ptr %7, align 8, !tbaa !39
  %251 = getelementptr inbounds nuw i8, ptr %250, i64 %245
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %251, i8 0, i64 %249, i1 false)
  %252 = add nuw nsw i64 %249, %245
  br label %265

253:                                              ; preds = %240
  %254 = add nuw nsw i64 %245, 258
  %255 = icmp ult i64 %237, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %253
  %257 = sub nuw nsw i64 %254, %237
  %258 = sub i64 %238, %237
  %259 = tail call i64 @llvm.umin.i64(i64 %257, i64 %258)
  %260 = load ptr, ptr %7, align 8, !tbaa !39
  %261 = getelementptr inbounds nuw i8, ptr %260, i64 %237
  %262 = and i64 %259, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %261, i8 0, i64 %262, i1 false)
  %263 = load i64, ptr %19, align 8, !tbaa !42
  %264 = add i64 %263, %259
  br label %265

265:                                              ; preds = %256, %247
  %266 = phi i64 [ %252, %247 ], [ %264, %256 ]
  store i64 %266, ptr %19, align 8, !tbaa !42
  br label %267

267:                                              ; preds = %265, %253, %236
  %268 = load i32, ptr %3, align 4, !tbaa !76
  %269 = icmp ult i32 %268, 262
  %270 = and i1 %20, %269
  br i1 %270, label %798, label %271

271:                                              ; preds = %267
  %272 = icmp eq i32 %268, 0
  br i1 %272, label %684, label %273

273:                                              ; preds = %271, %69
  %274 = load i32, ptr %3, align 4, !tbaa !76
  %275 = icmp ugt i32 %274, 2
  br i1 %275, label %276, label %301

276:                                              ; preds = %273
  %277 = load i32, ptr %21, align 8, !tbaa !81
  %278 = load i32, ptr %22, align 8, !tbaa !38
  %279 = shl i32 %277, %278
  %280 = load ptr, ptr %23, align 8, !tbaa !39
  %281 = load i32, ptr %24, align 4, !tbaa !74
  %282 = add i32 %281, 2
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds nuw i8, ptr %280, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !8
  %286 = zext i8 %285 to i32
  %287 = xor i32 %279, %286
  %288 = load i32, ptr %25, align 4, !tbaa !37
  %289 = and i32 %287, %288
  store i32 %289, ptr %21, align 8, !tbaa !81
  %290 = load ptr, ptr %26, align 8, !tbaa !41
  %291 = zext i32 %289 to i64
  %292 = getelementptr inbounds nuw [2 x i8], ptr %290, i64 %291
  %293 = load i16, ptr %292, align 2, !tbaa !63
  %294 = load ptr, ptr %27, align 8, !tbaa !40
  %295 = load i32, ptr %28, align 8, !tbaa !34
  %296 = and i32 %295, %281
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds nuw [2 x i8], ptr %294, i64 %297
  store i16 %293, ptr %298, align 2, !tbaa !63
  %299 = zext i16 %293 to i32
  %300 = trunc i32 %281 to i16
  store i16 %300, ptr %292, align 2, !tbaa !63
  br label %301

301:                                              ; preds = %276, %273
  %302 = phi i32 [ %299, %276 ], [ 0, %273 ]
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %480, label %304

304:                                              ; preds = %301
  %305 = load i32, ptr %29, align 4, !tbaa !74
  %306 = sub i32 %305, %302
  %307 = load i32, ptr %30, align 8, !tbaa !33
  %308 = add i32 %307, -262
  %309 = icmp ugt i32 %306, %308
  br i1 %309, label %480, label %310

310:                                              ; preds = %304
  %311 = load ptr, ptr %31, align 8, !tbaa !39
  %312 = zext i32 %305 to i64
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 %312
  %314 = load i32, ptr %32, align 8, !tbaa !78
  %315 = tail call i32 @llvm.usub.sat.i32(i32 %305, i32 %308)
  %316 = load ptr, ptr %33, align 8, !tbaa !40
  %317 = load i32, ptr %34, align 8, !tbaa !34
  %318 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %314, i32 -1)
  %319 = extractvalue { i32, i1 } %318, 1, !nosanitize !58
  br i1 %319, label %320, label %321, !prof !59, !nosanitize !58

320:                                              ; preds = %453, %441, %351, %310
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

321:                                              ; preds = %310
  %322 = getelementptr inbounds nuw i8, ptr %313, i64 258
  %323 = load i32, ptr %35, align 8, !tbaa !71
  %324 = load i32, ptr %36, align 4, !tbaa !73
  %325 = extractvalue { i32, i1 } %318, 0, !nosanitize !58
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, ptr %313, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !8
  %329 = sext i32 %314 to i64
  %330 = getelementptr inbounds i8, ptr %313, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !8
  %332 = load i32, ptr %37, align 4, !tbaa !69
  %333 = icmp ult i32 %314, %332
  %334 = lshr i32 %324, 2
  %335 = select i1 %333, i32 %324, i32 %334
  %336 = tail call i32 @llvm.umin.i32(i32 %323, i32 %274)
  %337 = getelementptr inbounds nuw i8, ptr %313, i64 1
  %338 = ptrtoint ptr %322 to i64
  br label %339

339:                                              ; preds = %464, %321
  %340 = phi i32 [ %314, %321 ], [ %465, %464 ]
  %341 = phi i32 [ %335, %321 ], [ %474, %464 ]
  %342 = phi i32 [ %302, %321 ], [ %472, %464 ]
  %343 = phi i8 [ %328, %321 ], [ %466, %464 ]
  %344 = phi i8 [ %331, %321 ], [ %467, %464 ]
  %345 = zext nneg i32 %342 to i64
  %346 = getelementptr inbounds nuw i8, ptr %311, i64 %345
  %347 = sext i32 %340 to i64
  %348 = getelementptr inbounds i8, ptr %346, i64 %347
  %349 = load i8, ptr %348, align 1, !tbaa !8
  %350 = icmp eq i8 %349, %344
  br i1 %350, label %351, label %464

351:                                              ; preds = %339
  %352 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %340, i32 -1)
  %353 = extractvalue { i32, i1 } %352, 1, !nosanitize !58
  br i1 %353, label %320, label %354, !prof !59, !nosanitize !58

354:                                              ; preds = %351
  %355 = extractvalue { i32, i1 } %352, 0, !nosanitize !58
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, ptr %346, i64 %356
  %358 = load i8, ptr %357, align 1, !tbaa !8
  %359 = icmp eq i8 %358, %343
  br i1 %359, label %360, label %464

360:                                              ; preds = %354
  %361 = load i8, ptr %346, align 1, !tbaa !8
  %362 = load i8, ptr %313, align 1, !tbaa !8
  %363 = icmp eq i8 %361, %362
  br i1 %363, label %364, label %464

364:                                              ; preds = %360
  %365 = getelementptr inbounds nuw i8, ptr %346, i64 1
  %366 = load i8, ptr %365, align 1, !tbaa !8
  %367 = load i8, ptr %337, align 1, !tbaa !8
  %368 = icmp eq i8 %366, %367
  br i1 %368, label %369, label %464

369:                                              ; preds = %364
  %370 = getelementptr inbounds nuw i8, ptr %346, i64 2
  br label %371

371:                                              ; preds = %416, %369
  %372 = phi ptr [ %370, %369 ], [ %420, %416 ]
  %373 = phi i64 [ 2, %369 ], [ %417, %416 ]
  %374 = getelementptr inbounds nuw i8, ptr %313, i64 %373
  %375 = getelementptr inbounds nuw i8, ptr %374, i64 1
  %376 = load i8, ptr %375, align 1, !tbaa !8
  %377 = getelementptr inbounds nuw i8, ptr %372, i64 1
  %378 = load i8, ptr %377, align 1, !tbaa !8
  %379 = icmp eq i8 %376, %378
  br i1 %379, label %380, label %425

380:                                              ; preds = %371
  %381 = getelementptr inbounds nuw i8, ptr %374, i64 2
  %382 = load i8, ptr %381, align 1, !tbaa !8
  %383 = getelementptr inbounds nuw i8, ptr %372, i64 2
  %384 = load i8, ptr %383, align 1, !tbaa !8
  %385 = icmp eq i8 %382, %384
  br i1 %385, label %386, label %427

386:                                              ; preds = %380
  %387 = getelementptr inbounds nuw i8, ptr %374, i64 3
  %388 = load i8, ptr %387, align 1, !tbaa !8
  %389 = getelementptr inbounds nuw i8, ptr %372, i64 3
  %390 = load i8, ptr %389, align 1, !tbaa !8
  %391 = icmp eq i8 %388, %390
  br i1 %391, label %392, label %429

392:                                              ; preds = %386
  %393 = getelementptr inbounds nuw i8, ptr %374, i64 4
  %394 = load i8, ptr %393, align 1, !tbaa !8
  %395 = getelementptr inbounds nuw i8, ptr %372, i64 4
  %396 = load i8, ptr %395, align 1, !tbaa !8
  %397 = icmp eq i8 %394, %396
  br i1 %397, label %398, label %431

398:                                              ; preds = %392
  %399 = getelementptr inbounds nuw i8, ptr %374, i64 5
  %400 = load i8, ptr %399, align 1, !tbaa !8
  %401 = getelementptr inbounds nuw i8, ptr %372, i64 5
  %402 = load i8, ptr %401, align 1, !tbaa !8
  %403 = icmp eq i8 %400, %402
  br i1 %403, label %404, label %433

404:                                              ; preds = %398
  %405 = getelementptr inbounds nuw i8, ptr %374, i64 6
  %406 = load i8, ptr %405, align 1, !tbaa !8
  %407 = getelementptr inbounds nuw i8, ptr %372, i64 6
  %408 = load i8, ptr %407, align 1, !tbaa !8
  %409 = icmp eq i8 %406, %408
  br i1 %409, label %410, label %435

410:                                              ; preds = %404
  %411 = getelementptr inbounds nuw i8, ptr %374, i64 7
  %412 = load i8, ptr %411, align 1, !tbaa !8
  %413 = getelementptr inbounds nuw i8, ptr %372, i64 7
  %414 = load i8, ptr %413, align 1, !tbaa !8
  %415 = icmp eq i8 %412, %414
  br i1 %415, label %416, label %437

416:                                              ; preds = %410
  %417 = add nuw nsw i64 %373, 8
  %418 = getelementptr inbounds nuw i8, ptr %313, i64 %417
  %419 = load i8, ptr %418, align 1, !tbaa !8
  %420 = getelementptr inbounds nuw i8, ptr %372, i64 8
  %421 = load i8, ptr %420, align 1, !tbaa !8
  %422 = icmp eq i8 %419, %421
  %423 = icmp samesign ult i64 %373, 250
  %424 = select i1 %422, i1 %423, i1 false
  br i1 %424, label %371, label %439, !llvm.loop !125

425:                                              ; preds = %371
  %426 = getelementptr inbounds nuw i8, ptr %374, i64 1
  br label %441

427:                                              ; preds = %380
  %428 = getelementptr inbounds nuw i8, ptr %374, i64 2
  br label %441

429:                                              ; preds = %386
  %430 = getelementptr inbounds nuw i8, ptr %374, i64 3
  br label %441

431:                                              ; preds = %392
  %432 = getelementptr inbounds nuw i8, ptr %374, i64 4
  br label %441

433:                                              ; preds = %398
  %434 = getelementptr inbounds nuw i8, ptr %374, i64 5
  br label %441

435:                                              ; preds = %404
  %436 = getelementptr inbounds nuw i8, ptr %374, i64 6
  br label %441

437:                                              ; preds = %410
  %438 = getelementptr inbounds nuw i8, ptr %374, i64 7
  br label %441

439:                                              ; preds = %416
  %440 = getelementptr inbounds nuw i8, ptr %313, i64 %417
  br label %441

441:                                              ; preds = %439, %437, %435, %433, %431, %429, %427, %425
  %442 = phi ptr [ %428, %427 ], [ %430, %429 ], [ %426, %425 ], [ %438, %437 ], [ %436, %435 ], [ %434, %433 ], [ %432, %431 ], [ %440, %439 ]
  %443 = ptrtoint ptr %442 to i64
  %444 = sub i64 %338, %443
  %445 = trunc i64 %444 to i32
  %446 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %445), !nosanitize !58
  %447 = extractvalue { i32, i1 } %446, 0, !nosanitize !58
  %448 = extractvalue { i32, i1 } %446, 1, !nosanitize !58
  br i1 %448, label %320, label %449, !prof !59, !nosanitize !58

449:                                              ; preds = %441
  %450 = icmp sgt i32 %447, %340
  br i1 %450, label %451, label %464

451:                                              ; preds = %449
  store i32 %342, ptr %38, align 8, !tbaa !84
  %452 = icmp slt i32 %447, %336
  br i1 %452, label %453, label %477

453:                                              ; preds = %451
  %454 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %447, i32 -1)
  %455 = extractvalue { i32, i1 } %454, 1, !nosanitize !58
  br i1 %455, label %320, label %456, !prof !59, !nosanitize !58

456:                                              ; preds = %453
  %457 = extractvalue { i32, i1 } %454, 0, !nosanitize !58
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8, ptr %313, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !8
  %461 = sext i32 %447 to i64
  %462 = getelementptr inbounds i8, ptr %313, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !8
  br label %464

464:                                              ; preds = %456, %449, %364, %360, %354, %339
  %465 = phi i32 [ %340, %339 ], [ %340, %354 ], [ %340, %360 ], [ %340, %364 ], [ %447, %456 ], [ %340, %449 ]
  %466 = phi i8 [ %343, %339 ], [ %343, %354 ], [ %343, %360 ], [ %343, %364 ], [ %460, %456 ], [ %343, %449 ]
  %467 = phi i8 [ %344, %339 ], [ %344, %354 ], [ %344, %360 ], [ %344, %364 ], [ %463, %456 ], [ %344, %449 ]
  %468 = and i32 %342, %317
  %469 = zext nneg i32 %468 to i64
  %470 = getelementptr inbounds nuw [2 x i8], ptr %316, i64 %469
  %471 = load i16, ptr %470, align 2, !tbaa !63
  %472 = zext i16 %471 to i32
  %473 = icmp uge i32 %315, %472
  %474 = add i32 %341, -1
  %475 = icmp eq i32 %474, 0
  %476 = select i1 %473, i1 true, i1 %475
  br i1 %476, label %477, label %339, !llvm.loop !126

477:                                              ; preds = %464, %451
  %478 = phi i32 [ %447, %451 ], [ %465, %464 ]
  %479 = tail call i32 @llvm.umin.i32(i32 %478, i32 %274)
  store i32 %479, ptr %39, align 8, !tbaa !79
  br label %480

480:                                              ; preds = %477, %304, %301
  %481 = load i32, ptr %40, align 8, !tbaa !79
  %482 = icmp ugt i32 %481, 2
  br i1 %482, label %483, label %595

483:                                              ; preds = %480
  %484 = trunc i32 %481 to i8
  %485 = add i8 %484, -3
  %486 = load i32, ptr %47, align 4, !tbaa !74
  %487 = load i32, ptr %48, align 8, !tbaa !84
  %488 = sub i32 %486, %487
  %489 = trunc i32 %488 to i16
  %490 = trunc i32 %488 to i8
  %491 = load ptr, ptr %49, align 8, !tbaa !48
  %492 = load i32, ptr %50, align 4, !tbaa !118
  %493 = add i32 %492, 1
  store i32 %493, ptr %50, align 4, !tbaa !118
  %494 = zext i32 %492 to i64
  %495 = getelementptr inbounds nuw i8, ptr %491, i64 %494
  store i8 %490, ptr %495, align 1, !tbaa !8
  %496 = lshr i32 %488, 8
  %497 = trunc i32 %496 to i8
  %498 = load ptr, ptr %49, align 8, !tbaa !48
  %499 = load i32, ptr %50, align 4, !tbaa !118
  %500 = add i32 %499, 1
  store i32 %500, ptr %50, align 4, !tbaa !118
  %501 = zext i32 %499 to i64
  %502 = getelementptr inbounds nuw i8, ptr %498, i64 %501
  store i8 %497, ptr %502, align 1, !tbaa !8
  %503 = load ptr, ptr %49, align 8, !tbaa !48
  %504 = load i32, ptr %50, align 4, !tbaa !118
  %505 = add i32 %504, 1
  store i32 %505, ptr %50, align 4, !tbaa !118
  %506 = zext i32 %504 to i64
  %507 = getelementptr inbounds nuw i8, ptr %503, i64 %506
  store i8 %485, ptr %507, align 1, !tbaa !8
  %508 = add i16 %489, -1
  %509 = zext i8 %485 to i64
  %510 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %509
  %511 = load i8, ptr %510, align 1, !tbaa !8
  %512 = zext i8 %511 to i64
  %513 = getelementptr [4 x i8], ptr %51, i64 %512
  %514 = load i16, ptr %513, align 4, !tbaa !8
  %515 = add i16 %514, 1
  store i16 %515, ptr %513, align 4, !tbaa !8
  %516 = icmp ult i16 %508, 256
  br i1 %516, label %517, label %520

517:                                              ; preds = %483
  %518 = zext nneg i16 %508 to i64
  %519 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %518
  br label %525

520:                                              ; preds = %483
  %521 = lshr i16 %508, 7
  %522 = zext nneg i16 %521 to i64
  %523 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %522
  %524 = getelementptr inbounds nuw i8, ptr %523, i64 256
  br label %525

525:                                              ; preds = %520, %517
  %526 = phi ptr [ %519, %517 ], [ %524, %520 ]
  %527 = load i8, ptr %526, align 1, !tbaa !8
  %528 = zext i8 %527 to i64
  %529 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %528
  %530 = load i16, ptr %529, align 4, !tbaa !8
  %531 = add i16 %530, 1
  store i16 %531, ptr %529, align 4, !tbaa !8
  %532 = load i32, ptr %50, align 4, !tbaa !118
  %533 = load i32, ptr %53, align 8, !tbaa !49
  %534 = icmp eq i32 %532, %533
  %535 = load i32, ptr %40, align 8, !tbaa !79
  %536 = load i32, ptr %3, align 4, !tbaa !76
  %537 = sub i32 %536, %535
  store i32 %537, ptr %3, align 4, !tbaa !76
  %538 = load i32, ptr %54, align 8, !tbaa !67
  %539 = icmp ule i32 %535, %538
  %540 = icmp ugt i32 %537, 2
  %541 = select i1 %539, i1 %540, i1 false
  br i1 %541, label %542, label %577

542:                                              ; preds = %525
  %543 = add i32 %535, -1
  store i32 %543, ptr %40, align 8, !tbaa !79
  %544 = load i32, ptr %60, align 8, !tbaa !38
  %545 = load ptr, ptr %61, align 8, !tbaa !39
  %546 = load i32, ptr %62, align 4, !tbaa !37
  %547 = load ptr, ptr %63, align 8, !tbaa !41
  %548 = load ptr, ptr %64, align 8, !tbaa !40
  %549 = load i32, ptr %65, align 8, !tbaa !34
  %550 = load i32, ptr %47, align 4, !tbaa !74
  %551 = load i32, ptr %59, align 8, !tbaa !81
  %552 = load i32, ptr %40, align 8, !tbaa !79
  br label %553

553:                                              ; preds = %553, %542
  %554 = phi i32 [ %573, %553 ], [ %552, %542 ]
  %555 = phi i32 [ %565, %553 ], [ %551, %542 ]
  %556 = phi i32 [ %557, %553 ], [ %550, %542 ]
  %557 = add i32 %556, 1
  store i32 %557, ptr %47, align 4, !tbaa !74
  %558 = shl i32 %555, %544
  %559 = add i32 %556, 3
  %560 = zext i32 %559 to i64
  %561 = getelementptr inbounds nuw i8, ptr %545, i64 %560
  %562 = load i8, ptr %561, align 1, !tbaa !8
  %563 = zext i8 %562 to i32
  %564 = xor i32 %558, %563
  %565 = and i32 %564, %546
  store i32 %565, ptr %59, align 8, !tbaa !81
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds nuw [2 x i8], ptr %547, i64 %566
  %568 = load i16, ptr %567, align 2, !tbaa !63
  %569 = and i32 %549, %557
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds nuw [2 x i8], ptr %548, i64 %570
  store i16 %568, ptr %571, align 2, !tbaa !63
  %572 = trunc i32 %557 to i16
  store i16 %572, ptr %567, align 2, !tbaa !63
  %573 = add i32 %554, -1
  store i32 %573, ptr %40, align 8, !tbaa !79
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %553, !llvm.loop !127

575:                                              ; preds = %553
  %576 = add i32 %556, 2
  store i32 %576, ptr %47, align 4, !tbaa !74
  br label %627

577:                                              ; preds = %525
  %578 = load i32, ptr %47, align 4, !tbaa !74
  %579 = add i32 %578, %535
  store i32 %579, ptr %47, align 4, !tbaa !74
  store i32 0, ptr %40, align 8, !tbaa !79
  %580 = load ptr, ptr %55, align 8, !tbaa !39
  %581 = zext i32 %579 to i64
  %582 = getelementptr inbounds nuw i8, ptr %580, i64 %581
  %583 = load i8, ptr %582, align 1, !tbaa !8
  %584 = zext i8 %583 to i32
  store i32 %584, ptr %56, align 8, !tbaa !81
  %585 = load i32, ptr %57, align 8, !tbaa !38
  %586 = shl i32 %584, %585
  %587 = add i32 %579, 1
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds nuw i8, ptr %580, i64 %588
  %590 = load i8, ptr %589, align 1, !tbaa !8
  %591 = zext i8 %590 to i32
  %592 = xor i32 %586, %591
  %593 = load i32, ptr %58, align 4, !tbaa !37
  %594 = and i32 %592, %593
  store i32 %594, ptr %56, align 8, !tbaa !81
  br label %627

595:                                              ; preds = %480
  %596 = load ptr, ptr %41, align 8, !tbaa !39
  %597 = load i32, ptr %42, align 4, !tbaa !74
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds nuw i8, ptr %596, i64 %598
  %600 = load i8, ptr %599, align 1, !tbaa !8
  %601 = load ptr, ptr %43, align 8, !tbaa !48
  %602 = load i32, ptr %44, align 4, !tbaa !118
  %603 = add i32 %602, 1
  store i32 %603, ptr %44, align 4, !tbaa !118
  %604 = zext i32 %602 to i64
  %605 = getelementptr inbounds nuw i8, ptr %601, i64 %604
  store i8 0, ptr %605, align 1, !tbaa !8
  %606 = load ptr, ptr %43, align 8, !tbaa !48
  %607 = load i32, ptr %44, align 4, !tbaa !118
  %608 = add i32 %607, 1
  store i32 %608, ptr %44, align 4, !tbaa !118
  %609 = zext i32 %607 to i64
  %610 = getelementptr inbounds nuw i8, ptr %606, i64 %609
  store i8 0, ptr %610, align 1, !tbaa !8
  %611 = load ptr, ptr %43, align 8, !tbaa !48
  %612 = load i32, ptr %44, align 4, !tbaa !118
  %613 = add i32 %612, 1
  store i32 %613, ptr %44, align 4, !tbaa !118
  %614 = zext i32 %612 to i64
  %615 = getelementptr inbounds nuw i8, ptr %611, i64 %614
  store i8 %600, ptr %615, align 1, !tbaa !8
  %616 = zext i8 %600 to i64
  %617 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %616
  %618 = load i16, ptr %617, align 4, !tbaa !8
  %619 = add i16 %618, 1
  store i16 %619, ptr %617, align 4, !tbaa !8
  %620 = load i32, ptr %44, align 4, !tbaa !118
  %621 = load i32, ptr %46, align 8, !tbaa !49
  %622 = icmp eq i32 %620, %621
  %623 = load i32, ptr %3, align 4, !tbaa !76
  %624 = add i32 %623, -1
  store i32 %624, ptr %3, align 4, !tbaa !76
  %625 = load i32, ptr %42, align 4, !tbaa !74
  %626 = add i32 %625, 1
  store i32 %626, ptr %42, align 4, !tbaa !74
  br label %627

627:                                              ; preds = %595, %577, %575
  %628 = phi i1 [ %534, %575 ], [ %534, %577 ], [ %622, %595 ]
  br i1 %628, label %629, label %683

629:                                              ; preds = %627
  %630 = load i64, ptr %66, align 8, !tbaa !75
  %631 = icmp sgt i64 %630, -1
  br i1 %631, label %632, label %636

632:                                              ; preds = %629
  %633 = load ptr, ptr %67, align 8, !tbaa !39
  %634 = and i64 %630, 4294967295
  %635 = getelementptr inbounds nuw i8, ptr %633, i64 %634
  br label %636

636:                                              ; preds = %632, %629
  %637 = phi ptr [ %635, %632 ], [ null, %629 ]
  %638 = load i32, ptr %68, align 4, !tbaa !74
  %639 = zext i32 %638 to i64
  %640 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %639, i64 %630), !nosanitize !58
  %641 = extractvalue { i64, i1 } %640, 1, !nosanitize !58
  br i1 %641, label %642, label %643, !prof !59, !nosanitize !58

642:                                              ; preds = %752, %695, %636
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

643:                                              ; preds = %636
  %644 = extractvalue { i64, i1 } %640, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %637, i64 noundef %644, i32 noundef 0) #11
  %645 = load i32, ptr %68, align 4, !tbaa !74
  %646 = zext i32 %645 to i64
  store i64 %646, ptr %66, align 8, !tbaa !75
  %647 = load ptr, ptr %0, align 8, !tbaa !20
  %648 = getelementptr inbounds nuw i8, ptr %647, i64 56
  %649 = load ptr, ptr %648, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %649) #11
  %650 = getelementptr inbounds nuw i8, ptr %649, i64 40
  %651 = load i64, ptr %650, align 8, !tbaa !56
  %652 = getelementptr inbounds nuw i8, ptr %647, i64 32
  %653 = load i32, ptr %652, align 8, !tbaa !99
  %654 = zext i32 %653 to i64
  %655 = tail call i64 @llvm.umin.i64(i64 %651, i64 %654)
  %656 = icmp eq i64 %655, 0
  br i1 %656, label %678, label %657

657:                                              ; preds = %643
  %658 = trunc nuw i64 %655 to i32
  %659 = getelementptr inbounds nuw i8, ptr %647, i64 24
  %660 = load ptr, ptr %659, align 8, !tbaa !98
  %661 = getelementptr inbounds nuw i8, ptr %649, i64 32
  %662 = load ptr, ptr %661, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %660, ptr align 1 %662, i64 %655, i1 false)
  %663 = load ptr, ptr %659, align 8, !tbaa !98
  %664 = getelementptr inbounds nuw i8, ptr %663, i64 %655
  store ptr %664, ptr %659, align 8, !tbaa !98
  %665 = load ptr, ptr %661, align 8, !tbaa !57
  %666 = getelementptr inbounds nuw i8, ptr %665, i64 %655
  store ptr %666, ptr %661, align 8, !tbaa !57
  %667 = getelementptr inbounds nuw i8, ptr %647, i64 40
  %668 = load i64, ptr %667, align 8, !tbaa !100
  %669 = add i64 %668, %655
  store i64 %669, ptr %667, align 8, !tbaa !100
  %670 = load i32, ptr %652, align 8, !tbaa !99
  %671 = sub i32 %670, %658
  store i32 %671, ptr %652, align 8, !tbaa !99
  %672 = load i64, ptr %650, align 8, !tbaa !56
  %673 = sub i64 %672, %655
  store i64 %673, ptr %650, align 8, !tbaa !56
  %674 = icmp eq i64 %672, %655
  br i1 %674, label %675, label %678

675:                                              ; preds = %657
  %676 = getelementptr inbounds nuw i8, ptr %649, i64 16
  %677 = load ptr, ptr %676, align 8, !tbaa !44
  store ptr %677, ptr %661, align 8, !tbaa !57
  br label %678

678:                                              ; preds = %675, %657, %643
  %679 = load ptr, ptr %0, align 8, !tbaa !20
  %680 = getelementptr inbounds nuw i8, ptr %679, i64 32
  %681 = load i32, ptr %680, align 8, !tbaa !99
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %798, label %683

683:                                              ; preds = %678, %627
  br label %69, !llvm.loop !128

684:                                              ; preds = %271
  %685 = load i32, ptr %6, align 4, !tbaa !74
  %686 = tail call i32 @llvm.umin.i32(i32 %685, i32 2)
  store i32 %686, ptr %10, align 4, !tbaa !77
  %687 = icmp eq i32 %1, 4
  br i1 %687, label %688, label %741

688:                                              ; preds = %684
  %689 = load i64, ptr %9, align 8, !tbaa !75
  %690 = icmp sgt i64 %689, -1
  br i1 %690, label %691, label %695

691:                                              ; preds = %688
  %692 = load ptr, ptr %7, align 8, !tbaa !39
  %693 = and i64 %689, 4294967295
  %694 = getelementptr inbounds nuw i8, ptr %692, i64 %693
  br label %695

695:                                              ; preds = %691, %688
  %696 = phi ptr [ %694, %691 ], [ null, %688 ]
  %697 = zext i32 %685 to i64
  %698 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %697, i64 %689), !nosanitize !58
  %699 = extractvalue { i64, i1 } %698, 1, !nosanitize !58
  br i1 %699, label %642, label %700, !prof !59, !nosanitize !58

700:                                              ; preds = %695
  %701 = extractvalue { i64, i1 } %698, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %696, i64 noundef %701, i32 noundef 1) #11
  %702 = load i32, ptr %6, align 4, !tbaa !74
  %703 = zext i32 %702 to i64
  store i64 %703, ptr %9, align 8, !tbaa !75
  %704 = load ptr, ptr %0, align 8, !tbaa !20
  %705 = getelementptr inbounds nuw i8, ptr %704, i64 56
  %706 = load ptr, ptr %705, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %706) #11
  %707 = getelementptr inbounds nuw i8, ptr %706, i64 40
  %708 = load i64, ptr %707, align 8, !tbaa !56
  %709 = getelementptr inbounds nuw i8, ptr %704, i64 32
  %710 = load i32, ptr %709, align 8, !tbaa !99
  %711 = zext i32 %710 to i64
  %712 = tail call i64 @llvm.umin.i64(i64 %708, i64 %711)
  %713 = icmp eq i64 %712, 0
  br i1 %713, label %735, label %714

714:                                              ; preds = %700
  %715 = trunc nuw i64 %712 to i32
  %716 = getelementptr inbounds nuw i8, ptr %704, i64 24
  %717 = load ptr, ptr %716, align 8, !tbaa !98
  %718 = getelementptr inbounds nuw i8, ptr %706, i64 32
  %719 = load ptr, ptr %718, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %717, ptr align 1 %719, i64 %712, i1 false)
  %720 = load ptr, ptr %716, align 8, !tbaa !98
  %721 = getelementptr inbounds nuw i8, ptr %720, i64 %712
  store ptr %721, ptr %716, align 8, !tbaa !98
  %722 = load ptr, ptr %718, align 8, !tbaa !57
  %723 = getelementptr inbounds nuw i8, ptr %722, i64 %712
  store ptr %723, ptr %718, align 8, !tbaa !57
  %724 = getelementptr inbounds nuw i8, ptr %704, i64 40
  %725 = load i64, ptr %724, align 8, !tbaa !100
  %726 = add i64 %725, %712
  store i64 %726, ptr %724, align 8, !tbaa !100
  %727 = load i32, ptr %709, align 8, !tbaa !99
  %728 = sub i32 %727, %715
  store i32 %728, ptr %709, align 8, !tbaa !99
  %729 = load i64, ptr %707, align 8, !tbaa !56
  %730 = sub i64 %729, %712
  store i64 %730, ptr %707, align 8, !tbaa !56
  %731 = icmp eq i64 %729, %712
  br i1 %731, label %732, label %735

732:                                              ; preds = %714
  %733 = getelementptr inbounds nuw i8, ptr %706, i64 16
  %734 = load ptr, ptr %733, align 8, !tbaa !44
  store ptr %734, ptr %718, align 8, !tbaa !57
  br label %735

735:                                              ; preds = %732, %714, %700
  %736 = load ptr, ptr %0, align 8, !tbaa !20
  %737 = getelementptr inbounds nuw i8, ptr %736, i64 32
  %738 = load i32, ptr %737, align 8, !tbaa !99
  %739 = icmp eq i32 %738, 0
  %740 = select i1 %739, i32 2, i32 3
  br label %798

741:                                              ; preds = %684
  %742 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %743 = load i32, ptr %742, align 4, !tbaa !118
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %797, label %745

745:                                              ; preds = %741
  %746 = load i64, ptr %9, align 8, !tbaa !75
  %747 = icmp sgt i64 %746, -1
  br i1 %747, label %748, label %752

748:                                              ; preds = %745
  %749 = load ptr, ptr %7, align 8, !tbaa !39
  %750 = and i64 %746, 4294967295
  %751 = getelementptr inbounds nuw i8, ptr %749, i64 %750
  br label %752

752:                                              ; preds = %748, %745
  %753 = phi ptr [ %751, %748 ], [ null, %745 ]
  %754 = zext i32 %685 to i64
  %755 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %754, i64 %746), !nosanitize !58
  %756 = extractvalue { i64, i1 } %755, 1, !nosanitize !58
  br i1 %756, label %642, label %757, !prof !59, !nosanitize !58

757:                                              ; preds = %752
  %758 = extractvalue { i64, i1 } %755, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %753, i64 noundef %758, i32 noundef 0) #11
  %759 = load i32, ptr %6, align 4, !tbaa !74
  %760 = zext i32 %759 to i64
  store i64 %760, ptr %9, align 8, !tbaa !75
  %761 = load ptr, ptr %0, align 8, !tbaa !20
  %762 = getelementptr inbounds nuw i8, ptr %761, i64 56
  %763 = load ptr, ptr %762, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %763) #11
  %764 = getelementptr inbounds nuw i8, ptr %763, i64 40
  %765 = load i64, ptr %764, align 8, !tbaa !56
  %766 = getelementptr inbounds nuw i8, ptr %761, i64 32
  %767 = load i32, ptr %766, align 8, !tbaa !99
  %768 = zext i32 %767 to i64
  %769 = tail call i64 @llvm.umin.i64(i64 %765, i64 %768)
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %792, label %771

771:                                              ; preds = %757
  %772 = trunc nuw i64 %769 to i32
  %773 = getelementptr inbounds nuw i8, ptr %761, i64 24
  %774 = load ptr, ptr %773, align 8, !tbaa !98
  %775 = getelementptr inbounds nuw i8, ptr %763, i64 32
  %776 = load ptr, ptr %775, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %774, ptr align 1 %776, i64 %769, i1 false)
  %777 = load ptr, ptr %773, align 8, !tbaa !98
  %778 = getelementptr inbounds nuw i8, ptr %777, i64 %769
  store ptr %778, ptr %773, align 8, !tbaa !98
  %779 = load ptr, ptr %775, align 8, !tbaa !57
  %780 = getelementptr inbounds nuw i8, ptr %779, i64 %769
  store ptr %780, ptr %775, align 8, !tbaa !57
  %781 = getelementptr inbounds nuw i8, ptr %761, i64 40
  %782 = load i64, ptr %781, align 8, !tbaa !100
  %783 = add i64 %782, %769
  store i64 %783, ptr %781, align 8, !tbaa !100
  %784 = load i32, ptr %766, align 8, !tbaa !99
  %785 = sub i32 %784, %772
  store i32 %785, ptr %766, align 8, !tbaa !99
  %786 = load i64, ptr %764, align 8, !tbaa !56
  %787 = sub i64 %786, %769
  store i64 %787, ptr %764, align 8, !tbaa !56
  %788 = icmp eq i64 %786, %769
  br i1 %788, label %789, label %792

789:                                              ; preds = %771
  %790 = getelementptr inbounds nuw i8, ptr %763, i64 16
  %791 = load ptr, ptr %790, align 8, !tbaa !44
  store ptr %791, ptr %775, align 8, !tbaa !57
  br label %792

792:                                              ; preds = %789, %771, %757
  %793 = load ptr, ptr %0, align 8, !tbaa !20
  %794 = getelementptr inbounds nuw i8, ptr %793, i64 32
  %795 = load i32, ptr %794, align 8, !tbaa !99
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %798, label %797

797:                                              ; preds = %792, %741
  br label %798

798:                                              ; preds = %797, %792, %735, %678, %267
  %799 = phi i32 [ 1, %797 ], [ %740, %735 ], [ 0, %792 ], [ 0, %267 ], [ 0, %678 ]
  ret i32 %799
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
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 172
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
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 96
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

68:                                               ; preds = %592, %2
  %69 = load i32, ptr %3, align 4, !tbaa !76
  %70 = icmp ult i32 %69, 262
  br i1 %70, label %71, label %272

71:                                               ; preds = %68
  %72 = load i32, ptr %4, align 8, !tbaa !33
  %73 = add i32 %72, -262
  %74 = zext i32 %72 to i64
  br label %75

75:                                               ; preds = %230, %71
  %76 = load i64, ptr %5, align 8, !tbaa !62
  %77 = load i32, ptr %3, align 4, !tbaa !76
  %78 = zext i32 %77 to i64
  %79 = load i32, ptr %6, align 4, !tbaa !74
  %80 = zext i32 %79 to i64
  %81 = add nuw nsw i64 %78, %80
  %82 = sub i64 %76, %81
  %83 = trunc i64 %82 to i32
  %84 = load i32, ptr %4, align 8, !tbaa !33
  %85 = add i32 %73, %84
  %86 = icmp ult i32 %79, %85
  br i1 %86, label %137, label %87

87:                                               ; preds = %75
  %88 = load ptr, ptr %7, align 8, !tbaa !39
  %89 = getelementptr inbounds nuw i8, ptr %88, i64 %74
  %90 = sub i32 %72, %83
  %91 = zext i32 %90 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %88, ptr align 1 %89, i64 %91, i1 false)
  %92 = load i32, ptr %8, align 8, !tbaa !84
  %93 = sub i32 %92, %72
  store i32 %93, ptr %8, align 8, !tbaa !84
  %94 = load i32, ptr %6, align 4, !tbaa !74
  %95 = sub i32 %94, %72
  store i32 %95, ptr %6, align 4, !tbaa !74
  %96 = load i64, ptr %9, align 8, !tbaa !75
  %97 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %96, i64 %74), !nosanitize !58
  %98 = extractvalue { i64, i1 } %97, 1, !nosanitize !58
  br i1 %98, label %99, label %100, !prof !59, !nosanitize !58

99:                                               ; preds = %87
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

100:                                              ; preds = %87
  %101 = extractvalue { i64, i1 } %97, 0, !nosanitize !58
  store i64 %101, ptr %9, align 8, !tbaa !75
  %102 = load i32, ptr %10, align 4, !tbaa !77
  %103 = icmp ugt i32 %102, %95
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 %95, ptr %10, align 4, !tbaa !77
  br label %105

105:                                              ; preds = %104, %100
  %106 = load i32, ptr %4, align 8, !tbaa !33
  %107 = load i32, ptr %11, align 4, !tbaa !36
  %108 = load ptr, ptr %12, align 8, !tbaa !41
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds nuw [2 x i8], ptr %108, i64 %109
  br label %111

111:                                              ; preds = %111, %105
  %112 = phi ptr [ %110, %105 ], [ %114, %111 ]
  %113 = phi i32 [ %107, %105 ], [ %119, %111 ]
  %114 = getelementptr inbounds i8, ptr %112, i64 -2
  %115 = load i16, ptr %114, align 2, !tbaa !63
  %116 = zext i16 %115 to i32
  %117 = tail call i32 @llvm.usub.sat.i32(i32 %116, i32 %106)
  %118 = trunc nuw i32 %117 to i16
  store i16 %118, ptr %114, align 2, !tbaa !63
  %119 = add i32 %113, -1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %111, !llvm.loop !85

121:                                              ; preds = %111
  %122 = load ptr, ptr %13, align 8, !tbaa !40
  %123 = zext i32 %106 to i64
  %124 = getelementptr inbounds nuw [2 x i8], ptr %122, i64 %123
  br label %125

125:                                              ; preds = %125, %121
  %126 = phi ptr [ %124, %121 ], [ %128, %125 ]
  %127 = phi i32 [ %106, %121 ], [ %133, %125 ]
  %128 = getelementptr inbounds i8, ptr %126, i64 -2
  %129 = load i16, ptr %128, align 2, !tbaa !63
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @llvm.usub.sat.i32(i32 %130, i32 %106)
  %132 = trunc nuw i32 %131 to i16
  store i16 %132, ptr %128, align 2, !tbaa !63
  %133 = add i32 %127, -1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %125, !llvm.loop !88

135:                                              ; preds = %125
  store i32 1, ptr %14, align 8, !tbaa !64
  %136 = add i32 %72, %83
  br label %137

137:                                              ; preds = %135, %75
  %138 = phi i32 [ %136, %135 ], [ %83, %75 ]
  %139 = load ptr, ptr %0, align 8, !tbaa !20
  %140 = getelementptr inbounds nuw i8, ptr %139, i64 8
  %141 = load i32, ptr %140, align 8, !tbaa !82
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %235, label %143

143:                                              ; preds = %137
  %144 = load ptr, ptr %7, align 8, !tbaa !39
  %145 = load i32, ptr %6, align 4, !tbaa !74
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds nuw i8, ptr %144, i64 %146
  %148 = load i32, ptr %3, align 4, !tbaa !76
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 %149
  %151 = tail call i32 @llvm.umin.i32(i32 %141, i32 %138)
  %152 = icmp eq i32 %138, 0
  br i1 %152, label %175, label %153

153:                                              ; preds = %143
  %154 = sub i32 %141, %151
  store i32 %154, ptr %140, align 8, !tbaa !82
  %155 = load ptr, ptr %139, align 8, !tbaa !83
  %156 = zext i32 %151 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %150, ptr align 1 %155, i64 %156, i1 false)
  %157 = getelementptr inbounds nuw i8, ptr %139, i64 56
  %158 = load ptr, ptr %157, align 8, !tbaa !19
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 48
  %160 = load i32, ptr %159, align 8, !tbaa !30
  switch i32 %160, label %169 [
    i32 1, label %161
    i32 2, label %165
  ]

161:                                              ; preds = %153
  %162 = getelementptr inbounds nuw i8, ptr %139, i64 96
  %163 = load i64, ptr %162, align 8, !tbaa !60
  %164 = tail call i64 @adler32(i64 noundef %163, ptr noundef %150, i32 noundef %151) #11
  store i64 %164, ptr %162, align 8, !tbaa !60
  br label %169

165:                                              ; preds = %153
  %166 = getelementptr inbounds nuw i8, ptr %139, i64 96
  %167 = load i64, ptr %166, align 8, !tbaa !60
  %168 = tail call i64 @crc32(i64 noundef %167, ptr noundef %150, i32 noundef %151) #11
  store i64 %168, ptr %166, align 8, !tbaa !60
  br label %169

169:                                              ; preds = %165, %161, %153
  %170 = load ptr, ptr %139, align 8, !tbaa !83
  %171 = getelementptr inbounds nuw i8, ptr %170, i64 %156
  store ptr %171, ptr %139, align 8, !tbaa !83
  %172 = getelementptr inbounds nuw i8, ptr %139, i64 16
  %173 = load i64, ptr %172, align 8, !tbaa !54
  %174 = add i64 %173, %156
  store i64 %174, ptr %172, align 8, !tbaa !54
  br label %175

175:                                              ; preds = %169, %143
  %176 = phi i32 [ %151, %169 ], [ 0, %143 ]
  %177 = load i32, ptr %3, align 4, !tbaa !76
  %178 = add i32 %177, %176
  store i32 %178, ptr %3, align 4, !tbaa !76
  %179 = load i32, ptr %10, align 4, !tbaa !77
  %180 = add i32 %179, %178
  %181 = icmp ugt i32 %180, 2
  br i1 %181, label %182, label %228

182:                                              ; preds = %175
  %183 = load i32, ptr %6, align 4, !tbaa !74
  %184 = sub i32 %183, %179
  %185 = load ptr, ptr %7, align 8, !tbaa !39
  %186 = zext i32 %184 to i64
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !8
  %189 = zext i8 %188 to i32
  store i32 %189, ptr %15, align 8, !tbaa !81
  %190 = load i32, ptr %16, align 8, !tbaa !38
  %191 = shl i32 %189, %190
  %192 = add i32 %184, 1
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds nuw i8, ptr %185, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !8
  %196 = zext i8 %195 to i32
  %197 = xor i32 %191, %196
  %198 = load i32, ptr %17, align 4, !tbaa !37
  %199 = and i32 %197, %198
  store i32 %199, ptr %15, align 8, !tbaa !81
  br label %200

200:                                              ; preds = %204, %182
  %201 = phi i32 [ %179, %182 ], [ %225, %204 ]
  %202 = phi i32 [ %184, %182 ], [ %224, %204 ]
  %203 = icmp eq i32 %201, 0
  br i1 %203, label %228, label %204

204:                                              ; preds = %200
  %205 = load i32, ptr %15, align 8, !tbaa !81
  %206 = shl i32 %205, %190
  %207 = add i32 %202, 2
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds nuw i8, ptr %185, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !8
  %211 = zext i8 %210 to i32
  %212 = xor i32 %206, %211
  %213 = and i32 %212, %198
  store i32 %213, ptr %15, align 8, !tbaa !81
  %214 = load ptr, ptr %12, align 8, !tbaa !41
  %215 = zext i32 %213 to i64
  %216 = getelementptr inbounds nuw [2 x i8], ptr %214, i64 %215
  %217 = load i16, ptr %216, align 2, !tbaa !63
  %218 = load ptr, ptr %13, align 8, !tbaa !40
  %219 = load i32, ptr %18, align 8, !tbaa !34
  %220 = and i32 %219, %202
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds nuw [2 x i8], ptr %218, i64 %221
  store i16 %217, ptr %222, align 2, !tbaa !63
  %223 = trunc i32 %202 to i16
  store i16 %223, ptr %216, align 2, !tbaa !63
  %224 = add i32 %202, 1
  %225 = add i32 %201, -1
  store i32 %225, ptr %10, align 4, !tbaa !77
  %226 = add i32 %225, %178
  %227 = icmp ult i32 %226, 3
  br i1 %227, label %228, label %200, !llvm.loop !89

228:                                              ; preds = %204, %200, %175
  %229 = icmp ult i32 %178, 262
  br i1 %229, label %230, label %235

230:                                              ; preds = %228
  %231 = load ptr, ptr %0, align 8, !tbaa !20
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 8
  %233 = load i32, ptr %232, align 8, !tbaa !82
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %75, !llvm.loop !90

235:                                              ; preds = %230, %228, %137
  %236 = load i64, ptr %19, align 8, !tbaa !42
  %237 = load i64, ptr %5, align 8, !tbaa !62
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %266

239:                                              ; preds = %235
  %240 = load i32, ptr %6, align 4, !tbaa !74
  %241 = zext i32 %240 to i64
  %242 = load i32, ptr %3, align 4, !tbaa !76
  %243 = zext i32 %242 to i64
  %244 = add nuw nsw i64 %243, %241
  %245 = icmp ult i64 %236, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %239
  %247 = sub i64 %237, %244
  %248 = tail call i64 @llvm.umin.i64(i64 %247, i64 258)
  %249 = load ptr, ptr %7, align 8, !tbaa !39
  %250 = getelementptr inbounds nuw i8, ptr %249, i64 %244
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %250, i8 0, i64 %248, i1 false)
  %251 = add nuw nsw i64 %248, %244
  br label %264

252:                                              ; preds = %239
  %253 = add nuw nsw i64 %244, 258
  %254 = icmp ult i64 %236, %253
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = sub nuw nsw i64 %253, %236
  %257 = sub i64 %237, %236
  %258 = tail call i64 @llvm.umin.i64(i64 %256, i64 %257)
  %259 = load ptr, ptr %7, align 8, !tbaa !39
  %260 = getelementptr inbounds nuw i8, ptr %259, i64 %236
  %261 = and i64 %258, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %260, i8 0, i64 %261, i1 false)
  %262 = load i64, ptr %19, align 8, !tbaa !42
  %263 = add i64 %262, %258
  br label %264

264:                                              ; preds = %255, %246
  %265 = phi i64 [ %251, %246 ], [ %263, %255 ]
  store i64 %265, ptr %19, align 8, !tbaa !42
  br label %266

266:                                              ; preds = %264, %252, %235
  %267 = load i32, ptr %3, align 4, !tbaa !76
  %268 = icmp ult i32 %267, 262
  %269 = and i1 %20, %268
  br i1 %269, label %886, label %270

270:                                              ; preds = %266
  %271 = icmp eq i32 %267, 0
  br i1 %271, label %739, label %272

272:                                              ; preds = %270, %68
  %273 = load i32, ptr %3, align 4, !tbaa !76
  %274 = icmp ugt i32 %273, 2
  br i1 %274, label %275, label %300

275:                                              ; preds = %272
  %276 = load i32, ptr %21, align 8, !tbaa !81
  %277 = load i32, ptr %22, align 8, !tbaa !38
  %278 = shl i32 %276, %277
  %279 = load ptr, ptr %23, align 8, !tbaa !39
  %280 = load i32, ptr %24, align 4, !tbaa !74
  %281 = add i32 %280, 2
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds nuw i8, ptr %279, i64 %282
  %284 = load i8, ptr %283, align 1, !tbaa !8
  %285 = zext i8 %284 to i32
  %286 = xor i32 %278, %285
  %287 = load i32, ptr %25, align 4, !tbaa !37
  %288 = and i32 %286, %287
  store i32 %288, ptr %21, align 8, !tbaa !81
  %289 = load ptr, ptr %26, align 8, !tbaa !41
  %290 = zext i32 %288 to i64
  %291 = getelementptr inbounds nuw [2 x i8], ptr %289, i64 %290
  %292 = load i16, ptr %291, align 2, !tbaa !63
  %293 = load ptr, ptr %27, align 8, !tbaa !40
  %294 = load i32, ptr %28, align 8, !tbaa !34
  %295 = and i32 %294, %280
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds nuw [2 x i8], ptr %293, i64 %296
  store i16 %292, ptr %297, align 2, !tbaa !63
  %298 = zext i16 %292 to i32
  %299 = trunc i32 %280 to i16
  store i16 %299, ptr %291, align 2, !tbaa !63
  br label %300

300:                                              ; preds = %275, %272
  %301 = phi i32 [ %298, %275 ], [ 0, %272 ]
  %302 = load i32, ptr %29, align 8, !tbaa !79
  store i32 %302, ptr %30, align 8, !tbaa !78
  %303 = load i32, ptr %31, align 8, !tbaa !84
  store i32 %303, ptr %32, align 4, !tbaa !129
  store i32 2, ptr %29, align 8, !tbaa !79
  %304 = icmp eq i32 %301, 0
  br i1 %304, label %494, label %305

305:                                              ; preds = %300
  %306 = load i32, ptr %33, align 8, !tbaa !67
  %307 = icmp ult i32 %302, %306
  br i1 %307, label %308, label %494

308:                                              ; preds = %305
  %309 = load i32, ptr %34, align 4, !tbaa !74
  %310 = sub i32 %309, %301
  %311 = load i32, ptr %35, align 8, !tbaa !33
  %312 = add i32 %311, -262
  %313 = icmp ugt i32 %310, %312
  br i1 %313, label %494, label %314

314:                                              ; preds = %308
  %315 = load ptr, ptr %36, align 8, !tbaa !39
  %316 = zext i32 %309 to i64
  %317 = getelementptr inbounds nuw i8, ptr %315, i64 %316
  %318 = tail call i32 @llvm.usub.sat.i32(i32 %309, i32 %312)
  %319 = load ptr, ptr %37, align 8, !tbaa !40
  %320 = load i32, ptr %38, align 8, !tbaa !34
  %321 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %302, i32 -1)
  %322 = extractvalue { i32, i1 } %321, 1, !nosanitize !58
  br i1 %322, label %323, label %324, !prof !59, !nosanitize !58

323:                                              ; preds = %456, %444, %354, %314
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

324:                                              ; preds = %314
  %325 = getelementptr inbounds nuw i8, ptr %317, i64 258
  %326 = load i32, ptr %39, align 8, !tbaa !71
  %327 = load i32, ptr %40, align 4, !tbaa !73
  %328 = extractvalue { i32, i1 } %321, 0, !nosanitize !58
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, ptr %317, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !8
  %332 = sext i32 %302 to i64
  %333 = getelementptr inbounds i8, ptr %317, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !8
  %335 = load i32, ptr %41, align 4, !tbaa !69
  %336 = icmp ult i32 %302, %335
  %337 = lshr i32 %327, 2
  %338 = select i1 %336, i32 %327, i32 %337
  %339 = tail call i32 @llvm.umin.i32(i32 %326, i32 %273)
  %340 = getelementptr inbounds nuw i8, ptr %317, i64 1
  %341 = ptrtoint ptr %325 to i64
  br label %342

342:                                              ; preds = %467, %324
  %343 = phi i32 [ %302, %324 ], [ %468, %467 ]
  %344 = phi i32 [ %338, %324 ], [ %477, %467 ]
  %345 = phi i32 [ %301, %324 ], [ %475, %467 ]
  %346 = phi i8 [ %331, %324 ], [ %469, %467 ]
  %347 = phi i8 [ %334, %324 ], [ %470, %467 ]
  %348 = zext nneg i32 %345 to i64
  %349 = getelementptr inbounds nuw i8, ptr %315, i64 %348
  %350 = sext i32 %343 to i64
  %351 = getelementptr inbounds i8, ptr %349, i64 %350
  %352 = load i8, ptr %351, align 1, !tbaa !8
  %353 = icmp eq i8 %352, %347
  br i1 %353, label %354, label %467

354:                                              ; preds = %342
  %355 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %343, i32 -1)
  %356 = extractvalue { i32, i1 } %355, 1, !nosanitize !58
  br i1 %356, label %323, label %357, !prof !59, !nosanitize !58

357:                                              ; preds = %354
  %358 = extractvalue { i32, i1 } %355, 0, !nosanitize !58
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, ptr %349, i64 %359
  %361 = load i8, ptr %360, align 1, !tbaa !8
  %362 = icmp eq i8 %361, %346
  br i1 %362, label %363, label %467

363:                                              ; preds = %357
  %364 = load i8, ptr %349, align 1, !tbaa !8
  %365 = load i8, ptr %317, align 1, !tbaa !8
  %366 = icmp eq i8 %364, %365
  br i1 %366, label %367, label %467

367:                                              ; preds = %363
  %368 = getelementptr inbounds nuw i8, ptr %349, i64 1
  %369 = load i8, ptr %368, align 1, !tbaa !8
  %370 = load i8, ptr %340, align 1, !tbaa !8
  %371 = icmp eq i8 %369, %370
  br i1 %371, label %372, label %467

372:                                              ; preds = %367
  %373 = getelementptr inbounds nuw i8, ptr %349, i64 2
  br label %374

374:                                              ; preds = %419, %372
  %375 = phi ptr [ %373, %372 ], [ %423, %419 ]
  %376 = phi i64 [ 2, %372 ], [ %420, %419 ]
  %377 = getelementptr inbounds nuw i8, ptr %317, i64 %376
  %378 = getelementptr inbounds nuw i8, ptr %377, i64 1
  %379 = load i8, ptr %378, align 1, !tbaa !8
  %380 = getelementptr inbounds nuw i8, ptr %375, i64 1
  %381 = load i8, ptr %380, align 1, !tbaa !8
  %382 = icmp eq i8 %379, %381
  br i1 %382, label %383, label %428

383:                                              ; preds = %374
  %384 = getelementptr inbounds nuw i8, ptr %377, i64 2
  %385 = load i8, ptr %384, align 1, !tbaa !8
  %386 = getelementptr inbounds nuw i8, ptr %375, i64 2
  %387 = load i8, ptr %386, align 1, !tbaa !8
  %388 = icmp eq i8 %385, %387
  br i1 %388, label %389, label %430

389:                                              ; preds = %383
  %390 = getelementptr inbounds nuw i8, ptr %377, i64 3
  %391 = load i8, ptr %390, align 1, !tbaa !8
  %392 = getelementptr inbounds nuw i8, ptr %375, i64 3
  %393 = load i8, ptr %392, align 1, !tbaa !8
  %394 = icmp eq i8 %391, %393
  br i1 %394, label %395, label %432

395:                                              ; preds = %389
  %396 = getelementptr inbounds nuw i8, ptr %377, i64 4
  %397 = load i8, ptr %396, align 1, !tbaa !8
  %398 = getelementptr inbounds nuw i8, ptr %375, i64 4
  %399 = load i8, ptr %398, align 1, !tbaa !8
  %400 = icmp eq i8 %397, %399
  br i1 %400, label %401, label %434

401:                                              ; preds = %395
  %402 = getelementptr inbounds nuw i8, ptr %377, i64 5
  %403 = load i8, ptr %402, align 1, !tbaa !8
  %404 = getelementptr inbounds nuw i8, ptr %375, i64 5
  %405 = load i8, ptr %404, align 1, !tbaa !8
  %406 = icmp eq i8 %403, %405
  br i1 %406, label %407, label %436

407:                                              ; preds = %401
  %408 = getelementptr inbounds nuw i8, ptr %377, i64 6
  %409 = load i8, ptr %408, align 1, !tbaa !8
  %410 = getelementptr inbounds nuw i8, ptr %375, i64 6
  %411 = load i8, ptr %410, align 1, !tbaa !8
  %412 = icmp eq i8 %409, %411
  br i1 %412, label %413, label %438

413:                                              ; preds = %407
  %414 = getelementptr inbounds nuw i8, ptr %377, i64 7
  %415 = load i8, ptr %414, align 1, !tbaa !8
  %416 = getelementptr inbounds nuw i8, ptr %375, i64 7
  %417 = load i8, ptr %416, align 1, !tbaa !8
  %418 = icmp eq i8 %415, %417
  br i1 %418, label %419, label %440

419:                                              ; preds = %413
  %420 = add nuw nsw i64 %376, 8
  %421 = getelementptr inbounds nuw i8, ptr %317, i64 %420
  %422 = load i8, ptr %421, align 1, !tbaa !8
  %423 = getelementptr inbounds nuw i8, ptr %375, i64 8
  %424 = load i8, ptr %423, align 1, !tbaa !8
  %425 = icmp eq i8 %422, %424
  %426 = icmp samesign ult i64 %376, 250
  %427 = select i1 %425, i1 %426, i1 false
  br i1 %427, label %374, label %442, !llvm.loop !125

428:                                              ; preds = %374
  %429 = getelementptr inbounds nuw i8, ptr %377, i64 1
  br label %444

430:                                              ; preds = %383
  %431 = getelementptr inbounds nuw i8, ptr %377, i64 2
  br label %444

432:                                              ; preds = %389
  %433 = getelementptr inbounds nuw i8, ptr %377, i64 3
  br label %444

434:                                              ; preds = %395
  %435 = getelementptr inbounds nuw i8, ptr %377, i64 4
  br label %444

436:                                              ; preds = %401
  %437 = getelementptr inbounds nuw i8, ptr %377, i64 5
  br label %444

438:                                              ; preds = %407
  %439 = getelementptr inbounds nuw i8, ptr %377, i64 6
  br label %444

440:                                              ; preds = %413
  %441 = getelementptr inbounds nuw i8, ptr %377, i64 7
  br label %444

442:                                              ; preds = %419
  %443 = getelementptr inbounds nuw i8, ptr %317, i64 %420
  br label %444

444:                                              ; preds = %442, %440, %438, %436, %434, %432, %430, %428
  %445 = phi ptr [ %431, %430 ], [ %433, %432 ], [ %429, %428 ], [ %441, %440 ], [ %439, %438 ], [ %437, %436 ], [ %435, %434 ], [ %443, %442 ]
  %446 = ptrtoint ptr %445 to i64
  %447 = sub i64 %341, %446
  %448 = trunc i64 %447 to i32
  %449 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 258, i32 %448), !nosanitize !58
  %450 = extractvalue { i32, i1 } %449, 0, !nosanitize !58
  %451 = extractvalue { i32, i1 } %449, 1, !nosanitize !58
  br i1 %451, label %323, label %452, !prof !59, !nosanitize !58

452:                                              ; preds = %444
  %453 = icmp sgt i32 %450, %343
  br i1 %453, label %454, label %467

454:                                              ; preds = %452
  store i32 %345, ptr %31, align 8, !tbaa !84
  %455 = icmp slt i32 %450, %339
  br i1 %455, label %456, label %480

456:                                              ; preds = %454
  %457 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %450, i32 -1)
  %458 = extractvalue { i32, i1 } %457, 1, !nosanitize !58
  br i1 %458, label %323, label %459, !prof !59, !nosanitize !58

459:                                              ; preds = %456
  %460 = extractvalue { i32, i1 } %457, 0, !nosanitize !58
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8, ptr %317, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !8
  %464 = sext i32 %450 to i64
  %465 = getelementptr inbounds i8, ptr %317, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !8
  br label %467

467:                                              ; preds = %459, %452, %367, %363, %357, %342
  %468 = phi i32 [ %343, %342 ], [ %343, %357 ], [ %343, %363 ], [ %343, %367 ], [ %450, %459 ], [ %343, %452 ]
  %469 = phi i8 [ %346, %342 ], [ %346, %357 ], [ %346, %363 ], [ %346, %367 ], [ %463, %459 ], [ %346, %452 ]
  %470 = phi i8 [ %347, %342 ], [ %347, %357 ], [ %347, %363 ], [ %347, %367 ], [ %466, %459 ], [ %347, %452 ]
  %471 = and i32 %345, %320
  %472 = zext nneg i32 %471 to i64
  %473 = getelementptr inbounds nuw [2 x i8], ptr %319, i64 %472
  %474 = load i16, ptr %473, align 2, !tbaa !63
  %475 = zext i16 %474 to i32
  %476 = icmp uge i32 %318, %475
  %477 = add i32 %344, -1
  %478 = icmp eq i32 %477, 0
  %479 = select i1 %476, i1 true, i1 %478
  br i1 %479, label %480, label %342, !llvm.loop !126

480:                                              ; preds = %467, %454
  %481 = phi i32 [ %450, %454 ], [ %468, %467 ]
  %482 = tail call i32 @llvm.umin.i32(i32 %481, i32 %273)
  store i32 %482, ptr %29, align 8, !tbaa !79
  %483 = icmp ult i32 %482, 6
  br i1 %483, label %484, label %494

484:                                              ; preds = %480
  %485 = load i32, ptr %42, align 8, !tbaa !51
  %486 = icmp eq i32 %485, 1
  br i1 %486, label %493, label %487

487:                                              ; preds = %484
  %488 = icmp eq i32 %482, 3
  br i1 %488, label %489, label %494

489:                                              ; preds = %487
  %490 = load i32, ptr %31, align 8, !tbaa !84
  %491 = sub i32 %309, %490
  %492 = icmp ugt i32 %491, 4096
  br i1 %492, label %493, label %494

493:                                              ; preds = %489, %484
  store i32 2, ptr %29, align 8, !tbaa !79
  br label %494

494:                                              ; preds = %493, %489, %487, %480, %308, %305, %300
  %495 = icmp ugt i32 %302, 2
  br i1 %495, label %496, label %646

496:                                              ; preds = %494
  %497 = load i32, ptr %29, align 8, !tbaa !79
  %498 = icmp ugt i32 %497, %302
  br i1 %498, label %646, label %499

499:                                              ; preds = %496
  %500 = load i32, ptr %43, align 4, !tbaa !74
  %501 = add i32 %273, -3
  %502 = add i32 %501, %500
  %503 = trunc i32 %302 to i8
  %504 = add i8 %503, -3
  %505 = xor i32 %303, -1
  %506 = add i32 %500, %505
  %507 = trunc i32 %506 to i16
  %508 = trunc i32 %506 to i8
  %509 = load ptr, ptr %44, align 8, !tbaa !48
  %510 = load i32, ptr %45, align 4, !tbaa !118
  %511 = add i32 %510, 1
  store i32 %511, ptr %45, align 4, !tbaa !118
  %512 = zext i32 %510 to i64
  %513 = getelementptr inbounds nuw i8, ptr %509, i64 %512
  store i8 %508, ptr %513, align 1, !tbaa !8
  %514 = lshr i32 %506, 8
  %515 = trunc i32 %514 to i8
  %516 = load ptr, ptr %44, align 8, !tbaa !48
  %517 = load i32, ptr %45, align 4, !tbaa !118
  %518 = add i32 %517, 1
  store i32 %518, ptr %45, align 4, !tbaa !118
  %519 = zext i32 %517 to i64
  %520 = getelementptr inbounds nuw i8, ptr %516, i64 %519
  store i8 %515, ptr %520, align 1, !tbaa !8
  %521 = load ptr, ptr %44, align 8, !tbaa !48
  %522 = load i32, ptr %45, align 4, !tbaa !118
  %523 = add i32 %522, 1
  store i32 %523, ptr %45, align 4, !tbaa !118
  %524 = zext i32 %522 to i64
  %525 = getelementptr inbounds nuw i8, ptr %521, i64 %524
  store i8 %504, ptr %525, align 1, !tbaa !8
  %526 = add i16 %507, -1
  %527 = zext i8 %504 to i64
  %528 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %527
  %529 = load i8, ptr %528, align 1, !tbaa !8
  %530 = zext i8 %529 to i64
  %531 = getelementptr [4 x i8], ptr %46, i64 %530
  %532 = load i16, ptr %531, align 4, !tbaa !8
  %533 = add i16 %532, 1
  store i16 %533, ptr %531, align 4, !tbaa !8
  %534 = icmp ult i16 %526, 256
  br i1 %534, label %535, label %538

535:                                              ; preds = %499
  %536 = zext nneg i16 %526 to i64
  %537 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %536
  br label %543

538:                                              ; preds = %499
  %539 = lshr i16 %526, 7
  %540 = zext nneg i16 %539 to i64
  %541 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %540
  %542 = getelementptr inbounds nuw i8, ptr %541, i64 256
  br label %543

543:                                              ; preds = %538, %535
  %544 = phi ptr [ %537, %535 ], [ %542, %538 ]
  %545 = load i8, ptr %544, align 1, !tbaa !8
  %546 = zext i8 %545 to i64
  %547 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %546
  %548 = load i16, ptr %547, align 4, !tbaa !8
  %549 = add i16 %548, 1
  store i16 %549, ptr %547, align 4, !tbaa !8
  %550 = load i32, ptr %45, align 4, !tbaa !118
  %551 = load i32, ptr %48, align 8, !tbaa !49
  %552 = load i32, ptr %30, align 8, !tbaa !78
  %553 = load i32, ptr %3, align 4, !tbaa !76
  %554 = sub i32 %553, %552
  %555 = add i32 %554, 1
  store i32 %555, ptr %3, align 4, !tbaa !76
  %556 = add i32 %552, -2
  store i32 %556, ptr %30, align 8, !tbaa !78
  %557 = load i32, ptr %43, align 4, !tbaa !74
  br label %558

558:                                              ; preds = %586, %543
  %559 = phi i32 [ %587, %586 ], [ %556, %543 ]
  %560 = phi i32 [ %561, %586 ], [ %557, %543 ]
  %561 = add i32 %560, 1
  store i32 %561, ptr %43, align 4, !tbaa !74
  %562 = icmp ugt i32 %561, %502
  br i1 %562, label %586, label %563

563:                                              ; preds = %558
  %564 = load i32, ptr %49, align 8, !tbaa !81
  %565 = load i32, ptr %50, align 8, !tbaa !38
  %566 = shl i32 %564, %565
  %567 = load ptr, ptr %51, align 8, !tbaa !39
  %568 = add i32 %560, 3
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds nuw i8, ptr %567, i64 %569
  %571 = load i8, ptr %570, align 1, !tbaa !8
  %572 = zext i8 %571 to i32
  %573 = xor i32 %566, %572
  %574 = load i32, ptr %52, align 4, !tbaa !37
  %575 = and i32 %573, %574
  store i32 %575, ptr %49, align 8, !tbaa !81
  %576 = load ptr, ptr %53, align 8, !tbaa !41
  %577 = zext i32 %575 to i64
  %578 = getelementptr inbounds nuw [2 x i8], ptr %576, i64 %577
  %579 = load i16, ptr %578, align 2, !tbaa !63
  %580 = load ptr, ptr %54, align 8, !tbaa !40
  %581 = load i32, ptr %55, align 8, !tbaa !34
  %582 = and i32 %581, %561
  %583 = zext i32 %582 to i64
  %584 = getelementptr inbounds nuw [2 x i8], ptr %580, i64 %583
  store i16 %579, ptr %584, align 2, !tbaa !63
  %585 = trunc i32 %561 to i16
  store i16 %585, ptr %578, align 2, !tbaa !63
  br label %586

586:                                              ; preds = %563, %558
  %587 = add i32 %559, -1
  store i32 %587, ptr %30, align 8, !tbaa !78
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %558, !llvm.loop !130

589:                                              ; preds = %586
  %590 = icmp eq i32 %550, %551
  store i32 0, ptr %56, align 8, !tbaa !80
  store i32 2, ptr %29, align 8, !tbaa !79
  %591 = add i32 %560, 2
  store i32 %591, ptr %43, align 4, !tbaa !74
  br i1 %590, label %593, label %592

592:                                              ; preds = %735, %726, %641, %589
  br label %68, !llvm.loop !131

593:                                              ; preds = %589
  %594 = load i64, ptr %57, align 8, !tbaa !75
  %595 = icmp sgt i64 %594, -1
  br i1 %595, label %596, label %600

596:                                              ; preds = %593
  %597 = load ptr, ptr %58, align 8, !tbaa !39
  %598 = and i64 %594, 4294967295
  %599 = getelementptr inbounds nuw i8, ptr %597, i64 %598
  br label %600

600:                                              ; preds = %596, %593
  %601 = phi ptr [ %599, %596 ], [ null, %593 ]
  %602 = zext i32 %591 to i64
  %603 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %602, i64 %594), !nosanitize !58
  %604 = extractvalue { i64, i1 } %603, 1, !nosanitize !58
  br i1 %604, label %605, label %606, !prof !59, !nosanitize !58

605:                                              ; preds = %840, %783, %685, %600
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !58
  unreachable, !nosanitize !58

606:                                              ; preds = %600
  %607 = extractvalue { i64, i1 } %603, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %601, i64 noundef %607, i32 noundef 0) #11
  %608 = load i32, ptr %43, align 4, !tbaa !74
  %609 = zext i32 %608 to i64
  store i64 %609, ptr %57, align 8, !tbaa !75
  %610 = load ptr, ptr %0, align 8, !tbaa !20
  %611 = getelementptr inbounds nuw i8, ptr %610, i64 56
  %612 = load ptr, ptr %611, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %612) #11
  %613 = getelementptr inbounds nuw i8, ptr %612, i64 40
  %614 = load i64, ptr %613, align 8, !tbaa !56
  %615 = getelementptr inbounds nuw i8, ptr %610, i64 32
  %616 = load i32, ptr %615, align 8, !tbaa !99
  %617 = zext i32 %616 to i64
  %618 = tail call i64 @llvm.umin.i64(i64 %614, i64 %617)
  %619 = icmp eq i64 %618, 0
  br i1 %619, label %641, label %620

620:                                              ; preds = %606
  %621 = trunc nuw i64 %618 to i32
  %622 = getelementptr inbounds nuw i8, ptr %610, i64 24
  %623 = load ptr, ptr %622, align 8, !tbaa !98
  %624 = getelementptr inbounds nuw i8, ptr %612, i64 32
  %625 = load ptr, ptr %624, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %623, ptr align 1 %625, i64 %618, i1 false)
  %626 = load ptr, ptr %622, align 8, !tbaa !98
  %627 = getelementptr inbounds nuw i8, ptr %626, i64 %618
  store ptr %627, ptr %622, align 8, !tbaa !98
  %628 = load ptr, ptr %624, align 8, !tbaa !57
  %629 = getelementptr inbounds nuw i8, ptr %628, i64 %618
  store ptr %629, ptr %624, align 8, !tbaa !57
  %630 = getelementptr inbounds nuw i8, ptr %610, i64 40
  %631 = load i64, ptr %630, align 8, !tbaa !100
  %632 = add i64 %631, %618
  store i64 %632, ptr %630, align 8, !tbaa !100
  %633 = load i32, ptr %615, align 8, !tbaa !99
  %634 = sub i32 %633, %621
  store i32 %634, ptr %615, align 8, !tbaa !99
  %635 = load i64, ptr %613, align 8, !tbaa !56
  %636 = sub i64 %635, %618
  store i64 %636, ptr %613, align 8, !tbaa !56
  %637 = icmp eq i64 %635, %618
  br i1 %637, label %638, label %641

638:                                              ; preds = %620
  %639 = getelementptr inbounds nuw i8, ptr %612, i64 16
  %640 = load ptr, ptr %639, align 8, !tbaa !44
  store ptr %640, ptr %624, align 8, !tbaa !57
  br label %641

641:                                              ; preds = %638, %620, %606
  %642 = load ptr, ptr %0, align 8, !tbaa !20
  %643 = getelementptr inbounds nuw i8, ptr %642, i64 32
  %644 = load i32, ptr %643, align 8, !tbaa !99
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %886, label %592

646:                                              ; preds = %496, %494
  %647 = load i32, ptr %59, align 8, !tbaa !80
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %735, label %649

649:                                              ; preds = %646
  %650 = load ptr, ptr %60, align 8, !tbaa !39
  %651 = load i32, ptr %61, align 4, !tbaa !74
  %652 = add i32 %651, -1
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds nuw i8, ptr %650, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !8
  %656 = load ptr, ptr %62, align 8, !tbaa !48
  %657 = load i32, ptr %63, align 4, !tbaa !118
  %658 = add i32 %657, 1
  store i32 %658, ptr %63, align 4, !tbaa !118
  %659 = zext i32 %657 to i64
  %660 = getelementptr inbounds nuw i8, ptr %656, i64 %659
  store i8 0, ptr %660, align 1, !tbaa !8
  %661 = load ptr, ptr %62, align 8, !tbaa !48
  %662 = load i32, ptr %63, align 4, !tbaa !118
  %663 = add i32 %662, 1
  store i32 %663, ptr %63, align 4, !tbaa !118
  %664 = zext i32 %662 to i64
  %665 = getelementptr inbounds nuw i8, ptr %661, i64 %664
  store i8 0, ptr %665, align 1, !tbaa !8
  %666 = load ptr, ptr %62, align 8, !tbaa !48
  %667 = load i32, ptr %63, align 4, !tbaa !118
  %668 = add i32 %667, 1
  store i32 %668, ptr %63, align 4, !tbaa !118
  %669 = zext i32 %667 to i64
  %670 = getelementptr inbounds nuw i8, ptr %666, i64 %669
  store i8 %655, ptr %670, align 1, !tbaa !8
  %671 = zext i8 %655 to i64
  %672 = getelementptr inbounds nuw [4 x i8], ptr %64, i64 %671
  %673 = load i16, ptr %672, align 4, !tbaa !8
  %674 = add i16 %673, 1
  store i16 %674, ptr %672, align 4, !tbaa !8
  %675 = load i32, ptr %63, align 4, !tbaa !118
  %676 = load i32, ptr %65, align 8, !tbaa !49
  %677 = icmp eq i32 %675, %676
  br i1 %677, label %678, label %726

678:                                              ; preds = %649
  %679 = load i64, ptr %66, align 8, !tbaa !75
  %680 = icmp sgt i64 %679, -1
  br i1 %680, label %681, label %685

681:                                              ; preds = %678
  %682 = load ptr, ptr %60, align 8, !tbaa !39
  %683 = and i64 %679, 4294967295
  %684 = getelementptr inbounds nuw i8, ptr %682, i64 %683
  br label %685

685:                                              ; preds = %681, %678
  %686 = phi ptr [ %684, %681 ], [ null, %678 ]
  %687 = load i32, ptr %61, align 4, !tbaa !74
  %688 = zext i32 %687 to i64
  %689 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %688, i64 %679), !nosanitize !58
  %690 = extractvalue { i64, i1 } %689, 1, !nosanitize !58
  br i1 %690, label %605, label %691, !prof !59, !nosanitize !58

691:                                              ; preds = %685
  %692 = extractvalue { i64, i1 } %689, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %686, i64 noundef %692, i32 noundef 0) #11
  %693 = load i32, ptr %61, align 4, !tbaa !74
  %694 = zext i32 %693 to i64
  store i64 %694, ptr %66, align 8, !tbaa !75
  %695 = load ptr, ptr %0, align 8, !tbaa !20
  %696 = getelementptr inbounds nuw i8, ptr %695, i64 56
  %697 = load ptr, ptr %696, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %697) #11
  %698 = getelementptr inbounds nuw i8, ptr %697, i64 40
  %699 = load i64, ptr %698, align 8, !tbaa !56
  %700 = getelementptr inbounds nuw i8, ptr %695, i64 32
  %701 = load i32, ptr %700, align 8, !tbaa !99
  %702 = zext i32 %701 to i64
  %703 = tail call i64 @llvm.umin.i64(i64 %699, i64 %702)
  %704 = icmp eq i64 %703, 0
  br i1 %704, label %726, label %705

705:                                              ; preds = %691
  %706 = trunc nuw i64 %703 to i32
  %707 = getelementptr inbounds nuw i8, ptr %695, i64 24
  %708 = load ptr, ptr %707, align 8, !tbaa !98
  %709 = getelementptr inbounds nuw i8, ptr %697, i64 32
  %710 = load ptr, ptr %709, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %708, ptr align 1 %710, i64 %703, i1 false)
  %711 = load ptr, ptr %707, align 8, !tbaa !98
  %712 = getelementptr inbounds nuw i8, ptr %711, i64 %703
  store ptr %712, ptr %707, align 8, !tbaa !98
  %713 = load ptr, ptr %709, align 8, !tbaa !57
  %714 = getelementptr inbounds nuw i8, ptr %713, i64 %703
  store ptr %714, ptr %709, align 8, !tbaa !57
  %715 = getelementptr inbounds nuw i8, ptr %695, i64 40
  %716 = load i64, ptr %715, align 8, !tbaa !100
  %717 = add i64 %716, %703
  store i64 %717, ptr %715, align 8, !tbaa !100
  %718 = load i32, ptr %700, align 8, !tbaa !99
  %719 = sub i32 %718, %706
  store i32 %719, ptr %700, align 8, !tbaa !99
  %720 = load i64, ptr %698, align 8, !tbaa !56
  %721 = sub i64 %720, %703
  store i64 %721, ptr %698, align 8, !tbaa !56
  %722 = icmp eq i64 %720, %703
  br i1 %722, label %723, label %726

723:                                              ; preds = %705
  %724 = getelementptr inbounds nuw i8, ptr %697, i64 16
  %725 = load ptr, ptr %724, align 8, !tbaa !44
  store ptr %725, ptr %709, align 8, !tbaa !57
  br label %726

726:                                              ; preds = %723, %705, %691, %649
  %727 = load i32, ptr %61, align 4, !tbaa !74
  %728 = add i32 %727, 1
  store i32 %728, ptr %61, align 4, !tbaa !74
  %729 = load i32, ptr %3, align 4, !tbaa !76
  %730 = add i32 %729, -1
  store i32 %730, ptr %3, align 4, !tbaa !76
  %731 = load ptr, ptr %0, align 8, !tbaa !20
  %732 = getelementptr inbounds nuw i8, ptr %731, i64 32
  %733 = load i32, ptr %732, align 8, !tbaa !99
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %886, label %592

735:                                              ; preds = %646
  store i32 1, ptr %59, align 8, !tbaa !80
  %736 = load i32, ptr %67, align 4, !tbaa !74
  %737 = add i32 %736, 1
  store i32 %737, ptr %67, align 4, !tbaa !74
  %738 = add i32 %273, -1
  store i32 %738, ptr %3, align 4, !tbaa !76
  br label %592

739:                                              ; preds = %270
  %740 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %741 = load i32, ptr %740, align 8, !tbaa !80
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %772, label %743

743:                                              ; preds = %739
  %744 = load ptr, ptr %7, align 8, !tbaa !39
  %745 = load i32, ptr %6, align 4, !tbaa !74
  %746 = add i32 %745, -1
  %747 = zext i32 %746 to i64
  %748 = getelementptr inbounds nuw i8, ptr %744, i64 %747
  %749 = load i8, ptr %748, align 1, !tbaa !8
  %750 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %751 = load ptr, ptr %750, align 8, !tbaa !48
  %752 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %753 = load i32, ptr %752, align 4, !tbaa !118
  %754 = add i32 %753, 1
  store i32 %754, ptr %752, align 4, !tbaa !118
  %755 = zext i32 %753 to i64
  %756 = getelementptr inbounds nuw i8, ptr %751, i64 %755
  store i8 0, ptr %756, align 1, !tbaa !8
  %757 = load ptr, ptr %750, align 8, !tbaa !48
  %758 = load i32, ptr %752, align 4, !tbaa !118
  %759 = add i32 %758, 1
  store i32 %759, ptr %752, align 4, !tbaa !118
  %760 = zext i32 %758 to i64
  %761 = getelementptr inbounds nuw i8, ptr %757, i64 %760
  store i8 0, ptr %761, align 1, !tbaa !8
  %762 = load ptr, ptr %750, align 8, !tbaa !48
  %763 = load i32, ptr %752, align 4, !tbaa !118
  %764 = add i32 %763, 1
  store i32 %764, ptr %752, align 4, !tbaa !118
  %765 = zext i32 %763 to i64
  %766 = getelementptr inbounds nuw i8, ptr %762, i64 %765
  store i8 %749, ptr %766, align 1, !tbaa !8
  %767 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %768 = zext i8 %749 to i64
  %769 = getelementptr inbounds nuw [4 x i8], ptr %767, i64 %768
  %770 = load i16, ptr %769, align 4, !tbaa !8
  %771 = add i16 %770, 1
  store i16 %771, ptr %769, align 4, !tbaa !8
  store i32 0, ptr %740, align 8, !tbaa !80
  br label %772

772:                                              ; preds = %743, %739
  %773 = load i32, ptr %6, align 4, !tbaa !74
  %774 = tail call i32 @llvm.umin.i32(i32 %773, i32 2)
  store i32 %774, ptr %10, align 4, !tbaa !77
  %775 = icmp eq i32 %1, 4
  br i1 %775, label %776, label %829

776:                                              ; preds = %772
  %777 = load i64, ptr %9, align 8, !tbaa !75
  %778 = icmp sgt i64 %777, -1
  br i1 %778, label %779, label %783

779:                                              ; preds = %776
  %780 = load ptr, ptr %7, align 8, !tbaa !39
  %781 = and i64 %777, 4294967295
  %782 = getelementptr inbounds nuw i8, ptr %780, i64 %781
  br label %783

783:                                              ; preds = %779, %776
  %784 = phi ptr [ %782, %779 ], [ null, %776 ]
  %785 = zext i32 %773 to i64
  %786 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %785, i64 %777), !nosanitize !58
  %787 = extractvalue { i64, i1 } %786, 1, !nosanitize !58
  br i1 %787, label %605, label %788, !prof !59, !nosanitize !58

788:                                              ; preds = %783
  %789 = extractvalue { i64, i1 } %786, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %784, i64 noundef %789, i32 noundef 1) #11
  %790 = load i32, ptr %6, align 4, !tbaa !74
  %791 = zext i32 %790 to i64
  store i64 %791, ptr %9, align 8, !tbaa !75
  %792 = load ptr, ptr %0, align 8, !tbaa !20
  %793 = getelementptr inbounds nuw i8, ptr %792, i64 56
  %794 = load ptr, ptr %793, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %794) #11
  %795 = getelementptr inbounds nuw i8, ptr %794, i64 40
  %796 = load i64, ptr %795, align 8, !tbaa !56
  %797 = getelementptr inbounds nuw i8, ptr %792, i64 32
  %798 = load i32, ptr %797, align 8, !tbaa !99
  %799 = zext i32 %798 to i64
  %800 = tail call i64 @llvm.umin.i64(i64 %796, i64 %799)
  %801 = icmp eq i64 %800, 0
  br i1 %801, label %823, label %802

802:                                              ; preds = %788
  %803 = trunc nuw i64 %800 to i32
  %804 = getelementptr inbounds nuw i8, ptr %792, i64 24
  %805 = load ptr, ptr %804, align 8, !tbaa !98
  %806 = getelementptr inbounds nuw i8, ptr %794, i64 32
  %807 = load ptr, ptr %806, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %805, ptr align 1 %807, i64 %800, i1 false)
  %808 = load ptr, ptr %804, align 8, !tbaa !98
  %809 = getelementptr inbounds nuw i8, ptr %808, i64 %800
  store ptr %809, ptr %804, align 8, !tbaa !98
  %810 = load ptr, ptr %806, align 8, !tbaa !57
  %811 = getelementptr inbounds nuw i8, ptr %810, i64 %800
  store ptr %811, ptr %806, align 8, !tbaa !57
  %812 = getelementptr inbounds nuw i8, ptr %792, i64 40
  %813 = load i64, ptr %812, align 8, !tbaa !100
  %814 = add i64 %813, %800
  store i64 %814, ptr %812, align 8, !tbaa !100
  %815 = load i32, ptr %797, align 8, !tbaa !99
  %816 = sub i32 %815, %803
  store i32 %816, ptr %797, align 8, !tbaa !99
  %817 = load i64, ptr %795, align 8, !tbaa !56
  %818 = sub i64 %817, %800
  store i64 %818, ptr %795, align 8, !tbaa !56
  %819 = icmp eq i64 %817, %800
  br i1 %819, label %820, label %823

820:                                              ; preds = %802
  %821 = getelementptr inbounds nuw i8, ptr %794, i64 16
  %822 = load ptr, ptr %821, align 8, !tbaa !44
  store ptr %822, ptr %806, align 8, !tbaa !57
  br label %823

823:                                              ; preds = %820, %802, %788
  %824 = load ptr, ptr %0, align 8, !tbaa !20
  %825 = getelementptr inbounds nuw i8, ptr %824, i64 32
  %826 = load i32, ptr %825, align 8, !tbaa !99
  %827 = icmp eq i32 %826, 0
  %828 = select i1 %827, i32 2, i32 3
  br label %886

829:                                              ; preds = %772
  %830 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %831 = load i32, ptr %830, align 4, !tbaa !118
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %885, label %833

833:                                              ; preds = %829
  %834 = load i64, ptr %9, align 8, !tbaa !75
  %835 = icmp sgt i64 %834, -1
  br i1 %835, label %836, label %840

836:                                              ; preds = %833
  %837 = load ptr, ptr %7, align 8, !tbaa !39
  %838 = and i64 %834, 4294967295
  %839 = getelementptr inbounds nuw i8, ptr %837, i64 %838
  br label %840

840:                                              ; preds = %836, %833
  %841 = phi ptr [ %839, %836 ], [ null, %833 ]
  %842 = zext i32 %773 to i64
  %843 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %842, i64 %834), !nosanitize !58
  %844 = extractvalue { i64, i1 } %843, 1, !nosanitize !58
  br i1 %844, label %605, label %845, !prof !59, !nosanitize !58

845:                                              ; preds = %840
  %846 = extractvalue { i64, i1 } %843, 0, !nosanitize !58
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %841, i64 noundef %846, i32 noundef 0) #11
  %847 = load i32, ptr %6, align 4, !tbaa !74
  %848 = zext i32 %847 to i64
  store i64 %848, ptr %9, align 8, !tbaa !75
  %849 = load ptr, ptr %0, align 8, !tbaa !20
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 56
  %851 = load ptr, ptr %850, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %851) #11
  %852 = getelementptr inbounds nuw i8, ptr %851, i64 40
  %853 = load i64, ptr %852, align 8, !tbaa !56
  %854 = getelementptr inbounds nuw i8, ptr %849, i64 32
  %855 = load i32, ptr %854, align 8, !tbaa !99
  %856 = zext i32 %855 to i64
  %857 = tail call i64 @llvm.umin.i64(i64 %853, i64 %856)
  %858 = icmp eq i64 %857, 0
  br i1 %858, label %880, label %859

859:                                              ; preds = %845
  %860 = trunc nuw i64 %857 to i32
  %861 = getelementptr inbounds nuw i8, ptr %849, i64 24
  %862 = load ptr, ptr %861, align 8, !tbaa !98
  %863 = getelementptr inbounds nuw i8, ptr %851, i64 32
  %864 = load ptr, ptr %863, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %862, ptr align 1 %864, i64 %857, i1 false)
  %865 = load ptr, ptr %861, align 8, !tbaa !98
  %866 = getelementptr inbounds nuw i8, ptr %865, i64 %857
  store ptr %866, ptr %861, align 8, !tbaa !98
  %867 = load ptr, ptr %863, align 8, !tbaa !57
  %868 = getelementptr inbounds nuw i8, ptr %867, i64 %857
  store ptr %868, ptr %863, align 8, !tbaa !57
  %869 = getelementptr inbounds nuw i8, ptr %849, i64 40
  %870 = load i64, ptr %869, align 8, !tbaa !100
  %871 = add i64 %870, %857
  store i64 %871, ptr %869, align 8, !tbaa !100
  %872 = load i32, ptr %854, align 8, !tbaa !99
  %873 = sub i32 %872, %860
  store i32 %873, ptr %854, align 8, !tbaa !99
  %874 = load i64, ptr %852, align 8, !tbaa !56
  %875 = sub i64 %874, %857
  store i64 %875, ptr %852, align 8, !tbaa !56
  %876 = icmp eq i64 %874, %857
  br i1 %876, label %877, label %880

877:                                              ; preds = %859
  %878 = getelementptr inbounds nuw i8, ptr %851, i64 16
  %879 = load ptr, ptr %878, align 8, !tbaa !44
  store ptr %879, ptr %863, align 8, !tbaa !57
  br label %880

880:                                              ; preds = %877, %859, %845
  %881 = load ptr, ptr %0, align 8, !tbaa !20
  %882 = getelementptr inbounds nuw i8, ptr %881, i64 32
  %883 = load i32, ptr %882, align 8, !tbaa !99
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %886, label %885

885:                                              ; preds = %880, %829
  br label %886

886:                                              ; preds = %885, %880, %823, %726, %641, %266
  %887 = phi i32 [ 0, %880 ], [ %828, %823 ], [ 1, %885 ], [ 0, %266 ], [ 0, %641 ], [ 0, %726 ]
  ret i32 %887
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
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
!49 = !{!21, !5, i64 5904}
!50 = !{!21, !5, i64 196}
!51 = !{!21, !5, i64 200}
!52 = !{!21, !6, i64 72}
!53 = !{ptr @deflateEnd}
!54 = !{!10, !13, i64 16}
!55 = !{!10, !5, i64 88}
!56 = !{!21, !13, i64 40}
!57 = !{!21, !11, i64 32}
!58 = !{}
!59 = !{!"branch_weights", i32 1, i32 1048575}
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
!91 = distinct !{!91, !86, !87}
!92 = distinct !{!92, !86, !87}
!93 = !{!21, !5, i64 5940}
!94 = !{!21, !5, i64 5944}
!95 = !{!21, !28, i64 5936}
!96 = distinct !{!96, !86, !87}
!97 = !{!66, !12, i64 8}
!98 = !{!10, !11, i64 24}
!99 = !{!10, !5, i64 32}
!100 = !{!10, !13, i64 40}
!101 = !{!"branch_weights", i32 1048575, i32 1}
!102 = !{!103, !5, i64 68}
!103 = !{!"gz_header_s", !5, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !5, i64 32, !5, i64 36, !11, i64 40, !5, i64 48, !11, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!104 = !{!103, !5, i64 0}
!105 = !{!103, !11, i64 24}
!106 = !{!103, !11, i64 40}
!107 = !{!103, !11, i64 56}
!108 = !{!103, !13, i64 8}
!109 = !{!103, !5, i64 20}
!110 = !{!103, !5, i64 32}
!111 = !{!21, !13, i64 64}
!112 = distinct !{!112, !86, !87}
!113 = distinct !{!113, !86, !87}
!114 = distinct !{!114, !86, !87}
!115 = !{ptr @deflate}
!116 = !{!21, !5, i64 5928}
!117 = distinct !{!117, !86, !87}
!118 = !{!21, !5, i64 5900}
!119 = distinct !{!119, !87}
!120 = distinct !{!120, !86, !87}
!121 = distinct !{!121, !87}
!122 = !{!21, !26, i64 2904}
!123 = !{!21, !26, i64 2928}
!124 = !{!21, !26, i64 2952}
!125 = distinct !{!125, !86, !87}
!126 = distinct !{!126, !86, !87}
!127 = distinct !{!127, !86, !87}
!128 = distinct !{!128, !87}
!129 = !{!21, !5, i64 164}
!130 = distinct !{!130, !86, !87}
!131 = distinct !{!131, !87}
