; ModuleID = 'evaluation/zlib/deflate_integer_unsigned_O1.ll'
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
  %33 = tail call ptr %30(ptr noundef %32, i32 noundef 1, i32 noundef 5968) #11, !inline_history !18
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
  br label %149

131:                                              ; preds = %76
  %132 = getelementptr inbounds nuw i8, ptr %65, i64 %68
  %133 = getelementptr inbounds nuw i8, ptr %33, i64 5888
  store ptr %132, ptr %133, align 8, !tbaa !48
  %134 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 1), !nosanitize !49
  %135 = extractvalue { i32, i1 } %134, 1, !nosanitize !49
  br i1 %135, label %136, label %137, !prof !50, !nosanitize !49

136:                                              ; preds = %131
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

137:                                              ; preds = %131
  %138 = extractvalue { i32, i1 } %134, 0, !nosanitize !49
  %139 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %138, i32 3), !nosanitize !49
  %140 = extractvalue { i32, i1 } %139, 1, !nosanitize !49
  br i1 %140, label %141, label %142, !prof !50, !nosanitize !49

141:                                              ; preds = %137
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !49
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
  %63 = tail call ptr %60(ptr noundef %62, i32 noundef 1, i32 noundef 5968) #11
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
  tail call void %125(ptr noundef %141, ptr noundef nonnull %138) #11, !inline_history !55
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
  tail call void %148(ptr noundef %149, ptr noundef nonnull %145) #11, !inline_history !55
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
  tail call void %156(ptr noundef %157, ptr noundef nonnull %153) #11, !inline_history !55
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
  tail call void %164(ptr noundef %165, ptr noundef nonnull %161) #11, !inline_history !55
  br label %166

166:                                              ; preds = %163, %158
  %167 = load ptr, ptr %25, align 8, !tbaa !17
  %168 = load ptr, ptr %61, align 8, !tbaa !16
  %169 = load ptr, ptr %67, align 8, !tbaa !19
  tail call void %167(ptr noundef %168, ptr noundef %169) #11, !inline_history !55
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

176:                                              ; preds = %170
  %177 = extractvalue { i32, i1 } %173, 0, !nosanitize !49
  %178 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %177, i32 3), !nosanitize !49
  %179 = extractvalue { i32, i1 } %178, 1, !nosanitize !49
  br i1 %179, label %180, label %181, !prof !50, !nosanitize !49

180:                                              ; preds = %176
  tail call void @llvm.ubsantrap(i8 12) #12, !nosanitize !49
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #3

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.ubsantrap(i8 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
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
  %39 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %42

40:                                               ; preds = %34
  %41 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %43, ptr %44, align 8, !tbaa !60
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 -2, ptr %45, align 4, !tbaa !61
  tail call void @_tr_init(ptr noundef nonnull %13) #11
  br label %46

46:                                               ; preds = %42, %18, %15, %11, %7, %3, %1
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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

24:                                               ; preds = %23, %20, %17, %13, %9, %5, %3
  %25 = phi i1 [ false, %23 ], [ true, %3 ], [ true, %9 ], [ true, %5 ], [ true, %20 ], [ true, %17 ], [ true, %13 ]
  %26 = icmp eq ptr %1, null
  %27 = or i1 %26, %25
  br i1 %27, label %714, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 48
  %32 = load i32, ptr %31, align 8, !tbaa !30
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %714, label %34

34:                                               ; preds = %28
  %35 = icmp eq i32 %32, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %38 = load i32, ptr %37, align 8, !tbaa !29
  %39 = icmp eq i32 %38, 42
  br i1 %39, label %40, label %714

40:                                               ; preds = %36, %34
  %41 = getelementptr inbounds nuw i8, ptr %30, i64 180
  %42 = load i32, ptr %41, align 4, !tbaa !76
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %714

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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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

103:                                              ; preds = %328, %81
  %104 = load i64, ptr %88, align 8, !tbaa !62
  %105 = load i32, ptr %41, align 4, !tbaa !76
  %106 = zext i32 %105 to i64
  %107 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %104, i64 %106), !nosanitize !49
  %108 = extractvalue { i64, i1 } %107, 1, !nosanitize !49
  br i1 %108, label %109, label %110, !prof !50, !nosanitize !49

109:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

110:                                              ; preds = %103
  %111 = extractvalue { i64, i1 } %107, 0, !nosanitize !49
  %112 = load i32, ptr %89, align 4, !tbaa !74
  %113 = zext i32 %112 to i64
  %114 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %111, i64 %113), !nosanitize !49
  %115 = extractvalue { i64, i1 } %114, 1, !nosanitize !49
  br i1 %115, label %116, label %117, !prof !50, !nosanitize !49

116:                                              ; preds = %110
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

117:                                              ; preds = %110
  %118 = extractvalue { i64, i1 } %114, 0, !nosanitize !49
  %119 = trunc i64 %118 to i32
  %120 = load i32, ptr %50, align 8, !tbaa !33
  %121 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %120, i32 262), !nosanitize !49
  %122 = extractvalue { i32, i1 } %121, 1, !nosanitize !49
  br i1 %122, label %123, label %124, !prof !50, !nosanitize !49

123:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

124:                                              ; preds = %117
  %125 = extractvalue { i32, i1 } %121, 0, !nosanitize !49
  %126 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %87, i32 %125), !nosanitize !49
  %127 = extractvalue { i32, i1 } %126, 1, !nosanitize !49
  br i1 %127, label %128, label %129, !prof !50, !nosanitize !49

128:                                              ; preds = %124
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

145:                                              ; preds = %136
  %146 = extractvalue { i32, i1 } %142, 0, !nosanitize !49
  store i32 %146, ptr %92, align 8, !tbaa !84
  %147 = load i32, ptr %89, align 4, !tbaa !74
  %148 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %147, i32 %87), !nosanitize !49
  %149 = extractvalue { i32, i1 } %148, 1, !nosanitize !49
  br i1 %149, label %150, label %151, !prof !50, !nosanitize !49

150:                                              ; preds = %145
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  br i1 %205, label %333, label %206

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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  %231 = tail call i64 @adler32(i64 noundef %230, ptr noundef %213, i32 noundef %214) #11
  store i64 %231, ptr %229, align 8, !tbaa !60
  br label %236

232:                                              ; preds = %220
  %233 = getelementptr inbounds nuw i8, ptr %202, i64 96
  %234 = load i64, ptr %233, align 8, !tbaa !60
  %235 = tail call i64 @crc32(i64 noundef %234, ptr noundef %213, i32 noundef %214) #11
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

252:                                              ; preds = %246
  %253 = extractvalue { i32, i1 } %249, 0, !nosanitize !49
  store i32 %253, ptr %41, align 4, !tbaa !76
  %254 = load i32, ptr %94, align 4, !tbaa !77
  %255 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %253, i32 %254), !nosanitize !49
  %256 = extractvalue { i32, i1 } %255, 1, !nosanitize !49
  br i1 %256, label %257, label %258, !prof !50, !nosanitize !49

257:                                              ; preds = %252
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

258:                                              ; preds = %252
  %259 = extractvalue { i32, i1 } %255, 0, !nosanitize !49
  %260 = icmp ugt i32 %259, 2
  br i1 %260, label %261, label %326

261:                                              ; preds = %258
  %262 = load i32, ptr %89, align 4, !tbaa !74
  %263 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %262, i32 %254), !nosanitize !49
  %264 = extractvalue { i32, i1 } %263, 0, !nosanitize !49
  %265 = extractvalue { i32, i1 } %263, 1, !nosanitize !49
  br i1 %265, label %266, label %267, !prof !50, !nosanitize !49

266:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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

287:                                              ; preds = %323, %276
  %288 = phi i32 [ %254, %276 ], [ %319, %323 ]
  %289 = phi i32 [ %264, %276 ], [ %318, %323 ]
  %290 = icmp eq i32 %288, 0
  br i1 %290, label %326, label %291

291:                                              ; preds = %287
  %292 = load i32, ptr %99, align 8, !tbaa !81
  %293 = shl i32 %292, %278
  %294 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %289, i32 3), !nosanitize !49
  %295 = extractvalue { i32, i1 } %294, 1, !nosanitize !49
  br i1 %295, label %296, label %297, !prof !50, !nosanitize !49

296:                                              ; preds = %291
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

297:                                              ; preds = %291
  %298 = extractvalue { i32, i1 } %294, 0, !nosanitize !49
  %299 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %298, i32 1), !nosanitize !49
  %300 = extractvalue { i32, i1 } %299, 0, !nosanitize !49
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds nuw i8, ptr %268, i64 %301
  %303 = load i8, ptr %302, align 1, !tbaa !8
  %304 = zext i8 %303 to i32
  %305 = xor i32 %293, %304
  %306 = and i32 %305, %285
  store i32 %306, ptr %99, align 8, !tbaa !81
  %307 = load ptr, ptr %96, align 8, !tbaa !41
  %308 = zext i32 %306 to i64
  %309 = getelementptr inbounds nuw [2 x i8], ptr %307, i64 %308
  %310 = load i16, ptr %309, align 2, !tbaa !63
  %311 = load ptr, ptr %97, align 8, !tbaa !40
  %312 = load i32, ptr %102, align 8, !tbaa !34
  %313 = and i32 %312, %289
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds nuw [2 x i8], ptr %311, i64 %314
  store i16 %310, ptr %315, align 2, !tbaa !63
  %316 = trunc i32 %289 to i16
  store i16 %316, ptr %309, align 2, !tbaa !63
  %317 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %289, i32 1), !nosanitize !49
  %318 = extractvalue { i32, i1 } %317, 0, !nosanitize !49
  %319 = add i32 %288, -1
  store i32 %319, ptr %94, align 4, !tbaa !77
  %320 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %253, i32 %319), !nosanitize !49
  %321 = extractvalue { i32, i1 } %320, 1, !nosanitize !49
  br i1 %321, label %322, label %323, !prof !50, !nosanitize !49

322:                                              ; preds = %297
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

323:                                              ; preds = %297
  %324 = extractvalue { i32, i1 } %320, 0, !nosanitize !49
  %325 = icmp ult i32 %324, 3
  br i1 %325, label %326, label %287, !llvm.loop !89

326:                                              ; preds = %323, %287, %258
  %327 = icmp ult i32 %253, 262
  br i1 %327, label %328, label %333

328:                                              ; preds = %326
  %329 = load ptr, ptr %30, align 8, !tbaa !20
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 8
  %331 = load i32, ptr %330, align 8, !tbaa !82
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %103, !llvm.loop !90

333:                                              ; preds = %328, %326, %200
  %334 = getelementptr inbounds nuw i8, ptr %30, i64 5952
  %335 = load i64, ptr %334, align 8, !tbaa !42
  %336 = load i64, ptr %88, align 8, !tbaa !62
  %337 = icmp ult i64 %335, %336
  br i1 %337, label %338, label %374

338:                                              ; preds = %333
  %339 = load i32, ptr %89, align 4, !tbaa !74
  %340 = zext i32 %339 to i64
  %341 = load i32, ptr %41, align 4, !tbaa !76
  %342 = zext i32 %341 to i64
  %343 = add nuw nsw i64 %342, %340
  %344 = icmp ult i64 %335, %343
  br i1 %344, label %345, label %355

345:                                              ; preds = %338
  %346 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %336, i64 %343), !nosanitize !49
  %347 = extractvalue { i64, i1 } %346, 1, !nosanitize !49
  br i1 %347, label %348, label %349, !prof !50, !nosanitize !49

348:                                              ; preds = %345
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

349:                                              ; preds = %345
  %350 = extractvalue { i64, i1 } %346, 0, !nosanitize !49
  %351 = tail call i64 @llvm.umin.i64(i64 %350, i64 258)
  %352 = load ptr, ptr %91, align 8, !tbaa !39
  %353 = getelementptr inbounds nuw i8, ptr %352, i64 %343
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %353, i8 0, i64 %351, i1 false)
  %354 = add nuw nsw i64 %351, %343
  br label %372

355:                                              ; preds = %338
  %356 = add nuw nsw i64 %343, 258
  %357 = icmp ult i64 %335, %356
  br i1 %357, label %358, label %374

358:                                              ; preds = %355
  %359 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %336, i64 %335), !nosanitize !49
  %360 = sub nuw nsw i64 %356, %335
  %361 = extractvalue { i64, i1 } %359, 0, !nosanitize !49
  %362 = tail call i64 @llvm.umin.i64(i64 %360, i64 %361)
  %363 = load ptr, ptr %91, align 8, !tbaa !39
  %364 = getelementptr inbounds nuw i8, ptr %363, i64 %335
  %365 = and i64 %362, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %364, i8 0, i64 %365, i1 false)
  %366 = load i64, ptr %334, align 8, !tbaa !42
  %367 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %366, i64 %362), !nosanitize !49
  %368 = extractvalue { i64, i1 } %367, 1, !nosanitize !49
  br i1 %368, label %369, label %370, !prof !50, !nosanitize !49

369:                                              ; preds = %358
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

370:                                              ; preds = %358
  %371 = extractvalue { i64, i1 } %367, 0, !nosanitize !49
  br label %372

372:                                              ; preds = %370, %349
  %373 = phi i64 [ %354, %349 ], [ %371, %370 ]
  store i64 %373, ptr %334, align 8, !tbaa !42
  br label %374

374:                                              ; preds = %372, %355, %333
  %375 = load i32, ptr %41, align 4, !tbaa !76
  %376 = icmp ugt i32 %375, 2
  br i1 %376, label %377, label %702

377:                                              ; preds = %699, %374
  %378 = phi i32 [ %700, %699 ], [ %375, %374 ]
  %379 = add i32 %378, -2
  %380 = load i32, ptr %89, align 4, !tbaa !74
  %381 = load i32, ptr %100, align 8, !tbaa !38
  %382 = load ptr, ptr %91, align 8, !tbaa !39
  %383 = load i32, ptr %99, align 8, !tbaa !81
  %384 = tail call i32 @llvm.usub.sat.i32(i32 -3, i32 %380)
  %385 = xor i32 %380, -1
  %386 = tail call i32 @llvm.umin.i32(i32 %384, i32 %385)
  %387 = add i32 %378, -3
  %388 = tail call i32 @llvm.umin.i32(i32 %386, i32 %387)
  %389 = sub i32 -3, %380
  %390 = tail call i32 @llvm.umin.i32(i32 %388, i32 %389)
  %391 = icmp eq i32 %384, %390
  %392 = icmp ugt i32 %389, %388
  %393 = icmp eq i32 %390, %385
  br label %394

394:                                              ; preds = %422, %377
  %395 = phi i32 [ %383, %377 ], [ %410, %422 ]
  %396 = phi i32 [ %380, %377 ], [ %423, %422 ]
  %397 = phi i32 [ %379, %377 ], [ %424, %422 ]
  %398 = shl i32 %395, %381
  br i1 %391, label %399, label %400, !prof !50, !nosanitize !49

399:                                              ; preds = %394
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

400:                                              ; preds = %394
  br i1 %392, label %402, label %401, !prof !91, !nosanitize !49

401:                                              ; preds = %400
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

402:                                              ; preds = %400
  %403 = add i32 %396, 2
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds nuw i8, ptr %382, i64 %404
  %406 = load i8, ptr %405, align 1, !tbaa !8
  %407 = zext i8 %406 to i32
  %408 = xor i32 %398, %407
  %409 = load i32, ptr %101, align 4, !tbaa !37
  %410 = and i32 %408, %409
  store i32 %410, ptr %99, align 8, !tbaa !81
  %411 = load ptr, ptr %96, align 8, !tbaa !41
  %412 = zext i32 %410 to i64
  %413 = getelementptr inbounds nuw [2 x i8], ptr %411, i64 %412
  %414 = load i16, ptr %413, align 2, !tbaa !63
  %415 = load ptr, ptr %97, align 8, !tbaa !40
  %416 = load i32, ptr %102, align 8, !tbaa !34
  %417 = and i32 %416, %396
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds nuw [2 x i8], ptr %415, i64 %418
  store i16 %414, ptr %419, align 2, !tbaa !63
  %420 = trunc i32 %396 to i16
  store i16 %420, ptr %413, align 2, !tbaa !63
  br i1 %393, label %421, label %422, !prof !50, !nosanitize !49

421:                                              ; preds = %402
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

422:                                              ; preds = %402
  %423 = add i32 %396, 1
  %424 = add i32 %397, -1
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %394, !llvm.loop !92

426:                                              ; preds = %422
  store i32 %423, ptr %89, align 4, !tbaa !74
  store i32 2, ptr %41, align 4, !tbaa !76
  %427 = load i32, ptr %50, align 8, !tbaa !33
  %428 = zext i32 %427 to i64
  br label %429

429:                                              ; preds = %654, %426
  %430 = load i64, ptr %88, align 8, !tbaa !62
  %431 = load i32, ptr %41, align 4, !tbaa !76
  %432 = zext i32 %431 to i64
  %433 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %430, i64 %432), !nosanitize !49
  %434 = extractvalue { i64, i1 } %433, 1, !nosanitize !49
  br i1 %434, label %435, label %436, !prof !50, !nosanitize !49

435:                                              ; preds = %429
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

436:                                              ; preds = %429
  %437 = extractvalue { i64, i1 } %433, 0, !nosanitize !49
  %438 = load i32, ptr %89, align 4, !tbaa !74
  %439 = zext i32 %438 to i64
  %440 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %437, i64 %439), !nosanitize !49
  %441 = extractvalue { i64, i1 } %440, 1, !nosanitize !49
  br i1 %441, label %442, label %443, !prof !50, !nosanitize !49

442:                                              ; preds = %436
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

443:                                              ; preds = %436
  %444 = extractvalue { i64, i1 } %440, 0, !nosanitize !49
  %445 = trunc i64 %444 to i32
  %446 = load i32, ptr %50, align 8, !tbaa !33
  %447 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %446, i32 262), !nosanitize !49
  %448 = extractvalue { i32, i1 } %447, 1, !nosanitize !49
  br i1 %448, label %449, label %450, !prof !50, !nosanitize !49

449:                                              ; preds = %443
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

450:                                              ; preds = %443
  %451 = extractvalue { i32, i1 } %447, 0, !nosanitize !49
  %452 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %427, i32 %451), !nosanitize !49
  %453 = extractvalue { i32, i1 } %452, 1, !nosanitize !49
  br i1 %453, label %454, label %455, !prof !50, !nosanitize !49

454:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

455:                                              ; preds = %450
  %456 = extractvalue { i32, i1 } %452, 0, !nosanitize !49
  %457 = icmp ult i32 %438, %456
  br i1 %457, label %526, label %458

458:                                              ; preds = %455
  %459 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %427, i32 %445), !nosanitize !49
  %460 = extractvalue { i32, i1 } %459, 1, !nosanitize !49
  br i1 %460, label %461, label %462, !prof !50, !nosanitize !49

461:                                              ; preds = %458
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

462:                                              ; preds = %458
  %463 = extractvalue { i32, i1 } %459, 0, !nosanitize !49
  %464 = load ptr, ptr %91, align 8, !tbaa !39
  %465 = getelementptr inbounds nuw i8, ptr %464, i64 %428
  %466 = zext i32 %463 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %464, ptr align 1 %465, i64 %466, i1 false)
  %467 = load i32, ptr %92, align 8, !tbaa !84
  %468 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %467, i32 %427), !nosanitize !49
  %469 = extractvalue { i32, i1 } %468, 1, !nosanitize !49
  br i1 %469, label %470, label %471, !prof !50, !nosanitize !49

470:                                              ; preds = %462
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

471:                                              ; preds = %462
  %472 = extractvalue { i32, i1 } %468, 0, !nosanitize !49
  store i32 %472, ptr %92, align 8, !tbaa !84
  %473 = load i32, ptr %89, align 4, !tbaa !74
  %474 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %473, i32 %427), !nosanitize !49
  %475 = extractvalue { i32, i1 } %474, 1, !nosanitize !49
  br i1 %475, label %476, label %477, !prof !50, !nosanitize !49

476:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

477:                                              ; preds = %471
  %478 = extractvalue { i32, i1 } %474, 0, !nosanitize !49
  store i32 %478, ptr %89, align 4, !tbaa !74
  %479 = load i64, ptr %93, align 8, !tbaa !75
  %480 = sub nsw i64 %479, %428
  store i64 %480, ptr %93, align 8, !tbaa !75
  %481 = load i32, ptr %94, align 4, !tbaa !77
  %482 = icmp ugt i32 %481, %478
  br i1 %482, label %483, label %484

483:                                              ; preds = %477
  store i32 %478, ptr %94, align 4, !tbaa !77
  br label %484

484:                                              ; preds = %483, %477
  %485 = load i32, ptr %50, align 8, !tbaa !33
  %486 = load i32, ptr %95, align 4, !tbaa !36
  %487 = load ptr, ptr %96, align 8, !tbaa !41
  %488 = zext i32 %486 to i64
  %489 = getelementptr inbounds nuw [2 x i8], ptr %487, i64 %488
  %490 = icmp eq i32 %486, 0
  br label %491

491:                                              ; preds = %500, %484
  %492 = phi ptr [ %489, %484 ], [ %494, %500 ]
  %493 = phi i32 [ %486, %484 ], [ %501, %500 ]
  %494 = getelementptr inbounds i8, ptr %492, i64 -2
  %495 = load i16, ptr %494, align 2, !tbaa !63
  %496 = zext i16 %495 to i32
  %497 = tail call i32 @llvm.usub.sat.i32(i32 %496, i32 %485)
  %498 = trunc nuw i32 %497 to i16
  store i16 %498, ptr %494, align 2, !tbaa !63
  br i1 %490, label %499, label %500, !prof !50, !nosanitize !49

499:                                              ; preds = %491
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

500:                                              ; preds = %491
  %501 = add i32 %493, -1
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %491, !llvm.loop !85

503:                                              ; preds = %500
  %504 = load ptr, ptr %97, align 8, !tbaa !40
  %505 = zext i32 %485 to i64
  %506 = getelementptr inbounds nuw [2 x i8], ptr %504, i64 %505
  %507 = icmp eq i32 %485, 0
  br label %508

508:                                              ; preds = %517, %503
  %509 = phi ptr [ %506, %503 ], [ %511, %517 ]
  %510 = phi i32 [ %485, %503 ], [ %518, %517 ]
  %511 = getelementptr inbounds i8, ptr %509, i64 -2
  %512 = load i16, ptr %511, align 2, !tbaa !63
  %513 = zext i16 %512 to i32
  %514 = tail call i32 @llvm.usub.sat.i32(i32 %513, i32 %485)
  %515 = trunc nuw i32 %514 to i16
  store i16 %515, ptr %511, align 2, !tbaa !63
  br i1 %507, label %516, label %517, !prof !50, !nosanitize !49

516:                                              ; preds = %508
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

517:                                              ; preds = %508
  %518 = add i32 %510, -1
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %508, !llvm.loop !88

520:                                              ; preds = %517
  store i32 1, ptr %98, align 8, !tbaa !64
  %521 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %445, i32 %427), !nosanitize !49
  %522 = extractvalue { i32, i1 } %521, 1, !nosanitize !49
  br i1 %522, label %523, label %524, !prof !50, !nosanitize !49

523:                                              ; preds = %520
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

524:                                              ; preds = %520
  %525 = extractvalue { i32, i1 } %521, 0, !nosanitize !49
  br label %526

526:                                              ; preds = %524, %455
  %527 = phi i32 [ %525, %524 ], [ %445, %455 ]
  %528 = load ptr, ptr %30, align 8, !tbaa !20
  %529 = getelementptr inbounds nuw i8, ptr %528, i64 8
  %530 = load i32, ptr %529, align 8, !tbaa !82
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %659, label %532

532:                                              ; preds = %526
  %533 = load ptr, ptr %91, align 8, !tbaa !39
  %534 = load i32, ptr %89, align 4, !tbaa !74
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds nuw i8, ptr %533, i64 %535
  %537 = load i32, ptr %41, align 4, !tbaa !76
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds nuw i8, ptr %536, i64 %538
  %540 = tail call i32 @llvm.umin.i32(i32 %530, i32 %527)
  %541 = icmp eq i32 %527, 0
  br i1 %541, label %572, label %542

542:                                              ; preds = %532
  %543 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %530, i32 %540), !nosanitize !49
  %544 = extractvalue { i32, i1 } %543, 1, !nosanitize !49
  br i1 %544, label %545, label %546, !prof !50, !nosanitize !49

545:                                              ; preds = %542
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

546:                                              ; preds = %542
  %547 = extractvalue { i32, i1 } %543, 0, !nosanitize !49
  store i32 %547, ptr %529, align 8, !tbaa !82
  %548 = load ptr, ptr %528, align 8, !tbaa !83
  %549 = zext i32 %540 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %539, ptr align 1 %548, i64 %549, i1 false)
  %550 = getelementptr inbounds nuw i8, ptr %528, i64 56
  %551 = load ptr, ptr %550, align 8, !tbaa !19
  %552 = getelementptr inbounds nuw i8, ptr %551, i64 48
  %553 = load i32, ptr %552, align 8, !tbaa !30
  switch i32 %553, label %562 [
    i32 1, label %554
    i32 2, label %558
  ]

554:                                              ; preds = %546
  %555 = getelementptr inbounds nuw i8, ptr %528, i64 96
  %556 = load i64, ptr %555, align 8, !tbaa !60
  %557 = tail call i64 @adler32(i64 noundef %556, ptr noundef %539, i32 noundef %540) #11
  store i64 %557, ptr %555, align 8, !tbaa !60
  br label %562

558:                                              ; preds = %546
  %559 = getelementptr inbounds nuw i8, ptr %528, i64 96
  %560 = load i64, ptr %559, align 8, !tbaa !60
  %561 = tail call i64 @crc32(i64 noundef %560, ptr noundef %539, i32 noundef %540) #11
  store i64 %561, ptr %559, align 8, !tbaa !60
  br label %562

562:                                              ; preds = %558, %554, %546
  %563 = load ptr, ptr %528, align 8, !tbaa !83
  %564 = getelementptr inbounds nuw i8, ptr %563, i64 %549
  store ptr %564, ptr %528, align 8, !tbaa !83
  %565 = getelementptr inbounds nuw i8, ptr %528, i64 16
  %566 = load i64, ptr %565, align 8, !tbaa !56
  %567 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %566, i64 %549), !nosanitize !49
  %568 = extractvalue { i64, i1 } %567, 1, !nosanitize !49
  br i1 %568, label %569, label %570, !prof !50, !nosanitize !49

569:                                              ; preds = %562
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

570:                                              ; preds = %562
  %571 = extractvalue { i64, i1 } %567, 0, !nosanitize !49
  store i64 %571, ptr %565, align 8, !tbaa !56
  br label %572

572:                                              ; preds = %570, %532
  %573 = phi i32 [ %540, %570 ], [ 0, %532 ]
  %574 = load i32, ptr %41, align 4, !tbaa !76
  %575 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %574, i32 %573), !nosanitize !49
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !49
  br i1 %576, label %577, label %578, !prof !50, !nosanitize !49

577:                                              ; preds = %572
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

578:                                              ; preds = %572
  %579 = extractvalue { i32, i1 } %575, 0, !nosanitize !49
  store i32 %579, ptr %41, align 4, !tbaa !76
  %580 = load i32, ptr %94, align 4, !tbaa !77
  %581 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %579, i32 %580), !nosanitize !49
  %582 = extractvalue { i32, i1 } %581, 1, !nosanitize !49
  br i1 %582, label %583, label %584, !prof !50, !nosanitize !49

583:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

584:                                              ; preds = %578
  %585 = extractvalue { i32, i1 } %581, 0, !nosanitize !49
  %586 = icmp ugt i32 %585, 2
  br i1 %586, label %587, label %652

587:                                              ; preds = %584
  %588 = load i32, ptr %89, align 4, !tbaa !74
  %589 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %588, i32 %580), !nosanitize !49
  %590 = extractvalue { i32, i1 } %589, 0, !nosanitize !49
  %591 = extractvalue { i32, i1 } %589, 1, !nosanitize !49
  br i1 %591, label %592, label %593, !prof !50, !nosanitize !49

592:                                              ; preds = %587
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

593:                                              ; preds = %587
  %594 = load ptr, ptr %91, align 8, !tbaa !39
  %595 = zext i32 %590 to i64
  %596 = getelementptr inbounds nuw i8, ptr %594, i64 %595
  %597 = load i8, ptr %596, align 1, !tbaa !8
  %598 = zext i8 %597 to i32
  store i32 %598, ptr %99, align 8, !tbaa !81
  %599 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %590, i32 1), !nosanitize !49
  %600 = extractvalue { i32, i1 } %599, 1, !nosanitize !49
  br i1 %600, label %601, label %602, !prof !50, !nosanitize !49

601:                                              ; preds = %593
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

602:                                              ; preds = %593
  %603 = extractvalue { i32, i1 } %599, 0, !nosanitize !49
  %604 = load i32, ptr %100, align 8, !tbaa !38
  %605 = shl i32 %598, %604
  %606 = zext i32 %603 to i64
  %607 = getelementptr inbounds nuw i8, ptr %594, i64 %606
  %608 = load i8, ptr %607, align 1, !tbaa !8
  %609 = zext i8 %608 to i32
  %610 = xor i32 %605, %609
  %611 = load i32, ptr %101, align 4, !tbaa !37
  %612 = and i32 %610, %611
  store i32 %612, ptr %99, align 8, !tbaa !81
  br label %613

613:                                              ; preds = %649, %602
  %614 = phi i32 [ %580, %602 ], [ %645, %649 ]
  %615 = phi i32 [ %590, %602 ], [ %644, %649 ]
  %616 = icmp eq i32 %614, 0
  br i1 %616, label %652, label %617

617:                                              ; preds = %613
  %618 = load i32, ptr %99, align 8, !tbaa !81
  %619 = shl i32 %618, %604
  %620 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %615, i32 3), !nosanitize !49
  %621 = extractvalue { i32, i1 } %620, 1, !nosanitize !49
  br i1 %621, label %622, label %623, !prof !50, !nosanitize !49

622:                                              ; preds = %617
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

623:                                              ; preds = %617
  %624 = extractvalue { i32, i1 } %620, 0, !nosanitize !49
  %625 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %624, i32 1), !nosanitize !49
  %626 = extractvalue { i32, i1 } %625, 0, !nosanitize !49
  %627 = zext i32 %626 to i64
  %628 = getelementptr inbounds nuw i8, ptr %594, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !8
  %630 = zext i8 %629 to i32
  %631 = xor i32 %619, %630
  %632 = and i32 %631, %611
  store i32 %632, ptr %99, align 8, !tbaa !81
  %633 = load ptr, ptr %96, align 8, !tbaa !41
  %634 = zext i32 %632 to i64
  %635 = getelementptr inbounds nuw [2 x i8], ptr %633, i64 %634
  %636 = load i16, ptr %635, align 2, !tbaa !63
  %637 = load ptr, ptr %97, align 8, !tbaa !40
  %638 = load i32, ptr %102, align 8, !tbaa !34
  %639 = and i32 %638, %615
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds nuw [2 x i8], ptr %637, i64 %640
  store i16 %636, ptr %641, align 2, !tbaa !63
  %642 = trunc i32 %615 to i16
  store i16 %642, ptr %635, align 2, !tbaa !63
  %643 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %615, i32 1), !nosanitize !49
  %644 = extractvalue { i32, i1 } %643, 0, !nosanitize !49
  %645 = add i32 %614, -1
  store i32 %645, ptr %94, align 4, !tbaa !77
  %646 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %579, i32 %645), !nosanitize !49
  %647 = extractvalue { i32, i1 } %646, 1, !nosanitize !49
  br i1 %647, label %648, label %649, !prof !50, !nosanitize !49

648:                                              ; preds = %623
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

649:                                              ; preds = %623
  %650 = extractvalue { i32, i1 } %646, 0, !nosanitize !49
  %651 = icmp ult i32 %650, 3
  br i1 %651, label %652, label %613, !llvm.loop !89

652:                                              ; preds = %649, %613, %584
  %653 = icmp ult i32 %579, 262
  br i1 %653, label %654, label %659

654:                                              ; preds = %652
  %655 = load ptr, ptr %30, align 8, !tbaa !20
  %656 = getelementptr inbounds nuw i8, ptr %655, i64 8
  %657 = load i32, ptr %656, align 8, !tbaa !82
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %429, !llvm.loop !90

659:                                              ; preds = %654, %652, %526
  %660 = load i64, ptr %334, align 8, !tbaa !42
  %661 = load i64, ptr %88, align 8, !tbaa !62
  %662 = icmp ult i64 %660, %661
  br i1 %662, label %663, label %699

663:                                              ; preds = %659
  %664 = load i32, ptr %89, align 4, !tbaa !74
  %665 = zext i32 %664 to i64
  %666 = load i32, ptr %41, align 4, !tbaa !76
  %667 = zext i32 %666 to i64
  %668 = add nuw nsw i64 %667, %665
  %669 = icmp ult i64 %660, %668
  br i1 %669, label %670, label %680

670:                                              ; preds = %663
  %671 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %661, i64 %668), !nosanitize !49
  %672 = extractvalue { i64, i1 } %671, 1, !nosanitize !49
  br i1 %672, label %673, label %674, !prof !50, !nosanitize !49

673:                                              ; preds = %670
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

674:                                              ; preds = %670
  %675 = extractvalue { i64, i1 } %671, 0, !nosanitize !49
  %676 = tail call i64 @llvm.umin.i64(i64 %675, i64 258)
  %677 = load ptr, ptr %91, align 8, !tbaa !39
  %678 = getelementptr inbounds nuw i8, ptr %677, i64 %668
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %678, i8 0, i64 %676, i1 false)
  %679 = add nuw nsw i64 %676, %668
  br label %697

680:                                              ; preds = %663
  %681 = add nuw nsw i64 %668, 258
  %682 = icmp ult i64 %660, %681
  br i1 %682, label %683, label %699

683:                                              ; preds = %680
  %684 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %661, i64 %660), !nosanitize !49
  %685 = sub nuw nsw i64 %681, %660
  %686 = extractvalue { i64, i1 } %684, 0, !nosanitize !49
  %687 = tail call i64 @llvm.umin.i64(i64 %685, i64 %686)
  %688 = load ptr, ptr %91, align 8, !tbaa !39
  %689 = getelementptr inbounds nuw i8, ptr %688, i64 %660
  %690 = and i64 %687, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %689, i8 0, i64 %690, i1 false)
  %691 = load i64, ptr %334, align 8, !tbaa !42
  %692 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %691, i64 %687), !nosanitize !49
  %693 = extractvalue { i64, i1 } %692, 1, !nosanitize !49
  br i1 %693, label %694, label %695, !prof !50, !nosanitize !49

694:                                              ; preds = %683
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

695:                                              ; preds = %683
  %696 = extractvalue { i64, i1 } %692, 0, !nosanitize !49
  br label %697

697:                                              ; preds = %695, %674
  %698 = phi i64 [ %679, %674 ], [ %696, %695 ]
  store i64 %698, ptr %334, align 8, !tbaa !42
  br label %699

699:                                              ; preds = %697, %680, %659
  %700 = load i32, ptr %41, align 4, !tbaa !76
  %701 = icmp ugt i32 %700, 2
  br i1 %701, label %377, label %702, !llvm.loop !93

702:                                              ; preds = %699, %374
  %703 = phi i32 [ %375, %374 ], [ %700, %699 ]
  %704 = load i32, ptr %89, align 4, !tbaa !74
  %705 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %704, i32 %703), !nosanitize !49
  %706 = extractvalue { i32, i1 } %705, 1, !nosanitize !49
  br i1 %706, label %707, label %708, !prof !50, !nosanitize !49

707:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

708:                                              ; preds = %702
  %709 = extractvalue { i32, i1 } %705, 0, !nosanitize !49
  store i32 %709, ptr %89, align 4, !tbaa !74
  %710 = zext i32 %709 to i64
  store i64 %710, ptr %93, align 8, !tbaa !75
  store i32 %703, ptr %94, align 4, !tbaa !77
  store i32 0, ptr %41, align 4, !tbaa !76
  %711 = getelementptr inbounds nuw i8, ptr %30, i64 184
  store i32 2, ptr %711, align 8, !tbaa !78
  %712 = getelementptr inbounds nuw i8, ptr %30, i64 160
  store i32 2, ptr %712, align 8, !tbaa !79
  %713 = getelementptr inbounds nuw i8, ptr %30, i64 168
  store i32 0, ptr %713, align 8, !tbaa !80
  store ptr %86, ptr %0, align 8, !tbaa !83
  store i32 %85, ptr %84, align 8, !tbaa !82
  store i32 %32, ptr %31, align 8, !tbaa !30
  br label %714

714:                                              ; preds = %708, %40, %36, %28, %24
  %715 = phi i32 [ 0, %708 ], [ -2, %24 ], [ -2, %40 ], [ -2, %36 ], [ -2, %28 ]
  ret i32 %715
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  %42 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %45

43:                                               ; preds = %36
  %44 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %46, ptr %47, align 8, !tbaa !60
  %48 = getelementptr inbounds nuw i8, ptr %26, i64 76
  store i32 -2, ptr %48, align 4, !tbaa !61
  tail call void @_tr_init(ptr noundef %26) #11
  br label %49

49:                                               ; preds = %45, %18, %15, %11, %7, %3, %1
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

37:                                               ; preds = %37, %34
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
  tail call void @_tr_flush_bits(ptr noundef %25) #11
  %51 = ashr i32 %39, %42
  %52 = sub nsw i32 %38, %42
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %37, !llvm.loop !97

54:                                               ; preds = %37, %27, %23, %20, %17, %13, %9, %5, %3
  %55 = phi i32 [ -5, %23 ], [ -2, %20 ], [ -5, %27 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ 0, %37 ]
  ret i32 %55
}

declare void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %1055, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1055, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %1055, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %1055, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !20
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %1055

20:                                               ; preds = %17
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load i32, ptr %21, align 8, !tbaa !29
  switch i32 %22, label %1055 [
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
  br i1 %30, label %1055, label %31

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
  br i1 %46, label %1012, label %47

47:                                               ; preds = %36, %31
  %48 = getelementptr inbounds nuw i8, ptr %25, i64 76
  %49 = load i32, ptr %48, align 4, !tbaa !61
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %1012, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %53 = load ptr, ptr %52, align 8, !tbaa !15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %1009, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = icmp eq ptr %57, null
  %59 = icmp eq ptr %25, null
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %1009, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %25, align 8, !tbaa !20
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %64, label %1009

64:                                               ; preds = %61
  %65 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %66 = load i32, ptr %65, align 8, !tbaa !29
  switch i32 %66, label %1009 [
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
  br label %1009

85:                                               ; preds = %78
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %87 = load i32, ptr %86, align 8, !tbaa !100
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %90, ptr %91, align 8, !tbaa !9
  br label %993

92:                                               ; preds = %85
  store i32 5, ptr %48, align 4, !tbaa !61
  %93 = getelementptr inbounds nuw i8, ptr %25, i64 40
  %94 = load i64, ptr %93, align 8, !tbaa !58
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %138, label %96

96:                                               ; preds = %92
  tail call void @_tr_flush_bits(ptr noundef nonnull %25) #11
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

116:                                              ; preds = %103
  %117 = extractvalue { i64, i1 } %113, 0, !nosanitize !49
  store i64 %117, ptr %111, align 8, !tbaa !101
  %118 = load i32, ptr %86, align 8, !tbaa !100
  %119 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %118, i32 %101), !nosanitize !49
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !49
  br i1 %120, label %121, label %122, !prof !50, !nosanitize !49

121:                                              ; preds = %116
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

122:                                              ; preds = %116
  %123 = extractvalue { i32, i1 } %119, 0, !nosanitize !49
  store i32 %123, ptr %86, align 8, !tbaa !100
  %124 = load i64, ptr %93, align 8, !tbaa !58
  %125 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %124, i64 %100), !nosanitize !49
  %126 = extractvalue { i64, i1 } %125, 1, !nosanitize !49
  br i1 %126, label %127, label %128, !prof !50, !nosanitize !49

127:                                              ; preds = %122
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  br label %993

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
  br label %993

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
  br label %993

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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

255:                                              ; preds = %245
  %256 = extractvalue { i64, i1 } %252, 0, !nosanitize !49
  %257 = load ptr, ptr %199, align 8, !tbaa !44
  store i64 %256, ptr %93, align 8, !tbaa !58
  %258 = getelementptr inbounds nuw i8, ptr %257, i64 %251
  store i8 %240, ptr %258, align 1, !tbaa !8
  br label %259

259:                                              ; preds = %255, %208
  %260 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %261 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %260, ptr %261, align 8, !tbaa !60
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %262 = load i64, ptr %93, align 8, !tbaa !58
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %259
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %993

265:                                              ; preds = %259, %161
  %266 = load i32, ptr %79, align 8, !tbaa !29
  %267 = icmp eq i32 %266, 57
  br i1 %267, label %268, label %520

268:                                              ; preds = %265
  %269 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %270 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %269, ptr %270, align 8, !tbaa !60
  %271 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %272 = load i64, ptr %93, align 8, !tbaa !58
  %273 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %272, i64 1), !nosanitize !49
  %274 = extractvalue { i64, i1 } %273, 1, !nosanitize !49
  br i1 %274, label %275, label %276, !prof !50, !nosanitize !49

275:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  br label %993

369:                                              ; preds = %292
  br i1 %301, label %370, label %371, !prof !50, !nosanitize !49

370:                                              ; preds = %369
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  %517 = tail call i64 @crc32_z(i64 noundef %514, ptr noundef %515, i64 noundef %516) #11
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
  br i1 %522, label %523, label %667

523:                                              ; preds = %520
  %524 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %525 = load ptr, ptr %524, align 8, !tbaa !31
  %526 = getelementptr inbounds nuw i8, ptr %525, i64 24
  %527 = load ptr, ptr %526, align 8, !tbaa !105
  %528 = icmp eq ptr %527, null
  br i1 %528, label %666, label %529

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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

539:                                              ; preds = %529
  %540 = extractvalue { i64, i1 } %536, 0, !nosanitize !49
  %541 = load i64, ptr %93, align 8, !tbaa !58
  %542 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %543 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %544 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %545 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %546

546:                                              ; preds = %635, %539
  %547 = phi i64 [ %541, %539 ], [ %636, %635 ]
  %548 = phi i64 [ %540, %539 ], [ %637, %635 ]
  %549 = load i64, ptr %93, align 8, !tbaa !58
  %550 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %549, i64 %548), !nosanitize !49
  %551 = extractvalue { i64, i1 } %550, 1, !nosanitize !49
  br i1 %551, label %552, label %553, !prof !50, !nosanitize !49

552:                                              ; preds = %546
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

553:                                              ; preds = %546
  %554 = extractvalue { i64, i1 } %550, 0, !nosanitize !49
  %555 = load i64, ptr %542, align 8, !tbaa !45
  %556 = icmp ugt i64 %554, %555
  br i1 %556, label %557, label %638

557:                                              ; preds = %553
  %558 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %555, i64 %549), !nosanitize !49
  %559 = extractvalue { i64, i1 } %558, 0, !nosanitize !49
  %560 = extractvalue { i64, i1 } %558, 1, !nosanitize !49
  br i1 %560, label %561, label %562, !prof !50, !nosanitize !49

561:                                              ; preds = %557
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  %582 = tail call i64 @crc32_z(i64 noundef %581, ptr noundef %580, i64 noundef %578) #11
  store i64 %582, ptr %544, align 8, !tbaa !60
  br label %583

583:                                              ; preds = %577, %562
  %584 = load i64, ptr %534, align 8, !tbaa !111
  %585 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %584, i64 %559), !nosanitize !49
  %586 = extractvalue { i64, i1 } %585, 1, !nosanitize !49
  br i1 %586, label %587, label %588, !prof !50, !nosanitize !49

587:                                              ; preds = %583
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

588:                                              ; preds = %583
  %589 = extractvalue { i64, i1 } %585, 0, !nosanitize !49
  store i64 %589, ptr %534, align 8, !tbaa !111
  %590 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %590) #11
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

610:                                              ; preds = %598
  %611 = extractvalue { i64, i1 } %607, 0, !nosanitize !49
  store i64 %611, ptr %545, align 8, !tbaa !101
  %612 = load i32, ptr %86, align 8, !tbaa !100
  %613 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %612, i32 %596), !nosanitize !49
  %614 = extractvalue { i32, i1 } %613, 1, !nosanitize !49
  br i1 %614, label %615, label %616, !prof !50, !nosanitize !49

615:                                              ; preds = %610
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

616:                                              ; preds = %610
  %617 = extractvalue { i32, i1 } %613, 0, !nosanitize !49
  store i32 %617, ptr %86, align 8, !tbaa !100
  %618 = load i64, ptr %591, align 8, !tbaa !58
  %619 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %618, i64 %595), !nosanitize !49
  %620 = extractvalue { i64, i1 } %619, 1, !nosanitize !49
  br i1 %620, label %621, label %622, !prof !50, !nosanitize !49

621:                                              ; preds = %616
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  br label %635

632:                                              ; preds = %628
  %633 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %548, i64 %559), !nosanitize !49
  %634 = extractvalue { i64, i1 } %633, 0, !nosanitize !49
  br label %635

635:                                              ; preds = %632, %631
  %636 = phi i64 [ %547, %631 ], [ 0, %632 ]
  %637 = phi i64 [ %548, %631 ], [ %634, %632 ]
  br i1 %630, label %546, label %665, !llvm.loop !112

638:                                              ; preds = %553
  %639 = load ptr, ptr %543, align 8, !tbaa !44
  %640 = getelementptr inbounds nuw i8, ptr %639, i64 %549
  %641 = load ptr, ptr %524, align 8, !tbaa !31
  %642 = getelementptr inbounds nuw i8, ptr %641, i64 24
  %643 = load ptr, ptr %642, align 8, !tbaa !105
  %644 = load i64, ptr %534, align 8, !tbaa !111
  %645 = getelementptr inbounds nuw i8, ptr %643, i64 %644
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %640, ptr align 1 %645, i64 %548, i1 false)
  %646 = load i64, ptr %93, align 8, !tbaa !58
  %647 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %646, i64 %548), !nosanitize !49
  %648 = extractvalue { i64, i1 } %647, 0, !nosanitize !49
  %649 = extractvalue { i64, i1 } %647, 1, !nosanitize !49
  br i1 %649, label %650, label %651, !prof !50, !nosanitize !49

650:                                              ; preds = %638
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

651:                                              ; preds = %638
  store i64 %648, ptr %93, align 8, !tbaa !58
  %652 = load ptr, ptr %524, align 8, !tbaa !31
  %653 = getelementptr inbounds nuw i8, ptr %652, i64 68
  %654 = load i32, ptr %653, align 4, !tbaa !107
  %655 = icmp ne i32 %654, 0
  %656 = icmp ugt i64 %648, %547
  %657 = select i1 %655, i1 %656, i1 false
  br i1 %657, label %658, label %664

658:                                              ; preds = %651
  %659 = sub nuw i64 %648, %547
  %660 = load ptr, ptr %543, align 8, !tbaa !44
  %661 = getelementptr inbounds nuw i8, ptr %660, i64 %547
  %662 = load i64, ptr %544, align 8, !tbaa !60
  %663 = tail call i64 @crc32_z(i64 noundef %662, ptr noundef %661, i64 noundef %659) #11
  store i64 %663, ptr %544, align 8, !tbaa !60
  br label %664

664:                                              ; preds = %658, %651
  store i64 0, ptr %534, align 8, !tbaa !111
  br label %665

665:                                              ; preds = %664, %635
  br i1 %556, label %993, label %666

666:                                              ; preds = %665, %523
  store i32 73, ptr %79, align 8, !tbaa !29
  br label %667

667:                                              ; preds = %666, %520
  %668 = load i32, ptr %79, align 8, !tbaa !29
  %669 = icmp eq i32 %668, 73
  br i1 %669, label %670, label %782

670:                                              ; preds = %667
  %671 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %672 = load ptr, ptr %671, align 8, !tbaa !31
  %673 = getelementptr inbounds nuw i8, ptr %672, i64 40
  %674 = load ptr, ptr %673, align 8, !tbaa !104
  %675 = icmp eq ptr %674, null
  br i1 %675, label %781, label %676

676:                                              ; preds = %670
  %677 = load i64, ptr %93, align 8, !tbaa !58
  %678 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %679 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %680 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %681 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %682 = getelementptr inbounds nuw i8, ptr %25, i64 64
  br label %683

683:                                              ; preds = %759, %676
  %684 = phi i64 [ %677, %676 ], [ %745, %759 ]
  %685 = load i64, ptr %93, align 8, !tbaa !58
  %686 = load i64, ptr %678, align 8, !tbaa !45
  %687 = icmp eq i64 %685, %686
  br i1 %687, label %688, label %744

688:                                              ; preds = %683
  %689 = load ptr, ptr %671, align 8, !tbaa !31
  %690 = getelementptr inbounds nuw i8, ptr %689, i64 68
  %691 = load i32, ptr %690, align 4, !tbaa !107
  %692 = icmp ne i32 %691, 0
  %693 = icmp ugt i64 %685, %684
  %694 = select i1 %692, i1 %693, i1 false
  br i1 %694, label %695, label %701

695:                                              ; preds = %688
  %696 = sub nuw i64 %685, %684
  %697 = load ptr, ptr %679, align 8, !tbaa !44
  %698 = getelementptr inbounds nuw i8, ptr %697, i64 %684
  %699 = load i64, ptr %680, align 8, !tbaa !60
  %700 = tail call i64 @crc32_z(i64 noundef %699, ptr noundef %698, i64 noundef %696) #11
  store i64 %700, ptr %680, align 8, !tbaa !60
  br label %701

701:                                              ; preds = %695, %688
  %702 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %702) #11
  %703 = getelementptr inbounds nuw i8, ptr %702, i64 40
  %704 = load i64, ptr %703, align 8, !tbaa !58
  %705 = load i32, ptr %86, align 8, !tbaa !100
  %706 = zext i32 %705 to i64
  %707 = tail call i64 @llvm.umin.i64(i64 %704, i64 %706)
  %708 = trunc nuw i64 %707 to i32
  %709 = icmp eq i64 %707, 0
  br i1 %709, label %740, label %710

710:                                              ; preds = %701
  %711 = load ptr, ptr %68, align 8, !tbaa !99
  %712 = getelementptr inbounds nuw i8, ptr %702, i64 32
  %713 = load ptr, ptr %712, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %711, ptr align 1 %713, i64 %707, i1 false)
  %714 = load ptr, ptr %68, align 8, !tbaa !99
  %715 = getelementptr inbounds nuw i8, ptr %714, i64 %707
  store ptr %715, ptr %68, align 8, !tbaa !99
  %716 = load ptr, ptr %712, align 8, !tbaa !59
  %717 = getelementptr inbounds nuw i8, ptr %716, i64 %707
  store ptr %717, ptr %712, align 8, !tbaa !59
  %718 = load i64, ptr %681, align 8, !tbaa !101
  %719 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %718, i64 %707), !nosanitize !49
  %720 = extractvalue { i64, i1 } %719, 1, !nosanitize !49
  br i1 %720, label %721, label %722, !prof !50, !nosanitize !49

721:                                              ; preds = %710
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

722:                                              ; preds = %710
  %723 = extractvalue { i64, i1 } %719, 0, !nosanitize !49
  store i64 %723, ptr %681, align 8, !tbaa !101
  %724 = load i32, ptr %86, align 8, !tbaa !100
  %725 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %724, i32 %708), !nosanitize !49
  %726 = extractvalue { i32, i1 } %725, 1, !nosanitize !49
  br i1 %726, label %727, label %728, !prof !50, !nosanitize !49

727:                                              ; preds = %722
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

728:                                              ; preds = %722
  %729 = extractvalue { i32, i1 } %725, 0, !nosanitize !49
  store i32 %729, ptr %86, align 8, !tbaa !100
  %730 = load i64, ptr %703, align 8, !tbaa !58
  %731 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %730, i64 %707), !nosanitize !49
  %732 = extractvalue { i64, i1 } %731, 1, !nosanitize !49
  br i1 %732, label %733, label %734, !prof !50, !nosanitize !49

733:                                              ; preds = %728
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

734:                                              ; preds = %728
  %735 = extractvalue { i64, i1 } %731, 0, !nosanitize !49
  store i64 %735, ptr %703, align 8, !tbaa !58
  %736 = icmp eq i64 %735, 0
  br i1 %736, label %737, label %740

737:                                              ; preds = %734
  %738 = getelementptr inbounds nuw i8, ptr %702, i64 16
  %739 = load ptr, ptr %738, align 8, !tbaa !44
  store ptr %739, ptr %712, align 8, !tbaa !59
  br label %740

740:                                              ; preds = %737, %734, %701
  %741 = load i64, ptr %93, align 8, !tbaa !58
  %742 = icmp eq i64 %741, 0
  br i1 %742, label %744, label %743

743:                                              ; preds = %740
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %993

744:                                              ; preds = %740, %683
  %745 = phi i64 [ %684, %683 ], [ 0, %740 ]
  %746 = load i64, ptr %682, align 8, !tbaa !111
  %747 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %746, i64 1), !nosanitize !49
  %748 = extractvalue { i64, i1 } %747, 1, !nosanitize !49
  br i1 %748, label %749, label %750, !prof !50, !nosanitize !49

749:                                              ; preds = %744
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

750:                                              ; preds = %744
  %751 = extractvalue { i64, i1 } %747, 0, !nosanitize !49
  %752 = load ptr, ptr %671, align 8, !tbaa !31
  %753 = getelementptr inbounds nuw i8, ptr %752, i64 40
  %754 = load ptr, ptr %753, align 8, !tbaa !104
  store i64 %751, ptr %682, align 8, !tbaa !111
  %755 = load i64, ptr %93, align 8, !tbaa !58
  %756 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %755, i64 1), !nosanitize !49
  %757 = extractvalue { i64, i1 } %756, 1, !nosanitize !49
  br i1 %757, label %758, label %759, !prof !50, !nosanitize !49

758:                                              ; preds = %750
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

759:                                              ; preds = %750
  %760 = extractvalue { i64, i1 } %756, 0, !nosanitize !49
  %761 = load ptr, ptr %679, align 8, !tbaa !44
  %762 = getelementptr inbounds nuw i8, ptr %754, i64 %746
  %763 = load i8, ptr %762, align 1, !tbaa !8
  store i64 %760, ptr %93, align 8, !tbaa !58
  %764 = getelementptr inbounds nuw i8, ptr %761, i64 %755
  store i8 %763, ptr %764, align 1, !tbaa !8
  %765 = icmp eq i8 %763, 0
  br i1 %765, label %766, label %683, !llvm.loop !113

766:                                              ; preds = %759
  %767 = load ptr, ptr %671, align 8, !tbaa !31
  %768 = getelementptr inbounds nuw i8, ptr %767, i64 68
  %769 = load i32, ptr %768, align 4, !tbaa !107
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %780, label %771

771:                                              ; preds = %766
  %772 = load i64, ptr %93, align 8, !tbaa !58
  %773 = icmp ugt i64 %772, %745
  br i1 %773, label %774, label %780

774:                                              ; preds = %771
  %775 = sub nuw i64 %772, %745
  %776 = load ptr, ptr %679, align 8, !tbaa !44
  %777 = getelementptr inbounds nuw i8, ptr %776, i64 %745
  %778 = load i64, ptr %680, align 8, !tbaa !60
  %779 = tail call i64 @crc32_z(i64 noundef %778, ptr noundef %777, i64 noundef %775) #11
  store i64 %779, ptr %680, align 8, !tbaa !60
  br label %780

780:                                              ; preds = %774, %771, %766
  store i64 0, ptr %682, align 8, !tbaa !111
  br label %781

781:                                              ; preds = %780, %670
  store i32 91, ptr %79, align 8, !tbaa !29
  br label %782

782:                                              ; preds = %781, %667
  %783 = load i32, ptr %79, align 8, !tbaa !29
  %784 = icmp eq i32 %783, 91
  br i1 %784, label %785, label %896

785:                                              ; preds = %782
  %786 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %787 = load ptr, ptr %786, align 8, !tbaa !31
  %788 = getelementptr inbounds nuw i8, ptr %787, i64 56
  %789 = load ptr, ptr %788, align 8, !tbaa !102
  %790 = icmp eq ptr %789, null
  br i1 %790, label %895, label %791

791:                                              ; preds = %785
  %792 = load i64, ptr %93, align 8, !tbaa !58
  %793 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %794 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %795 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %796 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %797 = getelementptr inbounds nuw i8, ptr %25, i64 64
  br label %798

798:                                              ; preds = %874, %791
  %799 = phi i64 [ %792, %791 ], [ %860, %874 ]
  %800 = load i64, ptr %93, align 8, !tbaa !58
  %801 = load i64, ptr %793, align 8, !tbaa !45
  %802 = icmp eq i64 %800, %801
  br i1 %802, label %803, label %859

803:                                              ; preds = %798
  %804 = load ptr, ptr %786, align 8, !tbaa !31
  %805 = getelementptr inbounds nuw i8, ptr %804, i64 68
  %806 = load i32, ptr %805, align 4, !tbaa !107
  %807 = icmp ne i32 %806, 0
  %808 = icmp ugt i64 %800, %799
  %809 = select i1 %807, i1 %808, i1 false
  br i1 %809, label %810, label %816

810:                                              ; preds = %803
  %811 = sub nuw i64 %800, %799
  %812 = load ptr, ptr %794, align 8, !tbaa !44
  %813 = getelementptr inbounds nuw i8, ptr %812, i64 %799
  %814 = load i64, ptr %795, align 8, !tbaa !60
  %815 = tail call i64 @crc32_z(i64 noundef %814, ptr noundef %813, i64 noundef %811) #11
  store i64 %815, ptr %795, align 8, !tbaa !60
  br label %816

816:                                              ; preds = %810, %803
  %817 = load ptr, ptr %24, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %817) #11
  %818 = getelementptr inbounds nuw i8, ptr %817, i64 40
  %819 = load i64, ptr %818, align 8, !tbaa !58
  %820 = load i32, ptr %86, align 8, !tbaa !100
  %821 = zext i32 %820 to i64
  %822 = tail call i64 @llvm.umin.i64(i64 %819, i64 %821)
  %823 = trunc nuw i64 %822 to i32
  %824 = icmp eq i64 %822, 0
  br i1 %824, label %855, label %825

825:                                              ; preds = %816
  %826 = load ptr, ptr %68, align 8, !tbaa !99
  %827 = getelementptr inbounds nuw i8, ptr %817, i64 32
  %828 = load ptr, ptr %827, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %826, ptr align 1 %828, i64 %822, i1 false)
  %829 = load ptr, ptr %68, align 8, !tbaa !99
  %830 = getelementptr inbounds nuw i8, ptr %829, i64 %822
  store ptr %830, ptr %68, align 8, !tbaa !99
  %831 = load ptr, ptr %827, align 8, !tbaa !59
  %832 = getelementptr inbounds nuw i8, ptr %831, i64 %822
  store ptr %832, ptr %827, align 8, !tbaa !59
  %833 = load i64, ptr %796, align 8, !tbaa !101
  %834 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %833, i64 %822), !nosanitize !49
  %835 = extractvalue { i64, i1 } %834, 1, !nosanitize !49
  br i1 %835, label %836, label %837, !prof !50, !nosanitize !49

836:                                              ; preds = %825
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

837:                                              ; preds = %825
  %838 = extractvalue { i64, i1 } %834, 0, !nosanitize !49
  store i64 %838, ptr %796, align 8, !tbaa !101
  %839 = load i32, ptr %86, align 8, !tbaa !100
  %840 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %839, i32 %823), !nosanitize !49
  %841 = extractvalue { i32, i1 } %840, 1, !nosanitize !49
  br i1 %841, label %842, label %843, !prof !50, !nosanitize !49

842:                                              ; preds = %837
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

843:                                              ; preds = %837
  %844 = extractvalue { i32, i1 } %840, 0, !nosanitize !49
  store i32 %844, ptr %86, align 8, !tbaa !100
  %845 = load i64, ptr %818, align 8, !tbaa !58
  %846 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %845, i64 %822), !nosanitize !49
  %847 = extractvalue { i64, i1 } %846, 1, !nosanitize !49
  br i1 %847, label %848, label %849, !prof !50, !nosanitize !49

848:                                              ; preds = %843
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

849:                                              ; preds = %843
  %850 = extractvalue { i64, i1 } %846, 0, !nosanitize !49
  store i64 %850, ptr %818, align 8, !tbaa !58
  %851 = icmp eq i64 %850, 0
  br i1 %851, label %852, label %855

852:                                              ; preds = %849
  %853 = getelementptr inbounds nuw i8, ptr %817, i64 16
  %854 = load ptr, ptr %853, align 8, !tbaa !44
  store ptr %854, ptr %827, align 8, !tbaa !59
  br label %855

855:                                              ; preds = %852, %849, %816
  %856 = load i64, ptr %93, align 8, !tbaa !58
  %857 = icmp eq i64 %856, 0
  br i1 %857, label %859, label %858

858:                                              ; preds = %855
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %993

859:                                              ; preds = %855, %798
  %860 = phi i64 [ %799, %798 ], [ 0, %855 ]
  %861 = load i64, ptr %797, align 8, !tbaa !111
  %862 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %861, i64 1), !nosanitize !49
  %863 = extractvalue { i64, i1 } %862, 1, !nosanitize !49
  br i1 %863, label %864, label %865, !prof !50, !nosanitize !49

864:                                              ; preds = %859
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

865:                                              ; preds = %859
  %866 = extractvalue { i64, i1 } %862, 0, !nosanitize !49
  %867 = load ptr, ptr %786, align 8, !tbaa !31
  %868 = getelementptr inbounds nuw i8, ptr %867, i64 56
  %869 = load ptr, ptr %868, align 8, !tbaa !102
  store i64 %866, ptr %797, align 8, !tbaa !111
  %870 = load i64, ptr %93, align 8, !tbaa !58
  %871 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %870, i64 1), !nosanitize !49
  %872 = extractvalue { i64, i1 } %871, 1, !nosanitize !49
  br i1 %872, label %873, label %874, !prof !50, !nosanitize !49

873:                                              ; preds = %865
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

874:                                              ; preds = %865
  %875 = extractvalue { i64, i1 } %871, 0, !nosanitize !49
  %876 = load ptr, ptr %794, align 8, !tbaa !44
  %877 = getelementptr inbounds nuw i8, ptr %869, i64 %861
  %878 = load i8, ptr %877, align 1, !tbaa !8
  store i64 %875, ptr %93, align 8, !tbaa !58
  %879 = getelementptr inbounds nuw i8, ptr %876, i64 %870
  store i8 %878, ptr %879, align 1, !tbaa !8
  %880 = icmp eq i8 %878, 0
  br i1 %880, label %881, label %798, !llvm.loop !114

881:                                              ; preds = %874
  %882 = load ptr, ptr %786, align 8, !tbaa !31
  %883 = getelementptr inbounds nuw i8, ptr %882, i64 68
  %884 = load i32, ptr %883, align 4, !tbaa !107
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %895, label %886

886:                                              ; preds = %881
  %887 = load i64, ptr %93, align 8, !tbaa !58
  %888 = icmp ugt i64 %887, %860
  br i1 %888, label %889, label %895

889:                                              ; preds = %886
  %890 = sub nuw i64 %887, %860
  %891 = load ptr, ptr %794, align 8, !tbaa !44
  %892 = getelementptr inbounds nuw i8, ptr %891, i64 %860
  %893 = load i64, ptr %795, align 8, !tbaa !60
  %894 = tail call i64 @crc32_z(i64 noundef %893, ptr noundef %892, i64 noundef %890) #11
  store i64 %894, ptr %795, align 8, !tbaa !60
  br label %895

895:                                              ; preds = %889, %886, %881, %785
  store i32 103, ptr %79, align 8, !tbaa !29
  br label %896

896:                                              ; preds = %895, %782
  %897 = load i32, ptr %79, align 8, !tbaa !29
  %898 = icmp eq i32 %897, 103
  br i1 %898, label %899, label %948

899:                                              ; preds = %896
  %900 = getelementptr inbounds nuw i8, ptr %25, i64 56
  %901 = load ptr, ptr %900, align 8, !tbaa !31
  %902 = getelementptr inbounds nuw i8, ptr %901, i64 68
  %903 = load i32, ptr %902, align 4, !tbaa !107
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %944, label %905

905:                                              ; preds = %899
  %906 = load i64, ptr %93, align 8, !tbaa !58
  %907 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %906, i64 2), !nosanitize !49
  %908 = extractvalue { i64, i1 } %907, 1, !nosanitize !49
  br i1 %908, label %909, label %910, !prof !50, !nosanitize !49

909:                                              ; preds = %905
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

910:                                              ; preds = %905
  %911 = extractvalue { i64, i1 } %907, 0, !nosanitize !49
  %912 = getelementptr inbounds nuw i8, ptr %25, i64 24
  %913 = load i64, ptr %912, align 8, !tbaa !45
  %914 = icmp ugt i64 %911, %913
  br i1 %914, label %915, label %919

915:                                              ; preds = %910
  tail call fastcc void @flush_pending(ptr noundef %0)
  %916 = load i64, ptr %93, align 8, !tbaa !58
  %917 = icmp eq i64 %916, 0
  br i1 %917, label %919, label %918

918:                                              ; preds = %915
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %993

919:                                              ; preds = %915, %910
  %920 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %921 = load i64, ptr %93, align 8, !tbaa !58
  %922 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %921, i64 1), !nosanitize !49
  %923 = extractvalue { i64, i1 } %922, 1, !nosanitize !49
  br i1 %923, label %924, label %925, !prof !50, !nosanitize !49

924:                                              ; preds = %919
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

925:                                              ; preds = %919
  %926 = extractvalue { i64, i1 } %922, 0, !nosanitize !49
  %927 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %928 = load ptr, ptr %927, align 8, !tbaa !44
  %929 = load i64, ptr %920, align 8, !tbaa !60
  %930 = trunc i64 %929 to i8
  store i64 %926, ptr %93, align 8, !tbaa !58
  %931 = getelementptr inbounds nuw i8, ptr %928, i64 %921
  store i8 %930, ptr %931, align 1, !tbaa !8
  %932 = load i64, ptr %93, align 8, !tbaa !58
  %933 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %932, i64 1), !nosanitize !49
  %934 = extractvalue { i64, i1 } %933, 1, !nosanitize !49
  br i1 %934, label %935, label %936, !prof !50, !nosanitize !49

935:                                              ; preds = %925
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

936:                                              ; preds = %925
  %937 = extractvalue { i64, i1 } %933, 0, !nosanitize !49
  %938 = load ptr, ptr %927, align 8, !tbaa !44
  %939 = load i64, ptr %920, align 8, !tbaa !60
  %940 = lshr i64 %939, 8
  %941 = trunc i64 %940 to i8
  store i64 %937, ptr %93, align 8, !tbaa !58
  %942 = getelementptr inbounds nuw i8, ptr %938, i64 %932
  store i8 %941, ptr %942, align 1, !tbaa !8
  %943 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %943, ptr %920, align 8, !tbaa !60
  br label %944

944:                                              ; preds = %936, %899
  store i32 113, ptr %79, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %945 = load i64, ptr %93, align 8, !tbaa !58
  %946 = icmp eq i64 %945, 0
  br i1 %946, label %948, label %947

947:                                              ; preds = %944
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %993

948:                                              ; preds = %944, %896
  %949 = load i32, ptr %72, align 8, !tbaa !82
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %958

951:                                              ; preds = %948
  %952 = getelementptr inbounds nuw i8, ptr %25, i64 180
  %953 = load i32, ptr %952, align 4, !tbaa !76
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %958

955:                                              ; preds = %951
  %956 = load i32, ptr %79, align 8, !tbaa !29
  %957 = icmp eq i32 %956, 666
  br i1 %957, label %993, label %958

958:                                              ; preds = %955, %951, %948
  %959 = load i32, ptr %32, align 4, !tbaa !52
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %961, label %963

961:                                              ; preds = %958
  %962 = tail call i32 @deflate_stored(ptr noundef nonnull %25, i32 noundef 5)
  br label %975

963:                                              ; preds = %958
  %964 = load i32, ptr %33, align 8, !tbaa !53
  switch i32 %964, label %969 [
    i32 2, label %965
    i32 3, label %967
  ]

965:                                              ; preds = %963
  %966 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %25, i32 noundef 5)
  br label %975

967:                                              ; preds = %963
  %968 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %25, i32 noundef 5)
  br label %975

969:                                              ; preds = %963
  %970 = sext i32 %959 to i64
  %971 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %970
  %972 = getelementptr inbounds nuw i8, ptr %971, i64 8
  %973 = load ptr, ptr %972, align 8, !tbaa !98
  %974 = tail call i32 %973(ptr noundef nonnull %25, i32 noundef 5) #11, !inline_history !115
  br label %975

975:                                              ; preds = %969, %967, %965, %961
  %976 = phi i32 [ %962, %961 ], [ %966, %965 ], [ %968, %967 ], [ %974, %969 ]
  %977 = and i32 %976, -2
  %978 = icmp eq i32 %977, 2
  br i1 %978, label %979, label %980

979:                                              ; preds = %975
  store i32 666, ptr %79, align 8, !tbaa !29
  br label %980

980:                                              ; preds = %979, %975
  %981 = and i32 %976, -3
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %987

983:                                              ; preds = %980
  %984 = load i32, ptr %86, align 8, !tbaa !100
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %993

986:                                              ; preds = %983
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %993

987:                                              ; preds = %980
  %988 = icmp eq i32 %976, 1
  br i1 %988, label %989, label %993

989:                                              ; preds = %987
  tail call fastcc void @flush_pending(ptr noundef %0)
  %990 = load i32, ptr %86, align 8, !tbaa !100
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %992, label %993

992:                                              ; preds = %989
  store i32 -1, ptr %48, align 4, !tbaa !61
  br label %993

993:                                              ; preds = %992, %989, %987, %986, %983, %955, %947, %918, %858, %743, %665, %368, %264, %153, %145, %137, %89
  %994 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %995 = load i32, ptr %994, align 8, !tbaa !82
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %1009

997:                                              ; preds = %993
  %998 = getelementptr inbounds nuw i8, ptr %25, i64 172
  %999 = load i32, ptr %998, align 4, !tbaa !74
  %1000 = zext i32 %999 to i64
  %1001 = getelementptr inbounds nuw i8, ptr %25, i64 152
  %1002 = load i64, ptr %1001, align 8, !tbaa !75
  %1003 = sub nsw i64 %1000, %1002
  %1004 = getelementptr inbounds nuw i8, ptr %25, i64 180
  %1005 = load i32, ptr %1004, align 4, !tbaa !76
  %1006 = zext i32 %1005 to i64
  %1007 = sub nsw i64 0, %1006
  %1008 = icmp eq i64 %1003, %1007
  br label %1009

1009:                                             ; preds = %997, %993, %82, %64, %61, %55, %51
  %1010 = phi i1 [ false, %993 ], [ %1008, %997 ], [ false, %82 ], [ false, %51 ], [ false, %55 ], [ false, %61 ], [ false, %64 ]
  %1011 = phi i32 [ -5, %993 ], [ -5, %997 ], [ -2, %82 ], [ -2, %51 ], [ -2, %55 ], [ -2, %61 ], [ -2, %64 ]
  br i1 %1010, label %1012, label %1055

1012:                                             ; preds = %1009, %47, %36
  %1013 = load i32, ptr %32, align 4, !tbaa !52
  %1014 = icmp eq i32 %1013, %27
  br i1 %1014, label %1054, label %1015

1015:                                             ; preds = %1012
  %1016 = icmp eq i32 %1013, 0
  br i1 %1016, label %1017, label %1036

1017:                                             ; preds = %1015
  %1018 = getelementptr inbounds nuw i8, ptr %25, i64 5928
  %1019 = load i32, ptr %1018, align 8, !tbaa !116
  switch i32 %1019, label %1021 [
    i32 0, label %1036
    i32 1, label %1020
  ]

1020:                                             ; preds = %1017
  tail call fastcc void @slide_hash(ptr noundef %25)
  br label %1035

1021:                                             ; preds = %1017
  %1022 = getelementptr inbounds nuw i8, ptr %25, i64 132
  %1023 = load i32, ptr %1022, align 4, !tbaa !36
  %1024 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1023, i32 1), !nosanitize !49
  %1025 = extractvalue { i32, i1 } %1024, 1, !nosanitize !49
  br i1 %1025, label %1026, label %1027, !prof !50, !nosanitize !49

1026:                                             ; preds = %1021
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

1027:                                             ; preds = %1021
  %1028 = extractvalue { i32, i1 } %1024, 0, !nosanitize !49
  %1029 = getelementptr inbounds nuw i8, ptr %25, i64 120
  %1030 = load ptr, ptr %1029, align 8, !tbaa !41
  %1031 = zext i32 %1028 to i64
  %1032 = getelementptr inbounds nuw [2 x i8], ptr %1030, i64 %1031
  store i16 0, ptr %1032, align 2, !tbaa !63
  %1033 = shl nuw nsw i64 %1031, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1030, i8 0, i64 %1033, i1 false)
  %1034 = getelementptr inbounds nuw i8, ptr %25, i64 5960
  store i32 0, ptr %1034, align 8, !tbaa !64
  br label %1035

1035:                                             ; preds = %1027, %1020
  store i32 0, ptr %1018, align 8, !tbaa !116
  br label %1036

1036:                                             ; preds = %1035, %1017, %1015
  store i32 %27, ptr %32, align 4, !tbaa !52
  %1037 = zext nneg i32 %27 to i64
  %1038 = getelementptr inbounds nuw [16 x i8], ptr @configuration_table, i64 %1037
  %1039 = getelementptr inbounds nuw i8, ptr %1038, i64 2
  %1040 = load i16, ptr %1039, align 2, !tbaa !65
  %1041 = zext i16 %1040 to i32
  %1042 = getelementptr inbounds nuw i8, ptr %25, i64 192
  store i32 %1041, ptr %1042, align 8, !tbaa !67
  %1043 = load i16, ptr %1038, align 16, !tbaa !68
  %1044 = zext i16 %1043 to i32
  %1045 = getelementptr inbounds nuw i8, ptr %25, i64 204
  store i32 %1044, ptr %1045, align 4, !tbaa !69
  %1046 = getelementptr inbounds nuw i8, ptr %1038, i64 4
  %1047 = load i16, ptr %1046, align 4, !tbaa !70
  %1048 = zext i16 %1047 to i32
  %1049 = getelementptr inbounds nuw i8, ptr %25, i64 208
  store i32 %1048, ptr %1049, align 8, !tbaa !71
  %1050 = getelementptr inbounds nuw i8, ptr %1038, i64 6
  %1051 = load i16, ptr %1050, align 2, !tbaa !72
  %1052 = zext i16 %1051 to i32
  %1053 = getelementptr inbounds nuw i8, ptr %25, i64 188
  store i32 %1052, ptr %1053, align 4, !tbaa !73
  br label %1054

1054:                                             ; preds = %1036, %1012
  store i32 %2, ptr %33, align 8, !tbaa !53
  br label %1055

1055:                                             ; preds = %1054, %1009, %23, %20, %17, %13, %9, %5, %3
  %1056 = phi i32 [ %1011, %1009 ], [ -2, %23 ], [ 0, %1054 ], [ -2, %3 ], [ -2, %5 ], [ -2, %9 ], [ -2, %13 ], [ -2, %17 ], [ -2, %20 ]
  ret i32 %1056
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
  br i1 %26, label %1154, label %27

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
  br label %1154

49:                                               ; preds = %40
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %51 = load i32, ptr %50, align 8, !tbaa !100
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !46
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %54, ptr %55, align 8, !tbaa !9
  br label %1154

56:                                               ; preds = %49
  %57 = getelementptr inbounds nuw i8, ptr %29, i64 76
  %58 = load i32, ptr %57, align 4, !tbaa !61
  store i32 %1, ptr %57, align 4, !tbaa !61
  %59 = getelementptr inbounds nuw i8, ptr %29, i64 40
  %60 = load i64, ptr %59, align 8, !tbaa !58
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %104, label %62

62:                                               ; preds = %56
  tail call void @_tr_flush_bits(ptr noundef %29) #11
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %69
  %83 = extractvalue { i64, i1 } %79, 0, !nosanitize !49
  store i64 %83, ptr %77, align 8, !tbaa !101
  %84 = load i32, ptr %50, align 8, !tbaa !100
  %85 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %84, i32 %67), !nosanitize !49
  %86 = extractvalue { i32, i1 } %85, 1, !nosanitize !49
  br i1 %86, label %87, label %88, !prof !50, !nosanitize !49

87:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

88:                                               ; preds = %82
  %89 = extractvalue { i32, i1 } %85, 0, !nosanitize !49
  store i32 %89, ptr %50, align 8, !tbaa !100
  %90 = load i64, ptr %59, align 8, !tbaa !58
  %91 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %90, i64 %66), !nosanitize !49
  %92 = extractvalue { i64, i1 } %91, 1, !nosanitize !49
  br i1 %92, label %93, label %94, !prof !50, !nosanitize !49

93:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1154

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
  br label %1154

119:                                              ; preds = %105, %104, %100
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
  br label %1154

127:                                              ; preds = %119
  %128 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %129 = load i32, ptr %128, align 8, !tbaa !30
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 113, ptr %41, align 8, !tbaa !29
  br label %132

132:                                              ; preds = %131, %127, %121, %119
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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

156:                                              ; preds = %153, %151, %147, %141
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

228:                                              ; preds = %218
  %229 = extractvalue { i64, i1 } %225, 0, !nosanitize !49
  %230 = load ptr, ptr %172, align 8, !tbaa !44
  store i64 %229, ptr %59, align 8, !tbaa !58
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 %224
  store i8 %213, ptr %231, align 1, !tbaa !8
  br label %232

232:                                              ; preds = %228, %181
  %233 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %234 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %233, ptr %234, align 8, !tbaa !60
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %235 = load i64, ptr %59, align 8, !tbaa !58
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %232
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1154

238:                                              ; preds = %232, %132
  %239 = load i32, ptr %41, align 8, !tbaa !29
  %240 = icmp eq i32 %239, 57
  br i1 %240, label %241, label %497

241:                                              ; preds = %238
  %242 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %243 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %242, ptr %243, align 8, !tbaa !60
  %244 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %245 = load i64, ptr %59, align 8, !tbaa !58
  %246 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %245, i64 1), !nosanitize !49
  %247 = extractvalue { i64, i1 } %246, 1, !nosanitize !49
  br i1 %247, label %248, label %249, !prof !50, !nosanitize !49

248:                                              ; preds = %241
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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

323:                                              ; preds = %316, %309
  %324 = phi i8 [ %322, %316 ], [ 2, %309 ]
  %325 = load i64, ptr %59, align 8, !tbaa !58
  %326 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %325, i64 1), !nosanitize !49
  %327 = extractvalue { i64, i1 } %326, 1, !nosanitize !49
  br i1 %327, label %328, label %329, !prof !50, !nosanitize !49

328:                                              ; preds = %323
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  br label %1154

344:                                              ; preds = %265
  br i1 %274, label %345, label %346, !prof !50, !nosanitize !49

345:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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

434:                                              ; preds = %427, %415
  %435 = phi i8 [ %433, %427 ], [ 2, %415 ]
  %436 = load i64, ptr %59, align 8, !tbaa !58
  %437 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %436, i64 1), !nosanitize !49
  %438 = extractvalue { i64, i1 } %437, 1, !nosanitize !49
  br i1 %438, label %439, label %440, !prof !50, !nosanitize !49

439:                                              ; preds = %434
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  %494 = tail call i64 @crc32_z(i64 noundef %491, ptr noundef %492, i64 noundef %493) #11
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
  br i1 %499, label %500, label %646

500:                                              ; preds = %497
  %501 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %502 = load ptr, ptr %501, align 8, !tbaa !31
  %503 = getelementptr inbounds nuw i8, ptr %502, i64 24
  %504 = load ptr, ptr %503, align 8, !tbaa !105
  %505 = icmp eq ptr %504, null
  br i1 %505, label %645, label %506

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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

516:                                              ; preds = %506
  %517 = extractvalue { i64, i1 } %513, 0, !nosanitize !49
  %518 = load i64, ptr %59, align 8, !tbaa !58
  %519 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %520 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %521 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %522 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %523

523:                                              ; preds = %612, %516
  %524 = phi i64 [ %518, %516 ], [ %613, %612 ]
  %525 = phi i64 [ %517, %516 ], [ %614, %612 ]
  %526 = load i64, ptr %59, align 8, !tbaa !58
  %527 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %526, i64 %525), !nosanitize !49
  %528 = extractvalue { i64, i1 } %527, 1, !nosanitize !49
  br i1 %528, label %529, label %530, !prof !50, !nosanitize !49

529:                                              ; preds = %523
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

530:                                              ; preds = %523
  %531 = extractvalue { i64, i1 } %527, 0, !nosanitize !49
  %532 = load i64, ptr %519, align 8, !tbaa !45
  %533 = icmp ugt i64 %531, %532
  br i1 %533, label %534, label %615

534:                                              ; preds = %530
  %535 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %532, i64 %526), !nosanitize !49
  %536 = extractvalue { i64, i1 } %535, 0, !nosanitize !49
  %537 = extractvalue { i64, i1 } %535, 1, !nosanitize !49
  br i1 %537, label %538, label %539, !prof !50, !nosanitize !49

538:                                              ; preds = %534
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  %559 = tail call i64 @crc32_z(i64 noundef %558, ptr noundef %557, i64 noundef %555) #11
  store i64 %559, ptr %521, align 8, !tbaa !60
  br label %560

560:                                              ; preds = %554, %539
  %561 = load i64, ptr %511, align 8, !tbaa !111
  %562 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %561, i64 %536), !nosanitize !49
  %563 = extractvalue { i64, i1 } %562, 1, !nosanitize !49
  br i1 %563, label %564, label %565, !prof !50, !nosanitize !49

564:                                              ; preds = %560
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

565:                                              ; preds = %560
  %566 = extractvalue { i64, i1 } %562, 0, !nosanitize !49
  store i64 %566, ptr %511, align 8, !tbaa !111
  %567 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %567) #11
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

587:                                              ; preds = %575
  %588 = extractvalue { i64, i1 } %584, 0, !nosanitize !49
  store i64 %588, ptr %522, align 8, !tbaa !101
  %589 = load i32, ptr %50, align 8, !tbaa !100
  %590 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %589, i32 %573), !nosanitize !49
  %591 = extractvalue { i32, i1 } %590, 1, !nosanitize !49
  br i1 %591, label %592, label %593, !prof !50, !nosanitize !49

592:                                              ; preds = %587
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

593:                                              ; preds = %587
  %594 = extractvalue { i32, i1 } %590, 0, !nosanitize !49
  store i32 %594, ptr %50, align 8, !tbaa !100
  %595 = load i64, ptr %568, align 8, !tbaa !58
  %596 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %595, i64 %572), !nosanitize !49
  %597 = extractvalue { i64, i1 } %596, 1, !nosanitize !49
  br i1 %597, label %598, label %599, !prof !50, !nosanitize !49

598:                                              ; preds = %593
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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

605:                                              ; preds = %602, %599, %565
  %606 = load i64, ptr %59, align 8, !tbaa !58
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %609, label %608

608:                                              ; preds = %605
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %612

609:                                              ; preds = %605
  %610 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %525, i64 %536), !nosanitize !49
  %611 = extractvalue { i64, i1 } %610, 0, !nosanitize !49
  br label %612

612:                                              ; preds = %609, %608
  %613 = phi i64 [ %524, %608 ], [ 0, %609 ]
  %614 = phi i64 [ %525, %608 ], [ %611, %609 ]
  br i1 %607, label %523, label %644, !llvm.loop !112

615:                                              ; preds = %530
  %616 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %617 = load ptr, ptr %616, align 8, !tbaa !44
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 %526
  %619 = load ptr, ptr %501, align 8, !tbaa !31
  %620 = getelementptr inbounds nuw i8, ptr %619, i64 24
  %621 = load ptr, ptr %620, align 8, !tbaa !105
  %622 = load i64, ptr %511, align 8, !tbaa !111
  %623 = getelementptr inbounds nuw i8, ptr %621, i64 %622
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %618, ptr align 1 %623, i64 %525, i1 false)
  %624 = load i64, ptr %59, align 8, !tbaa !58
  %625 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %624, i64 %525), !nosanitize !49
  %626 = extractvalue { i64, i1 } %625, 0, !nosanitize !49
  %627 = extractvalue { i64, i1 } %625, 1, !nosanitize !49
  br i1 %627, label %628, label %629, !prof !50, !nosanitize !49

628:                                              ; preds = %615
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

629:                                              ; preds = %615
  store i64 %626, ptr %59, align 8, !tbaa !58
  %630 = load ptr, ptr %501, align 8, !tbaa !31
  %631 = getelementptr inbounds nuw i8, ptr %630, i64 68
  %632 = load i32, ptr %631, align 4, !tbaa !107
  %633 = icmp ne i32 %632, 0
  %634 = icmp ugt i64 %626, %524
  %635 = select i1 %633, i1 %634, i1 false
  br i1 %635, label %636, label %643

636:                                              ; preds = %629
  %637 = sub nuw i64 %626, %524
  %638 = load ptr, ptr %616, align 8, !tbaa !44
  %639 = getelementptr inbounds nuw i8, ptr %638, i64 %524
  %640 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %641 = load i64, ptr %640, align 8, !tbaa !60
  %642 = tail call i64 @crc32_z(i64 noundef %641, ptr noundef %639, i64 noundef %637) #11
  store i64 %642, ptr %640, align 8, !tbaa !60
  br label %643

643:                                              ; preds = %636, %629
  store i64 0, ptr %511, align 8, !tbaa !111
  br label %644

644:                                              ; preds = %643, %612
  br i1 %533, label %1154, label %645

645:                                              ; preds = %644, %500
  store i32 73, ptr %41, align 8, !tbaa !29
  br label %646

646:                                              ; preds = %645, %497
  %647 = load i32, ptr %41, align 8, !tbaa !29
  %648 = icmp eq i32 %647, 73
  br i1 %648, label %649, label %763

649:                                              ; preds = %646
  %650 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %651 = load ptr, ptr %650, align 8, !tbaa !31
  %652 = getelementptr inbounds nuw i8, ptr %651, i64 40
  %653 = load ptr, ptr %652, align 8, !tbaa !104
  %654 = icmp eq ptr %653, null
  br i1 %654, label %762, label %655

655:                                              ; preds = %649
  %656 = load i64, ptr %59, align 8, !tbaa !58
  %657 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %658 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %659 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %660 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %661 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %662 = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %663

663:                                              ; preds = %739, %655
  %664 = phi i64 [ %656, %655 ], [ %725, %739 ]
  %665 = load i64, ptr %59, align 8, !tbaa !58
  %666 = load i64, ptr %657, align 8, !tbaa !45
  %667 = icmp eq i64 %665, %666
  br i1 %667, label %668, label %724

668:                                              ; preds = %663
  %669 = load ptr, ptr %650, align 8, !tbaa !31
  %670 = getelementptr inbounds nuw i8, ptr %669, i64 68
  %671 = load i32, ptr %670, align 4, !tbaa !107
  %672 = icmp ne i32 %671, 0
  %673 = icmp ugt i64 %665, %664
  %674 = select i1 %672, i1 %673, i1 false
  br i1 %674, label %675, label %681

675:                                              ; preds = %668
  %676 = sub nuw i64 %665, %664
  %677 = load ptr, ptr %658, align 8, !tbaa !44
  %678 = getelementptr inbounds nuw i8, ptr %677, i64 %664
  %679 = load i64, ptr %659, align 8, !tbaa !60
  %680 = tail call i64 @crc32_z(i64 noundef %679, ptr noundef %678, i64 noundef %676) #11
  store i64 %680, ptr %659, align 8, !tbaa !60
  br label %681

681:                                              ; preds = %675, %668
  %682 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %682) #11
  %683 = getelementptr inbounds nuw i8, ptr %682, i64 40
  %684 = load i64, ptr %683, align 8, !tbaa !58
  %685 = load i32, ptr %50, align 8, !tbaa !100
  %686 = zext i32 %685 to i64
  %687 = tail call i64 @llvm.umin.i64(i64 %684, i64 %686)
  %688 = trunc nuw i64 %687 to i32
  %689 = icmp eq i64 %687, 0
  br i1 %689, label %720, label %690

690:                                              ; preds = %681
  %691 = load ptr, ptr %30, align 8, !tbaa !99
  %692 = getelementptr inbounds nuw i8, ptr %682, i64 32
  %693 = load ptr, ptr %692, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %691, ptr align 1 %693, i64 %687, i1 false)
  %694 = load ptr, ptr %30, align 8, !tbaa !99
  %695 = getelementptr inbounds nuw i8, ptr %694, i64 %687
  store ptr %695, ptr %30, align 8, !tbaa !99
  %696 = load ptr, ptr %692, align 8, !tbaa !59
  %697 = getelementptr inbounds nuw i8, ptr %696, i64 %687
  store ptr %697, ptr %692, align 8, !tbaa !59
  %698 = load i64, ptr %660, align 8, !tbaa !101
  %699 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %698, i64 %687), !nosanitize !49
  %700 = extractvalue { i64, i1 } %699, 1, !nosanitize !49
  br i1 %700, label %701, label %702, !prof !50, !nosanitize !49

701:                                              ; preds = %690
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

702:                                              ; preds = %690
  %703 = extractvalue { i64, i1 } %699, 0, !nosanitize !49
  store i64 %703, ptr %660, align 8, !tbaa !101
  %704 = load i32, ptr %50, align 8, !tbaa !100
  %705 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %704, i32 %688), !nosanitize !49
  %706 = extractvalue { i32, i1 } %705, 1, !nosanitize !49
  br i1 %706, label %707, label %708, !prof !50, !nosanitize !49

707:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

708:                                              ; preds = %702
  %709 = extractvalue { i32, i1 } %705, 0, !nosanitize !49
  store i32 %709, ptr %50, align 8, !tbaa !100
  %710 = load i64, ptr %683, align 8, !tbaa !58
  %711 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %710, i64 %687), !nosanitize !49
  %712 = extractvalue { i64, i1 } %711, 1, !nosanitize !49
  br i1 %712, label %713, label %714, !prof !50, !nosanitize !49

713:                                              ; preds = %708
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

714:                                              ; preds = %708
  %715 = extractvalue { i64, i1 } %711, 0, !nosanitize !49
  store i64 %715, ptr %683, align 8, !tbaa !58
  %716 = icmp eq i64 %715, 0
  br i1 %716, label %717, label %720

717:                                              ; preds = %714
  %718 = getelementptr inbounds nuw i8, ptr %682, i64 16
  %719 = load ptr, ptr %718, align 8, !tbaa !44
  store ptr %719, ptr %692, align 8, !tbaa !59
  br label %720

720:                                              ; preds = %717, %714, %681
  %721 = load i64, ptr %59, align 8, !tbaa !58
  %722 = icmp eq i64 %721, 0
  br i1 %722, label %724, label %723

723:                                              ; preds = %720
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1154

724:                                              ; preds = %720, %663
  %725 = phi i64 [ %664, %663 ], [ 0, %720 ]
  %726 = load i64, ptr %661, align 8, !tbaa !111
  %727 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %726, i64 1), !nosanitize !49
  %728 = extractvalue { i64, i1 } %727, 1, !nosanitize !49
  br i1 %728, label %729, label %730, !prof !50, !nosanitize !49

729:                                              ; preds = %724
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

730:                                              ; preds = %724
  %731 = extractvalue { i64, i1 } %727, 0, !nosanitize !49
  %732 = load ptr, ptr %650, align 8, !tbaa !31
  %733 = getelementptr inbounds nuw i8, ptr %732, i64 40
  %734 = load ptr, ptr %733, align 8, !tbaa !104
  store i64 %731, ptr %661, align 8, !tbaa !111
  %735 = load i64, ptr %59, align 8, !tbaa !58
  %736 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %735, i64 1), !nosanitize !49
  %737 = extractvalue { i64, i1 } %736, 1, !nosanitize !49
  br i1 %737, label %738, label %739, !prof !50, !nosanitize !49

738:                                              ; preds = %730
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

739:                                              ; preds = %730
  %740 = extractvalue { i64, i1 } %736, 0, !nosanitize !49
  %741 = load ptr, ptr %662, align 8, !tbaa !44
  %742 = getelementptr inbounds nuw i8, ptr %734, i64 %726
  %743 = load i8, ptr %742, align 1, !tbaa !8
  store i64 %740, ptr %59, align 8, !tbaa !58
  %744 = getelementptr inbounds nuw i8, ptr %741, i64 %735
  store i8 %743, ptr %744, align 1, !tbaa !8
  %745 = icmp eq i8 %743, 0
  br i1 %745, label %746, label %663, !llvm.loop !113

746:                                              ; preds = %739
  %747 = load ptr, ptr %650, align 8, !tbaa !31
  %748 = getelementptr inbounds nuw i8, ptr %747, i64 68
  %749 = load i32, ptr %748, align 4, !tbaa !107
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %761, label %751

751:                                              ; preds = %746
  %752 = load i64, ptr %59, align 8, !tbaa !58
  %753 = icmp ugt i64 %752, %725
  br i1 %753, label %754, label %761

754:                                              ; preds = %751
  %755 = sub nuw i64 %752, %725
  %756 = load ptr, ptr %662, align 8, !tbaa !44
  %757 = getelementptr inbounds nuw i8, ptr %756, i64 %725
  %758 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %759 = load i64, ptr %758, align 8, !tbaa !60
  %760 = tail call i64 @crc32_z(i64 noundef %759, ptr noundef %757, i64 noundef %755) #11
  store i64 %760, ptr %758, align 8, !tbaa !60
  br label %761

761:                                              ; preds = %754, %751, %746
  store i64 0, ptr %661, align 8, !tbaa !111
  br label %762

762:                                              ; preds = %761, %649
  store i32 91, ptr %41, align 8, !tbaa !29
  br label %763

763:                                              ; preds = %762, %646
  %764 = load i32, ptr %41, align 8, !tbaa !29
  %765 = icmp eq i32 %764, 91
  br i1 %765, label %766, label %879

766:                                              ; preds = %763
  %767 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %768 = load ptr, ptr %767, align 8, !tbaa !31
  %769 = getelementptr inbounds nuw i8, ptr %768, i64 56
  %770 = load ptr, ptr %769, align 8, !tbaa !102
  %771 = icmp eq ptr %770, null
  br i1 %771, label %878, label %772

772:                                              ; preds = %766
  %773 = load i64, ptr %59, align 8, !tbaa !58
  %774 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %775 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %776 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %777 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %778 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %779 = getelementptr inbounds nuw i8, ptr %29, i64 16
  br label %780

780:                                              ; preds = %856, %772
  %781 = phi i64 [ %773, %772 ], [ %842, %856 ]
  %782 = load i64, ptr %59, align 8, !tbaa !58
  %783 = load i64, ptr %774, align 8, !tbaa !45
  %784 = icmp eq i64 %782, %783
  br i1 %784, label %785, label %841

785:                                              ; preds = %780
  %786 = load ptr, ptr %767, align 8, !tbaa !31
  %787 = getelementptr inbounds nuw i8, ptr %786, i64 68
  %788 = load i32, ptr %787, align 4, !tbaa !107
  %789 = icmp ne i32 %788, 0
  %790 = icmp ugt i64 %782, %781
  %791 = select i1 %789, i1 %790, i1 false
  br i1 %791, label %792, label %798

792:                                              ; preds = %785
  %793 = sub nuw i64 %782, %781
  %794 = load ptr, ptr %775, align 8, !tbaa !44
  %795 = getelementptr inbounds nuw i8, ptr %794, i64 %781
  %796 = load i64, ptr %776, align 8, !tbaa !60
  %797 = tail call i64 @crc32_z(i64 noundef %796, ptr noundef %795, i64 noundef %793) #11
  store i64 %797, ptr %776, align 8, !tbaa !60
  br label %798

798:                                              ; preds = %792, %785
  %799 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %799) #11
  %800 = getelementptr inbounds nuw i8, ptr %799, i64 40
  %801 = load i64, ptr %800, align 8, !tbaa !58
  %802 = load i32, ptr %50, align 8, !tbaa !100
  %803 = zext i32 %802 to i64
  %804 = tail call i64 @llvm.umin.i64(i64 %801, i64 %803)
  %805 = trunc nuw i64 %804 to i32
  %806 = icmp eq i64 %804, 0
  br i1 %806, label %837, label %807

807:                                              ; preds = %798
  %808 = load ptr, ptr %30, align 8, !tbaa !99
  %809 = getelementptr inbounds nuw i8, ptr %799, i64 32
  %810 = load ptr, ptr %809, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %808, ptr align 1 %810, i64 %804, i1 false)
  %811 = load ptr, ptr %30, align 8, !tbaa !99
  %812 = getelementptr inbounds nuw i8, ptr %811, i64 %804
  store ptr %812, ptr %30, align 8, !tbaa !99
  %813 = load ptr, ptr %809, align 8, !tbaa !59
  %814 = getelementptr inbounds nuw i8, ptr %813, i64 %804
  store ptr %814, ptr %809, align 8, !tbaa !59
  %815 = load i64, ptr %777, align 8, !tbaa !101
  %816 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %815, i64 %804), !nosanitize !49
  %817 = extractvalue { i64, i1 } %816, 1, !nosanitize !49
  br i1 %817, label %818, label %819, !prof !50, !nosanitize !49

818:                                              ; preds = %807
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

819:                                              ; preds = %807
  %820 = extractvalue { i64, i1 } %816, 0, !nosanitize !49
  store i64 %820, ptr %777, align 8, !tbaa !101
  %821 = load i32, ptr %50, align 8, !tbaa !100
  %822 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %821, i32 %805), !nosanitize !49
  %823 = extractvalue { i32, i1 } %822, 1, !nosanitize !49
  br i1 %823, label %824, label %825, !prof !50, !nosanitize !49

824:                                              ; preds = %819
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

825:                                              ; preds = %819
  %826 = extractvalue { i32, i1 } %822, 0, !nosanitize !49
  store i32 %826, ptr %50, align 8, !tbaa !100
  %827 = load i64, ptr %800, align 8, !tbaa !58
  %828 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %827, i64 %804), !nosanitize !49
  %829 = extractvalue { i64, i1 } %828, 1, !nosanitize !49
  br i1 %829, label %830, label %831, !prof !50, !nosanitize !49

830:                                              ; preds = %825
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

831:                                              ; preds = %825
  %832 = extractvalue { i64, i1 } %828, 0, !nosanitize !49
  store i64 %832, ptr %800, align 8, !tbaa !58
  %833 = icmp eq i64 %832, 0
  br i1 %833, label %834, label %837

834:                                              ; preds = %831
  %835 = getelementptr inbounds nuw i8, ptr %799, i64 16
  %836 = load ptr, ptr %835, align 8, !tbaa !44
  store ptr %836, ptr %809, align 8, !tbaa !59
  br label %837

837:                                              ; preds = %834, %831, %798
  %838 = load i64, ptr %59, align 8, !tbaa !58
  %839 = icmp eq i64 %838, 0
  br i1 %839, label %841, label %840

840:                                              ; preds = %837
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1154

841:                                              ; preds = %837, %780
  %842 = phi i64 [ %781, %780 ], [ 0, %837 ]
  %843 = load i64, ptr %778, align 8, !tbaa !111
  %844 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %843, i64 1), !nosanitize !49
  %845 = extractvalue { i64, i1 } %844, 1, !nosanitize !49
  br i1 %845, label %846, label %847, !prof !50, !nosanitize !49

846:                                              ; preds = %841
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

847:                                              ; preds = %841
  %848 = extractvalue { i64, i1 } %844, 0, !nosanitize !49
  %849 = load ptr, ptr %767, align 8, !tbaa !31
  %850 = getelementptr inbounds nuw i8, ptr %849, i64 56
  %851 = load ptr, ptr %850, align 8, !tbaa !102
  store i64 %848, ptr %778, align 8, !tbaa !111
  %852 = load i64, ptr %59, align 8, !tbaa !58
  %853 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %852, i64 1), !nosanitize !49
  %854 = extractvalue { i64, i1 } %853, 1, !nosanitize !49
  br i1 %854, label %855, label %856, !prof !50, !nosanitize !49

855:                                              ; preds = %847
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

856:                                              ; preds = %847
  %857 = extractvalue { i64, i1 } %853, 0, !nosanitize !49
  %858 = load ptr, ptr %779, align 8, !tbaa !44
  %859 = getelementptr inbounds nuw i8, ptr %851, i64 %843
  %860 = load i8, ptr %859, align 1, !tbaa !8
  store i64 %857, ptr %59, align 8, !tbaa !58
  %861 = getelementptr inbounds nuw i8, ptr %858, i64 %852
  store i8 %860, ptr %861, align 1, !tbaa !8
  %862 = icmp eq i8 %860, 0
  br i1 %862, label %863, label %780, !llvm.loop !114

863:                                              ; preds = %856
  %864 = load ptr, ptr %767, align 8, !tbaa !31
  %865 = getelementptr inbounds nuw i8, ptr %864, i64 68
  %866 = load i32, ptr %865, align 4, !tbaa !107
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %878, label %868

868:                                              ; preds = %863
  %869 = load i64, ptr %59, align 8, !tbaa !58
  %870 = icmp ugt i64 %869, %842
  br i1 %870, label %871, label %878

871:                                              ; preds = %868
  %872 = sub nuw i64 %869, %842
  %873 = load ptr, ptr %779, align 8, !tbaa !44
  %874 = getelementptr inbounds nuw i8, ptr %873, i64 %842
  %875 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %876 = load i64, ptr %875, align 8, !tbaa !60
  %877 = tail call i64 @crc32_z(i64 noundef %876, ptr noundef %874, i64 noundef %872) #11
  store i64 %877, ptr %875, align 8, !tbaa !60
  br label %878

878:                                              ; preds = %871, %868, %863, %766
  store i32 103, ptr %41, align 8, !tbaa !29
  br label %879

879:                                              ; preds = %878, %763
  %880 = load i32, ptr %41, align 8, !tbaa !29
  %881 = icmp eq i32 %880, 103
  br i1 %881, label %882, label %931

882:                                              ; preds = %879
  %883 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %884 = load ptr, ptr %883, align 8, !tbaa !31
  %885 = getelementptr inbounds nuw i8, ptr %884, i64 68
  %886 = load i32, ptr %885, align 4, !tbaa !107
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %927, label %888

888:                                              ; preds = %882
  %889 = load i64, ptr %59, align 8, !tbaa !58
  %890 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %889, i64 2), !nosanitize !49
  %891 = extractvalue { i64, i1 } %890, 1, !nosanitize !49
  br i1 %891, label %892, label %893, !prof !50, !nosanitize !49

892:                                              ; preds = %888
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

893:                                              ; preds = %888
  %894 = extractvalue { i64, i1 } %890, 0, !nosanitize !49
  %895 = getelementptr inbounds nuw i8, ptr %29, i64 24
  %896 = load i64, ptr %895, align 8, !tbaa !45
  %897 = icmp ugt i64 %894, %896
  br i1 %897, label %898, label %902

898:                                              ; preds = %893
  tail call fastcc void @flush_pending(ptr noundef %0)
  %899 = load i64, ptr %59, align 8, !tbaa !58
  %900 = icmp eq i64 %899, 0
  br i1 %900, label %902, label %901

901:                                              ; preds = %898
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1154

902:                                              ; preds = %898, %893
  %903 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %904 = load i64, ptr %59, align 8, !tbaa !58
  %905 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %904, i64 1), !nosanitize !49
  %906 = extractvalue { i64, i1 } %905, 1, !nosanitize !49
  br i1 %906, label %907, label %908, !prof !50, !nosanitize !49

907:                                              ; preds = %902
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

908:                                              ; preds = %902
  %909 = extractvalue { i64, i1 } %905, 0, !nosanitize !49
  %910 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %911 = load ptr, ptr %910, align 8, !tbaa !44
  %912 = load i64, ptr %903, align 8, !tbaa !60
  %913 = trunc i64 %912 to i8
  store i64 %909, ptr %59, align 8, !tbaa !58
  %914 = getelementptr inbounds nuw i8, ptr %911, i64 %904
  store i8 %913, ptr %914, align 1, !tbaa !8
  %915 = load i64, ptr %59, align 8, !tbaa !58
  %916 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %915, i64 1), !nosanitize !49
  %917 = extractvalue { i64, i1 } %916, 1, !nosanitize !49
  br i1 %917, label %918, label %919, !prof !50, !nosanitize !49

918:                                              ; preds = %908
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

919:                                              ; preds = %908
  %920 = extractvalue { i64, i1 } %916, 0, !nosanitize !49
  %921 = load ptr, ptr %910, align 8, !tbaa !44
  %922 = load i64, ptr %903, align 8, !tbaa !60
  %923 = lshr i64 %922, 8
  %924 = trunc i64 %923 to i8
  store i64 %920, ptr %59, align 8, !tbaa !58
  %925 = getelementptr inbounds nuw i8, ptr %921, i64 %915
  store i8 %924, ptr %925, align 1, !tbaa !8
  %926 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %926, ptr %903, align 8, !tbaa !60
  br label %927

927:                                              ; preds = %919, %882
  store i32 113, ptr %41, align 8, !tbaa !29
  tail call fastcc void @flush_pending(ptr noundef %0)
  %928 = load i64, ptr %59, align 8, !tbaa !58
  %929 = icmp eq i64 %928, 0
  br i1 %929, label %931, label %930

930:                                              ; preds = %927
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1154

931:                                              ; preds = %927, %879
  %932 = load i32, ptr %34, align 8, !tbaa !82
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %934, label %943

934:                                              ; preds = %931
  %935 = getelementptr inbounds nuw i8, ptr %29, i64 180
  %936 = load i32, ptr %935, align 4, !tbaa !76
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %938, label %943

938:                                              ; preds = %934
  %939 = icmp eq i32 %1, 0
  br i1 %939, label %1005, label %940

940:                                              ; preds = %938
  %941 = load i32, ptr %41, align 8, !tbaa !29
  %942 = icmp eq i32 %941, 666
  br i1 %942, label %1005, label %943

943:                                              ; preds = %940, %934, %931
  %944 = getelementptr inbounds nuw i8, ptr %29, i64 196
  %945 = load i32, ptr %944, align 4, !tbaa !52
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %949

947:                                              ; preds = %943
  %948 = tail call i32 @deflate_stored(ptr noundef %29, i32 noundef %1)
  br label %962

949:                                              ; preds = %943
  %950 = getelementptr inbounds nuw i8, ptr %29, i64 200
  %951 = load i32, ptr %950, align 8, !tbaa !53
  switch i32 %951, label %956 [
    i32 2, label %952
    i32 3, label %954
  ]

952:                                              ; preds = %949
  %953 = tail call fastcc i32 @deflate_huff(ptr noundef %29, i32 noundef %1)
  br label %962

954:                                              ; preds = %949
  %955 = tail call fastcc i32 @deflate_rle(ptr noundef %29, i32 noundef %1)
  br label %962

956:                                              ; preds = %949
  %957 = sext i32 %945 to i64
  %958 = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %957
  %959 = getelementptr inbounds nuw i8, ptr %958, i64 8
  %960 = load ptr, ptr %959, align 8, !tbaa !98
  %961 = tail call i32 %960(ptr noundef %29, i32 noundef %1) #11
  br label %962

962:                                              ; preds = %956, %954, %952, %947
  %963 = phi i32 [ %948, %947 ], [ %953, %952 ], [ %955, %954 ], [ %961, %956 ]
  %964 = and i32 %963, -2
  %965 = icmp eq i32 %964, 2
  br i1 %965, label %966, label %967

966:                                              ; preds = %962
  store i32 666, ptr %41, align 8, !tbaa !29
  br label %967

967:                                              ; preds = %966, %962
  %968 = and i32 %963, -3
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %970, label %974

970:                                              ; preds = %967
  %971 = load i32, ptr %50, align 8, !tbaa !100
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %973, label %1154

973:                                              ; preds = %970
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1154

974:                                              ; preds = %967
  %975 = icmp eq i32 %963, 1
  br i1 %975, label %976, label %1005

976:                                              ; preds = %974
  switch i32 %1, label %978 [
    i32 1, label %977
    i32 5, label %1001
  ]

977:                                              ; preds = %976
  tail call void @_tr_align(ptr noundef %29) #11
  br label %1001

978:                                              ; preds = %976
  tail call void @_tr_stored_block(ptr noundef %29, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %979 = icmp eq i32 %1, 3
  br i1 %979, label %980, label %1001

980:                                              ; preds = %978
  %981 = getelementptr inbounds nuw i8, ptr %29, i64 132
  %982 = load i32, ptr %981, align 4, !tbaa !36
  %983 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %982, i32 1), !nosanitize !49
  %984 = extractvalue { i32, i1 } %983, 1, !nosanitize !49
  br i1 %984, label %985, label %986, !prof !50, !nosanitize !49

985:                                              ; preds = %980
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

986:                                              ; preds = %980
  %987 = extractvalue { i32, i1 } %983, 0, !nosanitize !49
  %988 = getelementptr inbounds nuw i8, ptr %29, i64 120
  %989 = load ptr, ptr %988, align 8, !tbaa !41
  %990 = zext i32 %987 to i64
  %991 = getelementptr inbounds nuw [2 x i8], ptr %989, i64 %990
  store i16 0, ptr %991, align 2, !tbaa !63
  %992 = shl nuw nsw i64 %990, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %989, i8 0, i64 %992, i1 false)
  %993 = getelementptr inbounds nuw i8, ptr %29, i64 5960
  store i32 0, ptr %993, align 8, !tbaa !64
  %994 = getelementptr inbounds nuw i8, ptr %29, i64 180
  %995 = load i32, ptr %994, align 4, !tbaa !76
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %1001

997:                                              ; preds = %986
  %998 = getelementptr inbounds nuw i8, ptr %29, i64 172
  store i32 0, ptr %998, align 4, !tbaa !74
  %999 = getelementptr inbounds nuw i8, ptr %29, i64 152
  store i64 0, ptr %999, align 8, !tbaa !75
  %1000 = getelementptr inbounds nuw i8, ptr %29, i64 5932
  store i32 0, ptr %1000, align 4, !tbaa !77
  br label %1001

1001:                                             ; preds = %997, %986, %978, %977, %976
  tail call fastcc void @flush_pending(ptr noundef %0)
  %1002 = load i32, ptr %50, align 8, !tbaa !100
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1005

1004:                                             ; preds = %1001
  store i32 -1, ptr %57, align 4, !tbaa !61
  br label %1154

1005:                                             ; preds = %1001, %974, %940, %938
  br i1 %44, label %1154, label %1006

1006:                                             ; preds = %1005
  %1007 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %1008 = load i32, ptr %1007, align 8, !tbaa !30
  %1009 = icmp slt i32 %1008, 1
  br i1 %1009, label %1154, label %1010

1010:                                             ; preds = %1006
  %1011 = icmp eq i32 %1008, 2
  %1012 = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %1011, label %1013, label %1102

1013:                                             ; preds = %1010
  %1014 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %1015 = load i64, ptr %59, align 8, !tbaa !58
  %1016 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1015, i64 1), !nosanitize !49
  %1017 = extractvalue { i64, i1 } %1016, 1, !nosanitize !49
  br i1 %1017, label %1018, label %1019, !prof !50, !nosanitize !49

1018:                                             ; preds = %1013
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1019:                                             ; preds = %1013
  %1020 = extractvalue { i64, i1 } %1016, 0, !nosanitize !49
  %1021 = load ptr, ptr %1014, align 8, !tbaa !44
  %1022 = load i64, ptr %1012, align 8, !tbaa !60
  %1023 = trunc i64 %1022 to i8
  store i64 %1020, ptr %59, align 8, !tbaa !58
  %1024 = getelementptr inbounds nuw i8, ptr %1021, i64 %1015
  store i8 %1023, ptr %1024, align 1, !tbaa !8
  %1025 = load i64, ptr %59, align 8, !tbaa !58
  %1026 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1025, i64 1), !nosanitize !49
  %1027 = extractvalue { i64, i1 } %1026, 1, !nosanitize !49
  br i1 %1027, label %1028, label %1029, !prof !50, !nosanitize !49

1028:                                             ; preds = %1019
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1029:                                             ; preds = %1019
  %1030 = extractvalue { i64, i1 } %1026, 0, !nosanitize !49
  %1031 = load ptr, ptr %1014, align 8, !tbaa !44
  %1032 = load i64, ptr %1012, align 8, !tbaa !60
  %1033 = lshr i64 %1032, 8
  %1034 = trunc i64 %1033 to i8
  store i64 %1030, ptr %59, align 8, !tbaa !58
  %1035 = getelementptr inbounds nuw i8, ptr %1031, i64 %1025
  store i8 %1034, ptr %1035, align 1, !tbaa !8
  %1036 = load i64, ptr %59, align 8, !tbaa !58
  %1037 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1036, i64 1), !nosanitize !49
  %1038 = extractvalue { i64, i1 } %1037, 1, !nosanitize !49
  br i1 %1038, label %1039, label %1040, !prof !50, !nosanitize !49

1039:                                             ; preds = %1029
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1040:                                             ; preds = %1029
  %1041 = extractvalue { i64, i1 } %1037, 0, !nosanitize !49
  %1042 = load ptr, ptr %1014, align 8, !tbaa !44
  %1043 = load i64, ptr %1012, align 8, !tbaa !60
  %1044 = lshr i64 %1043, 16
  %1045 = trunc i64 %1044 to i8
  store i64 %1041, ptr %59, align 8, !tbaa !58
  %1046 = getelementptr inbounds nuw i8, ptr %1042, i64 %1036
  store i8 %1045, ptr %1046, align 1, !tbaa !8
  %1047 = load i64, ptr %59, align 8, !tbaa !58
  %1048 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1047, i64 1), !nosanitize !49
  %1049 = extractvalue { i64, i1 } %1048, 1, !nosanitize !49
  br i1 %1049, label %1050, label %1051, !prof !50, !nosanitize !49

1050:                                             ; preds = %1040
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1051:                                             ; preds = %1040
  %1052 = extractvalue { i64, i1 } %1048, 0, !nosanitize !49
  %1053 = load ptr, ptr %1014, align 8, !tbaa !44
  %1054 = load i64, ptr %1012, align 8, !tbaa !60
  %1055 = lshr i64 %1054, 24
  %1056 = trunc i64 %1055 to i8
  store i64 %1052, ptr %59, align 8, !tbaa !58
  %1057 = getelementptr inbounds nuw i8, ptr %1053, i64 %1047
  store i8 %1056, ptr %1057, align 1, !tbaa !8
  %1058 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1059 = load i64, ptr %59, align 8, !tbaa !58
  %1060 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1059, i64 1), !nosanitize !49
  %1061 = extractvalue { i64, i1 } %1060, 1, !nosanitize !49
  br i1 %1061, label %1062, label %1063, !prof !50, !nosanitize !49

1062:                                             ; preds = %1051
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1063:                                             ; preds = %1051
  %1064 = extractvalue { i64, i1 } %1060, 0, !nosanitize !49
  %1065 = load ptr, ptr %1014, align 8, !tbaa !44
  %1066 = load i64, ptr %1058, align 8, !tbaa !56
  %1067 = trunc i64 %1066 to i8
  store i64 %1064, ptr %59, align 8, !tbaa !58
  %1068 = getelementptr inbounds nuw i8, ptr %1065, i64 %1059
  store i8 %1067, ptr %1068, align 1, !tbaa !8
  %1069 = load i64, ptr %59, align 8, !tbaa !58
  %1070 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1069, i64 1), !nosanitize !49
  %1071 = extractvalue { i64, i1 } %1070, 1, !nosanitize !49
  br i1 %1071, label %1072, label %1073, !prof !50, !nosanitize !49

1072:                                             ; preds = %1063
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1073:                                             ; preds = %1063
  %1074 = extractvalue { i64, i1 } %1070, 0, !nosanitize !49
  %1075 = load ptr, ptr %1014, align 8, !tbaa !44
  %1076 = load i64, ptr %1058, align 8, !tbaa !56
  %1077 = lshr i64 %1076, 8
  %1078 = trunc i64 %1077 to i8
  store i64 %1074, ptr %59, align 8, !tbaa !58
  %1079 = getelementptr inbounds nuw i8, ptr %1075, i64 %1069
  store i8 %1078, ptr %1079, align 1, !tbaa !8
  %1080 = load i64, ptr %59, align 8, !tbaa !58
  %1081 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1080, i64 1), !nosanitize !49
  %1082 = extractvalue { i64, i1 } %1081, 1, !nosanitize !49
  br i1 %1082, label %1083, label %1084, !prof !50, !nosanitize !49

1083:                                             ; preds = %1073
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1084:                                             ; preds = %1073
  %1085 = extractvalue { i64, i1 } %1081, 0, !nosanitize !49
  %1086 = load ptr, ptr %1014, align 8, !tbaa !44
  %1087 = load i64, ptr %1058, align 8, !tbaa !56
  %1088 = lshr i64 %1087, 16
  %1089 = trunc i64 %1088 to i8
  store i64 %1085, ptr %59, align 8, !tbaa !58
  %1090 = getelementptr inbounds nuw i8, ptr %1086, i64 %1080
  store i8 %1089, ptr %1090, align 1, !tbaa !8
  %1091 = load i64, ptr %59, align 8, !tbaa !58
  %1092 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1091, i64 1), !nosanitize !49
  %1093 = extractvalue { i64, i1 } %1092, 1, !nosanitize !49
  br i1 %1093, label %1094, label %1095, !prof !50, !nosanitize !49

1094:                                             ; preds = %1084
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1095:                                             ; preds = %1084
  %1096 = extractvalue { i64, i1 } %1092, 0, !nosanitize !49
  %1097 = load ptr, ptr %1014, align 8, !tbaa !44
  %1098 = load i64, ptr %1058, align 8, !tbaa !56
  %1099 = lshr i64 %1098, 24
  %1100 = trunc i64 %1099 to i8
  store i64 %1096, ptr %59, align 8, !tbaa !58
  %1101 = getelementptr inbounds nuw i8, ptr %1097, i64 %1091
  store i8 %1100, ptr %1101, align 1, !tbaa !8
  br label %1145

1102:                                             ; preds = %1010
  %1103 = load i64, ptr %1012, align 8, !tbaa !60
  %1104 = lshr i64 %1103, 16
  %1105 = load i64, ptr %59, align 8, !tbaa !58
  %1106 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1105, i64 1), !nosanitize !49
  %1107 = extractvalue { i64, i1 } %1106, 1, !nosanitize !49
  br i1 %1107, label %1108, label %1109, !prof !50, !nosanitize !49

1108:                                             ; preds = %1102
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1109:                                             ; preds = %1102
  %1110 = extractvalue { i64, i1 } %1106, 0, !nosanitize !49
  %1111 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %1112 = load ptr, ptr %1111, align 8, !tbaa !44
  %1113 = lshr i64 %1103, 24
  %1114 = trunc i64 %1113 to i8
  store i64 %1110, ptr %59, align 8, !tbaa !58
  %1115 = getelementptr inbounds nuw i8, ptr %1112, i64 %1105
  store i8 %1114, ptr %1115, align 1, !tbaa !8
  %1116 = load i64, ptr %59, align 8, !tbaa !58
  %1117 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1116, i64 1), !nosanitize !49
  %1118 = extractvalue { i64, i1 } %1117, 1, !nosanitize !49
  br i1 %1118, label %1119, label %1120, !prof !50, !nosanitize !49

1119:                                             ; preds = %1109
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1120:                                             ; preds = %1109
  %1121 = extractvalue { i64, i1 } %1117, 0, !nosanitize !49
  %1122 = load ptr, ptr %1111, align 8, !tbaa !44
  %1123 = trunc i64 %1104 to i8
  store i64 %1121, ptr %59, align 8, !tbaa !58
  %1124 = getelementptr inbounds nuw i8, ptr %1122, i64 %1116
  store i8 %1123, ptr %1124, align 1, !tbaa !8
  %1125 = load i64, ptr %1012, align 8, !tbaa !60
  %1126 = trunc i64 %1125 to i8
  %1127 = load i64, ptr %59, align 8, !tbaa !58
  %1128 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1127, i64 1), !nosanitize !49
  %1129 = extractvalue { i64, i1 } %1128, 1, !nosanitize !49
  br i1 %1129, label %1130, label %1131, !prof !50, !nosanitize !49

1130:                                             ; preds = %1120
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1131:                                             ; preds = %1120
  %1132 = extractvalue { i64, i1 } %1128, 0, !nosanitize !49
  %1133 = load ptr, ptr %1111, align 8, !tbaa !44
  %1134 = lshr i64 %1125, 8
  %1135 = trunc i64 %1134 to i8
  store i64 %1132, ptr %59, align 8, !tbaa !58
  %1136 = getelementptr inbounds nuw i8, ptr %1133, i64 %1127
  store i8 %1135, ptr %1136, align 1, !tbaa !8
  %1137 = load i64, ptr %59, align 8, !tbaa !58
  %1138 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1137, i64 1), !nosanitize !49
  %1139 = extractvalue { i64, i1 } %1138, 1, !nosanitize !49
  br i1 %1139, label %1140, label %1141, !prof !50, !nosanitize !49

1140:                                             ; preds = %1131
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1141:                                             ; preds = %1131
  %1142 = extractvalue { i64, i1 } %1138, 0, !nosanitize !49
  %1143 = load ptr, ptr %1111, align 8, !tbaa !44
  store i64 %1142, ptr %59, align 8, !tbaa !58
  %1144 = getelementptr inbounds nuw i8, ptr %1143, i64 %1137
  store i8 %1126, ptr %1144, align 1, !tbaa !8
  br label %1145

1145:                                             ; preds = %1141, %1095
  tail call fastcc void @flush_pending(ptr noundef %0)
  %1146 = load i32, ptr %1007, align 8, !tbaa !30
  %1147 = icmp sgt i32 %1146, 0
  br i1 %1147, label %1148, label %1150

1148:                                             ; preds = %1145
  %1149 = sub nsw i32 0, %1146
  store i32 %1149, ptr %1007, align 8, !tbaa !30
  br label %1150

1150:                                             ; preds = %1148, %1145
  %1151 = load i64, ptr %59, align 8, !tbaa !58
  %1152 = icmp eq i64 %1151, 0
  %1153 = zext i1 %1152 to i32
  br label %1154

1154:                                             ; preds = %1150, %1006, %1005, %1004, %973, %970, %930, %901, %840, %723, %644, %343, %237, %124, %116, %103, %53, %46, %23
  %1155 = phi i32 [ -5, %116 ], [ -2, %46 ], [ -5, %53 ], [ 0, %103 ], [ -5, %124 ], [ 0, %343 ], [ 0, %901 ], [ 0, %930 ], [ -2, %23 ], [ 0, %1005 ], [ %1153, %1150 ], [ 1, %1006 ], [ 0, %840 ], [ 0, %723 ], [ 0, %644 ], [ 0, %237 ], [ 0, %973 ], [ 0, %1004 ], [ 0, %970 ]
  ret i32 %1155
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !49
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !49
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !49
  br i1 %11, label %12, label %13, !prof !50, !nosanitize !49

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !49
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !49
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !49
  br i1 %17, label %18, label %19, !prof !50, !nosanitize !49

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !49
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !49
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !49
  br i1 %22, label %23, label %24, !prof !50, !nosanitize !49

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !49
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !49
  %30 = extractvalue { i64, i1 } %29, 0, !nosanitize !49
  %31 = lshr i64 %1, 7
  %32 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %30, i64 %31), !nosanitize !49
  %33 = extractvalue { i64, i1 } %32, 0, !nosanitize !49
  %34 = lshr i64 %1, 11
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !49
  %36 = extractvalue { i64, i1 } %35, 0, !nosanitize !49
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %36, i64 7), !nosanitize !49
  %38 = extractvalue { i64, i1 } %37, 0, !nosanitize !49
  %39 = icmp ult i64 %38, %1
  %40 = select i1 %39, i64 -1, i64 %38
  %41 = icmp eq ptr %0, null
  br i1 %41, label %66, label %42

42:                                               ; preds = %24
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %66, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %48 = load ptr, ptr %47, align 8, !tbaa !17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %52, align 8, !tbaa !20
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %59 = load i32, ptr %58, align 8, !tbaa !29
  switch i32 %59, label %66 [
    i32 42, label %60
    i32 57, label %60
    i32 69, label %60
    i32 73, label %60
    i32 91, label %60
    i32 103, label %60
    i32 113, label %60
    i32 666, label %60
  ]

60:                                               ; preds = %57, %57, %57, %57, %57, %57, %57, %57
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %62 = load ptr, ptr %61, align 8, !tbaa !19
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 48
  %64 = load i32, ptr %63, align 8, !tbaa !30
  %65 = tail call i32 @llvm.abs.i32(i32 %64, i1 true)
  switch i32 %65, label %144 [
    i32 0, label %145
    i32 1, label %72
    i32 2, label %77
  ]

66:                                               ; preds = %57, %54, %50, %46, %42, %24
  %67 = tail call i64 @llvm.umax.i64(i64 %27, i64 %40)
  %68 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %67, i64 18), !nosanitize !49
  %69 = extractvalue { i64, i1 } %68, 0, !nosanitize !49
  %70 = extractvalue { i64, i1 } %68, 1, !nosanitize !49
  br i1 %70, label %71, label %190, !prof !50, !nosanitize !49

71:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

72:                                               ; preds = %60
  %73 = getelementptr inbounds nuw i8, ptr %62, i64 172
  %74 = load i32, ptr %73, align 4, !tbaa !74
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i64 6, i64 10
  br label %145

77:                                               ; preds = %60
  %78 = getelementptr inbounds nuw i8, ptr %62, i64 56
  %79 = load ptr, ptr %78, align 8, !tbaa !31
  %80 = icmp eq ptr %79, null
  br i1 %80, label %145, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw i8, ptr %79, i64 24
  %83 = load ptr, ptr %82, align 8, !tbaa !105
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds nuw i8, ptr %79, i64 32
  %87 = load i32, ptr %86, align 8, !tbaa !110
  %88 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %87, i32 2), !nosanitize !49
  %89 = extractvalue { i32, i1 } %88, 1, !nosanitize !49
  br i1 %89, label %90, label %91, !prof !50, !nosanitize !49

90:                                               ; preds = %85
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

91:                                               ; preds = %85
  %92 = extractvalue { i32, i1 } %88, 0, !nosanitize !49
  %93 = zext i32 %92 to i64
  %94 = add nuw nsw i64 %93, 18
  br label %95

95:                                               ; preds = %91, %81
  %96 = phi i64 [ %94, %91 ], [ 18, %81 ]
  %97 = getelementptr inbounds nuw i8, ptr %79, i64 40
  %98 = load ptr, ptr %97, align 8, !tbaa !104
  %99 = icmp eq ptr %98, null
  br i1 %99, label %114, label %100

100:                                              ; preds = %95
  %101 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %96, i64 1), !nosanitize !49
  %102 = extractvalue { i64, i1 } %101, 1, !nosanitize !49
  br i1 %102, label %107, label %108, !prof !117, !nosanitize !49

103:                                              ; preds = %108
  %104 = getelementptr inbounds nuw i8, ptr %110, i64 1
  %105 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %111, i64 1), !nosanitize !49
  %106 = extractvalue { i64, i1 } %105, 1, !nosanitize !49
  br i1 %106, label %107, label %108, !prof !118, !llvm.loop !119, !nosanitize !49

107:                                              ; preds = %103, %100
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

108:                                              ; preds = %103, %100
  %109 = phi { i64, i1 } [ %105, %103 ], [ %101, %100 ]
  %110 = phi ptr [ %104, %103 ], [ %98, %100 ]
  %111 = extractvalue { i64, i1 } %109, 0, !nosanitize !49
  %112 = load i8, ptr %110, align 1, !tbaa !8
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %103, !llvm.loop !119

114:                                              ; preds = %108, %95
  %115 = phi i64 [ %96, %95 ], [ %111, %108 ]
  %116 = getelementptr inbounds nuw i8, ptr %79, i64 56
  %117 = load ptr, ptr %116, align 8, !tbaa !102
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
  br i1 %125, label %126, label %127, !prof !118, !llvm.loop !120, !nosanitize !49

126:                                              ; preds = %122, %119
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

127:                                              ; preds = %122, %119
  %128 = phi { i64, i1 } [ %124, %122 ], [ %120, %119 ]
  %129 = phi ptr [ %123, %122 ], [ %117, %119 ]
  %130 = extractvalue { i64, i1 } %128, 0, !nosanitize !49
  %131 = load i8, ptr %129, align 1, !tbaa !8
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %122, !llvm.loop !120

133:                                              ; preds = %127, %114
  %134 = phi i64 [ %115, %114 ], [ %130, %127 ]
  %135 = getelementptr inbounds nuw i8, ptr %79, i64 68
  %136 = load i32, ptr %135, align 4, !tbaa !107
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %133
  %139 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %134, i64 2), !nosanitize !49
  %140 = extractvalue { i64, i1 } %139, 1, !nosanitize !49
  br i1 %140, label %141, label %142, !prof !50, !nosanitize !49

141:                                              ; preds = %138
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

142:                                              ; preds = %138
  %143 = extractvalue { i64, i1 } %139, 0, !nosanitize !49
  br label %145

144:                                              ; preds = %60
  br label %145

145:                                              ; preds = %144, %142, %133, %77, %72, %60
  %146 = phi i64 [ 18, %144 ], [ 18, %77 ], [ %76, %72 ], [ 0, %60 ], [ %143, %142 ], [ %134, %133 ]
  %147 = getelementptr inbounds nuw i8, ptr %62, i64 84
  %148 = load i32, ptr %147, align 4, !tbaa !32
  %149 = icmp eq i32 %148, 15
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = getelementptr inbounds nuw i8, ptr %62, i64 136
  %152 = load i32, ptr %151, align 8, !tbaa !35
  %153 = icmp eq i32 %152, 15
  br i1 %153, label %169, label %154

154:                                              ; preds = %150, %145
  %155 = getelementptr inbounds nuw i8, ptr %62, i64 136
  %156 = load i32, ptr %155, align 8, !tbaa !35
  %157 = icmp ugt i32 %148, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds nuw i8, ptr %62, i64 196
  %160 = load i32, ptr %159, align 4, !tbaa !52
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %154
  br label %163

163:                                              ; preds = %162, %158
  %164 = phi i64 [ %40, %162 ], [ %27, %158 ]
  %165 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %164, i64 %146), !nosanitize !49
  %166 = extractvalue { i64, i1 } %165, 0, !nosanitize !49
  %167 = extractvalue { i64, i1 } %165, 1, !nosanitize !49
  br i1 %167, label %168, label %190, !prof !50, !nosanitize !49

168:                                              ; preds = %163
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

169:                                              ; preds = %150
  %170 = lshr i64 %1, 12
  %171 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %170), !nosanitize !49
  %172 = extractvalue { i64, i1 } %171, 0, !nosanitize !49
  %173 = lshr i64 %1, 14
  %174 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %172, i64 %173), !nosanitize !49
  %175 = extractvalue { i64, i1 } %174, 0, !nosanitize !49
  %176 = lshr i64 %1, 25
  %177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %175, i64 %176), !nosanitize !49
  %178 = extractvalue { i64, i1 } %177, 0, !nosanitize !49
  %179 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %178, i64 13), !nosanitize !49
  %180 = extractvalue { i64, i1 } %179, 0, !nosanitize !49
  %181 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %180, i64 6), !nosanitize !49
  %182 = extractvalue { i64, i1 } %181, 0, !nosanitize !49
  %183 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %182, i64 %146), !nosanitize !49
  %184 = extractvalue { i64, i1 } %183, 1, !nosanitize !49
  br i1 %184, label %185, label %186, !prof !50, !nosanitize !49

185:                                              ; preds = %169
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

186:                                              ; preds = %169
  %187 = extractvalue { i64, i1 } %183, 0, !nosanitize !49
  %188 = icmp ult i64 %187, %1
  %189 = select i1 %188, i64 -1, i64 %187
  br label %190

190:                                              ; preds = %186, %163, %66
  %191 = phi i64 [ %189, %186 ], [ %69, %66 ], [ %166, %163 ]
  ret i64 %191
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly captures(address) %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = lshr i64 %1, 3
  %4 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %3), !nosanitize !49
  %5 = extractvalue { i64, i1 } %4, 1, !nosanitize !49
  br i1 %5, label %6, label %7, !prof !50, !nosanitize !49

6:                                                ; preds = %2
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

7:                                                ; preds = %2
  %8 = extractvalue { i64, i1 } %4, 0, !nosanitize !49
  %9 = lshr i64 %1, 8
  %10 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %9), !nosanitize !49
  %11 = extractvalue { i64, i1 } %10, 1, !nosanitize !49
  br i1 %11, label %12, label %13, !prof !50, !nosanitize !49

12:                                               ; preds = %7
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

13:                                               ; preds = %7
  %14 = extractvalue { i64, i1 } %10, 0, !nosanitize !49
  %15 = lshr i64 %1, 9
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %15), !nosanitize !49
  %17 = extractvalue { i64, i1 } %16, 1, !nosanitize !49
  br i1 %17, label %18, label %19, !prof !50, !nosanitize !49

18:                                               ; preds = %13
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

19:                                               ; preds = %13
  %20 = extractvalue { i64, i1 } %16, 0, !nosanitize !49
  %21 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %20, i64 4), !nosanitize !49
  %22 = extractvalue { i64, i1 } %21, 1, !nosanitize !49
  br i1 %22, label %23, label %24, !prof !50, !nosanitize !49

23:                                               ; preds = %19
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

24:                                               ; preds = %19
  %25 = extractvalue { i64, i1 } %21, 0, !nosanitize !49
  %26 = icmp ult i64 %25, %1
  %27 = select i1 %26, i64 -1, i64 %25
  %28 = lshr i64 %1, 5
  %29 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %28), !nosanitize !49
  %30 = extractvalue { i64, i1 } %29, 0, !nosanitize !49
  %31 = lshr i64 %1, 7
  %32 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %30, i64 %31), !nosanitize !49
  %33 = extractvalue { i64, i1 } %32, 0, !nosanitize !49
  %34 = lshr i64 %1, 11
  %35 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %33, i64 %34), !nosanitize !49
  %36 = extractvalue { i64, i1 } %35, 0, !nosanitize !49
  %37 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %36, i64 7), !nosanitize !49
  %38 = extractvalue { i64, i1 } %37, 0, !nosanitize !49
  %39 = icmp ult i64 %38, %1
  %40 = select i1 %39, i64 -1, i64 %38
  %41 = icmp eq ptr %0, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %24
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %48 = load ptr, ptr %47, align 8, !tbaa !17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %52 = load ptr, ptr %51, align 8, !tbaa !19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %52, align 8, !tbaa !20
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %59 = load i32, ptr %58, align 8, !tbaa !29
  switch i32 %59, label %64 [
    i32 42, label %60
    i32 57, label %60
    i32 69, label %60
    i32 73, label %60
    i32 91, label %60
    i32 103, label %60
    i32 113, label %60
    i32 666, label %60
  ]

60:                                               ; preds = %57, %57, %57, %57, %57, %57, %57, %57
  %61 = getelementptr inbounds nuw i8, ptr %52, i64 48
  %62 = load i32, ptr %61, align 8, !tbaa !30
  %63 = tail call i32 @llvm.abs.i32(i32 %62, i1 true)
  switch i32 %63, label %142 [
    i32 0, label %143
    i32 1, label %70
    i32 2, label %75
  ]

64:                                               ; preds = %57, %54, %50, %46, %42, %24
  %65 = tail call i64 @llvm.umax.i64(i64 %27, i64 %40)
  %66 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %65, i64 18), !nosanitize !49
  %67 = extractvalue { i64, i1 } %66, 0, !nosanitize !49
  %68 = extractvalue { i64, i1 } %66, 1, !nosanitize !49
  br i1 %68, label %69, label %188, !prof !50, !nosanitize !49

69:                                               ; preds = %64
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

70:                                               ; preds = %60
  %71 = getelementptr inbounds nuw i8, ptr %52, i64 172
  %72 = load i32, ptr %71, align 4, !tbaa !74
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i64 6, i64 10
  br label %143

75:                                               ; preds = %60
  %76 = getelementptr inbounds nuw i8, ptr %52, i64 56
  %77 = load ptr, ptr %76, align 8, !tbaa !31
  %78 = icmp eq ptr %77, null
  br i1 %78, label %143, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 24
  %81 = load ptr, ptr %80, align 8, !tbaa !105
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds nuw i8, ptr %77, i64 32
  %85 = load i32, ptr %84, align 8, !tbaa !110
  %86 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %85, i32 2), !nosanitize !49
  %87 = extractvalue { i32, i1 } %86, 1, !nosanitize !49
  br i1 %87, label %88, label %89, !prof !50, !nosanitize !49

88:                                               ; preds = %83
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

89:                                               ; preds = %83
  %90 = extractvalue { i32, i1 } %86, 0, !nosanitize !49
  %91 = zext i32 %90 to i64
  %92 = add nuw nsw i64 %91, 18
  br label %93

93:                                               ; preds = %89, %79
  %94 = phi i64 [ %92, %89 ], [ 18, %79 ]
  %95 = getelementptr inbounds nuw i8, ptr %77, i64 40
  %96 = load ptr, ptr %95, align 8, !tbaa !104
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %93
  %99 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 1), !nosanitize !49
  %100 = extractvalue { i64, i1 } %99, 1, !nosanitize !49
  br i1 %100, label %105, label %106, !prof !117, !nosanitize !49

101:                                              ; preds = %106
  %102 = getelementptr inbounds nuw i8, ptr %108, i64 1
  %103 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %109, i64 1), !nosanitize !49
  %104 = extractvalue { i64, i1 } %103, 1, !nosanitize !49
  br i1 %104, label %105, label %106, !prof !118, !llvm.loop !119, !nosanitize !49

105:                                              ; preds = %101, %98
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

106:                                              ; preds = %101, %98
  %107 = phi { i64, i1 } [ %103, %101 ], [ %99, %98 ]
  %108 = phi ptr [ %102, %101 ], [ %96, %98 ]
  %109 = extractvalue { i64, i1 } %107, 0, !nosanitize !49
  %110 = load i8, ptr %108, align 1, !tbaa !8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %101, !llvm.loop !119

112:                                              ; preds = %106, %93
  %113 = phi i64 [ %94, %93 ], [ %109, %106 ]
  %114 = getelementptr inbounds nuw i8, ptr %77, i64 56
  %115 = load ptr, ptr %114, align 8, !tbaa !102
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
  br i1 %123, label %124, label %125, !prof !118, !llvm.loop !120, !nosanitize !49

124:                                              ; preds = %120, %117
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

125:                                              ; preds = %120, %117
  %126 = phi { i64, i1 } [ %122, %120 ], [ %118, %117 ]
  %127 = phi ptr [ %121, %120 ], [ %115, %117 ]
  %128 = extractvalue { i64, i1 } %126, 0, !nosanitize !49
  %129 = load i8, ptr %127, align 1, !tbaa !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %120, !llvm.loop !120

131:                                              ; preds = %125, %112
  %132 = phi i64 [ %113, %112 ], [ %128, %125 ]
  %133 = getelementptr inbounds nuw i8, ptr %77, i64 68
  %134 = load i32, ptr %133, align 4, !tbaa !107
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %131
  %137 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 2), !nosanitize !49
  %138 = extractvalue { i64, i1 } %137, 1, !nosanitize !49
  br i1 %138, label %139, label %140, !prof !50, !nosanitize !49

139:                                              ; preds = %136
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

140:                                              ; preds = %136
  %141 = extractvalue { i64, i1 } %137, 0, !nosanitize !49
  br label %143

142:                                              ; preds = %60
  br label %143

143:                                              ; preds = %142, %140, %131, %75, %70, %60
  %144 = phi i64 [ 18, %142 ], [ 18, %75 ], [ %74, %70 ], [ 0, %60 ], [ %141, %140 ], [ %132, %131 ]
  %145 = getelementptr inbounds nuw i8, ptr %52, i64 84
  %146 = load i32, ptr %145, align 4, !tbaa !32
  %147 = icmp eq i32 %146, 15
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = getelementptr inbounds nuw i8, ptr %52, i64 136
  %150 = load i32, ptr %149, align 8, !tbaa !35
  %151 = icmp eq i32 %150, 15
  br i1 %151, label %167, label %152

152:                                              ; preds = %148, %143
  %153 = getelementptr inbounds nuw i8, ptr %52, i64 136
  %154 = load i32, ptr %153, align 8, !tbaa !35
  %155 = icmp ugt i32 %146, %154
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds nuw i8, ptr %52, i64 196
  %158 = load i32, ptr %157, align 4, !tbaa !52
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156, %152
  br label %161

161:                                              ; preds = %160, %156
  %162 = phi i64 [ %40, %160 ], [ %27, %156 ]
  %163 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %162, i64 %144), !nosanitize !49
  %164 = extractvalue { i64, i1 } %163, 0, !nosanitize !49
  %165 = extractvalue { i64, i1 } %163, 1, !nosanitize !49
  br i1 %165, label %166, label %188, !prof !50, !nosanitize !49

166:                                              ; preds = %161
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

167:                                              ; preds = %148
  %168 = lshr i64 %1, 12
  %169 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %168), !nosanitize !49
  %170 = extractvalue { i64, i1 } %169, 0, !nosanitize !49
  %171 = lshr i64 %1, 14
  %172 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %170, i64 %171), !nosanitize !49
  %173 = extractvalue { i64, i1 } %172, 0, !nosanitize !49
  %174 = lshr i64 %1, 25
  %175 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %173, i64 %174), !nosanitize !49
  %176 = extractvalue { i64, i1 } %175, 0, !nosanitize !49
  %177 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %176, i64 13), !nosanitize !49
  %178 = extractvalue { i64, i1 } %177, 0, !nosanitize !49
  %179 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %178, i64 6), !nosanitize !49
  %180 = extractvalue { i64, i1 } %179, 0, !nosanitize !49
  %181 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %180, i64 %144), !nosanitize !49
  %182 = extractvalue { i64, i1 } %181, 1, !nosanitize !49
  br i1 %182, label %183, label %184, !prof !50, !nosanitize !49

183:                                              ; preds = %167
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

184:                                              ; preds = %167
  %185 = extractvalue { i64, i1 } %181, 0, !nosanitize !49
  %186 = icmp ult i64 %185, %1
  %187 = select i1 %186, i64 -1, i64 %185
  br label %188

188:                                              ; preds = %184, %161, %64
  %189 = phi i64 [ %187, %184 ], [ %67, %64 ], [ %164, %161 ]
  ret i64 %189
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_pending(ptr noundef captures(none) %0) unnamed_addr #0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %3) #11
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

26:                                               ; preds = %12
  %27 = extractvalue { i64, i1 } %23, 0, !nosanitize !49
  store i64 %27, ptr %21, align 8, !tbaa !101
  %28 = load i32, ptr %6, align 8, !tbaa !100
  %29 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 %10), !nosanitize !49
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !49
  br i1 %30, label %31, label %32, !prof !50, !nosanitize !49

31:                                               ; preds = %26
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !49
  store i32 %33, ptr %6, align 8, !tbaa !100
  %34 = load i64, ptr %4, align 8, !tbaa !58
  %35 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %9), !nosanitize !49
  %36 = extractvalue { i64, i1 } %35, 1, !nosanitize !49
  br i1 %36, label %37, label %38, !prof !50, !nosanitize !49

37:                                               ; preds = %32
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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

27:                                               ; preds = %259, %8
  %28 = load i32, ptr %18, align 4, !tbaa !94
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %28, i32 42), !nosanitize !49
  %30 = extractvalue { i32, i1 } %29, 1, !nosanitize !49
  br i1 %30, label %31, label %32, !prof !50, !nosanitize !49

31:                                               ; preds = %27
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

32:                                               ; preds = %27
  %33 = extractvalue { i32, i1 } %29, 0, !nosanitize !49
  %34 = lshr i32 %33, 3
  %35 = load ptr, ptr %0, align 8, !tbaa !20
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  %37 = load i32, ptr %36, align 8, !tbaa !100
  %38 = icmp ult i32 %37, %34
  br i1 %38, label %261, label %39

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
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !49
  %53 = extractvalue { i32, i1 } %52, 0, !nosanitize !49
  br label %54

54:                                               ; preds = %51, %39
  %55 = phi i32 [ %53, %51 ], [ 65535, %39 ]
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 %40)
  %57 = icmp ult i32 %56, %14
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = icmp eq i32 %56, 0
  %60 = and i1 %21, %59
  %61 = or i1 %22, %60
  br i1 %61, label %261, label %62

62:                                               ; preds = %58
  %63 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !49
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !49
  br i1 %64, label %65, label %66, !prof !50, !nosanitize !49

65:                                               ; preds = %62
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

66:                                               ; preds = %62
  %67 = extractvalue { i32, i1 } %63, 0, !nosanitize !49
  %68 = icmp eq i32 %56, %67
  br i1 %68, label %69, label %261

69:                                               ; preds = %66, %54
  br i1 %23, label %70, label %78

70:                                               ; preds = %69
  %71 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %44, i32 %46), !nosanitize !49
  %72 = extractvalue { i32, i1 } %71, 1, !nosanitize !49
  br i1 %72, label %73, label %74, !prof !50, !nosanitize !49

73:                                               ; preds = %70
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

74:                                               ; preds = %70
  %75 = extractvalue { i32, i1 } %71, 0, !nosanitize !49
  %76 = icmp eq i32 %56, %75
  %77 = zext i1 %76 to i32
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi i32 [ 0, %69 ], [ %77, %74 ]
  tail call void @_tr_stored_block(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef %79) #11
  %80 = load i64, ptr %25, align 8, !tbaa !58
  %81 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %80, i64 4), !nosanitize !49
  %82 = extractvalue { i64, i1 } %81, 1, !nosanitize !49
  br i1 %82, label %83, label %84, !prof !50, !nosanitize !49

83:                                               ; preds = %78
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

84:                                               ; preds = %78
  %85 = extractvalue { i64, i1 } %81, 0, !nosanitize !49
  %86 = load ptr, ptr %24, align 8, !tbaa !44
  %87 = trunc i32 %56 to i8
  %88 = getelementptr inbounds nuw i8, ptr %86, i64 %85
  store i8 %87, ptr %88, align 1, !tbaa !8
  %89 = load i64, ptr %25, align 8, !tbaa !58
  %90 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %89, i64 3), !nosanitize !49
  %91 = extractvalue { i64, i1 } %90, 1, !nosanitize !49
  br i1 %91, label %92, label %93, !prof !50, !nosanitize !49

92:                                               ; preds = %84
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

93:                                               ; preds = %84
  %94 = extractvalue { i64, i1 } %90, 0, !nosanitize !49
  %95 = load ptr, ptr %24, align 8, !tbaa !44
  %96 = lshr i32 %56, 8
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds nuw i8, ptr %95, i64 %94
  store i8 %97, ptr %98, align 1, !tbaa !8
  %99 = load i64, ptr %25, align 8, !tbaa !58
  %100 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %99, i64 2), !nosanitize !49
  %101 = extractvalue { i64, i1 } %100, 1, !nosanitize !49
  br i1 %101, label %102, label %103, !prof !50, !nosanitize !49

102:                                              ; preds = %93
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

103:                                              ; preds = %93
  %104 = extractvalue { i64, i1 } %100, 0, !nosanitize !49
  %105 = load ptr, ptr %24, align 8, !tbaa !44
  %106 = xor i32 %56, -1
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds nuw i8, ptr %105, i64 %104
  store i8 %107, ptr %108, align 1, !tbaa !8
  %109 = load i64, ptr %25, align 8, !tbaa !58
  %110 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %109, i64 1), !nosanitize !49
  %111 = extractvalue { i64, i1 } %110, 1, !nosanitize !49
  br i1 %111, label %112, label %113, !prof !50, !nosanitize !49

112:                                              ; preds = %103
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

113:                                              ; preds = %103
  %114 = extractvalue { i64, i1 } %110, 0, !nosanitize !49
  %115 = load ptr, ptr %24, align 8, !tbaa !44
  %116 = lshr i32 %106, 8
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds nuw i8, ptr %115, i64 %114
  store i8 %117, ptr %118, align 1, !tbaa !8
  %119 = load ptr, ptr %0, align 8, !tbaa !20
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 56
  %121 = load ptr, ptr %120, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %121) #11
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 40
  %123 = load i64, ptr %122, align 8, !tbaa !58
  %124 = getelementptr inbounds nuw i8, ptr %119, i64 32
  %125 = load i32, ptr %124, align 8, !tbaa !100
  %126 = zext i32 %125 to i64
  %127 = tail call i64 @llvm.umin.i64(i64 %123, i64 %126)
  %128 = trunc nuw i64 %127 to i32
  %129 = icmp eq i64 %127, 0
  br i1 %129, label %162, label %130

130:                                              ; preds = %113
  %131 = getelementptr inbounds nuw i8, ptr %119, i64 24
  %132 = load ptr, ptr %131, align 8, !tbaa !99
  %133 = getelementptr inbounds nuw i8, ptr %121, i64 32
  %134 = load ptr, ptr %133, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %132, ptr align 1 %134, i64 %127, i1 false)
  %135 = load ptr, ptr %131, align 8, !tbaa !99
  %136 = getelementptr inbounds nuw i8, ptr %135, i64 %127
  store ptr %136, ptr %131, align 8, !tbaa !99
  %137 = load ptr, ptr %133, align 8, !tbaa !59
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 %127
  store ptr %138, ptr %133, align 8, !tbaa !59
  %139 = getelementptr inbounds nuw i8, ptr %119, i64 40
  %140 = load i64, ptr %139, align 8, !tbaa !101
  %141 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %140, i64 %127), !nosanitize !49
  %142 = extractvalue { i64, i1 } %141, 1, !nosanitize !49
  br i1 %142, label %143, label %144, !prof !50, !nosanitize !49

143:                                              ; preds = %130
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

144:                                              ; preds = %130
  %145 = extractvalue { i64, i1 } %141, 0, !nosanitize !49
  store i64 %145, ptr %139, align 8, !tbaa !101
  %146 = load i32, ptr %124, align 8, !tbaa !100
  %147 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %146, i32 %128), !nosanitize !49
  %148 = extractvalue { i32, i1 } %147, 1, !nosanitize !49
  br i1 %148, label %149, label %150, !prof !50, !nosanitize !49

149:                                              ; preds = %144
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

150:                                              ; preds = %144
  %151 = extractvalue { i32, i1 } %147, 0, !nosanitize !49
  store i32 %151, ptr %124, align 8, !tbaa !100
  %152 = load i64, ptr %122, align 8, !tbaa !58
  %153 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %152, i64 %127), !nosanitize !49
  %154 = extractvalue { i64, i1 } %153, 1, !nosanitize !49
  br i1 %154, label %155, label %156, !prof !50, !nosanitize !49

155:                                              ; preds = %150
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

156:                                              ; preds = %150
  %157 = extractvalue { i64, i1 } %153, 0, !nosanitize !49
  store i64 %157, ptr %122, align 8, !tbaa !58
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = getelementptr inbounds nuw i8, ptr %121, i64 16
  %161 = load ptr, ptr %160, align 8, !tbaa !44
  store ptr %161, ptr %133, align 8, !tbaa !59
  br label %162

162:                                              ; preds = %159, %156, %113
  %163 = icmp eq i32 %41, %43
  br i1 %163, label %198, label %164

164:                                              ; preds = %162
  %165 = tail call i32 @llvm.umin.i32(i32 %44, i32 %56)
  %166 = load ptr, ptr %0, align 8, !tbaa !20
  %167 = getelementptr inbounds nuw i8, ptr %166, i64 24
  %168 = load ptr, ptr %167, align 8, !tbaa !99
  %169 = load ptr, ptr %26, align 8, !tbaa !39
  %170 = load i64, ptr %20, align 8, !tbaa !75
  %171 = getelementptr inbounds i8, ptr %169, i64 %170
  %172 = zext i32 %165 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %168, ptr align 1 %171, i64 %172, i1 false)
  %173 = load ptr, ptr %0, align 8, !tbaa !20
  %174 = getelementptr inbounds nuw i8, ptr %173, i64 24
  %175 = load ptr, ptr %174, align 8, !tbaa !99
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 %172
  store ptr %176, ptr %174, align 8, !tbaa !99
  %177 = getelementptr inbounds nuw i8, ptr %173, i64 32
  %178 = load i32, ptr %177, align 8, !tbaa !100
  %179 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %178, i32 %165), !nosanitize !49
  %180 = extractvalue { i32, i1 } %179, 1, !nosanitize !49
  br i1 %180, label %181, label %182, !prof !50, !nosanitize !49

181:                                              ; preds = %164
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

182:                                              ; preds = %164
  %183 = extractvalue { i32, i1 } %179, 0, !nosanitize !49
  store i32 %183, ptr %177, align 8, !tbaa !100
  %184 = getelementptr inbounds nuw i8, ptr %173, i64 40
  %185 = load i64, ptr %184, align 8, !tbaa !101
  %186 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %185, i64 %172), !nosanitize !49
  %187 = extractvalue { i64, i1 } %186, 1, !nosanitize !49
  br i1 %187, label %188, label %189, !prof !50, !nosanitize !49

188:                                              ; preds = %182
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

189:                                              ; preds = %182
  %190 = extractvalue { i64, i1 } %186, 0, !nosanitize !49
  store i64 %190, ptr %184, align 8, !tbaa !101
  %191 = load i64, ptr %20, align 8, !tbaa !75
  %192 = add nsw i64 %191, %172
  store i64 %192, ptr %20, align 8, !tbaa !75
  %193 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %56, i32 %165), !nosanitize !49
  %194 = extractvalue { i32, i1 } %193, 1, !nosanitize !49
  br i1 %194, label %195, label %196, !prof !50, !nosanitize !49

195:                                              ; preds = %189
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

196:                                              ; preds = %189
  %197 = extractvalue { i32, i1 } %193, 0, !nosanitize !49
  br label %198

198:                                              ; preds = %196, %162
  %199 = phi i32 [ %197, %196 ], [ %56, %162 ]
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %259, label %201

201:                                              ; preds = %198
  %202 = load ptr, ptr %0, align 8, !tbaa !20
  %203 = getelementptr inbounds nuw i8, ptr %202, i64 24
  %204 = load ptr, ptr %203, align 8, !tbaa !99
  %205 = getelementptr inbounds nuw i8, ptr %202, i64 8
  %206 = load i32, ptr %205, align 8, !tbaa !82
  %207 = tail call i32 @llvm.umin.i32(i32 %206, i32 %199)
  %208 = icmp eq i32 %206, 0
  br i1 %208, label %239, label %209

209:                                              ; preds = %201
  %210 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %206, i32 %207), !nosanitize !49
  %211 = extractvalue { i32, i1 } %210, 1, !nosanitize !49
  br i1 %211, label %212, label %213, !prof !50, !nosanitize !49

212:                                              ; preds = %209
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

213:                                              ; preds = %209
  %214 = extractvalue { i32, i1 } %210, 0, !nosanitize !49
  store i32 %214, ptr %205, align 8, !tbaa !82
  %215 = load ptr, ptr %202, align 8, !tbaa !83
  %216 = zext i32 %207 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %204, ptr align 1 %215, i64 %216, i1 false)
  %217 = getelementptr inbounds nuw i8, ptr %202, i64 56
  %218 = load ptr, ptr %217, align 8, !tbaa !19
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 48
  %220 = load i32, ptr %219, align 8, !tbaa !30
  switch i32 %220, label %229 [
    i32 1, label %221
    i32 2, label %225
  ]

221:                                              ; preds = %213
  %222 = getelementptr inbounds nuw i8, ptr %202, i64 96
  %223 = load i64, ptr %222, align 8, !tbaa !60
  %224 = tail call i64 @adler32(i64 noundef %223, ptr noundef %204, i32 noundef %207) #11
  store i64 %224, ptr %222, align 8, !tbaa !60
  br label %229

225:                                              ; preds = %213
  %226 = getelementptr inbounds nuw i8, ptr %202, i64 96
  %227 = load i64, ptr %226, align 8, !tbaa !60
  %228 = tail call i64 @crc32(i64 noundef %227, ptr noundef %204, i32 noundef %207) #11
  store i64 %228, ptr %226, align 8, !tbaa !60
  br label %229

229:                                              ; preds = %225, %221, %213
  %230 = load ptr, ptr %202, align 8, !tbaa !83
  %231 = getelementptr inbounds nuw i8, ptr %230, i64 %216
  store ptr %231, ptr %202, align 8, !tbaa !83
  %232 = getelementptr inbounds nuw i8, ptr %202, i64 16
  %233 = load i64, ptr %232, align 8, !tbaa !56
  %234 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %233, i64 %216), !nosanitize !49
  %235 = extractvalue { i64, i1 } %234, 1, !nosanitize !49
  br i1 %235, label %236, label %237, !prof !50, !nosanitize !49

236:                                              ; preds = %229
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

237:                                              ; preds = %229
  %238 = extractvalue { i64, i1 } %234, 0, !nosanitize !49
  store i64 %238, ptr %232, align 8, !tbaa !56
  br label %239

239:                                              ; preds = %237, %201
  %240 = load ptr, ptr %0, align 8, !tbaa !20
  %241 = getelementptr inbounds nuw i8, ptr %240, i64 24
  %242 = load ptr, ptr %241, align 8, !tbaa !99
  %243 = zext i32 %199 to i64
  %244 = getelementptr inbounds nuw i8, ptr %242, i64 %243
  store ptr %244, ptr %241, align 8, !tbaa !99
  %245 = getelementptr inbounds nuw i8, ptr %240, i64 32
  %246 = load i32, ptr %245, align 8, !tbaa !100
  %247 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %246, i32 %199), !nosanitize !49
  %248 = extractvalue { i32, i1 } %247, 1, !nosanitize !49
  br i1 %248, label %249, label %250, !prof !50, !nosanitize !49

249:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

250:                                              ; preds = %239
  %251 = extractvalue { i32, i1 } %247, 0, !nosanitize !49
  store i32 %251, ptr %245, align 8, !tbaa !100
  %252 = getelementptr inbounds nuw i8, ptr %240, i64 40
  %253 = load i64, ptr %252, align 8, !tbaa !101
  %254 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %253, i64 %243), !nosanitize !49
  %255 = extractvalue { i64, i1 } %254, 1, !nosanitize !49
  br i1 %255, label %256, label %257, !prof !50, !nosanitize !49

256:                                              ; preds = %250
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

257:                                              ; preds = %250
  %258 = extractvalue { i64, i1 } %254, 0, !nosanitize !49
  store i64 %258, ptr %252, align 8, !tbaa !101
  br label %259

259:                                              ; preds = %257, %198
  %260 = icmp eq i32 %79, 0
  br i1 %260, label %27, label %261, !llvm.loop !121

261:                                              ; preds = %259, %66, %58, %32
  %262 = phi i1 [ true, %32 ], [ true, %58 ], [ true, %66 ], [ false, %259 ]
  %263 = getelementptr inbounds nuw i8, ptr %0, i64 5940
  %264 = load ptr, ptr %0, align 8, !tbaa !20
  %265 = getelementptr inbounds nuw i8, ptr %264, i64 8
  %266 = load i32, ptr %265, align 8, !tbaa !82
  %267 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %17, i32 %266), !nosanitize !49
  %268 = extractvalue { i32, i1 } %267, 0, !nosanitize !49
  %269 = extractvalue { i32, i1 } %267, 1, !nosanitize !49
  br i1 %269, label %270, label %271, !prof !50, !nosanitize !49

270:                                              ; preds = %261
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

271:                                              ; preds = %261
  %272 = icmp eq i32 %268, 0
  br i1 %272, label %357, label %273

273:                                              ; preds = %271
  %274 = load i32, ptr %10, align 8, !tbaa !33
  %275 = icmp ult i32 %268, %274
  br i1 %275, label %287, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  store i32 2, ptr %277, align 8, !tbaa !116
  %278 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %279 = load ptr, ptr %278, align 8, !tbaa !39
  %280 = load ptr, ptr %264, align 8, !tbaa !83
  %281 = zext i32 %274 to i64
  %282 = sub nsw i64 0, %281
  %283 = getelementptr inbounds i8, ptr %280, i64 %282
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %279, ptr align 1 %283, i64 %281, i1 false)
  %284 = load i32, ptr %10, align 8, !tbaa !33
  %285 = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %284, ptr %285, align 4, !tbaa !74
  %286 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %284, ptr %286, align 4, !tbaa !77
  br label %352

287:                                              ; preds = %273
  %288 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %289 = load i64, ptr %288, align 8, !tbaa !62
  %290 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %291 = load i32, ptr %290, align 4, !tbaa !74
  %292 = zext i32 %291 to i64
  %293 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %289, i64 %292), !nosanitize !49
  %294 = extractvalue { i64, i1 } %293, 1, !nosanitize !49
  br i1 %294, label %295, label %296, !prof !50, !nosanitize !49

295:                                              ; preds = %287
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

296:                                              ; preds = %287
  %297 = extractvalue { i64, i1 } %293, 0, !nosanitize !49
  %298 = zext i32 %268 to i64
  %299 = icmp ugt i64 %297, %298
  br i1 %299, label %322, label %300

300:                                              ; preds = %296
  %301 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %291, i32 %274), !nosanitize !49
  %302 = extractvalue { i32, i1 } %301, 1, !nosanitize !49
  br i1 %302, label %303, label %304, !prof !50, !nosanitize !49

303:                                              ; preds = %300
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

304:                                              ; preds = %300
  %305 = extractvalue { i32, i1 } %301, 0, !nosanitize !49
  store i32 %305, ptr %290, align 4, !tbaa !74
  %306 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %307 = load ptr, ptr %306, align 8, !tbaa !39
  %308 = zext i32 %274 to i64
  %309 = getelementptr inbounds nuw i8, ptr %307, i64 %308
  %310 = zext i32 %305 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %307, ptr nonnull align 1 %309, i64 %310, i1 false)
  %311 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %312 = load i32, ptr %311, align 8, !tbaa !116
  %313 = icmp ult i32 %312, 2
  br i1 %313, label %314, label %316

314:                                              ; preds = %304
  %315 = add nuw nsw i32 %312, 1
  store i32 %315, ptr %311, align 8, !tbaa !116
  br label %316

316:                                              ; preds = %314, %304
  %317 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %318 = load i32, ptr %317, align 4, !tbaa !77
  %319 = load i32, ptr %290, align 4, !tbaa !74
  %320 = icmp ugt i32 %318, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  store i32 %319, ptr %317, align 4, !tbaa !77
  br label %322

322:                                              ; preds = %321, %316, %296
  %323 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %324 = load ptr, ptr %323, align 8, !tbaa !39
  %325 = load i32, ptr %290, align 4, !tbaa !74
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds nuw i8, ptr %324, i64 %326
  %328 = load ptr, ptr %0, align 8, !tbaa !20
  %329 = load ptr, ptr %328, align 8, !tbaa !83
  %330 = sub nsw i64 0, %298
  %331 = getelementptr inbounds i8, ptr %329, i64 %330
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %327, ptr nonnull align 1 %331, i64 %298, i1 false)
  %332 = load i32, ptr %290, align 4, !tbaa !74
  %333 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %332, i32 %268), !nosanitize !49
  %334 = extractvalue { i32, i1 } %333, 1, !nosanitize !49
  br i1 %334, label %335, label %336, !prof !50, !nosanitize !49

335:                                              ; preds = %322
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

336:                                              ; preds = %322
  %337 = extractvalue { i32, i1 } %333, 0, !nosanitize !49
  store i32 %337, ptr %290, align 4, !tbaa !74
  %338 = load i32, ptr %10, align 8, !tbaa !33
  %339 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %340 = load i32, ptr %339, align 4, !tbaa !77
  %341 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %338, i32 %340), !nosanitize !49
  %342 = extractvalue { i32, i1 } %341, 1, !nosanitize !49
  br i1 %342, label %343, label %344, !prof !50, !nosanitize !49

343:                                              ; preds = %336
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

344:                                              ; preds = %336
  %345 = extractvalue { i32, i1 } %341, 0, !nosanitize !49
  %346 = tail call i32 @llvm.umin.i32(i32 %268, i32 %345)
  %347 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %340, i32 %346), !nosanitize !49
  %348 = extractvalue { i32, i1 } %347, 1, !nosanitize !49
  br i1 %348, label %349, label %350, !prof !50, !nosanitize !49

349:                                              ; preds = %344
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

350:                                              ; preds = %344
  %351 = extractvalue { i32, i1 } %347, 0, !nosanitize !49
  store i32 %351, ptr %339, align 4, !tbaa !77
  br label %352

352:                                              ; preds = %350, %276
  %353 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %354 = load i32, ptr %353, align 4, !tbaa !74
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %355, ptr %356, align 8, !tbaa !75
  br label %357

357:                                              ; preds = %352, %271
  %358 = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %359 = load i64, ptr %358, align 8, !tbaa !42
  %360 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %361 = load i32, ptr %360, align 4, !tbaa !74
  %362 = zext i32 %361 to i64
  %363 = icmp ult i64 %359, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %357
  store i64 %362, ptr %358, align 8, !tbaa !42
  br label %365

365:                                              ; preds = %364, %357
  br i1 %262, label %366, label %592

366:                                              ; preds = %365
  %367 = icmp ne i32 %1, 0
  switch i32 %1, label %368 [
    i32 4, label %377
    i32 0, label %377
  ]

368:                                              ; preds = %366
  %369 = load ptr, ptr %0, align 8, !tbaa !20
  %370 = getelementptr inbounds nuw i8, ptr %369, i64 8
  %371 = load i32, ptr %370, align 8, !tbaa !82
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %368
  %374 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %375 = load i64, ptr %374, align 8, !tbaa !75
  %376 = icmp eq i64 %375, %362
  br i1 %376, label %595, label %377

377:                                              ; preds = %373, %368, %366, %366
  %378 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %379 = load i64, ptr %378, align 8, !tbaa !62
  %380 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %379, i64 %362), !nosanitize !49
  %381 = extractvalue { i64, i1 } %380, 1, !nosanitize !49
  br i1 %381, label %382, label %383, !prof !50, !nosanitize !49

382:                                              ; preds = %377
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

383:                                              ; preds = %377
  %384 = extractvalue { i64, i1 } %380, 0, !nosanitize !49
  %385 = trunc i64 %384 to i32
  %386 = load ptr, ptr %0, align 8, !tbaa !20
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 8
  %388 = load i32, ptr %387, align 8, !tbaa !82
  %389 = icmp ugt i32 %388, %385
  br i1 %389, label %390, label %424

390:                                              ; preds = %383
  %391 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %392 = load i64, ptr %391, align 8, !tbaa !75
  %393 = load i32, ptr %10, align 8, !tbaa !33
  %394 = zext i32 %393 to i64
  %395 = icmp slt i64 %392, %394
  br i1 %395, label %424, label %396

396:                                              ; preds = %390
  %397 = sub nsw i64 %392, %394
  store i64 %397, ptr %391, align 8, !tbaa !75
  %398 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %361, i32 %393), !nosanitize !49
  %399 = extractvalue { i32, i1 } %398, 1, !nosanitize !49
  br i1 %399, label %400, label %401, !prof !50, !nosanitize !49

400:                                              ; preds = %396
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

401:                                              ; preds = %396
  %402 = extractvalue { i32, i1 } %398, 0, !nosanitize !49
  store i32 %402, ptr %360, align 4, !tbaa !74
  %403 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %404 = load ptr, ptr %403, align 8, !tbaa !39
  %405 = getelementptr inbounds nuw i8, ptr %404, i64 %394
  %406 = zext i32 %402 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %404, ptr align 1 %405, i64 %406, i1 false)
  %407 = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %408 = load i32, ptr %407, align 8, !tbaa !116
  %409 = icmp ult i32 %408, 2
  br i1 %409, label %410, label %412

410:                                              ; preds = %401
  %411 = add nuw nsw i32 %408, 1
  store i32 %411, ptr %407, align 8, !tbaa !116
  br label %412

412:                                              ; preds = %410, %401
  %413 = load i32, ptr %10, align 8, !tbaa !33
  %414 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %385, i32 %413), !nosanitize !49
  %415 = extractvalue { i32, i1 } %414, 0, !nosanitize !49
  %416 = extractvalue { i32, i1 } %414, 1, !nosanitize !49
  br i1 %416, label %417, label %418, !prof !50, !nosanitize !49

417:                                              ; preds = %412
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

418:                                              ; preds = %412
  %419 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %420 = load i32, ptr %419, align 4, !tbaa !77
  %421 = load i32, ptr %360, align 4, !tbaa !74
  %422 = icmp ugt i32 %420, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %418
  store i32 %421, ptr %419, align 4, !tbaa !77
  br label %424

424:                                              ; preds = %423, %418, %390, %383
  %425 = phi i32 [ %415, %423 ], [ %415, %418 ], [ %385, %390 ], [ %385, %383 ]
  %426 = load ptr, ptr %0, align 8, !tbaa !20
  %427 = getelementptr inbounds nuw i8, ptr %426, i64 8
  %428 = load i32, ptr %427, align 8, !tbaa !82
  %429 = tail call i32 @llvm.umin.i32(i32 %425, i32 %428)
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %486, label %431

431:                                              ; preds = %424
  %432 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %433 = load ptr, ptr %432, align 8, !tbaa !39
  %434 = load i32, ptr %360, align 4, !tbaa !74
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds nuw i8, ptr %433, i64 %435
  %437 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %428, i32 %429), !nosanitize !49
  %438 = extractvalue { i32, i1 } %437, 1, !nosanitize !49
  br i1 %438, label %439, label %440, !prof !50, !nosanitize !49

439:                                              ; preds = %431
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

440:                                              ; preds = %431
  %441 = extractvalue { i32, i1 } %437, 0, !nosanitize !49
  store i32 %441, ptr %427, align 8, !tbaa !82
  %442 = load ptr, ptr %426, align 8, !tbaa !83
  %443 = zext i32 %429 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %436, ptr align 1 %442, i64 %443, i1 false)
  %444 = getelementptr inbounds nuw i8, ptr %426, i64 56
  %445 = load ptr, ptr %444, align 8, !tbaa !19
  %446 = getelementptr inbounds nuw i8, ptr %445, i64 48
  %447 = load i32, ptr %446, align 8, !tbaa !30
  switch i32 %447, label %456 [
    i32 1, label %448
    i32 2, label %452
  ]

448:                                              ; preds = %440
  %449 = getelementptr inbounds nuw i8, ptr %426, i64 96
  %450 = load i64, ptr %449, align 8, !tbaa !60
  %451 = tail call i64 @adler32(i64 noundef %450, ptr noundef %436, i32 noundef %429) #11
  store i64 %451, ptr %449, align 8, !tbaa !60
  br label %456

452:                                              ; preds = %440
  %453 = getelementptr inbounds nuw i8, ptr %426, i64 96
  %454 = load i64, ptr %453, align 8, !tbaa !60
  %455 = tail call i64 @crc32(i64 noundef %454, ptr noundef %436, i32 noundef %429) #11
  store i64 %455, ptr %453, align 8, !tbaa !60
  br label %456

456:                                              ; preds = %452, %448, %440
  %457 = load ptr, ptr %426, align 8, !tbaa !83
  %458 = getelementptr inbounds nuw i8, ptr %457, i64 %443
  store ptr %458, ptr %426, align 8, !tbaa !83
  %459 = getelementptr inbounds nuw i8, ptr %426, i64 16
  %460 = load i64, ptr %459, align 8, !tbaa !56
  %461 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %460, i64 %443), !nosanitize !49
  %462 = extractvalue { i64, i1 } %461, 1, !nosanitize !49
  br i1 %462, label %463, label %464, !prof !50, !nosanitize !49

463:                                              ; preds = %456
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

464:                                              ; preds = %456
  %465 = extractvalue { i64, i1 } %461, 0, !nosanitize !49
  store i64 %465, ptr %459, align 8, !tbaa !56
  %466 = load i32, ptr %360, align 4, !tbaa !74
  %467 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %466, i32 %429), !nosanitize !49
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !49
  br i1 %468, label %469, label %470, !prof !50, !nosanitize !49

469:                                              ; preds = %464
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

470:                                              ; preds = %464
  %471 = extractvalue { i32, i1 } %467, 0, !nosanitize !49
  store i32 %471, ptr %360, align 4, !tbaa !74
  %472 = load i32, ptr %10, align 8, !tbaa !33
  %473 = getelementptr inbounds nuw i8, ptr %0, i64 5932
  %474 = load i32, ptr %473, align 4, !tbaa !77
  %475 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %472, i32 %474), !nosanitize !49
  %476 = extractvalue { i32, i1 } %475, 1, !nosanitize !49
  br i1 %476, label %477, label %478, !prof !50, !nosanitize !49

477:                                              ; preds = %470
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

478:                                              ; preds = %470
  %479 = extractvalue { i32, i1 } %475, 0, !nosanitize !49
  %480 = tail call i32 @llvm.umin.i32(i32 %429, i32 %479)
  %481 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %474, i32 %480), !nosanitize !49
  %482 = extractvalue { i32, i1 } %481, 1, !nosanitize !49
  br i1 %482, label %483, label %484, !prof !50, !nosanitize !49

483:                                              ; preds = %478
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

484:                                              ; preds = %478
  %485 = extractvalue { i32, i1 } %481, 0, !nosanitize !49
  store i32 %485, ptr %473, align 4, !tbaa !77
  br label %486

486:                                              ; preds = %484, %424
  %487 = load i64, ptr %358, align 8, !tbaa !42
  %488 = load i32, ptr %360, align 4, !tbaa !74
  %489 = zext i32 %488 to i64
  %490 = icmp ult i64 %487, %489
  br i1 %490, label %491, label %492

491:                                              ; preds = %486
  store i64 %489, ptr %358, align 8, !tbaa !42
  br label %492

492:                                              ; preds = %491, %486
  %493 = load i32, ptr %263, align 4, !tbaa !94
  %494 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %493, i32 42), !nosanitize !49
  %495 = extractvalue { i32, i1 } %494, 1, !nosanitize !49
  br i1 %495, label %496, label %497, !prof !50, !nosanitize !49

496:                                              ; preds = %492
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

497:                                              ; preds = %492
  %498 = extractvalue { i32, i1 } %494, 0, !nosanitize !49
  %499 = lshr i32 %498, 3
  %500 = load i64, ptr %3, align 8, !tbaa !45
  %501 = zext nneg i32 %499 to i64
  %502 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %500, i64 %501), !nosanitize !49
  %503 = extractvalue { i64, i1 } %502, 1, !nosanitize !49
  br i1 %503, label %504, label %505, !prof !50, !nosanitize !49

504:                                              ; preds = %497
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

505:                                              ; preds = %497
  %506 = extractvalue { i64, i1 } %502, 0, !nosanitize !49
  %507 = tail call i64 @llvm.umin.i64(i64 %506, i64 65535)
  %508 = trunc nuw nsw i64 %507 to i32
  %509 = load i32, ptr %10, align 8, !tbaa !33
  %510 = tail call i32 @llvm.umin.i32(i32 %509, i32 %508)
  %511 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %512 = load i64, ptr %511, align 8, !tbaa !75
  %513 = trunc i64 %512 to i32
  %514 = sub i32 %488, %513
  %515 = icmp ult i32 %514, %510
  br i1 %515, label %516, label %528

516:                                              ; preds = %505
  %517 = icmp ne i32 %488, %513
  %518 = icmp eq i32 %1, 4
  %519 = or i1 %518, %517
  %520 = and i1 %367, %519
  br i1 %520, label %521, label %595

521:                                              ; preds = %516
  %522 = load ptr, ptr %0, align 8, !tbaa !20
  %523 = getelementptr inbounds nuw i8, ptr %522, i64 8
  %524 = load i32, ptr %523, align 8, !tbaa !82
  %525 = icmp ne i32 %524, 0
  %526 = icmp ugt i32 %514, %508
  %527 = or i1 %526, %525
  br i1 %527, label %595, label %528

528:                                              ; preds = %521, %505
  %529 = tail call i32 @llvm.umin.i32(i32 %514, i32 %508)
  %530 = icmp eq i32 %1, 4
  br i1 %530, label %531, label %539

531:                                              ; preds = %528
  %532 = load ptr, ptr %0, align 8, !tbaa !20
  %533 = getelementptr inbounds nuw i8, ptr %532, i64 8
  %534 = load i32, ptr %533, align 8, !tbaa !82
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %531
  %537 = icmp ule i32 %514, %508
  %538 = zext i1 %537 to i32
  br label %539

539:                                              ; preds = %536, %531, %528
  %540 = phi i32 [ 0, %531 ], [ 0, %528 ], [ %538, %536 ]
  %541 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %542 = load ptr, ptr %541, align 8, !tbaa !39
  %543 = getelementptr inbounds i8, ptr %542, i64 %512
  %544 = zext nneg i32 %529 to i64
  tail call void @_tr_stored_block(ptr noundef %0, ptr noundef %543, i64 noundef %544, i32 noundef %540) #11
  %545 = load i64, ptr %511, align 8, !tbaa !75
  %546 = add nsw i64 %545, %544
  store i64 %546, ptr %511, align 8, !tbaa !75
  %547 = load ptr, ptr %0, align 8, !tbaa !20
  %548 = getelementptr inbounds nuw i8, ptr %547, i64 56
  %549 = load ptr, ptr %548, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %549) #11
  %550 = getelementptr inbounds nuw i8, ptr %549, i64 40
  %551 = load i64, ptr %550, align 8, !tbaa !58
  %552 = getelementptr inbounds nuw i8, ptr %547, i64 32
  %553 = load i32, ptr %552, align 8, !tbaa !100
  %554 = zext i32 %553 to i64
  %555 = tail call i64 @llvm.umin.i64(i64 %551, i64 %554)
  %556 = trunc nuw i64 %555 to i32
  %557 = icmp eq i64 %555, 0
  br i1 %557, label %590, label %558

558:                                              ; preds = %539
  %559 = getelementptr inbounds nuw i8, ptr %547, i64 24
  %560 = load ptr, ptr %559, align 8, !tbaa !99
  %561 = getelementptr inbounds nuw i8, ptr %549, i64 32
  %562 = load ptr, ptr %561, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %560, ptr align 1 %562, i64 %555, i1 false)
  %563 = load ptr, ptr %559, align 8, !tbaa !99
  %564 = getelementptr inbounds nuw i8, ptr %563, i64 %555
  store ptr %564, ptr %559, align 8, !tbaa !99
  %565 = load ptr, ptr %561, align 8, !tbaa !59
  %566 = getelementptr inbounds nuw i8, ptr %565, i64 %555
  store ptr %566, ptr %561, align 8, !tbaa !59
  %567 = getelementptr inbounds nuw i8, ptr %547, i64 40
  %568 = load i64, ptr %567, align 8, !tbaa !101
  %569 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %568, i64 %555), !nosanitize !49
  %570 = extractvalue { i64, i1 } %569, 1, !nosanitize !49
  br i1 %570, label %571, label %572, !prof !50, !nosanitize !49

571:                                              ; preds = %558
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

572:                                              ; preds = %558
  %573 = extractvalue { i64, i1 } %569, 0, !nosanitize !49
  store i64 %573, ptr %567, align 8, !tbaa !101
  %574 = load i32, ptr %552, align 8, !tbaa !100
  %575 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %574, i32 %556), !nosanitize !49
  %576 = extractvalue { i32, i1 } %575, 1, !nosanitize !49
  br i1 %576, label %577, label %578, !prof !50, !nosanitize !49

577:                                              ; preds = %572
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

578:                                              ; preds = %572
  %579 = extractvalue { i32, i1 } %575, 0, !nosanitize !49
  store i32 %579, ptr %552, align 8, !tbaa !100
  %580 = load i64, ptr %550, align 8, !tbaa !58
  %581 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %580, i64 %555), !nosanitize !49
  %582 = extractvalue { i64, i1 } %581, 1, !nosanitize !49
  br i1 %582, label %583, label %584, !prof !50, !nosanitize !49

583:                                              ; preds = %578
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

584:                                              ; preds = %578
  %585 = extractvalue { i64, i1 } %581, 0, !nosanitize !49
  store i64 %585, ptr %550, align 8, !tbaa !58
  %586 = icmp eq i64 %585, 0
  br i1 %586, label %587, label %590

587:                                              ; preds = %584
  %588 = getelementptr inbounds nuw i8, ptr %549, i64 16
  %589 = load ptr, ptr %588, align 8, !tbaa !44
  store ptr %589, ptr %561, align 8, !tbaa !59
  br label %590

590:                                              ; preds = %587, %584, %539
  %591 = icmp eq i32 %540, 0
  br i1 %591, label %595, label %592

592:                                              ; preds = %590, %365
  %593 = phi i32 [ 3, %365 ], [ 2, %590 ]
  %594 = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 8, ptr %594, align 8, !tbaa !95
  br label %595

595:                                              ; preds = %592, %590, %521, %516, %373
  %596 = phi i32 [ 0, %521 ], [ 1, %373 ], [ 0, %516 ], [ 0, %590 ], [ %593, %592 ]
  ret i32 %596
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

28:                                               ; preds = %422, %2
  %29 = load i32, ptr %3, align 4, !tbaa !76
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %309

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 8, !tbaa !33
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %259, %31
  %35 = load i64, ptr %5, align 8, !tbaa !62
  %36 = load i32, ptr %3, align 4, !tbaa !76
  %37 = zext i32 %36 to i64
  %38 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 %37), !nosanitize !49
  %39 = extractvalue { i64, i1 } %38, 1, !nosanitize !49
  br i1 %39, label %40, label %41, !prof !50, !nosanitize !49

40:                                               ; preds = %34
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

41:                                               ; preds = %34
  %42 = extractvalue { i64, i1 } %38, 0, !nosanitize !49
  %43 = load i32, ptr %6, align 4, !tbaa !74
  %44 = zext i32 %43 to i64
  %45 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %42, i64 %44), !nosanitize !49
  %46 = extractvalue { i64, i1 } %45, 1, !nosanitize !49
  br i1 %46, label %47, label %48, !prof !50, !nosanitize !49

47:                                               ; preds = %41
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

48:                                               ; preds = %41
  %49 = extractvalue { i64, i1 } %45, 0, !nosanitize !49
  %50 = trunc i64 %49 to i32
  %51 = load i32, ptr %4, align 8, !tbaa !33
  %52 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %51, i32 262), !nosanitize !49
  %53 = extractvalue { i32, i1 } %52, 1, !nosanitize !49
  br i1 %53, label %54, label %55, !prof !50, !nosanitize !49

54:                                               ; preds = %48
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

55:                                               ; preds = %48
  %56 = extractvalue { i32, i1 } %52, 0, !nosanitize !49
  %57 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %32, i32 %56), !nosanitize !49
  %58 = extractvalue { i32, i1 } %57, 1, !nosanitize !49
  br i1 %58, label %59, label %60, !prof !50, !nosanitize !49

59:                                               ; preds = %55
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

76:                                               ; preds = %67
  %77 = extractvalue { i32, i1 } %73, 0, !nosanitize !49
  store i32 %77, ptr %8, align 8, !tbaa !84
  %78 = load i32, ptr %6, align 4, !tbaa !74
  %79 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %78, i32 %32), !nosanitize !49
  %80 = extractvalue { i32, i1 } %79, 1, !nosanitize !49
  br i1 %80, label %81, label %82, !prof !50, !nosanitize !49

81:                                               ; preds = %76
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  br i1 %136, label %264, label %137

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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  %162 = tail call i64 @adler32(i64 noundef %161, ptr noundef %144, i32 noundef %145) #11
  store i64 %162, ptr %160, align 8, !tbaa !60
  br label %167

163:                                              ; preds = %151
  %164 = getelementptr inbounds nuw i8, ptr %133, i64 96
  %165 = load i64, ptr %164, align 8, !tbaa !60
  %166 = tail call i64 @crc32(i64 noundef %165, ptr noundef %144, i32 noundef %145) #11
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

183:                                              ; preds = %177
  %184 = extractvalue { i32, i1 } %180, 0, !nosanitize !49
  store i32 %184, ptr %3, align 4, !tbaa !76
  %185 = load i32, ptr %10, align 4, !tbaa !77
  %186 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %185), !nosanitize !49
  %187 = extractvalue { i32, i1 } %186, 1, !nosanitize !49
  br i1 %187, label %188, label %189, !prof !50, !nosanitize !49

188:                                              ; preds = %183
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

189:                                              ; preds = %183
  %190 = extractvalue { i32, i1 } %186, 0, !nosanitize !49
  %191 = icmp ugt i32 %190, 2
  br i1 %191, label %192, label %257

192:                                              ; preds = %189
  %193 = load i32, ptr %6, align 4, !tbaa !74
  %194 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %193, i32 %185), !nosanitize !49
  %195 = extractvalue { i32, i1 } %194, 0, !nosanitize !49
  %196 = extractvalue { i32, i1 } %194, 1, !nosanitize !49
  br i1 %196, label %197, label %198, !prof !50, !nosanitize !49

197:                                              ; preds = %192
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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

218:                                              ; preds = %254, %207
  %219 = phi i32 [ %185, %207 ], [ %250, %254 ]
  %220 = phi i32 [ %195, %207 ], [ %249, %254 ]
  %221 = icmp eq i32 %219, 0
  br i1 %221, label %257, label %222

222:                                              ; preds = %218
  %223 = load i32, ptr %15, align 8, !tbaa !81
  %224 = shl i32 %223, %209
  %225 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %220, i32 3), !nosanitize !49
  %226 = extractvalue { i32, i1 } %225, 1, !nosanitize !49
  br i1 %226, label %227, label %228, !prof !50, !nosanitize !49

227:                                              ; preds = %222
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

228:                                              ; preds = %222
  %229 = extractvalue { i32, i1 } %225, 0, !nosanitize !49
  %230 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %229, i32 1), !nosanitize !49
  %231 = extractvalue { i32, i1 } %230, 0, !nosanitize !49
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds nuw i8, ptr %199, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !8
  %235 = zext i8 %234 to i32
  %236 = xor i32 %224, %235
  %237 = and i32 %236, %216
  store i32 %237, ptr %15, align 8, !tbaa !81
  %238 = load ptr, ptr %12, align 8, !tbaa !41
  %239 = zext i32 %237 to i64
  %240 = getelementptr inbounds nuw [2 x i8], ptr %238, i64 %239
  %241 = load i16, ptr %240, align 2, !tbaa !63
  %242 = load ptr, ptr %13, align 8, !tbaa !40
  %243 = load i32, ptr %18, align 8, !tbaa !34
  %244 = and i32 %243, %220
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds nuw [2 x i8], ptr %242, i64 %245
  store i16 %241, ptr %246, align 2, !tbaa !63
  %247 = trunc i32 %220 to i16
  store i16 %247, ptr %240, align 2, !tbaa !63
  %248 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %220, i32 1), !nosanitize !49
  %249 = extractvalue { i32, i1 } %248, 0, !nosanitize !49
  %250 = add i32 %219, -1
  store i32 %250, ptr %10, align 4, !tbaa !77
  %251 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %184, i32 %250), !nosanitize !49
  %252 = extractvalue { i32, i1 } %251, 1, !nosanitize !49
  br i1 %252, label %253, label %254, !prof !50, !nosanitize !49

253:                                              ; preds = %228
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

254:                                              ; preds = %228
  %255 = extractvalue { i32, i1 } %251, 0, !nosanitize !49
  %256 = icmp ult i32 %255, 3
  br i1 %256, label %257, label %218, !llvm.loop !89

257:                                              ; preds = %254, %218, %189
  %258 = icmp ult i32 %184, 262
  br i1 %258, label %259, label %264

259:                                              ; preds = %257
  %260 = load ptr, ptr %0, align 8, !tbaa !20
  %261 = getelementptr inbounds nuw i8, ptr %260, i64 8
  %262 = load i32, ptr %261, align 8, !tbaa !82
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %34, !llvm.loop !90

264:                                              ; preds = %259, %257, %131
  %265 = load i64, ptr %19, align 8, !tbaa !42
  %266 = load i64, ptr %5, align 8, !tbaa !62
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %268, label %304

268:                                              ; preds = %264
  %269 = load i32, ptr %6, align 4, !tbaa !74
  %270 = zext i32 %269 to i64
  %271 = load i32, ptr %3, align 4, !tbaa !76
  %272 = zext i32 %271 to i64
  %273 = add nuw nsw i64 %272, %270
  %274 = icmp ult i64 %265, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %268
  %276 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %266, i64 %273), !nosanitize !49
  %277 = extractvalue { i64, i1 } %276, 1, !nosanitize !49
  br i1 %277, label %278, label %279, !prof !50, !nosanitize !49

278:                                              ; preds = %275
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

279:                                              ; preds = %275
  %280 = extractvalue { i64, i1 } %276, 0, !nosanitize !49
  %281 = tail call i64 @llvm.umin.i64(i64 %280, i64 258)
  %282 = load ptr, ptr %7, align 8, !tbaa !39
  %283 = getelementptr inbounds nuw i8, ptr %282, i64 %273
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %283, i8 0, i64 %281, i1 false)
  %284 = add nuw nsw i64 %281, %273
  br label %302

285:                                              ; preds = %268
  %286 = add nuw nsw i64 %273, 258
  %287 = icmp ult i64 %265, %286
  br i1 %287, label %288, label %304

288:                                              ; preds = %285
  %289 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %266, i64 %265), !nosanitize !49
  %290 = sub nuw nsw i64 %286, %265
  %291 = extractvalue { i64, i1 } %289, 0, !nosanitize !49
  %292 = tail call i64 @llvm.umin.i64(i64 %290, i64 %291)
  %293 = load ptr, ptr %7, align 8, !tbaa !39
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 %265
  %295 = and i64 %292, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %294, i8 0, i64 %295, i1 false)
  %296 = load i64, ptr %19, align 8, !tbaa !42
  %297 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %296, i64 %292), !nosanitize !49
  %298 = extractvalue { i64, i1 } %297, 1, !nosanitize !49
  br i1 %298, label %299, label %300, !prof !50, !nosanitize !49

299:                                              ; preds = %288
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

300:                                              ; preds = %288
  %301 = extractvalue { i64, i1 } %297, 0, !nosanitize !49
  br label %302

302:                                              ; preds = %300, %279
  %303 = phi i64 [ %284, %279 ], [ %301, %300 ]
  store i64 %303, ptr %19, align 8, !tbaa !42
  br label %304

304:                                              ; preds = %302, %285, %264
  %305 = load i32, ptr %3, align 4, !tbaa !76
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = icmp eq i32 %1, 0
  br i1 %308, label %555, label %423

309:                                              ; preds = %304, %28
  store i32 0, ptr %20, align 8, !tbaa !79
  %310 = load ptr, ptr %21, align 8, !tbaa !39
  %311 = load i32, ptr %22, align 4, !tbaa !74
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds nuw i8, ptr %310, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !8
  %315 = load i32, ptr %24, align 4, !tbaa !122
  %316 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %315, i32 1), !nosanitize !49
  %317 = extractvalue { i32, i1 } %316, 1, !nosanitize !49
  br i1 %317, label %318, label %319, !prof !50, !nosanitize !49

318:                                              ; preds = %309
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

319:                                              ; preds = %309
  %320 = extractvalue { i32, i1 } %316, 0, !nosanitize !49
  %321 = load ptr, ptr %23, align 8, !tbaa !48
  store i32 %320, ptr %24, align 4, !tbaa !122
  %322 = zext i32 %315 to i64
  %323 = getelementptr inbounds nuw i8, ptr %321, i64 %322
  store i8 0, ptr %323, align 1, !tbaa !8
  %324 = load i32, ptr %24, align 4, !tbaa !122
  %325 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %324, i32 1), !nosanitize !49
  %326 = extractvalue { i32, i1 } %325, 1, !nosanitize !49
  br i1 %326, label %327, label %328, !prof !50, !nosanitize !49

327:                                              ; preds = %319
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

328:                                              ; preds = %319
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

337:                                              ; preds = %328
  %338 = extractvalue { i32, i1 } %334, 0, !nosanitize !49
  %339 = load ptr, ptr %23, align 8, !tbaa !48
  store i32 %338, ptr %24, align 4, !tbaa !122
  %340 = zext i32 %333 to i64
  %341 = getelementptr inbounds nuw i8, ptr %339, i64 %340
  store i8 %314, ptr %341, align 1, !tbaa !8
  %342 = zext i8 %314 to i64
  %343 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %342
  %344 = load i16, ptr %343, align 4, !tbaa !8
  %345 = add i16 %344, 1
  store i16 %345, ptr %343, align 4, !tbaa !8
  %346 = load i32, ptr %24, align 4, !tbaa !122
  %347 = load i32, ptr %26, align 8, !tbaa !51
  %348 = icmp eq i32 %346, %347
  %349 = load i32, ptr %3, align 4, !tbaa !76
  %350 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %349, i32 1), !nosanitize !49
  %351 = extractvalue { i32, i1 } %350, 1, !nosanitize !49
  br i1 %351, label %352, label %353, !prof !50, !nosanitize !49

352:                                              ; preds = %337
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

353:                                              ; preds = %337
  %354 = extractvalue { i32, i1 } %350, 0, !nosanitize !49
  store i32 %354, ptr %3, align 4, !tbaa !76
  %355 = load i32, ptr %22, align 4, !tbaa !74
  %356 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %355, i32 1), !nosanitize !49
  %357 = extractvalue { i32, i1 } %356, 1, !nosanitize !49
  br i1 %357, label %358, label %359, !prof !50, !nosanitize !49

358:                                              ; preds = %353
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

359:                                              ; preds = %353
  %360 = extractvalue { i32, i1 } %356, 0, !nosanitize !49
  store i32 %360, ptr %22, align 4, !tbaa !74
  br i1 %348, label %361, label %422

361:                                              ; preds = %359
  %362 = load i64, ptr %27, align 8, !tbaa !75
  %363 = icmp sgt i64 %362, -1
  br i1 %363, label %364, label %368

364:                                              ; preds = %361
  %365 = load ptr, ptr %21, align 8, !tbaa !39
  %366 = and i64 %362, 4294967295
  %367 = getelementptr inbounds nuw i8, ptr %365, i64 %366
  br label %368

368:                                              ; preds = %364, %361
  %369 = phi ptr [ %367, %364 ], [ null, %361 ]
  %370 = zext i32 %360 to i64
  %371 = sub nsw i64 %370, %362
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %369, i64 noundef %371, i32 noundef 0) #11
  %372 = load i32, ptr %22, align 4, !tbaa !74
  %373 = zext i32 %372 to i64
  store i64 %373, ptr %27, align 8, !tbaa !75
  %374 = load ptr, ptr %0, align 8, !tbaa !20
  %375 = getelementptr inbounds nuw i8, ptr %374, i64 56
  %376 = load ptr, ptr %375, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %376) #11
  %377 = getelementptr inbounds nuw i8, ptr %376, i64 40
  %378 = load i64, ptr %377, align 8, !tbaa !58
  %379 = getelementptr inbounds nuw i8, ptr %374, i64 32
  %380 = load i32, ptr %379, align 8, !tbaa !100
  %381 = zext i32 %380 to i64
  %382 = tail call i64 @llvm.umin.i64(i64 %378, i64 %381)
  %383 = trunc nuw i64 %382 to i32
  %384 = icmp eq i64 %382, 0
  br i1 %384, label %417, label %385

385:                                              ; preds = %368
  %386 = getelementptr inbounds nuw i8, ptr %374, i64 24
  %387 = load ptr, ptr %386, align 8, !tbaa !99
  %388 = getelementptr inbounds nuw i8, ptr %376, i64 32
  %389 = load ptr, ptr %388, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %387, ptr align 1 %389, i64 %382, i1 false)
  %390 = load ptr, ptr %386, align 8, !tbaa !99
  %391 = getelementptr inbounds nuw i8, ptr %390, i64 %382
  store ptr %391, ptr %386, align 8, !tbaa !99
  %392 = load ptr, ptr %388, align 8, !tbaa !59
  %393 = getelementptr inbounds nuw i8, ptr %392, i64 %382
  store ptr %393, ptr %388, align 8, !tbaa !59
  %394 = getelementptr inbounds nuw i8, ptr %374, i64 40
  %395 = load i64, ptr %394, align 8, !tbaa !101
  %396 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %395, i64 %382), !nosanitize !49
  %397 = extractvalue { i64, i1 } %396, 1, !nosanitize !49
  br i1 %397, label %398, label %399, !prof !50, !nosanitize !49

398:                                              ; preds = %385
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

399:                                              ; preds = %385
  %400 = extractvalue { i64, i1 } %396, 0, !nosanitize !49
  store i64 %400, ptr %394, align 8, !tbaa !101
  %401 = load i32, ptr %379, align 8, !tbaa !100
  %402 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %401, i32 %383), !nosanitize !49
  %403 = extractvalue { i32, i1 } %402, 1, !nosanitize !49
  br i1 %403, label %404, label %405, !prof !50, !nosanitize !49

404:                                              ; preds = %399
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

405:                                              ; preds = %399
  %406 = extractvalue { i32, i1 } %402, 0, !nosanitize !49
  store i32 %406, ptr %379, align 8, !tbaa !100
  %407 = load i64, ptr %377, align 8, !tbaa !58
  %408 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %407, i64 %382), !nosanitize !49
  %409 = extractvalue { i64, i1 } %408, 1, !nosanitize !49
  br i1 %409, label %410, label %411, !prof !50, !nosanitize !49

410:                                              ; preds = %405
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

411:                                              ; preds = %405
  %412 = extractvalue { i64, i1 } %408, 0, !nosanitize !49
  store i64 %412, ptr %377, align 8, !tbaa !58
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %411
  %415 = getelementptr inbounds nuw i8, ptr %376, i64 16
  %416 = load ptr, ptr %415, align 8, !tbaa !44
  store ptr %416, ptr %388, align 8, !tbaa !59
  br label %417

417:                                              ; preds = %414, %411, %368
  %418 = load ptr, ptr %0, align 8, !tbaa !20
  %419 = getelementptr inbounds nuw i8, ptr %418, i64 32
  %420 = load i32, ptr %419, align 8, !tbaa !100
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %555, label %422

422:                                              ; preds = %417, %359
  br label %28, !llvm.loop !123

423:                                              ; preds = %307
  store i32 0, ptr %10, align 4, !tbaa !77
  %424 = icmp eq i32 %1, 4
  br i1 %424, label %425, label %488

425:                                              ; preds = %423
  %426 = load i64, ptr %9, align 8, !tbaa !75
  %427 = icmp sgt i64 %426, -1
  br i1 %427, label %428, label %432

428:                                              ; preds = %425
  %429 = load ptr, ptr %7, align 8, !tbaa !39
  %430 = and i64 %426, 4294967295
  %431 = getelementptr inbounds nuw i8, ptr %429, i64 %430
  br label %432

432:                                              ; preds = %428, %425
  %433 = phi ptr [ %431, %428 ], [ null, %425 ]
  %434 = load i32, ptr %6, align 4, !tbaa !74
  %435 = zext i32 %434 to i64
  %436 = sub nsw i64 %435, %426
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %433, i64 noundef %436, i32 noundef 1) #11
  %437 = load i32, ptr %6, align 4, !tbaa !74
  %438 = zext i32 %437 to i64
  store i64 %438, ptr %9, align 8, !tbaa !75
  %439 = load ptr, ptr %0, align 8, !tbaa !20
  %440 = getelementptr inbounds nuw i8, ptr %439, i64 56
  %441 = load ptr, ptr %440, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %441) #11
  %442 = getelementptr inbounds nuw i8, ptr %441, i64 40
  %443 = load i64, ptr %442, align 8, !tbaa !58
  %444 = getelementptr inbounds nuw i8, ptr %439, i64 32
  %445 = load i32, ptr %444, align 8, !tbaa !100
  %446 = zext i32 %445 to i64
  %447 = tail call i64 @llvm.umin.i64(i64 %443, i64 %446)
  %448 = trunc nuw i64 %447 to i32
  %449 = icmp eq i64 %447, 0
  br i1 %449, label %482, label %450

450:                                              ; preds = %432
  %451 = getelementptr inbounds nuw i8, ptr %439, i64 24
  %452 = load ptr, ptr %451, align 8, !tbaa !99
  %453 = getelementptr inbounds nuw i8, ptr %441, i64 32
  %454 = load ptr, ptr %453, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %452, ptr align 1 %454, i64 %447, i1 false)
  %455 = load ptr, ptr %451, align 8, !tbaa !99
  %456 = getelementptr inbounds nuw i8, ptr %455, i64 %447
  store ptr %456, ptr %451, align 8, !tbaa !99
  %457 = load ptr, ptr %453, align 8, !tbaa !59
  %458 = getelementptr inbounds nuw i8, ptr %457, i64 %447
  store ptr %458, ptr %453, align 8, !tbaa !59
  %459 = getelementptr inbounds nuw i8, ptr %439, i64 40
  %460 = load i64, ptr %459, align 8, !tbaa !101
  %461 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %460, i64 %447), !nosanitize !49
  %462 = extractvalue { i64, i1 } %461, 1, !nosanitize !49
  br i1 %462, label %463, label %464, !prof !50, !nosanitize !49

463:                                              ; preds = %450
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

464:                                              ; preds = %450
  %465 = extractvalue { i64, i1 } %461, 0, !nosanitize !49
  store i64 %465, ptr %459, align 8, !tbaa !101
  %466 = load i32, ptr %444, align 8, !tbaa !100
  %467 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %466, i32 %448), !nosanitize !49
  %468 = extractvalue { i32, i1 } %467, 1, !nosanitize !49
  br i1 %468, label %469, label %470, !prof !50, !nosanitize !49

469:                                              ; preds = %464
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

470:                                              ; preds = %464
  %471 = extractvalue { i32, i1 } %467, 0, !nosanitize !49
  store i32 %471, ptr %444, align 8, !tbaa !100
  %472 = load i64, ptr %442, align 8, !tbaa !58
  %473 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %472, i64 %447), !nosanitize !49
  %474 = extractvalue { i64, i1 } %473, 1, !nosanitize !49
  br i1 %474, label %475, label %476, !prof !50, !nosanitize !49

475:                                              ; preds = %470
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

476:                                              ; preds = %470
  %477 = extractvalue { i64, i1 } %473, 0, !nosanitize !49
  store i64 %477, ptr %442, align 8, !tbaa !58
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %476
  %480 = getelementptr inbounds nuw i8, ptr %441, i64 16
  %481 = load ptr, ptr %480, align 8, !tbaa !44
  store ptr %481, ptr %453, align 8, !tbaa !59
  br label %482

482:                                              ; preds = %479, %476, %432
  %483 = load ptr, ptr %0, align 8, !tbaa !20
  %484 = getelementptr inbounds nuw i8, ptr %483, i64 32
  %485 = load i32, ptr %484, align 8, !tbaa !100
  %486 = icmp eq i32 %485, 0
  %487 = select i1 %486, i32 2, i32 3
  br label %555

488:                                              ; preds = %423
  %489 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %490 = load i32, ptr %489, align 4, !tbaa !122
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %554, label %492

492:                                              ; preds = %488
  %493 = load i64, ptr %9, align 8, !tbaa !75
  %494 = icmp sgt i64 %493, -1
  br i1 %494, label %495, label %499

495:                                              ; preds = %492
  %496 = load ptr, ptr %7, align 8, !tbaa !39
  %497 = and i64 %493, 4294967295
  %498 = getelementptr inbounds nuw i8, ptr %496, i64 %497
  br label %499

499:                                              ; preds = %495, %492
  %500 = phi ptr [ %498, %495 ], [ null, %492 ]
  %501 = load i32, ptr %6, align 4, !tbaa !74
  %502 = zext i32 %501 to i64
  %503 = sub nsw i64 %502, %493
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %500, i64 noundef %503, i32 noundef 0) #11
  %504 = load i32, ptr %6, align 4, !tbaa !74
  %505 = zext i32 %504 to i64
  store i64 %505, ptr %9, align 8, !tbaa !75
  %506 = load ptr, ptr %0, align 8, !tbaa !20
  %507 = getelementptr inbounds nuw i8, ptr %506, i64 56
  %508 = load ptr, ptr %507, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %508) #11
  %509 = getelementptr inbounds nuw i8, ptr %508, i64 40
  %510 = load i64, ptr %509, align 8, !tbaa !58
  %511 = getelementptr inbounds nuw i8, ptr %506, i64 32
  %512 = load i32, ptr %511, align 8, !tbaa !100
  %513 = zext i32 %512 to i64
  %514 = tail call i64 @llvm.umin.i64(i64 %510, i64 %513)
  %515 = trunc nuw i64 %514 to i32
  %516 = icmp eq i64 %514, 0
  br i1 %516, label %549, label %517

517:                                              ; preds = %499
  %518 = getelementptr inbounds nuw i8, ptr %506, i64 24
  %519 = load ptr, ptr %518, align 8, !tbaa !99
  %520 = getelementptr inbounds nuw i8, ptr %508, i64 32
  %521 = load ptr, ptr %520, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %519, ptr align 1 %521, i64 %514, i1 false)
  %522 = load ptr, ptr %518, align 8, !tbaa !99
  %523 = getelementptr inbounds nuw i8, ptr %522, i64 %514
  store ptr %523, ptr %518, align 8, !tbaa !99
  %524 = load ptr, ptr %520, align 8, !tbaa !59
  %525 = getelementptr inbounds nuw i8, ptr %524, i64 %514
  store ptr %525, ptr %520, align 8, !tbaa !59
  %526 = getelementptr inbounds nuw i8, ptr %506, i64 40
  %527 = load i64, ptr %526, align 8, !tbaa !101
  %528 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %527, i64 %514), !nosanitize !49
  %529 = extractvalue { i64, i1 } %528, 1, !nosanitize !49
  br i1 %529, label %530, label %531, !prof !50, !nosanitize !49

530:                                              ; preds = %517
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

531:                                              ; preds = %517
  %532 = extractvalue { i64, i1 } %528, 0, !nosanitize !49
  store i64 %532, ptr %526, align 8, !tbaa !101
  %533 = load i32, ptr %511, align 8, !tbaa !100
  %534 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %533, i32 %515), !nosanitize !49
  %535 = extractvalue { i32, i1 } %534, 1, !nosanitize !49
  br i1 %535, label %536, label %537, !prof !50, !nosanitize !49

536:                                              ; preds = %531
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

537:                                              ; preds = %531
  %538 = extractvalue { i32, i1 } %534, 0, !nosanitize !49
  store i32 %538, ptr %511, align 8, !tbaa !100
  %539 = load i64, ptr %509, align 8, !tbaa !58
  %540 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %539, i64 %514), !nosanitize !49
  %541 = extractvalue { i64, i1 } %540, 1, !nosanitize !49
  br i1 %541, label %542, label %543, !prof !50, !nosanitize !49

542:                                              ; preds = %537
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

543:                                              ; preds = %537
  %544 = extractvalue { i64, i1 } %540, 0, !nosanitize !49
  store i64 %544, ptr %509, align 8, !tbaa !58
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %549

546:                                              ; preds = %543
  %547 = getelementptr inbounds nuw i8, ptr %508, i64 16
  %548 = load ptr, ptr %547, align 8, !tbaa !44
  store ptr %548, ptr %520, align 8, !tbaa !59
  br label %549

549:                                              ; preds = %546, %543, %499
  %550 = load ptr, ptr %0, align 8, !tbaa !20
  %551 = getelementptr inbounds nuw i8, ptr %550, i64 32
  %552 = load i32, ptr %551, align 8, !tbaa !100
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %555, label %554

554:                                              ; preds = %549, %488
  br label %555

555:                                              ; preds = %554, %549, %482, %417, %307
  %556 = phi i32 [ 0, %307 ], [ %487, %482 ], [ 0, %549 ], [ 1, %554 ], [ 0, %417 ]
  ret i32 %556
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

39:                                               ; preds = %587, %2
  %40 = load i32, ptr %3, align 4, !tbaa !76
  %41 = icmp ult i32 %40, 259
  br i1 %41, label %42, label %321

42:                                               ; preds = %39
  %43 = load i32, ptr %4, align 8, !tbaa !33
  %44 = zext i32 %43 to i64
  br label %45

45:                                               ; preds = %270, %42
  %46 = load i64, ptr %5, align 8, !tbaa !62
  %47 = load i32, ptr %3, align 4, !tbaa !76
  %48 = zext i32 %47 to i64
  %49 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %46, i64 %48), !nosanitize !49
  %50 = extractvalue { i64, i1 } %49, 1, !nosanitize !49
  br i1 %50, label %51, label %52, !prof !50, !nosanitize !49

51:                                               ; preds = %45
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

52:                                               ; preds = %45
  %53 = extractvalue { i64, i1 } %49, 0, !nosanitize !49
  %54 = load i32, ptr %6, align 4, !tbaa !74
  %55 = zext i32 %54 to i64
  %56 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %53, i64 %55), !nosanitize !49
  %57 = extractvalue { i64, i1 } %56, 1, !nosanitize !49
  br i1 %57, label %58, label %59, !prof !50, !nosanitize !49

58:                                               ; preds = %52
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

59:                                               ; preds = %52
  %60 = extractvalue { i64, i1 } %56, 0, !nosanitize !49
  %61 = trunc i64 %60 to i32
  %62 = load i32, ptr %4, align 8, !tbaa !33
  %63 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %62, i32 262), !nosanitize !49
  %64 = extractvalue { i32, i1 } %63, 1, !nosanitize !49
  br i1 %64, label %65, label %66, !prof !50, !nosanitize !49

65:                                               ; preds = %59
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

66:                                               ; preds = %59
  %67 = extractvalue { i32, i1 } %63, 0, !nosanitize !49
  %68 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %67), !nosanitize !49
  %69 = extractvalue { i32, i1 } %68, 1, !nosanitize !49
  br i1 %69, label %70, label %71, !prof !50, !nosanitize !49

70:                                               ; preds = %66
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

87:                                               ; preds = %78
  %88 = extractvalue { i32, i1 } %84, 0, !nosanitize !49
  store i32 %88, ptr %8, align 8, !tbaa !84
  %89 = load i32, ptr %6, align 4, !tbaa !74
  %90 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %89, i32 %43), !nosanitize !49
  %91 = extractvalue { i32, i1 } %90, 1, !nosanitize !49
  br i1 %91, label %92, label %93, !prof !50, !nosanitize !49

92:                                               ; preds = %87
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  br i1 %147, label %275, label %148

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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  %173 = tail call i64 @adler32(i64 noundef %172, ptr noundef %155, i32 noundef %156) #11
  store i64 %173, ptr %171, align 8, !tbaa !60
  br label %178

174:                                              ; preds = %162
  %175 = getelementptr inbounds nuw i8, ptr %144, i64 96
  %176 = load i64, ptr %175, align 8, !tbaa !60
  %177 = tail call i64 @crc32(i64 noundef %176, ptr noundef %155, i32 noundef %156) #11
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

194:                                              ; preds = %188
  %195 = extractvalue { i32, i1 } %191, 0, !nosanitize !49
  store i32 %195, ptr %3, align 4, !tbaa !76
  %196 = load i32, ptr %10, align 4, !tbaa !77
  %197 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %196), !nosanitize !49
  %198 = extractvalue { i32, i1 } %197, 1, !nosanitize !49
  br i1 %198, label %199, label %200, !prof !50, !nosanitize !49

199:                                              ; preds = %194
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

200:                                              ; preds = %194
  %201 = extractvalue { i32, i1 } %197, 0, !nosanitize !49
  %202 = icmp ugt i32 %201, 2
  br i1 %202, label %203, label %268

203:                                              ; preds = %200
  %204 = load i32, ptr %6, align 4, !tbaa !74
  %205 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %204, i32 %196), !nosanitize !49
  %206 = extractvalue { i32, i1 } %205, 0, !nosanitize !49
  %207 = extractvalue { i32, i1 } %205, 1, !nosanitize !49
  br i1 %207, label %208, label %209, !prof !50, !nosanitize !49

208:                                              ; preds = %203
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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

229:                                              ; preds = %265, %218
  %230 = phi i32 [ %196, %218 ], [ %261, %265 ]
  %231 = phi i32 [ %206, %218 ], [ %260, %265 ]
  %232 = icmp eq i32 %230, 0
  br i1 %232, label %268, label %233

233:                                              ; preds = %229
  %234 = load i32, ptr %15, align 8, !tbaa !81
  %235 = shl i32 %234, %220
  %236 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 3), !nosanitize !49
  %237 = extractvalue { i32, i1 } %236, 1, !nosanitize !49
  br i1 %237, label %238, label %239, !prof !50, !nosanitize !49

238:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

239:                                              ; preds = %233
  %240 = extractvalue { i32, i1 } %236, 0, !nosanitize !49
  %241 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %240, i32 1), !nosanitize !49
  %242 = extractvalue { i32, i1 } %241, 0, !nosanitize !49
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds nuw i8, ptr %210, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !8
  %246 = zext i8 %245 to i32
  %247 = xor i32 %235, %246
  %248 = and i32 %247, %227
  store i32 %248, ptr %15, align 8, !tbaa !81
  %249 = load ptr, ptr %12, align 8, !tbaa !41
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds nuw [2 x i8], ptr %249, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !63
  %253 = load ptr, ptr %13, align 8, !tbaa !40
  %254 = load i32, ptr %18, align 8, !tbaa !34
  %255 = and i32 %254, %231
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds nuw [2 x i8], ptr %253, i64 %256
  store i16 %252, ptr %257, align 2, !tbaa !63
  %258 = trunc i32 %231 to i16
  store i16 %258, ptr %251, align 2, !tbaa !63
  %259 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %231, i32 1), !nosanitize !49
  %260 = extractvalue { i32, i1 } %259, 0, !nosanitize !49
  %261 = add i32 %230, -1
  store i32 %261, ptr %10, align 4, !tbaa !77
  %262 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %195, i32 %261), !nosanitize !49
  %263 = extractvalue { i32, i1 } %262, 1, !nosanitize !49
  br i1 %263, label %264, label %265, !prof !50, !nosanitize !49

264:                                              ; preds = %239
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

265:                                              ; preds = %239
  %266 = extractvalue { i32, i1 } %262, 0, !nosanitize !49
  %267 = icmp ult i32 %266, 3
  br i1 %267, label %268, label %229, !llvm.loop !89

268:                                              ; preds = %265, %229, %200
  %269 = icmp ult i32 %195, 262
  br i1 %269, label %270, label %275

270:                                              ; preds = %268
  %271 = load ptr, ptr %0, align 8, !tbaa !20
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 8
  %273 = load i32, ptr %272, align 8, !tbaa !82
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %45, !llvm.loop !90

275:                                              ; preds = %270, %268, %142
  %276 = load i64, ptr %19, align 8, !tbaa !42
  %277 = load i64, ptr %5, align 8, !tbaa !62
  %278 = icmp ult i64 %276, %277
  br i1 %278, label %279, label %315

279:                                              ; preds = %275
  %280 = load i32, ptr %6, align 4, !tbaa !74
  %281 = zext i32 %280 to i64
  %282 = load i32, ptr %3, align 4, !tbaa !76
  %283 = zext i32 %282 to i64
  %284 = add nuw nsw i64 %283, %281
  %285 = icmp ult i64 %276, %284
  br i1 %285, label %286, label %296

286:                                              ; preds = %279
  %287 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %277, i64 %284), !nosanitize !49
  %288 = extractvalue { i64, i1 } %287, 1, !nosanitize !49
  br i1 %288, label %289, label %290, !prof !50, !nosanitize !49

289:                                              ; preds = %286
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

290:                                              ; preds = %286
  %291 = extractvalue { i64, i1 } %287, 0, !nosanitize !49
  %292 = tail call i64 @llvm.umin.i64(i64 %291, i64 258)
  %293 = load ptr, ptr %7, align 8, !tbaa !39
  %294 = getelementptr inbounds nuw i8, ptr %293, i64 %284
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %294, i8 0, i64 %292, i1 false)
  %295 = add nuw nsw i64 %292, %284
  br label %313

296:                                              ; preds = %279
  %297 = add nuw nsw i64 %284, 258
  %298 = icmp ult i64 %276, %297
  br i1 %298, label %299, label %315

299:                                              ; preds = %296
  %300 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %277, i64 %276), !nosanitize !49
  %301 = sub nuw nsw i64 %297, %276
  %302 = extractvalue { i64, i1 } %300, 0, !nosanitize !49
  %303 = tail call i64 @llvm.umin.i64(i64 %301, i64 %302)
  %304 = load ptr, ptr %7, align 8, !tbaa !39
  %305 = getelementptr inbounds nuw i8, ptr %304, i64 %276
  %306 = and i64 %303, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %305, i8 0, i64 %306, i1 false)
  %307 = load i64, ptr %19, align 8, !tbaa !42
  %308 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %307, i64 %303), !nosanitize !49
  %309 = extractvalue { i64, i1 } %308, 1, !nosanitize !49
  br i1 %309, label %310, label %311, !prof !50, !nosanitize !49

310:                                              ; preds = %299
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

311:                                              ; preds = %299
  %312 = extractvalue { i64, i1 } %308, 0, !nosanitize !49
  br label %313

313:                                              ; preds = %311, %290
  %314 = phi i64 [ %295, %290 ], [ %312, %311 ]
  store i64 %314, ptr %19, align 8, !tbaa !42
  br label %315

315:                                              ; preds = %313, %296, %275
  %316 = load i32, ptr %3, align 4, !tbaa !76
  %317 = icmp ult i32 %316, 259
  %318 = and i1 %20, %317
  br i1 %318, label %720, label %319

319:                                              ; preds = %315
  %320 = icmp eq i32 %316, 0
  br i1 %320, label %588, label %321

321:                                              ; preds = %319, %39
  store i32 0, ptr %21, align 8, !tbaa !79
  %322 = load i32, ptr %3, align 4, !tbaa !76
  %323 = icmp ugt i32 %322, 2
  br i1 %323, label %324, label %410

324:                                              ; preds = %321
  %325 = load i32, ptr %22, align 4, !tbaa !74
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %410, label %327

327:                                              ; preds = %324
  %328 = load ptr, ptr %23, align 8, !tbaa !39
  %329 = zext i32 %325 to i64
  %330 = getelementptr inbounds nuw i8, ptr %328, i64 %329
  %331 = getelementptr inbounds i8, ptr %330, i64 -1
  %332 = load i8, ptr %331, align 1, !tbaa !8
  %333 = load i8, ptr %330, align 1, !tbaa !8
  %334 = icmp eq i8 %332, %333
  br i1 %334, label %335, label %410

335:                                              ; preds = %327
  %336 = getelementptr inbounds nuw i8, ptr %330, i64 1
  %337 = load i8, ptr %336, align 1, !tbaa !8
  %338 = icmp eq i8 %332, %337
  br i1 %338, label %339, label %410

339:                                              ; preds = %335
  %340 = getelementptr inbounds nuw i8, ptr %330, i64 2
  %341 = load i8, ptr %340, align 1, !tbaa !8
  %342 = icmp eq i8 %332, %341
  br i1 %342, label %343, label %410

343:                                              ; preds = %339
  %344 = getelementptr inbounds nuw i8, ptr %330, i64 258
  br label %345

345:                                              ; preds = %375, %343
  %346 = phi i64 [ 2, %343 ], [ %376, %375 ]
  %347 = getelementptr inbounds nuw i8, ptr %330, i64 %346
  %348 = getelementptr inbounds nuw i8, ptr %347, i64 1
  %349 = load i8, ptr %348, align 1, !tbaa !8
  %350 = icmp eq i8 %332, %349
  br i1 %350, label %351, label %396

351:                                              ; preds = %345
  %352 = getelementptr inbounds nuw i8, ptr %347, i64 2
  %353 = load i8, ptr %352, align 1, !tbaa !8
  %354 = icmp eq i8 %332, %353
  br i1 %354, label %355, label %394

355:                                              ; preds = %351
  %356 = getelementptr inbounds nuw i8, ptr %347, i64 3
  %357 = load i8, ptr %356, align 1, !tbaa !8
  %358 = icmp eq i8 %332, %357
  br i1 %358, label %359, label %392

359:                                              ; preds = %355
  %360 = getelementptr inbounds nuw i8, ptr %347, i64 4
  %361 = load i8, ptr %360, align 1, !tbaa !8
  %362 = icmp eq i8 %332, %361
  br i1 %362, label %363, label %390

363:                                              ; preds = %359
  %364 = getelementptr inbounds nuw i8, ptr %347, i64 5
  %365 = load i8, ptr %364, align 1, !tbaa !8
  %366 = icmp eq i8 %332, %365
  br i1 %366, label %367, label %388

367:                                              ; preds = %363
  %368 = getelementptr inbounds nuw i8, ptr %347, i64 6
  %369 = load i8, ptr %368, align 1, !tbaa !8
  %370 = icmp eq i8 %332, %369
  br i1 %370, label %371, label %386

371:                                              ; preds = %367
  %372 = getelementptr inbounds nuw i8, ptr %347, i64 7
  %373 = load i8, ptr %372, align 1, !tbaa !8
  %374 = icmp eq i8 %332, %373
  br i1 %374, label %375, label %384

375:                                              ; preds = %371
  %376 = add nuw nsw i64 %346, 8
  %377 = getelementptr inbounds nuw i8, ptr %330, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !8
  %379 = icmp eq i8 %332, %378
  %380 = icmp samesign ult i64 %346, 250
  %381 = select i1 %379, i1 %380, i1 false
  br i1 %381, label %345, label %382, !llvm.loop !124

382:                                              ; preds = %375
  %383 = getelementptr inbounds nuw i8, ptr %330, i64 %376
  br label %398

384:                                              ; preds = %371
  %385 = getelementptr inbounds nuw i8, ptr %347, i64 7
  br label %398

386:                                              ; preds = %367
  %387 = getelementptr inbounds nuw i8, ptr %347, i64 6
  br label %398

388:                                              ; preds = %363
  %389 = getelementptr inbounds nuw i8, ptr %347, i64 5
  br label %398

390:                                              ; preds = %359
  %391 = getelementptr inbounds nuw i8, ptr %347, i64 4
  br label %398

392:                                              ; preds = %355
  %393 = getelementptr inbounds nuw i8, ptr %347, i64 3
  br label %398

394:                                              ; preds = %351
  %395 = getelementptr inbounds nuw i8, ptr %347, i64 2
  br label %398

396:                                              ; preds = %345
  %397 = getelementptr inbounds nuw i8, ptr %347, i64 1
  br label %398

398:                                              ; preds = %396, %394, %392, %390, %388, %386, %384, %382
  %399 = phi ptr [ %395, %394 ], [ %393, %392 ], [ %383, %382 ], [ %385, %384 ], [ %387, %386 ], [ %389, %388 ], [ %391, %390 ], [ %397, %396 ]
  %400 = ptrtoint ptr %344 to i64
  %401 = ptrtoint ptr %399 to i64
  %402 = sub i64 %400, %401
  %403 = trunc i64 %402 to i32
  %404 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 258, i32 %403), !nosanitize !49
  %405 = extractvalue { i32, i1 } %404, 1, !nosanitize !49
  br i1 %405, label %406, label %407, !prof !50, !nosanitize !49

406:                                              ; preds = %398
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

407:                                              ; preds = %398
  %408 = extractvalue { i32, i1 } %404, 0, !nosanitize !49
  %409 = tail call i32 @llvm.umin.i32(i32 %408, i32 %322)
  store i32 %409, ptr %21, align 8
  br label %410

410:                                              ; preds = %407, %339, %335, %327, %324, %321
  %411 = load i32, ptr %21, align 8, !tbaa !79
  %412 = icmp ugt i32 %411, 2
  br i1 %412, label %413, label %471

413:                                              ; preds = %410
  %414 = trunc i32 %411 to i8
  %415 = add i8 %414, -3
  %416 = load i32, ptr %31, align 4, !tbaa !122
  %417 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %416, i32 1), !nosanitize !49
  %418 = extractvalue { i32, i1 } %417, 1, !nosanitize !49
  br i1 %418, label %419, label %420, !prof !50, !nosanitize !49

419:                                              ; preds = %413
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

420:                                              ; preds = %413
  %421 = extractvalue { i32, i1 } %417, 0, !nosanitize !49
  %422 = load ptr, ptr %30, align 8, !tbaa !48
  store i32 %421, ptr %31, align 4, !tbaa !122
  %423 = zext i32 %416 to i64
  %424 = getelementptr inbounds nuw i8, ptr %422, i64 %423
  store i8 1, ptr %424, align 1, !tbaa !8
  %425 = load i32, ptr %31, align 4, !tbaa !122
  %426 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %425, i32 1), !nosanitize !49
  %427 = extractvalue { i32, i1 } %426, 1, !nosanitize !49
  br i1 %427, label %428, label %429, !prof !50, !nosanitize !49

428:                                              ; preds = %420
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

429:                                              ; preds = %420
  %430 = extractvalue { i32, i1 } %426, 0, !nosanitize !49
  %431 = load ptr, ptr %30, align 8, !tbaa !48
  store i32 %430, ptr %31, align 4, !tbaa !122
  %432 = zext i32 %425 to i64
  %433 = getelementptr inbounds nuw i8, ptr %431, i64 %432
  store i8 0, ptr %433, align 1, !tbaa !8
  %434 = load i32, ptr %31, align 4, !tbaa !122
  %435 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %434, i32 1), !nosanitize !49
  %436 = extractvalue { i32, i1 } %435, 1, !nosanitize !49
  br i1 %436, label %437, label %438, !prof !50, !nosanitize !49

437:                                              ; preds = %429
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

438:                                              ; preds = %429
  %439 = extractvalue { i32, i1 } %435, 0, !nosanitize !49
  %440 = load ptr, ptr %30, align 8, !tbaa !48
  store i32 %439, ptr %31, align 4, !tbaa !122
  %441 = zext i32 %434 to i64
  %442 = getelementptr inbounds nuw i8, ptr %440, i64 %441
  store i8 %415, ptr %442, align 1, !tbaa !8
  %443 = zext i8 %415 to i64
  %444 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %443
  %445 = load i8, ptr %444, align 1, !tbaa !8
  %446 = zext i8 %445 to i64
  %447 = getelementptr [4 x i8], ptr %32, i64 %446
  %448 = load i16, ptr %447, align 4, !tbaa !8
  %449 = add i16 %448, 1
  store i16 %449, ptr %447, align 4, !tbaa !8
  %450 = load i8, ptr @_dist_code, align 1, !tbaa !8
  %451 = zext i8 %450 to i64
  %452 = getelementptr inbounds nuw [4 x i8], ptr %33, i64 %451
  %453 = load i16, ptr %452, align 4, !tbaa !8
  %454 = add i16 %453, 1
  store i16 %454, ptr %452, align 4, !tbaa !8
  %455 = load i32, ptr %31, align 4, !tbaa !122
  %456 = load i32, ptr %34, align 8, !tbaa !51
  %457 = icmp eq i32 %455, %456
  %458 = load i32, ptr %21, align 8, !tbaa !79
  %459 = load i32, ptr %3, align 4, !tbaa !76
  %460 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %459, i32 %458), !nosanitize !49
  %461 = extractvalue { i32, i1 } %460, 1, !nosanitize !49
  br i1 %461, label %462, label %463, !prof !50, !nosanitize !49

462:                                              ; preds = %438
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

463:                                              ; preds = %438
  %464 = extractvalue { i32, i1 } %460, 0, !nosanitize !49
  store i32 %464, ptr %3, align 4, !tbaa !76
  %465 = load i32, ptr %35, align 4, !tbaa !74
  %466 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %465, i32 %458), !nosanitize !49
  %467 = extractvalue { i32, i1 } %466, 1, !nosanitize !49
  br i1 %467, label %468, label %469, !prof !50, !nosanitize !49

468:                                              ; preds = %463
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

469:                                              ; preds = %463
  %470 = extractvalue { i32, i1 } %466, 0, !nosanitize !49
  store i32 %470, ptr %35, align 4, !tbaa !74
  store i32 0, ptr %21, align 8, !tbaa !79
  br label %523

471:                                              ; preds = %410
  %472 = load ptr, ptr %24, align 8, !tbaa !39
  %473 = load i32, ptr %25, align 4, !tbaa !74
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds nuw i8, ptr %472, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !8
  %477 = load i32, ptr %27, align 4, !tbaa !122
  %478 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %477, i32 1), !nosanitize !49
  %479 = extractvalue { i32, i1 } %478, 1, !nosanitize !49
  br i1 %479, label %480, label %481, !prof !50, !nosanitize !49

480:                                              ; preds = %471
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

481:                                              ; preds = %471
  %482 = extractvalue { i32, i1 } %478, 0, !nosanitize !49
  %483 = load ptr, ptr %26, align 8, !tbaa !48
  store i32 %482, ptr %27, align 4, !tbaa !122
  %484 = zext i32 %477 to i64
  %485 = getelementptr inbounds nuw i8, ptr %483, i64 %484
  store i8 0, ptr %485, align 1, !tbaa !8
  %486 = load i32, ptr %27, align 4, !tbaa !122
  %487 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %486, i32 1), !nosanitize !49
  %488 = extractvalue { i32, i1 } %487, 1, !nosanitize !49
  br i1 %488, label %489, label %490, !prof !50, !nosanitize !49

489:                                              ; preds = %481
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

490:                                              ; preds = %481
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

499:                                              ; preds = %490
  %500 = extractvalue { i32, i1 } %496, 0, !nosanitize !49
  %501 = load ptr, ptr %26, align 8, !tbaa !48
  store i32 %500, ptr %27, align 4, !tbaa !122
  %502 = zext i32 %495 to i64
  %503 = getelementptr inbounds nuw i8, ptr %501, i64 %502
  store i8 %476, ptr %503, align 1, !tbaa !8
  %504 = zext i8 %476 to i64
  %505 = getelementptr inbounds nuw [4 x i8], ptr %28, i64 %504
  %506 = load i16, ptr %505, align 4, !tbaa !8
  %507 = add i16 %506, 1
  store i16 %507, ptr %505, align 4, !tbaa !8
  %508 = load i32, ptr %27, align 4, !tbaa !122
  %509 = load i32, ptr %29, align 8, !tbaa !51
  %510 = icmp eq i32 %508, %509
  %511 = load i32, ptr %3, align 4, !tbaa !76
  %512 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %511, i32 1), !nosanitize !49
  %513 = extractvalue { i32, i1 } %512, 1, !nosanitize !49
  br i1 %513, label %514, label %515, !prof !50, !nosanitize !49

514:                                              ; preds = %499
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

515:                                              ; preds = %499
  %516 = extractvalue { i32, i1 } %512, 0, !nosanitize !49
  store i32 %516, ptr %3, align 4, !tbaa !76
  %517 = load i32, ptr %25, align 4, !tbaa !74
  %518 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %517, i32 1), !nosanitize !49
  %519 = extractvalue { i32, i1 } %518, 1, !nosanitize !49
  br i1 %519, label %520, label %521, !prof !50, !nosanitize !49

520:                                              ; preds = %515
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

521:                                              ; preds = %515
  %522 = extractvalue { i32, i1 } %518, 0, !nosanitize !49
  store i32 %522, ptr %25, align 4, !tbaa !74
  br label %523

523:                                              ; preds = %521, %469
  %524 = phi i1 [ %457, %469 ], [ %510, %521 ]
  br i1 %524, label %525, label %587

525:                                              ; preds = %523
  %526 = load i64, ptr %36, align 8, !tbaa !75
  %527 = icmp sgt i64 %526, -1
  br i1 %527, label %528, label %532

528:                                              ; preds = %525
  %529 = load ptr, ptr %37, align 8, !tbaa !39
  %530 = and i64 %526, 4294967295
  %531 = getelementptr inbounds nuw i8, ptr %529, i64 %530
  br label %532

532:                                              ; preds = %528, %525
  %533 = phi ptr [ %531, %528 ], [ null, %525 ]
  %534 = load i32, ptr %38, align 4, !tbaa !74
  %535 = zext i32 %534 to i64
  %536 = sub nsw i64 %535, %526
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %533, i64 noundef %536, i32 noundef 0) #11
  %537 = load i32, ptr %38, align 4, !tbaa !74
  %538 = zext i32 %537 to i64
  store i64 %538, ptr %36, align 8, !tbaa !75
  %539 = load ptr, ptr %0, align 8, !tbaa !20
  %540 = getelementptr inbounds nuw i8, ptr %539, i64 56
  %541 = load ptr, ptr %540, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %541) #11
  %542 = getelementptr inbounds nuw i8, ptr %541, i64 40
  %543 = load i64, ptr %542, align 8, !tbaa !58
  %544 = getelementptr inbounds nuw i8, ptr %539, i64 32
  %545 = load i32, ptr %544, align 8, !tbaa !100
  %546 = zext i32 %545 to i64
  %547 = tail call i64 @llvm.umin.i64(i64 %543, i64 %546)
  %548 = trunc nuw i64 %547 to i32
  %549 = icmp eq i64 %547, 0
  br i1 %549, label %582, label %550

550:                                              ; preds = %532
  %551 = getelementptr inbounds nuw i8, ptr %539, i64 24
  %552 = load ptr, ptr %551, align 8, !tbaa !99
  %553 = getelementptr inbounds nuw i8, ptr %541, i64 32
  %554 = load ptr, ptr %553, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %552, ptr align 1 %554, i64 %547, i1 false)
  %555 = load ptr, ptr %551, align 8, !tbaa !99
  %556 = getelementptr inbounds nuw i8, ptr %555, i64 %547
  store ptr %556, ptr %551, align 8, !tbaa !99
  %557 = load ptr, ptr %553, align 8, !tbaa !59
  %558 = getelementptr inbounds nuw i8, ptr %557, i64 %547
  store ptr %558, ptr %553, align 8, !tbaa !59
  %559 = getelementptr inbounds nuw i8, ptr %539, i64 40
  %560 = load i64, ptr %559, align 8, !tbaa !101
  %561 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %560, i64 %547), !nosanitize !49
  %562 = extractvalue { i64, i1 } %561, 1, !nosanitize !49
  br i1 %562, label %563, label %564, !prof !50, !nosanitize !49

563:                                              ; preds = %550
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

564:                                              ; preds = %550
  %565 = extractvalue { i64, i1 } %561, 0, !nosanitize !49
  store i64 %565, ptr %559, align 8, !tbaa !101
  %566 = load i32, ptr %544, align 8, !tbaa !100
  %567 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %566, i32 %548), !nosanitize !49
  %568 = extractvalue { i32, i1 } %567, 1, !nosanitize !49
  br i1 %568, label %569, label %570, !prof !50, !nosanitize !49

569:                                              ; preds = %564
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

570:                                              ; preds = %564
  %571 = extractvalue { i32, i1 } %567, 0, !nosanitize !49
  store i32 %571, ptr %544, align 8, !tbaa !100
  %572 = load i64, ptr %542, align 8, !tbaa !58
  %573 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %572, i64 %547), !nosanitize !49
  %574 = extractvalue { i64, i1 } %573, 1, !nosanitize !49
  br i1 %574, label %575, label %576, !prof !50, !nosanitize !49

575:                                              ; preds = %570
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

576:                                              ; preds = %570
  %577 = extractvalue { i64, i1 } %573, 0, !nosanitize !49
  store i64 %577, ptr %542, align 8, !tbaa !58
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %582

579:                                              ; preds = %576
  %580 = getelementptr inbounds nuw i8, ptr %541, i64 16
  %581 = load ptr, ptr %580, align 8, !tbaa !44
  store ptr %581, ptr %553, align 8, !tbaa !59
  br label %582

582:                                              ; preds = %579, %576, %532
  %583 = load ptr, ptr %0, align 8, !tbaa !20
  %584 = getelementptr inbounds nuw i8, ptr %583, i64 32
  %585 = load i32, ptr %584, align 8, !tbaa !100
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %720, label %587

587:                                              ; preds = %582, %523
  br label %39, !llvm.loop !125

588:                                              ; preds = %319
  store i32 0, ptr %10, align 4, !tbaa !77
  %589 = icmp eq i32 %1, 4
  br i1 %589, label %590, label %653

590:                                              ; preds = %588
  %591 = load i64, ptr %9, align 8, !tbaa !75
  %592 = icmp sgt i64 %591, -1
  br i1 %592, label %593, label %597

593:                                              ; preds = %590
  %594 = load ptr, ptr %7, align 8, !tbaa !39
  %595 = and i64 %591, 4294967295
  %596 = getelementptr inbounds nuw i8, ptr %594, i64 %595
  br label %597

597:                                              ; preds = %593, %590
  %598 = phi ptr [ %596, %593 ], [ null, %590 ]
  %599 = load i32, ptr %6, align 4, !tbaa !74
  %600 = zext i32 %599 to i64
  %601 = sub nsw i64 %600, %591
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %598, i64 noundef %601, i32 noundef 1) #11
  %602 = load i32, ptr %6, align 4, !tbaa !74
  %603 = zext i32 %602 to i64
  store i64 %603, ptr %9, align 8, !tbaa !75
  %604 = load ptr, ptr %0, align 8, !tbaa !20
  %605 = getelementptr inbounds nuw i8, ptr %604, i64 56
  %606 = load ptr, ptr %605, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %606) #11
  %607 = getelementptr inbounds nuw i8, ptr %606, i64 40
  %608 = load i64, ptr %607, align 8, !tbaa !58
  %609 = getelementptr inbounds nuw i8, ptr %604, i64 32
  %610 = load i32, ptr %609, align 8, !tbaa !100
  %611 = zext i32 %610 to i64
  %612 = tail call i64 @llvm.umin.i64(i64 %608, i64 %611)
  %613 = trunc nuw i64 %612 to i32
  %614 = icmp eq i64 %612, 0
  br i1 %614, label %647, label %615

615:                                              ; preds = %597
  %616 = getelementptr inbounds nuw i8, ptr %604, i64 24
  %617 = load ptr, ptr %616, align 8, !tbaa !99
  %618 = getelementptr inbounds nuw i8, ptr %606, i64 32
  %619 = load ptr, ptr %618, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %617, ptr align 1 %619, i64 %612, i1 false)
  %620 = load ptr, ptr %616, align 8, !tbaa !99
  %621 = getelementptr inbounds nuw i8, ptr %620, i64 %612
  store ptr %621, ptr %616, align 8, !tbaa !99
  %622 = load ptr, ptr %618, align 8, !tbaa !59
  %623 = getelementptr inbounds nuw i8, ptr %622, i64 %612
  store ptr %623, ptr %618, align 8, !tbaa !59
  %624 = getelementptr inbounds nuw i8, ptr %604, i64 40
  %625 = load i64, ptr %624, align 8, !tbaa !101
  %626 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %625, i64 %612), !nosanitize !49
  %627 = extractvalue { i64, i1 } %626, 1, !nosanitize !49
  br i1 %627, label %628, label %629, !prof !50, !nosanitize !49

628:                                              ; preds = %615
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

629:                                              ; preds = %615
  %630 = extractvalue { i64, i1 } %626, 0, !nosanitize !49
  store i64 %630, ptr %624, align 8, !tbaa !101
  %631 = load i32, ptr %609, align 8, !tbaa !100
  %632 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %631, i32 %613), !nosanitize !49
  %633 = extractvalue { i32, i1 } %632, 1, !nosanitize !49
  br i1 %633, label %634, label %635, !prof !50, !nosanitize !49

634:                                              ; preds = %629
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

635:                                              ; preds = %629
  %636 = extractvalue { i32, i1 } %632, 0, !nosanitize !49
  store i32 %636, ptr %609, align 8, !tbaa !100
  %637 = load i64, ptr %607, align 8, !tbaa !58
  %638 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %637, i64 %612), !nosanitize !49
  %639 = extractvalue { i64, i1 } %638, 1, !nosanitize !49
  br i1 %639, label %640, label %641, !prof !50, !nosanitize !49

640:                                              ; preds = %635
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

641:                                              ; preds = %635
  %642 = extractvalue { i64, i1 } %638, 0, !nosanitize !49
  store i64 %642, ptr %607, align 8, !tbaa !58
  %643 = icmp eq i64 %642, 0
  br i1 %643, label %644, label %647

644:                                              ; preds = %641
  %645 = getelementptr inbounds nuw i8, ptr %606, i64 16
  %646 = load ptr, ptr %645, align 8, !tbaa !44
  store ptr %646, ptr %618, align 8, !tbaa !59
  br label %647

647:                                              ; preds = %644, %641, %597
  %648 = load ptr, ptr %0, align 8, !tbaa !20
  %649 = getelementptr inbounds nuw i8, ptr %648, i64 32
  %650 = load i32, ptr %649, align 8, !tbaa !100
  %651 = icmp eq i32 %650, 0
  %652 = select i1 %651, i32 2, i32 3
  br label %720

653:                                              ; preds = %588
  %654 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %655 = load i32, ptr %654, align 4, !tbaa !122
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %719, label %657

657:                                              ; preds = %653
  %658 = load i64, ptr %9, align 8, !tbaa !75
  %659 = icmp sgt i64 %658, -1
  br i1 %659, label %660, label %664

660:                                              ; preds = %657
  %661 = load ptr, ptr %7, align 8, !tbaa !39
  %662 = and i64 %658, 4294967295
  %663 = getelementptr inbounds nuw i8, ptr %661, i64 %662
  br label %664

664:                                              ; preds = %660, %657
  %665 = phi ptr [ %663, %660 ], [ null, %657 ]
  %666 = load i32, ptr %6, align 4, !tbaa !74
  %667 = zext i32 %666 to i64
  %668 = sub nsw i64 %667, %658
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %665, i64 noundef %668, i32 noundef 0) #11
  %669 = load i32, ptr %6, align 4, !tbaa !74
  %670 = zext i32 %669 to i64
  store i64 %670, ptr %9, align 8, !tbaa !75
  %671 = load ptr, ptr %0, align 8, !tbaa !20
  %672 = getelementptr inbounds nuw i8, ptr %671, i64 56
  %673 = load ptr, ptr %672, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %673) #11
  %674 = getelementptr inbounds nuw i8, ptr %673, i64 40
  %675 = load i64, ptr %674, align 8, !tbaa !58
  %676 = getelementptr inbounds nuw i8, ptr %671, i64 32
  %677 = load i32, ptr %676, align 8, !tbaa !100
  %678 = zext i32 %677 to i64
  %679 = tail call i64 @llvm.umin.i64(i64 %675, i64 %678)
  %680 = trunc nuw i64 %679 to i32
  %681 = icmp eq i64 %679, 0
  br i1 %681, label %714, label %682

682:                                              ; preds = %664
  %683 = getelementptr inbounds nuw i8, ptr %671, i64 24
  %684 = load ptr, ptr %683, align 8, !tbaa !99
  %685 = getelementptr inbounds nuw i8, ptr %673, i64 32
  %686 = load ptr, ptr %685, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %684, ptr align 1 %686, i64 %679, i1 false)
  %687 = load ptr, ptr %683, align 8, !tbaa !99
  %688 = getelementptr inbounds nuw i8, ptr %687, i64 %679
  store ptr %688, ptr %683, align 8, !tbaa !99
  %689 = load ptr, ptr %685, align 8, !tbaa !59
  %690 = getelementptr inbounds nuw i8, ptr %689, i64 %679
  store ptr %690, ptr %685, align 8, !tbaa !59
  %691 = getelementptr inbounds nuw i8, ptr %671, i64 40
  %692 = load i64, ptr %691, align 8, !tbaa !101
  %693 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %692, i64 %679), !nosanitize !49
  %694 = extractvalue { i64, i1 } %693, 1, !nosanitize !49
  br i1 %694, label %695, label %696, !prof !50, !nosanitize !49

695:                                              ; preds = %682
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

696:                                              ; preds = %682
  %697 = extractvalue { i64, i1 } %693, 0, !nosanitize !49
  store i64 %697, ptr %691, align 8, !tbaa !101
  %698 = load i32, ptr %676, align 8, !tbaa !100
  %699 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %698, i32 %680), !nosanitize !49
  %700 = extractvalue { i32, i1 } %699, 1, !nosanitize !49
  br i1 %700, label %701, label %702, !prof !50, !nosanitize !49

701:                                              ; preds = %696
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

702:                                              ; preds = %696
  %703 = extractvalue { i32, i1 } %699, 0, !nosanitize !49
  store i32 %703, ptr %676, align 8, !tbaa !100
  %704 = load i64, ptr %674, align 8, !tbaa !58
  %705 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %704, i64 %679), !nosanitize !49
  %706 = extractvalue { i64, i1 } %705, 1, !nosanitize !49
  br i1 %706, label %707, label %708, !prof !50, !nosanitize !49

707:                                              ; preds = %702
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

708:                                              ; preds = %702
  %709 = extractvalue { i64, i1 } %705, 0, !nosanitize !49
  store i64 %709, ptr %674, align 8, !tbaa !58
  %710 = icmp eq i64 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %708
  %712 = getelementptr inbounds nuw i8, ptr %673, i64 16
  %713 = load ptr, ptr %712, align 8, !tbaa !44
  store ptr %713, ptr %685, align 8, !tbaa !59
  br label %714

714:                                              ; preds = %711, %708, %664
  %715 = load ptr, ptr %0, align 8, !tbaa !20
  %716 = getelementptr inbounds nuw i8, ptr %715, i64 32
  %717 = load i32, ptr %716, align 8, !tbaa !100
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %720, label %719

719:                                              ; preds = %714, %653
  br label %720

720:                                              ; preds = %719, %714, %647, %582, %315
  %721 = phi i32 [ 1, %719 ], [ %652, %647 ], [ 0, %714 ], [ 0, %315 ], [ 0, %582 ]
  ret i32 %721
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
  %34 = tail call ptr %31(ptr noundef %33, i32 noundef 1, i32 noundef 5968) #11
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
  tail call void %76(ptr noundef %92, ptr noundef nonnull %89) #11, !inline_history !55
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
  tail call void %99(ptr noundef %100, ptr noundef nonnull %96) #11, !inline_history !55
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
  tail call void %107(ptr noundef %108, ptr noundef nonnull %104) #11, !inline_history !55
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
  tail call void %115(ptr noundef %116, ptr noundef nonnull %112) #11, !inline_history !55
  br label %117

117:                                              ; preds = %114, %109
  %118 = load ptr, ptr %75, align 8, !tbaa !17
  %119 = load ptr, ptr %32, align 8, !tbaa !16
  %120 = load ptr, ptr %37, align 8, !tbaa !19
  tail call void %118(ptr noundef %119, ptr noundef %120) #11, !inline_history !55
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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

69:                                               ; preds = %833, %2
  %70 = load i32, ptr %3, align 4, !tbaa !76
  %71 = icmp ult i32 %70, 262
  br i1 %71, label %72, label %351

72:                                               ; preds = %69
  %73 = load i32, ptr %4, align 8, !tbaa !33
  %74 = zext i32 %73 to i64
  br label %75

75:                                               ; preds = %300, %72
  %76 = load i64, ptr %5, align 8, !tbaa !62
  %77 = load i32, ptr %3, align 4, !tbaa !76
  %78 = zext i32 %77 to i64
  %79 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %76, i64 %78), !nosanitize !49
  %80 = extractvalue { i64, i1 } %79, 1, !nosanitize !49
  br i1 %80, label %81, label %82, !prof !50, !nosanitize !49

81:                                               ; preds = %75
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

82:                                               ; preds = %75
  %83 = extractvalue { i64, i1 } %79, 0, !nosanitize !49
  %84 = load i32, ptr %6, align 4, !tbaa !74
  %85 = zext i32 %84 to i64
  %86 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %83, i64 %85), !nosanitize !49
  %87 = extractvalue { i64, i1 } %86, 1, !nosanitize !49
  br i1 %87, label %88, label %89, !prof !50, !nosanitize !49

88:                                               ; preds = %82
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

89:                                               ; preds = %82
  %90 = extractvalue { i64, i1 } %86, 0, !nosanitize !49
  %91 = trunc i64 %90 to i32
  %92 = load i32, ptr %4, align 8, !tbaa !33
  %93 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %92, i32 262), !nosanitize !49
  %94 = extractvalue { i32, i1 } %93, 1, !nosanitize !49
  br i1 %94, label %95, label %96, !prof !50, !nosanitize !49

95:                                               ; preds = %89
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

96:                                               ; preds = %89
  %97 = extractvalue { i32, i1 } %93, 0, !nosanitize !49
  %98 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %73, i32 %97), !nosanitize !49
  %99 = extractvalue { i32, i1 } %98, 1, !nosanitize !49
  br i1 %99, label %100, label %101, !prof !50, !nosanitize !49

100:                                              ; preds = %96
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

117:                                              ; preds = %108
  %118 = extractvalue { i32, i1 } %114, 0, !nosanitize !49
  store i32 %118, ptr %8, align 8, !tbaa !84
  %119 = load i32, ptr %6, align 4, !tbaa !74
  %120 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %119, i32 %73), !nosanitize !49
  %121 = extractvalue { i32, i1 } %120, 1, !nosanitize !49
  br i1 %121, label %122, label %123, !prof !50, !nosanitize !49

122:                                              ; preds = %117
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  br i1 %177, label %305, label %178

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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  %203 = tail call i64 @adler32(i64 noundef %202, ptr noundef %185, i32 noundef %186) #11
  store i64 %203, ptr %201, align 8, !tbaa !60
  br label %208

204:                                              ; preds = %192
  %205 = getelementptr inbounds nuw i8, ptr %174, i64 96
  %206 = load i64, ptr %205, align 8, !tbaa !60
  %207 = tail call i64 @crc32(i64 noundef %206, ptr noundef %185, i32 noundef %186) #11
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

224:                                              ; preds = %218
  %225 = extractvalue { i32, i1 } %221, 0, !nosanitize !49
  store i32 %225, ptr %3, align 4, !tbaa !76
  %226 = load i32, ptr %10, align 4, !tbaa !77
  %227 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %226), !nosanitize !49
  %228 = extractvalue { i32, i1 } %227, 1, !nosanitize !49
  br i1 %228, label %229, label %230, !prof !50, !nosanitize !49

229:                                              ; preds = %224
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

230:                                              ; preds = %224
  %231 = extractvalue { i32, i1 } %227, 0, !nosanitize !49
  %232 = icmp ugt i32 %231, 2
  br i1 %232, label %233, label %298

233:                                              ; preds = %230
  %234 = load i32, ptr %6, align 4, !tbaa !74
  %235 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %234, i32 %226), !nosanitize !49
  %236 = extractvalue { i32, i1 } %235, 0, !nosanitize !49
  %237 = extractvalue { i32, i1 } %235, 1, !nosanitize !49
  br i1 %237, label %238, label %239, !prof !50, !nosanitize !49

238:                                              ; preds = %233
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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

259:                                              ; preds = %295, %248
  %260 = phi i32 [ %226, %248 ], [ %291, %295 ]
  %261 = phi i32 [ %236, %248 ], [ %290, %295 ]
  %262 = icmp eq i32 %260, 0
  br i1 %262, label %298, label %263

263:                                              ; preds = %259
  %264 = load i32, ptr %15, align 8, !tbaa !81
  %265 = shl i32 %264, %250
  %266 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 3), !nosanitize !49
  %267 = extractvalue { i32, i1 } %266, 1, !nosanitize !49
  br i1 %267, label %268, label %269, !prof !50, !nosanitize !49

268:                                              ; preds = %263
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

269:                                              ; preds = %263
  %270 = extractvalue { i32, i1 } %266, 0, !nosanitize !49
  %271 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %270, i32 1), !nosanitize !49
  %272 = extractvalue { i32, i1 } %271, 0, !nosanitize !49
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds nuw i8, ptr %240, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !8
  %276 = zext i8 %275 to i32
  %277 = xor i32 %265, %276
  %278 = and i32 %277, %257
  store i32 %278, ptr %15, align 8, !tbaa !81
  %279 = load ptr, ptr %12, align 8, !tbaa !41
  %280 = zext i32 %278 to i64
  %281 = getelementptr inbounds nuw [2 x i8], ptr %279, i64 %280
  %282 = load i16, ptr %281, align 2, !tbaa !63
  %283 = load ptr, ptr %13, align 8, !tbaa !40
  %284 = load i32, ptr %18, align 8, !tbaa !34
  %285 = and i32 %284, %261
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds nuw [2 x i8], ptr %283, i64 %286
  store i16 %282, ptr %287, align 2, !tbaa !63
  %288 = trunc i32 %261 to i16
  store i16 %288, ptr %281, align 2, !tbaa !63
  %289 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %261, i32 1), !nosanitize !49
  %290 = extractvalue { i32, i1 } %289, 0, !nosanitize !49
  %291 = add i32 %260, -1
  store i32 %291, ptr %10, align 4, !tbaa !77
  %292 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %225, i32 %291), !nosanitize !49
  %293 = extractvalue { i32, i1 } %292, 1, !nosanitize !49
  br i1 %293, label %294, label %295, !prof !50, !nosanitize !49

294:                                              ; preds = %269
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

295:                                              ; preds = %269
  %296 = extractvalue { i32, i1 } %292, 0, !nosanitize !49
  %297 = icmp ult i32 %296, 3
  br i1 %297, label %298, label %259, !llvm.loop !89

298:                                              ; preds = %295, %259, %230
  %299 = icmp ult i32 %225, 262
  br i1 %299, label %300, label %305

300:                                              ; preds = %298
  %301 = load ptr, ptr %0, align 8, !tbaa !20
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 8
  %303 = load i32, ptr %302, align 8, !tbaa !82
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %75, !llvm.loop !90

305:                                              ; preds = %300, %298, %172
  %306 = load i64, ptr %19, align 8, !tbaa !42
  %307 = load i64, ptr %5, align 8, !tbaa !62
  %308 = icmp ult i64 %306, %307
  br i1 %308, label %309, label %345

309:                                              ; preds = %305
  %310 = load i32, ptr %6, align 4, !tbaa !74
  %311 = zext i32 %310 to i64
  %312 = load i32, ptr %3, align 4, !tbaa !76
  %313 = zext i32 %312 to i64
  %314 = add nuw nsw i64 %313, %311
  %315 = icmp ult i64 %306, %314
  br i1 %315, label %316, label %326

316:                                              ; preds = %309
  %317 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %307, i64 %314), !nosanitize !49
  %318 = extractvalue { i64, i1 } %317, 1, !nosanitize !49
  br i1 %318, label %319, label %320, !prof !50, !nosanitize !49

319:                                              ; preds = %316
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

320:                                              ; preds = %316
  %321 = extractvalue { i64, i1 } %317, 0, !nosanitize !49
  %322 = tail call i64 @llvm.umin.i64(i64 %321, i64 258)
  %323 = load ptr, ptr %7, align 8, !tbaa !39
  %324 = getelementptr inbounds nuw i8, ptr %323, i64 %314
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %324, i8 0, i64 %322, i1 false)
  %325 = add nuw nsw i64 %322, %314
  br label %343

326:                                              ; preds = %309
  %327 = add nuw nsw i64 %314, 258
  %328 = icmp ult i64 %306, %327
  br i1 %328, label %329, label %345

329:                                              ; preds = %326
  %330 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %307, i64 %306), !nosanitize !49
  %331 = sub nuw nsw i64 %327, %306
  %332 = extractvalue { i64, i1 } %330, 0, !nosanitize !49
  %333 = tail call i64 @llvm.umin.i64(i64 %331, i64 %332)
  %334 = load ptr, ptr %7, align 8, !tbaa !39
  %335 = getelementptr inbounds nuw i8, ptr %334, i64 %306
  %336 = and i64 %333, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %335, i8 0, i64 %336, i1 false)
  %337 = load i64, ptr %19, align 8, !tbaa !42
  %338 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %337, i64 %333), !nosanitize !49
  %339 = extractvalue { i64, i1 } %338, 1, !nosanitize !49
  br i1 %339, label %340, label %341, !prof !50, !nosanitize !49

340:                                              ; preds = %329
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

341:                                              ; preds = %329
  %342 = extractvalue { i64, i1 } %338, 0, !nosanitize !49
  br label %343

343:                                              ; preds = %341, %320
  %344 = phi i64 [ %325, %320 ], [ %342, %341 ]
  store i64 %344, ptr %19, align 8, !tbaa !42
  br label %345

345:                                              ; preds = %343, %326, %305
  %346 = load i32, ptr %3, align 4, !tbaa !76
  %347 = icmp ult i32 %346, 262
  %348 = and i1 %20, %347
  br i1 %348, label %966, label %349

349:                                              ; preds = %345
  %350 = icmp eq i32 %346, 0
  br i1 %350, label %834, label %351

351:                                              ; preds = %349, %69
  %352 = load i32, ptr %3, align 4, !tbaa !76
  %353 = icmp ugt i32 %352, 2
  br i1 %353, label %354, label %383

354:                                              ; preds = %351
  %355 = load i32, ptr %21, align 4, !tbaa !74
  %356 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %355, i32 2), !nosanitize !49
  %357 = extractvalue { i32, i1 } %356, 1, !nosanitize !49
  br i1 %357, label %358, label %359, !prof !50, !nosanitize !49

358:                                              ; preds = %354
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

359:                                              ; preds = %354
  %360 = extractvalue { i32, i1 } %356, 0, !nosanitize !49
  %361 = load ptr, ptr %22, align 8, !tbaa !39
  %362 = load i32, ptr %23, align 8, !tbaa !81
  %363 = load i32, ptr %24, align 8, !tbaa !38
  %364 = shl i32 %362, %363
  %365 = zext i32 %360 to i64
  %366 = getelementptr inbounds nuw i8, ptr %361, i64 %365
  %367 = load i8, ptr %366, align 1, !tbaa !8
  %368 = zext i8 %367 to i32
  %369 = xor i32 %364, %368
  %370 = load i32, ptr %25, align 4, !tbaa !37
  %371 = and i32 %369, %370
  store i32 %371, ptr %23, align 8, !tbaa !81
  %372 = load ptr, ptr %26, align 8, !tbaa !41
  %373 = zext i32 %371 to i64
  %374 = getelementptr inbounds nuw [2 x i8], ptr %372, i64 %373
  %375 = load i16, ptr %374, align 2, !tbaa !63
  %376 = load ptr, ptr %27, align 8, !tbaa !40
  %377 = load i32, ptr %28, align 8, !tbaa !34
  %378 = and i32 %377, %355
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds nuw [2 x i8], ptr %376, i64 %379
  store i16 %375, ptr %380, align 2, !tbaa !63
  %381 = zext i16 %375 to i32
  %382 = trunc i32 %355 to i16
  store i16 %382, ptr %374, align 2, !tbaa !63
  br label %383

383:                                              ; preds = %359, %351
  %384 = phi i32 [ %381, %359 ], [ 0, %351 ]
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %558, label %386

386:                                              ; preds = %383
  %387 = load i32, ptr %29, align 4, !tbaa !74
  %388 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %387, i32 %384), !nosanitize !49
  %389 = extractvalue { i32, i1 } %388, 0, !nosanitize !49
  %390 = extractvalue { i32, i1 } %388, 1, !nosanitize !49
  br i1 %390, label %391, label %392, !prof !50, !nosanitize !49

391:                                              ; preds = %386
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

392:                                              ; preds = %386
  %393 = load i32, ptr %30, align 8, !tbaa !33
  %394 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %393, i32 262), !nosanitize !49
  %395 = extractvalue { i32, i1 } %394, 1, !nosanitize !49
  br i1 %395, label %396, label %397, !prof !50, !nosanitize !49

396:                                              ; preds = %392
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

397:                                              ; preds = %392
  %398 = extractvalue { i32, i1 } %394, 0, !nosanitize !49
  %399 = icmp ugt i32 %389, %398
  br i1 %399, label %558, label %400

400:                                              ; preds = %397
  %401 = load ptr, ptr %31, align 8, !tbaa !39
  %402 = zext i32 %387 to i64
  %403 = getelementptr inbounds nuw i8, ptr %401, i64 %402
  %404 = load i32, ptr %32, align 8, !tbaa !71
  %405 = load i32, ptr %33, align 8, !tbaa !78
  %406 = load i32, ptr %34, align 4, !tbaa !73
  %407 = tail call i32 @llvm.usub.sat.i32(i32 %387, i32 %398)
  %408 = load ptr, ptr %35, align 8, !tbaa !40
  %409 = load i32, ptr %36, align 8, !tbaa !34
  %410 = getelementptr inbounds nuw i8, ptr %403, i64 258
  %411 = sext i32 %405 to i64
  %412 = getelementptr i8, ptr %403, i64 %411
  %413 = getelementptr i8, ptr %412, i64 -1
  %414 = load i8, ptr %413, align 1, !tbaa !8
  %415 = load i8, ptr %412, align 1, !tbaa !8
  %416 = load i32, ptr %37, align 4, !tbaa !69
  %417 = icmp ult i32 %405, %416
  %418 = lshr i32 %406, 2
  %419 = select i1 %417, i32 %406, i32 %418
  %420 = tail call i32 @llvm.umin.i32(i32 %404, i32 %352)
  %421 = getelementptr inbounds nuw i8, ptr %403, i64 1
  %422 = ptrtoint ptr %410 to i64
  br label %423

423:                                              ; preds = %552, %400
  %424 = phi i32 [ %405, %400 ], [ %539, %552 ]
  %425 = phi i32 [ %419, %400 ], [ %553, %552 ]
  %426 = phi i32 [ %384, %400 ], [ %546, %552 ]
  %427 = phi i8 [ %414, %400 ], [ %540, %552 ]
  %428 = phi i8 [ %415, %400 ], [ %541, %552 ]
  %429 = zext nneg i32 %426 to i64
  %430 = getelementptr inbounds nuw i8, ptr %401, i64 %429
  %431 = sext i32 %424 to i64
  %432 = getelementptr inbounds i8, ptr %430, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !8
  %434 = icmp eq i8 %433, %428
  br i1 %434, label %435, label %538

435:                                              ; preds = %423
  %436 = getelementptr i8, ptr %432, i64 -1
  %437 = load i8, ptr %436, align 1, !tbaa !8
  %438 = icmp eq i8 %437, %427
  br i1 %438, label %439, label %538

439:                                              ; preds = %435
  %440 = load i8, ptr %430, align 1, !tbaa !8
  %441 = load i8, ptr %403, align 1, !tbaa !8
  %442 = icmp eq i8 %440, %441
  br i1 %442, label %443, label %538

443:                                              ; preds = %439
  %444 = getelementptr inbounds nuw i8, ptr %430, i64 1
  %445 = load i8, ptr %444, align 1, !tbaa !8
  %446 = load i8, ptr %421, align 1, !tbaa !8
  %447 = icmp eq i8 %445, %446
  br i1 %447, label %448, label %538

448:                                              ; preds = %443
  %449 = getelementptr inbounds nuw i8, ptr %430, i64 2
  br label %450

450:                                              ; preds = %495, %448
  %451 = phi ptr [ %449, %448 ], [ %499, %495 ]
  %452 = phi i64 [ 2, %448 ], [ %496, %495 ]
  %453 = getelementptr inbounds nuw i8, ptr %403, i64 %452
  %454 = getelementptr inbounds nuw i8, ptr %453, i64 1
  %455 = load i8, ptr %454, align 1, !tbaa !8
  %456 = getelementptr inbounds nuw i8, ptr %451, i64 1
  %457 = load i8, ptr %456, align 1, !tbaa !8
  %458 = icmp eq i8 %455, %457
  br i1 %458, label %459, label %504

459:                                              ; preds = %450
  %460 = getelementptr inbounds nuw i8, ptr %453, i64 2
  %461 = load i8, ptr %460, align 1, !tbaa !8
  %462 = getelementptr inbounds nuw i8, ptr %451, i64 2
  %463 = load i8, ptr %462, align 1, !tbaa !8
  %464 = icmp eq i8 %461, %463
  br i1 %464, label %465, label %506

465:                                              ; preds = %459
  %466 = getelementptr inbounds nuw i8, ptr %453, i64 3
  %467 = load i8, ptr %466, align 1, !tbaa !8
  %468 = getelementptr inbounds nuw i8, ptr %451, i64 3
  %469 = load i8, ptr %468, align 1, !tbaa !8
  %470 = icmp eq i8 %467, %469
  br i1 %470, label %471, label %508

471:                                              ; preds = %465
  %472 = getelementptr inbounds nuw i8, ptr %453, i64 4
  %473 = load i8, ptr %472, align 1, !tbaa !8
  %474 = getelementptr inbounds nuw i8, ptr %451, i64 4
  %475 = load i8, ptr %474, align 1, !tbaa !8
  %476 = icmp eq i8 %473, %475
  br i1 %476, label %477, label %510

477:                                              ; preds = %471
  %478 = getelementptr inbounds nuw i8, ptr %453, i64 5
  %479 = load i8, ptr %478, align 1, !tbaa !8
  %480 = getelementptr inbounds nuw i8, ptr %451, i64 5
  %481 = load i8, ptr %480, align 1, !tbaa !8
  %482 = icmp eq i8 %479, %481
  br i1 %482, label %483, label %512

483:                                              ; preds = %477
  %484 = getelementptr inbounds nuw i8, ptr %453, i64 6
  %485 = load i8, ptr %484, align 1, !tbaa !8
  %486 = getelementptr inbounds nuw i8, ptr %451, i64 6
  %487 = load i8, ptr %486, align 1, !tbaa !8
  %488 = icmp eq i8 %485, %487
  br i1 %488, label %489, label %514

489:                                              ; preds = %483
  %490 = getelementptr inbounds nuw i8, ptr %453, i64 7
  %491 = load i8, ptr %490, align 1, !tbaa !8
  %492 = getelementptr inbounds nuw i8, ptr %451, i64 7
  %493 = load i8, ptr %492, align 1, !tbaa !8
  %494 = icmp eq i8 %491, %493
  br i1 %494, label %495, label %516

495:                                              ; preds = %489
  %496 = add nuw nsw i64 %452, 8
  %497 = getelementptr inbounds nuw i8, ptr %403, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !8
  %499 = getelementptr inbounds nuw i8, ptr %451, i64 8
  %500 = load i8, ptr %499, align 1, !tbaa !8
  %501 = icmp eq i8 %498, %500
  %502 = icmp samesign ult i64 %452, 250
  %503 = select i1 %501, i1 %502, i1 false
  br i1 %503, label %450, label %518, !llvm.loop !129

504:                                              ; preds = %450
  %505 = getelementptr inbounds nuw i8, ptr %453, i64 1
  br label %520

506:                                              ; preds = %459
  %507 = getelementptr inbounds nuw i8, ptr %453, i64 2
  br label %520

508:                                              ; preds = %465
  %509 = getelementptr inbounds nuw i8, ptr %453, i64 3
  br label %520

510:                                              ; preds = %471
  %511 = getelementptr inbounds nuw i8, ptr %453, i64 4
  br label %520

512:                                              ; preds = %477
  %513 = getelementptr inbounds nuw i8, ptr %453, i64 5
  br label %520

514:                                              ; preds = %483
  %515 = getelementptr inbounds nuw i8, ptr %453, i64 6
  br label %520

516:                                              ; preds = %489
  %517 = getelementptr inbounds nuw i8, ptr %453, i64 7
  br label %520

518:                                              ; preds = %495
  %519 = getelementptr inbounds nuw i8, ptr %403, i64 %496
  br label %520

520:                                              ; preds = %518, %516, %514, %512, %510, %508, %506, %504
  %521 = phi ptr [ %507, %506 ], [ %509, %508 ], [ %505, %504 ], [ %517, %516 ], [ %515, %514 ], [ %513, %512 ], [ %511, %510 ], [ %519, %518 ]
  %522 = ptrtoint ptr %521 to i64
  %523 = sub i64 %522, %422
  %524 = trunc i64 %523 to i32
  %525 = add i32 %524, 258
  %526 = icmp sgt i32 %525, %424
  br i1 %526, label %527, label %538

527:                                              ; preds = %520
  store i32 %426, ptr %38, align 8, !tbaa !84
  %528 = icmp slt i32 %525, %420
  br i1 %528, label %529, label %555

529:                                              ; preds = %527
  %530 = shl i64 %523, 32
  %531 = add i64 %530, 1103806595072
  %532 = ashr exact i64 %531, 32
  %533 = getelementptr inbounds i8, ptr %403, i64 %532
  %534 = load i8, ptr %533, align 1, !tbaa !8
  %535 = sext i32 %525 to i64
  %536 = getelementptr inbounds i8, ptr %403, i64 %535
  %537 = load i8, ptr %536, align 1, !tbaa !8
  br label %538

538:                                              ; preds = %529, %520, %443, %439, %435, %423
  %539 = phi i32 [ %424, %423 ], [ %424, %435 ], [ %424, %439 ], [ %424, %443 ], [ %525, %529 ], [ %424, %520 ]
  %540 = phi i8 [ %427, %423 ], [ %427, %435 ], [ %427, %439 ], [ %427, %443 ], [ %534, %529 ], [ %427, %520 ]
  %541 = phi i8 [ %428, %423 ], [ %428, %435 ], [ %428, %439 ], [ %428, %443 ], [ %537, %529 ], [ %428, %520 ]
  %542 = and i32 %426, %409
  %543 = zext nneg i32 %542 to i64
  %544 = getelementptr inbounds nuw [2 x i8], ptr %408, i64 %543
  %545 = load i16, ptr %544, align 2, !tbaa !63
  %546 = zext i16 %545 to i32
  %547 = icmp ult i32 %407, %546
  br i1 %547, label %548, label %555

548:                                              ; preds = %538
  %549 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %425, i32 1), !nosanitize !49
  %550 = extractvalue { i32, i1 } %549, 1, !nosanitize !49
  br i1 %550, label %551, label %552, !prof !50, !nosanitize !49

551:                                              ; preds = %548
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

552:                                              ; preds = %548
  %553 = extractvalue { i32, i1 } %549, 0, !nosanitize !49
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %423, !llvm.loop !130

555:                                              ; preds = %552, %538, %527
  %556 = phi i32 [ %539, %552 ], [ %539, %538 ], [ %525, %527 ]
  %557 = tail call i32 @llvm.umin.i32(i32 %556, i32 %352)
  store i32 %557, ptr %39, align 8, !tbaa !79
  br label %558

558:                                              ; preds = %555, %397, %383
  %559 = load i32, ptr %40, align 8, !tbaa !79
  %560 = icmp ugt i32 %559, 2
  br i1 %560, label %561, label %717

561:                                              ; preds = %558
  %562 = trunc i32 %559 to i8
  %563 = add i8 %562, -3
  %564 = load i32, ptr %47, align 4, !tbaa !74
  %565 = load i32, ptr %48, align 8, !tbaa !84
  %566 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %564, i32 %565), !nosanitize !49
  %567 = extractvalue { i32, i1 } %566, 1, !nosanitize !49
  br i1 %567, label %568, label %569, !prof !50, !nosanitize !49

568:                                              ; preds = %561
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

569:                                              ; preds = %561
  %570 = extractvalue { i32, i1 } %566, 0, !nosanitize !49
  %571 = trunc i32 %570 to i16
  %572 = load i32, ptr %50, align 4, !tbaa !122
  %573 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %572, i32 1), !nosanitize !49
  %574 = extractvalue { i32, i1 } %573, 1, !nosanitize !49
  br i1 %574, label %575, label %576, !prof !50, !nosanitize !49

575:                                              ; preds = %569
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

576:                                              ; preds = %569
  %577 = extractvalue { i32, i1 } %573, 0, !nosanitize !49
  %578 = load ptr, ptr %49, align 8, !tbaa !48
  %579 = trunc i32 %570 to i8
  store i32 %577, ptr %50, align 4, !tbaa !122
  %580 = zext i32 %572 to i64
  %581 = getelementptr inbounds nuw i8, ptr %578, i64 %580
  store i8 %579, ptr %581, align 1, !tbaa !8
  %582 = load i32, ptr %50, align 4, !tbaa !122
  %583 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %582, i32 1), !nosanitize !49
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !49
  br i1 %584, label %585, label %586, !prof !50, !nosanitize !49

585:                                              ; preds = %576
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

586:                                              ; preds = %576
  %587 = extractvalue { i32, i1 } %583, 0, !nosanitize !49
  %588 = load ptr, ptr %49, align 8, !tbaa !48
  %589 = lshr i32 %570, 8
  %590 = trunc i32 %589 to i8
  store i32 %587, ptr %50, align 4, !tbaa !122
  %591 = zext i32 %582 to i64
  %592 = getelementptr inbounds nuw i8, ptr %588, i64 %591
  store i8 %590, ptr %592, align 1, !tbaa !8
  %593 = load i32, ptr %50, align 4, !tbaa !122
  %594 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %593, i32 1), !nosanitize !49
  %595 = extractvalue { i32, i1 } %594, 1, !nosanitize !49
  br i1 %595, label %596, label %597, !prof !50, !nosanitize !49

596:                                              ; preds = %586
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

597:                                              ; preds = %586
  %598 = extractvalue { i32, i1 } %594, 0, !nosanitize !49
  %599 = load ptr, ptr %49, align 8, !tbaa !48
  store i32 %598, ptr %50, align 4, !tbaa !122
  %600 = zext i32 %593 to i64
  %601 = getelementptr inbounds nuw i8, ptr %599, i64 %600
  store i8 %563, ptr %601, align 1, !tbaa !8
  %602 = add i16 %571, -1
  %603 = zext i8 %563 to i64
  %604 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %603
  %605 = load i8, ptr %604, align 1, !tbaa !8
  %606 = zext i8 %605 to i64
  %607 = getelementptr [4 x i8], ptr %51, i64 %606
  %608 = load i16, ptr %607, align 4, !tbaa !8
  %609 = add i16 %608, 1
  store i16 %609, ptr %607, align 4, !tbaa !8
  %610 = icmp ult i16 %602, 256
  br i1 %610, label %611, label %614

611:                                              ; preds = %597
  %612 = zext nneg i16 %602 to i64
  %613 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %612
  br label %619

614:                                              ; preds = %597
  %615 = lshr i16 %602, 7
  %616 = zext nneg i16 %615 to i64
  %617 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %616
  %618 = getelementptr inbounds nuw i8, ptr %617, i64 256
  br label %619

619:                                              ; preds = %614, %611
  %620 = phi ptr [ %613, %611 ], [ %618, %614 ]
  %621 = load i8, ptr %620, align 1, !tbaa !8
  %622 = zext i8 %621 to i64
  %623 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %622
  %624 = load i16, ptr %623, align 4, !tbaa !8
  %625 = add i16 %624, 1
  store i16 %625, ptr %623, align 4, !tbaa !8
  %626 = load i32, ptr %50, align 4, !tbaa !122
  %627 = load i32, ptr %53, align 8, !tbaa !51
  %628 = icmp eq i32 %626, %627
  %629 = load i32, ptr %40, align 8, !tbaa !79
  %630 = load i32, ptr %3, align 4, !tbaa !76
  %631 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %630, i32 %629), !nosanitize !49
  %632 = extractvalue { i32, i1 } %631, 1, !nosanitize !49
  br i1 %632, label %633, label %634, !prof !50, !nosanitize !49

633:                                              ; preds = %619
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

634:                                              ; preds = %619
  %635 = extractvalue { i32, i1 } %631, 0, !nosanitize !49
  store i32 %635, ptr %3, align 4, !tbaa !76
  %636 = load i32, ptr %54, align 8, !tbaa !67
  %637 = icmp ule i32 %629, %636
  %638 = icmp ugt i32 %635, 2
  %639 = select i1 %637, i1 %638, i1 false
  br i1 %639, label %640, label %691

640:                                              ; preds = %634
  %641 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %629, i32 1), !nosanitize !49
  %642 = extractvalue { i32, i1 } %641, 1, !nosanitize !49
  br i1 %642, label %643, label %644, !prof !50, !nosanitize !49

643:                                              ; preds = %640
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

644:                                              ; preds = %640
  %645 = extractvalue { i32, i1 } %641, 0, !nosanitize !49
  store i32 %645, ptr %40, align 8, !tbaa !79
  %646 = load i32, ptr %47, align 4, !tbaa !74
  %647 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %646, i32 1), !nosanitize !49
  %648 = extractvalue { i32, i1 } %647, 1, !nosanitize !49
  br i1 %648, label %650, label %651, !prof !117, !nosanitize !49

649:                                              ; preds = %684
  br i1 %688, label %650, label %651, !prof !118, !llvm.loop !131, !nosanitize !49

650:                                              ; preds = %649, %644
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

651:                                              ; preds = %649, %644
  %652 = phi { i32, i1 } [ %687, %649 ], [ %647, %644 ]
  %653 = extractvalue { i32, i1 } %652, 0, !nosanitize !49
  store i32 %653, ptr %47, align 4, !tbaa !74
  %654 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %653, i32 2), !nosanitize !49
  %655 = extractvalue { i32, i1 } %654, 1, !nosanitize !49
  br i1 %655, label %656, label %657, !prof !50, !nosanitize !49

656:                                              ; preds = %651
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

657:                                              ; preds = %651
  %658 = extractvalue { i32, i1 } %654, 0, !nosanitize !49
  %659 = load ptr, ptr %59, align 8, !tbaa !39
  %660 = load i32, ptr %60, align 8, !tbaa !81
  %661 = load i32, ptr %61, align 8, !tbaa !38
  %662 = shl i32 %660, %661
  %663 = zext i32 %658 to i64
  %664 = getelementptr inbounds nuw i8, ptr %659, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !8
  %666 = zext i8 %665 to i32
  %667 = xor i32 %662, %666
  %668 = load i32, ptr %62, align 4, !tbaa !37
  %669 = and i32 %667, %668
  store i32 %669, ptr %60, align 8, !tbaa !81
  %670 = load ptr, ptr %63, align 8, !tbaa !41
  %671 = zext i32 %669 to i64
  %672 = getelementptr inbounds nuw [2 x i8], ptr %670, i64 %671
  %673 = load i16, ptr %672, align 2, !tbaa !63
  %674 = load ptr, ptr %64, align 8, !tbaa !40
  %675 = load i32, ptr %65, align 8, !tbaa !34
  %676 = and i32 %675, %653
  %677 = zext i32 %676 to i64
  %678 = getelementptr inbounds nuw [2 x i8], ptr %674, i64 %677
  store i16 %673, ptr %678, align 2, !tbaa !63
  %679 = trunc i32 %653 to i16
  store i16 %679, ptr %672, align 2, !tbaa !63
  %680 = load i32, ptr %40, align 8, !tbaa !79
  %681 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %680, i32 1), !nosanitize !49
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !49
  br i1 %682, label %683, label %684, !prof !50, !nosanitize !49

683:                                              ; preds = %657
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

684:                                              ; preds = %657
  %685 = extractvalue { i32, i1 } %681, 0, !nosanitize !49
  store i32 %685, ptr %40, align 8, !tbaa !79
  %686 = icmp eq i32 %685, 0
  %687 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %653, i32 1), !nosanitize !49
  %688 = extractvalue { i32, i1 } %687, 1, !nosanitize !49
  br i1 %686, label %689, label %649, !llvm.loop !131

689:                                              ; preds = %684
  %690 = extractvalue { i32, i1 } %687, 0, !nosanitize !49
  store i32 %690, ptr %47, align 4, !tbaa !74
  br label %769

691:                                              ; preds = %634
  %692 = load i32, ptr %47, align 4, !tbaa !74
  %693 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %692, i32 %629), !nosanitize !49
  %694 = extractvalue { i32, i1 } %693, 1, !nosanitize !49
  br i1 %694, label %695, label %696, !prof !50, !nosanitize !49

695:                                              ; preds = %691
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

696:                                              ; preds = %691
  %697 = extractvalue { i32, i1 } %693, 0, !nosanitize !49
  store i32 %697, ptr %47, align 4, !tbaa !74
  store i32 0, ptr %40, align 8, !tbaa !79
  %698 = load ptr, ptr %55, align 8, !tbaa !39
  %699 = zext i32 %697 to i64
  %700 = getelementptr inbounds nuw i8, ptr %698, i64 %699
  %701 = load i8, ptr %700, align 1, !tbaa !8
  %702 = zext i8 %701 to i32
  store i32 %702, ptr %56, align 8, !tbaa !81
  %703 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %697, i32 1), !nosanitize !49
  %704 = extractvalue { i32, i1 } %703, 1, !nosanitize !49
  br i1 %704, label %705, label %706, !prof !50, !nosanitize !49

705:                                              ; preds = %696
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

706:                                              ; preds = %696
  %707 = extractvalue { i32, i1 } %703, 0, !nosanitize !49
  %708 = load i32, ptr %57, align 8, !tbaa !38
  %709 = shl i32 %702, %708
  %710 = zext i32 %707 to i64
  %711 = getelementptr inbounds nuw i8, ptr %698, i64 %710
  %712 = load i8, ptr %711, align 1, !tbaa !8
  %713 = zext i8 %712 to i32
  %714 = xor i32 %709, %713
  %715 = load i32, ptr %58, align 4, !tbaa !37
  %716 = and i32 %714, %715
  store i32 %716, ptr %56, align 8, !tbaa !81
  br label %769

717:                                              ; preds = %558
  %718 = load ptr, ptr %41, align 8, !tbaa !39
  %719 = load i32, ptr %42, align 4, !tbaa !74
  %720 = zext i32 %719 to i64
  %721 = getelementptr inbounds nuw i8, ptr %718, i64 %720
  %722 = load i8, ptr %721, align 1, !tbaa !8
  %723 = load i32, ptr %44, align 4, !tbaa !122
  %724 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %723, i32 1), !nosanitize !49
  %725 = extractvalue { i32, i1 } %724, 1, !nosanitize !49
  br i1 %725, label %726, label %727, !prof !50, !nosanitize !49

726:                                              ; preds = %717
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

727:                                              ; preds = %717
  %728 = extractvalue { i32, i1 } %724, 0, !nosanitize !49
  %729 = load ptr, ptr %43, align 8, !tbaa !48
  store i32 %728, ptr %44, align 4, !tbaa !122
  %730 = zext i32 %723 to i64
  %731 = getelementptr inbounds nuw i8, ptr %729, i64 %730
  store i8 0, ptr %731, align 1, !tbaa !8
  %732 = load i32, ptr %44, align 4, !tbaa !122
  %733 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %732, i32 1), !nosanitize !49
  %734 = extractvalue { i32, i1 } %733, 1, !nosanitize !49
  br i1 %734, label %735, label %736, !prof !50, !nosanitize !49

735:                                              ; preds = %727
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

736:                                              ; preds = %727
  %737 = extractvalue { i32, i1 } %733, 0, !nosanitize !49
  %738 = load ptr, ptr %43, align 8, !tbaa !48
  store i32 %737, ptr %44, align 4, !tbaa !122
  %739 = zext i32 %732 to i64
  %740 = getelementptr inbounds nuw i8, ptr %738, i64 %739
  store i8 0, ptr %740, align 1, !tbaa !8
  %741 = load i32, ptr %44, align 4, !tbaa !122
  %742 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %741, i32 1), !nosanitize !49
  %743 = extractvalue { i32, i1 } %742, 1, !nosanitize !49
  br i1 %743, label %744, label %745, !prof !50, !nosanitize !49

744:                                              ; preds = %736
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

745:                                              ; preds = %736
  %746 = extractvalue { i32, i1 } %742, 0, !nosanitize !49
  %747 = load ptr, ptr %43, align 8, !tbaa !48
  store i32 %746, ptr %44, align 4, !tbaa !122
  %748 = zext i32 %741 to i64
  %749 = getelementptr inbounds nuw i8, ptr %747, i64 %748
  store i8 %722, ptr %749, align 1, !tbaa !8
  %750 = zext i8 %722 to i64
  %751 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %750
  %752 = load i16, ptr %751, align 4, !tbaa !8
  %753 = add i16 %752, 1
  store i16 %753, ptr %751, align 4, !tbaa !8
  %754 = load i32, ptr %44, align 4, !tbaa !122
  %755 = load i32, ptr %46, align 8, !tbaa !51
  %756 = icmp eq i32 %754, %755
  %757 = load i32, ptr %3, align 4, !tbaa !76
  %758 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %757, i32 1), !nosanitize !49
  %759 = extractvalue { i32, i1 } %758, 1, !nosanitize !49
  br i1 %759, label %760, label %761, !prof !50, !nosanitize !49

760:                                              ; preds = %745
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

761:                                              ; preds = %745
  %762 = extractvalue { i32, i1 } %758, 0, !nosanitize !49
  store i32 %762, ptr %3, align 4, !tbaa !76
  %763 = load i32, ptr %42, align 4, !tbaa !74
  %764 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %763, i32 1), !nosanitize !49
  %765 = extractvalue { i32, i1 } %764, 1, !nosanitize !49
  br i1 %765, label %766, label %767, !prof !50, !nosanitize !49

766:                                              ; preds = %761
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

767:                                              ; preds = %761
  %768 = extractvalue { i32, i1 } %764, 0, !nosanitize !49
  store i32 %768, ptr %42, align 4, !tbaa !74
  br label %769

769:                                              ; preds = %767, %706, %689
  %770 = phi i1 [ %628, %689 ], [ %628, %706 ], [ %756, %767 ]
  br i1 %770, label %771, label %833

771:                                              ; preds = %769
  %772 = load i64, ptr %66, align 8, !tbaa !75
  %773 = icmp sgt i64 %772, -1
  br i1 %773, label %774, label %778

774:                                              ; preds = %771
  %775 = load ptr, ptr %67, align 8, !tbaa !39
  %776 = and i64 %772, 4294967295
  %777 = getelementptr inbounds nuw i8, ptr %775, i64 %776
  br label %778

778:                                              ; preds = %774, %771
  %779 = phi ptr [ %777, %774 ], [ null, %771 ]
  %780 = load i32, ptr %68, align 4, !tbaa !74
  %781 = zext i32 %780 to i64
  %782 = sub nsw i64 %781, %772
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %779, i64 noundef %782, i32 noundef 0) #11
  %783 = load i32, ptr %68, align 4, !tbaa !74
  %784 = zext i32 %783 to i64
  store i64 %784, ptr %66, align 8, !tbaa !75
  %785 = load ptr, ptr %0, align 8, !tbaa !20
  %786 = getelementptr inbounds nuw i8, ptr %785, i64 56
  %787 = load ptr, ptr %786, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %787) #11
  %788 = getelementptr inbounds nuw i8, ptr %787, i64 40
  %789 = load i64, ptr %788, align 8, !tbaa !58
  %790 = getelementptr inbounds nuw i8, ptr %785, i64 32
  %791 = load i32, ptr %790, align 8, !tbaa !100
  %792 = zext i32 %791 to i64
  %793 = tail call i64 @llvm.umin.i64(i64 %789, i64 %792)
  %794 = trunc nuw i64 %793 to i32
  %795 = icmp eq i64 %793, 0
  br i1 %795, label %828, label %796

796:                                              ; preds = %778
  %797 = getelementptr inbounds nuw i8, ptr %785, i64 24
  %798 = load ptr, ptr %797, align 8, !tbaa !99
  %799 = getelementptr inbounds nuw i8, ptr %787, i64 32
  %800 = load ptr, ptr %799, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %798, ptr align 1 %800, i64 %793, i1 false)
  %801 = load ptr, ptr %797, align 8, !tbaa !99
  %802 = getelementptr inbounds nuw i8, ptr %801, i64 %793
  store ptr %802, ptr %797, align 8, !tbaa !99
  %803 = load ptr, ptr %799, align 8, !tbaa !59
  %804 = getelementptr inbounds nuw i8, ptr %803, i64 %793
  store ptr %804, ptr %799, align 8, !tbaa !59
  %805 = getelementptr inbounds nuw i8, ptr %785, i64 40
  %806 = load i64, ptr %805, align 8, !tbaa !101
  %807 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %806, i64 %793), !nosanitize !49
  %808 = extractvalue { i64, i1 } %807, 1, !nosanitize !49
  br i1 %808, label %809, label %810, !prof !50, !nosanitize !49

809:                                              ; preds = %796
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

810:                                              ; preds = %796
  %811 = extractvalue { i64, i1 } %807, 0, !nosanitize !49
  store i64 %811, ptr %805, align 8, !tbaa !101
  %812 = load i32, ptr %790, align 8, !tbaa !100
  %813 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %812, i32 %794), !nosanitize !49
  %814 = extractvalue { i32, i1 } %813, 1, !nosanitize !49
  br i1 %814, label %815, label %816, !prof !50, !nosanitize !49

815:                                              ; preds = %810
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

816:                                              ; preds = %810
  %817 = extractvalue { i32, i1 } %813, 0, !nosanitize !49
  store i32 %817, ptr %790, align 8, !tbaa !100
  %818 = load i64, ptr %788, align 8, !tbaa !58
  %819 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %818, i64 %793), !nosanitize !49
  %820 = extractvalue { i64, i1 } %819, 1, !nosanitize !49
  br i1 %820, label %821, label %822, !prof !50, !nosanitize !49

821:                                              ; preds = %816
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

822:                                              ; preds = %816
  %823 = extractvalue { i64, i1 } %819, 0, !nosanitize !49
  store i64 %823, ptr %788, align 8, !tbaa !58
  %824 = icmp eq i64 %823, 0
  br i1 %824, label %825, label %828

825:                                              ; preds = %822
  %826 = getelementptr inbounds nuw i8, ptr %787, i64 16
  %827 = load ptr, ptr %826, align 8, !tbaa !44
  store ptr %827, ptr %799, align 8, !tbaa !59
  br label %828

828:                                              ; preds = %825, %822, %778
  %829 = load ptr, ptr %0, align 8, !tbaa !20
  %830 = getelementptr inbounds nuw i8, ptr %829, i64 32
  %831 = load i32, ptr %830, align 8, !tbaa !100
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %966, label %833

833:                                              ; preds = %828, %769
  br label %69, !llvm.loop !132

834:                                              ; preds = %349
  %835 = load i32, ptr %6, align 4, !tbaa !74
  %836 = tail call i32 @llvm.umin.i32(i32 %835, i32 2)
  store i32 %836, ptr %10, align 4, !tbaa !77
  %837 = icmp eq i32 %1, 4
  br i1 %837, label %838, label %900

838:                                              ; preds = %834
  %839 = load i64, ptr %9, align 8, !tbaa !75
  %840 = icmp sgt i64 %839, -1
  br i1 %840, label %841, label %845

841:                                              ; preds = %838
  %842 = load ptr, ptr %7, align 8, !tbaa !39
  %843 = and i64 %839, 4294967295
  %844 = getelementptr inbounds nuw i8, ptr %842, i64 %843
  br label %845

845:                                              ; preds = %841, %838
  %846 = phi ptr [ %844, %841 ], [ null, %838 ]
  %847 = zext i32 %835 to i64
  %848 = sub nsw i64 %847, %839
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %846, i64 noundef %848, i32 noundef 1) #11
  %849 = load i32, ptr %6, align 4, !tbaa !74
  %850 = zext i32 %849 to i64
  store i64 %850, ptr %9, align 8, !tbaa !75
  %851 = load ptr, ptr %0, align 8, !tbaa !20
  %852 = getelementptr inbounds nuw i8, ptr %851, i64 56
  %853 = load ptr, ptr %852, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %853) #11
  %854 = getelementptr inbounds nuw i8, ptr %853, i64 40
  %855 = load i64, ptr %854, align 8, !tbaa !58
  %856 = getelementptr inbounds nuw i8, ptr %851, i64 32
  %857 = load i32, ptr %856, align 8, !tbaa !100
  %858 = zext i32 %857 to i64
  %859 = tail call i64 @llvm.umin.i64(i64 %855, i64 %858)
  %860 = trunc nuw i64 %859 to i32
  %861 = icmp eq i64 %859, 0
  br i1 %861, label %894, label %862

862:                                              ; preds = %845
  %863 = getelementptr inbounds nuw i8, ptr %851, i64 24
  %864 = load ptr, ptr %863, align 8, !tbaa !99
  %865 = getelementptr inbounds nuw i8, ptr %853, i64 32
  %866 = load ptr, ptr %865, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %864, ptr align 1 %866, i64 %859, i1 false)
  %867 = load ptr, ptr %863, align 8, !tbaa !99
  %868 = getelementptr inbounds nuw i8, ptr %867, i64 %859
  store ptr %868, ptr %863, align 8, !tbaa !99
  %869 = load ptr, ptr %865, align 8, !tbaa !59
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %859
  store ptr %870, ptr %865, align 8, !tbaa !59
  %871 = getelementptr inbounds nuw i8, ptr %851, i64 40
  %872 = load i64, ptr %871, align 8, !tbaa !101
  %873 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %872, i64 %859), !nosanitize !49
  %874 = extractvalue { i64, i1 } %873, 1, !nosanitize !49
  br i1 %874, label %875, label %876, !prof !50, !nosanitize !49

875:                                              ; preds = %862
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

876:                                              ; preds = %862
  %877 = extractvalue { i64, i1 } %873, 0, !nosanitize !49
  store i64 %877, ptr %871, align 8, !tbaa !101
  %878 = load i32, ptr %856, align 8, !tbaa !100
  %879 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %878, i32 %860), !nosanitize !49
  %880 = extractvalue { i32, i1 } %879, 1, !nosanitize !49
  br i1 %880, label %881, label %882, !prof !50, !nosanitize !49

881:                                              ; preds = %876
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

882:                                              ; preds = %876
  %883 = extractvalue { i32, i1 } %879, 0, !nosanitize !49
  store i32 %883, ptr %856, align 8, !tbaa !100
  %884 = load i64, ptr %854, align 8, !tbaa !58
  %885 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %884, i64 %859), !nosanitize !49
  %886 = extractvalue { i64, i1 } %885, 1, !nosanitize !49
  br i1 %886, label %887, label %888, !prof !50, !nosanitize !49

887:                                              ; preds = %882
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

888:                                              ; preds = %882
  %889 = extractvalue { i64, i1 } %885, 0, !nosanitize !49
  store i64 %889, ptr %854, align 8, !tbaa !58
  %890 = icmp eq i64 %889, 0
  br i1 %890, label %891, label %894

891:                                              ; preds = %888
  %892 = getelementptr inbounds nuw i8, ptr %853, i64 16
  %893 = load ptr, ptr %892, align 8, !tbaa !44
  store ptr %893, ptr %865, align 8, !tbaa !59
  br label %894

894:                                              ; preds = %891, %888, %845
  %895 = load ptr, ptr %0, align 8, !tbaa !20
  %896 = getelementptr inbounds nuw i8, ptr %895, i64 32
  %897 = load i32, ptr %896, align 8, !tbaa !100
  %898 = icmp eq i32 %897, 0
  %899 = select i1 %898, i32 2, i32 3
  br label %966

900:                                              ; preds = %834
  %901 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %902 = load i32, ptr %901, align 4, !tbaa !122
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %965, label %904

904:                                              ; preds = %900
  %905 = load i64, ptr %9, align 8, !tbaa !75
  %906 = icmp sgt i64 %905, -1
  br i1 %906, label %907, label %911

907:                                              ; preds = %904
  %908 = load ptr, ptr %7, align 8, !tbaa !39
  %909 = and i64 %905, 4294967295
  %910 = getelementptr inbounds nuw i8, ptr %908, i64 %909
  br label %911

911:                                              ; preds = %907, %904
  %912 = phi ptr [ %910, %907 ], [ null, %904 ]
  %913 = zext i32 %835 to i64
  %914 = sub nsw i64 %913, %905
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %912, i64 noundef %914, i32 noundef 0) #11
  %915 = load i32, ptr %6, align 4, !tbaa !74
  %916 = zext i32 %915 to i64
  store i64 %916, ptr %9, align 8, !tbaa !75
  %917 = load ptr, ptr %0, align 8, !tbaa !20
  %918 = getelementptr inbounds nuw i8, ptr %917, i64 56
  %919 = load ptr, ptr %918, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %919) #11
  %920 = getelementptr inbounds nuw i8, ptr %919, i64 40
  %921 = load i64, ptr %920, align 8, !tbaa !58
  %922 = getelementptr inbounds nuw i8, ptr %917, i64 32
  %923 = load i32, ptr %922, align 8, !tbaa !100
  %924 = zext i32 %923 to i64
  %925 = tail call i64 @llvm.umin.i64(i64 %921, i64 %924)
  %926 = trunc nuw i64 %925 to i32
  %927 = icmp eq i64 %925, 0
  br i1 %927, label %960, label %928

928:                                              ; preds = %911
  %929 = getelementptr inbounds nuw i8, ptr %917, i64 24
  %930 = load ptr, ptr %929, align 8, !tbaa !99
  %931 = getelementptr inbounds nuw i8, ptr %919, i64 32
  %932 = load ptr, ptr %931, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %930, ptr align 1 %932, i64 %925, i1 false)
  %933 = load ptr, ptr %929, align 8, !tbaa !99
  %934 = getelementptr inbounds nuw i8, ptr %933, i64 %925
  store ptr %934, ptr %929, align 8, !tbaa !99
  %935 = load ptr, ptr %931, align 8, !tbaa !59
  %936 = getelementptr inbounds nuw i8, ptr %935, i64 %925
  store ptr %936, ptr %931, align 8, !tbaa !59
  %937 = getelementptr inbounds nuw i8, ptr %917, i64 40
  %938 = load i64, ptr %937, align 8, !tbaa !101
  %939 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %938, i64 %925), !nosanitize !49
  %940 = extractvalue { i64, i1 } %939, 1, !nosanitize !49
  br i1 %940, label %941, label %942, !prof !50, !nosanitize !49

941:                                              ; preds = %928
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

942:                                              ; preds = %928
  %943 = extractvalue { i64, i1 } %939, 0, !nosanitize !49
  store i64 %943, ptr %937, align 8, !tbaa !101
  %944 = load i32, ptr %922, align 8, !tbaa !100
  %945 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %944, i32 %926), !nosanitize !49
  %946 = extractvalue { i32, i1 } %945, 1, !nosanitize !49
  br i1 %946, label %947, label %948, !prof !50, !nosanitize !49

947:                                              ; preds = %942
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

948:                                              ; preds = %942
  %949 = extractvalue { i32, i1 } %945, 0, !nosanitize !49
  store i32 %949, ptr %922, align 8, !tbaa !100
  %950 = load i64, ptr %920, align 8, !tbaa !58
  %951 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %950, i64 %925), !nosanitize !49
  %952 = extractvalue { i64, i1 } %951, 1, !nosanitize !49
  br i1 %952, label %953, label %954, !prof !50, !nosanitize !49

953:                                              ; preds = %948
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

954:                                              ; preds = %948
  %955 = extractvalue { i64, i1 } %951, 0, !nosanitize !49
  store i64 %955, ptr %920, align 8, !tbaa !58
  %956 = icmp eq i64 %955, 0
  br i1 %956, label %957, label %960

957:                                              ; preds = %954
  %958 = getelementptr inbounds nuw i8, ptr %919, i64 16
  %959 = load ptr, ptr %958, align 8, !tbaa !44
  store ptr %959, ptr %931, align 8, !tbaa !59
  br label %960

960:                                              ; preds = %957, %954, %911
  %961 = load ptr, ptr %0, align 8, !tbaa !20
  %962 = getelementptr inbounds nuw i8, ptr %961, i64 32
  %963 = load i32, ptr %962, align 8, !tbaa !100
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %966, label %965

965:                                              ; preds = %960, %900
  br label %966

966:                                              ; preds = %965, %960, %894, %828, %345
  %967 = phi i32 [ 1, %965 ], [ %899, %894 ], [ 0, %960 ], [ 0, %345 ], [ 0, %828 ]
  ret i32 %967
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

68:                                               ; preds = %729, %2
  %69 = load i32, ptr %3, align 4, !tbaa !76
  %70 = icmp ult i32 %69, 262
  br i1 %70, label %71, label %350

71:                                               ; preds = %68
  %72 = load i32, ptr %4, align 8, !tbaa !33
  %73 = zext i32 %72 to i64
  br label %74

74:                                               ; preds = %299, %71
  %75 = load i64, ptr %5, align 8, !tbaa !62
  %76 = load i32, ptr %3, align 4, !tbaa !76
  %77 = zext i32 %76 to i64
  %78 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %75, i64 %77), !nosanitize !49
  %79 = extractvalue { i64, i1 } %78, 1, !nosanitize !49
  br i1 %79, label %80, label %81, !prof !50, !nosanitize !49

80:                                               ; preds = %74
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

81:                                               ; preds = %74
  %82 = extractvalue { i64, i1 } %78, 0, !nosanitize !49
  %83 = load i32, ptr %6, align 4, !tbaa !74
  %84 = zext i32 %83 to i64
  %85 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %82, i64 %84), !nosanitize !49
  %86 = extractvalue { i64, i1 } %85, 1, !nosanitize !49
  br i1 %86, label %87, label %88, !prof !50, !nosanitize !49

87:                                               ; preds = %81
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

88:                                               ; preds = %81
  %89 = extractvalue { i64, i1 } %85, 0, !nosanitize !49
  %90 = trunc i64 %89 to i32
  %91 = load i32, ptr %4, align 8, !tbaa !33
  %92 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %91, i32 262), !nosanitize !49
  %93 = extractvalue { i32, i1 } %92, 1, !nosanitize !49
  br i1 %93, label %94, label %95, !prof !50, !nosanitize !49

94:                                               ; preds = %88
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

95:                                               ; preds = %88
  %96 = extractvalue { i32, i1 } %92, 0, !nosanitize !49
  %97 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %72, i32 %96), !nosanitize !49
  %98 = extractvalue { i32, i1 } %97, 1, !nosanitize !49
  br i1 %98, label %99, label %100, !prof !50, !nosanitize !49

99:                                               ; preds = %95
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

116:                                              ; preds = %107
  %117 = extractvalue { i32, i1 } %113, 0, !nosanitize !49
  store i32 %117, ptr %8, align 8, !tbaa !84
  %118 = load i32, ptr %6, align 4, !tbaa !74
  %119 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %118, i32 %72), !nosanitize !49
  %120 = extractvalue { i32, i1 } %119, 1, !nosanitize !49
  br i1 %120, label %121, label %122, !prof !50, !nosanitize !49

121:                                              ; preds = %116
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  br i1 %176, label %304, label %177

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
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  %202 = tail call i64 @adler32(i64 noundef %201, ptr noundef %184, i32 noundef %185) #11
  store i64 %202, ptr %200, align 8, !tbaa !60
  br label %207

203:                                              ; preds = %191
  %204 = getelementptr inbounds nuw i8, ptr %173, i64 96
  %205 = load i64, ptr %204, align 8, !tbaa !60
  %206 = tail call i64 @crc32(i64 noundef %205, ptr noundef %184, i32 noundef %185) #11
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

223:                                              ; preds = %217
  %224 = extractvalue { i32, i1 } %220, 0, !nosanitize !49
  store i32 %224, ptr %3, align 4, !tbaa !76
  %225 = load i32, ptr %10, align 4, !tbaa !77
  %226 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %225), !nosanitize !49
  %227 = extractvalue { i32, i1 } %226, 1, !nosanitize !49
  br i1 %227, label %228, label %229, !prof !50, !nosanitize !49

228:                                              ; preds = %223
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

229:                                              ; preds = %223
  %230 = extractvalue { i32, i1 } %226, 0, !nosanitize !49
  %231 = icmp ugt i32 %230, 2
  br i1 %231, label %232, label %297

232:                                              ; preds = %229
  %233 = load i32, ptr %6, align 4, !tbaa !74
  %234 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %233, i32 %225), !nosanitize !49
  %235 = extractvalue { i32, i1 } %234, 0, !nosanitize !49
  %236 = extractvalue { i32, i1 } %234, 1, !nosanitize !49
  br i1 %236, label %237, label %238, !prof !50, !nosanitize !49

237:                                              ; preds = %232
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
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
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
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

258:                                              ; preds = %294, %247
  %259 = phi i32 [ %225, %247 ], [ %290, %294 ]
  %260 = phi i32 [ %235, %247 ], [ %289, %294 ]
  %261 = icmp eq i32 %259, 0
  br i1 %261, label %297, label %262

262:                                              ; preds = %258
  %263 = load i32, ptr %15, align 8, !tbaa !81
  %264 = shl i32 %263, %249
  %265 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %260, i32 3), !nosanitize !49
  %266 = extractvalue { i32, i1 } %265, 1, !nosanitize !49
  br i1 %266, label %267, label %268, !prof !50, !nosanitize !49

267:                                              ; preds = %262
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

268:                                              ; preds = %262
  %269 = extractvalue { i32, i1 } %265, 0, !nosanitize !49
  %270 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %269, i32 1), !nosanitize !49
  %271 = extractvalue { i32, i1 } %270, 0, !nosanitize !49
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds nuw i8, ptr %239, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !8
  %275 = zext i8 %274 to i32
  %276 = xor i32 %264, %275
  %277 = and i32 %276, %256
  store i32 %277, ptr %15, align 8, !tbaa !81
  %278 = load ptr, ptr %12, align 8, !tbaa !41
  %279 = zext i32 %277 to i64
  %280 = getelementptr inbounds nuw [2 x i8], ptr %278, i64 %279
  %281 = load i16, ptr %280, align 2, !tbaa !63
  %282 = load ptr, ptr %13, align 8, !tbaa !40
  %283 = load i32, ptr %18, align 8, !tbaa !34
  %284 = and i32 %283, %260
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds nuw [2 x i8], ptr %282, i64 %285
  store i16 %281, ptr %286, align 2, !tbaa !63
  %287 = trunc i32 %260 to i16
  store i16 %287, ptr %280, align 2, !tbaa !63
  %288 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %260, i32 1), !nosanitize !49
  %289 = extractvalue { i32, i1 } %288, 0, !nosanitize !49
  %290 = add i32 %259, -1
  store i32 %290, ptr %10, align 4, !tbaa !77
  %291 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %290), !nosanitize !49
  %292 = extractvalue { i32, i1 } %291, 1, !nosanitize !49
  br i1 %292, label %293, label %294, !prof !50, !nosanitize !49

293:                                              ; preds = %268
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

294:                                              ; preds = %268
  %295 = extractvalue { i32, i1 } %291, 0, !nosanitize !49
  %296 = icmp ult i32 %295, 3
  br i1 %296, label %297, label %258, !llvm.loop !89

297:                                              ; preds = %294, %258, %229
  %298 = icmp ult i32 %224, 262
  br i1 %298, label %299, label %304

299:                                              ; preds = %297
  %300 = load ptr, ptr %0, align 8, !tbaa !20
  %301 = getelementptr inbounds nuw i8, ptr %300, i64 8
  %302 = load i32, ptr %301, align 8, !tbaa !82
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %74, !llvm.loop !90

304:                                              ; preds = %299, %297, %171
  %305 = load i64, ptr %19, align 8, !tbaa !42
  %306 = load i64, ptr %5, align 8, !tbaa !62
  %307 = icmp ult i64 %305, %306
  br i1 %307, label %308, label %344

308:                                              ; preds = %304
  %309 = load i32, ptr %6, align 4, !tbaa !74
  %310 = zext i32 %309 to i64
  %311 = load i32, ptr %3, align 4, !tbaa !76
  %312 = zext i32 %311 to i64
  %313 = add nuw nsw i64 %312, %310
  %314 = icmp ult i64 %305, %313
  br i1 %314, label %315, label %325

315:                                              ; preds = %308
  %316 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %306, i64 %313), !nosanitize !49
  %317 = extractvalue { i64, i1 } %316, 1, !nosanitize !49
  br i1 %317, label %318, label %319, !prof !50, !nosanitize !49

318:                                              ; preds = %315
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

319:                                              ; preds = %315
  %320 = extractvalue { i64, i1 } %316, 0, !nosanitize !49
  %321 = tail call i64 @llvm.umin.i64(i64 %320, i64 258)
  %322 = load ptr, ptr %7, align 8, !tbaa !39
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 %313
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %323, i8 0, i64 %321, i1 false)
  %324 = add nuw nsw i64 %321, %313
  br label %342

325:                                              ; preds = %308
  %326 = add nuw nsw i64 %313, 258
  %327 = icmp ult i64 %305, %326
  br i1 %327, label %328, label %344

328:                                              ; preds = %325
  %329 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %306, i64 %305), !nosanitize !49
  %330 = sub nuw nsw i64 %326, %305
  %331 = extractvalue { i64, i1 } %329, 0, !nosanitize !49
  %332 = tail call i64 @llvm.umin.i64(i64 %330, i64 %331)
  %333 = load ptr, ptr %7, align 8, !tbaa !39
  %334 = getelementptr inbounds nuw i8, ptr %333, i64 %305
  %335 = and i64 %332, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %334, i8 0, i64 %335, i1 false)
  %336 = load i64, ptr %19, align 8, !tbaa !42
  %337 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %336, i64 %332), !nosanitize !49
  %338 = extractvalue { i64, i1 } %337, 1, !nosanitize !49
  br i1 %338, label %339, label %340, !prof !50, !nosanitize !49

339:                                              ; preds = %328
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

340:                                              ; preds = %328
  %341 = extractvalue { i64, i1 } %337, 0, !nosanitize !49
  br label %342

342:                                              ; preds = %340, %319
  %343 = phi i64 [ %324, %319 ], [ %341, %340 ]
  store i64 %343, ptr %19, align 8, !tbaa !42
  br label %344

344:                                              ; preds = %342, %325, %304
  %345 = load i32, ptr %3, align 4, !tbaa !76
  %346 = icmp ult i32 %345, 262
  %347 = and i1 %20, %346
  br i1 %347, label %1106, label %348

348:                                              ; preds = %344
  %349 = icmp eq i32 %345, 0
  br i1 %349, label %925, label %350

350:                                              ; preds = %348, %68
  %351 = load i32, ptr %3, align 4, !tbaa !76
  %352 = icmp ugt i32 %351, 2
  br i1 %352, label %353, label %382

353:                                              ; preds = %350
  %354 = load i32, ptr %21, align 4, !tbaa !74
  %355 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %354, i32 2), !nosanitize !49
  %356 = extractvalue { i32, i1 } %355, 1, !nosanitize !49
  br i1 %356, label %357, label %358, !prof !50, !nosanitize !49

357:                                              ; preds = %353
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

358:                                              ; preds = %353
  %359 = extractvalue { i32, i1 } %355, 0, !nosanitize !49
  %360 = load ptr, ptr %22, align 8, !tbaa !39
  %361 = load i32, ptr %23, align 8, !tbaa !81
  %362 = load i32, ptr %24, align 8, !tbaa !38
  %363 = shl i32 %361, %362
  %364 = zext i32 %359 to i64
  %365 = getelementptr inbounds nuw i8, ptr %360, i64 %364
  %366 = load i8, ptr %365, align 1, !tbaa !8
  %367 = zext i8 %366 to i32
  %368 = xor i32 %363, %367
  %369 = load i32, ptr %25, align 4, !tbaa !37
  %370 = and i32 %368, %369
  store i32 %370, ptr %23, align 8, !tbaa !81
  %371 = load ptr, ptr %26, align 8, !tbaa !41
  %372 = zext i32 %370 to i64
  %373 = getelementptr inbounds nuw [2 x i8], ptr %371, i64 %372
  %374 = load i16, ptr %373, align 2, !tbaa !63
  %375 = load ptr, ptr %27, align 8, !tbaa !40
  %376 = load i32, ptr %28, align 8, !tbaa !34
  %377 = and i32 %376, %354
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds nuw [2 x i8], ptr %375, i64 %378
  store i16 %374, ptr %379, align 2, !tbaa !63
  %380 = zext i16 %374 to i32
  %381 = trunc i32 %354 to i16
  store i16 %381, ptr %373, align 2, !tbaa !63
  br label %382

382:                                              ; preds = %358, %350
  %383 = phi i32 [ %380, %358 ], [ 0, %350 ]
  %384 = load i32, ptr %29, align 8, !tbaa !79
  store i32 %384, ptr %30, align 8, !tbaa !78
  %385 = load i32, ptr %31, align 8, !tbaa !84
  store i32 %385, ptr %32, align 4, !tbaa !133
  store i32 2, ptr %29, align 8, !tbaa !79
  %386 = icmp eq i32 %383, 0
  br i1 %386, label %576, label %387

387:                                              ; preds = %382
  %388 = load i32, ptr %33, align 8, !tbaa !67
  %389 = icmp ult i32 %384, %388
  br i1 %389, label %390, label %576

390:                                              ; preds = %387
  %391 = load i32, ptr %34, align 4, !tbaa !74
  %392 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %391, i32 %383), !nosanitize !49
  %393 = extractvalue { i32, i1 } %392, 0, !nosanitize !49
  %394 = extractvalue { i32, i1 } %392, 1, !nosanitize !49
  br i1 %394, label %395, label %396, !prof !50, !nosanitize !49

395:                                              ; preds = %390
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

396:                                              ; preds = %390
  %397 = load i32, ptr %35, align 8, !tbaa !33
  %398 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %397, i32 262), !nosanitize !49
  %399 = extractvalue { i32, i1 } %398, 1, !nosanitize !49
  br i1 %399, label %400, label %401, !prof !50, !nosanitize !49

400:                                              ; preds = %396
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

401:                                              ; preds = %396
  %402 = extractvalue { i32, i1 } %398, 0, !nosanitize !49
  %403 = icmp ugt i32 %393, %402
  br i1 %403, label %576, label %404

404:                                              ; preds = %401
  %405 = load ptr, ptr %36, align 8, !tbaa !39
  %406 = zext i32 %391 to i64
  %407 = getelementptr inbounds nuw i8, ptr %405, i64 %406
  %408 = load i32, ptr %37, align 8, !tbaa !71
  %409 = load i32, ptr %38, align 4, !tbaa !73
  %410 = tail call i32 @llvm.usub.sat.i32(i32 %391, i32 %402)
  %411 = load ptr, ptr %39, align 8, !tbaa !40
  %412 = load i32, ptr %40, align 8, !tbaa !34
  %413 = getelementptr inbounds nuw i8, ptr %407, i64 258
  %414 = sext i32 %384 to i64
  %415 = getelementptr i8, ptr %407, i64 %414
  %416 = getelementptr i8, ptr %415, i64 -1
  %417 = load i8, ptr %416, align 1, !tbaa !8
  %418 = load i8, ptr %415, align 1, !tbaa !8
  %419 = load i32, ptr %41, align 4, !tbaa !69
  %420 = icmp ult i32 %384, %419
  %421 = lshr i32 %409, 2
  %422 = select i1 %420, i32 %409, i32 %421
  %423 = tail call i32 @llvm.umin.i32(i32 %408, i32 %351)
  %424 = getelementptr inbounds nuw i8, ptr %407, i64 1
  %425 = ptrtoint ptr %413 to i64
  br label %426

426:                                              ; preds = %555, %404
  %427 = phi i32 [ %384, %404 ], [ %542, %555 ]
  %428 = phi i32 [ %422, %404 ], [ %556, %555 ]
  %429 = phi i32 [ %383, %404 ], [ %549, %555 ]
  %430 = phi i8 [ %417, %404 ], [ %543, %555 ]
  %431 = phi i8 [ %418, %404 ], [ %544, %555 ]
  %432 = zext nneg i32 %429 to i64
  %433 = getelementptr inbounds nuw i8, ptr %405, i64 %432
  %434 = sext i32 %427 to i64
  %435 = getelementptr inbounds i8, ptr %433, i64 %434
  %436 = load i8, ptr %435, align 1, !tbaa !8
  %437 = icmp eq i8 %436, %431
  br i1 %437, label %438, label %541

438:                                              ; preds = %426
  %439 = getelementptr i8, ptr %435, i64 -1
  %440 = load i8, ptr %439, align 1, !tbaa !8
  %441 = icmp eq i8 %440, %430
  br i1 %441, label %442, label %541

442:                                              ; preds = %438
  %443 = load i8, ptr %433, align 1, !tbaa !8
  %444 = load i8, ptr %407, align 1, !tbaa !8
  %445 = icmp eq i8 %443, %444
  br i1 %445, label %446, label %541

446:                                              ; preds = %442
  %447 = getelementptr inbounds nuw i8, ptr %433, i64 1
  %448 = load i8, ptr %447, align 1, !tbaa !8
  %449 = load i8, ptr %424, align 1, !tbaa !8
  %450 = icmp eq i8 %448, %449
  br i1 %450, label %451, label %541

451:                                              ; preds = %446
  %452 = getelementptr inbounds nuw i8, ptr %433, i64 2
  br label %453

453:                                              ; preds = %498, %451
  %454 = phi ptr [ %452, %451 ], [ %502, %498 ]
  %455 = phi i64 [ 2, %451 ], [ %499, %498 ]
  %456 = getelementptr inbounds nuw i8, ptr %407, i64 %455
  %457 = getelementptr inbounds nuw i8, ptr %456, i64 1
  %458 = load i8, ptr %457, align 1, !tbaa !8
  %459 = getelementptr inbounds nuw i8, ptr %454, i64 1
  %460 = load i8, ptr %459, align 1, !tbaa !8
  %461 = icmp eq i8 %458, %460
  br i1 %461, label %462, label %507

462:                                              ; preds = %453
  %463 = getelementptr inbounds nuw i8, ptr %456, i64 2
  %464 = load i8, ptr %463, align 1, !tbaa !8
  %465 = getelementptr inbounds nuw i8, ptr %454, i64 2
  %466 = load i8, ptr %465, align 1, !tbaa !8
  %467 = icmp eq i8 %464, %466
  br i1 %467, label %468, label %509

468:                                              ; preds = %462
  %469 = getelementptr inbounds nuw i8, ptr %456, i64 3
  %470 = load i8, ptr %469, align 1, !tbaa !8
  %471 = getelementptr inbounds nuw i8, ptr %454, i64 3
  %472 = load i8, ptr %471, align 1, !tbaa !8
  %473 = icmp eq i8 %470, %472
  br i1 %473, label %474, label %511

474:                                              ; preds = %468
  %475 = getelementptr inbounds nuw i8, ptr %456, i64 4
  %476 = load i8, ptr %475, align 1, !tbaa !8
  %477 = getelementptr inbounds nuw i8, ptr %454, i64 4
  %478 = load i8, ptr %477, align 1, !tbaa !8
  %479 = icmp eq i8 %476, %478
  br i1 %479, label %480, label %513

480:                                              ; preds = %474
  %481 = getelementptr inbounds nuw i8, ptr %456, i64 5
  %482 = load i8, ptr %481, align 1, !tbaa !8
  %483 = getelementptr inbounds nuw i8, ptr %454, i64 5
  %484 = load i8, ptr %483, align 1, !tbaa !8
  %485 = icmp eq i8 %482, %484
  br i1 %485, label %486, label %515

486:                                              ; preds = %480
  %487 = getelementptr inbounds nuw i8, ptr %456, i64 6
  %488 = load i8, ptr %487, align 1, !tbaa !8
  %489 = getelementptr inbounds nuw i8, ptr %454, i64 6
  %490 = load i8, ptr %489, align 1, !tbaa !8
  %491 = icmp eq i8 %488, %490
  br i1 %491, label %492, label %517

492:                                              ; preds = %486
  %493 = getelementptr inbounds nuw i8, ptr %456, i64 7
  %494 = load i8, ptr %493, align 1, !tbaa !8
  %495 = getelementptr inbounds nuw i8, ptr %454, i64 7
  %496 = load i8, ptr %495, align 1, !tbaa !8
  %497 = icmp eq i8 %494, %496
  br i1 %497, label %498, label %519

498:                                              ; preds = %492
  %499 = add nuw nsw i64 %455, 8
  %500 = getelementptr inbounds nuw i8, ptr %407, i64 %499
  %501 = load i8, ptr %500, align 1, !tbaa !8
  %502 = getelementptr inbounds nuw i8, ptr %454, i64 8
  %503 = load i8, ptr %502, align 1, !tbaa !8
  %504 = icmp eq i8 %501, %503
  %505 = icmp samesign ult i64 %455, 250
  %506 = select i1 %504, i1 %505, i1 false
  br i1 %506, label %453, label %521, !llvm.loop !129

507:                                              ; preds = %453
  %508 = getelementptr inbounds nuw i8, ptr %456, i64 1
  br label %523

509:                                              ; preds = %462
  %510 = getelementptr inbounds nuw i8, ptr %456, i64 2
  br label %523

511:                                              ; preds = %468
  %512 = getelementptr inbounds nuw i8, ptr %456, i64 3
  br label %523

513:                                              ; preds = %474
  %514 = getelementptr inbounds nuw i8, ptr %456, i64 4
  br label %523

515:                                              ; preds = %480
  %516 = getelementptr inbounds nuw i8, ptr %456, i64 5
  br label %523

517:                                              ; preds = %486
  %518 = getelementptr inbounds nuw i8, ptr %456, i64 6
  br label %523

519:                                              ; preds = %492
  %520 = getelementptr inbounds nuw i8, ptr %456, i64 7
  br label %523

521:                                              ; preds = %498
  %522 = getelementptr inbounds nuw i8, ptr %407, i64 %499
  br label %523

523:                                              ; preds = %521, %519, %517, %515, %513, %511, %509, %507
  %524 = phi ptr [ %510, %509 ], [ %512, %511 ], [ %508, %507 ], [ %520, %519 ], [ %518, %517 ], [ %516, %515 ], [ %514, %513 ], [ %522, %521 ]
  %525 = ptrtoint ptr %524 to i64
  %526 = sub i64 %525, %425
  %527 = trunc i64 %526 to i32
  %528 = add i32 %527, 258
  %529 = icmp sgt i32 %528, %427
  br i1 %529, label %530, label %541

530:                                              ; preds = %523
  store i32 %429, ptr %31, align 8, !tbaa !84
  %531 = icmp slt i32 %528, %423
  br i1 %531, label %532, label %558

532:                                              ; preds = %530
  %533 = shl i64 %526, 32
  %534 = add i64 %533, 1103806595072
  %535 = ashr exact i64 %534, 32
  %536 = getelementptr inbounds i8, ptr %407, i64 %535
  %537 = load i8, ptr %536, align 1, !tbaa !8
  %538 = sext i32 %528 to i64
  %539 = getelementptr inbounds i8, ptr %407, i64 %538
  %540 = load i8, ptr %539, align 1, !tbaa !8
  br label %541

541:                                              ; preds = %532, %523, %446, %442, %438, %426
  %542 = phi i32 [ %427, %426 ], [ %427, %438 ], [ %427, %442 ], [ %427, %446 ], [ %528, %532 ], [ %427, %523 ]
  %543 = phi i8 [ %430, %426 ], [ %430, %438 ], [ %430, %442 ], [ %430, %446 ], [ %537, %532 ], [ %430, %523 ]
  %544 = phi i8 [ %431, %426 ], [ %431, %438 ], [ %431, %442 ], [ %431, %446 ], [ %540, %532 ], [ %431, %523 ]
  %545 = and i32 %429, %412
  %546 = zext nneg i32 %545 to i64
  %547 = getelementptr inbounds nuw [2 x i8], ptr %411, i64 %546
  %548 = load i16, ptr %547, align 2, !tbaa !63
  %549 = zext i16 %548 to i32
  %550 = icmp ult i32 %410, %549
  br i1 %550, label %551, label %558

551:                                              ; preds = %541
  %552 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %428, i32 1), !nosanitize !49
  %553 = extractvalue { i32, i1 } %552, 1, !nosanitize !49
  br i1 %553, label %554, label %555, !prof !50, !nosanitize !49

554:                                              ; preds = %551
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

555:                                              ; preds = %551
  %556 = extractvalue { i32, i1 } %552, 0, !nosanitize !49
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %426, !llvm.loop !130

558:                                              ; preds = %555, %541, %530
  %559 = phi i32 [ %542, %555 ], [ %542, %541 ], [ %528, %530 ]
  %560 = tail call i32 @llvm.umin.i32(i32 %559, i32 %351)
  store i32 %560, ptr %29, align 8, !tbaa !79
  %561 = icmp ult i32 %560, 6
  br i1 %561, label %562, label %576

562:                                              ; preds = %558
  %563 = load i32, ptr %42, align 8, !tbaa !53
  %564 = icmp eq i32 %563, 1
  br i1 %564, label %575, label %565

565:                                              ; preds = %562
  %566 = icmp eq i32 %560, 3
  br i1 %566, label %567, label %576

567:                                              ; preds = %565
  %568 = load i32, ptr %31, align 8, !tbaa !84
  %569 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %391, i32 %568), !nosanitize !49
  %570 = extractvalue { i32, i1 } %569, 1, !nosanitize !49
  br i1 %570, label %571, label %572, !prof !50, !nosanitize !49

571:                                              ; preds = %567
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

572:                                              ; preds = %567
  %573 = extractvalue { i32, i1 } %569, 0, !nosanitize !49
  %574 = icmp ugt i32 %573, 4096
  br i1 %574, label %575, label %576

575:                                              ; preds = %572, %562
  store i32 2, ptr %29, align 8, !tbaa !79
  br label %576

576:                                              ; preds = %575, %572, %565, %558, %401, %387, %382
  %577 = icmp ugt i32 %384, 2
  br i1 %577, label %578, label %791

578:                                              ; preds = %576
  %579 = load i32, ptr %29, align 8, !tbaa !79
  %580 = icmp ugt i32 %579, %384
  br i1 %580, label %791, label %581

581:                                              ; preds = %578
  %582 = load i32, ptr %43, align 4, !tbaa !74
  %583 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %582, i32 %351), !nosanitize !49
  %584 = extractvalue { i32, i1 } %583, 1, !nosanitize !49
  br i1 %584, label %585, label %586, !prof !50, !nosanitize !49

585:                                              ; preds = %581
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

586:                                              ; preds = %581
  %587 = extractvalue { i32, i1 } %583, 0, !nosanitize !49
  %588 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %587, i32 3), !nosanitize !49
  %589 = extractvalue { i32, i1 } %588, 0, !nosanitize !49
  %590 = extractvalue { i32, i1 } %588, 1, !nosanitize !49
  br i1 %590, label %591, label %592, !prof !50, !nosanitize !49

591:                                              ; preds = %586
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

592:                                              ; preds = %586
  %593 = trunc i32 %384 to i8
  %594 = add i8 %593, -3
  %595 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %582, i32 1), !nosanitize !49
  %596 = extractvalue { i32, i1 } %595, 1, !nosanitize !49
  br i1 %596, label %597, label %598, !prof !50, !nosanitize !49

597:                                              ; preds = %592
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

598:                                              ; preds = %592
  %599 = extractvalue { i32, i1 } %595, 0, !nosanitize !49
  %600 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %599, i32 %385), !nosanitize !49
  %601 = extractvalue { i32, i1 } %600, 1, !nosanitize !49
  br i1 %601, label %602, label %603, !prof !50, !nosanitize !49

602:                                              ; preds = %598
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

603:                                              ; preds = %598
  %604 = extractvalue { i32, i1 } %600, 0, !nosanitize !49
  %605 = trunc i32 %604 to i16
  %606 = load i32, ptr %45, align 4, !tbaa !122
  %607 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %606, i32 1), !nosanitize !49
  %608 = extractvalue { i32, i1 } %607, 1, !nosanitize !49
  br i1 %608, label %609, label %610, !prof !50, !nosanitize !49

609:                                              ; preds = %603
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

610:                                              ; preds = %603
  %611 = extractvalue { i32, i1 } %607, 0, !nosanitize !49
  %612 = load ptr, ptr %44, align 8, !tbaa !48
  %613 = trunc i32 %604 to i8
  store i32 %611, ptr %45, align 4, !tbaa !122
  %614 = zext i32 %606 to i64
  %615 = getelementptr inbounds nuw i8, ptr %612, i64 %614
  store i8 %613, ptr %615, align 1, !tbaa !8
  %616 = load i32, ptr %45, align 4, !tbaa !122
  %617 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %616, i32 1), !nosanitize !49
  %618 = extractvalue { i32, i1 } %617, 1, !nosanitize !49
  br i1 %618, label %619, label %620, !prof !50, !nosanitize !49

619:                                              ; preds = %610
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

620:                                              ; preds = %610
  %621 = extractvalue { i32, i1 } %617, 0, !nosanitize !49
  %622 = load ptr, ptr %44, align 8, !tbaa !48
  %623 = lshr i32 %604, 8
  %624 = trunc i32 %623 to i8
  store i32 %621, ptr %45, align 4, !tbaa !122
  %625 = zext i32 %616 to i64
  %626 = getelementptr inbounds nuw i8, ptr %622, i64 %625
  store i8 %624, ptr %626, align 1, !tbaa !8
  %627 = load i32, ptr %45, align 4, !tbaa !122
  %628 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %627, i32 1), !nosanitize !49
  %629 = extractvalue { i32, i1 } %628, 1, !nosanitize !49
  br i1 %629, label %630, label %631, !prof !50, !nosanitize !49

630:                                              ; preds = %620
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

631:                                              ; preds = %620
  %632 = extractvalue { i32, i1 } %628, 0, !nosanitize !49
  %633 = load ptr, ptr %44, align 8, !tbaa !48
  store i32 %632, ptr %45, align 4, !tbaa !122
  %634 = zext i32 %627 to i64
  %635 = getelementptr inbounds nuw i8, ptr %633, i64 %634
  store i8 %594, ptr %635, align 1, !tbaa !8
  %636 = add i16 %605, -1
  %637 = zext i8 %594 to i64
  %638 = getelementptr inbounds nuw i8, ptr @_length_code, i64 %637
  %639 = load i8, ptr %638, align 1, !tbaa !8
  %640 = zext i8 %639 to i64
  %641 = getelementptr [4 x i8], ptr %46, i64 %640
  %642 = load i16, ptr %641, align 4, !tbaa !8
  %643 = add i16 %642, 1
  store i16 %643, ptr %641, align 4, !tbaa !8
  %644 = icmp ult i16 %636, 256
  br i1 %644, label %645, label %648

645:                                              ; preds = %631
  %646 = zext nneg i16 %636 to i64
  %647 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %646
  br label %653

648:                                              ; preds = %631
  %649 = lshr i16 %636, 7
  %650 = zext nneg i16 %649 to i64
  %651 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %650
  %652 = getelementptr inbounds nuw i8, ptr %651, i64 256
  br label %653

653:                                              ; preds = %648, %645
  %654 = phi ptr [ %647, %645 ], [ %652, %648 ]
  %655 = load i8, ptr %654, align 1, !tbaa !8
  %656 = zext i8 %655 to i64
  %657 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %656
  %658 = load i16, ptr %657, align 4, !tbaa !8
  %659 = add i16 %658, 1
  store i16 %659, ptr %657, align 4, !tbaa !8
  %660 = load i32, ptr %45, align 4, !tbaa !122
  %661 = load i32, ptr %48, align 8, !tbaa !51
  %662 = icmp eq i32 %660, %661
  %663 = load i32, ptr %30, align 8, !tbaa !78
  %664 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %663, i32 1), !nosanitize !49
  %665 = extractvalue { i32, i1 } %664, 1, !nosanitize !49
  br i1 %665, label %666, label %667, !prof !50, !nosanitize !49

666:                                              ; preds = %653
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

667:                                              ; preds = %653
  %668 = extractvalue { i32, i1 } %664, 0, !nosanitize !49
  %669 = load i32, ptr %3, align 4, !tbaa !76
  %670 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %669, i32 %668), !nosanitize !49
  %671 = extractvalue { i32, i1 } %670, 1, !nosanitize !49
  br i1 %671, label %672, label %673, !prof !50, !nosanitize !49

672:                                              ; preds = %667
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

673:                                              ; preds = %667
  %674 = extractvalue { i32, i1 } %670, 0, !nosanitize !49
  store i32 %674, ptr %3, align 4, !tbaa !76
  %675 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %663, i32 2), !nosanitize !49
  %676 = extractvalue { i32, i1 } %675, 1, !nosanitize !49
  br i1 %676, label %677, label %678, !prof !50, !nosanitize !49

677:                                              ; preds = %673
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

678:                                              ; preds = %673
  %679 = extractvalue { i32, i1 } %675, 0, !nosanitize !49
  store i32 %679, ptr %30, align 8, !tbaa !78
  %680 = load i32, ptr %43, align 4, !tbaa !74
  %681 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %680, i32 1), !nosanitize !49
  %682 = extractvalue { i32, i1 } %681, 1, !nosanitize !49
  br i1 %682, label %686, label %687, !prof !117, !nosanitize !49

683:                                              ; preds = %720
  %684 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %689, i32 1), !nosanitize !49
  %685 = extractvalue { i32, i1 } %684, 1, !nosanitize !49
  br i1 %685, label %686, label %687, !prof !118, !llvm.loop !134, !nosanitize !49

686:                                              ; preds = %683, %678
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

687:                                              ; preds = %683, %678
  %688 = phi { i32, i1 } [ %684, %683 ], [ %681, %678 ]
  %689 = extractvalue { i32, i1 } %688, 0
  store i32 %689, ptr %43, align 4, !tbaa !74
  %690 = icmp ugt i32 %689, %589
  br i1 %690, label %715, label %691

691:                                              ; preds = %687
  %692 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %689, i32 2), !nosanitize !49
  %693 = extractvalue { i32, i1 } %692, 0, !nosanitize !49
  %694 = load ptr, ptr %49, align 8, !tbaa !39
  %695 = load i32, ptr %50, align 8, !tbaa !81
  %696 = load i32, ptr %51, align 8, !tbaa !38
  %697 = shl i32 %695, %696
  %698 = zext i32 %693 to i64
  %699 = getelementptr inbounds nuw i8, ptr %694, i64 %698
  %700 = load i8, ptr %699, align 1, !tbaa !8
  %701 = zext i8 %700 to i32
  %702 = xor i32 %697, %701
  %703 = load i32, ptr %52, align 4, !tbaa !37
  %704 = and i32 %702, %703
  store i32 %704, ptr %50, align 8, !tbaa !81
  %705 = load ptr, ptr %53, align 8, !tbaa !41
  %706 = zext i32 %704 to i64
  %707 = getelementptr inbounds nuw [2 x i8], ptr %705, i64 %706
  %708 = load i16, ptr %707, align 2, !tbaa !63
  %709 = load ptr, ptr %54, align 8, !tbaa !40
  %710 = load i32, ptr %55, align 8, !tbaa !34
  %711 = and i32 %710, %689
  %712 = zext i32 %711 to i64
  %713 = getelementptr inbounds nuw [2 x i8], ptr %709, i64 %712
  store i16 %708, ptr %713, align 2, !tbaa !63
  %714 = trunc i32 %689 to i16
  store i16 %714, ptr %707, align 2, !tbaa !63
  br label %715

715:                                              ; preds = %691, %687
  %716 = load i32, ptr %30, align 8, !tbaa !78
  %717 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %716, i32 1), !nosanitize !49
  %718 = extractvalue { i32, i1 } %717, 1, !nosanitize !49
  br i1 %718, label %719, label %720, !prof !50, !nosanitize !49

719:                                              ; preds = %715
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

720:                                              ; preds = %715
  %721 = extractvalue { i32, i1 } %717, 0, !nosanitize !49
  store i32 %721, ptr %30, align 8, !tbaa !78
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %683, !llvm.loop !134

723:                                              ; preds = %720
  store i32 0, ptr %56, align 8, !tbaa !80
  store i32 2, ptr %29, align 8, !tbaa !79
  %724 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %689, i32 1), !nosanitize !49
  %725 = extractvalue { i32, i1 } %724, 1, !nosanitize !49
  br i1 %725, label %726, label %727, !prof !50, !nosanitize !49

726:                                              ; preds = %723
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

727:                                              ; preds = %723
  %728 = extractvalue { i32, i1 } %724, 0, !nosanitize !49
  store i32 %728, ptr %43, align 4, !tbaa !74
  br i1 %662, label %730, label %729

729:                                              ; preds = %923, %907, %786, %727
  br label %68, !llvm.loop !135

730:                                              ; preds = %727
  %731 = load i64, ptr %57, align 8, !tbaa !75
  %732 = icmp sgt i64 %731, -1
  br i1 %732, label %733, label %737

733:                                              ; preds = %730
  %734 = load ptr, ptr %58, align 8, !tbaa !39
  %735 = and i64 %731, 4294967295
  %736 = getelementptr inbounds nuw i8, ptr %734, i64 %735
  br label %737

737:                                              ; preds = %733, %730
  %738 = phi ptr [ %736, %733 ], [ null, %730 ]
  %739 = zext i32 %728 to i64
  %740 = sub nsw i64 %739, %731
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %738, i64 noundef %740, i32 noundef 0) #11
  %741 = load i32, ptr %43, align 4, !tbaa !74
  %742 = zext i32 %741 to i64
  store i64 %742, ptr %57, align 8, !tbaa !75
  %743 = load ptr, ptr %0, align 8, !tbaa !20
  %744 = getelementptr inbounds nuw i8, ptr %743, i64 56
  %745 = load ptr, ptr %744, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %745) #11
  %746 = getelementptr inbounds nuw i8, ptr %745, i64 40
  %747 = load i64, ptr %746, align 8, !tbaa !58
  %748 = getelementptr inbounds nuw i8, ptr %743, i64 32
  %749 = load i32, ptr %748, align 8, !tbaa !100
  %750 = zext i32 %749 to i64
  %751 = tail call i64 @llvm.umin.i64(i64 %747, i64 %750)
  %752 = trunc nuw i64 %751 to i32
  %753 = icmp eq i64 %751, 0
  br i1 %753, label %786, label %754

754:                                              ; preds = %737
  %755 = getelementptr inbounds nuw i8, ptr %743, i64 24
  %756 = load ptr, ptr %755, align 8, !tbaa !99
  %757 = getelementptr inbounds nuw i8, ptr %745, i64 32
  %758 = load ptr, ptr %757, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %756, ptr align 1 %758, i64 %751, i1 false)
  %759 = load ptr, ptr %755, align 8, !tbaa !99
  %760 = getelementptr inbounds nuw i8, ptr %759, i64 %751
  store ptr %760, ptr %755, align 8, !tbaa !99
  %761 = load ptr, ptr %757, align 8, !tbaa !59
  %762 = getelementptr inbounds nuw i8, ptr %761, i64 %751
  store ptr %762, ptr %757, align 8, !tbaa !59
  %763 = getelementptr inbounds nuw i8, ptr %743, i64 40
  %764 = load i64, ptr %763, align 8, !tbaa !101
  %765 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %764, i64 %751), !nosanitize !49
  %766 = extractvalue { i64, i1 } %765, 1, !nosanitize !49
  br i1 %766, label %767, label %768, !prof !50, !nosanitize !49

767:                                              ; preds = %754
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

768:                                              ; preds = %754
  %769 = extractvalue { i64, i1 } %765, 0, !nosanitize !49
  store i64 %769, ptr %763, align 8, !tbaa !101
  %770 = load i32, ptr %748, align 8, !tbaa !100
  %771 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %770, i32 %752), !nosanitize !49
  %772 = extractvalue { i32, i1 } %771, 1, !nosanitize !49
  br i1 %772, label %773, label %774, !prof !50, !nosanitize !49

773:                                              ; preds = %768
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

774:                                              ; preds = %768
  %775 = extractvalue { i32, i1 } %771, 0, !nosanitize !49
  store i32 %775, ptr %748, align 8, !tbaa !100
  %776 = load i64, ptr %746, align 8, !tbaa !58
  %777 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %776, i64 %751), !nosanitize !49
  %778 = extractvalue { i64, i1 } %777, 1, !nosanitize !49
  br i1 %778, label %779, label %780, !prof !50, !nosanitize !49

779:                                              ; preds = %774
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

780:                                              ; preds = %774
  %781 = extractvalue { i64, i1 } %777, 0, !nosanitize !49
  store i64 %781, ptr %746, align 8, !tbaa !58
  %782 = icmp eq i64 %781, 0
  br i1 %782, label %783, label %786

783:                                              ; preds = %780
  %784 = getelementptr inbounds nuw i8, ptr %745, i64 16
  %785 = load ptr, ptr %784, align 8, !tbaa !44
  store ptr %785, ptr %757, align 8, !tbaa !59
  br label %786

786:                                              ; preds = %783, %780, %737
  %787 = load ptr, ptr %0, align 8, !tbaa !20
  %788 = getelementptr inbounds nuw i8, ptr %787, i64 32
  %789 = load i32, ptr %788, align 8, !tbaa !100
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %1106, label %729

791:                                              ; preds = %578, %576
  %792 = load i32, ptr %59, align 8, !tbaa !80
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %913, label %794

794:                                              ; preds = %791
  %795 = load i32, ptr %61, align 4, !tbaa !74
  %796 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %795, i32 1), !nosanitize !49
  %797 = extractvalue { i32, i1 } %796, 1, !nosanitize !49
  br i1 %797, label %798, label %799, !prof !50, !nosanitize !49

798:                                              ; preds = %794
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

799:                                              ; preds = %794
  %800 = extractvalue { i32, i1 } %796, 0, !nosanitize !49
  %801 = load ptr, ptr %60, align 8, !tbaa !39
  %802 = zext i32 %800 to i64
  %803 = getelementptr inbounds nuw i8, ptr %801, i64 %802
  %804 = load i8, ptr %803, align 1, !tbaa !8
  %805 = load i32, ptr %63, align 4, !tbaa !122
  %806 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %805, i32 1), !nosanitize !49
  %807 = extractvalue { i32, i1 } %806, 1, !nosanitize !49
  br i1 %807, label %808, label %809, !prof !50, !nosanitize !49

808:                                              ; preds = %799
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

809:                                              ; preds = %799
  %810 = extractvalue { i32, i1 } %806, 0, !nosanitize !49
  %811 = load ptr, ptr %62, align 8, !tbaa !48
  store i32 %810, ptr %63, align 4, !tbaa !122
  %812 = zext i32 %805 to i64
  %813 = getelementptr inbounds nuw i8, ptr %811, i64 %812
  store i8 0, ptr %813, align 1, !tbaa !8
  %814 = load i32, ptr %63, align 4, !tbaa !122
  %815 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %814, i32 1), !nosanitize !49
  %816 = extractvalue { i32, i1 } %815, 1, !nosanitize !49
  br i1 %816, label %817, label %818, !prof !50, !nosanitize !49

817:                                              ; preds = %809
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

818:                                              ; preds = %809
  %819 = extractvalue { i32, i1 } %815, 0, !nosanitize !49
  %820 = load ptr, ptr %62, align 8, !tbaa !48
  store i32 %819, ptr %63, align 4, !tbaa !122
  %821 = zext i32 %814 to i64
  %822 = getelementptr inbounds nuw i8, ptr %820, i64 %821
  store i8 0, ptr %822, align 1, !tbaa !8
  %823 = load i32, ptr %63, align 4, !tbaa !122
  %824 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %823, i32 1), !nosanitize !49
  %825 = extractvalue { i32, i1 } %824, 1, !nosanitize !49
  br i1 %825, label %826, label %827, !prof !50, !nosanitize !49

826:                                              ; preds = %818
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

827:                                              ; preds = %818
  %828 = extractvalue { i32, i1 } %824, 0, !nosanitize !49
  %829 = load ptr, ptr %62, align 8, !tbaa !48
  store i32 %828, ptr %63, align 4, !tbaa !122
  %830 = zext i32 %823 to i64
  %831 = getelementptr inbounds nuw i8, ptr %829, i64 %830
  store i8 %804, ptr %831, align 1, !tbaa !8
  %832 = zext i8 %804 to i64
  %833 = getelementptr inbounds nuw [4 x i8], ptr %64, i64 %832
  %834 = load i16, ptr %833, align 4, !tbaa !8
  %835 = add i16 %834, 1
  store i16 %835, ptr %833, align 4, !tbaa !8
  %836 = load i32, ptr %63, align 4, !tbaa !122
  %837 = load i32, ptr %65, align 8, !tbaa !51
  %838 = icmp eq i32 %836, %837
  br i1 %838, label %839, label %896

839:                                              ; preds = %827
  %840 = load i64, ptr %66, align 8, !tbaa !75
  %841 = icmp sgt i64 %840, -1
  br i1 %841, label %842, label %846

842:                                              ; preds = %839
  %843 = load ptr, ptr %60, align 8, !tbaa !39
  %844 = and i64 %840, 4294967295
  %845 = getelementptr inbounds nuw i8, ptr %843, i64 %844
  br label %846

846:                                              ; preds = %842, %839
  %847 = phi ptr [ %845, %842 ], [ null, %839 ]
  %848 = load i32, ptr %61, align 4, !tbaa !74
  %849 = zext i32 %848 to i64
  %850 = sub nsw i64 %849, %840
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %847, i64 noundef %850, i32 noundef 0) #11
  %851 = load i32, ptr %61, align 4, !tbaa !74
  %852 = zext i32 %851 to i64
  store i64 %852, ptr %66, align 8, !tbaa !75
  %853 = load ptr, ptr %0, align 8, !tbaa !20
  %854 = getelementptr inbounds nuw i8, ptr %853, i64 56
  %855 = load ptr, ptr %854, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %855) #11
  %856 = getelementptr inbounds nuw i8, ptr %855, i64 40
  %857 = load i64, ptr %856, align 8, !tbaa !58
  %858 = getelementptr inbounds nuw i8, ptr %853, i64 32
  %859 = load i32, ptr %858, align 8, !tbaa !100
  %860 = zext i32 %859 to i64
  %861 = tail call i64 @llvm.umin.i64(i64 %857, i64 %860)
  %862 = trunc nuw i64 %861 to i32
  %863 = icmp eq i64 %861, 0
  br i1 %863, label %896, label %864

864:                                              ; preds = %846
  %865 = getelementptr inbounds nuw i8, ptr %853, i64 24
  %866 = load ptr, ptr %865, align 8, !tbaa !99
  %867 = getelementptr inbounds nuw i8, ptr %855, i64 32
  %868 = load ptr, ptr %867, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %866, ptr align 1 %868, i64 %861, i1 false)
  %869 = load ptr, ptr %865, align 8, !tbaa !99
  %870 = getelementptr inbounds nuw i8, ptr %869, i64 %861
  store ptr %870, ptr %865, align 8, !tbaa !99
  %871 = load ptr, ptr %867, align 8, !tbaa !59
  %872 = getelementptr inbounds nuw i8, ptr %871, i64 %861
  store ptr %872, ptr %867, align 8, !tbaa !59
  %873 = getelementptr inbounds nuw i8, ptr %853, i64 40
  %874 = load i64, ptr %873, align 8, !tbaa !101
  %875 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %874, i64 %861), !nosanitize !49
  %876 = extractvalue { i64, i1 } %875, 1, !nosanitize !49
  br i1 %876, label %877, label %878, !prof !50, !nosanitize !49

877:                                              ; preds = %864
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

878:                                              ; preds = %864
  %879 = extractvalue { i64, i1 } %875, 0, !nosanitize !49
  store i64 %879, ptr %873, align 8, !tbaa !101
  %880 = load i32, ptr %858, align 8, !tbaa !100
  %881 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %880, i32 %862), !nosanitize !49
  %882 = extractvalue { i32, i1 } %881, 1, !nosanitize !49
  br i1 %882, label %883, label %884, !prof !50, !nosanitize !49

883:                                              ; preds = %878
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

884:                                              ; preds = %878
  %885 = extractvalue { i32, i1 } %881, 0, !nosanitize !49
  store i32 %885, ptr %858, align 8, !tbaa !100
  %886 = load i64, ptr %856, align 8, !tbaa !58
  %887 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %886, i64 %861), !nosanitize !49
  %888 = extractvalue { i64, i1 } %887, 1, !nosanitize !49
  br i1 %888, label %889, label %890, !prof !50, !nosanitize !49

889:                                              ; preds = %884
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

890:                                              ; preds = %884
  %891 = extractvalue { i64, i1 } %887, 0, !nosanitize !49
  store i64 %891, ptr %856, align 8, !tbaa !58
  %892 = icmp eq i64 %891, 0
  br i1 %892, label %893, label %896

893:                                              ; preds = %890
  %894 = getelementptr inbounds nuw i8, ptr %855, i64 16
  %895 = load ptr, ptr %894, align 8, !tbaa !44
  store ptr %895, ptr %867, align 8, !tbaa !59
  br label %896

896:                                              ; preds = %893, %890, %846, %827
  %897 = load i32, ptr %61, align 4, !tbaa !74
  %898 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %897, i32 1), !nosanitize !49
  %899 = extractvalue { i32, i1 } %898, 1, !nosanitize !49
  br i1 %899, label %900, label %901, !prof !50, !nosanitize !49

900:                                              ; preds = %896
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

901:                                              ; preds = %896
  %902 = extractvalue { i32, i1 } %898, 0, !nosanitize !49
  store i32 %902, ptr %61, align 4, !tbaa !74
  %903 = load i32, ptr %3, align 4, !tbaa !76
  %904 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %903, i32 1), !nosanitize !49
  %905 = extractvalue { i32, i1 } %904, 1, !nosanitize !49
  br i1 %905, label %906, label %907, !prof !50, !nosanitize !49

906:                                              ; preds = %901
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

907:                                              ; preds = %901
  %908 = extractvalue { i32, i1 } %904, 0, !nosanitize !49
  store i32 %908, ptr %3, align 4, !tbaa !76
  %909 = load ptr, ptr %0, align 8, !tbaa !20
  %910 = getelementptr inbounds nuw i8, ptr %909, i64 32
  %911 = load i32, ptr %910, align 8, !tbaa !100
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %1106, label %729

913:                                              ; preds = %791
  store i32 1, ptr %59, align 8, !tbaa !80
  %914 = load i32, ptr %67, align 4, !tbaa !74
  %915 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %914, i32 1), !nosanitize !49
  %916 = extractvalue { i32, i1 } %915, 1, !nosanitize !49
  br i1 %916, label %917, label %918, !prof !50, !nosanitize !49

917:                                              ; preds = %913
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

918:                                              ; preds = %913
  %919 = extractvalue { i32, i1 } %915, 0, !nosanitize !49
  store i32 %919, ptr %67, align 4, !tbaa !74
  %920 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %351, i32 1), !nosanitize !49
  %921 = extractvalue { i32, i1 } %920, 1, !nosanitize !49
  br i1 %921, label %922, label %923, !prof !50, !nosanitize !49

922:                                              ; preds = %918
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

923:                                              ; preds = %918
  %924 = extractvalue { i32, i1 } %920, 0, !nosanitize !49
  store i32 %924, ptr %3, align 4, !tbaa !76
  br label %729

925:                                              ; preds = %348
  %926 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %927 = load i32, ptr %926, align 8, !tbaa !80
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %974, label %929

929:                                              ; preds = %925
  %930 = load i32, ptr %6, align 4, !tbaa !74
  %931 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %930, i32 1), !nosanitize !49
  %932 = extractvalue { i32, i1 } %931, 1, !nosanitize !49
  br i1 %932, label %933, label %934, !prof !50, !nosanitize !49

933:                                              ; preds = %929
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

934:                                              ; preds = %929
  %935 = extractvalue { i32, i1 } %931, 0, !nosanitize !49
  %936 = load ptr, ptr %7, align 8, !tbaa !39
  %937 = zext i32 %935 to i64
  %938 = getelementptr inbounds nuw i8, ptr %936, i64 %937
  %939 = load i8, ptr %938, align 1, !tbaa !8
  %940 = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %941 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %942 = load i32, ptr %941, align 4, !tbaa !122
  %943 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %942, i32 1), !nosanitize !49
  %944 = extractvalue { i32, i1 } %943, 1, !nosanitize !49
  br i1 %944, label %945, label %946, !prof !50, !nosanitize !49

945:                                              ; preds = %934
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

946:                                              ; preds = %934
  %947 = extractvalue { i32, i1 } %943, 0, !nosanitize !49
  %948 = load ptr, ptr %940, align 8, !tbaa !48
  store i32 %947, ptr %941, align 4, !tbaa !122
  %949 = zext i32 %942 to i64
  %950 = getelementptr inbounds nuw i8, ptr %948, i64 %949
  store i8 0, ptr %950, align 1, !tbaa !8
  %951 = load i32, ptr %941, align 4, !tbaa !122
  %952 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %951, i32 1), !nosanitize !49
  %953 = extractvalue { i32, i1 } %952, 1, !nosanitize !49
  br i1 %953, label %954, label %955, !prof !50, !nosanitize !49

954:                                              ; preds = %946
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

955:                                              ; preds = %946
  %956 = extractvalue { i32, i1 } %952, 0, !nosanitize !49
  %957 = load ptr, ptr %940, align 8, !tbaa !48
  store i32 %956, ptr %941, align 4, !tbaa !122
  %958 = zext i32 %951 to i64
  %959 = getelementptr inbounds nuw i8, ptr %957, i64 %958
  store i8 0, ptr %959, align 1, !tbaa !8
  %960 = load i32, ptr %941, align 4, !tbaa !122
  %961 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %960, i32 1), !nosanitize !49
  %962 = extractvalue { i32, i1 } %961, 1, !nosanitize !49
  br i1 %962, label %963, label %964, !prof !50, !nosanitize !49

963:                                              ; preds = %955
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

964:                                              ; preds = %955
  %965 = extractvalue { i32, i1 } %961, 0, !nosanitize !49
  %966 = load ptr, ptr %940, align 8, !tbaa !48
  store i32 %965, ptr %941, align 4, !tbaa !122
  %967 = zext i32 %960 to i64
  %968 = getelementptr inbounds nuw i8, ptr %966, i64 %967
  store i8 %939, ptr %968, align 1, !tbaa !8
  %969 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %970 = zext i8 %939 to i64
  %971 = getelementptr inbounds nuw [4 x i8], ptr %969, i64 %970
  %972 = load i16, ptr %971, align 4, !tbaa !8
  %973 = add i16 %972, 1
  store i16 %973, ptr %971, align 4, !tbaa !8
  store i32 0, ptr %926, align 8, !tbaa !80
  br label %974

974:                                              ; preds = %964, %925
  %975 = load i32, ptr %6, align 4, !tbaa !74
  %976 = tail call i32 @llvm.umin.i32(i32 %975, i32 2)
  store i32 %976, ptr %10, align 4, !tbaa !77
  %977 = icmp eq i32 %1, 4
  br i1 %977, label %978, label %1040

978:                                              ; preds = %974
  %979 = load i64, ptr %9, align 8, !tbaa !75
  %980 = icmp sgt i64 %979, -1
  br i1 %980, label %981, label %985

981:                                              ; preds = %978
  %982 = load ptr, ptr %7, align 8, !tbaa !39
  %983 = and i64 %979, 4294967295
  %984 = getelementptr inbounds nuw i8, ptr %982, i64 %983
  br label %985

985:                                              ; preds = %981, %978
  %986 = phi ptr [ %984, %981 ], [ null, %978 ]
  %987 = zext i32 %975 to i64
  %988 = sub nsw i64 %987, %979
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %986, i64 noundef %988, i32 noundef 1) #11
  %989 = load i32, ptr %6, align 4, !tbaa !74
  %990 = zext i32 %989 to i64
  store i64 %990, ptr %9, align 8, !tbaa !75
  %991 = load ptr, ptr %0, align 8, !tbaa !20
  %992 = getelementptr inbounds nuw i8, ptr %991, i64 56
  %993 = load ptr, ptr %992, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %993) #11
  %994 = getelementptr inbounds nuw i8, ptr %993, i64 40
  %995 = load i64, ptr %994, align 8, !tbaa !58
  %996 = getelementptr inbounds nuw i8, ptr %991, i64 32
  %997 = load i32, ptr %996, align 8, !tbaa !100
  %998 = zext i32 %997 to i64
  %999 = tail call i64 @llvm.umin.i64(i64 %995, i64 %998)
  %1000 = trunc nuw i64 %999 to i32
  %1001 = icmp eq i64 %999, 0
  br i1 %1001, label %1034, label %1002

1002:                                             ; preds = %985
  %1003 = getelementptr inbounds nuw i8, ptr %991, i64 24
  %1004 = load ptr, ptr %1003, align 8, !tbaa !99
  %1005 = getelementptr inbounds nuw i8, ptr %993, i64 32
  %1006 = load ptr, ptr %1005, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1004, ptr align 1 %1006, i64 %999, i1 false)
  %1007 = load ptr, ptr %1003, align 8, !tbaa !99
  %1008 = getelementptr inbounds nuw i8, ptr %1007, i64 %999
  store ptr %1008, ptr %1003, align 8, !tbaa !99
  %1009 = load ptr, ptr %1005, align 8, !tbaa !59
  %1010 = getelementptr inbounds nuw i8, ptr %1009, i64 %999
  store ptr %1010, ptr %1005, align 8, !tbaa !59
  %1011 = getelementptr inbounds nuw i8, ptr %991, i64 40
  %1012 = load i64, ptr %1011, align 8, !tbaa !101
  %1013 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1012, i64 %999), !nosanitize !49
  %1014 = extractvalue { i64, i1 } %1013, 1, !nosanitize !49
  br i1 %1014, label %1015, label %1016, !prof !50, !nosanitize !49

1015:                                             ; preds = %1002
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1016:                                             ; preds = %1002
  %1017 = extractvalue { i64, i1 } %1013, 0, !nosanitize !49
  store i64 %1017, ptr %1011, align 8, !tbaa !101
  %1018 = load i32, ptr %996, align 8, !tbaa !100
  %1019 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1018, i32 %1000), !nosanitize !49
  %1020 = extractvalue { i32, i1 } %1019, 1, !nosanitize !49
  br i1 %1020, label %1021, label %1022, !prof !50, !nosanitize !49

1021:                                             ; preds = %1016
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

1022:                                             ; preds = %1016
  %1023 = extractvalue { i32, i1 } %1019, 0, !nosanitize !49
  store i32 %1023, ptr %996, align 8, !tbaa !100
  %1024 = load i64, ptr %994, align 8, !tbaa !58
  %1025 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1024, i64 %999), !nosanitize !49
  %1026 = extractvalue { i64, i1 } %1025, 1, !nosanitize !49
  br i1 %1026, label %1027, label %1028, !prof !50, !nosanitize !49

1027:                                             ; preds = %1022
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

1028:                                             ; preds = %1022
  %1029 = extractvalue { i64, i1 } %1025, 0, !nosanitize !49
  store i64 %1029, ptr %994, align 8, !tbaa !58
  %1030 = icmp eq i64 %1029, 0
  br i1 %1030, label %1031, label %1034

1031:                                             ; preds = %1028
  %1032 = getelementptr inbounds nuw i8, ptr %993, i64 16
  %1033 = load ptr, ptr %1032, align 8, !tbaa !44
  store ptr %1033, ptr %1005, align 8, !tbaa !59
  br label %1034

1034:                                             ; preds = %1031, %1028, %985
  %1035 = load ptr, ptr %0, align 8, !tbaa !20
  %1036 = getelementptr inbounds nuw i8, ptr %1035, i64 32
  %1037 = load i32, ptr %1036, align 8, !tbaa !100
  %1038 = icmp eq i32 %1037, 0
  %1039 = select i1 %1038, i32 2, i32 3
  br label %1106

1040:                                             ; preds = %974
  %1041 = getelementptr inbounds nuw i8, ptr %0, i64 5900
  %1042 = load i32, ptr %1041, align 4, !tbaa !122
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1105, label %1044

1044:                                             ; preds = %1040
  %1045 = load i64, ptr %9, align 8, !tbaa !75
  %1046 = icmp sgt i64 %1045, -1
  br i1 %1046, label %1047, label %1051

1047:                                             ; preds = %1044
  %1048 = load ptr, ptr %7, align 8, !tbaa !39
  %1049 = and i64 %1045, 4294967295
  %1050 = getelementptr inbounds nuw i8, ptr %1048, i64 %1049
  br label %1051

1051:                                             ; preds = %1047, %1044
  %1052 = phi ptr [ %1050, %1047 ], [ null, %1044 ]
  %1053 = zext i32 %975 to i64
  %1054 = sub nsw i64 %1053, %1045
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %1052, i64 noundef %1054, i32 noundef 0) #11
  %1055 = load i32, ptr %6, align 4, !tbaa !74
  %1056 = zext i32 %1055 to i64
  store i64 %1056, ptr %9, align 8, !tbaa !75
  %1057 = load ptr, ptr %0, align 8, !tbaa !20
  %1058 = getelementptr inbounds nuw i8, ptr %1057, i64 56
  %1059 = load ptr, ptr %1058, align 8, !tbaa !19
  tail call void @_tr_flush_bits(ptr noundef %1059) #11
  %1060 = getelementptr inbounds nuw i8, ptr %1059, i64 40
  %1061 = load i64, ptr %1060, align 8, !tbaa !58
  %1062 = getelementptr inbounds nuw i8, ptr %1057, i64 32
  %1063 = load i32, ptr %1062, align 8, !tbaa !100
  %1064 = zext i32 %1063 to i64
  %1065 = tail call i64 @llvm.umin.i64(i64 %1061, i64 %1064)
  %1066 = trunc nuw i64 %1065 to i32
  %1067 = icmp eq i64 %1065, 0
  br i1 %1067, label %1100, label %1068

1068:                                             ; preds = %1051
  %1069 = getelementptr inbounds nuw i8, ptr %1057, i64 24
  %1070 = load ptr, ptr %1069, align 8, !tbaa !99
  %1071 = getelementptr inbounds nuw i8, ptr %1059, i64 32
  %1072 = load ptr, ptr %1071, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1070, ptr align 1 %1072, i64 %1065, i1 false)
  %1073 = load ptr, ptr %1069, align 8, !tbaa !99
  %1074 = getelementptr inbounds nuw i8, ptr %1073, i64 %1065
  store ptr %1074, ptr %1069, align 8, !tbaa !99
  %1075 = load ptr, ptr %1071, align 8, !tbaa !59
  %1076 = getelementptr inbounds nuw i8, ptr %1075, i64 %1065
  store ptr %1076, ptr %1071, align 8, !tbaa !59
  %1077 = getelementptr inbounds nuw i8, ptr %1057, i64 40
  %1078 = load i64, ptr %1077, align 8, !tbaa !101
  %1079 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1078, i64 %1065), !nosanitize !49
  %1080 = extractvalue { i64, i1 } %1079, 1, !nosanitize !49
  br i1 %1080, label %1081, label %1082, !prof !50, !nosanitize !49

1081:                                             ; preds = %1068
  tail call void @llvm.ubsantrap(i8 0) #12, !nosanitize !49
  unreachable, !nosanitize !49

1082:                                             ; preds = %1068
  %1083 = extractvalue { i64, i1 } %1079, 0, !nosanitize !49
  store i64 %1083, ptr %1077, align 8, !tbaa !101
  %1084 = load i32, ptr %1062, align 8, !tbaa !100
  %1085 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %1084, i32 %1066), !nosanitize !49
  %1086 = extractvalue { i32, i1 } %1085, 1, !nosanitize !49
  br i1 %1086, label %1087, label %1088, !prof !50, !nosanitize !49

1087:                                             ; preds = %1082
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

1088:                                             ; preds = %1082
  %1089 = extractvalue { i32, i1 } %1085, 0, !nosanitize !49
  store i32 %1089, ptr %1062, align 8, !tbaa !100
  %1090 = load i64, ptr %1060, align 8, !tbaa !58
  %1091 = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %1090, i64 %1065), !nosanitize !49
  %1092 = extractvalue { i64, i1 } %1091, 1, !nosanitize !49
  br i1 %1092, label %1093, label %1094, !prof !50, !nosanitize !49

1093:                                             ; preds = %1088
  tail call void @llvm.ubsantrap(i8 21) #12, !nosanitize !49
  unreachable, !nosanitize !49

1094:                                             ; preds = %1088
  %1095 = extractvalue { i64, i1 } %1091, 0, !nosanitize !49
  store i64 %1095, ptr %1060, align 8, !tbaa !58
  %1096 = icmp eq i64 %1095, 0
  br i1 %1096, label %1097, label %1100

1097:                                             ; preds = %1094
  %1098 = getelementptr inbounds nuw i8, ptr %1059, i64 16
  %1099 = load ptr, ptr %1098, align 8, !tbaa !44
  store ptr %1099, ptr %1071, align 8, !tbaa !59
  br label %1100

1100:                                             ; preds = %1097, %1094, %1051
  %1101 = load ptr, ptr %0, align 8, !tbaa !20
  %1102 = getelementptr inbounds nuw i8, ptr %1101, i64 32
  %1103 = load i32, ptr %1102, align 8, !tbaa !100
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1106, label %1105

1105:                                             ; preds = %1100, %1040
  br label %1106

1106:                                             ; preds = %1105, %1100, %1034, %907, %786, %344
  %1107 = phi i32 [ 0, %1100 ], [ %1039, %1034 ], [ 1, %1105 ], [ 0, %344 ], [ 0, %786 ], [ 0, %907 ]
  ret i32 %1107
}

declare void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #5 = { nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nomerge noreturn nounwind }

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
